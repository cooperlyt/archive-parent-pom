package cc.coopersoft.archives.room.controllers;

import cc.coopersoft.archives.room.model.*;
import cc.coopersoft.archives.room.services.RoomLocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
@RequestMapping(value="v1")
public class RoomController {

    @Autowired
    private RoomLocationService roomLocationService;

    @RequestMapping(value = "/list-room",method = RequestMethod.GET)
    public List<Room> listRoom(){
        return roomLocationService.getAllRoom();
    }


    @RequestMapping(value = "/list-rack/{room}",method = RequestMethod.GET)
    public List<Rack> listRack(@PathVariable("room") String roomId){
        return roomLocationService.getRacks(roomId);
    }


    @RequestMapping(value = "/list-cabinet/{rack}",method = RequestMethod.GET)
    public List<Cabinet> listCabinet(@PathVariable("rack") String rackId){
        return roomLocationService.getCabinets(rackId);
    }


    @RequestMapping(value = "/list-cell/{cabinet}", method = RequestMethod.GET)
    public List<List<Cell>> listCell(@PathVariable("cabinet") String cabinetId){
        return roomLocationService.getCells(cabinetId);
    }


    @RequestMapping(value = "/list-box/{cell}", method = RequestMethod.GET)
    public List<Box> listBox(@PathVariable("cell")String cell){

        return roomLocationService.getBoxs(cell);
    }

    @RequestMapping(value="/cell/{id}", method = RequestMethod.GET)
    public Cell getCell(@PathVariable String id){
        Cell result = roomLocationService.getCell(id);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return result;
    }

//    @RequestMapping(value = "/editor/new/{cell}", method = RequestMethod.GET)
//    public String createBox(@PathVariable String id){
//
//    }


}
