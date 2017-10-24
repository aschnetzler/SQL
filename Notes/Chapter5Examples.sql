CREATE TABLE acctmanager
(amid CHAR(4),
 amfirst VARCHAR2(12)  NOT NULL,
 amlast VARCHAR2(12)  NOT NULL,
 amedate DATE DEFAULT SYSDATE,
 amsal NUMBER(8,2),
 amcomm NUMBER(7,2) DEFAULT 0,
 region CHAR(2),
  CONSTRAINT acctmanager_amid_pk PRIMARY KEY (amid),
  CONSTRAINT acctmanager_region_ck
     CHECK (region IN ('N', 'NW', 'NE', 'S', 'SE', 'SW', 'W', 'E')));
	INSERT INTO acctmanager(amid, amfirst, amlast, amedate, amsal, amcomm, region),
	VALUES ('T500','NICK','TAYLOR','05-SEP-09',42000,35000,'NE');

	--option 2--
	INSERT INTO acctmanager,
	VALUES ('T500','NICK','TAYLOR','05-SEP-09',42000,3500,'NE');
	
	--record 2--
	INSERT INTO acctmanager(amid, amfirst, amlast, amedate, amsal, amcomm, region),
	VALUES ('L500','MANDY','LOPEZ','01-OCT-09',47000,1500,NULL);
		--option 2--
			INSERT INTO acctmanager(amid, amfirst, amlast, amedate, amsal, amcomm, region),
			VALUES ('L500','MANDY','LOPEZ','01-OCT-09',47000,1500,'');
		--option 3--
			INSERT INTO acctmanager(amid, amfirst, amlast, amedate, amsal, amcomm, region),
			VALUES ('L500','MANDY','LOPEZ','01-OCT-09',47000,1500);
		
		INSERT INTO acctmanager(amid,amedate,amfirst, amlast),
		VALUES ('M100','31-JAN-17','MIKE','DOLAN');
	--INCORRECT!--
		INSERT INTO acctmanager,
		VALUES ('M100','31-JAN-17','MIKE','DOLAN');
		
	--record 3--
	INSERT INTO acctmanager (amid, amfirst, amlast, amedate, amsal, amcomm, region),
	VALUES ('J500','SAMMIE','JONES',39500,2000,'NW');
	--Don't put quotes around default--
	
		--option 2--
		INSERT INTO acctmanager,
		VALUES ('J500','SAMMIE','JONES',DEFAULT,39500,2000,'NW');
		
CREATE TABLE acctmanager2
(amid CHAR(4),
 amfirst VARCHAR2(12)  NOT NULL,
 amlast VARCHAR2(12)  NOT NULL,
 amedate DATE DEFAULT SYSDATE,
 amsal NUMBER(8,2),
 amcomm NUMBER(7,2) DEFAULT 0,
 region CHAR(2),
 annualpay AS (amsale + amcomm),
  CONSTRAINT acctmanager_amid_pk PRIMARY KEY (amid),
  CONSTRAINT acctmanager_region_ck
     CHECK (region IN ('N', 'NW', 'NE', 'S', 'SE', 'SW', 'W', 'E')));
	 INSERT INTO acctmanager(amid, amfirst, amlast, amedate, amsal, amcomm, region),
	VALUES ('T500','NICK','TAYLOR','05-SEP-09',42000,35000,'NE');
	