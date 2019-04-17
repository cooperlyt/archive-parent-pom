package cc.coopersoft.archives.business.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "RECORD_BUSINESS")
public class Business {

    public enum Status{
        PREPARE,
        CREATED,
        COMPLETE,
        ABORT
    }

    public enum Source{
        INPUT,
        AFTER,
        OUTSID
    }

    @Id
    @Column(name = "BUSINESS_ID",nullable = false, unique = true)
    private String id;

    @Column(name = "DEFINE_ID")
    private String defineId;

    @Column(name = "DEFINE_NAME", nullable = false)
    private String defineName;

    @Column(name = "DELIVER", nullable = false)
    private String deliver;

    @Column(name = "DELIVER_ID", nullable = false)
    private String deliverId;

    @Column(name = "RECEIVE_DATE", nullable = false)
    private Date receiveDate;

    @Column(name = "MEMO")
    private String memo;

    @Column(name = "_KEY")
    private String key;

    @Enumerated(EnumType.STRING)
    @Column(name = "STATUS", nullable = false)
    private Status status;

    @Version
    @Column(name = "_VERSION")
    private int version;

    @Column(name = "SUMMARY")
    private String summary;

    @Enumerated(EnumType.STRING)
    @Column(name = "_SOURCE" , nullable = false, length = 8)
    private Source source;

    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    @OneToOne(fetch = FetchType.LAZY, mappedBy = "business", cascade = CascadeType.ALL, orphanRemoval = true)
    private Volume volume;

    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "business", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<BusinessField> fields = new HashSet<>(0);

    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "business", cascade = CascadeType.ALL, orphanRemoval = true)
    private Set<VolumeContext> contexts = new HashSet<>(0);

    public Business() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDefineId() {
        return defineId;
    }

    public void setDefineId(String defineId) {
        this.defineId = defineId;
    }

    public String getDefineName() {
        return defineName;
    }

    public void setDefineName(String defineName) {
        this.defineName = defineName;
    }

    public String getDeliver() {
        return deliver;
    }

    public void setDeliver(String deliver) {
        this.deliver = deliver;
    }

    public String getDeliverId() {
        return deliverId;
    }

    public void setDeliverId(String deliverId) {
        this.deliverId = deliverId;
    }

    public Date getReceiveDate() {
        return receiveDate;
    }

    public void setReceiveDate(Date receiveDate) {
        this.receiveDate = receiveDate;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public Volume getVolume() {
        return volume;
    }

    public void setVolume(Volume volume) {
        this.volume = volume;
    }

    public Set<BusinessField> getFields() {
        return fields;
    }

    public void setFields(Set<BusinessField> fields) {
        this.fields = fields;
    }

    public Set<VolumeContext> getContexts() {
        return contexts;
    }

    public void setContexts(Set<VolumeContext> contexts) {
        this.contexts = contexts;
    }

    public Source getSource() {
        return source;
    }

    public void setSource(Source source) {
        this.source = source;
    }
}
