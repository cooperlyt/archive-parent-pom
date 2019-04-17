package cc.coopersoft.archives.business.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "FIELD_DEFINE")
public class FieldDefine implements java.io.Serializable {

    @Id
    @Column(name = "FIELD_ID", unique = true, nullable = false, length = 32)
    private String id;

    @Column(name = "NAME", nullable = false, length = 16)
    private String name;

    @Column(name = "TYPE", nullable = false, length = 32)
    private String type;

    @Column(name = "_NULLABLE", nullable = false)
    private boolean nullable;

    @Column(name = "SEARCH_KEY", nullable = false)
    private boolean searchKey;

    @Column(name = "MAX_VALUE", nullable = false)
    private int max;

    @Column(name = "MIN_VALUE", nullable = false)
    private int min;

    @Column(name = "EDITOR_ORDINAL", nullable = false)
    private int editorOrdinal;

    @Column(name = "DISPLAY_ORDINAL", nullable = false)
    private int displayOrdinal;

    @Column(name="EDIT_OPTION")
    private String editOption;

    @Column(name = "DISPLAY_OPTION")
    private String displayOption;

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

    public BusinessDefine getBusinessDefine() {
        return businessDefine;
    }

    public void setBusinessDefine(BusinessDefine businessDefine) {
        this.businessDefine = businessDefine;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getEditorOrdinal() {
        return editorOrdinal;
    }

    public void setEditorOrdinal(int editorOrdinal) {
        this.editorOrdinal = editorOrdinal;
    }

    public int getDisplayOrdinal() {
        return displayOrdinal;
    }

    public void setDisplayOrdinal(int displayOrdinal) {
        this.displayOrdinal = displayOrdinal;
    }

    public String getEditOption() {
        return editOption;
    }

    public void setEditOption(String editOption) {
        this.editOption = editOption;
    }

    public String getDisplayOption() {
        return displayOption;
    }

    public void setDisplayOption(String displayOption) {
        this.displayOption = displayOption;
    }
}
