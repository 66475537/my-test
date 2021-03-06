SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS BI_FORMULA_DEF_RULE;
DROP TABLE IF EXISTS BI_SCREENING_RESULTS;
DROP TABLE IF EXISTS BI_RISK_RULES;
DROP TABLE IF EXISTS BI_FORMULA_DEF;
DROP TABLE IF EXISTS BI_QUOTA_DATA;
DROP TABLE IF EXISTS BI_QUOTA_DEF;
DROP TABLE IF EXISTS BI_QUOTA_TYPE;
DROP TABLE IF EXISTS BI_RESULT_DATA;
DROP TABLE IF EXISTS BI_RISK_FACTORS_LEVEL;
DROP TABLE IF EXISTS BI_TERMINAL_TYPE_REF;
DROP TABLE IF EXISTS MATRIX;
DROP TABLE IF EXISTS BI_RISK_FACTORS;
DROP TABLE IF EXISTS BI_TERMINAL_TYPE;
DROP TABLE IF EXISTS FLIGHT;
DROP TABLE IF EXISTS FLIGHT_PILOT;
DROP TABLE IF EXISTS PILOTS;




/* Create Tables */

CREATE TABLE BI_FORMULA_DEF
(
	FORMULA_DEF_ID varchar(32) NOT NULL,
	REMARK varchar(1024),
	CREATE_TIME varchar(32),
	UPDATE_TIME varchar(32),
	UPDATE_USER varchar(32),
	-- 01.长期有效
	-- 02.短时间内有效
	-- 03.长期有效
	EXPIRY varchar(2) COMMENT '01.长期有效
02.短时间内有效
03.长期有效',
	START_TIME varchar(32),
	END_DATE varchar(32),
	RISK_ID char(32) NOT NULL,
	PRIMARY KEY (FORMULA_DEF_ID)
);


CREATE TABLE BI_FORMULA_DEF_RULE
(
	ID varchar(32) NOT NULL,
	CONDITION_ varchar(32) NOT NULL,
	FRONT varchar(64) NOT NULL,
	FUN_NAME varchar(32),
	BACK varchar(32) NOT NULL,
	CREATE_TIME varchar(32) NOT NULL,
	ITEM_ID varchar(32) NOT NULL,
	PRIMARY KEY (ID)
);


CREATE TABLE BI_QUOTA_DATA
(
	ID varchar(32) NOT NULL,
	TABLE_NAME varchar(32) NOT NULL,
	FIELD varchar(32) NOT NULL,
	KEY varchar(32),
	NAME_CN varchar(32),
	VAL varchar(32),
	PRIMARY KEY (ID)
);


CREATE TABLE BI_QUOTA_DEF
(
	QUOTA_DEF_ID varchar(32) NOT NULL,
	TABLE_NAME varchar(64) NOT NULL,
	FIELD_NAME varchar(64) NOT NULL,
	FIELD_NAME_CN varchar(32),
	CREATE_TIME varchar(32),
	PRIMARY KEY (QUOTA_DEF_ID)
);


CREATE TABLE BI_QUOTA_TYPE
(
	ID varchar(32) NOT NULL,
	TABLE_NAME varchar(64) NOT NULL,
	TABLE_NAME_CN varchar(64) NOT NULL,
	PRIMARY KEY (ID)
);


CREATE TABLE BI_RESULT_DATA
(
	ID varchar(32) NOT NULL,
	RECKON_DATE varchar(32) NOT NULL,
	FLT_NO varchar(32) NOT NULL,
	RESULT varchar(32),
	RISK_GRADE varchar(32) NOT NULL,
	CREATE_TIME varchar(32) NOT NULL,
	RISK_ID char(32) NOT NULL,
	PRIMARY KEY (ID)
);


CREATE TABLE BI_RISK_FACTORS
(
	RISK_ID char(32) NOT NULL,
	PID varchar(32) NOT NULL,
	NAME varchar(64),
	CREATE_TIME varchar(32),
	IS_END_NODE smallint unsigned NOT NULL,
	CHILD_NODE_NUMBER int unsigned,
	PRIMARY KEY (RISK_ID)
);


CREATE TABLE BI_RISK_FACTORS_LEVEL
(
	ID char(32) NOT NULL,
	LEVEL_FLAG smallint unsigned,
	LEVEL_VALUE double(10,2),
	RISK_ID char(32) NOT NULL,
	PRIMARY KEY (ID)
);


CREATE TABLE BI_RISK_RULES
(
	RULES_ID varchar(32) NOT NULL,
	VALUE varchar(32) NOT NULL,
	-- 1.固定值
	-- 2.变量值
	VALUE_TYPE char(1) DEFAULT '1' COMMENT '1.固定值
2.变量值',
	-- 1.并且
	-- 2.或
	RELATION char(1) NOT NULL COMMENT '1.并且
2.或',
	MEASURES varchar(2048),
	FORMULA_DEF_ID varchar(32) NOT NULL,
	PRIMARY KEY (RULES_ID)
);


