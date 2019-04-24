package cc.coopersoft.archives.room.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "RACK")
public class Rack {

    @Id
    @Column(name = "RACK_ID", unique = true, nullable = false, length = 8)
    private String id;


    @Column(name = "NAME", nullable = false, length = 4)
    private String name;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ROOM_ID", nullable = false)
    private Room room;

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true, mappedBy = "rack")
    private Set<Cabinet> cabinets = new HashSet<>(0);

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

    public Set<Cabinet> getCabinets() {
        return cabinets;
    }

    public void setCabinets(Set<Cabinet> cabinets) {
        this.cabinets = cabinets;
    }
}
