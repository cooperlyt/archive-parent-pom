package cc.coopersoft.archives.room.model;

import java.util.List;

public class RackPath {

    private CabinetPath cabinetPath;

    private Rack rack;

    private List<Cabinet> cabinets;

    public RackPath() {
    }

    public RackPath(Rack rack) {
        this.rack = rack;
    }

    public CabinetPath getCabinetPath() {
        return cabinetPath;
    }

    public void setCabinetPath(CabinetPath cabinetPath) {
        this.cabinetPath = cabinetPath;
    }

    public Rack getRack() {
        return rack;
    }

    public void setRack(Rack rack) {
        this.rack = rack;
    }

    public List<Cabinet> getCabinets() {
        return cabinets;
    }

    public void setCabinets(List<Cabinet> cabinets) {
        this.cabinets = cabinets;
    }
}
