package cc.coopersoft.archives.room.services;

import cc.coopersoft.archives.room.model.*;
import cc.coopersoft.archives.room.repository.*;
import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class RoomLocationService {

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
        return Lists.newArrayList(roomRepository.findAll());
    }

    public List<Rack> getRacks(String roomId){
        return rackRepository.listRackByRoom(roomId);
    }

    public List<Cabinet> getCabinets(String rackId){
        return cabinetRepository.listCabinetByRack(rackId);
    }

    public List<List<Cell>> getCells(String cabinetId){
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
        return result;
    }

    public List<Box> getBoxs(String cellId){
        return boxRepository.listBoxByCell(cellId);
    }

    public Cell getCell(String id){
       Optional<Cell> result = cellRepository.findById(id);
       if (result.isPresent()){
           return result.get();
       }
       return null;
    }

//    public Box createBox(String cellId){
//        Long maxSeq = boxRepository.maxSeq(cellId);
//        if (maxSeq == null){
//            maxSeq = 0l;
//        }
//        maxSeq++;
//
//
//    }

}
