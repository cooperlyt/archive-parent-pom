package cc.coopersoft.archives.business.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

@Entity
@Table(name = "VOL_CONETXT")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class VolumeContext {


    @Id
    @Column(name = "CONTEXT_ID", nullable = false, unique = true)
    private String id;

    @Column(name = "TYPE",length = 8, nullable = false)
    private String type;

    @Column(name = "ORDINAL", nullable = false)
    private int ordinal;

    @Column(name = "PAGE_COUNT", nullable = false)
    private int pageCount;


    @Column(name = "MD5")
    private String md5;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ITEM_ID", nullable = false)
    private VolumeItem item;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getOrdinal() {
        return ordinal;
    }

    public void setOrdinal(int ordinal) {
        this.ordinal = ordinal;
    }

    public String getMd5() {
        return md5;
    }

    public void setMd5(String md5) {
        this.md5 = md5;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }

    public VolumeItem getItem() {
        return item;
    }

    public void setItem(VolumeItem item) {
        this.item = item;
    }
}
