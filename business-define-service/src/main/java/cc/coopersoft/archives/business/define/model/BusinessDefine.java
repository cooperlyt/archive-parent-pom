package cc.coopersoft.archives.business.define.model;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.*;

@Entity
@Table(name = "BUSINESS_DEFINE")
public class BusinessDefine implements Comparable<BusinessDefine>, java.io.Serializable{

    private String id;
    private String name;
    private String wfName;
    private String startPage;
    private String memo;
    private int version;
    private String rolePrefix;
    private String description;
    private int priority;
    private boolean enable;
    private int defineVersion;
    private String defaultRoom;
    private String defaultRack;

    private BusinessCategory businessCategory;

    private Set<TaskAction> taskActions = new HashSet<>(0);
    private Set<CreateRole> createRoles = new HashSet<>(0);
    private Set<FieldDefine> fields = new HashSet<>(0);


    @Id
    @Column(name = "DEFINE_ID",nullable = false,length = 32, unique = true)
    @Size(max = 32)
    @NotNull
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "NAME", nullable = false, length = 64)
    @Size(max = 64)
    @NotNull
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "WF_NAME", length = 32)
    @Size(max = 32)
    public String getWfName() {
        return wfName;
    }

    public void setWfName(String wfName) {
        this.wfName = wfName;
    }

    @Basic
    @Column(name = "START_PAGE", length = 256)
    @Size(max = 256)
    public String getStartPage() {
        return startPage;
    }

    public void setStartPage(String startPage) {
        this.startPage = startPage;
    }

    @Basic
    @Column(name = "MEMO",length = 512)
    @Size(max = 512)
    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    @Version
    @Column(name = "_VERSION", nullable = false)
    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    @Column(name="WF_VER",nullable = false)
    public int getDefineVersion() {
        return defineVersion;
    }

    public void setDefineVersion(int defineVersion) {
        this.defineVersion = defineVersion;
    }

    @Basic
    @Column(name = "ROLE_PREFIX", length = 16)
    @Size(max = 16)
    public String getRolePrefix() {
        return rolePrefix;
    }

    public void setRolePrefix(String rolePrefix) {
        this.rolePrefix = rolePrefix;
    }

    @Basic
    @Column(name = "DESCRIPTION", length = 512)
    @Size(max = 512)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "PRIORITY", nullable = false)
    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    @Basic
    @Column(name = "ENABLE", nullable = false)
    public boolean isEnable() {
        return enable;
    }

    public void setEnable(boolean enable) {
        this.enable = enable;
    }

    @Column(name = "DEFAULT_ROOM", length = 4)
    public String getDefaultRoom() {
        return defaultRoom;
    }

    public void setDefaultRoom(String defaultRoom) {
        this.defaultRoom = defaultRoom;
    }

    @Column(name = "DEFAULT_RACK", length = 8)
    public String getDefaultRack() {
        return defaultRack;
    }

    public void setDefaultRack(String defaultRack) {
        this.defaultRack = defaultRack;
    }

    @OneToMany(fetch = FetchType.LAZY,cascade = CascadeType.ALL,mappedBy = "businessDefine", orphanRemoval = true)
    public Set<TaskAction> getTaskActions() {
        return taskActions;
    }

    public void setTaskActions(Set<TaskAction> taskActions) {
        this.taskActions = taskActions;
    }

    @Transient
    public List<TaskAction> getTaskActionList(){
        List<TaskAction> result = new ArrayList<>(getTaskActions());
        Collections.sort(result);
        return result;
    }

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "businessDefine", orphanRemoval = true)
    public Set<CreateRole> getCreateRoles() {
        return createRoles;
    }

    public void setCreateRoles(Set<CreateRole> createRoles) {
        this.createRoles = createRoles;
    }

    @ManyToOne(fetch = FetchType.LAZY,cascade = CascadeType.ALL,optional = false)
    @JoinColumn(name = "CATEGORY_ID", nullable = false)
    public BusinessCategory getBusinessCategory() {
        return businessCategory;
    }

    public void setBusinessCategory(BusinessCategory businessCategory) {
        this.businessCategory = businessCategory;
    }

    @OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL, mappedBy = "businessDefine", orphanRemoval = true )
    public Set<FieldDefine> getFields() {
        return fields;
    }

    public void setFields(Set<FieldDefine> fields) {
        this.fields = fields;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BusinessDefine that = (BusinessDefine) o;

        if (id != null ? !id.equals(that.id) : that.id != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id != null ? id.hashCode() : 0;
        return result;
    }

    @Override
    public int compareTo(BusinessDefine o) {
            return Integer.valueOf(priority).compareTo(o.getPriority());
    }
}
