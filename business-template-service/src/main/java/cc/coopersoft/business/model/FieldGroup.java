package cc.coopersoft.business.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "FIELD_GROUP")
public class FieldGroup implements java.io.Serializable {

    @Id
    @Column(name = "GROUP_ID", unique = true, nullable = false, length = 32)
    private String id;

    @Column(name = "NAME", nullable = false, length = 16)
    private String name;

    @Column(name = "TYPE", nullable = false, length = 32)
    private String type;

    @Column(name = "EDITOR_ORDINAL", nullable = false)
    private int editorOrdinal;

    @Column(name = "DISPLAY_ORDINAL", nullable = false)
    private int displayOrdinal;

    @Column(name = "VALIDATIONS", length = 256)
    private String validations;

    @Column(name = "VIEW_ROW", nullable = false)
    private int viewRow;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY,optional = false)
    @JoinColumn(name = "DEFINE_ID", nullable = false)
    private BusinessDefine businessDefine;

    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "fieldGroup", orphanRemoval = true)
    private Set<FieldDefine> fieldDefines = new HashSet<>(0);

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

    public String getValidations() {
        return validations;
    }

    public void setValidations(String validations) {
        this.validations = validations;
    }

    public Set<FieldDefine> getFieldDefines() {
        return fieldDefines;
    }

    public void setFieldDefines(Set<FieldDefine> fieldDefines) {
        this.fieldDefines = fieldDefines;
    }

    public int getViewRow() {
        return viewRow;
    }

    public void setViewRow(int viewRow) {
        this.viewRow = viewRow;
    }
}