package cc.coopersoft.archives.business.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;

@Entity
@Table(name = "CREATE_ROLE")
public class CreateRole implements java.io.Serializable{

    @Id
    @Column(name = "ID" , unique = true, nullable = false)
    private int id;

    @Column(name = "ROLE", nullable = false)
    private String role;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "DEFINE_ID", nullable = false)
    private BusinessDefine businessDefine;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public BusinessDefine getBusinessDefine() {
        return businessDefine;
    }

    public void setBusinessDefine(BusinessDefine businessDefine) {
        this.businessDefine = businessDefine;
    }
}
