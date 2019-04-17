
/* Drop Tables */

DROP TABLE Baby_Border CASCADE CONSTRAINTS;
DROP TABLE Calender CASCADE CONSTRAINTS;
DROP TABLE Reservation CASCADE CONSTRAINTS;
DROP TABLE Carpool_Border CASCADE CONSTRAINTS;
DROP TABLE Hospital CASCADE CONSTRAINTS;
DROP TABLE KidHouse CASCADE CONSTRAINTS;
DROP TABLE ReView CASCADE CONSTRAINTS;
DROP TABLE Map CASCADE CONSTRAINTS;
DROP TABLE Code CASCADE CONSTRAINTS;
DROP TABLE Partner_Members CASCADE CONSTRAINTS;
DROP TABLE Members CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE Baby_Border
(
	No number NOT NULL,
	Title nvarchar2(20) NOT NULL,
	Thumbnail varchar2(300),
	Url varchar2(300) NOT NULL,
	PRIMARY KEY (No)
);


CREATE TABLE Calender
(
	Cal_No number NOT NULL,
	Title nvarchar2(20) NOT NULL,
	StartDay date NOT NULL,
	EndDay date,
	Content nvarchar2(300),
	Type nvarchar2(20),
	ID varchar2(20) NOT NULL,
	PRIMARY KEY (Cal_No)
);


CREATE TABLE Carpool_Border
(
	CP_No number NOT NULL,
	StartPoint nvarchar2(20) NOT NULL,
	EndPoint nvarchar2(20) NOT NULL,
	Type nvarchar2(10),
	Content nvarchar2(20),
	Start_Xpos number NOT NULL,
	Start_Ypos number NOT NULL,
	End_Xpos number NOT NULL,
	End_Ypos number NOT NULL,
	-- 출발 시간을 적습니다
	TIME date NOT NULL,
	-- 카풀 금액입니다.
	PRICE number NOT NULL,
	ID varchar2(20) NOT NULL,
	PRIMARY KEY (CP_No)
);


CREATE TABLE Code
(
	Code number NOT NULL,
	Code_Name nvarchar2(20),
	PRIMARY KEY (Code)
);


CREATE TABLE Hospital
(
	No number NOT NULL,
	Subject nvarchar2(20),
	NightCare varchar2(10),
	Map_No number NOT NULL,
	PRIMARY KEY (No)
);


CREATE TABLE KidHouse
(
	No number NOT NULL,
	LimitCount number,
	TeacherCount number,
	Map_No number NOT NULL,
	PRIMARY KEY (No)
);


CREATE TABLE Map
(
	Map_No number NOT NULL,
	Name nvarchar2(20),
	Addr nvarchar2(20),
	Tel varchar2(20),
	TotalScore number,
	Code number NOT NULL,
	PRIMARY KEY (Map_No)
);


CREATE TABLE Members
(
	ID varchar2(20) NOT NULL,
	-- 최소 : 6자
	-- 최대 : 16자
	-- 영문과 숫자와 특수문자의 조합으로...
	PWD varchar2(16) NOT NULL,
	Addr nvarchar2(100) NOT NULL,
	Tel number NOT NULL,
	Email varchar2(50) NOT NULL,
	-- 이메일 인증용 랜덤키 입니다.
	AUTHKEY nvarchar2(50),
	-- 판단용 입니다
	-- 0이면 이메일 인증이 되지않은것
	-- 1이면 이메일 인증이 완료되어습니다.
	AUTHSTATUS char(1),
	PRIMARY KEY (ID)
);


CREATE TABLE Partner_Members
(
	P_No number NOT NULL,
	ID varchar2(20) NOT NULL,
	CarNumber nvarchar2(20),
	-- 소형차
	-- 중형차
	-- 대형차
	CarType nvarchar2(10),
	-- 0 : 카시트 존재
	-- 1 : 카시트 미 존재
	CarSit char(1),
	TotalScore number,
	TotalCount number,
	PRIMARY KEY (P_No)
);


CREATE TABLE Reservation
(
	RS_No number NOT NULL,
	Score number,
	Finish char(1) DEFAULT '1' NOT NULL,
	ID varchar2(20) NOT NULL,
	CP_No number NOT NULL,
	PRIMARY KEY (RS_No)
);


CREATE TABLE ReView
(
	RV_No number NOT NULL,
	Title nvarchar2(50),
	Content nvarchar2(2000),
	Score number,
	ID varchar2(20) NOT NULL,
	Map_No number NOT NULL,
	PRIMARY KEY (RV_No)
);



/* Create Foreign Keys */

ALTER TABLE Reservation
	ADD FOREIGN KEY (CP_No)
	REFERENCES Carpool_Border (CP_No)
;


ALTER TABLE Map
	ADD FOREIGN KEY (Code)
	REFERENCES Code (Code)
;


ALTER TABLE Hospital
	ADD FOREIGN KEY (Map_No)
	REFERENCES Map (Map_No)
;


ALTER TABLE KidHouse
	ADD FOREIGN KEY (Map_No)
	REFERENCES Map (Map_No)
;


ALTER TABLE ReView
	ADD FOREIGN KEY (Map_No)
	REFERENCES Map (Map_No)
;


ALTER TABLE Calender
	ADD FOREIGN KEY (ID)
	REFERENCES Members (ID)
;


ALTER TABLE Carpool_Border
	ADD FOREIGN KEY (ID)
	REFERENCES Members (ID)
;


ALTER TABLE Partner_Members
	ADD FOREIGN KEY (ID)
	REFERENCES Members (ID)
;


ALTER TABLE Reservation
	ADD FOREIGN KEY (ID)
	REFERENCES Members (ID)
;


ALTER TABLE ReView
	ADD FOREIGN KEY (ID)
	REFERENCES Members (ID)
;



