package cc.coopersoft.archives.room.model;


import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "CELL")
public class Cell {

    @Id
    @Column(name = "CELL_ID", nullable = false, unique = true, length = 24)
    String id;

    @Column(name = "NAME", nullable = false, length = 8)
    String name;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "CABINET_ID", nullable = false)
    Cabinet cabinet;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true , mappedBy = "cell")
    Set<Box> boxes = new HashSet<>(0);

    @Column(name = "_SIZE")
    Integer size;

    @Column(name = "_FULL", nullable = false)
    boolean full;

    @Column(name = "SEQ",nullable = false)
    int seq;

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

    public boolean isFull() {
        return full;
    }

    public void setFull(boolean full) {
        this.full = full;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }
}
