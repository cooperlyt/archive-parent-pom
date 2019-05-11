package cc.coopersoft.business.model;

import cc.coopersoft.construct.data.VolumeItemType;
import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "VOL_ITEM_DEFINE")
public class VolumeItemDefine {

    public VolumeItemDefine() {
    }

    @Id
    @Column(name = "ITEM_ID", nullable = false, unique = true)
    @GeneratedValue
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
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "DEFINE_ID", nullable = false)
    private BusinessDefine businessDefine;

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

    public BusinessDefine getBusinessDefine() {
        return businessDefine;
    }

    public void setBusinessDefine(BusinessDefine businessDefine) {
        this.businessDefine = businessDefine;
    }
}
