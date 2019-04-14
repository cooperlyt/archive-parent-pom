package cc.coopersoft.archives.room.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "ROOM")
public class Room {

    @Id
    @Column(name = "ROOM_ID", unique = true, nullable = false, length = 4)
    String id;

    @Column(name = "NAME", nullable = false , length = 16)
    String name;

    @Column(name = "DESCRIPTION",  length = 256)
    String description;

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true, mappedBy = "room")
    Set<Rack> racks = new HashSet<>(0);

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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Set<Rack> getRacks() {
        return racks;
    }

    public void setRacks(Set<Rack> racks) {
        this.racks = racks;
    }
}
