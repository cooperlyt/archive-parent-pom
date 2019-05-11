package cc.coopersoft.archives.room.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "CABINET")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Cabinet {

    @Id
    @Column(name = "CABINET_ID", nullable = false, length = 16 , unique = true)
    private String id;

    @Column(name = "NAME", nullable = false, length = 8)
    private String name;

    @Column(name = "SEQ", nullable = false)
    private int seq;

    @Column(name = "PERCENTAGE" , nullable = false)
    private int percentage;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL, optional = false)
    @JoinColumn(name = "RACK_ID", nullable = false)
    private Rack rack;

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL,orphanRemoval = true, mappedBy = "cabinet")
    private Set<Cell> cells = new HashSet<>(0);

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

    public Rack getRack() {
        return rack;
    }

    public void setRack(Rack rack) {
        this.rack = rack;
    }

    public Set<Cell> getCells() {
        return cells;
    }

    public void setCells(Set<Cell> cells) {
        this.cells = cells;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public int getPercentage() {
        return percentage;
    }

    public void setPercentage(int percentage) {
        this.percentage = percentage;
    }
}
