package cc.coopersoft.archives.business.model;

public class OperationAction {

    private String id;
    private String explain;

    public OperationAction() {
    }

    public OperationAction(String id, String explain) {
        this.id = id;
        this.explain = explain;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getExplain() {
        return explain;
    }

    public void setExplain(String explain) {
        this.explain = explain;
    }
}
