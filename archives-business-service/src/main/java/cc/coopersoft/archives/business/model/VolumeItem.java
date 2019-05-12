package cc.coopersoft.archives.business.model;

import cc.coopersoft.construct.data.VolumeItemType;
import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "VOL_ITEM")
public class VolumeItem {

    @Id
    @Column(name = "ITEM_ID", nullable = false, unique = true)
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "NAME", nullable = false)
    private String name;

    @Enumerated(EnumType.STRING)
    @Column(name = "TYPE", nullable = false)
    private VolumeItemType type;

    @Column(name = "EL")
    private String el;

    @Column(name = "DESCRIPTION")
    private String description;


    @Column(name = "SEQ", nullable = false)
    private int seq;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY,optional = false)
    @JoinColumn(name = "BUSINESS_ID", nullable = false)
    private Business business;


    @OneToMany(fetch = FetchType.LAZY, mappedBy = "item")
    @OrderBy("ordinal asc")
    private List<VolumeContext> contexts = new ArrayList<>();


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public VolumeItemType getType() {
        return type;
    }

    public void setType(VolumeItemType type) {
        this.type = type;
    }

    public String getEl() {
        return el;
    }

    public void setEl(String el) {
        this.el = el;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public int getSeq() {
        return seq;
    }

    public void setSeq(int seq) {
        this.seq = seq;
    }

    public Business getBusiness() {
        return business;
    }

    public void setBusiness(Business business) {
        this.business = business;
    }

    public List<VolumeContext> getContexts() {
        return contexts;
    }

    public void setContexts(List<VolumeContext> contexts) {
        this.contexts = contexts;
    }
}
