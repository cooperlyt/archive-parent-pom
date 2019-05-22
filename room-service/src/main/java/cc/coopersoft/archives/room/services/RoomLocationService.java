package cc.coopersoft.archives.room.services;

import cc.coopersoft.archives.room.model.*;
import cc.coopersoft.archives.room.repository.*;
import com.google.common.collect.Lists;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.annotation.Transient;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.*;

@Service
public class RoomLocationService {

    private static final Logger logger = LoggerFactory.getLogger(RoomLocationService.class);

    @Autowired
    private RoomRepository roomRepository;

    @Autowired
    private RackRepository rackRepository;

    @Autowired
    private CabinetRepository cabinetRepository;

    @Autowired
    private CellRepository cellRepository;

    @Autowired
    private BoxRepository boxRepository;

    public List<Room> getAllRoom(){
        return roomRepository.findAllByOrderBySeq();
    }

    public List<Rack> getRacks(String roomId){
        return rackRepository.listRackByRoom(roomId);
    }

    public List<Cabinet> getCabinets(String rackId){
        return cabinetRepository.listCabinetByRack(rackId);
    }



    public List<List<Cell>> getCells(String cabinetId){
        Optional<Cabinet> cabinet = cabinetRepository.findById(cabinetId);
        if (!cabinet.isPresent()){
            return null;
        }
        List<Cell> cells = cellRepository.listCellByCabinet(cabinetId);
        List<List<Cell>> result = new ArrayList<>();
        int row = -1;
        for(Cell cell: cells){
            if (cell.getRow() != row){
                result.add(new ArrayList<>());
                row = cell.getRow();
            }
            List<Cell> cellRow = result.get(result.size() - 1);
            cellRow.add(cell);
        }

        if (cabinet.get().isColDesc()){
            for(List<Cell> rowCell : result){
                Collections.sort(rowCell, (o1, o2) -> Integer.valueOf(o2.getCol()).compareTo(o1.getCol()) );
            }
        }
        if (cabinet.get().isRowDesc()){
            Collections.sort(result , (o1,o2) -> Integer.valueOf(o2.get(0).getRow()).compareTo(o1.get(0).getRow()));
        }
        return result;
    }

    public List<Box> getBoxes(String cellId){
        return boxRepository.listBoxByCell(cellId);
    }

    public Cell getCell(String id){
       Optional<Cell> result = cellRepository.findById(id);
       if (result.isPresent()){
           return result.get();
       }
       return null;
    }

    public RoomPath getRoomPathByRack(String rackId){
        RackPath rackPath = getRackPath(rackId);
        RoomPath result = new RoomPath(rackPath.getRack().getRoom());
        result.setRackPath(rackPath);
        result.setRacks(result.getRoom().getRacks());
        return result;
    }

    public RoomPath getRoomPath(String roomId){
        Optional<Room> room = roomRepository.findById(roomId);
        if (!room.isPresent()){
            return null;
        }
        RoomPath result = new RoomPath(room.get());
        result.setRacks(result.getRoom().getRacks());
        for(Rack rack: result.getRacks()){
            if (rack.getPercentage() < 100){
                result.setRackPath(getRackPath(rack.getId()));
                break;
            }
        }
        return result;
    }

    public RackPath getRackPath(String rackId){
        Optional<Rack> rack = rackRepository.findById(rackId);
        if (!rack.isPresent()){
            return null;
        }
        RackPath result = new RackPath(rack.get());

        result.setCabinets(result.getRack().getCabinets());

        for(Cabinet cabinet: result.getCabinets()){
            if (cabinet.getPercentage() < 100){
                result.setCabinetPath(getCabinetPath(cabinet.getId()));
                break;
            }
        }
        return result;
    }

    public CabinetPath getCabinetPath(String cabinetId){
        Optional<Cabinet> cabinet = cabinetRepository.findById(cabinetId);
        if (!cabinet.isPresent()){
            return null;
        }
        CabinetPath result = new CabinetPath(cabinet.get());
        result.setCells(getCells(result.getCabinet().getId()));
        List<Cell> cells = new ArrayList<>();
        for(List<Cell> cs : result.getCells()){
            for(Cell c : cs){
                cells.add(c);
            }
        }
        Collections.sort(cells);
        Cell before = null;
        Cell curr = null;
        for(Cell c : cells){
            before = curr;
            curr = c;
            if (c.getPercentage() < 100){
                if (c.getPercentage() > 0){
                    before = null;
                }
                break;
            }
        }

        if (before != null){
            List<Box> boxes = before.getBoxes();
            for(Box box: boxes){
                if (!box.isFull()){
                    result.setCellPath(getCellPath(before.getId()));
                    break;
                }
            }
        }

        if ((result.getCellPath() == null) && (curr != null)){
            result.setCellPath(getCellPath(curr.getId()));
        }

        return result;
    }

