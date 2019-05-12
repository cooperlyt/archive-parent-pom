package cc.coopersoft.archives.business.model;

import javax.persistence.Column;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

public class BusinessOperation {

    public BusinessOperation() {
    }

    public BusinessOperation(String id, String defineName, String deliverId, String deliver, Date receiveDate,Business.Status status, List<Operation> operations,Volume volume) {
        this.id = id;
        this.defineName = defineName;
        this.deliver = deliver;
        this.deliverId = deliverId;
        this.operations = operations;
        this.receiveDate = receiveDate;
        this.status = status;
        this.volume = volume;
    }

    private String id;

    private String defineName;

    private String deliver;

    private String deliverId;

    private Date receiveDate;

    private Business.Status status;

    private List<Operation> operations = new ArrayList<>(0);

    private Volume volume;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDefineName() {
        return defineName;
    }

    public void setDefineName(String defineName) {
        this.defineName = defineName;
    }

    public List<Operation> getOperations() {
        return operations;
    }

    public void setOperations(List<Operation> operations) {
        this.operations = operations;
    }

    public String getDeliver() {
        return deliver;
    }

    public void setDeliver(String deliver) {
        this.deliver = deliver;
    }

    public String getDeliverId() {
        return deliverId;
    }

    public void setDeliverId(String deliverId) {
        this.deliverId = deliverId;
    }

    public Date getReceiveDate() {
        return receiveDate;
    }

    public void setReceiveDate(Date receiveDate) {
        this.receiveDate = receiveDate;
    }

    public Business.Status getStatus() {
        return status;
    }

    public void setStatus(Business.Status status) {
        this.status = status;
    }

    public Volume getVolume() {
        return volume;
    }

    public void setVolume(Volume volume) {
        this.volume = volume;
    }
}
