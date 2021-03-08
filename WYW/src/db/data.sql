.
--�쉶�썝 踰덊샇 �떆���뒪(PRIMARY KEY)
CREATE SEQUENCE USERNOSQ NOCACHE;

CREATE TABLE USERDATA(
	USERNO NUMBER NOT NULL,
	USERID VARCHAR2(500) NOT NULL,
	USERPW VARCHAR2(500) NOT NULL,
	USERNAME VARCHAR2(1000) NOT NULL,
	USERADDR VARCHAR2(4000) NOT NULL,
	USERPHONE VARCHAR2(4000) NOT NULL,
	USEREMAIL VARCHAR2(100) NOT NULL,
	USERENABLED VARCHAR2(2) NOT NULL,
	USERROLE VARCHAR2(50) NOT NULL,
	USERFOLLOW NUMBER NOT NULL,
	CONSTRAINT USERDATA_PK PRIMARY KEY(USERNO),
	CONSTRAINT USERDATA_UQ_ID UNIQUE(USERID),
	CONSTRAINT USERDATA_UQ_PHONE UNIQUE(USERPHONE),
	CONSTRAINT USERDATA_UQ_EMAIL UNIQUE(USEREMAIL),
	CONSTRAINT USERDATA_ENABLE_CHK CHECK(USERENABLED IN('Y','N'))
);

--湲� 踰덊샇 �떆���뒪(PRIMARY KEY)
CREATE SEQUENCE BOARDNOSQ NOCACHE;

DROP SEQUENCE GROUPNOSQ;

--洹몃９ 踰덊샇 �떆���뒪(�깉濡쒖슫 湲� �벑濡� �븷 �븣留�)
CREATE SEQUENCE GROUPNOSQ NOCACHE;

CREATE TABLE USERCONTENT(
	BOARDNO NUMBER NOT NULL,
	GROUPNO NUMBER NOT NULL,
	GROUPSQ NUMBER NOT NULL,
	TITLE VARCHAR2(2000) ,
	CONTENT VARCHAR2(4000),
	USERID NUMBER NOT NULL, 
	USERIMGNAME VARCHAR2(50),
	USERIMG VARCHAR2(100),
	USERLIKE NUMBER NOT NULL,
	REGDATE DATE NOT NULL,
	CONSTRAINT USERCONTENT_PK PRIMARY KEY(BOARDNO),
	CONSTRAINT USERCONTENT_FK FOREIGN KEY(USERID) REFERENCES USERDATA(USERNO)
);

CREATE TABLE USERFOLLOW(
   FOLLOWNO NUMBER NOT NULL,
   FOLLOWUSER NUMBER NOT NULL,
   FOLLOWINGUSER NUMBER NOT NULL,
   CONSTRAINT FOLLOWNO_PK PRIMARY KEY(FOLLOWNO),
   CONSTRAINT FOLLOWUSER_FK FOREIGN KEY(FOLLOWUSER) REFERENCES USERDATA(USERNO),
   CONSTRAINT FOLLOWINGUSER_FK FOREIGN KEY(FOLLOWINGUSER) REFERENCES USERDATA(USERNO)
);

SELECT * FROM USERCONTENT ORDER BY GROUPNO DESC, GROUPSQ;

SELECT * FROM USERDATA;

DROP TABLE USERDATA CASCADE CONSTRAINTS;
DROP TABLE USERCONTENT;
DROP TABLE USERFOLLOW;
DROP SEQUENCE GROUPNOSQ;
DROP SEQUENCE BOARDNOSQ;



INSERT INTO USERDATA VALUES(
USERNOSQ.NEXTVAL, 'ADMIN', 'ADMIN123', '愿�由ъ옄', '�꽌�슱�떆 以묐옉援�', '010-1234-1234', 'ADMIN123@NAVER.COM', 'Y', 
'MANAGER', 0
);

INSERT INTO USERDATA VALUES(
USERNOSQ.NEXTVAL, 'USER1', 'USER123', '�솉湲몃룞', '�꽌�슱�떆 �꽌珥덇뎄', '010-1234-4321', 'USER1@GAMIL.COM', 'Y', 
'USER', 0
);