    public CellPath getCellPath(String cellId){
        Optional<Cell> cell = cellRepository.findById(cellId);
        if (!cell.isPresent()){
            return null;
        }

        CellPath result = new CellPath(cell.get());
        for(Box b: result.getCell().getBoxes()){
            if (!b.isFull()){
                result.setBox(b);
                break;
            }
        }
        return result;
    }

    private void calcPercentage(Box box){

        BigDecimal size = BigDecimal.ZERO;
        for (Box b: box.getCell().getBoxes()){
            if ((b.isFull() || b.isOld()) && !b.equals(box)){
                size = size.add(b.getSize());
            }
        }

        if (box.isFull() || box.isOld()){
            size = size.add(box.getSize());
        }

        int cellPercentage = 0;
        if (size.compareTo(BigDecimal.ZERO) > 0){
            cellPercentage = size.divide(box.getCell().getSize(),2, RoundingMode.DOWN).multiply(new BigDecimal(100)).intValue();
        }

        if (cellPercentage > 100){
            cellPercentage = 100;
        }
        box.getCell().setPercentage(cellPercentage);

        Integer cellTotal =  cellRepository.sumPercentage(box.getCell().getCabinet().getId(),box.getCell().getId());
        int cellTotalPercentage = (cellTotal == null) ? 0 : cellTotal;
        cellTotalPercentage += cellPercentage;

        int cabinetPercentage = 0;
        if (cellTotalPercentage > 0){
            int cellCount = cellRepository.countPercentage(box.getCell().getCabinet().getId(),box.getCell().getId());
            cellCount = (cellCount + 1)  * 100;
            cabinetPercentage = new BigDecimal(cellTotalPercentage).divide(new BigDecimal(cellCount),2,RoundingMode.DOWN).multiply(new BigDecimal(100)).intValue();
        }
        if (cabinetPercentage > 100){
            cabinetPercentage = 100;
        }
        box.getCell().getCabinet().setPercentage(cabinetPercentage);



        Integer cabinetTotal = cabinetRepository.sumPercentage(box.getCell().getCabinet().getRack().getId(),box.getCell().getCabinet().getId());
        int cabinetTotalPercentage = (cabinetTotal == null) ? 0 : cabinetTotal;
        cabinetTotalPercentage += cabinetPercentage;

        int rackPercentage = 0;
        if (cabinetTotalPercentage > 0){
            int cabinetCount = cabinetRepository.countPercentage(box.getCell().getCabinet().getRack().getId(),box.getCell().getCabinet().getId());
            cabinetCount = (cabinetCount + 1) * 100;
            rackPercentage = new BigDecimal(cabinetTotalPercentage).divide(new BigDecimal(cabinetCount),2,RoundingMode.DOWN).multiply(new BigDecimal(100)).intValue();
        }
        if (rackPercentage > 100){
            rackPercentage = 100;
        }
        box.getCell().getCabinet().getRack().setPercentage(rackPercentage);


        Integer rackTotal = rackRepository.sumPercentage(box.getCell().getCabinet().getRack().getRoom().getId(),box.getCell().getCabinet().getRack().getId());
        int rackTotalPercentage = (rackTotal == null) ? 0 : rackTotal;
        rackTotalPercentage += rackPercentage;

        int roomPercentage = 0;
        if (rackTotalPercentage > 0){
            int rackCount = rackRepository.countByRoomIdAndIdNot(box.getCell().getCabinet().getRack().getRoom().getId(),box.getCell().getCabinet().getRack().getId());
            rackCount = (rackCount + 1) * 100;
            roomPercentage = new BigDecimal(rackTotalPercentage).divide(new BigDecimal(rackCount),2,RoundingMode.DOWN).multiply(new BigDecimal(100)).intValue();
        }
        if (roomPercentage > 100){
            roomPercentage = 100;
        }
        box.getCell().getCabinet().getRack().getRoom().setPercentage(roomPercentage);

    }

    @Transient
    public Box createBox(String cellId, Box box){
        Optional<Cell> cell = cellRepository.findById(cellId);
        if (!cell.isPresent()){
            return null;
        }
        box.setCell(cell.get());
        box.setId(box.getCell().getId() + "-" + box.getSeq());
        calcPercentage(box);
        return boxRepository.save(box);
    }

    @Transient
    public Box setBoxFull(String boxId, boolean isFull){
        Optional<Box> box = boxRepository.findById(boxId);
        if (!box.isPresent()){
            return null;
        }
        if (box.get().isFull() != isFull){
            box.get().setFull(isFull);
            calcPercentage(box.get());
        }
        return boxRepository.save(box.get());
    }


}
