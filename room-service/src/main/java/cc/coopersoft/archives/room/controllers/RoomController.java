package cc.coopersoft.archives.room.controllers;

import cc.coopersoft.archives.room.model.*;
import cc.coopersoft.archives.room.services.RoomLocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.math.BigDecimal;
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
        List<List<Cell>> result = roomLocationService.getCells(cabinetId);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return result;
    }


    @RequestMapping(value = "/list-box/{cell}", method = RequestMethod.GET)
    public List<Box> listBox(@PathVariable("cell")String cell){

        return roomLocationService.getBoxes(cell);
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

    @RequestMapping(value = "/path/room/{id}", method = RequestMethod.GET)
    public RoomPath getRoomPath(@PathVariable("id")String id){
        RoomPath result = roomLocationService.getRoomPath(id);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return result;
    }

    @RequestMapping(value = "/path/room-rack/{id}", method = RequestMethod.GET)
    public RoomPath getRoomPathByRack(@PathVariable("id") String id){
        RoomPath result = roomLocationService.getRoomPathByRack(id);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return result;
    }

    @RequestMapping(value = "/path/rack/{id}", method = RequestMethod.GET)
    public RackPath getRackPath(@PathVariable("id")String id){
        RackPath result = roomLocationService.getRackPath(id);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return result;
    }

    @RequestMapping(value = "/path/cabinet/{id}", method = RequestMethod.GET)
    public CabinetPath getCabinetPath(@PathVariable("id")String id){
        CabinetPath result = roomLocationService.getCabinetPath(id);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return result;
    }

    @RequestMapping(value = "/path/cell/{id}", method = RequestMethod.GET)
    public CellPath getCellPath(@PathVariable("id")String id){
        CellPath result = roomLocationService.getCellPath(id);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return result;
    }

    @RequestMapping(value = "/cell-box/{boxId}", method = RequestMethod.GET)
    public Cell getCellByBox(@PathVariable("boxId")String boxId){
        Cell result = roomLocationService.getCellByBox(boxId);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return result;
    }

    @RequestMapping(value = "/editor/box/{boxId}/{size}", method = RequestMethod.GET)
    public Box changeBoxSize(@PathVariable("boxId")String boxId, @PathVariable("size")BigDecimal size){
        Box result = roomLocationService.changeBoxSize(boxId,size);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return result;
    }


    @RequestMapping(value = "/editor/new/{cell}", method = RequestMethod.PUT)
    public Box createBox(@PathVariable("cell") String id, @RequestBody Box box){
        Box result = roomLocationService.createBox(id,box);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return result;
    }

    @RequestMapping(value = "/editor/full/{boxId}", method = RequestMethod.GET)
    public Box setBoxFull(@PathVariable("boxId") String boxId){
        Box result = roomLocationService.setBoxFull(boxId,true);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return result;
    }

    @RequestMapping(value = "/editor/not-full/{boxId}", method = RequestMethod.GET)
    public Box setBoxNotFull(@PathVariable("boxId") String boxId){
        Box result = roomLocationService.setBoxFull(boxId,false);
        if (result == null){
            throw new ResponseStatusException(
                    HttpStatus.NOT_FOUND, "define entity not found"
            );
        }
        return result;
    }
}
