package cc.coopersoft.archives.room.model;

public class CellPath {

    private Cell cell;

    private Box box;

    public CellPath() {
    }

    public CellPath(Cell cell) {
        this.cell = cell;
    }

    public Cell getCell() {
        return cell;
    }

    public void setCell(Cell cell) {
        this.cell = cell;
    }

    public Box getBox() {
        return box;
    }

    public void setBox(Box box) {
        this.box = box;
    }
}
