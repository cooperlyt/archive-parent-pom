package cc.coopersoft.archives.room.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import java.util.List;


public class RoomPath {

    private RackPath rackPath;

    private Room room;

    private List<Rack> racks;

    public RoomPath() {
    }

    public RoomPath(Room room) {
        this.room = room;
    }

    public RackPath getRackPath() {
        return rackPath;
    }

    public void setRackPath(RackPath rackPath) {
        this.rackPath = rackPath;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public List<Rack> getRacks() {
        return racks;
    }

    public void setRacks(List<Rack> racks) {
        this.racks = racks;
    }
}
