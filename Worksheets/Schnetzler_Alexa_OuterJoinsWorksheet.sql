-- Run this first
DROP TABLE rooms CASCADE CONSTRAINTS;
DROP TABLE students CASCADE CONSTRAINTS;

CREATE TABLE rooms
(room_code  NUMBER(4) PRIMARY KEY,
bldg_code VARCHAR2(10));

INSERT INTO rooms
VALUES (1001, 'ALPHA');
INSERT INTO rooms
VALUES (1002, 'ALPHA');
INSERT INTO rooms
VALUES (1003, 'DELTA');
INSERT INTO rooms
VALUES (1004, 'DELTA');

CREATE TABLE students 
(stu_num VARCHAR2(6) PRIMARY KEY, 
lastname VARCHAR2(10),
firstname VARCHAR2(10),
ini CHAR(1),
room_code NUMBER(4),
    CONSTRAINT students_roomscode_fk FOREIGN KEY (room_code)
    REFERENCES rooms(room_code)); 
 
INSERT INTO students 
VALUES ('SIU001', 'SMITH', 'PETER', 'C', 1001);
INSERT INTO students 
VALUES ('SIU002', 'JAMES', 'BOB', 'S', 1001);
INSERT INTO students 
VALUES ('SIU003', 'DAVIS', 'JOHN', 'C', NULL);
INSERT INTO students 
VALUES ('SIU004', 'LEE', 'ASHLEY', 'A', 1003);
INSERT INTO students 
VALUES ('SIU005', 'BUSH', 'AMY', NULL, 1003);
INSERT INTO students 
VALUES ('SIU006', 'OMABA', 'MIKE', 'D', NULL);

--Question 1
SELECT s.firstname || ' ' || s.lastname "Students", r.room_code || ' ' || r.bldg_code "Rooms Assigned"
FROM students s, rooms r
WHERE s.room_code = r.room_code
ORDER BY 1; 

--Question 2
	--Option 1
	SELECT s.firstname || ' ' || s.lastname "Students", r.room_code || ' ' || r.bldg_code "Rooms Assigned"
	FROM students s, rooms r
	WHERE r.room_code = s.room_code (+)
	ORDER BY 1; 
	--Option 2
	SELECT s.firstname || ' ' || s.lastname "Students", room_code || ' ' || r.bldg_code "Rooms Assigned"
	FROM rooms r LEFT OUTER JOIN students s USING(room_code) 
	ORDER BY 1;
	--Option 3
	SELECT s.firstname || ' ' || s.lastname "Students", room_code || ' ' || r.bldg_code "Rooms Assigned"
	FROM students s RIGHT OUTER JOIN rooms r USING(room_code)
	ORDER BY 1;
	--Option 4
	SELECT s.firstname || ' ' || s.lastname "Students", r.room_code || ' ' || r.bldg_code "Rooms Assigned"
	FROM rooms r LEFT OUTER JOIN students s ON r.room_code = s.room_code (+)
	ORDER BY 1;
	
--Question 3
	--Option 1
	SELECT s.firstname || ' ' || s.lastname "Students", r.room_code || ' ' || r.bldg_code "Rooms Assigned"
	FROM students s, rooms r
	WHERE s.room_code =r.room_code (+)
	ORDER BY 1; 
	--Option 2
	SELECT s.firstname || ' ' || s.lastname "Students", room_code || ' ' || r.bldg_code "Rooms Assigned"
	FROM rooms r RIGHT OUTER JOIN students s USING(room_code)
	ORDER BY 2;
	
--Question 4
	-- Option 1
	SELECT s.firstname || ' ' || s.lastname "Students", room_code || ' ' || r.bldg_code "Rooms Assigned"
	FROM rooms r FULL OUTER JOIN students s USING(room_code) 
	ORDER BY 1; 
	-- Option 2
	SELECT s.firstname || ' ' || s.lastname "Students", r.room_code || ' ' || r.bldg_code "Rooms Assigned"
	FROM rooms r FULL OUTER JOIN students s On s.room_code =r.room_code
	ORDER BY 1;
	-- Option 3
	SELECT s.firstname || ' ' || s.lastname "Students", room_code || ' ' || r.bldg_code "Rooms Assigned"
	FROM rooms r NATURAL FULL OUTER JOIN students s
	ORDER BY 1;





