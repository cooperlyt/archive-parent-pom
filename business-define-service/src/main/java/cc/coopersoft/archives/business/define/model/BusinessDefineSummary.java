package cc.coopersoft.archives.business.define.model;

public class BusinessDefineSummary {

    public BusinessDefineSummary() {
    }

    public BusinessDefineSummary(String id, String name, String category, int priority, int categoryPriority) {
        this.id = id;
        this.name = name;
        this.category = category;
        this.priority = priority;
        this.categoryPriority = categoryPriority;
    }

    private String id;

    private String name;

    private String category;

    private int priority;

    private int categoryPriority;

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

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getPriority() {
        return priority;
    }

    public void setPriority(int priority) {
        this.priority = priority;
    }

    public int getCategoryPriority() {
        return categoryPriority;
    }

    public void setCategoryPriority(int categoryPriority) {
        this.categoryPriority = categoryPriority;
    }
}
