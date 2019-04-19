package cc.coopersoft.construct.corp.model;

import cc.coopersoft.construct.data.CorpLevel;
import cc.coopersoft.construct.data.CorpStatus;
import cc.coopersoft.construct.data.CorpType;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "CONSTRUCT_CORP")
public class ConstructCorp implements java.io.Serializable {

    @Id
    @Column(name = "REG_ID", nullable = false, unique = true)
    private String id;

    @Enumerated(EnumType.STRING)
    @Column(name = "CORP_TYPE", nullable = false, length = 16)
    private CorpType type;

    @Column(name = "REG_DATE", nullable = false)
    private Date regDate;

    @Column(name = "REG_DATE_TO")
    private Date regDateTo;

    @Enumerated(EnumType.STRING)
    @Column(name = "_LEVEL", length = 8)
    private CorpLevel level;

    @Column(name = "LEVEL_NUMBER", length = 32)
    private String levelNumber;

    @Enumerated(EnumType.STRING)
    @Column(name = "STATUS", nullable = false, length = 16)
    private CorpStatus status;

    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    @ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL,optional = false)
    @JoinColumn(name = "CORP_ID", nullable = false)
    private Corp corp;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getRegDate() {
        return regDate;
    }

    public void setRegDate(Date regDate) {
        this.regDate = regDate;
    }

    public Date getRegDateTo() {
        return regDateTo;
    }

    public void setRegDateTo(Date regDateTo) {
        this.regDateTo = regDateTo;
    }

    public String getLevelNumber() {
        return levelNumber;
    }

    public void setLevelNumber(String levelNumber) {
        this.levelNumber = levelNumber;
    }

    public CorpType getType() {
        return type;
    }

    public void setType(CorpType type) {
        this.type = type;
    }

    public CorpLevel getLevel() {
        return level;
    }

    public void setLevel(CorpLevel level) {
        this.level = level;
    }

    public CorpStatus getStatus() {
        return status;
    }

    public void setStatus(CorpStatus status) {
        this.status = status;
    }

    public Corp getCorp() {
        return corp;
    }

    public void setCorp(Corp corp) {
        this.corp = corp;
    }
}
