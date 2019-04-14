package cc.coopersoft.archives.room.services;

import cc.coopersoft.archives.room.model.*;
import cc.coopersoft.archives.room.repository.*;
import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    public List<Cabinet> getCabinet(String rackId){
        return cabinetRepository.listCabinetByRack(rackId);
    }

    public List<Cell> getCell(String cabinetId){
        return cellRepository.listCellByCabinet(cabinetId);
    }

    public List<Box> getBox(String cellId){
        return boxRepository.listBoxByCell(cellId);
    }

}
