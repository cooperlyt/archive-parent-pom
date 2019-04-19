package cc.coopersoft.construct.corp.model;

import javax.persistence.Entity;

public class Person implements java.io.Serializable {

    public enum IdentityType{
        MASTER_ID,
        SOLDIER_CARD,
        OFFICER_CARD,
        PASSPORT,
        TW_ID,
        GA_ID,
        OTHER
    }
}
