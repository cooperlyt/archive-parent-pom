package cc.coopersoft.archives.room.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "ROOM")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Room {

    @Id
    @Column(name = "ROOM_ID", unique = true, nullable = false, length = 4)
    private String id;

    @Column(name = "NAME", nullable = false , length = 16)
    private String name;

    @Column(name = "DESCRIPTION",  length = 256)
    private String description;

    @Column(name = "PERCENTAGE" , nullable = false)
    private int percentage;

    @Column(name = "SEQ" , nullable = false)
    private int seq;

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true, mappedBy = "room")
    @OrderBy("id asc")
    private List<Rack> racks = new ArrayList<>(0);

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

    public List<Rack> getRacks() {
        return racks;
    }

    public void setRacks(List<Rack> racks) {
        this.racks = racks;
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