CREATE TABLE BI_SCREENING_RESULTS
(
	ITEM_ID varchar(32) NOT NULL,
	-- 或则||
	-- 并且&&
	NEXUS varchar(2) DEFAULT '&&' COMMENT '或则||
并且&&',
	IS_SIGN varchar(8) DEFAULT '1' NOT NULL,
	TABLE_NAME varchar(32),
	FIELD varchar(32),
	FUN varchar(64),
	CONTRAST varchar(32),
	BACK_TYPE varchar(8),
	BACK varchar(32),
	ORDER_NUM smallint DEFAULT 1 NOT NULL,
	RULES_ID varchar(32) NOT NULL,
	PRIMARY KEY (ITEM_ID)
);


CREATE TABLE BI_TERMINAL_TYPE
(
	TERMINAL_TYPE_ID varchar(32) NOT NULL,
	NAME varchar(32),
	PID varchar(32),
	CREATE_TIME varchar(32),
	PRIMARY KEY (TERMINAL_TYPE_ID)
);


CREATE TABLE BI_TERMINAL_TYPE_REF
(
	ID varchar(32) NOT NULL,
	RISK_ID char(32) NOT NULL,
	TERMINAL_TYPE_ID varchar(32) NOT NULL,
	PRIMARY KEY (ID)
);


CREATE TABLE FLIGHT
(
	ID varchar(32) NOT NULL,
	FLT_NO varchar(16),
	IS_INTERNATIONAL varchar(8),
	START_AIRPORT varchar(32),
	END_AIRPORT varchar(32),
	START_TIME varchar(32),
	REAL_START_TIME varchar(32),
	DEPARTURE_TIME varchar(32),
	REAL_END_TIME varchar(32),
	END_TIME varchar(32),
	ARRIVAL_TIME varchar(32),
	DISPATCH_DATE varchar(32),
	IS_APPROVE varchar(32),
	IS_BAK varchar(32),
	OPEN_DOOR_DATE varchar(32),
	CLOSE_DOOR_DATE varchar(32),
	CREATE_TIME varchar(32),
	-- 1.变更
	-- 2.非变更
	IS_CHANGE varchar(2) COMMENT '1.变更
2.非变更',
	PRIMARY KEY (ID)
);


CREATE TABLE FLIGHT_PILOT
(
	ID varchar(32) NOT NULL,
	FLT_ID varchar(32) NOT NULL,
	PILOT_ID varchar(32),
	CREATE_TIME varchar(32),
	PRIMARY KEY (ID)
);


CREATE TABLE MATRIX
(
	ID char(32) NOT NULL,
	X_ID varchar(32),
	Y_ID varchar(32),
	COORD varchar(32),
	COORD_VAL int,
	D_LEVEL smallint DEFAULT 0,
	RISK_ID char(32) NOT NULL,
	PRIMARY KEY (ID)
);


CREATE TABLE PILOTS
(
	PILOTS_ID varchar(32) NOT NULL,
	NAME varchar(32) NOT NULL,
	EMP_NUM varchar(30) NOT NULL,
	LICENSE_ID varchar(32),
	ICAOLEVEL varchar(32),
	ICAOSTARTDATE varchar(32),
	NATIONALITY varchar(32),
	CITYID varchar(32),
	ID_CARDNO varchar(32),
	EN_NAME varchar(32),
	-- 1.底
	-- 2.中
	-- 3.高
	MENTAL_STRESS varchar(2) COMMENT '1.底
2.中
3.高',
	BIRTHDAY varbinary(32),
	EMERGENCY_STARTDATE varchar(32),
	LAST_BREAK_TIME varchar(32),
	PILOT_HEALTH varchar(2),
	TECHNICAL_GRADE varchar(8),
	PRIMARY KEY (PILOTS_ID)
);



/* Create Foreign Keys */

ALTER TABLE BI_RISK_RULES
	ADD FOREIGN KEY (FORMULA_DEF_ID)
	REFERENCES BI_FORMULA_DEF (FORMULA_DEF_ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE BI_FORMULA_DEF
	ADD FOREIGN KEY (RISK_ID)
	REFERENCES BI_RISK_FACTORS (RISK_ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE BI_RESULT_DATA
	ADD FOREIGN KEY (RISK_ID)
	REFERENCES BI_RISK_FACTORS (RISK_ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE BI_RISK_FACTORS_LEVEL
	ADD FOREIGN KEY (RISK_ID)
	REFERENCES BI_RISK_FACTORS (RISK_ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE BI_TERMINAL_TYPE_REF
	ADD FOREIGN KEY (RISK_ID)
	REFERENCES BI_RISK_FACTORS (RISK_ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE MATRIX
	ADD FOREIGN KEY (RISK_ID)
	REFERENCES BI_RISK_FACTORS (RISK_ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE BI_SCREENING_RESULTS
	ADD FOREIGN KEY (RULES_ID)
	REFERENCES BI_RISK_RULES (RULES_ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE BI_FORMULA_DEF_RULE
	ADD FOREIGN KEY (ITEM_ID)
	REFERENCES BI_SCREENING_RESULTS (ITEM_ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE BI_TERMINAL_TYPE_REF
	ADD FOREIGN KEY (TERMINAL_TYPE_ID)
	REFERENCES BI_TERMINAL_TYPE (TERMINAL_TYPE_ID)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



