package cc.coopersoft.business.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "FIELD_DEFINE")
public class FieldDefine {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "VALUE_ID", nullable = false, unique = true)
    private int id;

    @Column(name = "_MAX")
    private Integer max;

    @Column(name = "_MIN")
    private Integer min;

    @Column(name = "REQUIRED",nullable = false)
    private boolean required;

    @Column(name = "SEARCH_KEY", nullable = false)
    private boolean searchKey;

    @Column(name = "VIEW_PATTEN", length = 32)
    private String viewPatten;

    @Column(name = "EDIT_PATTEN", length = 32)
    private String editPatten;

    @Column(name = "VALIDATIONS", length = 256)
    private String validations;

    @Column(name = "LABEL", length = 32)
    private String label;

    @Column(name = "_ORDINAL", nullable = false)
    private int ordinal;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY,optional = false)
    @JoinColumn(name = "GROUP_ID",nullable = false)
    private FieldGroup fieldGroup;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Integer getMax() {
        return max;
    }

    public void setMax(Integer max) {
        this.max = max;
    }

    public Integer getMin() {
        return min;
    }

    public void setMin(Integer min) {
        this.min = min;
    }

    public boolean isRequired() {
        return required;
    }

    public void setRequired(boolean required) {
        this.required = required;
    }

    public boolean isSearchKey() {
        return searchKey;
    }

    public void setSearchKey(boolean searchKey) {
        this.searchKey = searchKey;
    }

    public String getViewPatten() {
        return viewPatten;
    }

    public void setViewPatten(String viewPatten) {
        this.viewPatten = viewPatten;
    }

    public String getValidations() {
        return validations;
    }

    public void setValidations(String validations) {
        this.validations = validations;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public int getOrdinal() {
        return ordinal;
    }

    public void setOrdinal(int ordinal) {
        this.ordinal = ordinal;
    }

    public FieldGroup getFieldGroup() {
        return fieldGroup;
    }

    public void setFieldGroup(FieldGroup fieldGroup) {
        this.fieldGroup = fieldGroup;
    }

    public String getEditPatten() {
        return editPatten;
    }

    public void setEditPatten(String editPatten) {
        this.editPatten = editPatten;
    }
}
