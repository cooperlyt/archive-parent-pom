package cc.coopersoft.business.model;

import cc.coopersoft.comm.JsonRawSerialize;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;

import javax.persistence.*;

@Entity
@Table(name = "FIELD_DEFINE")
public class FieldDefine {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "VALUE_ID", nullable = false, unique = true)
    private int id;

    @Column(name = "_ORDINAL", nullable = false)
    private int ordinal;

    @JsonSerialize(using = JsonRawSerialize.class)
    @Column(name = "_OPTION")
    private String option;

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

    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }
}
