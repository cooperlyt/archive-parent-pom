package cc.coopersoft.business.model;

import cc.coopersoft.archives.data.SecrecyLevel;

public class DefaultRecord {

    private String id;
    private String room;
    private String rack;
    private Integer secrecyLen;
    private SecrecyLevel secrecyLevel;

    public DefaultRecord() {
    }

    public DefaultRecord(String id, String defaultRoom, String defaultRack, Integer defaultSecrecyLen, SecrecyLevel defaultSecrecyLevel) {
        this.id = id;
        this.room = defaultRoom;
        this.rack = defaultRack;
        this.secrecyLen = defaultSecrecyLen;
        this.secrecyLevel = defaultSecrecyLevel;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }


    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public String getRack() {
        return rack;
    }

    public void setRack(String rack) {
        this.rack = rack;
    }

    public Integer getSecrecyLen() {
        return secrecyLen;
    }

    public void setSecrecyLen(Integer secrecyLen) {
        this.secrecyLen = secrecyLen;
    }

    public SecrecyLevel getSecrecyLevel() {
        return secrecyLevel;
    }

    public void setSecrecyLevel(SecrecyLevel secrecyLevel) {
        this.secrecyLevel = secrecyLevel;
    }
}
