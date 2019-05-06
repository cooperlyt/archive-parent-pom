package cc.coopersoft.archives.room.model;


import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "CELL")
public class Cell {

    @Id
    @Column(name = "CELL_ID", nullable = false, unique = true, length = 24)
    private String id;

    @Column(name = "NAME", nullable = false, length = 8)
    private String name;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CABINET_ID", nullable = false)
    private Cabinet cabinet;

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true , mappedBy = "cell")
    private Set<Box> boxes = new HashSet<>(0);

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

    public Set<Box> getBoxes() {
        return boxes;
    }

    public void setBoxes(Set<Box> boxes) {
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
}
