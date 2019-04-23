package cc.coopersoft.archives.business.model;

import cc.coopersoft.comm.JsonRawDeserializer;
import cc.coopersoft.comm.JsonRawSerialize;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "BUSINESS_FIELD_GROUP")
public class BusinessField {

    @Id
    @Column(name = "FIELD_ID",unique = true, nullable = false)
    private String id;

    @Column(name = "NAME", nullable = false)
    private String name;

    @Column(name = "TYPE", nullable = false, length = 32)
    private String type;

    @Column(name = "_ORDINAL")
    private int ordinal;

    @JsonSerialize(using = JsonRawSerialize.class)
    @JsonDeserialize(using = JsonRawDeserializer.class)
    @Basic(fetch = FetchType.LAZY)
    @Column(name = "_OPTION")
    private String option;

    @Column(name = "_ROW", nullable = false)
    private int row;

    @Column(name = "DEFINE", length = 32)
    private String define;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "BUSINESS_ID", nullable = false)
    private Business business;

    @JsonProperty(value = "fieldDefines")
    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    @OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL,mappedBy = "field", orphanRemoval = true)
    private Set<FieldValue> values = new HashSet<>(0);

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

    public int getOrdinal() {
        return ordinal;
    }

    public void setOrdinal(int ordinal) {
        this.ordinal = ordinal;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public String getDefine() {
        return define;
    }

    public void setDefine(String define) {
        this.define = define;
    }

    public Business getBusiness() {
        return business;
    }

    public void setBusiness(Business business) {
        this.business = business;
    }

    public Set<FieldValue> getValues() {
        return values;
    }

    public void setValues(Set<FieldValue> values) {
        this.values = values;
    }
}
