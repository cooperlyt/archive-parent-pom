-- BUSINESS_CATEGORY
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('A','综合类',1);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('B','城市勘测类',2);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('C','城市规划类',3);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('D','城市建设管理类',4);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('E','市政工程类',5);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('F','公用设施类',6);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('G','交通运输工程类',7);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('H','工业建筑类',8);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('I','民用建筑类',9);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('J','名胜古迹、园林绿化类',10);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('K','环境保护类',11);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('L','城市建设科学研究类',12);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('M','县（村）镇建设类',13);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('N','人防、军事程类',14);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('O','水利、防灾类',15);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('P','工程设计类',16);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('Q','地下管线类',17);
INSERT INTO BUSINESS_CATEGORY(CATEGORY_ID, NAME, PRIORITY) VALUES ('R','声像类',18);

-- BUSINESS_DEFINE A,综合类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('A1','政策、法规','A',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('A2','会议','A',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('A3','计划、统计/计划','A',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('A4','计划、统计/统计','A',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('A5','外事','A',1,5,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('A6','城建档案工作','A',1,6,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- A1 政策、法规
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('A1-1','卷页数','SIMPLE',1,1,'A1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('A1-2','说明','TEXT_AREA',4,4,'A1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('A1-2',0);

-- A2 会议
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('A2-1','卷页数','SIMPLE',1,1,'A2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('A2-2','说明','TEXT_AREA',4,4,'A2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('A2-2',0);

-- A3 计划、统计-计划
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('A3-1','卷页数','SIMPLE',1,1,'A3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('A3-2','说明','TEXT_AREA',4,4,'A3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('A3-2',0);

-- A4 计划、统计-统计

INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('A4-1','卷页数','SIMPLE',1,1,'A4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('A4-2','说明','TEXT_AREA',4,4,'A4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('A4-2',0);

-- A5 计划、统计-统计
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('A5-1','卷页数','SIMPLE',1,1,'A5',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A5-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A5-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A5-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('A5-2','说明','TEXT_AREA',4,4,'A5',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('A5-2',0);

-- A6 计划、统计-统计
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('A6-1','卷页数','SIMPLE',1,1,'A6',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A6-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A6-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('A6-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('A6-2','说明','TEXT_AREA',4,4,'A6',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('A6-2',0);

-- BUSINESS_DEFINE B,城市勘测类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('B1','工程地质','B',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('B2','水文地质','B',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('B3','控制测量','B',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('B4','地形测量','B',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('B5','摄影测量','B',1,5,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('B6','地图','B',1,6,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');

-- B1 工程地质
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('B1-1','卷页数','SIMPLE',1,1,'B1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('B1-2','说明','TEXT_AREA',4,4,'B1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('B1-2',0);
-- B2 水文地质
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('B2-1','卷页数','SIMPLE',1,1,'B2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('B2-2','说明','TEXT_AREA',4,4,'B2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('B2-2',0);
-- B3 控制测量
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('B3-1','卷页数','SIMPLE',1,1,'B3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('B3-2','说明','TEXT_AREA',4,4,'B3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('B3-2',0);
-- B4 地形测量
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('B4-1','卷页数','SIMPLE',1,1,'B4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('B4-2','说明','TEXT_AREA',4,4,'B4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('B4-2',0);
-- B5 摄影测量
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('B5-1','卷页数','SIMPLE',1,1,'B5',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B5-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B5-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B5-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('B5-2','说明','TEXT_AREA',4,4,'B5',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('B5-2',0);
-- B6 地图
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('B6-1','卷页数','SIMPLE',1,1,'B6',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B6-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B6-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('B6-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('B6-2','说明','TEXT_AREA',4,4,'B6',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('B6-2',0);

-- BUSINESS_DEFINE C,城市规划类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('C1','国土规划','C',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('C2','总体规划','C',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('C3','分区规划','C',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('C4','详细规划','C',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('C5','县镇规划','C',1,5,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('C6','规划基础材料','C',1,6,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- C1 国土规划
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('C1-1','卷页数','SIMPLE',1,1,'C1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('C1-2','说明','TEXT_AREA',4,4,'C1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('C1-2',0);
-- C2 总体规划
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('C2-1','卷页数','SIMPLE',1,1,'C2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('C2-2','说明','TEXT_AREA',4,4,'C2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('C2-2',0);
-- C3 分区规划
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('C3-1','卷页数','SIMPLE',1,1,'C3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('C3-2','说明','TEXT_AREA',4,4,'C3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('C3-2',0);
-- C4 详细规划
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('C4-1','卷页数','SIMPLE',1,1,'C4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('C4-2','说明','TEXT_AREA',4,4,'C4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('C4-2',0);
-- C5 县镇规划
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('C5-1','卷页数','SIMPLE',1,1,'C5',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C5-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C5-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C5-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('C5-2','说明','TEXT_AREA',4,4,'C5',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('C5-2',0);
-- C6 规划基础材料
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('C6-1','卷页数','SIMPLE',1,1,'C6',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C6-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C6-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('C6-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('C6-2','说明','TEXT_AREA',4,4,'C6',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('C6-2',0);


-- BUSINESS_DEFINE D,城市规划类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('D1','土地管理/规划许可证','D',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('D2','土地管理/施工许可证','D',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('D3','建设用地规划管理/规划许可证','D',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('D4','建设用地规划管理/施工许可证','D',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('D5','建设用地规划管理/规划验收许可证','D',1,5,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('D6','建设用地规划管理/建设用地选址许可证','D',1,6,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('D7','建设用地规划管理/个人规划许可证','D',1,7,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('D8','建筑工程管理','D',1,8,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('D9','房地产管理','D',1,9,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('D10','地名管理','D',1,10,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');

-- D1 规划基础材料 土地管理/规划许可证
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('D1-1','卷页数','SIMPLE',1,1,'D1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('D1-2','说明','TEXT_AREA',4,4,'D1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('D1-2',0);
-- D2 规划基础材料 土地管理/施工许可证
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('D2-1','卷页数','SIMPLE',1,1,'D2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('D2-2','说明','TEXT_AREA',4,4,'D2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('D2-2',0);
-- D3 建设用地规划管理/规划许可证
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('D3-1','卷页数','SIMPLE',1,1,'D3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('D3-2','说明','TEXT_AREA',4,4,'D3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('D3-2',0);
-- D4
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('D4-1','卷页数','SIMPLE',1,1,'D4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('D4-2','说明','TEXT_AREA',4,4,'D4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('D4-2',0);
-- D5
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('D5-1','卷页数','SIMPLE',1,1,'D5',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D5-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D5-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D5-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('D5-2','说明','TEXT_AREA',4,4,'D5',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('D5-2',0);
-- D6
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('D6-1','卷页数','SIMPLE',1,1,'D6',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D6-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D6-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D6-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('D6-2','说明','TEXT_AREA',4,4,'D6',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('D6-2',0);
-- D7
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('D7-1','卷页数','SIMPLE',1,1,'D7',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D7-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D7-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D7-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('D7-2','说明','TEXT_AREA',4,4,'D7',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('D7-2',0);
-- D8
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('D8-1','卷页数','SIMPLE',1,1,'D8',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D8-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D8-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D8-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('D8-2','说明','TEXT_AREA',4,4,'D8',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('D8-2',0);
-- D9
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('D9-1','卷页数','SIMPLE',1,1,'D9',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D9-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D9-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D9-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('D9-2','说明','TEXT_AREA',4,4,'D9',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('D9-2',0);
-- D10
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('D10-1','卷页数','SIMPLE',1,1,'D10',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D10-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D10-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('D10-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('D10-2','说明','TEXT_AREA',4,4,'D10',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('D10-2',0);

-- BUSINESS_DEFINE E 市政工程类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('E1','道路、广场','E',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('E2','桥梁','E',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('E3','涵洞','E',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('E4','隧道','E',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('E5','排水','E',1,5,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('E6','环境卫生','E',1,6,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- E1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('E1-1','卷页数','SIMPLE',1,1,'E1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('E1-2','说明','TEXT_AREA',4,4,'E1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('E1-2',0);
-- E2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('E2-1','卷页数','SIMPLE',1,1,'E2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('E2-2','说明','TEXT_AREA',4,4,'E2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('E2-2',0);
-- E3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('E3-1','卷页数','SIMPLE',1,1,'E3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('E3-2','说明','TEXT_AREA',4,4,'E3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('E3-2',0);
-- E4
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('E4-1','卷页数','SIMPLE',1,1,'E4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('E4-2','说明','TEXT_AREA',4,4,'E4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('E4-2',0);
-- E5
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('E5-1','卷页数','SIMPLE',1,1,'E5',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E5-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E5-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E5-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('E5-2','说明','TEXT_AREA',4,4,'E5',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('E5-2',0);
-- E6
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('E6-1','卷页数','SIMPLE',1,1,'E6',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E6-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E6-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('E6-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('E6-2','说明','TEXT_AREA',4,4,'E6',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('E6-2',0);


-- BUSINESS_DEFINE F,公用设施类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('F1','给水','F',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('F2','排水','F',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('F3','供热','F',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('F4','电力','F',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('F5','电信','F',1,5,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('F6','燃气','F',1,6,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('F7','人防','F',1,7,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('F8','消防','F',1,8,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('F9','地铁','F',1,9,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('F10','工业','F',1,10,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- F1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('F1-1','卷页数','SIMPLE',1,1,'F1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('F1-2','说明','TEXT_AREA',4,4,'F1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('F1-2',0);
-- F2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('F2-1','卷页数','SIMPLE',1,1,'F2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('F2-2','说明','TEXT_AREA',4,4,'F2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('F2-2',0);
-- F3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('F3-1','卷页数','SIMPLE',1,1,'F3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('F3-2','说明','TEXT_AREA',4,4,'F3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('F3-2',0);
-- F4
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('F4-1','卷页数','SIMPLE',1,1,'F4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('F4-2','说明','TEXT_AREA',4,4,'F4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('F4-2',0);
-- F5
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('F5-1','卷页数','SIMPLE',1,1,'F5',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F5-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F5-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F5-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('F5-2','说明','TEXT_AREA',4,4,'F5',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('F5-2',0);
-- F6
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('F6-1','卷页数','SIMPLE',1,1,'F6',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F6-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F6-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F6-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('F6-2','说明','TEXT_AREA',4,4,'F6',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('F6-2',0);
-- F7
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('F7-1','卷页数','SIMPLE',1,1,'F7',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F7-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F7-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F7-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('F7-2','说明','TEXT_AREA',4,4,'F7',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('F7-2',0);
-- F8
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('F8-1','卷页数','SIMPLE',1,1,'F8',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F8-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F8-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F8-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('F8-2','说明','TEXT_AREA',4,4,'F8',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('F8-2',0);
-- F9
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('F9-1','卷页数','SIMPLE',1,1,'F9',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F9-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F9-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F9-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('F9-2','说明','TEXT_AREA',4,4,'F9',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('F9-2',0);
-- F10
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('F10-1','卷页数','SIMPLE',1,1,'F10',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F10-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F10-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('F10-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('F10-2','说明','TEXT_AREA',4,4,'F10',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('F10-2',0);

-- BUSINESS_DEFINE  G 交通运输工程类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('G1','铁路（高铁）','G',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('G2','公路','G',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('G3','水运','G',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('G4','航运','G',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- G1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('G1-1','卷页数','SIMPLE',1,1,'G1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('G1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('G1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('G1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('G1-2','说明','TEXT_AREA',4,4,'G1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('G1-2',0);
-- G2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('G2-1','卷页数','SIMPLE',1,1,'G2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('G2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('G2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('G2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('G2-2','说明','TEXT_AREA',4,4,'G2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('G2-2',0);

-- G3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('G3-1','卷页数','SIMPLE',1,1,'G3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('G3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('G3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('G3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('G3-2','说明','TEXT_AREA',4,4,'G3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('G3-2',0);

-- G4
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('G4-1','卷页数','SIMPLE',1,1,'G4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('G4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('G4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('G4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('G4-2','说明','TEXT_AREA',4,4,'G4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('G4-2',0);

-- BUSINESS_DEFINE H 工业建筑类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('H1','动力','H',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('H2','矿业','H',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('H3','冶金','H',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('H4','机械','H',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('H5','电子','H',1,5,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('H6','石油','H',1,6,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('H7','化工','H',1,7,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('H8','轻工','H',1,8,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('H9','纺织','H',1,9,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('H10','建材','H',1,10,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('H11','医药','H',1,11,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- H1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('H1-1','卷页数','SIMPLE',1,1,'H1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('H1-2','说明','TEXT_AREA',4,4,'H1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('H1-2',0);
-- H2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('H2-1','卷页数','SIMPLE',1,1,'H2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('H2-2','说明','TEXT_AREA',4,4,'H2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('H2-2',0);
-- H3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('H3-1','卷页数','SIMPLE',1,1,'H3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('H3-2','说明','TEXT_AREA',4,4,'H3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('H3-2',0);
-- H4
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('H4-1','卷页数','SIMPLE',1,1,'H4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('H4-2','说明','TEXT_AREA',4,4,'H4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('H4-2',0);
-- H5
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('H5-1','卷页数','SIMPLE',1,1,'H5',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H5-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H5-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H5-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('H5-2','说明','TEXT_AREA',4,4,'H5',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('H5-2',0);
-- H6
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('H6-1','卷页数','SIMPLE',1,1,'H6',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H6-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H6-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H6-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('H6-2','说明','TEXT_AREA',4,4,'H6',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('H6-2',0);
-- H7
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('H7-1','卷页数','SIMPLE',1,1,'H7',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H7-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H7-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H7-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('H7-2','说明','TEXT_AREA',4,4,'H7',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('H7-2',0);
-- H8
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('H8-1','卷页数','SIMPLE',1,1,'H8',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H8-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H8-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H8-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('H8-2','说明','TEXT_AREA',4,4,'H8',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('H8-2',0);
-- H9
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('H9-1','卷页数','SIMPLE',1,1,'H9',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H9-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H9-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H9-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('H9-2','说明','TEXT_AREA',4,4,'H9',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('H9-2',0);
-- H10
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('H10-1','卷页数','SIMPLE',1,1,'H10',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H10-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H10-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H10-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('H10-2','说明','TEXT_AREA',4,4,'H10',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('H10-2',0);
-- H11
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('H11-1','卷页数','SIMPLE',1,1,'H11',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H11-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H11-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('H11-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('H11-2','说明','TEXT_AREA',4,4,'H11',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('H11-2',0);

-- BUSINESS_DEFINE I 民用建筑类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I1','住宅/住宅','I',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I2','住宅/综合','I',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I3','办公用房/党政办公用房','I',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I4','办公用房/机关团体办公用房','I',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I5','办公用房/综合楼','I',1,5,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I6','文化/文化宫、影剧院','I',1,6,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I7','文化/图书馆','I',1,7,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I8','文化/新华书店','I',1,8,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I9','文化/活动中心','I',1,9,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I10','文化/邮政','I',1,10,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I11','教育/高校','I',1,11,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I12','教育/高中','I',1,12,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I13','教育/初中','I',1,13,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I14','教育/小学','I',1,14,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I15','教育/幼儿园','I',1,15,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I16','卫生/医院','I',1,16,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I17','卫生/敬老院','I',1,17,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I18','卫生/殡仪馆','I',1,18,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I19','体育/体育馆','I',1,19,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I20','体育/体育场（中心）','I',1,20,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I21','商业、金融、保险/商业、百货宾馆','I',1,21,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I22','商业、金融、保险/金融','I',1,22,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I23','商业、金融、保险/保险','I',1,23,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I24','其它/备案档案','I',1,24,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I25','其它/监理档案','I',1,25,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I26','其它/粮库','I',1,26,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('I27','其它/冷库','I',1,27,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');

-- I1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I1-1','卷页数','SIMPLE',1,1,'I1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I1-2','说明','TEXT_AREA',4,4,'I1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I1-2',0);
-- I2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I2-1','卷页数','SIMPLE',1,1,'I2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I2-2','说明','TEXT_AREA',4,4,'I2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I2-2',0);
-- I3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I3-1','卷页数','SIMPLE',1,1,'I3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I3-2','说明','TEXT_AREA',4,4,'I3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I3-2',0);
-- I4
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I4-1','卷页数','SIMPLE',1,1,'I4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I4-2','说明','TEXT_AREA',4,4,'I4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I4-2',0);
-- I5
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I5-1','卷页数','SIMPLE',1,1,'I5',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I5-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I5-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I5-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I5-2','说明','TEXT_AREA',4,4,'I5',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I5-2',0);
-- I6
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I6-1','卷页数','SIMPLE',1,1,'I6',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I6-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I6-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I6-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I6-2','说明','TEXT_AREA',4,4,'I6',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I6-2',0);
-- I7
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I7-1','卷页数','SIMPLE',1,1,'I7',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I7-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I7-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I7-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I7-2','说明','TEXT_AREA',4,4,'I7',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I7-2',0);
-- I8
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I8-1','卷页数','SIMPLE',1,1,'I8',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I8-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I8-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I8-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I8-2','说明','TEXT_AREA',4,4,'I8',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I8-2',0);
-- I9
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I9-1','卷页数','SIMPLE',1,1,'I9',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I9-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I9-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I9-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I9-2','说明','TEXT_AREA',4,4,'I9',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I9-2',0);
-- I10
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I10-1','卷页数','SIMPLE',1,1,'I10',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I10-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I10-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I10-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I10-2','说明','TEXT_AREA',4,4,'I10',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I10-2',0);
-- I11
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I11-1','卷页数','SIMPLE',1,1,'I11',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I11-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I11-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I11-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I11-2','说明','TEXT_AREA',4,4,'I11',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I11-2',0);
-- I12
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I12-1','卷页数','SIMPLE',1,1,'I12',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I12-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I12-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I12-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I12-2','说明','TEXT_AREA',4,4,'I12',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I12-2',0);
-- I13
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I13-1','卷页数','SIMPLE',1,1,'I13',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I13-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I13-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I13-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I13-2','说明','TEXT_AREA',4,4,'I13',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I13-2',0);
-- I14
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I14-1','卷页数','SIMPLE',1,1,'I14',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I14-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I14-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I14-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I14-2','说明','TEXT_AREA',4,4,'I14',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I14-2',0);
-- I15
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I15-1','卷页数','SIMPLE',1,1,'I15',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I15-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I15-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I15-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I15-2','说明','TEXT_AREA',4,4,'I15',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I15-2',0);
-- I16
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I16-1','卷页数','SIMPLE',1,1,'I16',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I16-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I16-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I16-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I16-2','说明','TEXT_AREA',4,4,'I16',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I16-2',0);
-- I17
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I17-1','卷页数','SIMPLE',1,1,'I17',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I17-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I17-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I17-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I17-2','说明','TEXT_AREA',4,4,'I17',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I17-2',0);
-- I18
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I18-1','卷页数','SIMPLE',1,1,'I18',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I18-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I18-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I18-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I18-2','说明','TEXT_AREA',4,4,'I18',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I18-2',0);
-- I19
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I19-1','卷页数','SIMPLE',1,1,'I19',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I19-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I19-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I19-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I19-2','说明','TEXT_AREA',4,4,'I19',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I19-2',0);
-- 20
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I20-1','卷页数','SIMPLE',1,1,'I20',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I20-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I20-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I20-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I20-2','说明','TEXT_AREA',4,4,'I20',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I20-2',0);
-- I21
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I21-1','卷页数','SIMPLE',1,1,'I21',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I21-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I21-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I21-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I21-2','说明','TEXT_AREA',4,4,'I21',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I21-2',0);
-- I22
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I22-1','卷页数','SIMPLE',1,1,'I22',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I22-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I22-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I22-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I22-2','说明','TEXT_AREA',4,4,'I22',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I22-2',0);
-- I23
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I23-1','卷页数','SIMPLE',1,1,'I23',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I23-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I23-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I23-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I23-2','说明','TEXT_AREA',4,4,'I23',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I23-2',0);
-- I24
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I24-1','卷页数','SIMPLE',1,1,'I24',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I24-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I24-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I24-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I24-2','说明','TEXT_AREA',4,4,'I24',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I24-2',0);
-- I25
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I25-1','卷页数','SIMPLE',1,1,'I25',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I25-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I25-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I25-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I25-2','说明','TEXT_AREA',4,4,'I25',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I25-2',0);
-- I26
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I26-1','卷页数','SIMPLE',1,1,'I26',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I26-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I26-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I26-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I26-2','说明','TEXT_AREA',4,4,'I26',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I26-2',0);
-- I27
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('I27-1','卷页数','SIMPLE',1,1,'I27',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I27-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I27-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('I27-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('I27-2','说明','TEXT_AREA',4,4,'I27',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('I27-2',0);

-- BUSINESS_DEFINE J 名胜古迹、园林绿化类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('J1','公园','J',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('J2','绿地、苗圃','J',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('J3','名木古树','J',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('J4','纪念性建筑','J',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('J5','名人故居','J',1,5,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('J6','名胜古迹、古建筑','J',1,6,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('J7','城市雕塑','J',1,7,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- J1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('J1-1','卷页数','SIMPLE',1,1,'J1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('J1-2','说明','TEXT_AREA',4,4,'J1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('J1-2',0);
-- J2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('J2-1','卷页数','SIMPLE',1,1,'J2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('J2-2','说明','TEXT_AREA',4,4,'J2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('J2-2',0);
-- J3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('J3-1','卷页数','SIMPLE',1,1,'J3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('J3-2','说明','TEXT_AREA',4,4,'J3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('J3-2',0);
-- J4
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('J4-1','卷页数','SIMPLE',1,1,'J4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('J4-2','说明','TEXT_AREA',4,4,'J4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('J4-2',0);
-- J5
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('J5-1','卷页数','SIMPLE',1,1,'J5',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J5-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J5-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J5-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('J5-2','说明','TEXT_AREA',4,4,'J5',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('J5-2',0);
-- J6
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('J6-1','卷页数','SIMPLE',1,1,'J6',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J6-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J6-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J6-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('J6-2','说明','TEXT_AREA',4,4,'J6',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('J6-2',0);
-- J7
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('J7-1','卷页数','SIMPLE',1,1,'J7',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J7-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J7-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('J7-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('J7-2','说明','TEXT_AREA',4,4,'J7',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('J7-2',0);
-- BUSINESS_DEFINE K 环境保护类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('K1','环境管理','K',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('K2','环境监测','K',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('K3','环境治理','K',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('K4','自然保护','K',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- K1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('K1-1','卷页数','SIMPLE',1,1,'K1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('K1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('K1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('K1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('K1-2','说明','TEXT_AREA',4,4,'K1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('K1-2',0);
-- K2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('K2-1','卷页数','SIMPLE',1,1,'K2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('K2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('K2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('K2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('K2-2','说明','TEXT_AREA',4,4,'K2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('K2-2',0);
-- K3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('K3-1','卷页数','SIMPLE',1,1,'K3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('K3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('K3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('K3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('K3-2','说明','TEXT_AREA',4,4,'K3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('K3-2',0);
-- K4
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('K4-1','卷页数','SIMPLE',1,1,'K4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('K4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('K4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('K4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('K4-2','说明','TEXT_AREA',4,4,'K4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('K4-2',0);
-- BUSINESS_DEFINE L 城市建设科学研究类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('L1','城市规划设计','L',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('L2','城市建设','L',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('L3','城市建筑科学技术','L',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('L4','城市规范化管理','L',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');

-- L1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('L1-1','卷页数','SIMPLE',1,1,'L1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('L1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('L1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('L1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('L1-2','说明','TEXT_AREA',4,4,'L1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('L1-2',0);
-- L2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('L2-1','卷页数','SIMPLE',1,1,'L2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('L2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('L2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('L2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('L2-2','说明','TEXT_AREA',4,4,'L2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('L2-2',0);
-- L3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('L3-1','卷页数','SIMPLE',1,1,'L3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('L3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('L3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('L3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('L3-2','说明','TEXT_AREA',4,4,'L3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('L3-2',0);
-- L4
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('L4-1','卷页数','SIMPLE',1,1,'L4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('L4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('L4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('L4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('L4-2','说明','TEXT_AREA',4,4,'L4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('L4-2',0);

-- BUSINESS_DEFINE M 县（村）镇建设类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('M1','县区/规划','M',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('M2','县区/住宅','M',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('M3','乡镇/规划','M',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('M4','乡镇/住宅（综合）','M',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('M5','村庄/规划','M',1,5,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('M6','村庄/住宅（综合）','M',1,6,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- M1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('M1-1','卷页数','SIMPLE',1,1,'M1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('M1-2','说明','TEXT_AREA',4,4,'M1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('M1-2',0);
-- M2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('M2-1','卷页数','SIMPLE',1,1,'M2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('M2-2','说明','TEXT_AREA',4,4,'M2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('M2-2',0);
-- M3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('M3-1','卷页数','SIMPLE',1,1,'M3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('M3-2','说明','TEXT_AREA',4,4,'M3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('M3-2',0);
-- M4
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('M4-1','卷页数','SIMPLE',1,1,'M4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('M4-2','说明','TEXT_AREA',4,4,'M4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('M4-2',0);
-- M5
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('M5-1','卷页数','SIMPLE',1,1,'M5',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M5-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M5-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M5-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('M5-2','说明','TEXT_AREA',4,4,'M5',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('M5-2',0);
-- M6
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('M6-1','卷页数','SIMPLE',1,1,'M6',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M6-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M6-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('M6-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('M6-2','说明','TEXT_AREA',4,4,'M6',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('M6-2',0);
-- BUSINESS_DEFINE N 人防、军事程类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('N1','人防工程','N',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('N2','消防工程','N',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('N3','军事工程','N',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- N1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('N1-1','卷页数','SIMPLE',1,1,'N1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('N1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('N1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('N1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('N1-2','说明','TEXT_AREA',4,4,'N1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('N1-2',0);
-- N2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('N2-1','卷页数','SIMPLE',1,1,'N2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('N2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('N2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('N2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('N2-2','说明','TEXT_AREA',4,4,'N2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('N2-2',0);
-- N3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('N3-1','卷页数','SIMPLE',1,1,'N3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('N3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('N3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('N3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('N3-2','说明','TEXT_AREA',4,4,'N3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('N3-2',0);
-- BUSINESS_DEFINE O 水利、防灾类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('O1','水利工程','O',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('O2','防洪、防汛工程','O',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('O3','防火、抗震工程','O',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- O1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('O1-1','卷页数','SIMPLE',1,1,'O1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('O1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('O1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('O1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('O1-2','说明','TEXT_AREA',4,4,'O1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('O1-2',0);
-- O2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('O2-1','卷页数','SIMPLE',1,1,'O2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('O2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('O2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('O2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('O2-2','说明','TEXT_AREA',4,4,'O2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('O2-2',0);
-- O3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('O3-1','卷页数','SIMPLE',1,1,'O3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('O3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('O3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('O3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('O3-2','说明','TEXT_AREA',4,4,'O3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('O3-2',0);

-- BUSINESS_DEFINE P 工程设计类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('P1','工业建筑设计','P',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('P2','名用建设设计','P',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('P3','市政工程设计','P',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('P4','军事工程设计','P',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('P5','交通运输工程设计','P',1,5,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('P6','环保环卫工程设计','P',1,6,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('P7','园林工程设计','P',1,7,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('P8','其它','P',1,8,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- P1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('P1-1','卷页数','SIMPLE',1,1,'P1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('P1-2','说明','TEXT_AREA',4,4,'P1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('P1-2',0);
-- P2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('P2-1','卷页数','SIMPLE',1,1,'P2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('P2-2','说明','TEXT_AREA',4,4,'P2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('P2-2',0);
-- P3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('P3-1','卷页数','SIMPLE',1,1,'P3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('P3-2','说明','TEXT_AREA',4,4,'P3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('P3-2',0);
-- P4
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('P4-1','卷页数','SIMPLE',1,1,'P4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('P4-2','说明','TEXT_AREA',4,4,'P4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('P4-2',0);
-- P5
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('P5-1','卷页数','SIMPLE',1,1,'P5',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P5-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P5-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P5-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('P5-2','说明','TEXT_AREA',4,4,'P5',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('P5-2',0);
-- P6
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('P6-1','卷页数','SIMPLE',1,1,'P6',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P6-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P6-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P6-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('P6-2','说明','TEXT_AREA',4,4,'P6',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('P6-2',0);
-- P7
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('P7-1','卷页数','SIMPLE',1,1,'P7',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P7-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P7-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P7-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('P7-2','说明','TEXT_AREA',4,4,'P7',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('P7-2',0);
-- P8
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('P8-1','卷页数','SIMPLE',1,1,'P8',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P8-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P8-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('P8-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('P8-2','说明','TEXT_AREA',4,4,'P8',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('P8-2',0);

-- BUSINESS_DEFINE Q 地下管线类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q1','地下管线综合图','Q',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q2','给水管线','Q',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q3','排水管线/污水','Q',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q4','排水管线/雨水','Q',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q5','排水管线/化粪池','Q',1,5,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q6','燃气管线','Q',1,6,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q7','供热管线','Q',1,7,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q8','供电管线/强电','Q',1,8,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q9','供电管线/弱电','Q',1,9,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q10','电信管线/电视','Q',1,10,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q11','电信管线/电话','Q',1,11,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q12','电信管线/网线','Q',1,12,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q13','电信管线/路灯','Q',1,13,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q14','军事管线','Q',1,14,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q15','工业输送管线','Q',1,15,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('Q16','高铁','Q',1,16,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- Q1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q1-1','卷页数','SIMPLE',1,1,'Q1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q1-2','说明','TEXT_AREA',4,4,'Q1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q1-2',0);
-- Q2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q2-1','卷页数','SIMPLE',1,1,'Q2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q2-2','说明','TEXT_AREA',4,4,'Q2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q2-2',0);
-- Q3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q3-1','卷页数','SIMPLE',1,1,'Q3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q3-2','说明','TEXT_AREA',4,4,'Q3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q3-2',0);
-- Q4
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q4-1','卷页数','SIMPLE',1,1,'Q4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q4-2','说明','TEXT_AREA',4,4,'Q4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q4-2',0);
-- Q5
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q5-1','卷页数','SIMPLE',1,1,'Q5',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q5-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q5-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q5-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q5-2','说明','TEXT_AREA',4,4,'Q5',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q5-2',0);
-- Q6
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q6-1','卷页数','SIMPLE',1,1,'Q6',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q6-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q6-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q6-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q6-2','说明','TEXT_AREA',4,4,'Q6',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q6-2',0);
-- Q7
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q7-1','卷页数','SIMPLE',1,1,'Q7',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q7-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q7-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q7-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q7-2','说明','TEXT_AREA',4,4,'Q7',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q7-2',0);
-- Q8
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q8-1','卷页数','SIMPLE',1,1,'Q8',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q8-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q8-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q8-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q8-2','说明','TEXT_AREA',4,4,'Q8',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q8-2',0);
-- Q9
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q9-1','卷页数','SIMPLE',1,1,'Q9',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q9-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q9-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q9-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q9-2','说明','TEXT_AREA',4,4,'Q9',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q9-2',0);
-- Q10
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q10-1','卷页数','SIMPLE',1,1,'Q10',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q10-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q10-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q10-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q10-2','说明','TEXT_AREA',4,4,'Q10',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q10-2',0);
-- Q11
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q11-1','卷页数','SIMPLE',1,1,'Q11',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q11-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q11-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q11-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q11-2','说明','TEXT_AREA',4,4,'Q11',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q11-2',0);
-- Q12
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q12-1','卷页数','SIMPLE',1,1,'Q12',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q12-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q12-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q12-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q12-2','说明','TEXT_AREA',4,4,'Q12',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q12-2',0);
-- Q13
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q13-1','卷页数','SIMPLE',1,1,'Q13',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q13-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q13-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q13-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q13-2','说明','TEXT_AREA',4,4,'Q13',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q13-2',0);
-- Q14
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q14-1','卷页数','SIMPLE',1,1,'Q14',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q14-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q14-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q14-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q14-2','说明','TEXT_AREA',4,4,'Q14',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q14-2',0);
-- Q15
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q15-1','卷页数','SIMPLE',1,1,'Q15',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q15-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q15-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q15-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q15-2','说明','TEXT_AREA',4,4,'Q15',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q15-2',0);
-- Q16
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('Q16-1','卷页数','SIMPLE',1,1,'Q16',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q16-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q16-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('Q16-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('Q16-2','说明','TEXT_AREA',4,4,'Q16',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('Q16-2',0);
-- BUSINESS_DEFINE R 声像类
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('R1','声像档案','R',1,1,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('R2','缩微片（卷）','R',1,2,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('R3','录象带','R',1,3,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('R4','录音带','R',1,4,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
INSERT INTO BUSINESS_DEFINE(DEFINE_ID, NAME, CATEGORY_ID, _VERSION, PRIORITY, ENABLE, WF_VER,SUMMARY,DEFAULT_ROOM, DEFAULT_RACK) VALUES('R5','光盘与磁盘','R',1,5,true,1,'送交单位:{.deliver} 案卷题名:{.projectName}','3','3-1');
-- R1
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('R1-1','卷页数','SIMPLE',1,1,'R1',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R1-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R1-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R1-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('R1-2','说明','TEXT_AREA',4,4,'R1',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('R1-2',0);
-- R2
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('R2-1','卷页数','SIMPLE',1,1,'R2',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R2-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R2-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R2-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('R2-2','说明','TEXT_AREA',4,4,'R2',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('R2-2',0);
-- R3
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('R3-1','卷页数','SIMPLE',1,1,'R3',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R3-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R3-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R3-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('R3-2','说明','TEXT_AREA',4,4,'R3',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('R3-2',0);
-- R4
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('R4-1','卷页数','SIMPLE',1,1,'R4',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R4-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R4-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R4-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('R4-2','说明','TEXT_AREA',4,4,'R4',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('R4-2',0);
-- R5
INSERT INTO FIELD_GROUP(GROUP_ID, NAME, TYPE, EDITOR_ORDINAL, DISPLAY_ORDINAL, DEFINE_ID,VIEW_ROW) VALUES ('R5-1','卷页数','SIMPLE',1,1,'R5',0);
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R5-1',0,'{"style": "col-lg-4 col-md-12","nullable":true,"key":false,"minLength":1, "maxLength":5 ,"label":"卷页数","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R5-1',1,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案编号","controlType":"textbox"}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL, _OPTION) VALUES ('R5-1',2,'{"style": "col-lg-4 col-md-12","nullable":true,"key":true,"minLength":1, "maxLength":10 ,"label":"原档案位置","controlType":"textbox"}');
INSERT INTO FIELD_GROUP(GROUP_ID,NAME,TYPE,EDITOR_ORDINAL,DISPLAY_ORDINAL,DEFINE_ID,VIEW_ROW,_OPTION) VALUES('R5-2','说明','TEXT_AREA',4,4,'R5',4,'{"key":false,"nullable":true,"rows":4}');
INSERT INTO FIELD_DEFINE(GROUP_ID, _ORDINAL) VALUES ('R5-2',0);



--   ROOM



INSERT ROOM (ROOM_ID,NAME,DESCRIPTION,PERCENTAGE,SEQ) value ('1','一号档案库','档案库已装满',100,1);
INSERT ROOM (ROOM_ID,NAME,DESCRIPTION,PERCENTAGE,SEQ) value ('2','二号档案库','档案库已装满',100,2);
INSERT ROOM (ROOM_ID,NAME,DESCRIPTION,PERCENTAGE,SEQ) value ('3','三号档案库','档案库未装满',50,3);

INSERT RACK (RACK_ID, NAME, ROOM_ID, PERCENTAGE, SEQ) VALUE ('1-1','一号架','1',100,1);
INSERT RACK (RACK_ID, NAME, ROOM_ID, PERCENTAGE, SEQ) VALUE ('2-1','一号架','2',100,1);
INSERT RACK (RACK_ID, NAME, ROOM_ID, PERCENTAGE, SEQ) VALUE ('3-1','一号架','3',50,1);
-- 一号库，柜信息
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('1-1-1B','1B','1-1',1,100,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('1-1-2A','2A','1-1',2,100,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('1-1-2B','2B','1-1',3,100,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('1-1-3A','3A','1-1',4,100,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('1-1-3B','3B','1-1',5,100,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('1-1-4A','4A','1-1',6,100,TRUE ,FALSE );
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('1-1-4B','4B','1-1',7,100,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('1-1-5A','5A','1-1',8,100,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('1-1-5B','5B','1-1',9,100,TRUE ,TRUE);

-- 二号库，柜信息
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('2-1-1A','1A','2-1',1,100,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('2-1-2A','2A','2-1',2,100,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('2-1-2B','2B','2-1',3,100,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('2-1-3A','3A','2-1',4,100,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('2-1-3B','3B','2-1',5,100,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('2-1-4A','4A','2-1',6,100,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('2-1-4B','4B','2-1',7,100,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('2-1-5A','5A','2-1',8,100,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('2-1-5B','5B','2-1',9,100,TRUE ,TRUE);
-- 三号号 柜信息
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-1A','1A','3-1',1,50,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-1B','1B','3-1',2,0,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-2A','2A','3-1',3,0,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-2B','2B','3-1',4,30,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-3A','3A','3-1',5,5,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-3B','3B','3-1',6,0,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-4A','4A','3-1',7,0,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-4B','4B','3-1',8,5,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-5A','5A','3-1',9,15,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-5B','5B','3-1',10,80,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-6A','6A','3-1',11,20,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-6B','6B','3-1',12,0,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-7A','7A','3-1',13,10,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-7B','7B','3-1',14,20,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-8A','8A','3-1',15,0,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-8B','8B','3-1',16,0,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-9A','9A','3-1',17,0,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-9B','9B','3-1',18,50,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-10A','10A','3-1',19,50,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-10B','10B','3-1',20,50,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-11A','11A','3-1',21,20,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-11B','11B','3-1',22,50,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-12A','12A','3-1',23,50,TRUE ,FALSE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-12B','12B','3-1',24,70,TRUE ,TRUE);
INSERT CABINET (CABINET_ID, NAME, RACK_ID, SEQ, PERCENTAGE, ROW_DESC, COL_DESC) VALUE ('3-1-13A','13A','3-1',25,85,TRUE ,FALSE);

-- 1号库01B cell 信息 _ROW 行,_COL 列 01B

INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-1-1','1-1','1-1-1B',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-1-2','1-2','1-1-1B',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-1-3','1-3','1-1-1B',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-1-4','1-4','1-1-1B',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-1-5','1-5','1-1-1B',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-1-6','1-6','1-1-1B',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-2-1','2-1','1-1-1B',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-2-2','2-2','1-1-1B',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-2-3','2-3','1-1-1B',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-2-4','2-4','1-1-1B',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-2-5','2-5','1-1-1B',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-2-6','2-6','1-1-1B',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-3-1','3-1','1-1-1B',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-3-2','3-2','1-1-1B',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-3-3','3-3','1-1-1B',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-3-4','3-4','1-1-1B',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-3-5','3-5','1-1-1B',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-3-6','3-6','1-1-1B',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-4-1','4-1','1-1-1B',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-4-2','4-2','1-1-1B',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-4-3','4-3','1-1-1B',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-4-4','4-4','1-1-1B',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-4-5','4-5','1-1-1B',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-1B-4-6','4-6','1-1-1B',40,24,6,4,100);


-- 12

INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-1-1','1-1','1-1-2A',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-1-2','1-2','1-1-2A',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-1-3','1-3','1-1-2A',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-1-4','1-4','1-1-2A',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-1-5','1-5','1-1-2A',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-1-6','1-6','1-1-2A',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-2-1','2-1','1-1-2A',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-2-2','2-2','1-1-2A',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-2-3','2-3','1-1-2A',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-2-4','2-4','1-1-2A',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-2-5','2-5','1-1-2A',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-2-6','2-6','1-1-2A',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-3-1','3-1','1-1-2A',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-3-2','3-2','1-1-2A',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-3-3','3-3','1-1-2A',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-3-4','3-4','1-1-2A',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-3-5','3-5','1-1-2A',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-3-6','3-6','1-1-2A',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-4-1','4-1','1-1-2A',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-4-2','4-2','1-1-2A',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-4-3','4-3','1-1-2A',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-4-4','4-4','1-1-2A',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-4-5','4-5','1-1-2A',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2A-4-6','4-6','1-1-2A',40,24,6,4,100);

-- 1-1-B2
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-1-1','1-1','1-1-2B',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-1-2','1-2','1-1-2B',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-1-3','1-3','1-1-2B',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-1-4','1-4','1-1-2B',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-1-5','1-5','1-1-2B',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-1-6','1-6','1-1-2B',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-2-1','2-1','1-1-2B',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-2-2','2-2','1-1-2B',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-2-3','2-3','1-1-2B',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-2-4','2-4','1-1-2B',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-2-5','2-5','1-1-2B',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-2-6','2-6','1-1-2B',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-3-1','3-1','1-1-2B',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-3-2','3-2','1-1-2B',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-3-3','3-3','1-1-2B',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-3-4','3-4','1-1-2B',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-3-5','3-5','1-1-2B',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-3-6','3-6','1-1-2B',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-4-1','4-1','1-1-2B',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-4-2','4-2','1-1-2B',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-4-3','4-3','1-1-2B',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-4-4','4-4','1-1-2B',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-4-5','4-5','1-1-2B',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-2B-4-6','4-6','1-1-2B',40,24,6,4,100);

-- 1-1-A3
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-1-1','1-1','1-1-3A',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-1-2','1-2','1-1-3A',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-1-3','1-3','1-1-3A',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-1-4','1-4','1-1-3A',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-1-5','1-5','1-1-3A',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-1-6','1-6','1-1-3A',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-2-1','2-1','1-1-3A',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-2-2','2-2','1-1-3A',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-2-3','2-3','1-1-3A',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-2-4','2-4','1-1-3A',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-2-5','2-5','1-1-3A',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-2-6','2-6','1-1-3A',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-3-1','3-1','1-1-3A',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-3-2','3-2','1-1-3A',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-3-3','3-3','1-1-3A',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-3-4','3-4','1-1-3A',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-3-5','3-5','1-1-3A',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-3-6','3-6','1-1-3A',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-4-1','4-1','1-1-3A',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-4-2','4-2','1-1-3A',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-4-3','4-3','1-1-3A',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-4-4','4-4','1-1-3A',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-4-5','4-5','1-1-3A',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3A-4-6','4-6','1-1-3A',40,24,6,4,100);

-- 1-1-B3
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-1-1','1-1','1-1-3B',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-1-2','1-2','1-1-3B',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-1-3','1-3','1-1-3B',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-1-4','1-4','1-1-3B',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-1-5','1-5','1-1-3B',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-1-6','1-6','1-1-3B',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-2-1','2-1','1-1-3B',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-2-2','2-2','1-1-3B',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-2-3','2-3','1-1-3B',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-2-4','2-4','1-1-3B',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-2-5','2-5','1-1-3B',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-2-6','2-6','1-1-3B',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-3-1','3-1','1-1-3B',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-3-2','3-2','1-1-3B',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-3-3','3-3','1-1-3B',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-3-4','3-4','1-1-3B',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-3-5','3-5','1-1-3B',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-3-6','3-6','1-1-3B',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-4-1','4-1','1-1-3B',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-4-2','4-2','1-1-3B',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-4-3','4-3','1-1-3B',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-4-4','4-4','1-1-3B',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-4-5','4-5','1-1-3B',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-3B-4-6','4-6','1-1-3B',40,24,6,4,100);

-- 1-1-A4
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-1-1','1-1','1-1-4A',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-1-2','1-2','1-1-4A',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-1-3','1-3','1-1-4A',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-1-4','1-4','1-1-4A',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-1-5','1-5','1-1-4A',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-1-6','1-6','1-1-4A',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-2-1','2-1','1-1-4A',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-2-2','2-2','1-1-4A',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-2-3','2-3','1-1-4A',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-2-4','2-4','1-1-4A',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-2-5','2-5','1-1-4A',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-2-6','2-6','1-1-4A',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-3-1','3-1','1-1-4A',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-3-2','3-2','1-1-4A',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-3-3','3-3','1-1-4A',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-3-4','3-4','1-1-4A',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-3-5','3-5','1-1-4A',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-3-6','3-6','1-1-4A',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-4-1','4-1','1-1-4A',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-4-2','4-2','1-1-4A',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-4-3','4-3','1-1-4A',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-4-4','4-4','1-1-4A',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-4-5','4-5','1-1-4A',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4A-4-6','4-6','1-1-4A',40,24,6,4,100);

-- 1-1-B4
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-1-1','1-1','1-1-4B',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-1-2','1-2','1-1-4B',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-1-3','1-3','1-1-4B',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-1-4','1-4','1-1-4B',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-1-5','1-5','1-1-4B',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-1-6','1-6','1-1-4B',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-2-1','2-1','1-1-4B',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-2-2','2-2','1-1-4B',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-2-3','2-3','1-1-4B',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-2-4','2-4','1-1-4B',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-2-5','2-5','1-1-4B',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-2-6','2-6','1-1-4B',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-3-1','3-1','1-1-4B',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-3-2','3-2','1-1-4B',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-3-3','3-3','1-1-4B',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-3-4','3-4','1-1-4B',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-3-5','3-5','1-1-4B',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-3-6','3-6','1-1-4B',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-4-1','4-1','1-1-4B',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-4-2','4-2','1-1-4B',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-4-3','4-3','1-1-4B',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-4-4','4-4','1-1-4B',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-4-5','4-5','1-1-4B',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-4B-4-6','4-6','1-1-4B',40,24,6,4,100);

-- 1-1-A5
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-1-1','1-1','1-1-5A',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-1-2','1-2','1-1-5A',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-1-3','1-3','1-1-5A',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-1-4','1-4','1-1-5A',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-1-5','1-5','1-1-5A',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-1-6','1-6','1-1-5A',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-2-1','2-1','1-1-5A',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-2-2','2-2','1-1-5A',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-2-3','2-3','1-1-5A',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-2-4','2-4','1-1-5A',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-2-5','2-5','1-1-5A',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-2-6','2-6','1-1-5A',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-3-1','3-1','1-1-5A',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-3-2','3-2','1-1-5A',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-3-3','3-3','1-1-5A',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-3-4','3-4','1-1-5A',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-3-5','3-5','1-1-5A',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-3-6','3-6','1-1-5A',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-4-1','4-1','1-1-5A',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-4-2','4-2','1-1-5A',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-4-3','4-3','1-1-5A',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-4-4','4-4','1-1-5A',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-4-5','4-5','1-1-5A',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5A-4-6','4-6','1-1-5A',40,24,6,4,100);

-- 1-1-B5
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-1-1','1-1','1-1-5B',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-1-2','1-2','1-1-5B',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-1-3','1-3','1-1-5B',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-1-4','1-4','1-1-5B',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-1-5','1-5','1-1-5B',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-1-6','1-6','1-1-5B',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-2-1','2-1','1-1-5B',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-2-2','2-2','1-1-5B',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-2-3','2-3','1-1-5B',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-2-4','2-4','1-1-5B',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-2-5','2-5','1-1-5B',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-2-6','2-6','1-1-5B',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-3-1','3-1','1-1-5B',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-3-2','3-2','1-1-5B',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-3-3','3-3','1-1-5B',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-3-4','3-4','1-1-5B',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-3-5','3-5','1-1-5B',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-3-6','3-6','1-1-5B',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-4-1','4-1','1-1-5B',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-4-2','4-2','1-1-5B',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-4-3','4-3','1-1-5B',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-4-4','4-4','1-1-5B',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-4-5','4-5','1-1-5B',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('1-1-5B-4-6','4-6','1-1-5B',40,24,6,4,100);

-- 2号库

-- 2-1-1A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-1-1','1-1','2-1-1A',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-1-2','1-2','2-1-1A',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-1-3','1-3','2-1-1A',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-1-4','1-4','2-1-1A',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-1-5','1-5','2-1-1A',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-1-6','1-6','2-1-1A',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-2-1','2-1','2-1-1A',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-2-2','2-2','2-1-1A',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-2-3','2-3','2-1-1A',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-2-4','2-4','2-1-1A',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-2-5','2-5','2-1-1A',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-2-6','2-6','2-1-1A',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-3-1','3-1','2-1-1A',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-3-2','3-2','2-1-1A',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-3-3','3-3','2-1-1A',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-3-4','3-4','2-1-1A',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-3-5','3-5','2-1-1A',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-3-6','3-6','2-1-1A',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-4-1','4-1','2-1-1A',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-4-2','4-2','2-1-1A',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-4-3','4-3','2-1-1A',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-4-4','4-4','2-1-1A',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-4-5','4-5','2-1-1A',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-1A-4-6','4-6','2-1-1A',40,24,6,4,100);

-- 2-1-2A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-1-1','1-1','2-1-2A',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-1-2','1-2','2-1-2A',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-1-3','1-3','2-1-2A',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-1-4','1-4','2-1-2A',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-1-5','1-5','2-1-2A',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-1-6','1-6','2-1-2A',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-2-1','2-1','2-1-2A',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-2-2','2-2','2-1-2A',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-2-3','2-3','2-1-2A',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-2-4','2-4','2-1-2A',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-2-5','2-5','2-1-2A',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-2-6','2-6','2-1-2A',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-3-1','3-1','2-1-2A',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-3-2','3-2','2-1-2A',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-3-3','3-3','2-1-2A',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-3-4','3-4','2-1-2A',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-3-5','3-5','2-1-2A',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-3-6','3-6','2-1-2A',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-4-1','4-1','2-1-2A',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-4-2','4-2','2-1-2A',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-4-3','4-3','2-1-2A',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-4-4','4-4','2-1-2A',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-4-5','4-5','2-1-2A',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2A-4-6','4-6','2-1-2A',40,24,6,4,100);


-- 2-1-2B
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-1-1','1-1','2-1-2B',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-1-2','1-2','2-1-2B',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-1-3','1-3','2-1-2B',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-1-4','1-4','2-1-2B',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-1-5','1-5','2-1-2B',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-1-6','1-6','2-1-2B',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-2-1','2-1','2-1-2B',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-2-2','2-2','2-1-2B',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-2-3','2-3','2-1-2B',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-2-4','2-4','2-1-2B',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-2-5','2-5','2-1-2B',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-2-6','2-6','2-1-2B',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-3-1','3-1','2-1-2B',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-3-2','3-2','2-1-2B',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-3-3','3-3','2-1-2B',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-3-4','3-4','2-1-2B',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-3-5','3-5','2-1-2B',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-3-6','3-6','2-1-2B',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-4-1','4-1','2-1-2B',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-4-2','4-2','2-1-2B',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-4-3','4-3','2-1-2B',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-4-4','4-4','2-1-2B',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-4-5','4-5','2-1-2B',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-2B-4-6','4-6','2-1-2B',40,24,6,4,100);

-- '2-1-3A'
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-1-1','1-1','2-1-3A',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-1-2','1-2','2-1-3A',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-1-3','1-3','2-1-3A',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-1-4','1-4','2-1-3A',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-1-5','1-5','2-1-3A',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-1-6','1-6','2-1-3A',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-2-1','2-1','2-1-3A',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-2-2','2-2','2-1-3A',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-2-3','2-3','2-1-3A',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-2-4','2-4','2-1-3A',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-2-5','2-5','2-1-3A',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-2-6','2-6','2-1-3A',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-3-1','3-1','2-1-3A',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-3-2','3-2','2-1-3A',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-3-3','3-3','2-1-3A',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-3-4','3-4','2-1-3A',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-3-5','3-5','2-1-3A',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-3-6','3-6','2-1-3A',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-4-1','4-1','2-1-3A',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-4-2','4-2','2-1-3A',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-4-3','4-3','2-1-3A',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-4-4','4-4','2-1-3A',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-4-5','4-5','2-1-3A',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3A-4-6','4-6','2-1-3A',40,24,6,4,100);

-- '2-1-3B'
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-1-1','1-1','2-1-3B',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-1-2','1-2','2-1-3B',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-1-3','1-3','2-1-3B',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-1-4','1-4','2-1-3B',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-1-5','1-5','2-1-3B',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-1-6','1-6','2-1-3B',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-2-1','2-1','2-1-3B',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-2-2','2-2','2-1-3B',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-2-3','2-3','2-1-3B',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-2-4','2-4','2-1-3B',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-2-5','2-5','2-1-3B',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-2-6','2-6','2-1-3B',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-3-1','3-1','2-1-3B',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-3-2','3-2','2-1-3B',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-3-3','3-3','2-1-3B',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-3-4','3-4','2-1-3B',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-3-5','3-5','2-1-3B',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-3-6','3-6','2-1-3B',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-4-1','4-1','2-1-3B',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-4-2','4-2','2-1-3B',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-4-3','4-3','2-1-3B',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-4-4','4-4','2-1-3B',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-4-5','4-5','2-1-3B',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-3B-4-6','4-6','2-1-3B',40,24,6,4,100);

-- '2-1-4A'
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-1-1','1-1','2-1-4A',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-1-2','1-2','2-1-4A',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-1-3','1-3','2-1-4A',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-1-4','1-4','2-1-4A',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-1-5','1-5','2-1-4A',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-1-6','1-6','2-1-4A',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-2-1','2-1','2-1-4A',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-2-2','2-2','2-1-4A',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-2-3','2-3','2-1-4A',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-2-4','2-4','2-1-4A',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-2-5','2-5','2-1-4A',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-2-6','2-6','2-1-4A',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-3-1','3-1','2-1-4A',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-3-2','3-2','2-1-4A',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-3-3','3-3','2-1-4A',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-3-4','3-4','2-1-4A',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-3-5','3-5','2-1-4A',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-3-6','3-6','2-1-4A',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-4-1','4-1','2-1-4A',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-4-2','4-2','2-1-4A',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-4-3','4-3','2-1-4A',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-4-4','4-4','2-1-4A',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-4-5','4-5','2-1-4A',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4A-4-6','4-6','2-1-4A',40,24,6,4,100);

-- '2-1-4B'
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-1-1','1-1','2-1-4B',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-1-2','1-2','2-1-4B',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-1-3','1-3','2-1-4B',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-1-4','1-4','2-1-4B',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-1-5','1-5','2-1-4B',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-1-6','1-6','2-1-4B',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-2-1','2-1','2-1-4B',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-2-2','2-2','2-1-4B',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-2-3','2-3','2-1-4B',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-2-4','2-4','2-1-4B',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-2-5','2-5','2-1-4B',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-2-6','2-6','2-1-4B',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-3-1','3-1','2-1-4B',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-3-2','3-2','2-1-4B',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-3-3','3-3','2-1-4B',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-3-4','3-4','2-1-4B',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-3-5','3-5','2-1-4B',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-3-6','3-6','2-1-4B',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-4-1','4-1','2-1-4B',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-4-2','4-2','2-1-4B',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-4-3','4-3','2-1-4B',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-4-4','4-4','2-1-4B',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-4-5','4-5','2-1-4B',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-4B-4-6','4-6','2-1-4B',40,24,6,4,100);

-- '2-1-5A'
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-1-1','1-1','2-1-5A',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-1-2','1-2','2-1-5A',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-1-3','1-3','2-1-5A',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-1-4','1-4','2-1-5A',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-1-5','1-5','2-1-5A',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-1-6','1-6','2-1-5A',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-2-1','2-1','2-1-5A',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-2-2','2-2','2-1-5A',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-2-3','2-3','2-1-5A',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-2-4','2-4','2-1-5A',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-2-5','2-5','2-1-5A',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-2-6','2-6','2-1-5A',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-3-1','3-1','2-1-5A',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-3-2','3-2','2-1-5A',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-3-3','3-3','2-1-5A',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-3-4','3-4','2-1-5A',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-3-5','3-5','2-1-5A',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-3-6','3-6','2-1-5A',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-4-1','4-1','2-1-5A',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-4-2','4-2','2-1-5A',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-4-3','4-3','2-1-5A',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-4-4','4-4','2-1-5A',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-4-5','4-5','2-1-5A',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5A-4-6','4-6','2-1-5A',40,24,6,4,100);
-- '2-1-5B'
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-1-1','1-1','2-1-5B',40,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-1-2','1-2','2-1-5B',40,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-1-3','1-3','2-1-5B',40,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-1-4','1-4','2-1-5B',40,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-1-5','1-5','2-1-5B',40,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-1-6','1-6','2-1-5B',40,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-2-1','2-1','2-1-5B',40,7,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-2-2','2-2','2-1-5B',40,8,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-2-3','2-3','2-1-5B',40,9,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-2-4','2-4','2-1-5B',40,10,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-2-5','2-5','2-1-5B',40,11,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-2-6','2-6','2-1-5B',40,12,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-3-1','3-1','2-1-5B',40,13,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-3-2','3-2','2-1-5B',40,14,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-3-3','3-3','2-1-5B',40,15,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-3-4','3-4','2-1-5B',40,16,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-3-5','3-5','2-1-5B',40,17,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-3-6','3-6','2-1-5B',40,18,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-4-1','4-1','2-1-5B',40,19,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-4-2','4-2','2-1-5B',40,20,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-4-3','4-3','2-1-5B',40,21,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-4-4','4-4','2-1-5B',40,22,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-4-5','4-5','2-1-5B',40,23,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('2-1-5B-4-6','4-6','2-1-5B',40,24,6,4,100);

--  3号库
-- 3-1-1A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-1-1','1-1','3-1-1A',34,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-1-2','1-2','3-1-1A',34,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-1-3','1-3','3-1-1A',34,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-1-4','1-4','3-1-1A',34,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-1-5','1-5','3-1-1A',34,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-1-6','1-6','3-1-1A',34,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-1-7','1-7','3-1-1A',34,7,7,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-2-1','2-1','3-1-1A',34,8,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-2-2','2-2','3-1-1A',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-2-3','2-3','3-1-1A',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-2-4','2-4','3-1-1A',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-2-5','2-5','3-1-1A',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-2-6','2-6','3-1-1A',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-2-7','2-7','3-1-1A',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-3-1','3-1','3-1-1A',34,15,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-3-2','3-2','3-1-1A',34,16,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-3-3','3-3','3-1-1A',34,17,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-3-4','3-4','3-1-1A',34,18,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-3-5','3-5','3-1-1A',34,19,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-3-6','3-6','3-1-1A',34,20,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-3-7','3-7','3-1-1A',34,21,7,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-4-1','4-1','3-1-1A',34,22,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-4-2','4-2','3-1-1A',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-4-3','4-3','3-1-1A',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-4-4','4-4','3-1-1A',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-4-5','4-5','3-1-1A',34,26,5,4,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-4-6','4-6','3-1-1A',34,27,6,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-4-7','4-7','3-1-1A',34,28,7,4,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-5-1','5-1','3-1-1A',34,29,1,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-5-2','5-2','3-1-1A',34,30,2,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-5-3','5-3','3-1-1A',34,31,3,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-5-4','5-4','3-1-1A',34,32,4,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-5-5','5-5','3-1-1A',34,33,5,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-5-6','5-6','3-1-1A',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-5-7','5-7','3-1-1A',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-6-1','6-1','3-1-1A',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-6-2','6-2','3-1-1A',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-6-3','6-3','3-1-1A',34,38,3,6,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-6-4','6-4','3-1-1A',34,39,4,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-6-5','6-5','3-1-1A',34,40,5,6,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-6-6','6-6','3-1-1A',34,41,6,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1A-6-7','6-7','3-1-1A',34,42,7,6,50);

-- 3-1-1B
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-1-1','1-1','3-1-1B',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-1-2','1-2','3-1-1B',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-1-3','1-3','3-1-1B',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-1-4','1-4','3-1-1B',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-1-5','1-5','3-1-1B',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-1-6','1-6','3-1-1B',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-1-7','1-7','3-1-1B',34,7,7,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-2-1','2-1','3-1-1B',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-2-2','2-2','3-1-1B',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-2-3','2-3','3-1-1B',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-2-4','2-4','3-1-1B',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-2-5','2-5','3-1-1B',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-2-6','2-6','3-1-1B',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-2-7','2-7','3-1-1B',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-3-1','3-1','3-1-1B',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-3-2','3-2','3-1-1B',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-3-3','3-3','3-1-1B',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-3-4','3-4','3-1-1B',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-3-5','3-5','3-1-1B',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-3-6','3-6','3-1-1B',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-3-7','3-7','3-1-1B',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-4-1','4-1','3-1-1B',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-4-2','4-2','3-1-1B',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-4-3','4-3','3-1-1B',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-4-4','4-4','3-1-1B',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-4-5','4-5','3-1-1B',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-4-6','4-6','3-1-1B',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-4-7','4-7','3-1-1B',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-5-1','5-1','3-1-1B',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-5-2','5-2','3-1-1B',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-5-3','5-3','3-1-1B',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-5-4','5-4','3-1-1B',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-5-5','5-5','3-1-1B',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-5-6','5-6','3-1-1B',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-5-7','5-7','3-1-1B',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-6-1','6-1','3-1-1B',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-6-2','6-2','3-1-1B',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-6-3','6-3','3-1-1B',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-6-4','6-4','3-1-1B',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-6-5','6-5','3-1-1B',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-6-6','6-6','3-1-1B',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-1B-6-7','6-7','3-1-1B',34,42,7,6,0);
-- 3-1-2A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-1-1','1-1','3-1-2A',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-1-2','1-2','3-1-2A',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-1-3','1-3','3-1-2A',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-1-4','1-4','3-1-2A',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-1-5','1-5','3-1-2A',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-1-6','1-6','3-1-2A',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-1-7','1-7','3-1-2A',34,7,7,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-2-1','2-1','3-1-2A',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-2-2','2-2','3-1-2A',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-2-3','2-3','3-1-2A',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-2-4','2-4','3-1-2A',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-2-5','2-5','3-1-2A',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-2-6','2-6','3-1-2A',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-2-7','2-7','3-1-2A',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-3-1','3-1','3-1-2A',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-3-2','3-2','3-1-2A',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-3-3','3-3','3-1-2A',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-3-4','3-4','3-1-2A',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-3-5','3-5','3-1-2A',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-3-6','3-6','3-1-2A',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-3-7','3-7','3-1-2A',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-4-1','4-1','3-1-2A',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-4-2','4-2','3-1-2A',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-4-3','4-3','3-1-2A',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-4-4','4-4','3-1-2A',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-4-5','4-5','3-1-2A',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-4-6','4-6','3-1-2A',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-4-7','4-7','3-1-2A',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-5-1','5-1','3-1-2A',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-5-2','5-2','3-1-2A',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-5-3','5-3','3-1-2A',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-5-4','5-4','3-1-2A',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-5-5','5-5','3-1-2A',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-5-6','5-6','3-1-2A',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-5-7','5-7','3-1-2A',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-6-1','6-1','3-1-2A',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-6-2','6-2','3-1-2A',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-6-3','6-3','3-1-2A',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-6-4','6-4','3-1-2A',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-6-5','6-5','3-1-2A',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-6-6','6-6','3-1-2A',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2A-6-7','6-7','3-1-2A',34,42,7,6,0);
-- 3-1-2B
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-1-1','1-1','3-1-2B',34,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-1-2','1-2','3-1-2B',34,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-1-3','1-3','3-1-2B',34,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-1-4','1-4','3-1-2B',34,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-1-5','1-5','3-1-2B',34,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-1-6','1-6','3-1-2B',34,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-1-7','1-7','3-1-2B',34,7,7,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-2-1','2-1','3-1-2B',34,8,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-2-2','2-2','3-1-2B',34,9,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-2-3','2-3','3-1-2B',34,10,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-2-4','2-4','3-1-2B',34,11,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-2-5','2-5','3-1-2B',34,12,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-2-6','2-6','3-1-2B',34,13,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-2-7','2-7','3-1-2B',34,14,7,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-3-1','3-1','3-1-2B',34,15,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-3-2','3-2','3-1-2B',34,16,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-3-3','3-3','3-1-2B',34,17,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-3-4','3-4','3-1-2B',34,18,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-3-5','3-5','3-1-2B',34,19,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-3-6','3-6','3-1-2B',34,20,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-3-7','3-7','3-1-2B',34,21,7,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-4-1','4-1','3-1-2B',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-4-2','4-2','3-1-2B',34,23,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-4-3','4-3','3-1-2B',34,24,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-4-4','4-4','3-1-2B',34,25,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-4-5','4-5','3-1-2B',34,26,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-4-6','4-6','3-1-2B',34,27,6,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-4-7','4-7','3-1-2B',34,28,7,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-5-1','5-1','3-1-2B',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-5-2','5-2','3-1-2B',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-5-3','5-3','3-1-2B',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-5-4','5-4','3-1-2B',34,32,4,5,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-5-5','5-5','3-1-2B',34,33,5,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-5-6','5-6','3-1-2B',34,34,6,5,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-5-7','5-7','3-1-2B',34,35,7,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-6-1','6-1','3-1-2B',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-6-2','6-2','3-1-2B',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-6-3','6-3','3-1-2B',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-6-4','6-4','3-1-2B',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-6-5','6-5','3-1-2B',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-6-6','6-6','3-1-2B',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-2B-6-7','6-7','3-1-2B',34,42,7,6,0);
-- 3-1-3A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-1-1','1-1','3-1-3A',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-1-2','1-2','3-1-3A',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-1-3','1-3','3-1-3A',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-1-4','1-4','3-1-3A',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-1-5','1-5','3-1-3A',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-1-6','1-6','3-1-3A',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-1-7','1-7','3-1-3A',34,7,7,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-2-1','2-1','3-1-3A',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-2-2','2-2','3-1-3A',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-2-3','2-3','3-1-3A',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-2-4','2-4','3-1-3A',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-2-5','2-5','3-1-3A',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-2-6','2-6','3-1-3A',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-2-7','2-7','3-1-3A',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-3-1','3-1','3-1-3A',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-3-2','3-2','3-1-3A',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-3-3','3-3','3-1-3A',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-3-4','3-4','3-1-3A',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-3-5','3-5','3-1-3A',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-3-6','3-6','3-1-3A',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-3-7','3-7','3-1-3A',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-4-1','4-1','3-1-3A',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-4-2','4-2','3-1-3A',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-4-3','4-3','3-1-3A',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-4-4','4-4','3-1-3A',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-4-5','4-5','3-1-3A',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-4-6','4-6','3-1-3A',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-4-7','4-7','3-1-3A',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-5-1','5-1','3-1-3A',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-5-2','5-2','3-1-3A',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-5-3','5-3','3-1-3A',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-5-4','5-4','3-1-3A',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-5-5','5-5','3-1-3A',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-5-6','5-6','3-1-3A',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-5-7','5-7','3-1-3A',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-6-1','6-1','3-1-3A',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-6-2','6-2','3-1-3A',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-6-3','6-3','3-1-3A',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-6-4','6-4','3-1-3A',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-6-5','6-5','3-1-3A',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-6-6','6-6','3-1-3A',34,41,6,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3A-6-7','6-7','3-1-3A',34,42,7,6,100);

-- 3-1-3B
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-1-1','1-1','3-1-3B',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-1-2','1-2','3-1-3B',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-1-3','1-3','3-1-3B',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-1-4','1-4','3-1-3B',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-1-5','1-5','3-1-3B',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-1-6','1-6','3-1-3B',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-1-7','1-7','3-1-3B',34,7,7,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-2-1','2-1','3-1-3B',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-2-2','2-2','3-1-3B',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-2-3','2-3','3-1-3B',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-2-4','2-4','3-1-3B',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-2-5','2-5','3-1-3B',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-2-6','2-6','3-1-3B',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-2-7','2-7','3-1-3B',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-3-1','3-1','3-1-3B',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-3-2','3-2','3-1-3B',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-3-3','3-3','3-1-3B',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-3-4','3-4','3-1-3B',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-3-5','3-5','3-1-3B',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-3-6','3-6','3-1-3B',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-3-7','3-7','3-1-3B',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-4-1','4-1','3-1-3B',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-4-2','4-2','3-1-3B',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-4-3','4-3','3-1-3B',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-4-4','4-4','3-1-3B',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-4-5','4-5','3-1-3B',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-4-6','4-6','3-1-3B',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-4-7','4-7','3-1-3B',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-5-1','5-1','3-1-3B',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-5-2','5-2','3-1-3B',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-5-3','5-3','3-1-3B',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-5-4','5-4','3-1-3B',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-5-5','5-5','3-1-3B',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-5-6','5-6','3-1-3B',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-5-7','5-7','3-1-3B',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-6-1','6-1','3-1-3B',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-6-2','6-2','3-1-3B',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-6-3','6-3','3-1-3B',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-6-4','6-4','3-1-3B',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-6-5','6-5','3-1-3B',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-6-6','6-6','3-1-3B',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-3B-6-7','6-7','3-1-3B',34,42,7,6,0);


-- 3-1-4A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-1-1','1-1','3-1-4A',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-1-2','1-2','3-1-4A',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-1-3','1-3','3-1-4A',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-1-4','1-4','3-1-4A',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-1-5','1-5','3-1-4A',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-1-6','1-6','3-1-4A',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-1-7','1-7','3-1-4A',34,7,7,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-2-1','2-1','3-1-4A',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-2-2','2-2','3-1-4A',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-2-3','2-3','3-1-4A',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-2-4','2-4','3-1-4A',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-2-5','2-5','3-1-4A',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-2-6','2-6','3-1-4A',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-2-7','2-7','3-1-4A',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-3-1','3-1','3-1-4A',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-3-2','3-2','3-1-4A',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-3-3','3-3','3-1-4A',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-3-4','3-4','3-1-4A',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-3-5','3-5','3-1-4A',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-3-6','3-6','3-1-4A',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-3-7','3-7','3-1-4A',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-4-1','4-1','3-1-4A',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-4-2','4-2','3-1-4A',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-4-3','4-3','3-1-4A',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-4-4','4-4','3-1-4A',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-4-5','4-5','3-1-4A',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-4-6','4-6','3-1-4A',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-4-7','4-7','3-1-4A',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-5-1','5-1','3-1-4A',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-5-2','5-2','3-1-4A',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-5-3','5-3','3-1-4A',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-5-4','5-4','3-1-4A',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-5-5','5-5','3-1-4A',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-5-6','5-6','3-1-4A',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-5-7','5-7','3-1-4A',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-6-1','6-1','3-1-4A',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-6-2','6-2','3-1-4A',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-6-3','6-3','3-1-4A',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-6-4','6-4','3-1-4A',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-6-5','6-5','3-1-4A',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-6-6','6-6','3-1-4A',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4A-6-7','6-7','3-1-4A',34,42,7,6,0);


-- 3-1-4B
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-1-1','1-1','3-1-4B',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-1-2','1-2','3-1-4B',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-1-3','1-3','3-1-4B',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-1-4','1-4','3-1-4B',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-1-5','1-5','3-1-4B',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-1-6','1-6','3-1-4B',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-1-7','1-7','3-1-4B',34,7,7,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-2-1','2-1','3-1-4B',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-2-2','2-2','3-1-4B',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-2-3','2-3','3-1-4B',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-2-4','2-4','3-1-4B',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-2-5','2-5','3-1-4B',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-2-6','2-6','3-1-4B',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-2-7','2-7','3-1-4B',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-3-1','3-1','3-1-4B',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-3-2','3-2','3-1-4B',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-3-3','3-3','3-1-4B',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-3-4','3-4','3-1-4B',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-3-5','3-5','3-1-4B',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-3-6','3-6','3-1-4B',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-3-7','3-7','3-1-4B',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-4-1','4-1','3-1-4B',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-4-2','4-2','3-1-4B',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-4-3','4-3','3-1-4B',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-4-4','4-4','3-1-4B',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-4-5','4-5','3-1-4B',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-4-6','4-6','3-1-4B',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-4-7','4-7','3-1-4B',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-5-1','5-1','3-1-4B',34,29,1,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-5-2','5-2','3-1-4B',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-5-3','5-3','3-1-4B',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-5-4','5-4','3-1-4B',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-5-5','5-5','3-1-4B',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-5-6','5-6','3-1-4B',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-5-7','5-7','3-1-4B',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-6-1','6-1','3-1-4B',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-6-2','6-2','3-1-4B',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-6-3','6-3','3-1-4B',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-6-4','6-4','3-1-4B',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-6-5','6-5','3-1-4B',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-6-6','6-6','3-1-4B',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-4B-6-7','6-7','3-1-4B',34,42,7,6,0);

-- 3-1-5A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-1-1','1-1','3-1-5A',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-1-2','1-2','3-1-5A',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-1-3','1-3','3-1-5A',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-1-4','1-4','3-1-5A',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-1-5','1-5','3-1-5A',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-1-6','1-6','3-1-5A',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-1-7','1-7','3-1-5A',34,7,7,1,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-2-1','2-1','3-1-5A',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-2-2','2-2','3-1-5A',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-2-3','2-3','3-1-5A',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-2-4','2-4','3-1-5A',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-2-5','2-5','3-1-5A',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-2-6','2-6','3-1-5A',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-2-7','2-7','3-1-5A',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-3-1','3-1','3-1-5A',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-3-2','3-2','3-1-5A',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-3-3','3-3','3-1-5A',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-3-4','3-4','3-1-5A',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-3-5','3-5','3-1-5A',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-3-6','3-6','3-1-5A',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-3-7','3-7','3-1-5A',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-4-1','4-1','3-1-5A',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-4-2','4-2','3-1-5A',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-4-3','4-3','3-1-5A',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-4-4','4-4','3-1-5A',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-4-5','4-5','3-1-5A',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-4-6','4-6','3-1-5A',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-4-7','4-7','3-1-5A',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-5-1','5-1','3-1-5A',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-5-2','5-2','3-1-5A',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-5-3','5-3','3-1-5A',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-5-4','5-4','3-1-5A',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-5-5','5-5','3-1-5A',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-5-6','5-6','3-1-5A',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-5-7','5-7','3-1-5A',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-6-1','6-1','3-1-5A',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-6-2','6-2','3-1-5A',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-6-3','6-3','3-1-5A',34,38,3,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-6-4','6-4','3-1-5A',34,39,4,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-6-5','6-5','3-1-5A',34,40,5,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-6-6','6-6','3-1-5A',34,41,6,6,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5A-6-7','6-7','3-1-5A',34,42,7,6,100);

-- 3-1-5B
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-1-1','1-1','3-1-5B',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-1-2','1-2','3-1-5B',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-1-3','1-3','3-1-5B',34,3,3,1,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-1-4','1-4','3-1-5B',34,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-1-5','1-5','3-1-5B',34,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-1-6','1-6','3-1-5B',34,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-1-7','1-7','3-1-5B',34,7,7,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-2-1','2-1','3-1-5B',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-2-2','2-2','3-1-5B',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-2-3','2-3','3-1-5B',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-2-4','2-4','3-1-5B',34,11,4,2,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-2-5','2-5','3-1-5B',34,12,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-2-6','2-6','3-1-5B',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-2-7','2-7','3-1-5B',34,14,7,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-3-1','3-1','3-1-5B',34,15,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-3-2','3-2','3-1-5B',34,16,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-3-3','3-3','3-1-5B',34,17,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-3-4','3-4','3-1-5B',34,18,4,3,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-3-5','3-5','3-1-5B',34,19,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-3-6','3-6','3-1-5B',34,20,6,3,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-3-7','3-7','3-1-5B',34,21,7,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-4-1','4-1','3-1-5B',34,22,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-4-2','4-2','3-1-5B',34,23,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-4-3','4-3','3-1-5B',34,24,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-4-4','4-4','3-1-5B',34,25,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-4-5','4-5','3-1-5B',34,26,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-4-6','4-6','3-1-5B',34,27,6,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-4-7','4-7','3-1-5B',34,28,7,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-5-1','5-1','3-1-5B',34,29,1,5,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-5-2','5-2','3-1-5B',34,30,2,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-5-3','5-3','3-1-5B',34,31,3,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-5-4','5-4','3-1-5B',34,32,4,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-5-5','5-5','3-1-5B',34,33,5,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-5-6','5-6','3-1-5B',34,34,6,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-5-7','5-7','3-1-5B',34,35,7,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-6-1','6-1','3-1-5B',34,36,1,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-6-2','6-2','3-1-5B',34,37,2,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-6-3','6-3','3-1-5B',34,38,3,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-6-4','6-4','3-1-5B',34,39,4,6,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-6-5','6-5','3-1-5B',34,40,5,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-6-6','6-6','3-1-5B',34,41,6,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-5B-6-7','6-7','3-1-5B',34,42,7,6,100);


-- 3-1-6A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-1-1','1-1','3-1-6A',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-1-2','1-2','3-1-6A',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-1-3','1-3','3-1-6A',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-1-4','1-4','3-1-6A',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-1-5','1-5','3-1-6A',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-1-6','1-6','3-1-6A',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-1-7','1-7','3-1-6A',34,7,7,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-2-1','2-1','3-1-6A',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-2-2','2-2','3-1-6A',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-2-3','2-3','3-1-6A',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-2-4','2-4','3-1-6A',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-2-5','2-5','3-1-6A',34,12,5,2,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-2-6','2-6','3-1-6A',34,13,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-2-7','2-7','3-1-6A',34,14,7,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-3-1','3-1','3-1-6A',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-3-2','3-2','3-1-6A',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-3-3','3-3','3-1-6A',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-3-4','3-4','3-1-6A',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-3-5','3-5','3-1-6A',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-3-6','3-6','3-1-6A',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-3-7','3-7','3-1-6A',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-4-1','4-1','3-1-6A',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-4-2','4-2','3-1-6A',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-4-3','4-3','3-1-6A',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-4-4','4-4','3-1-6A',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-4-5','4-5','3-1-6A',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-4-6','4-6','3-1-6A',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-4-7','4-7','3-1-6A',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-5-1','5-1','3-1-6A',34,29,1,5,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-5-2','5-2','3-1-6A',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-5-3','5-3','3-1-6A',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-5-4','5-4','3-1-6A',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-5-5','5-5','3-1-6A',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-5-6','5-6','3-1-6A',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-5-7','5-7','3-1-6A',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-6-1','6-1','3-1-6A',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-6-2','6-2','3-1-6A',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-6-3','6-3','3-1-6A',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-6-4','6-4','3-1-6A',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-6-5','6-5','3-1-6A',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-6-6','6-6','3-1-6A',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6A-6-7','6-7','3-1-6A',34,42,7,6,0);

-- 3-1-6B
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-1-1','1-1','3-1-6B',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-1-2','1-2','3-1-6B',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-1-3','1-3','3-1-6B',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-1-4','1-4','3-1-6B',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-1-5','1-5','3-1-6B',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-1-6','1-6','3-1-6B',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-1-7','1-7','3-1-6B',34,7,7,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-2-1','2-1','3-1-6B',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-2-2','2-2','3-1-6B',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-2-3','2-3','3-1-6B',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-2-4','2-4','3-1-6B',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-2-5','2-5','3-1-6B',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-2-6','2-6','3-1-6B',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-2-7','2-7','3-1-6B',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-3-1','3-1','3-1-6B',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-3-2','3-2','3-1-6B',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-3-3','3-3','3-1-6B',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-3-4','3-4','3-1-6B',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-3-5','3-5','3-1-6B',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-3-6','3-6','3-1-6B',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-3-7','3-7','3-1-6B',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-4-1','4-1','3-1-6B',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-4-2','4-2','3-1-6B',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-4-3','4-3','3-1-6B',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-4-4','4-4','3-1-6B',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-4-5','4-5','3-1-6B',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-4-6','4-6','3-1-6B',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-4-7','4-7','3-1-6B',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-5-1','5-1','3-1-6B',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-5-2','5-2','3-1-6B',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-5-3','5-3','3-1-6B',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-5-4','5-4','3-1-6B',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-5-5','5-5','3-1-6B',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-5-6','5-6','3-1-6B',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-5-7','5-7','3-1-6B',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-6-1','6-1','3-1-6B',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-6-2','6-2','3-1-6B',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-6-3','6-3','3-1-6B',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-6-4','6-4','3-1-6B',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-6-5','6-5','3-1-6B',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-6-6','6-6','3-1-6B',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-6B-6-7','6-7','3-1-6B',34,42,7,6,0);

-- 3-1-7A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-1-1','1-1','3-1-7A',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-1-2','1-2','3-1-7A',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-1-3','1-3','3-1-7A',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-1-4','1-4','3-1-7A',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-1-5','1-5','3-1-7A',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-1-6','1-6','3-1-7A',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-1-7','1-7','3-1-7A',34,7,7,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-2-1','2-1','3-1-7A',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-2-2','2-2','3-1-7A',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-2-3','2-3','3-1-7A',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-2-4','2-4','3-1-7A',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-2-5','2-5','3-1-7A',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-2-6','2-6','3-1-7A',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-2-7','2-7','3-1-7A',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-3-1','3-1','3-1-7A',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-3-2','3-2','3-1-7A',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-3-3','3-3','3-1-7A',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-3-4','3-4','3-1-7A',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-3-5','3-5','3-1-7A',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-3-6','3-6','3-1-7A',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-3-7','3-7','3-1-7A',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-4-1','4-1','3-1-7A',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-4-2','4-2','3-1-7A',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-4-3','4-3','3-1-7A',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-4-4','4-4','3-1-7A',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-4-5','4-5','3-1-7A',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-4-6','4-6','3-1-7A',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-4-7','4-7','3-1-7A',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-5-1','5-1','3-1-7A',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-5-2','5-2','3-1-7A',34,30,2,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-5-3','5-3','3-1-7A',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-5-4','5-4','3-1-7A',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-5-5','5-5','3-1-7A',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-5-6','5-6','3-1-7A',34,34,6,5,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-5-7','5-7','3-1-7A',34,35,7,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-6-1','6-1','3-1-7A',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-6-2','6-2','3-1-7A',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-6-3','6-3','3-1-7A',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-6-4','6-4','3-1-7A',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-6-5','6-5','3-1-7A',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-6-6','6-6','3-1-7A',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7A-6-7','6-7','3-1-7A',34,42,7,6,0);

-- 3-1-7B
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-1-1','1-1','3-1-7B',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-1-2','1-2','3-1-7B',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-1-3','1-3','3-1-7B',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-1-4','1-4','3-1-7B',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-1-5','1-5','3-1-7B',34,5,5,1,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-1-6','1-6','3-1-7B',34,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-1-7','1-7','3-1-7B',34,7,7,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-2-1','2-1','3-1-7B',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-2-2','2-2','3-1-7B',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-2-3','2-3','3-1-7B',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-2-4','2-4','3-1-7B',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-2-5','2-5','3-1-7B',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-2-6','2-6','3-1-7B',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-2-7','2-7','3-1-7B',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-3-1','3-1','3-1-7B',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-3-2','3-2','3-1-7B',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-3-3','3-3','3-1-7B',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-3-4','3-4','3-1-7B',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-3-5','3-5','3-1-7B',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-3-6','3-6','3-1-7B',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-3-7','3-7','3-1-7B',34,21,7,3,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-4-1','4-1','3-1-7B',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-4-2','4-2','3-1-7B',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-4-3','4-3','3-1-7B',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-4-4','4-4','3-1-7B',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-4-5','4-5','3-1-7B',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-4-6','4-6','3-1-7B',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-4-7','4-7','3-1-7B',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-5-1','5-1','3-1-7B',34,29,1,5,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-5-2','5-2','3-1-7B',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-5-3','5-3','3-1-7B',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-5-4','5-4','3-1-7B',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-5-5','5-5','3-1-7B',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-5-6','5-6','3-1-7B',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-5-7','5-7','3-1-7B',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-6-1','6-1','3-1-7B',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-6-2','6-2','3-1-7B',34,37,2,6,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-6-3','6-3','3-1-7B',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-6-4','6-4','3-1-7B',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-6-5','6-5','3-1-7B',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-6-6','6-6','3-1-7B',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-7B-6-7','6-7','3-1-7B',34,42,7,6,0);

-- 3-1-8A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-1-1','1-1','3-1-8A',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-1-2','1-2','3-1-8A',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-1-3','1-3','3-1-8A',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-1-4','1-4','3-1-8A',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-1-5','1-5','3-1-8A',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-1-6','1-6','3-1-8A',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-1-7','1-7','3-1-8A',34,7,7,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-2-1','2-1','3-1-8A',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-2-2','2-2','3-1-8A',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-2-3','2-3','3-1-8A',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-2-4','2-4','3-1-8A',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-2-5','2-5','3-1-8A',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-2-6','2-6','3-1-8A',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-2-7','2-7','3-1-8A',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-3-1','3-1','3-1-8A',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-3-2','3-2','3-1-8A',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-3-3','3-3','3-1-8A',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-3-4','3-4','3-1-8A',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-3-5','3-5','3-1-8A',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-3-6','3-6','3-1-8A',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-3-7','3-7','3-1-8A',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-4-1','4-1','3-1-8A',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-4-2','4-2','3-1-8A',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-4-3','4-3','3-1-8A',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-4-4','4-4','3-1-8A',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-4-5','4-5','3-1-8A',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-4-6','4-6','3-1-8A',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-4-7','4-7','3-1-8A',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-5-1','5-1','3-1-8A',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-5-2','5-2','3-1-8A',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-5-3','5-3','3-1-8A',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-5-4','5-4','3-1-8A',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-5-5','5-5','3-1-8A',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-5-6','5-6','3-1-8A',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-5-7','5-7','3-1-8A',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-6-1','6-1','3-1-8A',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-6-2','6-2','3-1-8A',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-6-3','6-3','3-1-8A',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-6-4','6-4','3-1-8A',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-6-5','6-5','3-1-8A',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-6-6','6-6','3-1-8A',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8A-6-7','6-7','3-1-8A',34,42,7,6,0);

-- 3-1-8B
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-1-1','1-1','3-1-8B',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-1-2','1-2','3-1-8B',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-1-3','1-3','3-1-8B',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-1-4','1-4','3-1-8B',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-1-5','1-5','3-1-8B',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-1-6','1-6','3-1-8B',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-1-7','1-7','3-1-8B',34,7,7,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-2-1','2-1','3-1-8B',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-2-2','2-2','3-1-8B',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-2-3','2-3','3-1-8B',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-2-4','2-4','3-1-8B',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-2-5','2-5','3-1-8B',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-2-6','2-6','3-1-8B',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-2-7','2-7','3-1-8B',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-3-1','3-1','3-1-8B',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-3-2','3-2','3-1-8B',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-3-3','3-3','3-1-8B',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-3-4','3-4','3-1-8B',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-3-5','3-5','3-1-8B',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-3-6','3-6','3-1-8B',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-3-7','3-7','3-1-8B',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-4-1','4-1','3-1-8B',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-4-2','4-2','3-1-8B',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-4-3','4-3','3-1-8B',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-4-4','4-4','3-1-8B',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-4-5','4-5','3-1-8B',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-4-6','4-6','3-1-8B',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-4-7','4-7','3-1-8B',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-5-1','5-1','3-1-8B',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-5-2','5-2','3-1-8B',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-5-3','5-3','3-1-8B',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-5-4','5-4','3-1-8B',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-5-5','5-5','3-1-8B',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-5-6','5-6','3-1-8B',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-5-7','5-7','3-1-8B',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-6-1','6-1','3-1-8B',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-6-2','6-2','3-1-8B',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-6-3','6-3','3-1-8B',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-6-4','6-4','3-1-8B',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-6-5','6-5','3-1-8B',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-6-6','6-6','3-1-8B',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-8B-6-7','6-7','3-1-8B',34,42,7,6,0);

-- 3-1-9A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-1-1','1-1','3-1-9A',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-1-2','1-2','3-1-9A',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-1-3','1-3','3-1-9A',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-1-4','1-4','3-1-9A',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-1-5','1-5','3-1-9A',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-1-6','1-6','3-1-9A',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-1-7','1-7','3-1-9A',34,7,7,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-2-1','2-1','3-1-9A',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-2-2','2-2','3-1-9A',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-2-3','2-3','3-1-9A',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-2-4','2-4','3-1-9A',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-2-5','2-5','3-1-9A',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-2-6','2-6','3-1-9A',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-2-7','2-7','3-1-9A',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-3-1','3-1','3-1-9A',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-3-2','3-2','3-1-9A',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-3-3','3-3','3-1-9A',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-3-4','3-4','3-1-9A',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-3-5','3-5','3-1-9A',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-3-6','3-6','3-1-9A',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-3-7','3-7','3-1-9A',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-4-1','4-1','3-1-9A',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-4-2','4-2','3-1-9A',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-4-3','4-3','3-1-9A',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-4-4','4-4','3-1-9A',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-4-5','4-5','3-1-9A',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-4-6','4-6','3-1-9A',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-4-7','4-7','3-1-9A',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-5-1','5-1','3-1-9A',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-5-2','5-2','3-1-9A',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-5-3','5-3','3-1-9A',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-5-4','5-4','3-1-9A',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-5-5','5-5','3-1-9A',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-5-6','5-6','3-1-9A',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-5-7','5-7','3-1-9A',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-6-1','6-1','3-1-9A',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-6-2','6-2','3-1-9A',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-6-3','6-3','3-1-9A',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-6-4','6-4','3-1-9A',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-6-5','6-5','3-1-9A',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-6-6','6-6','3-1-9A',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9A-6-7','6-7','3-1-9A',34,42,7,6,0);


-- 3-1-9B
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-1-1','1-1','3-1-9B',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-1-2','1-2','3-1-9B',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-1-3','1-3','3-1-9B',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-1-4','1-4','3-1-9B',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-1-5','1-5','3-1-9B',34,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-1-6','1-6','3-1-9B',34,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-1-7','1-7','3-1-9B',34,7,7,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-2-1','2-1','3-1-9B',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-2-2','2-2','3-1-9B',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-2-3','2-3','3-1-9B',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-2-4','2-4','3-1-9B',34,11,4,2,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-2-5','2-5','3-1-9B',34,12,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-2-6','2-6','3-1-9B',34,13,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-2-7','2-7','3-1-9B',34,14,7,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-3-1','3-1','3-1-9B',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-3-2','3-2','3-1-9B',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-3-3','3-3','3-1-9B',34,17,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-3-4','3-4','3-1-9B',34,18,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-3-5','3-5','3-1-9B',34,19,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-3-6','3-6','3-1-9B',34,20,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-3-7','3-7','3-1-9B',34,21,7,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-4-1','4-1','3-1-9B',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-4-2','4-2','3-1-9B',34,23,2,4,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-4-3','4-3','3-1-9B',34,24,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-4-4','4-4','3-1-9B',34,25,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-4-5','4-5','3-1-9B',34,26,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-4-6','4-6','3-1-9B',34,27,6,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-4-7','4-7','3-1-9B',34,28,7,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-5-1','5-1','3-1-9B',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-5-2','5-2','3-1-9B',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-5-3','5-3','3-1-9B',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-5-4','5-4','3-1-9B',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-5-5','5-5','3-1-9B',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-5-6','5-6','3-1-9B',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-5-7','5-7','3-1-9B',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-6-1','6-1','3-1-9B',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-6-2','6-2','3-1-9B',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-6-3','6-3','3-1-9B',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-6-4','6-4','3-1-9B',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-6-5','6-5','3-1-9B',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-6-6','6-6','3-1-9B',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-9B-6-7','6-7','3-1-9B',34,42,7,6,0);

-- 3-1-10A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-1-1','1-1','3-1-10A',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-1-2','1-2','3-1-10A',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-1-3','1-3','3-1-10A',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-1-4','1-4','3-1-10A',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-1-5','1-5','3-1-10A',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-1-6','1-6','3-1-10A',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-1-7','1-7','3-1-10A',34,7,7,1,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-2-1','2-1','3-1-10A',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-2-2','2-2','3-1-10A',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-2-3','2-3','3-1-10A',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-2-4','2-4','3-1-10A',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-2-5','2-5','3-1-10A',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-2-6','2-6','3-1-10A',34,13,6,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-2-7','2-7','3-1-10A',34,14,7,2,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-3-1','3-1','3-1-10A',34,15,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-3-2','3-2','3-1-10A',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-3-3','3-3','3-1-10A',34,17,3,3,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-3-4','3-4','3-1-10A',34,18,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-3-5','3-5','3-1-10A',34,19,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-3-6','3-6','3-1-10A',34,20,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-3-7','3-7','3-1-10A',34,21,7,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-4-1','4-1','3-1-10A',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-4-2','4-2','3-1-10A',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-4-3','4-3','3-1-10A',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-4-4','4-4','3-1-10A',34,25,4,4,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-4-5','4-5','3-1-10A',34,26,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-4-6','4-6','3-1-10A',34,27,6,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-4-7','4-7','3-1-10A',34,28,7,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-5-1','5-1','3-1-10A',34,29,1,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-5-2','5-2','3-1-10A',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-5-3','5-3','3-1-10A',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-5-4','5-4','3-1-10A',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-5-5','5-5','3-1-10A',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-5-6','5-6','3-1-10A',34,34,6,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-5-7','5-7','3-1-10A',34,35,7,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-6-1','6-1','3-1-10A',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-6-2','6-2','3-1-10A',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-6-3','6-3','3-1-10A',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-6-4','6-4','3-1-10A',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-6-5','6-5','3-1-10A',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-6-6','6-6','3-1-10A',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10A-6-7','6-7','3-1-10A',34,42,7,6,0);


-- 3-1-10B
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-1-1','1-1','3-1-10B',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-1-2','1-2','3-1-10B',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-1-3','1-3','3-1-10B',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-1-4','1-4','3-1-10B',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-1-5','1-5','3-1-10B',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-1-6','1-6','3-1-10B',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-1-7','1-7','3-1-10B',34,7,7,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-2-1','2-1','3-1-10B',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-2-2','2-2','3-1-10B',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-2-3','2-3','3-1-10B',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-2-4','2-4','3-1-10B',34,11,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-2-5','2-5','3-1-10B',34,12,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-2-6','2-6','3-1-10B',34,13,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-2-7','2-7','3-1-10B',34,14,7,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-3-1','3-1','3-1-10B',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-3-2','3-2','3-1-10B',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-3-3','3-3','3-1-10B',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-3-4','3-4','3-1-10B',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-3-5','3-5','3-1-10B',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-3-6','3-6','3-1-10B',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-3-7','3-7','3-1-10B',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-4-1','4-1','3-1-10B',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-4-2','4-2','3-1-10B',34,23,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-4-3','4-3','3-1-10B',34,24,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-4-4','4-4','3-1-10B',34,25,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-4-5','4-5','3-1-10B',34,26,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-4-6','4-6','3-1-10B',34,27,6,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-4-7','4-7','3-1-10B',34,28,7,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-5-1','5-1','3-1-10B',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-5-2','5-2','3-1-10B',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-5-3','5-3','3-1-10B',34,31,3,5,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-5-4','5-4','3-1-10B',34,32,4,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-5-5','5-5','3-1-10B',34,33,5,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-5-6','5-6','3-1-10B',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-5-7','5-7','3-1-10B',34,35,7,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-6-1','6-1','3-1-10B',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-6-2','6-2','3-1-10B',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-6-3','6-3','3-1-10B',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-6-4','6-4','3-1-10B',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-6-5','6-5','3-1-10B',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-6-6','6-6','3-1-10B',34,41,6,6,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-10B-6-7','6-7','3-1-10B',34,42,7,6,100);


-- 3-1-11A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-1-1','1-1','3-1-11A',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-1-2','1-2','3-1-11A',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-1-3','1-3','3-1-11A',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-1-4','1-4','3-1-11A',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-1-5','1-5','3-1-11A',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-1-6','1-6','3-1-11A',34,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-1-7','1-7','3-1-11A',34,7,7,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-2-1','2-1','3-1-11A',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-2-2','2-2','3-1-11A',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-2-3','2-3','3-1-11A',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-2-4','2-4','3-1-11A',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-2-5','2-5','3-1-11A',34,12,5,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-2-6','2-6','3-1-11A',34,13,6,2,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-2-7','2-7','3-1-11A',34,14,7,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-3-1','3-1','3-1-11A',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-3-2','3-2','3-1-11A',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-3-3','3-3','3-1-11A',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-3-4','3-4','3-1-11A',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-3-5','3-5','3-1-11A',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-3-6','3-6','3-1-11A',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-3-7','3-7','3-1-11A',34,21,7,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-4-1','4-1','3-1-11A',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-4-2','4-2','3-1-11A',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-4-3','4-3','3-1-11A',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-4-4','4-4','3-1-11A',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-4-5','4-5','3-1-11A',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-4-6','4-6','3-1-11A',34,27,6,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-4-7','4-7','3-1-11A',34,28,7,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-5-1','5-1','3-1-11A',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-5-2','5-2','3-1-11A',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-5-3','5-3','3-1-11A',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-5-4','5-4','3-1-11A',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-5-5','5-5','3-1-11A',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-5-6','5-6','3-1-11A',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-5-7','5-7','3-1-11A',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-6-1','6-1','3-1-11A',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-6-2','6-2','3-1-11A',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-6-3','6-3','3-1-11A',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-6-4','6-4','3-1-11A',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-6-5','6-5','3-1-11A',34,40,5,6,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-6-6','6-6','3-1-11A',34,41,6,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11A-6-7','6-7','3-1-11A',34,42,7,6,100);


-- 3-1-11B
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-1-1','1-1','3-1-11B',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-1-2','1-2','3-1-11B',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-1-3','1-3','3-1-11B',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-1-4','1-4','3-1-11B',34,4,4,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-1-5','1-5','3-1-11B',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-1-6','1-6','3-1-11B',34,6,6,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-1-7','1-7','3-1-11B',34,7,7,1,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-2-1','2-1','3-1-11B',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-2-2','2-2','3-1-11B',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-2-3','2-3','3-1-11B',34,10,3,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-2-4','2-4','3-1-11B',34,11,4,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-2-5','2-5','3-1-11B',34,12,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-2-6','2-6','3-1-11B',34,13,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-2-7','2-7','3-1-11B',34,14,7,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-3-1','3-1','3-1-11B',34,15,1,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-3-2','3-2','3-1-11B',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-3-3','3-3','3-1-11B',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-3-4','3-4','3-1-11B',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-3-5','3-5','3-1-11B',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-3-6','3-6','3-1-11B',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-3-7','3-7','3-1-11B',34,21,7,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-4-1','4-1','3-1-11B',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-4-2','4-2','3-1-11B',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-4-3','4-3','3-1-11B',34,24,3,4,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-4-4','4-4','3-1-11B',34,25,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-4-5','4-5','3-1-11B',34,26,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-4-6','4-6','3-1-11B',34,27,6,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-4-7','4-7','3-1-11B',34,28,7,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-5-1','5-1','3-1-11B',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-5-2','5-2','3-1-11B',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-5-3','5-3','3-1-11B',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-5-4','5-4','3-1-11B',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-5-5','5-5','3-1-11B',34,33,5,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-5-6','5-6','3-1-11B',34,34,6,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-5-7','5-7','3-1-11B',34,35,7,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-6-1','6-1','3-1-11B',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-6-2','6-2','3-1-11B',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-6-3','6-3','3-1-11B',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-6-4','6-4','3-1-11B',34,39,4,6,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-6-5','6-5','3-1-11B',34,40,5,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-6-6','6-6','3-1-11B',34,41,6,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-11B-6-7','6-7','3-1-11B',34,42,7,6,100);

-- 3-1-12A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-1-1','1-1','3-1-12A',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-1-2','1-2','3-1-12A',34,2,2,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-1-3','1-3','3-1-12A',34,3,3,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-1-4','1-4','3-1-12A',34,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-1-5','1-5','3-1-12A',34,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-1-6','1-6','3-1-12A',34,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-1-7','1-7','3-1-12A',34,7,7,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-2-1','2-1','3-1-12A',34,8,1,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-2-2','2-2','3-1-12A',34,9,2,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-2-3','2-3','3-1-12A',34,10,3,2,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-2-4','2-4','3-1-12A',34,11,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-2-5','2-5','3-1-12A',34,12,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-2-6','2-6','3-1-12A',34,13,6,2,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-2-7','2-7','3-1-12A',34,14,7,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-3-1','3-1','3-1-12A',34,15,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-3-2','3-2','3-1-12A',34,16,2,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-3-3','3-3','3-1-12A',34,17,3,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-3-4','3-4','3-1-12A',34,18,4,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-3-5','3-5','3-1-12A',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-3-6','3-6','3-1-12A',34,20,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-3-7','3-7','3-1-12A',34,21,7,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-4-1','4-1','3-1-12A',34,22,1,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-4-2','4-2','3-1-12A',34,23,2,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-4-3','4-3','3-1-12A',34,24,3,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-4-4','4-4','3-1-12A',34,25,4,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-4-5','4-5','3-1-12A',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-4-6','4-6','3-1-12A',34,27,6,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-4-7','4-7','3-1-12A',34,28,7,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-5-1','5-1','3-1-12A',34,29,1,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-5-2','5-2','3-1-12A',34,30,2,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-5-3','5-3','3-1-12A',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-5-4','5-4','3-1-12A',34,32,4,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-5-5','5-5','3-1-12A',34,33,5,5,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-5-6','5-6','3-1-12A',34,34,6,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-5-7','5-7','3-1-12A',34,35,7,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-6-1','6-1','3-1-12A',34,36,1,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-6-2','6-2','3-1-12A',34,37,2,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-6-3','6-3','3-1-12A',34,38,3,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-6-4','6-4','3-1-12A',34,39,4,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-6-5','6-5','3-1-12A',34,40,5,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-6-6','6-6','3-1-12A',34,41,6,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12A-6-7','6-7','3-1-12A',34,42,7,6,100);

-- 3-1-12B
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-1-1','1-1','3-1-12B',34,1,1,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-1-2','1-2','3-1-12B',34,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-1-3','1-3','3-1-12B',34,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-1-4','1-4','3-1-12B',34,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-1-5','1-5','3-1-12B',34,5,5,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-1-6','1-6','3-1-12B',34,6,6,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-1-7','1-7','3-1-12B',34,7,7,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-2-1','2-1','3-1-12B',34,8,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-2-2','2-2','3-1-12B',34,9,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-2-3','2-3','3-1-12B',34,10,3,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-2-4','2-4','3-1-12B',34,11,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-2-5','2-5','3-1-12B',34,12,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-2-6','2-6','3-1-12B',34,13,6,2,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-2-7','2-7','3-1-12B',34,14,7,2,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-3-1','3-1','3-1-12B',34,15,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-3-2','3-2','3-1-12B',34,16,2,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-3-3','3-3','3-1-12B',34,17,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-3-4','3-4','3-1-12B',34,18,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-3-5','3-5','3-1-12B',34,19,5,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-3-6','3-6','3-1-12B',34,20,6,3,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-3-7','3-7','3-1-12B',34,21,7,3,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-4-1','4-1','3-1-12B',34,22,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-4-2','4-2','3-1-12B',34,23,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-4-3','4-3','3-1-12B',34,24,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-4-4','4-4','3-1-12B',34,25,4,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-4-5','4-5','3-1-12B',34,26,5,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-4-6','4-6','3-1-12B',34,27,6,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-4-7','4-7','3-1-12B',34,28,7,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-5-1','5-1','3-1-12B',34,29,1,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-5-2','5-2','3-1-12B',34,30,2,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-5-3','5-3','3-1-12B',34,31,3,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-5-4','5-4','3-1-12B',34,32,4,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-5-5','5-5','3-1-12B',34,33,5,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-5-6','5-6','3-1-12B',34,34,6,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-5-7','5-7','3-1-12B',34,35,7,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-6-1','6-1','3-1-12B',34,36,1,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-6-2','6-2','3-1-12B',34,37,2,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-6-3','6-3','3-1-12B',34,38,3,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-6-4','6-4','3-1-12B',34,39,4,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-6-5','6-5','3-1-12B',34,40,5,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-6-6','6-6','3-1-12B',34,41,6,6,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-12B-6-7','6-7','3-1-12B',34,42,7,6,100);

-- 3-1-13A
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-1-1','1-1','3-1-13A',34,1,1,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-1-2','1-2','3-1-13A',34,2,2,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-1-3','1-3','3-1-13A',34,3,3,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-1-4','1-4','3-1-13A',34,4,4,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-1-5','1-5','3-1-13A',34,5,5,1,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-1-6','1-6','3-1-13A',34,6,6,1,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-1-7','1-7','3-1-13A',34,7,7,1,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-2-1','2-1','3-1-13A',34,8,1,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-2-2','2-2','3-1-13A',34,9,2,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-2-3','2-3','3-1-13A',34,10,3,2,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-2-4','2-4','3-1-13A',34,11,4,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-2-5','2-5','3-1-13A',34,12,5,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-2-6','2-6','3-1-13A',34,13,6,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-2-7','2-7','3-1-13A',34,14,7,2,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-3-1','3-1','3-1-13A',34,15,1,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-3-2','3-2','3-1-13A',34,16,2,3,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-3-3','3-3','3-1-13A',34,17,3,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-3-4','3-4','3-1-13A',34,18,4,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-3-5','3-5','3-1-13A',34,19,5,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-3-6','3-6','3-1-13A',34,20,6,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-3-7','3-7','3-1-13A',34,21,7,3,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-4-1','4-1','3-1-13A',34,22,1,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-4-2','4-2','3-1-13A',34,23,2,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-4-3','4-3','3-1-13A',34,24,3,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-4-4','4-4','3-1-13A',34,25,4,4,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-4-5','4-5','3-1-13A',34,26,5,4,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-4-6','4-6','3-1-13A',34,27,6,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-4-7','4-7','3-1-13A',34,28,7,4,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-5-1','5-1','3-1-13A',34,29,1,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-5-2','5-2','3-1-13A',34,30,2,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-5-3','5-3','3-1-13A',34,31,3,5,0);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-5-4','5-4','3-1-13A',34,32,4,5,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-5-5','5-5','3-1-13A',34,33,5,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-5-6','5-6','3-1-13A',34,34,6,5,50);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-5-7','5-7','3-1-13A',34,35,7,5,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-6-1','6-1','3-1-13A',34,36,1,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-6-2','6-2','3-1-13A',34,37,2,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-6-3','6-3','3-1-13A',34,38,3,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-6-4','6-4','3-1-13A',34,39,4,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-6-5','6-5','3-1-13A',34,40,5,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-6-6','6-6','3-1-13A',34,41,6,6,100);
INSERT INTO CELL(CELL_ID,NAME,CABINET_ID,_SIZE,SEQ,_ROW,_COL,PERCENTAGE) VALUES('3-1-13A-6-7','6-7','3-1-13A',34,42,7,6,100);
