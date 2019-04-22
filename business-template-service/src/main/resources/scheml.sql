SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS CREATE_ROLE;
DROP TABLE IF EXISTS FIELD_DEFINE;
DROP TABLE IF EXISTS FIELD_GROUP;
DROP TABLE IF EXISTS TASK_ACTION;
DROP TABLE IF EXISTS BUSINESS_DEFINE;
DROP TABLE IF EXISTS BUSINESS_CATEGORY;




/* Create Tables */

CREATE TABLE BUSINESS_CATEGORY
(
  CATEGORY_ID varchar(32) NOT NULL,
  NAME varchar(50) NOT NULL,
  PRIORITY int NOT NULL,
  PRIMARY KEY (CATEGORY_ID)
) ENGINE = InnoDB DEFAULT CHARACTER SET utf8;


CREATE TABLE BUSINESS_DEFINE
(
  DEFINE_ID varchar(32) NOT NULL,
  NAME varchar(64) NOT NULL,
  WF_NAME varchar(32),
  START_PAGE varchar(256),
  CATEGORY_ID varchar(32) NOT NULL,
  MEMO varchar(512),
  -- 乐观锁
  _VERSION int,
  ROLE_PREFIX varchar(16),
  -- 动态
  DESCRIPTION varchar(512),
  PRIORITY int NOT NULL,
  ENABLE boolean NOT NULL,
  WF_VER int NOT NULL,
  CREATE_TITLE varchar(8),
  CREATE_COMPLETE_PAGE varchar(256),
  DEFAULT_ROOM varchar(4),
  DEFAULT_RACK varchar(8),
  DEFAULT_SECRECY_LEVEL varchar(8),
  SUMMARY varchar(512),
  CONSTRAINT PK_DGBIZ PRIMARY KEY (DEFINE_ID)
) ENGINE = InnoDB DEFAULT CHARACTER SET utf8;


CREATE TABLE CREATE_ROLE
(
  ROLE varchar(32) NOT NULL,
  DEFINE_ID varchar(32) NOT NULL,
  ID int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (ID)
) ENGINE = InnoDB DEFAULT CHARACTER SET utf8;


CREATE TABLE FIELD_DEFINE
(
  VALUE_ID bigint NOT NULL AUTO_INCREMENT,
  GROUP_ID varchar(32) NOT NULL,
  _ORDINAL int NOT NULL,
  _OPTION text,
  PRIMARY KEY (VALUE_ID)
) ENGINE = InnoDB DEFAULT CHARACTER SET utf8;


CREATE TABLE FIELD_GROUP
(
  GROUP_ID varchar(32) NOT NULL,
  NAME varchar(16) NOT NULL,
  TYPE varchar(32) NOT NULL,
  EDITOR_ORDINAL int NOT NULL,
  DISPLAY_ORDINAL int NOT NULL,
  DEFINE_ID varchar(32) NOT NULL,
  VIEW_ROW int NOT NULL,
  _OPTION text,
  PRIMARY KEY (GROUP_ID)
) ENGINE = InnoDB DEFAULT CHARACTER SET utf8;


CREATE TABLE TASK_ACTION
(
  DEFINE_ID varchar(32) NOT NULL,
  TASK_NAME varchar(128),
  TYPE varchar(32) NOT NULL,
  REG_NAME varchar(32) NOT NULL,
  PRIORITY int NOT NULL,
  ACTION_ID bigint NOT NULL,
  _POSITION varchar(8) NOT NULL,
  PRIMARY KEY (ACTION_ID)
) ENGINE = InnoDB DEFAULT CHARACTER SET utf8;



/* Create Foreign Keys */

ALTER TABLE BUSINESS_DEFINE
  ADD FOREIGN KEY (CATEGORY_ID)
REFERENCES BUSINESS_CATEGORY (CATEGORY_ID)
ON UPDATE RESTRICT
ON DELETE RESTRICT
;


ALTER TABLE CREATE_ROLE
  ADD FOREIGN KEY (DEFINE_ID)
REFERENCES BUSINESS_DEFINE (DEFINE_ID)
ON UPDATE RESTRICT
ON DELETE RESTRICT
;


ALTER TABLE FIELD_GROUP
  ADD FOREIGN KEY (DEFINE_ID)
REFERENCES BUSINESS_DEFINE (DEFINE_ID)
ON UPDATE RESTRICT
ON DELETE RESTRICT
;


ALTER TABLE TASK_ACTION
  ADD FOREIGN KEY (DEFINE_ID)
REFERENCES BUSINESS_DEFINE (DEFINE_ID)
ON UPDATE RESTRICT
ON DELETE RESTRICT
;


ALTER TABLE FIELD_DEFINE
  ADD FOREIGN KEY (GROUP_ID)
REFERENCES FIELD_GROUP (GROUP_ID)
ON UPDATE RESTRICT
ON DELETE RESTRICT
;






INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('I','测试业务',1);
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER) VALUES('I1','测试业务1','I',1,1,true,1);
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER)
VALUES('I2','测试业务2','I',1,1,true,1);
INSERT INTO CREATE_ROLE(ROLE, DEFINE_ID) VALUES ('USER','I1');
INSERT INTO CREATE_ROLE(ROLE, DEFINE_ID) VALUES ('USER','I2');

INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW)
VALUES ('I2-1','测试字符','SIMPLE',1,1,'I2',0);

INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION)
VALUES ('I2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"search":true,"minLength":3, "maxLength":5 ,"label":"测试字符串","controlType":"textbox","editPattern":"[3-8]{1}[0-9]{3}"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION)
VALUES ('I2-1',1,'{"style": "col-lg-4 col-md-12","nullable":false,"search":false,"label":"测试金额","controlType":"textbox","type":"number","min":10, "max":100 ,"autocomplete":"off"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL,_OPTION)
VALUES ('I2-1',2,'{"style": "col-lg-4 col-md-12","nullable":false,"search":true,"label":"测试选择","controlType":"dropdown","option":["第一个","第二个"]}');


INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION)
VALUES('I2-3','测试单位','CONSTRUCT_CORP',2,2,'I2',1,'{"nullable":false}');


INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW)
VALUES('I2-4','测试日期','SIMPLE',3,3,'I2',2);

INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION)
VALUES ('I2-4',0,'{"style": "col-lg-4 col-md-12","nullable":false,"search":false,"label":"测试日期","controlType":"datepicker"}');

INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION)
VALUES ('I2-4',1,'{"style": "col-lg-4 col-md-12","nullable":false,"search":false,"label":"测试时间","istime":true,"controlType":"datepicker"}');

INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION)
VALUES('I2-5','测试多行输入','TEXT_AREA',4,4,'I2',4,'{"search":false,"nullable":true,"rows":4}');

INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL)
VALUES ('I2-5',0);

