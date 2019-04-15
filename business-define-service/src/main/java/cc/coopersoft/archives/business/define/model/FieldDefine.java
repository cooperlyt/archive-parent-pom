package cc.coopersoft.archives.business.define.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "FIELD_DEFINE")
public class FieldDefine implements java.io.Serializable {

    public enum FieldType{
        STR,
        NUM,
        INT,
        MONEY
    }

    @Id
    @Column(name = "FIELD_ID", unique = true, nullable = false, length = 32)
    private String id;

    @Column(name = "NAME", nullable = false, length = 16)
    private String name;

    @Column(name = "TYPE", nullable = false, length = 8)
    @Enumerated(EnumType.STRING)
    private FieldType type;

    @Column(name = "_NULLABLE", nullable = false)
    private boolean nullable;

    @Column(name = "SEARCH_KEY", nullable = false)
    private boolean searchKey;

    @Column(name = "MAX_VALUE", nullable = false)
    private int max;

    @Column(name = "MIN_VALUE", nullable = false)
    private int min;

    @Column(name = "ORDINAL", nullable = false)
    private int ordinal;

    @Column(name = "_STYLE", length = 128)
    private String style;

    @Column(name = "_ROW", nullable = false)
    private int row;

    @Column(name = "_GROUP", length = 8)
    private String group;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY,optional = false)
    @JoinColumn(name = "DEFINE_ID", nullable = false)
    private BusinessDefine businessDefine;

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

    public FieldType getType() {
        return type;
    }

    public void setType(FieldType type) {
        this.type = type;
    }

    public boolean isNullable() {
        return nullable;
    }

    public void setNullable(boolean nullable) {
        this.nullable = nullable;
    }

    public boolean isSearchKey() {
        return searchKey;
    }

    public void setSearchKey(boolean searchKey) {
        this.searchKey = searchKey;
    }

    public int getMax() {
        return max;
    }

    public void setMax(int max) {
        this.max = max;
    }

    public int getMin() {
        return min;
    }

    public void setMin(int min) {
        this.min = min;
    }

    public int getOrdinal() {
        return ordinal;
    }

    public void setOrdinal(int ordinal) {
        this.ordinal = ordinal;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    public BusinessDefine getBusinessDefine() {
        return businessDefine;
    }

    public void setBusinessDefine(BusinessDefine businessDefine) {
        this.businessDefine = businessDefine;
    }
}
