package cc.coopersoft.archives.room.model;

import java.util.List;

public class CabinetPath {

    private CellPath cellPath;

    private Cabinet cabinet;

    private List<List<Cell>> cells;

    public CabinetPath() {
    }

    public CabinetPath(Cabinet cabinet) {
        this.cabinet = cabinet;
    }

    public Cabinet getCabinet() {
        return cabinet;
    }

    public void setCabinet(Cabinet cabinet) {
        this.cabinet = cabinet;
    }

    public CellPath getCellPath() {
        return cellPath;
    }

    public void setCellPath(CellPath cellPath) {
        this.cellPath = cellPath;
    }

    public List<List<Cell>> getCells() {
        return cells;
    }

    public void setCells(List<List<Cell>> cells) {
        this.cells = cells;
    }
}
