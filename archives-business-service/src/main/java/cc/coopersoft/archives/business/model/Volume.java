package cc.coopersoft.archives.business.model;

import cc.coopersoft.archives.data.SecrecyLevel;
import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "VOLUME")
public class Volume {

    @Id
    @Column(name = "VOLUME_ID" , unique = true, nullable = false)
    private String id;

    @Column(name = "BOX_ID", nullable = false, unique = true)
    private String boxId;

    @Column(name = "PAGE_COUNT")
    private int pageCount;

    @Enumerated(EnumType.STRING)
    @Column(name = "SECRECY_LEVEL", length = 8 , nullable = false)
    private SecrecyLevel secrecyLevel;

    @Column(name = "RECORD_TIME",nullable = false)
    private Date recordTime;

    @Column(name = "SECRECY_LEN")
    private Integer secrecyLen;

    @JsonIgnore
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "BUSINESS_ID", nullable = false )
    private Business business;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBoxId() {
        return boxId;
    }

    public void setBoxId(String boxId) {
        this.boxId = boxId;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public SecrecyLevel getSecrecyLevel() {
        return secrecyLevel;
    }

    public void setSecrecyLevel(SecrecyLevel secrecyLevel) {
        this.secrecyLevel = secrecyLevel;
    }

    public Date getRecordTime() {
        return recordTime;
    }

    public void setRecordTime(Date recordTime) {
        this.recordTime = recordTime;
    }

    public Business getBusiness() {
        return business;
    }

    public void setBusiness(Business business) {
        this.business = business;
    }

    public Integer getSecrecyLen() {
        return secrecyLen;
    }

    public void setSecrecyLen(Integer secrecyLen) {
        this.secrecyLen = secrecyLen;
    }
}
