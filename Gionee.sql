???prompt PL/SQL Developer import file
prompt Created on 2018年10月24日 星期三 by Administrator
set feedback off
set define off
prompt Creating ACCTYPE...
create table ACCTYPE
(
  acctype_id     INTEGER not null,
  acctype_name   VARCHAR2(20),
  acctype_status NUMBER(1)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table ACCTYPE
  add constraint PK_ACCTYPE primary key (ACCTYPE_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating CITY...
create table CITY
(
  city_id     INTEGER not null,
  province_id INTEGER,
  city_name   VARCHAR2(100)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table CITY
  add constraint PK_CITY primary key (CITY_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating FOOTPRINT...
create table FOOTPRINT
(
  footprint_id NUMBER(6) not null,
  pro_id       NUMBER(6),
  user_id      NUMBER(6)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table FOOTPRINT
  add constraint PK_FOOTPRINT primary key (FOOTPRINT_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating ITEMS...
create table ITEMS
(
  item_id    INTEGER not null,
  order_id   INTEGER,
  pro_id     INTEGER,
  item_count NUMBER(6)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table ITEMS
  add constraint PK_ITEMS primary key (ITEM_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating MODELS...
create table MODELS
(
  model_id     INTEGER not null,
  model_name   VARCHAR2(20),
  model_status NUMBER(1)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table MODELS
  add constraint PK_MODELS primary key (MODEL_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating NEWS...
create table NEWS
(
  news_id      INTEGER not null,
  news_title   VARCHAR2(100),
  news_content VARCHAR2(4000),
  news_status  NUMBER(1),
  news_views   NUMBER(10)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table NEWS
  add constraint PK_NEWS primary key (NEWS_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating ORDERS...
create table ORDERS
(
  order_id       INTEGER not null,
  useraddress_id INTEGER,
  user_id        INTEGER,
  order_date     VARCHAR2(30),
  order_status   NUMBER(1)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table ORDERS
  add constraint PK_ORDERS primary key (ORDER_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating PIC...
create table PIC
(
  pic_id     INTEGER not null,
  pic_path   VARCHAR2(100),
  pro_id     INTEGER,
  pic_status NUMBER(1)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table PIC
  add constraint PK_PIC primary key (PIC_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating PRODUCTS...
create table PRODUCTS
(
  pro_id           INTEGER not null,
  series_id        INTEGER,
  acctype_id       INTEGER,
  model_id         INTEGER,
  type_id          INTEGER,
  pro_name         VARCHAR2(200),
  pro_detail       VARCHAR2(1000),
  pro_price        NUMBER(9,2),
  pro_pic          VARCHAR2(200),
  pro_star         VARCHAR2(50),
  pro_time         VARCHAR2(50),
  pro_os           VARCHAR2(100),
  pro_memory       VARCHAR2(20),
  pro_space        VARCHAR2(20),
  pro_beforecamera VARCHAR2(30),
  pro_aftercamera  VARCHAR2(30),
  pro_bluetooth    VARCHAR2(20),
  pro_model        VARCHAR2(30),
  pro_output       VARCHAR2(20),
  pro_interface    VARCHAR2(20),
  pro_color        VARCHAR2(500),
  pro_size         VARCHAR2(50),
  pro_length       VARCHAR2(50),
  pro_type         VARCHAR2(30),
  pro_status       NUMBER(1),
  pro_class        NUMBER(1),
  pro_sales        NUMBER(10),
  pro_starimg      VARCHAR2(200),
  pro_packing      VARCHAR2(4000)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table PRODUCTS
  add constraint PK_PRODUCTS primary key (PRO_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating PROVINCE...
create table PROVINCE
(
  province_id   INTEGER not null,
  province_name VARCHAR2(20)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table PROVINCE
  add constraint PK_PROVINCE primary key (PROVINCE_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SERIES...
create table SERIES
(
  series_id     INTEGER not null,
  series_name   VARCHAR2(20),
  series_status NUMBER(1)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SERIES
  add constraint PK_SERIES primary key (SERIES_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating SHOPPINGCAR...
create table SHOPPINGCAR
(
  shopping_id    INTEGER not null,
  pro_id         INTEGER,
  user_id        INTEGER,
  shopping_count NUMBER(6)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table SHOPPINGCAR
  add constraint PK_SHOPPINGCAR primary key (SHOPPING_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating TYPES...
create table TYPES
(
  type_id     INTEGER not null,
  type_name   VARCHAR2(20),
  type_status NUMBER(1)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TYPES
  add constraint PK_TYPES primary key (TYPE_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating USERADDRESS...
create table USERADDRESS
(
  useraddress_id     INTEGER not null,
  useraddress        VARCHAR2(500),
  useraddress_status NUMBER(1),
  useraddress_rname  VARCHAR2(20),
  user_tel           VARCHAR2(20),
  province_id        NUMBER(6),
  city_id            NUMBER(6),
  user_id            NUMBER(6)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table USERADDRESS
  add constraint PK_USERADDRESS primary key (USERADDRESS_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Creating USERS...
create table USERS
(
  user_id       INTEGER not null,
  user_name     VARCHAR2(50),
  user_account  VARCHAR2(50),
  user_pwd      VARCHAR2(50),
  user_sex      NUMBER(1),
  user_birthday VARCHAR2(50),
  user_tel      VARCHAR2(50),
  user_states   NUMBER(1),
  user_status   NUMBER(1)
)
tablespace JINLISPACE
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table USERS
  add constraint PK_USERS primary key (USER_ID)
  using index 
  tablespace JINLISPACE
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt Disabling triggers for ACCTYPE...
alter table ACCTYPE disable all triggers;
prompt Disabling triggers for CITY...
alter table CITY disable all triggers;
prompt Disabling triggers for FOOTPRINT...
alter table FOOTPRINT disable all triggers;
prompt Disabling triggers for ITEMS...
alter table ITEMS disable all triggers;
prompt Disabling triggers for MODELS...
alter table MODELS disable all triggers;
prompt Disabling triggers for NEWS...
alter table NEWS disable all triggers;
prompt Disabling triggers for ORDERS...
alter table ORDERS disable all triggers;
prompt Disabling triggers for PIC...
alter table PIC disable all triggers;
prompt Disabling triggers for PRODUCTS...
alter table PRODUCTS disable all triggers;
prompt Disabling triggers for PROVINCE...
alter table PROVINCE disable all triggers;
prompt Disabling triggers for SERIES...
alter table SERIES disable all triggers;
prompt Disabling triggers for SHOPPINGCAR...
alter table SHOPPINGCAR disable all triggers;
prompt Disabling triggers for TYPES...
alter table TYPES disable all triggers;
prompt Disabling triggers for USERADDRESS...
alter table USERADDRESS disable all triggers;
prompt Disabling triggers for USERS...
alter table USERS disable all triggers;
prompt Deleting USERS...
delete from USERS;
commit;
prompt Deleting USERADDRESS...
delete from USERADDRESS;
commit;
prompt Deleting TYPES...
delete from TYPES;
commit;
prompt Deleting SHOPPINGCAR...
delete from SHOPPINGCAR;
commit;
prompt Deleting SERIES...
delete from SERIES;
commit;
prompt Deleting PROVINCE...
delete from PROVINCE;
commit;
prompt Deleting PRODUCTS...
delete from PRODUCTS;
commit;
prompt Deleting PIC...
delete from PIC;
commit;
prompt Deleting ORDERS...
delete from ORDERS;
commit;
prompt Deleting NEWS...
delete from NEWS;
commit;
prompt Deleting MODELS...
delete from MODELS;
commit;
prompt Deleting ITEMS...
delete from ITEMS;
commit;
prompt Deleting FOOTPRINT...
delete from FOOTPRINT;
commit;
prompt Deleting CITY...
delete from CITY;
commit;
prompt Deleting ACCTYPE...
delete from ACCTYPE;
commit;
prompt Loading ACCTYPE...
insert into ACCTYPE (acctype_id, acctype_name, acctype_status)
values (1, '后盖', 1);
insert into ACCTYPE (acctype_id, acctype_name, acctype_status)
values (2, '保护壳/套', 1);
insert into ACCTYPE (acctype_id, acctype_name, acctype_status)
values (3, '电池', 1);
insert into ACCTYPE (acctype_id, acctype_name, acctype_status)
values (4, '耳机', 1);
insert into ACCTYPE (acctype_id, acctype_name, acctype_status)
values (5, '数据线', 1);
insert into ACCTYPE (acctype_id, acctype_name, acctype_status)
values (6, '保护膜', 1);
insert into ACCTYPE (acctype_id, acctype_name, acctype_status)
values (7, '充电器', 1);
insert into ACCTYPE (acctype_id, acctype_name, acctype_status)
values (8, '移动电源', 1);
insert into ACCTYPE (acctype_id, acctype_name, acctype_status)
values (9, '无线传输', 1);
insert into ACCTYPE (acctype_id, acctype_name, acctype_status)
values (10, '自拍杆', 1);
commit;
prompt 10 records loaded
prompt Loading CITY...
insert into CITY (city_id, province_id, city_name)
values (455, 21, '江都');
insert into CITY (city_id, province_id, city_name)
values (456, 21, '江阴');
insert into CITY (city_id, province_id, city_name)
values (457, 21, '靖江');
insert into CITY (city_id, province_id, city_name)
values (458, 21, '昆山');
insert into CITY (city_id, province_id, city_name)
values (459, 21, '溧阳');
insert into CITY (city_id, province_id, city_name)
values (460, 21, '太仓');
insert into CITY (city_id, province_id, city_name)
values (461, 21, '泰州华');
insert into CITY (city_id, province_id, city_name)
values (462, 21, '吴江');
insert into CITY (city_id, province_id, city_name)
values (463, 21, '吴县');
insert into CITY (city_id, province_id, city_name)
values (464, 21, '宜兴');
insert into CITY (city_id, province_id, city_name)
values (465, 21, '张家港');
insert into CITY (city_id, province_id, city_name)
values (82, 22, '杭州');
insert into CITY (city_id, province_id, city_name)
values (304, 22, '宁波');
insert into CITY (city_id, province_id, city_name)
values (305, 22, '温州');
insert into CITY (city_id, province_id, city_name)
values (306, 22, '嘉兴');
insert into CITY (city_id, province_id, city_name)
values (307, 22, '湖州');
insert into CITY (city_id, province_id, city_name)
values (308, 22, '绍兴');
insert into CITY (city_id, province_id, city_name)
values (309, 22, '金华');
insert into CITY (city_id, province_id, city_name)
values (310, 22, '衢州');
insert into CITY (city_id, province_id, city_name)
values (311, 22, '舟山');
insert into CITY (city_id, province_id, city_name)
values (312, 22, '台州');
insert into CITY (city_id, province_id, city_name)
values (313, 22, '丽水');
insert into CITY (city_id, province_id, city_name)
values (514, 22, '慈溪');
insert into CITY (city_id, province_id, city_name)
values (515, 22, '东阳');
insert into CITY (city_id, province_id, city_name)
values (516, 22, '奉化');
insert into CITY (city_id, province_id, city_name)
values (517, 22, '乐清');
insert into CITY (city_id, province_id, city_name)
values (518, 22, '临安');
insert into CITY (city_id, province_id, city_name)
values (519, 22, '临海');
insert into CITY (city_id, province_id, city_name)
values (520, 22, '平湖');
insert into CITY (city_id, province_id, city_name)
values (521, 22, '瑞安');
insert into CITY (city_id, province_id, city_name)
values (522, 22, '上虞');
insert into CITY (city_id, province_id, city_name)
values (523, 22, '嵊州');
insert into CITY (city_id, province_id, city_name)
values (524, 22, '温岭');
insert into CITY (city_id, province_id, city_name)
values (525, 22, '义乌');
insert into CITY (city_id, province_id, city_name)
values (526, 22, '永康');
insert into CITY (city_id, province_id, city_name)
values (527, 22, '余姚');
insert into CITY (city_id, province_id, city_name)
values (528, 22, '诸暨');
insert into CITY (city_id, province_id, city_name)
values (529, 22, '新昌');
insert into CITY (city_id, province_id, city_name)
values (83, 23, '南昌');
insert into CITY (city_id, province_id, city_name)
values (314, 23, '景德镇');
insert into CITY (city_id, province_id, city_name)
values (315, 23, '萍乡');
insert into CITY (city_id, province_id, city_name)
values (316, 23, '新余');
insert into CITY (city_id, province_id, city_name)
values (317, 23, '九江');
insert into CITY (city_id, province_id, city_name)
values (318, 23, '鹰潭');
insert into CITY (city_id, province_id, city_name)
values (319, 23, '赣州');
insert into CITY (city_id, province_id, city_name)
values (320, 23, '吉安');
insert into CITY (city_id, province_id, city_name)
values (321, 23, '宜春');
insert into CITY (city_id, province_id, city_name)
values (322, 23, '抚州');
insert into CITY (city_id, province_id, city_name)
values (323, 23, '上饶');
insert into CITY (city_id, province_id, city_name)
values (466, 23, '高安');
insert into CITY (city_id, province_id, city_name)
values (84, 24, '广州');
insert into CITY (city_id, province_id, city_name)
values (85, 24, '深圳');
insert into CITY (city_id, province_id, city_name)
values (324, 24, '珠海');
insert into CITY (city_id, province_id, city_name)
values (325, 24, '汕头');
insert into CITY (city_id, province_id, city_name)
values (326, 24, '韶关');
insert into CITY (city_id, province_id, city_name)
values (327, 24, '河源');
insert into CITY (city_id, province_id, city_name)
values (328, 24, '梅州');
insert into CITY (city_id, province_id, city_name)
values (329, 24, '惠州');
insert into CITY (city_id, province_id, city_name)
values (330, 24, '汕尾');
insert into CITY (city_id, province_id, city_name)
values (331, 24, '东莞');
insert into CITY (city_id, province_id, city_name)
values (332, 24, '中山');
insert into CITY (city_id, province_id, city_name)
values (333, 24, '江门');
insert into CITY (city_id, province_id, city_name)
values (334, 24, '佛山');
insert into CITY (city_id, province_id, city_name)
values (335, 24, '阳江');
insert into CITY (city_id, province_id, city_name)
values (336, 24, '湛江');
insert into CITY (city_id, province_id, city_name)
values (337, 24, '茂名');
insert into CITY (city_id, province_id, city_name)
values (338, 24, '肇庆');
insert into CITY (city_id, province_id, city_name)
values (339, 24, '清远');
insert into CITY (city_id, province_id, city_name)
values (340, 24, '潮州');
insert into CITY (city_id, province_id, city_name)
values (341, 24, '揭阳');
insert into CITY (city_id, province_id, city_name)
values (342, 24, '云浮');
insert into CITY (city_id, province_id, city_name)
values (424, 24, '花都');
insert into CITY (city_id, province_id, city_name)
values (425, 24, '开平');
insert into CITY (city_id, province_id, city_name)
values (426, 24, '南海');
insert into CITY (city_id, province_id, city_name)
values (427, 24, '顺德');
insert into CITY (city_id, province_id, city_name)
values (428, 24, '台山');
insert into CITY (city_id, province_id, city_name)
values (429, 24, '增城');
insert into CITY (city_id, province_id, city_name)
values (431, 24, '市梅');
insert into CITY (city_id, province_id, city_name)
values (86, 25, '南宁');
insert into CITY (city_id, province_id, city_name)
values (343, 25, '柳州');
insert into CITY (city_id, province_id, city_name)
values (344, 25, '桂林');
insert into CITY (city_id, province_id, city_name)
values (345, 25, '梧州');
insert into CITY (city_id, province_id, city_name)
values (346, 25, '北海');
insert into CITY (city_id, province_id, city_name)
values (347, 25, '防城港');
insert into CITY (city_id, province_id, city_name)
values (348, 25, '钦州');
insert into CITY (city_id, province_id, city_name)
values (349, 25, '贵港');
insert into CITY (city_id, province_id, city_name)
values (350, 25, '玉林');
insert into CITY (city_id, province_id, city_name)
values (351, 25, '百色');
insert into CITY (city_id, province_id, city_name)
values (352, 25, '贺州');
insert into CITY (city_id, province_id, city_name)
values (353, 25, '河池');
insert into CITY (city_id, province_id, city_name)
values (354, 25, '来宾');
insert into CITY (city_id, province_id, city_name)
values (355, 25, '崇左');
insert into CITY (city_id, province_id, city_name)
values (87, 26, '福州');
insert into CITY (city_id, province_id, city_name)
values (88, 26, '厦门');
insert into CITY (city_id, province_id, city_name)
values (356, 26, '三明');
insert into CITY (city_id, province_id, city_name)
values (357, 26, '莆田');
insert into CITY (city_id, province_id, city_name)
values (358, 26, '泉州');
insert into CITY (city_id, province_id, city_name)
values (359, 26, '漳州');
insert into CITY (city_id, province_id, city_name)
values (360, 26, '南平');
insert into CITY (city_id, province_id, city_name)
values (361, 26, '龙岩');
commit;
prompt 100 records committed...
insert into CITY (city_id, province_id, city_name)
values (362, 26, '宁德');
insert into CITY (city_id, province_id, city_name)
values (415, 26, '福清');
insert into CITY (city_id, province_id, city_name)
values (416, 26, '建瓯');
insert into CITY (city_id, province_id, city_name)
values (417, 26, '晋江');
insert into CITY (city_id, province_id, city_name)
values (418, 26, '南安');
insert into CITY (city_id, province_id, city_name)
values (419, 26, '邵武');
insert into CITY (city_id, province_id, city_name)
values (420, 26, '石狮');
insert into CITY (city_id, province_id, city_name)
values (421, 26, '仙游');
insert into CITY (city_id, province_id, city_name)
values (89, 27, '成都');
insert into CITY (city_id, province_id, city_name)
values (363, 27, '自贡');
insert into CITY (city_id, province_id, city_name)
values (364, 27, '攀枝花');
insert into CITY (city_id, province_id, city_name)
values (365, 27, '泸州');
insert into CITY (city_id, province_id, city_name)
values (366, 27, '德阳');
insert into CITY (city_id, province_id, city_name)
values (367, 27, '绵阳');
insert into CITY (city_id, province_id, city_name)
values (368, 27, '广元');
insert into CITY (city_id, province_id, city_name)
values (369, 27, '遂宁');
insert into CITY (city_id, province_id, city_name)
values (370, 27, '内江');
insert into CITY (city_id, province_id, city_name)
values (371, 27, '乐山');
insert into CITY (city_id, province_id, city_name)
values (372, 27, '南充');
insert into CITY (city_id, province_id, city_name)
values (373, 27, '宜宾');
insert into CITY (city_id, province_id, city_name)
values (374, 27, '广安');
insert into CITY (city_id, province_id, city_name)
values (375, 27, '达州');
insert into CITY (city_id, province_id, city_name)
values (376, 27, '巴中');
insert into CITY (city_id, province_id, city_name)
values (377, 27, '雅安');
insert into CITY (city_id, province_id, city_name)
values (378, 27, '眉山');
insert into CITY (city_id, province_id, city_name)
values (379, 27, '资阳');
insert into CITY (city_id, province_id, city_name)
values (380, 27, '阿坝藏族羌族自治州');
insert into CITY (city_id, province_id, city_name)
values (381, 27, '甘孜藏族自治州');
insert into CITY (city_id, province_id, city_name)
values (382, 27, '凉山彝族自治州');
insert into CITY (city_id, province_id, city_name)
values (497, 27, '广汉');
insert into CITY (city_id, province_id, city_name)
values (498, 27, '锦阳');
insert into CITY (city_id, province_id, city_name)
values (499, 27, '西昌');
insert into CITY (city_id, province_id, city_name)
values (90, 28, '昆明');
insert into CITY (city_id, province_id, city_name)
values (383, 28, '曲靖');
insert into CITY (city_id, province_id, city_name)
values (384, 28, '玉溪');
insert into CITY (city_id, province_id, city_name)
values (385, 28, '保山');
insert into CITY (city_id, province_id, city_name)
values (386, 28, '昭通');
insert into CITY (city_id, province_id, city_name)
values (387, 28, '思茅地区');
insert into CITY (city_id, province_id, city_name)
values (388, 28, '临沧地区');
insert into CITY (city_id, province_id, city_name)
values (389, 28, '丽江');
insert into CITY (city_id, province_id, city_name)
values (390, 28, ' 文山壮族苗族自治州');
insert into CITY (city_id, province_id, city_name)
values (391, 28, '红河哈尼族彝族自治州');
insert into CITY (city_id, province_id, city_name)
values (392, 28, '西双版纳傣族自治州');
insert into CITY (city_id, province_id, city_name)
values (393, 28, '楚雄彝族自治州');
insert into CITY (city_id, province_id, city_name)
values (394, 28, '大理白族自治州');
insert into CITY (city_id, province_id, city_name)
values (395, 28, '德宏傣族景颇族自治州');
insert into CITY (city_id, province_id, city_name)
values (396, 28, '怒江傈傈族自治州');
insert into CITY (city_id, province_id, city_name)
values (397, 28, '迪庆藏族自治州');
insert into CITY (city_id, province_id, city_name)
values (513, 28, '大理');
insert into CITY (city_id, province_id, city_name)
values (91, 29, '贵阳');
insert into CITY (city_id, province_id, city_name)
values (398, 29, '六盘水');
insert into CITY (city_id, province_id, city_name)
values (399, 29, '遵义');
insert into CITY (city_id, province_id, city_name)
values (400, 29, '安顺');
insert into CITY (city_id, province_id, city_name)
values (401, 29, '铜仁地区');
insert into CITY (city_id, province_id, city_name)
values (402, 29, '毕节地区');
insert into CITY (city_id, province_id, city_name)
values (403, 29, '黔西南布依族苗族自治' || chr(10) || '州');
insert into CITY (city_id, province_id, city_name)
values (404, 29, '黔东南苗族侗族自治州');
insert into CITY (city_id, province_id, city_name)
values (405, 29, '黔南布依族苗族自治州');
insert into CITY (city_id, province_id, city_name)
values (432, 29, '都匀');
insert into CITY (city_id, province_id, city_name)
values (433, 29, '贵恙');
insert into CITY (city_id, province_id, city_name)
values (434, 29, '凯里');
insert into CITY (city_id, province_id, city_name)
values (435, 29, '铜仁');
insert into CITY (city_id, province_id, city_name)
values (92, 30, '拉萨');
insert into CITY (city_id, province_id, city_name)
values (406, 30, '那曲地区');
insert into CITY (city_id, province_id, city_name)
values (407, 30, '昌都地区');
insert into CITY (city_id, province_id, city_name)
values (408, 30, '山南地区');
insert into CITY (city_id, province_id, city_name)
values (409, 30, '日喀则地区');
insert into CITY (city_id, province_id, city_name)
values (410, 30, '阿里地区');
insert into CITY (city_id, province_id, city_name)
values (411, 30, '林芝地区');
insert into CITY (city_id, province_id, city_name)
values (93, 31, '海口');
insert into CITY (city_id, province_id, city_name)
values (94, 31, '三亚');
insert into CITY (city_id, province_id, city_name)
values (95, 32, '香港');
insert into CITY (city_id, province_id, city_name)
values (96, 33, '澳门');
insert into CITY (city_id, province_id, city_name)
values (97, 34, '台北');
insert into CITY (city_id, province_id, city_name)
values (98, 34, '高雄');
insert into CITY (city_id, province_id, city_name)
values (99, 34, '台中');
insert into CITY (city_id, province_id, city_name)
values (100, 34, '台南');
insert into CITY (city_id, province_id, city_name)
values (101, 34, '基隆');
insert into CITY (city_id, province_id, city_name)
values (102, 34, '新竹');
insert into CITY (city_id, province_id, city_name)
values (1, 1, '东城区');
insert into CITY (city_id, province_id, city_name)
values (2, 1, '西城区');
insert into CITY (city_id, province_id, city_name)
values (3, 1, '宣武区');
insert into CITY (city_id, province_id, city_name)
values (4, 1, '崇文区');
insert into CITY (city_id, province_id, city_name)
values (5, 1, '朝阳区');
insert into CITY (city_id, province_id, city_name)
values (6, 1, '海淀区');
insert into CITY (city_id, province_id, city_name)
values (7, 1, '丰台区');
insert into CITY (city_id, province_id, city_name)
values (8, 1, '石景山区');
insert into CITY (city_id, province_id, city_name)
values (9, 1, '门头沟区');
insert into CITY (city_id, province_id, city_name)
values (10, 1, '昌平区');
insert into CITY (city_id, province_id, city_name)
values (11, 1, '大兴区');
insert into CITY (city_id, province_id, city_name)
values (12, 1, '怀柔区');
insert into CITY (city_id, province_id, city_name)
values (13, 1, '密云县');
insert into CITY (city_id, province_id, city_name)
values (14, 1, '平谷区');
insert into CITY (city_id, province_id, city_name)
values (15, 1, '顺义区');
insert into CITY (city_id, province_id, city_name)
values (16, 1, '通州区');
insert into CITY (city_id, province_id, city_name)
values (17, 1, '延庆县');
insert into CITY (city_id, province_id, city_name)
values (103, 1, '房山区');
insert into CITY (city_id, province_id, city_name)
values (18, 2, '黄浦区');
insert into CITY (city_id, province_id, city_name)
values (19, 2, '南市区');
insert into CITY (city_id, province_id, city_name)
values (20, 2, '卢湾区');
commit;
prompt 200 records committed...
insert into CITY (city_id, province_id, city_name)
values (21, 2, '徐汇区');
insert into CITY (city_id, province_id, city_name)
values (22, 2, '长宁区');
insert into CITY (city_id, province_id, city_name)
values (23, 2, '静安区');
insert into CITY (city_id, province_id, city_name)
values (24, 2, '普陀区');
insert into CITY (city_id, province_id, city_name)
values (25, 2, '金山区');
insert into CITY (city_id, province_id, city_name)
values (26, 2, '闸北区');
insert into CITY (city_id, province_id, city_name)
values (27, 2, '虹口区');
insert into CITY (city_id, province_id, city_name)
values (28, 2, '杨浦区');
insert into CITY (city_id, province_id, city_name)
values (29, 2, '宝山区');
insert into CITY (city_id, province_id, city_name)
values (30, 2, '闵行区');
insert into CITY (city_id, province_id, city_name)
values (31, 2, '嘉定区');
insert into CITY (city_id, province_id, city_name)
values (32, 2, '松江区');
insert into CITY (city_id, province_id, city_name)
values (33, 2, '浦东新区');
insert into CITY (city_id, province_id, city_name)
values (34, 2, '青浦县');
insert into CITY (city_id, province_id, city_name)
values (35, 2, '奉贤县');
insert into CITY (city_id, province_id, city_name)
values (36, 2, '南汇县');
insert into CITY (city_id, province_id, city_name)
values (37, 2, '崇明县');
insert into CITY (city_id, province_id, city_name)
values (38, 3, '和平区');
insert into CITY (city_id, province_id, city_name)
values (39, 3, '河东区');
insert into CITY (city_id, province_id, city_name)
values (40, 3, '河西区');
insert into CITY (city_id, province_id, city_name)
values (41, 3, '河北区');
insert into CITY (city_id, province_id, city_name)
values (42, 3, '南开区');
insert into CITY (city_id, province_id, city_name)
values (43, 3, '红桥区');
insert into CITY (city_id, province_id, city_name)
values (44, 3, '塘沽区');
insert into CITY (city_id, province_id, city_name)
values (45, 3, '汉沽区');
insert into CITY (city_id, province_id, city_name)
values (105, 3, '大港区');
insert into CITY (city_id, province_id, city_name)
values (106, 3, '东丽区');
insert into CITY (city_id, province_id, city_name)
values (107, 3, '西青区');
insert into CITY (city_id, province_id, city_name)
values (108, 3, '津南区');
insert into CITY (city_id, province_id, city_name)
values (109, 3, '北辰区');
insert into CITY (city_id, province_id, city_name)
values (110, 3, ' 武清区');
insert into CITY (city_id, province_id, city_name)
values (111, 3, '宝坻区');
insert into CITY (city_id, province_id, city_name)
values (112, 3, '蓟 县');
insert into CITY (city_id, province_id, city_name)
values (113, 3, '宁河县');
insert into CITY (city_id, province_id, city_name)
values (114, 3, '静海县');
insert into CITY (city_id, province_id, city_name)
values (46, 4, '永川市');
insert into CITY (city_id, province_id, city_name)
values (47, 4, '黔江区');
insert into CITY (city_id, province_id, city_name)
values (48, 4, '涪陵区');
insert into CITY (city_id, province_id, city_name)
values (204, 13, '商洛');
insert into CITY (city_id, province_id, city_name)
values (496, 13, '韩城');
insert into CITY (city_id, province_id, city_name)
values (68, 14, '石家庄');
insert into CITY (city_id, province_id, city_name)
values (69, 14, '保定');
insert into CITY (city_id, province_id, city_name)
values (205, 14, '唐山');
insert into CITY (city_id, province_id, city_name)
values (206, 14, '秦皇岛');
insert into CITY (city_id, province_id, city_name)
values (207, 14, '邯郸');
insert into CITY (city_id, province_id, city_name)
values (208, 14, '邢台');
insert into CITY (city_id, province_id, city_name)
values (209, 14, '张家口');
insert into CITY (city_id, province_id, city_name)
values (210, 14, '承德');
insert into CITY (city_id, province_id, city_name)
values (211, 14, '沧州');
insert into CITY (city_id, province_id, city_name)
values (212, 14, '廊坊');
insert into CITY (city_id, province_id, city_name)
values (213, 14, '衡水');
insert into CITY (city_id, province_id, city_name)
values (436, 14, '霸州');
insert into CITY (city_id, province_id, city_name)
values (437, 14, '青县');
insert into CITY (city_id, province_id, city_name)
values (438, 14, '任丘');
insert into CITY (city_id, province_id, city_name)
values (439, 14, '涿州');
insert into CITY (city_id, province_id, city_name)
values (70, 15, '郑州');
insert into CITY (city_id, province_id, city_name)
values (71, 15, '洛阳');
insert into CITY (city_id, province_id, city_name)
values (214, 15, '开封');
insert into CITY (city_id, province_id, city_name)
values (215, 15, '平顶山');
insert into CITY (city_id, province_id, city_name)
values (216, 15, '焦作');
insert into CITY (city_id, province_id, city_name)
values (217, 15, '鹤壁');
insert into CITY (city_id, province_id, city_name)
values (218, 15, '新乡');
insert into CITY (city_id, province_id, city_name)
values (219, 15, '安阳');
insert into CITY (city_id, province_id, city_name)
values (220, 15, '濮阳');
insert into CITY (city_id, province_id, city_name)
values (221, 15, '许昌');
insert into CITY (city_id, province_id, city_name)
values (222, 15, '漯河');
insert into CITY (city_id, province_id, city_name)
values (223, 15, '三门峡');
insert into CITY (city_id, province_id, city_name)
values (224, 15, '南阳');
insert into CITY (city_id, province_id, city_name)
values (225, 15, '商丘');
insert into CITY (city_id, province_id, city_name)
values (226, 15, '信阳');
insert into CITY (city_id, province_id, city_name)
values (227, 15, '周口');
insert into CITY (city_id, province_id, city_name)
values (228, 15, '驻马店');
insert into CITY (city_id, province_id, city_name)
values (72, 16, '济南');
insert into CITY (city_id, province_id, city_name)
values (73, 16, '青岛');
insert into CITY (city_id, province_id, city_name)
values (74, 16, '烟台');
insert into CITY (city_id, province_id, city_name)
values (229, 16, '淄博');
insert into CITY (city_id, province_id, city_name)
values (230, 16, '枣庄');
insert into CITY (city_id, province_id, city_name)
values (231, 16, '东营');
insert into CITY (city_id, province_id, city_name)
values (232, 16, '潍坊');
insert into CITY (city_id, province_id, city_name)
values (233, 16, '威海');
insert into CITY (city_id, province_id, city_name)
values (234, 16, '济宁');
insert into CITY (city_id, province_id, city_name)
values (235, 16, '泰安');
insert into CITY (city_id, province_id, city_name)
values (236, 16, '日照');
insert into CITY (city_id, province_id, city_name)
values (237, 16, '莱芜');
insert into CITY (city_id, province_id, city_name)
values (238, 16, '德州');
insert into CITY (city_id, province_id, city_name)
values (239, 16, '临沂');
insert into CITY (city_id, province_id, city_name)
values (240, 16, '聊城');
insert into CITY (city_id, province_id, city_name)
values (241, 16, '滨州');
insert into CITY (city_id, province_id, city_name)
values (242, 16, '菏泽');
insert into CITY (city_id, province_id, city_name)
values (474, 16, '高密');
insert into CITY (city_id, province_id, city_name)
values (475, 16, '荷泽');
insert into CITY (city_id, province_id, city_name)
values (476, 16, '淮坊');
insert into CITY (city_id, province_id, city_name)
values (477, 16, '即墨');
insert into CITY (city_id, province_id, city_name)
values (478, 16, '胶南');
insert into CITY (city_id, province_id, city_name)
values (479, 16, '莱州');
insert into CITY (city_id, province_id, city_name)
values (480, 16, '林沂');
insert into CITY (city_id, province_id, city_name)
values (481, 16, '临忻');
insert into CITY (city_id, province_id, city_name)
values (482, 16, '龙口');
insert into CITY (city_id, province_id, city_name)
values (483, 16, '蓬莱');
insert into CITY (city_id, province_id, city_name)
values (484, 16, '青州');
commit;
prompt 300 records committed...
insert into CITY (city_id, province_id, city_name)
values (485, 16, '乳山');
insert into CITY (city_id, province_id, city_name)
values (486, 16, '寿光');
insert into CITY (city_id, province_id, city_name)
values (487, 16, '滕州');
insert into CITY (city_id, province_id, city_name)
values (488, 16, '文登');
insert into CITY (city_id, province_id, city_name)
values (489, 16, '招远');
insert into CITY (city_id, province_id, city_name)
values (75, 17, '太原');
insert into CITY (city_id, province_id, city_name)
values (76, 17, '大同');
insert into CITY (city_id, province_id, city_name)
values (243, 17, '朔州');
insert into CITY (city_id, province_id, city_name)
values (244, 17, '阳泉');
insert into CITY (city_id, province_id, city_name)
values (245, 17, '长治');
insert into CITY (city_id, province_id, city_name)
values (246, 17, '晋城');
insert into CITY (city_id, province_id, city_name)
values (247, 17, '忻州');
insert into CITY (city_id, province_id, city_name)
values (248, 17, '晋中');
insert into CITY (city_id, province_id, city_name)
values (249, 17, '临汾');
insert into CITY (city_id, province_id, city_name)
values (250, 17, '运城');
insert into CITY (city_id, province_id, city_name)
values (251, 17, '吕梁地区');
insert into CITY (city_id, province_id, city_name)
values (491, 17, '河津');
insert into CITY (city_id, province_id, city_name)
values (492, 17, '侯马');
insert into CITY (city_id, province_id, city_name)
values (494, 17, '孝义');
insert into CITY (city_id, province_id, city_name)
values (495, 17, '榆次');
insert into CITY (city_id, province_id, city_name)
values (77, 18, '武汉');
insert into CITY (city_id, province_id, city_name)
values (252, 18, '黄石');
insert into CITY (city_id, province_id, city_name)
values (253, 18, '襄樊');
insert into CITY (city_id, province_id, city_name)
values (254, 18, '十堰');
insert into CITY (city_id, province_id, city_name)
values (255, 18, '荆州');
insert into CITY (city_id, province_id, city_name)
values (256, 18, '宜昌');
insert into CITY (city_id, province_id, city_name)
values (257, 18, '荆门');
insert into CITY (city_id, province_id, city_name)
values (258, 18, '鄂州');
insert into CITY (city_id, province_id, city_name)
values (259, 18, '孝感');
insert into CITY (city_id, province_id, city_name)
values (260, 18, '黄冈');
insert into CITY (city_id, province_id, city_name)
values (261, 18, '咸宁');
insert into CITY (city_id, province_id, city_name)
values (262, 18, '随州');
insert into CITY (city_id, province_id, city_name)
values (263, 18, '恩施土家族苗族自治州');
insert into CITY (city_id, province_id, city_name)
values (440, 18, '安陆');
insert into CITY (city_id, province_id, city_name)
values (441, 18, '恩施');
insert into CITY (city_id, province_id, city_name)
values (442, 18, '汉口');
insert into CITY (city_id, province_id, city_name)
values (443, 18, '汉阳');
insert into CITY (city_id, province_id, city_name)
values (444, 18, '潜江');
insert into CITY (city_id, province_id, city_name)
values (445, 18, '仙桃');
insert into CITY (city_id, province_id, city_name)
values (446, 18, '株州');
insert into CITY (city_id, province_id, city_name)
values (78, 19, '长沙');
insert into CITY (city_id, province_id, city_name)
values (264, 19, '株洲');
insert into CITY (city_id, province_id, city_name)
values (265, 19, '湘潭');
insert into CITY (city_id, province_id, city_name)
values (266, 19, '衡阳');
insert into CITY (city_id, province_id, city_name)
values (267, 19, '邵阳');
insert into CITY (city_id, province_id, city_name)
values (268, 19, '岳阳');
insert into CITY (city_id, province_id, city_name)
values (269, 19, '常德');
insert into CITY (city_id, province_id, city_name)
values (270, 19, '张家界');
insert into CITY (city_id, province_id, city_name)
values (271, 19, '益阳');
insert into CITY (city_id, province_id, city_name)
values (272, 19, '郴州');
insert into CITY (city_id, province_id, city_name)
values (273, 19, '永州');
insert into CITY (city_id, province_id, city_name)
values (274, 19, '怀化');
insert into CITY (city_id, province_id, city_name)
values (275, 19, '娄底');
insert into CITY (city_id, province_id, city_name)
values (276, 19, '湘西土家族苗族自治州');
insert into CITY (city_id, province_id, city_name)
values (447, 19, '株州');
insert into CITY (city_id, province_id, city_name)
values (448, 19, '邵东');
insert into CITY (city_id, province_id, city_name)
values (79, 20, '合肥');
insert into CITY (city_id, province_id, city_name)
values (80, 20, '芜湖');
insert into CITY (city_id, province_id, city_name)
values (277, 20, '蚌埠');
insert into CITY (city_id, province_id, city_name)
values (278, 20, '淮南');
insert into CITY (city_id, province_id, city_name)
values (279, 20, '马鞍山');
insert into CITY (city_id, province_id, city_name)
values (280, 20, '淮北');
insert into CITY (city_id, province_id, city_name)
values (281, 20, '铜陵');
insert into CITY (city_id, province_id, city_name)
values (282, 20, '安庆');
insert into CITY (city_id, province_id, city_name)
values (283, 20, '黄山');
insert into CITY (city_id, province_id, city_name)
values (284, 20, '滁州');
insert into CITY (city_id, province_id, city_name)
values (285, 20, '阜阳');
insert into CITY (city_id, province_id, city_name)
values (286, 20, '宿州');
insert into CITY (city_id, province_id, city_name)
values (287, 20, '巢湖');
insert into CITY (city_id, province_id, city_name)
values (288, 20, '六安');
insert into CITY (city_id, province_id, city_name)
values (289, 20, '亳州');
insert into CITY (city_id, province_id, city_name)
values (290, 20, '池州');
insert into CITY (city_id, province_id, city_name)
values (291, 20, '宣城');
insert into CITY (city_id, province_id, city_name)
values (412, 20, '蒙城');
insert into CITY (city_id, province_id, city_name)
values (413, 20, '宁国');
insert into CITY (city_id, province_id, city_name)
values (414, 20, '桐城');
insert into CITY (city_id, province_id, city_name)
values (81, 21, '南京');
insert into CITY (city_id, province_id, city_name)
values (49, 4, '万洲区');
insert into CITY (city_id, province_id, city_name)
values (115, 4, '渝中区');
insert into CITY (city_id, province_id, city_name)
values (116, 4, '大渡口区');
insert into CITY (city_id, province_id, city_name)
values (117, 4, '江北区');
insert into CITY (city_id, province_id, city_name)
values (118, 4, '沙坪坝区');
insert into CITY (city_id, province_id, city_name)
values (119, 4, '九龙坡区');
insert into CITY (city_id, province_id, city_name)
values (120, 4, '南岸区');
insert into CITY (city_id, province_id, city_name)
values (121, 4, '北碚区');
insert into CITY (city_id, province_id, city_name)
values (122, 4, ' 万盛区');
insert into CITY (city_id, province_id, city_name)
values (123, 4, '双桥区');
insert into CITY (city_id, province_id, city_name)
values (124, 4, '渝北区');
insert into CITY (city_id, province_id, city_name)
values (125, 4, '巴南区');
insert into CITY (city_id, province_id, city_name)
values (126, 4, '长寿区');
insert into CITY (city_id, province_id, city_name)
values (50, 5, '哈尔滨');
insert into CITY (city_id, province_id, city_name)
values (51, 5, '齐齐哈尔');
insert into CITY (city_id, province_id, city_name)
values (52, 5, '牡丹江');
insert into CITY (city_id, province_id, city_name)
values (127, 5, '鹤岗');
insert into CITY (city_id, province_id, city_name)
values (128, 5, '双鸭山');
insert into CITY (city_id, province_id, city_name)
values (129, 5, '鸡西');
insert into CITY (city_id, province_id, city_name)
values (130, 5, '大庆');
insert into CITY (city_id, province_id, city_name)
values (131, 5, '伊春');
insert into CITY (city_id, province_id, city_name)
values (132, 5, '佳木斯');
insert into CITY (city_id, province_id, city_name)
values (133, 5, '七台河');
commit;
prompt 400 records committed...
insert into CITY (city_id, province_id, city_name)
values (134, 5, '黑河');
insert into CITY (city_id, province_id, city_name)
values (135, 5, '绥化');
insert into CITY (city_id, province_id, city_name)
values (136, 5, '大兴安岭地区');
insert into CITY (city_id, province_id, city_name)
values (53, 6, '长春');
insert into CITY (city_id, province_id, city_name)
values (54, 6, '吉林');
insert into CITY (city_id, province_id, city_name)
values (137, 6, '四平');
insert into CITY (city_id, province_id, city_name)
values (138, 6, '辽源');
insert into CITY (city_id, province_id, city_name)
values (139, 6, '通化');
insert into CITY (city_id, province_id, city_name)
values (140, 6, '白山');
insert into CITY (city_id, province_id, city_name)
values (141, 6, '松原');
insert into CITY (city_id, province_id, city_name)
values (142, 6, '白城');
insert into CITY (city_id, province_id, city_name)
values (143, 6, '延边朝鲜族自治州');
insert into CITY (city_id, province_id, city_name)
values (449, 6, '高新');
insert into CITY (city_id, province_id, city_name)
values (450, 6, '延吉');
insert into CITY (city_id, province_id, city_name)
values (451, 6, '梅河口');
insert into CITY (city_id, province_id, city_name)
values (55, 7, '沈阳');
insert into CITY (city_id, province_id, city_name)
values (56, 7, '大连');
insert into CITY (city_id, province_id, city_name)
values (57, 7, '锦州');
insert into CITY (city_id, province_id, city_name)
values (144, 7, '鞍山');
insert into CITY (city_id, province_id, city_name)
values (145, 7, '抚顺');
insert into CITY (city_id, province_id, city_name)
values (146, 7, '本溪');
insert into CITY (city_id, province_id, city_name)
values (147, 7, '丹东');
insert into CITY (city_id, province_id, city_name)
values (148, 7, '葫芦岛');
insert into CITY (city_id, province_id, city_name)
values (149, 7, '营口');
insert into CITY (city_id, province_id, city_name)
values (150, 7, '盘锦');
insert into CITY (city_id, province_id, city_name)
values (151, 7, '阜新');
insert into CITY (city_id, province_id, city_name)
values (152, 7, '辽阳');
insert into CITY (city_id, province_id, city_name)
values (153, 7, '铁岭');
insert into CITY (city_id, province_id, city_name)
values (154, 7, '朝阳');
insert into CITY (city_id, province_id, city_name)
values (467, 7, '瓦房店');
insert into CITY (city_id, province_id, city_name)
values (58, 8, '呼和浩特');
insert into CITY (city_id, province_id, city_name)
values (59, 8, '包头');
insert into CITY (city_id, province_id, city_name)
values (155, 8, '乌海');
insert into CITY (city_id, province_id, city_name)
values (156, 8, '赤峰');
insert into CITY (city_id, province_id, city_name)
values (157, 8, '通辽');
insert into CITY (city_id, province_id, city_name)
values (158, 8, '鄂尔多斯');
insert into CITY (city_id, province_id, city_name)
values (160, 8, '乌兰察布盟');
insert into CITY (city_id, province_id, city_name)
values (161, 8, '锡林郭勒盟');
insert into CITY (city_id, province_id, city_name)
values (162, 8, '巴彦淖尔盟');
insert into CITY (city_id, province_id, city_name)
values (163, 8, '阿拉善盟');
insert into CITY (city_id, province_id, city_name)
values (164, 8, '兴安盟');
insert into CITY (city_id, province_id, city_name)
values (468, 8, '巴彦淖尔');
insert into CITY (city_id, province_id, city_name)
values (469, 8, '呼伦贝尔');
insert into CITY (city_id, province_id, city_name)
values (470, 8, '集宁');
insert into CITY (city_id, province_id, city_name)
values (471, 8, ' 乌兰浩特');
insert into CITY (city_id, province_id, city_name)
values (472, 8, '锡林浩特');
insert into CITY (city_id, province_id, city_name)
values (60, 9, '银川');
insert into CITY (city_id, province_id, city_name)
values (165, 9, '石嘴山');
insert into CITY (city_id, province_id, city_name)
values (166, 9, '吴忠');
insert into CITY (city_id, province_id, city_name)
values (167, 9, '固原');
insert into CITY (city_id, province_id, city_name)
values (61, 10, '乌鲁木齐');
insert into CITY (city_id, province_id, city_name)
values (168, 10, '克拉玛依');
insert into CITY (city_id, province_id, city_name)
values (169, 10, '吐鲁番地区');
insert into CITY (city_id, province_id, city_name)
values (170, 10, '哈密地区');
insert into CITY (city_id, province_id, city_name)
values (171, 10, '和田地区');
insert into CITY (city_id, province_id, city_name)
values (172, 10, '阿克苏地区');
insert into CITY (city_id, province_id, city_name)
values (173, 10, '喀什地区');
insert into CITY (city_id, province_id, city_name)
values (174, 10, '克孜勒苏柯尔克孜自治' || chr(10) || '州');
insert into CITY (city_id, province_id, city_name)
values (175, 10, '巴音郭楞蒙古自治州');
insert into CITY (city_id, province_id, city_name)
values (176, 10, '昌吉回族自治州');
insert into CITY (city_id, province_id, city_name)
values (177, 10, '博尔塔拉蒙古自治州');
insert into CITY (city_id, province_id, city_name)
values (178, 10, '伊犁哈萨克自治州');
insert into CITY (city_id, province_id, city_name)
values (500, 10, '阿克苏');
insert into CITY (city_id, province_id, city_name)
values (501, 10, '昌吉');
insert into CITY (city_id, province_id, city_name)
values (502, 10, '哈密');
insert into CITY (city_id, province_id, city_name)
values (503, 10, '和田');
insert into CITY (city_id, province_id, city_name)
values (504, 10, '喀什');
insert into CITY (city_id, province_id, city_name)
values (505, 10, '克拉马依');
insert into CITY (city_id, province_id, city_name)
values (506, 10, '库尔勒');
insert into CITY (city_id, province_id, city_name)
values (507, 10, '石河子');
insert into CITY (city_id, province_id, city_name)
values (508, 10, '吐鲁番');
insert into CITY (city_id, province_id, city_name)
values (509, 10, ' 乌市');
insert into CITY (city_id, province_id, city_name)
values (510, 10, '奎屯');
insert into CITY (city_id, province_id, city_name)
values (511, 10, '伊犁');
insert into CITY (city_id, province_id, city_name)
values (512, 10, '伊宁');
insert into CITY (city_id, province_id, city_name)
values (62, 11, '西宁');
insert into CITY (city_id, province_id, city_name)
values (179, 11, '海东地区');
insert into CITY (city_id, province_id, city_name)
values (180, 11, ' 海北藏族自治州');
insert into CITY (city_id, province_id, city_name)
values (181, 11, '黄南藏族自治州');
insert into CITY (city_id, province_id, city_name)
values (182, 11, '海南藏族自治州');
insert into CITY (city_id, province_id, city_name)
values (183, 11, '果洛藏族自治州');
insert into CITY (city_id, province_id, city_name)
values (184, 11, '玉树藏族自治州');
insert into CITY (city_id, province_id, city_name)
values (185, 11, '海西蒙古族藏族自治州');
insert into CITY (city_id, province_id, city_name)
values (473, 11, '格尔木');
insert into CITY (city_id, province_id, city_name)
values (63, 12, '兰州');
insert into CITY (city_id, province_id, city_name)
values (64, 12, '天水');
insert into CITY (city_id, province_id, city_name)
values (186, 12, '金昌');
insert into CITY (city_id, province_id, city_name)
values (187, 12, '白银');
insert into CITY (city_id, province_id, city_name)
values (188, 12, '嘉峪关');
insert into CITY (city_id, province_id, city_name)
values (189, 12, '武 威 ');
insert into CITY (city_id, province_id, city_name)
values (190, 12, '张掖');
insert into CITY (city_id, province_id, city_name)
values (191, 12, '平凉');
insert into CITY (city_id, province_id, city_name)
values (192, 12, '酒泉');
insert into CITY (city_id, province_id, city_name)
values (193, 12, '庆阳');
insert into CITY (city_id, province_id, city_name)
values (194, 12, '定西地区');
insert into CITY (city_id, province_id, city_name)
values (195, 12, '陇南地区');
insert into CITY (city_id, province_id, city_name)
values (196, 12, '甘南藏族自治州');
insert into CITY (city_id, province_id, city_name)
values (197, 12, '临夏回族自治州');
insert into CITY (city_id, province_id, city_name)
values (422, 12, '嘉峪');
insert into CITY (city_id, province_id, city_name)
values (423, 12, '武威');
commit;
prompt 500 records committed...
insert into CITY (city_id, province_id, city_name)
values (65, 13, '西安');
insert into CITY (city_id, province_id, city_name)
values (66, 13, '宝鸡');
insert into CITY (city_id, province_id, city_name)
values (67, 13, '延安');
insert into CITY (city_id, province_id, city_name)
values (198, 13, '铜川');
insert into CITY (city_id, province_id, city_name)
values (199, 13, '咸阳');
insert into CITY (city_id, province_id, city_name)
values (200, 13, '渭南');
insert into CITY (city_id, province_id, city_name)
values (201, 13, '汉中');
insert into CITY (city_id, province_id, city_name)
values (202, 13, '榆林');
insert into CITY (city_id, province_id, city_name)
values (203, 13, '安康');
insert into CITY (city_id, province_id, city_name)
values (292, 21, '徐州');
insert into CITY (city_id, province_id, city_name)
values (293, 21, '连云港');
insert into CITY (city_id, province_id, city_name)
values (294, 21, '淮安');
insert into CITY (city_id, province_id, city_name)
values (295, 21, '宿迁');
insert into CITY (city_id, province_id, city_name)
values (296, 21, '盐城');
insert into CITY (city_id, province_id, city_name)
values (297, 21, '扬州');
insert into CITY (city_id, province_id, city_name)
values (298, 21, '泰州');
insert into CITY (city_id, province_id, city_name)
values (299, 21, '南通');
insert into CITY (city_id, province_id, city_name)
values (300, 21, '镇江');
insert into CITY (city_id, province_id, city_name)
values (301, 21, '常州');
insert into CITY (city_id, province_id, city_name)
values (302, 21, '无锡');
insert into CITY (city_id, province_id, city_name)
values (303, 21, '苏州');
insert into CITY (city_id, province_id, city_name)
values (452, 21, '常熟');
insert into CITY (city_id, province_id, city_name)
values (453, 21, '丹阳');
insert into CITY (city_id, province_id, city_name)
values (454, 21, '海门');
commit;
prompt 524 records loaded
prompt Loading FOOTPRINT...
insert into FOOTPRINT (footprint_id, pro_id, user_id)
values (117, 15, 5);
insert into FOOTPRINT (footprint_id, pro_id, user_id)
values (115, 1, 5);
insert into FOOTPRINT (footprint_id, pro_id, user_id)
values (116, 2, 5);
insert into FOOTPRINT (footprint_id, pro_id, user_id)
values (132, 15, 2);
insert into FOOTPRINT (footprint_id, pro_id, user_id)
values (142, 15, 21);
insert into FOOTPRINT (footprint_id, pro_id, user_id)
values (134, 1, 2);
insert into FOOTPRINT (footprint_id, pro_id, user_id)
values (133, 14, 2);
insert into FOOTPRINT (footprint_id, pro_id, user_id)
values (141, 1, 21);
commit;
prompt 8 records loaded
prompt Loading ITEMS...
insert into ITEMS (item_id, order_id, pro_id, item_count)
values (41, 121, 2, 1);
insert into ITEMS (item_id, order_id, pro_id, item_count)
values (42, 121, 2, 1);
insert into ITEMS (item_id, order_id, pro_id, item_count)
values (82, 163, 1, 1);
insert into ITEMS (item_id, order_id, pro_id, item_count)
values (83, 164, 1, 3);
insert into ITEMS (item_id, order_id, pro_id, item_count)
values (84, 165, 4, 5);
insert into ITEMS (item_id, order_id, pro_id, item_count)
values (61, 141, 4, 1);
insert into ITEMS (item_id, order_id, pro_id, item_count)
values (81, 161, 15, 4);
insert into ITEMS (item_id, order_id, pro_id, item_count)
values (62, 141, 4, 4);
insert into ITEMS (item_id, order_id, pro_id, item_count)
values (30, 111, 4, 7);
commit;
prompt 9 records loaded
prompt Loading MODELS...
insert into MODELS (model_id, model_name, model_status)
values (1, '触屏', 1);
insert into MODELS (model_id, model_name, model_status)
values (2, '直板', 1);
insert into MODELS (model_id, model_name, model_status)
values (3, '翻盖', 1);
commit;
prompt 3 records loaded
prompt Loading NEWS...
insert into NEWS (news_id, news_title, news_content, news_status, news_views)
values (10, '北京消协测试30款扫地机器人 小米第一', '【手机中国新闻】近日，北京消协测试了30款扫地机器人，本次比较试验样品由消费者协会工作人员以普通消费者的身份通过京东、国美、苏宁、天猫、小米商城等电商平台随机购买。样品购买价格从328元到6490元不等。品牌涉及小米、科沃斯、戴森、iRobot、浦桑尼克、飞利浦、松下等知名品牌。其中，小米的米家扫地机器人经过多方面测试，获得榜首。' || chr(10) || '' || chr(10) || '米家扫地机器人（图片来自官方）' || chr(10) || '米家扫地机器人（图片来自官方）' || chr(10) || '' || chr(10) || '　　测试项目分为覆盖率、硬地板除尘能力、边角除尘能力、防跌落能力、越障能力等等，经过多项测试，小米的米家扫地机器人以总计20分的比较试验中获得18.5分，位居榜首。' || chr(10) || '' || chr(10) || '北京消协测试了30款扫地机器人，米家扫地机器人获得第一（图片来自微博）' || chr(10) || '北京消协测试了30款扫地机器人，米家扫地机器人获得第一（图片来自微博）' || chr(10) || '' || chr(10) || '　　据悉，这也不是小米首次在类似的比较试验中获得第一。早在2017年11月起，中国消费者协会、上海市消费者权益保护委员会、四川省保护消费者权益委员会前后三次对市售多款智能扫地机器人的清洁能力、覆盖率、防跌落、越障、续航等多方面进行了比较试验，小米的米家扫地机器人屡次都能脱颖而出，超越售价三四千乃至更高的同类别产品，成为最值得用户选购的产品之一。' || chr(10) || '' || chr(10) || '　　2018年4月10日，中国消费者协会发布了20款扫地机器人比较试验结果，其中序号9（非排名顺序）的小米米家扫地机器人对地板、边角、头发、宠物毛发的综合清洁能力几乎全部为5颗星。' || chr(10) || '' || chr(10) || '米家扫地机器人通过测试（图片来自官方）' || chr(10) || '米家扫地机器人通过测试（图片来自官方）' || chr(10) || '' || chr(10) || '　　同样，2018年2月8日，四川省保护消费者权益委员会发布了15款扫地机器人比较试验结果中，小米米家扫地机人的综合能力也很高。' || chr(10) || '' || chr(10) || '米家扫地机器人通过测试（图片来自官方）' || chr(10) || '米家扫地机器人通过测试（图片来自官方）' || chr(10) || '' || chr(10) || '　　而在2017年11月13日，上海市消费者权益保护委员会对市售22款扫地机器人的对比测试结果中，小米米家扫地机器人也尤为突出。' || chr(10) || '' || chr(10) || '米家扫地机器人通过测试（图片来自官方）' || chr(10) || '米家扫地机器人通过测试（图片来自官方）' || chr(10) || '' || chr(10) || '　　由此可以看出米家扫地机器人在覆盖率、除尘能力等方面都具有非常卓越表现，这也是得益于技术和算法的先进性。据官方介绍，米家扫地机器人机身搭载自主研发的LDS激光测距传感器，可进行360度、每秒1800次测距扫描，通过类似无人驾驶技术中使用的SLAM（即时定位与地图构建）算法实时构建房间地图，再融合陀螺仪、加速度传感器、里程计、超声传感器等12类不同传感器数据，合理规划扫地路径，能够优雅而从容的快速全屋清扫，从而提高了清洁效率。' || chr(10) || '' || chr(10) || '　　目前米家扫地机器人仅售1699元，在同等品类产品中，米家机器人可以说是一款极具性价比的产品，对其有所追求的朋友，千万不要错过。', 1, 1005);
insert into NEWS (news_id, news_title, news_content, news_status, news_views)
values (11, '老司机福利来了！米家双新品了解一下', '【手机中国新闻】近日，小米生态链推出了小米米家行车记录仪1S与小米米家对讲机1S。作为此前明星产品的续作，这两款新品在售价保持不变的情况下对整体进行了不小的升级。' || chr(10) || '' || chr(10) || '老司机福利来了！米家双新品了解一下' || chr(10) || '' || chr(10) || '　　其中，小米米家行车记录仪1S相比较一代产品，在图像传感器上进行了升级。其搭载索尼IMX307星光夜视传感器，新增3D影像降噪，同时还支持停车监控的功能，监控期间紧急情况记录影像会单独储存。除此之外，全新的小米米家行车记录仪1S还加上了本地语音控制功能。' || chr(10) || '' || chr(10) || '老司机福利来了！米家双新品了解一下' || chr(10) || '' || chr(10) || '　　另外值得一提的是，小米米家行车记录仪1S采用了一块3英寸IPS屏幕，较上一代相比在屏幕材质方面有所升级，屏幕显示更清晰。同时其机身采用轻质铝材，一体化成型工艺，大镜头设计，静电贴+耐高温胶，在保证不破坏车整体美观的前提下更牢固。' || chr(10) || '' || chr(10) || '　　这款记录仪售价349元，已于10月16号在小米网/小米有品/天猫/京东/苏宁/小米之家同步开售，感兴趣的用户不妨关注一下。' || chr(10) || '' || chr(10) || '老司机福利来了！米家双新品了解一下' || chr(10) || '' || chr(10) || '　　另外一款小米米家对讲机1S外观简洁，其相对初代产品更轻薄，同时还自带背夹，同时发射功率最高提升到3W，性能方面有所提升。好消息是其依然支持连接APP使用，具有FM收音机功能。该新品售价依然是249元，10月16日早10点已登陆小米商城、小米有品、京东、天猫、苏宁等渠道。', 1, 1000);
insert into NEWS (news_id, news_title, news_content, news_status, news_views)
values (1, '一加6T撞车苹果iPad发布会 张老板回应', '【手机中国新闻】苹果在今年秋季发布会之后，非常罕见地决定再次召开发布会，预计会推出新款的iPad Pro等产品，定档10月30日，正好与一加6T在纽约的发布会撞档。对于这个时间，一加张老板不知道是欢喜还是悲伤，在微博上念叨了下，引来一众“加油”安慰。' || chr(10) || '' || chr(10) || '一加6T发布会' || chr(10) || '一加6T发布会' || chr(10) || '' || chr(10) || '网传一加6T渲染图' || chr(10) || '网传一加6T渲染图' || chr(10) || '' || chr(10) || '　　好在两场发布会，一加主要是推出全新的一加6T全面屏旗舰手机，而苹果主要是推出iPad Pro平板电脑，产品类别并不冲突。一加6T将采用水滴全面屏，电池容量增至3700mAh，骁龙845、8GB大运存也是毫无悬念。另外据刘作虎透露，在经过一年多的调校后，光感屏幕指纹已经能在一加6T上完美运行。' || chr(10) || '' || chr(10) || '网传新款iPad Pro渲染图' || chr(10) || '网传新款iPad Pro渲染图' || chr(10) || '' || chr(10) || '　　据了解，苹果新款的iPad Pro与以往的iPad设计理念完全不同，升级全面屏设计，去掉了一直存在的Home键，屏占比非常高，同时可以做的更加轻薄。爆料显示，新iPad Pro厚度只有5.86mm，将成为史上最薄的iPad平板电脑。同时，新款iPad Pro有望搭载全新的A12X处理器，性能将会远超iPhone XS系列搭载的A12仿生芯片。', 1, 1000);
insert into NEWS (news_id, news_title, news_content, news_status, news_views)
values (2, '为什么现在还有人喜欢逛线下体验店？', '就在上周，苹果的盛会落下帷幕，一口气发布的iPhone XS、iPhone XS Max、iPhone XR以及Apple Watch Series 4，几款产品将可能再次成为2018年的爆款产品。虽然发布产品的发布会已经结束，但是一场完整的发布会并不仅仅是这个一个环节？在小编看来，发布会前的各种预热、发布会中以及发布会后的售卖才真正组成了一场完成的发布会，就目前苹果而言，前两场已经完结，售卖才是接下来的重头戏。' || chr(10) || '' || chr(10) || '　　每年苹果新品售卖的时候，苹果体验店门前便会出现数百米的长龙，这是为什么呢？当今互联网如此发达，只需在天猫、京东等平台轻轻一点的事情为何还有人愿意去排长队等候呢？这似乎成为了一个一直悬而未决的谜题。今天小编就带大家来捋一捋。' || chr(10) || '' || chr(10) || '苹果体验店' || chr(10) || '苹果体验店' || chr(10) || '' || chr(10) || '　　体验店模式由来已久' || chr(10) || '' || chr(10) || '　　体验店销售的形式其实是由来已久的，比如古代售卖胭脂水粉这些物品的时候，基本都有固定的店面，并且会为买家提供试用，再比如说现在的各类超市、小卖部等，其实都是这种形式演化而来，只是可能体验方面有一定缺失。对于消费者而言，到店面购物的形式毫不夸张的说是打娘胎里就带出来的，天生就会，购物就应该这样。同时，买家、卖家面对面交易不仅简单直接，说不定还可以讨价还价。虽然后来讨价还价的形式在一些特定店面是不被允许的。' || chr(10) || '' || chr(10) || '　　随着电商平台的发展，线下体验店的职能在一定程度上有所削弱，可能一部分用户会被电商吸引去，从而造成体验店本身的客户流失。但是发展数千年的线下体验店模式尤其是轻易能够被取代的？电商虽然有电商的优势，可是短板也让有些人难以接受，在未来的发展过程中，线下体验店是不会消失的，在与各大电商平台博弈的过程中，线下体验店的经营模式也将更加丰富，比如iPhone每次预售时，可以从网上预订，然后选择就近的体验店拿货，这就是二者相处的一种最佳状态。', 1, 1000);
insert into NEWS (news_id, news_title, news_content, news_status, news_views)
values (3, 'iPhone XR迎中国首销 京东预购享6期免息', '【手机中国新闻】10月19日，我们不仅将要迎来一个期待已久的周末，同样的，我们也将迎来iPhone XR这款充满惊喜和活力的苹果新品在中国市场的首销。10月19日15点01分，京东商城将准时开启首批新品预售。准备第一时间入手iPhone XR的用户，出手的时间终于来了。' || chr(10) || '' || chr(10) || 'iPhone XR中国首销' || chr(10) || 'iPhone XR中国首销' || chr(10) || '' || chr(10) || '　　iPhone XR配备了与iPhone XS系列完全相同的A12仿生芯片和原深感摄像头，同时也拥有和iPhone XS Max一样的双卡双待功能，以更低的价格为用户提供了iPhone XS系列的功能，可谓是十分用心。除此之外，iPhone XR最明显的标签就是它五颜六色的多彩设计了，这次iPhone XR共有六种配色，分别是黑色、白色、红色、珊瑚色、黄色和蓝色，多彩配色设计，让这部iPhone XR看上去活力十足。' || chr(10) || '' || chr(10) || 'iPhone XR中国首销' || chr(10) || 'iPhone XR中国首销' || chr(10) || '' || chr(10) || '　　在京东Apple产品专营店预购iPhone产品最高可以白条12期免息，通过京东商城iPhone XR购买界面，用户可以在购买前先用9.9元抢购白条6期免息券（使用时间10月19日-10月31日），这样在购买后便可以分六期付款，能够缓解一定的经济压力。用户在今天预购成功后，iPhone XR也将在10月26日08:01开始陆续发货。需要购买的朋友，调好闹钟了吗？', 1, 1000);
insert into NEWS (news_id, news_title, news_content, news_status, news_views)
values (4, '数说荣耀畅玩8C:超长续航令人欲罢不能', ' 荣耀于10月11日下午在北京举行了新品发布会，推出了新一代畅玩系列千元旗舰——荣耀畅玩8C，其最大的亮点是内置了一块4000mAh的超大容量电池，搭配荣耀独到的智电技术，正常使用可满足两天的续航时间。' || chr(10) || '' || chr(10) || '数说荣耀畅玩8C:超长续航令人欲罢不能 ' || chr(10) || '荣耀畅玩8C（全网通）' || chr(10) || '电商报价' || chr(10) || '京东商城 ￥1099天猫商城 ￥9999ZOL商城 ￥1179' || chr(10) || '' || chr(10) || '荣耀畅玩8C 这也充分说明，高通的632处理器就是比华...内置超大容量的电池呢我特别喜欢那只智慧节电技术呀。让用户彻底告别充电线的束缚呀。这款手机超长续航真的是让人很感兴趣呀。惊喜？没觉得[what][what][w...' || chr(10) || '    此外，作为一款为年轻人灼身打造的高性价比畅玩手机，荣耀畅玩8C全系标配了4GB大内存，这在千元档市场中还是比较少见的，足可见其是一款良心之作。' || chr(10) || '' || chr(10) || '数说荣耀畅玩8C:超长续航令人欲罢不能 ' || chr(10) || '荣耀畅玩8C' || chr(10) || '' || chr(10) || '    在定价上，荣耀畅玩8C也没有让我们有囊中羞涩感，其4GB+32GB版本定价1099元；4GB+64GB版本定价1399元。目前，荣耀畅玩8C正在各大电商平台火爆热销中，相信尚未入手还在观望的朋友们对于其究竟是一款怎样的手机还感到很好奇，下面，就让我们一同来认识下这位畅玩家族的新同学吧！' || chr(10) || '' || chr(10) || '屏幕与设计：86.6%屏占比制霸千元档，机身触感细腻恰似婴儿肌肤' || chr(10) || '' || chr(10) || '    荣耀畅玩8C采用6.26英寸新一代异形全面屏，屏幕占比达到了86.6%，这一数字在同价位产品当中可以说是相当出类拔萃了，得益于此，当我们用荣耀畅玩8C观影、看片、打游戏时可以拥有更大更广阔的视野，屏中内容仿佛跃然而出，视觉震撼力更加强烈。' || chr(10) || '' || chr(10) || '数说荣耀畅玩8C:超长续航令人欲罢不能 ' || chr(10) || '2018年9月中国手机市场不同屏幕尺寸产品分布' || chr(10) || '' || chr(10) || '    今年很多手机厂商纷纷在旗舰机型上玩转光影，将光这一元素融入到机身配色当中，而荣耀畅玩8C作为一款面向年轻消费群体的机型，虽然仅定位千元价位，但其同样采用了炫光效果机身，并提供包括极光蓝、铂光金、幻夜黑、星云紫在内的四款配色供大家选择。' || chr(10) || '' || chr(10) || '    同时，荣耀畅玩8C的机身设计不仅在视觉上满足了我们年轻人挑剔的眼光，更在机身背部带来了独特的亲肤触感，手感更为细腻，让人更愿将其握在手中把玩。' || chr(10) || '' || chr(10) || '处理器与内存：全系4GB大内存满足我们对流畅度的要求，骁龙632性能有看头' || chr(10) || '' || chr(10) || '    性能方面，荣耀畅玩8C首发搭载了高通骁龙632八核移动平台，这是一款基于14纳米低功耗制程工艺制造的移动处理器平台，CPU主频1.8GHz，图形处理器集成的是Adreno 506，图形图像处理与渲染能力比较强悍，流畅运行市面主流大型3D游戏不是问题。', 1, 1000);
insert into NEWS (news_id, news_title, news_content, news_status, news_views)
values (5, '努比亚红魔手机直降200元 错过准后悔', ' 努比亚红魔电竞游戏手机在系统上带来了全新定制系统RedMagic OS，它拥有游戏手机的视觉风格，科幻般的沉浸体验，同时重绘多款第三方热门主流应用图标。搭载NeoSmart AI智慧引擎，AI学习算法，能够不断地根据我们日常使用习惯进行自我进化，实时动态调整，按需分配性能与功耗，做到手机长时间使用依旧流畅如初。' || chr(10) || '' || chr(10) || '努比亚红魔手机直降200元 错过准后悔  绝对不后悔 支持努比亚Z11618的年中大促来了，大家抓紧时间吧今天最大的优惠就是努比亚Z11了现在许多手机都在搞优惠哦闺蜜正在选手机，我要赶紧告诉她。努比亚红魔电竞游戏手机“一键开启”电竞模式' || chr(10) || '' || chr(10) || '    NeoSmart AI智慧引擎能够将性能与功耗有效平衡，手机续航时间也会更长，让手机越用越快，而不会越用越卡顿。RedMagic OS搭载的NeoSmart AI智慧引擎，还能够智能调节手机资源调配，保证不同场景下手机都可以十分流畅，并且更加节能省电。' || chr(10) || '' || chr(10) || '努比亚红魔手机直降200元 错过准后悔 努比亚红魔电竞游戏手机战地迷彩版' || chr(10) || '' || chr(10) || '    除此之外，在今年ChinaJoy2018展会中，努比亚红魔电竞游戏手机还带来了一款拥有满满军事风的战地迷彩版配色，可谓是燃爆了电竞军事迷的内心。努比亚利用军事美学与科技完美的结合，通过使用"LC激光冷雕"+"AF隐形涂装技术"将努比亚红魔战地迷彩风完美的呈现了出来，不仅更加时尚漂亮，还带来了优秀的握持手感。' || chr(10) || '' || chr(10) || '努比亚红魔手机直降200元 错过准后悔 努比亚红魔电竞游戏手机拥有4项散热黑科技' || chr(10) || '' || chr(10) || '    在外观上拥有独特的涂装技术外，努比亚红魔手机迷彩版还针对电竞比赛耗时长、比赛中手机持续高负载运作、甚至可能需要边充边玩的状况，红魔迷彩版运用了四项业界独一无二的散热技术。' || chr(10) || '' || chr(10) || '努比亚红魔手机直降200元 错过准后悔 努比亚红魔电竞游戏手机为腾讯TGA赛事指定用机' || chr(10) || '' || chr(10) || '    同时，努比亚红魔电竞游戏手机还是腾讯TGA赛事的指定用机，而知名游戏职业玩家若风此次也成为了努比亚红魔迷彩版的首席游戏官。目前，努比亚红魔电竞游戏手机战地迷彩限量版正在京东商城热销中，喜欢电竞和军事爱好者可千万不要错过这款努比亚为大家精心准备的手机哦。' || chr(10) || '' || chr(10) || '努比亚红魔手机直降200元 错过准后悔 ' || chr(10) || '' || chr(10) || '    10月20日，努比亚红魔电竞游戏手机直降200元>>>【官网购买】【京东购买】', 1, 1000);
insert into NEWS (news_id, news_title, news_content, news_status, news_views)
values (6, '官宣！苹果新iPad Pro发布会定档10.30', '【手机中国新闻】北京时间10月19日凌晨，苹果10月新品发布会正式官宣，从发布会邀请函上显露的信息来看，或有成吨新品将在10月30日晚10点（北京时间）亮相纽约。' || chr(10) || '' || chr(10) || '官宣！苹果新iPad Pro发布会定档10.30' || chr(10) || '' || chr(10) || '　　本次邀请函中仅有一个多彩logo，文字方面写道：“精彩组团，候场中。”同时下面文字注解：“其实，我们也很想现在把一切官宣给你，可是，你懂的，北京时间10月30日晚上10点，Apple发布会将于纽约布鲁克林音乐学院Howard Gilman Opera House举行。”' || chr(10) || '' || chr(10) || '官宣！苹果新iPad Pro发布会定档10.30' || chr(10) || '' || chr(10) || '　　其实从信息中可以看出，本次苹果中国区的文案还是非常接地气的，不仅接了“官宣”这个梗，同时还学会了推广自己的公众号...' || chr(10) || '' || chr(10) || '　　好吧，关于邀请函咱们先解读到这里，因为我看着这幅抽象画着实有点儿难受...好像激发了体内某种类似密集恐惧症一样的反应...当然，发布会到时候肯定会追的，毕竟作为一名老迈的果粉，出啥买啥是一定以及肯定的！' || chr(10) || '' || chr(10) || '　　言归正传，此次发布会有极大可能更新iPad Pro系列。就之前曝光信息和图片来看，新款iPad Pro或将搭载异形全面屏，可视面积进一步加大，同时还将配备Face ID功能。另外Mac mini、iMac等许久未更新的系列也在嗷嗷待哺，不知此次参与“组团”的新品究竟还有啥呢？', 1, 1000);
insert into NEWS (news_id, news_title, news_content, news_status, news_views)
values (7, 'Mate20黑科技来袭 大咖直播轮番解锁亮点', '【手机中国新闻】北京时间10月16日晚9点，华为手机在英国伦敦正式发布了全新旗舰华为Mate 20系列。此次华为手机一口气为我们带来了四款新机，Mate 20、Mate 20 Pro、Mate 20 X以及Mate 20 RS保时捷设计。作为华为手机全新的旗舰系列，Mate 20可谓是凝聚了众多“黑科技”。除了看得见的外观和硬件参数以外，通过发布会上简短的介绍，已经让我们领略到了华为Mate 20系列大致的亮点。据悉，华为手机将于10月26日在上海举办华为Mate 20系列的国内发布会，而在此之前，有三场直播是你不能错过的。' || chr(10) || '' || chr(10) || 'Mate20黑科技来袭 大咖直播轮番解锁亮点' || chr(10) || '' || chr(10) || '　　今日华为手机官方发出预告，表示接下来将有一系列的大咖现身，在华为视频、斗鱼、熊猫、虎牙4大直播平台进行直播，为观众们深度剖析华为Mate 20系列的黑科技到底“有多黑”。' || chr(10) || '' || chr(10) || '　　目前确认的直播共有三场，10月19日解锁生物识别黑科技；10月23日解锁AI影像黑科技；10月27日解锁石墨烯液冷散热黑科技。' || chr(10) || '' || chr(10) || 'Mate20黑科技来袭 大咖直播轮番解锁亮点' || chr(10) || '' || chr(10) || '　　三天，三场直播，分别指向华为Mate 20系列最为瞩目的三大亮点，而三位“神秘大咖主播”可能会根据身份的不同，对应不同的主题和侧重点进行直播，可谓看点十足。' || chr(10) || '' || chr(10) || '　　从海外发布会来看，华为Mate 20系列在生物识别技术上有着很大提升。其中华为Mate 20 Pro（UD版）更是集屏内指纹和3D人脸识别于一身。值得一提的是，华为手机的3D人脸识别技术整个方案设计为华为自研，在安全、抗跌、精度方面，都融入了自己的核心设计理念，处于业界领先。' || chr(10) || '' || chr(10) || 'Mate20黑科技来袭 大咖直播轮番解锁亮点' || chr(10) || '' || chr(10) || '　　AI是未来科技的基础能力，这次华为Mate 20系列在AI方面同样惊艳。得益于麒麟980，华为Mate 20系列的AI影像能力大幅提升。甚至由原来的AI拍照“进化”到“AI视频”。 海外发布会上所演示的AI人像留色、主角模式视频剪辑两大功能，至今仍让人记忆深刻，十分震撼。摄影、摄像将是未来移动应用的一大趋势，用户对手机视频拍摄的性能需求正在急剧增加，华为Mate 20系列这轮“押宝”押的很准。' || chr(10) || '' || chr(10) || 'Mate20黑科技来袭 大咖直播轮番解锁亮点' || chr(10) || '' || chr(10) || '　　先前，网上就爆出华为Mate 20系列将采用石墨烯散热技术。而海外发布会后，我们也如愿以偿的在华为Mate 20 X上看到了全球首创的石墨烯+液冷组合散热系统。我们惊喜的看到，旗舰手机的比拼已经发展到对高精尖材料的运用，显然华为Mate 20 X走在最前列。要知道，石墨烯在2004年才被首次发现。' || chr(10) || '' || chr(10) || 'Mate20黑科技来袭 大咖直播轮番解锁亮点' || chr(10) || '' || chr(10) || '　　写到这里，是时候爆一个彩蛋了！最近的一场直播就在明天晚8点，而直播的大咖居然是知名军事评论家“局座”张绍忠老师。不知道“局座”和华为Mate 20系列会碰撞出怎样的火花，让我们一同期待吧。', 1, 1000);
insert into NEWS (news_id, news_title, news_content, news_status, news_views)
values (8, '收购！三星5G产品将为自动驾驶做好准备', '【手机中国新闻】三星宣布该公司正在收购巴塞罗那的一家名为Zhilabs的创业企业，此举是为了帮助三星集团为5G产品做好准备。据了解，Zhilabs以提供人工智能支持的服务而闻名于世。该公司的服务可以分析网络，以向企业提供关于其质量及可能存在的各种问题的详细信息。Zhilabs的分析结果可以帮助三星根据网络运营商能够提供的网络质量，了解应该如何设计即将推出的5G产品，例如应用于联网汽车和各种物联网/自动化设备等。' || chr(10) || '' || chr(10) || '三星正在为5G产品积极布局' || chr(10) || '三星正在为5G产品积极布局' || chr(10) || '' || chr(10) || '　　此外，Zhilabs还可以帮助三星对下一代网络的客户体验做出微调。它可以提供三星集团需要的信息，帮助它为5G引起的各种问题制定解决方案，例如，针对3G或LTE无法寻址的问题进行修复等等。' || chr(10) || '' || chr(10) || '　　三星网络业务总裁兼负责人Youngky Kim解释说：“由于数据流量的指数级的提升，5G将带来前所未有的服务，而自动化和智能网络分析工具是至关重要的。对Zhilabs的收购将帮助三星满足这些需求，在可能的范围内确保每个用户都能获得最好的服务。”' || chr(10) || '' || chr(10) || '　　尽管三星目前没有透露此次收购的具体金额，但是该公司透露此次收购是其承诺在未来三年内向人工智能和5G投资的25万亿韩元（约折合220亿美元）中的一部分。该公司正在为充满了自动化、万物互联的未来做准备——就在最近，该公司甚至推出了用于联网车辆的芯片。这也就是为什么我们会说除了这次收购，三星还在努力加强其自动化解决方案，并探索运用“新兴技术”的其他商机。', 1, 1000);
insert into NEWS (news_id, news_title, news_content, news_status, news_views)
values (9, '联想Watch S智能手表发布 仅售238元', '【手机中国新闻】10月18日，联想在北京召开了新品发布会，会上除了推出了联想S5 Pro、联想K5 Pro、联想K5s和联想Watch C小乐儿童电话手表外，还带来一款新智能手表“联想Watch S”，整体造型潮流时尚。' || chr(10) || '' || chr(10) || '联想Watch S智能手表（图片来自官方）' || chr(10) || '联想Watch S智能手表（图片来自官方）' || chr(10) || '' || chr(10) || '　　会上，官方宣布，联想Watch 9及Watch X/X Plus累计销量超过100万部。而新品联想Watch S配备40mm简约双表盘设计，采用蓝宝石玻璃表镜，支持5ATM防水，厚度仅11毫米。表带为小牛皮材质，并加入316L医疗级不锈钢，拥有红黑双色供用户选择。' || chr(10) || '' || chr(10) || '联想Watch S智能手表（图片来自官方）' || chr(10) || '联想Watch S智能手表（图片来自官方）' || chr(10) || '' || chr(10) || '　　联想Watch S采用进口齿轮箱打造智能机芯，提高手表的稳定性与准确度。指针均覆盖散发长效夜光的涂料，即使在晚上黑暗的环境下，也能清楚查看时间。' || chr(10) || '' || chr(10) || '联想Watch S智能手表（图片来自官方）' || chr(10) || '联想Watch S智能手表（图片来自官方）' || chr(10) || '' || chr(10) || '　　功能上，联想Watch S支持持信息提醒，查找手机、久坐提醒、手势拍照，支持全天候运动记录，睡眠监测等功能，免充电，并且使用纽扣电池。' || chr(10) || '' || chr(10) || '　　价格上，新品售价238元，将于10月30日上午10点首销，感兴趣的朋友不妨关注一下。', 1, 1002);
commit;
prompt 11 records loaded
prompt Loading ORDERS...
insert into ORDERS (order_id, useraddress_id, user_id, order_date, order_status)
values (165, 5, 2, '2018-10-23 15:33:19', 1);
insert into ORDERS (order_id, useraddress_id, user_id, order_date, order_status)
values (121, 41, 5, '2018-10-20 12:36:38', 1);
insert into ORDERS (order_id, useraddress_id, user_id, order_date, order_status)
values (164, 5, 2, '2018-10-23 15:16:23', 1);
insert into ORDERS (order_id, useraddress_id, user_id, order_date, order_status)
values (112, 21, 5, '2018-10-19 14:15:02', 1);
insert into ORDERS (order_id, useraddress_id, user_id, order_date, order_status)
values (161, 42, 5, '2018-10-23 14:19:30', 1);
insert into ORDERS (order_id, useraddress_id, user_id, order_date, order_status)
values (163, 42, 5, '2018-10-23 14:23:28', 1);
insert into ORDERS (order_id, useraddress_id, user_id, order_date, order_status)
values (141, 42, 5, '2018-10-22 16:21:13', 1);
insert into ORDERS (order_id, useraddress_id, user_id, order_date, order_status)
values (162, 42, 5, '2018-10-23 14:19:43', 1);
insert into ORDERS (order_id, useraddress_id, user_id, order_date, order_status)
values (111, 21, 5, '2018-10-19 14:13:53', 1);
commit;
prompt 9 records loaded
prompt Loading PIC...
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (27, 'img/detailImg/tccdq02.jpg', 8, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (28, 'img/detailImg/tccdq03.jpg', 8, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (29, 'img/detailImg/tcsjx01.jpg', 9, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (30, 'img/detailImg/tcsjx02.jpg', 9, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (31, 'img/detailImg/tcsjx03.jpg', 9, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (32, 'img/detailImg/ltsej01.jpg', 10, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (33, 'img/detailImg/ltsej02.jpg', 10, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (34, 'img/detailImg/ltsej03.jpg', 10, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (35, 'img/detailImg/m6yzpt01.jpg', 11, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (36, 'img/detailImg/m6yzpt02.jpg', 11, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (37, 'img/detailImg/m6yzpt03.jpg', 11, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (38, 'img/detailImg/bresej01.jpg', 12, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (39, 'img/detailImg/bresej02.jpg', 12, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (40, 'img/detailImg/bresej03.jpg', 12, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (41, 'img/detailImg/jlxkzpg01.jpg', 13, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (42, 'img/detailImg/jlxkzpg02.jpg', 13, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (43, 'img/detailImg/jlxkzpg02.jpg', 13, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (44, 'img/detailImg/s1101.jpg', 14, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (45, 'img/detailImg/s1102.jpg', 14, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (46, 'img/detailImg/s1103.jpg', 14, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (47, 'img/detailImg/s1001.jpg', 15, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (48, 'img/detailImg/s1005.jpg', 15, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (49, 'img/detailImg/s1004.jpg', 15, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (50, 'img/detailImg/G80001.jpg', 16, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (51, 'img/detailImg/G80002.jpg', 16, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (52, 'img/detailImg/G80003.jpg', 16, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (53, 'img/detailImg/m6pyzpt01.jpg', 17, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (54, 'img/detailImg/m6pyzpt02.jpg', 17, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (55, 'img/detailImg/m6pyzpt03.jpg', 17, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (56, 'img/detailImg/G60001.jpg', 18, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (57, 'img/detailImg/G60002.jpg', 18, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (58, 'img/detailImg/G60003.jpg', 18, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (59, 'img/detailImg/zhzj01.jpg', 19, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (60, 'img/detailImg/zhzj02.jpg', 19, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (61, 'img/detailImg/zhzj03.jpg', 19, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (62, 'img/detailImg/F601.jpg', 20, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (63, 'img/detailImg/F602.jpg', 20, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (64, 'img/detailImg/F603.jpg', 20, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (65, 'img/detailImg/s1002.jpg', 15, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (66, 'img/detailImg/s1006.jpg', 15, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (67, 'img/detailImg/s1003.jpg', 15, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (1, 'img/detailImg/m701.jpg', 1, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (2, 'img/detailImg/m702.jpg', 1, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (3, 'img/detailImg/m703.jpg', 1, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (4, 'img/detailImg/m704.jpg', 1, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (5, 'img/detailImg/m708.jpg', 1, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (6, 'img/detailImg/m7p01.jpg', 2, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (7, 'img/detailImg/m7p02.jpg', 2, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (8, 'img/detailImg/m7p03.jpg', 2, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (9, 'img/detailImg/m7p04.jpg', 2, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (10, 'img/detailImg/m7p05.jpg', 2, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (11, 'img/detailImg/m6p01.jpg', 3, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (12, 'img/detailImg/m6p02.jpg', 3, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (13, 'img/detailImg/m6p03.jpg', 3, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (14, 'img/detailImg/m601.jpg', 4, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (15, 'img/detailImg/m602.jpg', 4, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (16, 'img/detailImg/m603.jpg', 4, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (17, 'img/detailImg/m201701.jpg', 5, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (18, 'img/detailImg/m201702.jpg', 5, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (19, 'img/detailImg/m201703.jpg', 5, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (20, 'img/detailImg/s901.jpg', 6, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (21, 'img/detailImg/s902.jpg', 6, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (22, 'img/detailImg/s903.jpg', 6, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (23, 'img/detailImg/s501.jpg', 7, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (24, 'img/detailImg/s501.jpg', 7, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (25, 'img/detailImg/s501.jpg', 7, 1);
insert into PIC (pic_id, pic_path, pro_id, pic_status)
values (26, 'img/detailImg/tccdq01.jpg', 8, 1);
commit;
prompt 67 records loaded
prompt Loading PRODUCTS...
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (14, 2, null, 1, 1, '金立S11', '四射全面屏，更美更清晰', 1899, 'img/jinliS11Pic.jpg', '薛之谦', '2017年11月', 'amigo5.0（基于android7.1）', '4GB', '64GB', '1600W+800W', '1600W+500W', '蓝牙4.0', null, null, 'Micro-USB2.0', '月光蓝、太空金、樱花粉', '5.99英寸', null, null, 1, 1, 1000, 'img/mxcp1.jpg' || chr(10) || '', null);
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (15, 2, null, 1, 1, '金立S10', '四摄拍照,前置2000万+800万,硬件级实时虚化', 2299, 'img/jinliS10Pic.jpg', '薛之谦', '2017年5月', 'Android 7.0', '6GB', '64GB', '2000万+800万', '1600万+800万', '蓝牙4.0', null, null, 'Micro USB', null, '5.5英寸', null, null, 1, 1, 1004, 'img/mxcp2.jpg', '主机，耳机，保护壳，充电器，数据线，取卡针，说明书，贴膜（已贴好）');
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (16, null, 7, null, null, 'G800快速充电器', '3.6V-8V/3A或12V/2A', 69, 'img/G800Pic.jpg', null, null, null, null, null, null, null, null, 'TC-G800', '3.6V-8V/3A或12V/2A', null, '黑色', null, null, null, 1, 2, 1000, null, null);
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (17, null, 2, null, null, 'M6 Plus原装商务皮套', '智能唤醒，合盖接听，手感舒适', 68, 'img/m6pyzptPic.jpg', null, null, null, null, null, null, null, null, null, null, null, '金色', null, null, '智能天窗类', 1, 2, 1000, null, null);
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (18, null, 7, null, null, 'G600旅行充电器', '高效充电，5V-2A', 40, 'img/G600Pic.jpg', null, null, null, null, null, null, null, null, 'TC-G600', '5V-2A', null, '白色', null, null, null, 1, 2, 1000, null, null);
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (19, null, 1, null, null, '指环支架套装金色', '有效防滑，随意旋转，创意支架', 12, 'img/zhzjPic.jpg', null, null, null, null, null, null, null, null, null, null, null, null, '35*40mm', null, '支架', 1, 2, 1000, null, null);
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (20, 3, null, 1, 1, '金立F6', '5.7英寸高清全面屏，四曲面机身', 1399, 'img/F6Pic.jpg', null, '2017年11月', 'Android 7.1', '3GB', '32GB', '800万', '1300万+200万', '蓝牙4.2', null, null, 'Micro 5pin', null, '5.7英寸', null, null, 1, 1, 1000, null, '主机、充电器、数据线、取卡针、保护膜（已贴好）、保护壳、服务手册');
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (1, 1, null, 2, 1, '金立M7', '6.01超清全面屏，内置双安全芯片', 2499, 'img/jinliM7Pic.jpg', '刘涛', '2017年10月', 'amigo5.0（基于android7.1）', '6GB', '64GB', '800W', '1600W+800W', '蓝牙4.2', null, null, 'Micro-USB2.0', '宝石蓝、星耀蓝、枫叶红、香槟金、炫影黑', '6.01英寸', null, null, 1, 1, 1004, 'img/mxcp3.jpg', '主机，充电器，数据线，耳机，保护壳，贴膜（已贴好）、取卡针，快速指南，服务手册，手机丢失指南');
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (2, 1, null, 2, 1, '金立M7 Plus', '6.01超清全面屏，内置双安全芯片', 4399, 'img/jinliM7PlusPic.jpg', null, '2017年12月', 'amigo5.0（基于android7.1）', '6GB', '128GB', '800W', '1600W+800W', '蓝牙5.0', null, null, 'Micro-USB2.0', '鎏金蓝', '6.43英寸', null, null, 1, 1, 1002, 'img/mxcp2.jpg', '主机、充电器、数据线、耳机、贴膜（已贴好）、皮套、取卡针、快速指南、服务手册、手机丢失指南');
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (3, 1, null, 2, 1, '金立M6S Plus', '指纹加密芯片，高通骁龙处理器，6GB+64GB', 3299, 'img/jinliM6SPlus.jpg', null, '2017年4月', 'Android 6.0', '6GB', '64GB/256GB', '800万像素', '1200万像素', '蓝牙4.0', null, null, 'Micro USB', '墨玉黑', '6.0英寸', null, null, 1, 1, 1000, 'img/mxcp2.jpg', '主机、充电器、数据线、耳机、保护套、保护膜（已贴好）、取卡针、服务手册、快速指南');
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (4, 1, null, 2, 1, '金立M6', '硬件加密、5000mAh电池、5.5英寸奥魔丽屏', 1999, 'img/jinliM6Pic.jpg', null, '2016年8月', 'amigo OS3.5（基于Android 6.0）', '4GB', '64GB/128GB', '800万像素', '1300万像素', '蓝牙4.0', null, null, 'USB 2.0', null, '5.5英寸', null, null, 1, 1, 1024, 'img/mxcp2.jpg', '主机、充电器、数据线、耳机、保护壳、保护膜（已贴好）、取卡针、服务手册、快速指南、SIM卡套*2');
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (5, 1, null, 2, 1, '金立M2017', '7000mAh电池、5.7英寸2K曲面屏、骁龙处理器、后置双摄', 6999, 'img/jinliM2017Pic.jpg', null, '2016年12月', 'amigo3.5（基于android6.0）', '6GB', '128GB', '800万像素', '1200万+1300万像素双摄', '蓝牙4.0', null, null, 'USB2.0 Type-C', '金色、黑色', '5.7英寸', null, null, 1, 1, 1000, null, '主机、充电器、数据线、耳机、保护壳、保护膜（已贴好）、取卡针、服务手册、快速指南、SIM卡套*2');
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (6, 2, null, 1, 1, '金立S9', '前置1300万像素柔光自拍，后置1300万像素+500万像素双摄', 1699, 'img/jinliS9Pic.jpg', null, '2016年11月', 'Amigo 3.5(Android 6.0)', '4GB', '64GB', '1300万像素', '1300万像素+500万像素', '蓝牙4.0', null, null, 'Micro USB' || chr(10) || '', '金色、玫瑰金、黑色', '5.5英寸', null, null, 1, 1, 1000, null, '主机*1、充电器*1、耳机*1、数据线*1、保护壳*1、保护膜（已贴好）*1、服务手册*1、取卡针*1' || chr(10) || '' || chr(10) || '敬告，尊敬的消费者，S9说明书已从纸质版升级至电子版，具体查看电子说明书方法：' || chr(10) || '' || chr(10) || '手机桌面--用户中心--官方售后--使用引导 即可查看手机详细使用方法，敬请知悉。');
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (7, 2, null, 1, 1, '金立S5', '指纹金属手机、4GB+32GB大内存、全网通', 1499, 'img/jinliS5Pic.jpg', null, '2016年5月', 'Android5.1(amigo3.1)', '4GB', '32GB', '500万像素', '1300万像素', '蓝牙4.0', null, null, 'USB2.0', '玫瑰金', '5.3英寸', null, null, 1, 1, 1000, null, null);
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (8, null, 7, null, null, 'TC-G300快速充电器', '18W大功率，快速充电', 69, 'img/jmpj3.jpg', null, null, null, null, null, null, null, '5V-2A或9V-2A', 'TC-G300', '5V-2A或9V-2A', 'USB2.0', null, '65.1*53.04*22.54mm', null, null, 1, 2, 1000, null, null);
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (9, null, 5, null, null, 'Type-C数据线', '高速数据传输、不分反正', 39, 'img/typeCPic.jpg', null, null, null, null, null, null, null, null, null, null, 'Type-C', '白色', null, '1米', null, 1, 2, 1000, null, null);
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (10, null, 4, null, null, '立体声耳机', '震撼立体声音效', 30, 'img/ltsejPic.png', null, null, null, null, null, null, null, null, null, null, 'CTIA的3.5mm接口', null, null, '1.2m', null, 1, 2, 1000, null, null);
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (11, null, 2, null, null, 'M6原装商务皮套', '智能唤醒，合盖接听，手感舒适', 68, 'img/M6yzswptPic.jpg', null, null, null, null, null, null, null, null, null, null, null, '香槟金/摩卡金', null, null, '智能天窗类', 1, 2, 1000, null, null);
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (12, null, 4, null, null, '半入耳式耳机', '立体声音效，弹性振膜，时尚外观', 49, 'img/bresejPic.jpg', null, null, null, null, null, null, null, null, null, null, '3.5mm接口', null, null, '1.2米', '耳塞式', 1, 2, 1000, null, null);
insert into PRODUCTS (pro_id, series_id, acctype_id, model_id, type_id, pro_name, pro_detail, pro_price, pro_pic, pro_star, pro_time, pro_os, pro_memory, pro_space, pro_beforecamera, pro_aftercamera, pro_bluetooth, pro_model, pro_output, pro_interface, pro_color, pro_size, pro_length, pro_type, pro_status, pro_class, pro_sales, pro_starimg, pro_packing)
values (13, null, 10, null, null, '金立线控自拍杆', '迷你便携，线控美拍', 49, 'img/jinlixkzpgPic.jpg', null, null, null, null, null, null, null, null, null, null, '3.5mm', null, null, null, null, 1, 2, 1000, null, null);
commit;
prompt 20 records loaded
prompt Loading PROVINCE...
insert into PROVINCE (province_id, province_name)
values (1, '北京');
insert into PROVINCE (province_id, province_name)
values (2, '上海');
insert into PROVINCE (province_id, province_name)
values (3, '天津');
insert into PROVINCE (province_id, province_name)
values (4, ' 重庆');
insert into PROVINCE (province_id, province_name)
values (5, ' 黑龙江');
insert into PROVINCE (province_id, province_name)
values (6, '吉林');
insert into PROVINCE (province_id, province_name)
values (7, '辽宁');
insert into PROVINCE (province_id, province_name)
values (8, '内蒙古');
insert into PROVINCE (province_id, province_name)
values (9, '宁夏');
insert into PROVINCE (province_id, province_name)
values (10, '新疆');
insert into PROVINCE (province_id, province_name)
values (11, '青海');
insert into PROVINCE (province_id, province_name)
values (12, '甘肃');
insert into PROVINCE (province_id, province_name)
values (13, '陕西');
insert into PROVINCE (province_id, province_name)
values (14, '河北');
insert into PROVINCE (province_id, province_name)
values (15, '河南');
insert into PROVINCE (province_id, province_name)
values (16, '山东');
insert into PROVINCE (province_id, province_name)
values (17, '山西');
insert into PROVINCE (province_id, province_name)
values (18, '湖北');
insert into PROVINCE (province_id, province_name)
values (19, '湖南');
insert into PROVINCE (province_id, province_name)
values (20, '安徽');
insert into PROVINCE (province_id, province_name)
values (21, '江苏');
insert into PROVINCE (province_id, province_name)
values (22, ' 浙江');
insert into PROVINCE (province_id, province_name)
values (23, '江西');
insert into PROVINCE (province_id, province_name)
values (24, '广东');
insert into PROVINCE (province_id, province_name)
values (25, '广西');
insert into PROVINCE (province_id, province_name)
values (26, '福建');
insert into PROVINCE (province_id, province_name)
values (27, '四川');
insert into PROVINCE (province_id, province_name)
values (28, '云南');
insert into PROVINCE (province_id, province_name)
values (29, '贵州');
insert into PROVINCE (province_id, province_name)
values (30, '西藏');
insert into PROVINCE (province_id, province_name)
values (31, '海南');
insert into PROVINCE (province_id, province_name)
values (32, '香港');
insert into PROVINCE (province_id, province_name)
values (33, '澳门');
insert into PROVINCE (province_id, province_name)
values (34, '台湾');
commit;
prompt 34 records loaded
prompt Loading SERIES...
insert into SERIES (series_id, series_name, series_status)
values (1, 'M系列', 1);
insert into SERIES (series_id, series_name, series_status)
values (2, 'S系列', 1);
insert into SERIES (series_id, series_name, series_status)
values (3, 'F系列', 1);
insert into SERIES (series_id, series_name, series_status)
values (4, '金刚系列', 1);
insert into SERIES (series_id, series_name, series_status)
values (5, '天鉴系列', 1);
commit;
prompt 5 records loaded
prompt Loading SHOPPINGCAR...
insert into SHOPPINGCAR (shopping_id, pro_id, user_id, shopping_count)
values (165, 2, 5, 7);
insert into SHOPPINGCAR (shopping_id, pro_id, user_id, shopping_count)
values (163, 4, 5, 1);
insert into SHOPPINGCAR (shopping_id, pro_id, user_id, shopping_count)
values (164, 1, 5, 1);
insert into SHOPPINGCAR (shopping_id, pro_id, user_id, shopping_count)
values (162, 1, 5, 13);
commit;
prompt 4 records loaded
prompt Loading TYPES...
insert into TYPES (type_id, type_name, type_status)
values (1, '智能手机', 1);
insert into TYPES (type_id, type_name, type_status)
values (2, '功能手机', 1);
commit;
prompt 2 records loaded
prompt Loading USERADDRESS...
insert into USERADDRESS (useraddress_id, useraddress, useraddress_status, useraddress_rname, user_tel, province_id, city_id, user_id)
values (42, '456', 1, 'asda', '12345666677', 2, 18, 5);
insert into USERADDRESS (useraddress_id, useraddress, useraddress_status, useraddress_rname, user_tel, province_id, city_id, user_id)
values (21, '东城', 1, '姚子阳', '12345666677', 1, 1, 5);
insert into USERADDRESS (useraddress_id, useraddress, useraddress_status, useraddress_rname, user_tel, province_id, city_id, user_id)
values (41, '123', 1, '二傻子', '12345666677', 2, 21, 5);
insert into USERADDRESS (useraddress_id, useraddress, useraddress_status, useraddress_rname, user_tel, province_id, city_id, user_id)
values (5, '一拐弯', 1, '姚子阳', '12345666677', 14, 206, 2);
commit;
prompt 4 records loaded
prompt Loading USERS...
insert into USERS (user_id, user_name, user_account, user_pwd, user_sex, user_birthday, user_tel, user_states, user_status)
values (5, '姚子阳', 'yzy', '123', 1, '2015-02-50', '13171976353', 0, 1);
insert into USERS (user_id, user_name, user_account, user_pwd, user_sex, user_birthday, user_tel, user_states, user_status)
values (21, 'hah', 'jh', '123', 0, '2018-03-12', '1303333333302', 0, 1);
insert into USERS (user_id, user_name, user_account, user_pwd, user_sex, user_birthday, user_tel, user_states, user_status)
values (1, '管理员', 'admin', '123', 1, '2018-10-12', '123456789', 1, 1);
insert into USERS (user_id, user_name, user_account, user_pwd, user_sex, user_birthday, user_tel, user_states, user_status)
values (2, '用户1', 'user', '123', 1, '2018-10-12', '13514501234', 0, 1);
commit;
prompt 4 records loaded
prompt Enabling triggers for ACCTYPE...
alter table ACCTYPE enable all triggers;
prompt Enabling triggers for CITY...
alter table CITY enable all triggers;
prompt Enabling triggers for FOOTPRINT...
alter table FOOTPRINT enable all triggers;
prompt Enabling triggers for ITEMS...
alter table ITEMS enable all triggers;
prompt Enabling triggers for MODELS...
alter table MODELS enable all triggers;
prompt Enabling triggers for NEWS...
alter table NEWS enable all triggers;
prompt Enabling triggers for ORDERS...
alter table ORDERS enable all triggers;
prompt Enabling triggers for PIC...
alter table PIC enable all triggers;
prompt Enabling triggers for PRODUCTS...
alter table PRODUCTS enable all triggers;
prompt Enabling triggers for PROVINCE...
alter table PROVINCE enable all triggers;
prompt Enabling triggers for SERIES...
alter table SERIES enable all triggers;
prompt Enabling triggers for SHOPPINGCAR...
alter table SHOPPINGCAR enable all triggers;
prompt Enabling triggers for TYPES...
alter table TYPES enable all triggers;
prompt Enabling triggers for USERADDRESS...
alter table USERADDRESS enable all triggers;
prompt Enabling triggers for USERS...
alter table USERS enable all triggers;
set feedback on
set define on
prompt Done.
