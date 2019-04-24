package cc.coopersoft.archives.room.controllers;

import cc.coopersoft.archives.room.model.*;
import cc.coopersoft.archives.room.services.RoomLocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value="v1/rooms")
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
        return roomLocationService.getCabinet(rackId);
    }


    @RequestMapping(value = "/list-cell/{cabinet}", method = RequestMethod.GET)
    public List<Cell> listCell(@PathVariable("cabinet") String cabinetId){
        return roomLocationService.getCell(cabinetId);
    }


    @RequestMapping(value = "/list-box/{cell}", method = RequestMethod.GET)
    public List<Box> listBox(@PathVariable("cell")String cell){

        return null;
    }



    @RequestMapping(value = "/hello", method = RequestMethod.GET)
    public String hello(){
        return "{\"message\":\"hello word\"}";
    }
}
