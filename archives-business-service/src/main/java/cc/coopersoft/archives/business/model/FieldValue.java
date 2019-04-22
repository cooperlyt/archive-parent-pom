package cc.coopersoft.archives.business.model;

import cc.coopersoft.comm.JsonRawSerialize;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import javax.persistence.*;

@Entity
@Table(name = "FIELD_VALUE")
public class FieldValue {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "VALUE_ID",unique = true, nullable = false)
    private String id;

    @Column(name = "_PATTERN", length = 32)
    private String pattern;

    @Column(name = "_VALUE")
    private String value;

    @Column(name = "_ORDINAL" , nullable = false)
    private int ordinal;

    @Column(name = "LABEL")
    private String label;

    @JsonSerialize(using = JsonRawSerialize.class)
    @Basic(fetch = FetchType.LAZY)
    @Column(name = "_OPTION")
    private String option;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "FIELD_ID", nullable = false)
    private BusinessField field;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPattern() {
        return pattern;
    }

    public void setPattern(String pattern) {
        this.pattern = pattern;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public int getOrdinal() {
        return ordinal;
    }

    public void setOrdinal(int ordinal) {
        this.ordinal = ordinal;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }

    public BusinessField getField() {
        return field;
    }

    public void setField(BusinessField field) {
        this.field = field;
    }
}
