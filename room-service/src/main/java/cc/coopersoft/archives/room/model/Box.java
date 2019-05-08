package cc.coopersoft.archives.room.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

@Entity
@Table(name = "BOX")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Box {

    @Id
    @Column(name = "BOX_ID", unique = true, nullable = false, length = 32)
    private String id;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CELL_ID", nullable = false)
    private Cell cell;

    @Column(name = "_FULL", nullable = false)
    private boolean full;

    @Column(name = "EMPTY", nullable = false)
    private boolean empty;

    @Column(name = "OLD", nullable = false)
    private boolean old;

    @Column(name = "_SIZE", nullable = false)
    private int size;

    @Column(name = "SEQ", nullable = false)
    private int seq;

    @Column(name = "DESCRIPTION",  length = 256)
    private String description;

    public Box() {
    }

    public Box(String id, Cell cell, boolean full, boolean empty, boolean old, int size, int seq, String description) {
        this.id = id;
        this.cell = cell;
        this.full = full;
        this.empty = empty;
        this.old = old;
        this.size = size;
        this.seq = seq;
        this.description = description;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Cell getCell() {
        return cell;
    }

    public void setCell(Cell cell) {
        this.cell = cell;
    }

    public boolean isFull() {
        return full;
    }

    public void setFull(boolean full) {
        this.full = full;
    }

    public boolean isEmpty() {
        return empty;
    }

    public void setEmpty(boolean empty) {
        this.empty = empty;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public boolean isOld() {
        return old;
    }

    public void setOld(boolean old) {
        this.old = old;
    }
}
