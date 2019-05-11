package cc.coopersoft.archives.room.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "RACK")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Rack {

    @Id
    @Column(name = "RACK_ID", unique = true, nullable = false, length = 8)
    private String id;


    @Column(name = "NAME", nullable = false, length = 4)
    private String name;

    @Column(name = "PERCENTAGE" , nullable = false)
    private int percentage;

    @Column(name = "SEQ", nullable = false)
    private int seq;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, optional = false)
    @JoinColumn(name = "ROOM_ID", nullable = false)
    private Room room;

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true, mappedBy = "rack")
    @OrderBy("seq asc")
    private List<Cabinet> cabinets = new ArrayList<>(0);

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

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public List<Cabinet> getCabinets() {
        return cabinets;
    }

    public void setCabinets(List<Cabinet> cabinets) {
        this.cabinets = cabinets;
    }

    public int getPercentage() {
        return percentage;
    }

    public void setPercentage(int percentage) {
        this.percentage = percentage;
    }

    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }
}
