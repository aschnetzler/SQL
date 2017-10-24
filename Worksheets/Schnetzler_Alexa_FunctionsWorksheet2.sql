--Question 1
	--Option 1
	SELECT firstname, lastname, 'Customer Number: ' || customer# "Customer Number"
	FROM customers;
	--Option 2
	SELECT firstname, lastname, CONCAT('Customer Number: ' CONCAT customer#) "Customer Number"
	FROM customers;
	
--Question 2
	--THIS CODE DOES NOT RUN IT IS NOT SUPPOSED TO RUN
	SELECT CONCAT(firstname,|| ' '||, lastname) "Customer Name", CONCAT ('Customer Number: ', customer#) "Customer Number"
	FROM customers;
	--THIS IS THE CORRECT CODE
	--Option 1
	SELECT firstname ||’’|| lastname "Customer", CONCAT ('Customer Number: ', customer#) "Customer Number", state
	FROM customers;
	--Option 2
	SELECT CONCAT(firstname, CONCAT(' ', lastname)) "Customer", CONCAT ('Customer Number: ', customer#) "Customer Number", state
	FROM customers;
	
--Question 3
SELECT 
ROUND(15.7945,3) nearest_thousandth, 
ROUND(15.7945,2) nearest_hundredth, 
ROUND(15.7945,1) nearest_tenth,
ROUND(15.7945,0) nearest_zero1,
ROUND(15.7945) nearest_zero2
FROM DUAL;

--Question 4
SELECT 
TRUNC(15.7945,3) nearest_thousandth, 
TRUNC(15.7945,2) nearest_hundredth, 
TRUNC(15.7945,1) nearest_tenth,
TRUNC(15.7945,0) nearest_zero1,
TRUNC(15.7945) nearest_zero2
FROM DUAL;

--Question 5
SELECT order#, orderdate, shipdate, 
ROUND(MONTHS_Between(shipdate,orderdate), 2) lead_time
FROM orders
ORDER BY lead_time DESC;

--Question 6
SELECT order#, orderdate, shipdate, 
ROUND(MONTHS_BETWEEN (orderdate, shipdate), 2) lead_time
FROM orders
ORDER BY lead_time DESC;

--Question 7
SELECT MAX(MONTHS_BETWEEN(shipdate,orderdate) max_lead_time
FROM orders;

--Question 8
SELECT order#, orderdate, shipdate, 
 lead_time
FROM orders
ORDER BY lead_time DESC;

--Question 9
COLUMN authorid FORMAT A8
COLUMN renegotiate FORMAT A12
COLUMN royalty_end FORMAT A12

SELECT authorid, title, pubdate,  
ADD_MONTHS(pubdate, 12) renegotiate,
ADD_MONTHS (pubdate, 84) royalty_end
FROM books JOIN bookauthor USING(isbn) 
JOIN authors USING(authorid)
ORDER BY 1;

--Question 10
SELECT authorid, title, pubdate,  
LAST_DAY(ADD_MONTHS(pubdate), 12) renegotiate,
LAST_DAY (ADD_MONTHS (pubdate), 84) royalty_end
FROM books JOIN bookauthor USING(isbn) JOIN authors USING(authorid)
ORDER BY 1;

--Question 11
SELECT SYSDATE "Today", 
LAST_DAY(SYSDATE) – SYSDATE "Days Left"
FROM DUAL;

--Question 12
set linesize 100
COLUMN make_contact FORMAT A20
COLUMN email FORMAT A17


SELECT customer#, lastname, email, order#, shipdate, 
NEXT_DAY(shipdate, ‘FRIDAY’) make_contact
FROM customers JOIN orders USING(customer#)
WHERE shipdate IS NOT NULL
ORDER BY shipdate;

--Question 13
set linesize 120
COLUMN make_contact FORMAT A30

SELECT customer#, lastname, email, order#, shipdate, 
TO_CHAR(NEXT_DAY(shipdate, 'FRIDAY'), ‘ MONTH DD-DAY-‘) make_contact
FROM customers JOIN orders USING(customer#)
WHERE shipdate IS NOT NULL
ORDER BY shipdate;

--Question 14
SELECT empno, lastname, TO_CHAR(monthly_salary*12, ‘$999,999.99’) annual_pay
FROM emp
ORDER BY 3 DESC;

--Question 15
SELECT TO_DATE('2015/11/08', ‘yyyy/mm/dd’) date1, 
TO_DATE ('110815', ‘mmddyy’) date2,
TO_DATE('20151108', ‘yyyymmdd’) date3, 
TO_DATE('20150811', ‘yyyyddmm’) date4
FROM dual;
