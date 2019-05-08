package cc.coopersoft.archives.room.model;


import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "CELL")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Cell implements Comparable<Cell>{

    @Id
    @Column(name = "CELL_ID", nullable = false, unique = true, length = 24)
    private String id;

    @Column(name = "NAME", nullable = false, length = 8)
    private String name;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CABINET_ID", nullable = false)
    private Cabinet cabinet;


    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true , mappedBy = "cell")
    @OrderBy("seq asc")
    private List<Box> boxes = new ArrayList<>(0);

    @Column(name = "_SIZE")
    private Integer size;

    @Column(name = "SEQ",nullable = false)
    private int seq;

    @Column(name = "_ROW",nullable = false)
    private int row;

    @Column(name = "_COL",nullable = false)
    private int col;

    @Column(name = "PERCENTAGE", nullable = false)
    private int percentage;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Cabinet getCabinet() {
        return cabinet;
    }

    public void setCabinet(Cabinet cabinet) {
        this.cabinet = cabinet;
    }

    public List<Box> getBoxes() {
        return boxes;
    }

    public void setBoxes(List<Box> boxes) {
        this.boxes = boxes;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public int getCol() {
        return col;
    }

    public void setCol(int col) {
        this.col = col;
    }

    public int getPercentage() {
        return percentage;
    }

    public void setPercentage(int percentage) {
        this.percentage = percentage;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Cell cell = (Cell) o;

        return id.equals(cell.id);

    }

    @Override
    public int hashCode() {
        return id.hashCode();
    }

    @Override
    public int compareTo(Cell o) {
        return Integer.valueOf(getSeq()).compareTo(o.getSeq());
    }
}
