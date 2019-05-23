

export const BusinessStatus = {
    PREPARE : '准备',
    REJECT : '驳回',
    RUNNING: '运行中',
    CREATED : '建立',
    COMPLETE : '完成',
    RECORDED : '归档',
    ABORT : '中止'
}

export const OperationType = {
    COMMIT : '提交',
    CREATE : '创建',
    EDITOR : '修改',
    ABORT : '中止',
    RECORD: '归档',
    ARCHIVE: '上架',
    REJECT: "驳回"
}

export const CORP_TYPE = {
    CONSTRUCTION:'建设单位',
    BUILD:'施工单位',
    PROSPECTING:'勘察单位',
    DESIGN:'设计单位',
    SUPERVISION:'监理单位'
}

export const SecrecyLevel = {
    TopSecret: '绝密',
    Classified: '机密',
    Secret: '秘密',
    None: '公开'
}

export const CorpIdType = {
    COMPANY_CODE: '营业执照',
    CORP_CODE: '机构代码证',
    RELIGIOUS_GROUP: '宗教组织',
}

export const IdentityType = {
    MASTER_ID: '身份证',
    SOLDIER_CARD: '士兵证',
    OFFICER_CARD: '军官证',
    PASSPORT: '护照',
    TW_ID: '台湾通行证',
    GA_ID: '港澳通行证',
    OTHER: '其它'
}

export const BoxSize = {
    "一号盒": 1,
    "二号盒": 1.5,
    "三号盒": 2,
    "四号盒": 2.5,
}