package cc.coopersoft.archives.business.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "OPERATION")
public class Operation {

    public enum Type{
        COMMIT,
        CREATE,
        EDITOR,
        ABORT
    }

    public Operation() {
    }

    public Operation(Type type, String employeeId, String employeeName, String explain, Date operationTime, Business business) {
        this.type = type;
        this.employeeId = employeeId;
        this.employeeName = employeeName;
        this.explain = explain;
        this.operationTime = operationTime;
        this.business = business;
    }

    public Operation(Type type, String employeeId, String employeeName, Date operationTime, Business business) {
        this.type = type;
        this.employeeId = employeeId;
        this.employeeName = employeeName;
        this.operationTime = operationTime;
        this.business = business;
    }

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "OPERATION_ID",unique = true, nullable = false)
    private Long id;


    @Enumerated(EnumType.STRING)
    @Column(name = "TYPE", nullable = false, length = 32)
    private Type type;

    @Column(name = "EMP_ID",length = 32)
    private String employeeId;

    @Column(name = "EMP_NAME", length = 50)
    private String employeeName;

    @Column(name = "_EXPLAIN", length = 512)
    private String explain;

    @Column(name = "OPERATION_TIME")
    private Date operationTime;

    @JsonIgnore
    @ManyToOne(fetch = FetchType.LAZY,optional = false)
    @JoinColumn(name = "BUSINESS_ID",nullable = false)
    private Business business;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getExplain() {
        return explain;
    }

    public void setExplain(String explain) {
        this.explain = explain;
    }

    public Date getOperationTime() {
        return operationTime;
    }

    public void setOperationTime(Date operationTime) {
        this.operationTime = operationTime;
    }

    public Business getBusiness() {
        return business;
    }

    public void setBusiness(Business business) {
        this.business = business;
    }
}
