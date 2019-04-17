package cc.coopersoft.archives.business.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
public class VolumeContext {

    public enum FileType{
        PNG,
        BMP,
        JPEG,
        PDF
    }

    @Id
    @Column(name = "CONTEXT_ID", nullable = false, unique = true)
    private String id;

    @Enumerated(EnumType.STRING)
    @Column(name = "TYPE",length = 8, nullable = false)
    private FileType type;

    @Column(name = "ORDINAL", nullable = false)
    private int ordinal;

    @Column(name = "PAGE_BEGIN", nullable = false)
    private int pageBegin;

    @Column(name = "PAGE_END", nullable = false)
    private int pageEnd;

    @Column(name = "NAME", nullable = false, length = 32)
    private String name;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "BUSINESS_ID", nullable = false)
    private Business business;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public FileType getType() {
        return type;
    }

    public void setType(FileType type) {
        this.type = type;
    }

    public int getOrdinal() {
        return ordinal;
    }

    public void setOrdinal(int ordinal) {
        this.ordinal = ordinal;
    }

    public int getPageBegin() {
        return pageBegin;
    }

    public void setPageBegin(int pageBegin) {
        this.pageBegin = pageBegin;
    }

    public int getPageEnd() {
        return pageEnd;
    }

    public void setPageEnd(int pageEnd) {
        this.pageEnd = pageEnd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Business getBusiness() {
        return business;
    }

    public void setBusiness(Business business) {
        this.business = business;
    }
}
