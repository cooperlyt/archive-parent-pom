package cc.coopersoft.construct.corp.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "CORP")
public class Corp implements java.io.Serializable{

    public enum CorpIdType{
        COMPANY_CODE(""),
        CORP_CODE("G-"),
        RELIGIOUS_GROUP("R-");

        private String code;

        public String getCode(){
            return code;
        }

        CorpIdType(String code){
            this.code = code;
        }
    }

    @Id
    @Column(name = "CORP_ID",unique = true, nullable = false)
    private String id;

    @Column(name = "NAME",nullable = false)
    private String name;

    @Enumerated(EnumType.STRING)
    @Column(name = "REG_ID_TYPE", nullable = false, length = 16)
    private CorpIdType corpIdType;

    @Column(name = "REG_ID_NUMBER", nullable = false, length = 32)
    private String number;

    @Column(name = "OWNER_NAME", nullable = false, length = 64)
    private String ownerName;

    @Enumerated(EnumType.STRING)
    @Column(name = "OWNER_ID_TYPE", nullable = false, length = 16)
    private Person.IdentityType ownerIdType;

    @Column(name = "OWNER_ID_NUMBER", nullable = false, length = 32)
    private String ownerIdNumber;

    @Column(name = "ADDRESS", length = 256)
    private String address;

    @Column(name = "TEL", length = 16)
    private String tel;

    @Column(name = "DESCRIPTION", length = 256)
    private String description;

    @Version
    @Column(name = "_VERSION", nullable = false)
    private int version;

    @Column(name = "ENABLE", nullable = false)
    private boolean enable;

    @Column(name = "DATA_TIME", nullable = false)
    private Date dataTime;

    @JsonIgnore
    @OneToMany(fetch = FetchType.LAZY, mappedBy = "corp")
    private Set<ConstructCorp> constructCorps = new HashSet<>(0);

    public Corp() {
    }

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

    public CorpIdType getCorpIdType() {
        return corpIdType;
    }

    public void setCorpIdType(CorpIdType corpIdType) {
        this.corpIdType = corpIdType;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getOwnerName() {
        return ownerName;
    }

    public void setOwnerName(String ownerName) {
        this.ownerName = ownerName;
    }

    public Person.IdentityType getOwnerIdType() {
        return ownerIdType;
    }

    public void setOwnerIdType(Person.IdentityType ownerIdType) {
        this.ownerIdType = ownerIdType;
    }

    public String getOwnerIdNumber() {
        return ownerIdNumber;
    }

    public void setOwnerIdNumber(String ownerIdNumber) {
        this.ownerIdNumber = ownerIdNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public Set<ConstructCorp> getConstructCorps() {
        return constructCorps;
    }

    public void setConstructCorps(Set<ConstructCorp> constructCorps) {
        this.constructCorps = constructCorps;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isEnable() {
        return enable;
    }

    public void setEnable(boolean enable) {
        this.enable = enable;
    }

    public Date getDataTime() {
        return dataTime;
    }

    public void setDataTime(Date dataTime) {
        this.dataTime = dataTime;
    }
}
