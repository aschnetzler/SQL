conn system/ist370

CREATE TABLE students99
(stu# CHAR (10), 
firstname VARCHAR2 (20),
lastname VARCHAR2 (20)
);

CREATE TABLE manager
(id CHAR(4),
 firstname VARCHAR2(12)  NOT NULL,
 lastname VARCHAR2(12)  NOT NULL,
 hiredate DATE DEFAULT SYSDATE,
 salary NUMBER(8,2),
 commission NUMBER(7,2) DEFAULT 0,
 region CHAR(2) DEFAULT 'NE'
 );
 /* use desc then the table name to make sure it is working */
 
 CREATE TABLE emp
(empid CHAR(5),
firstname VARCHAR2(40),
lastname VARCHAR2(40),
date_of_birth DATE,
hiredate DATE,
salary NUMBER(10,2),
commission NUMBER(10,2),
annual_earn AS (salary*12 + commission),
age AS ((SYSDATE - date_of_birth)/365),
region CHAR(2)
);

 
