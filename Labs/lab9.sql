SELECT DISTINCT firstname || ' '|| lastname “Customer name”, 
zip, SUBSTR(zip, 1, 3) "Distinct Code", 
SUBSTR(zip, -2, 2)  "Code2", 
email, SUBSTR(email, 1, INSTR(email,' ')-1) LOCAL_PART,
SUBSTR(email, INSTR(email,' ')+1) EMAIL_DOMAIN
FROM customers
WHERE SUBSTR(zip,-2,2) <100; 

SELECT DISTINCT c.firstname || ' '||c. lastname “Customer name”,
o.order#
NVL(TO_CHAR(referred), 'Not Referred') "Referral",
FROM customers c, orders o,
WHERE c.customer# = o.customer#
Order by  referred desc;

SELECT  DISTINCT c.customer# “C#”, o.order#,title, pubdate,
TO_CHAR(oi.quantity*(oi.paideach-b.cost), '$999.99')  “Profit”
FROM customers c, orders o, books b, orderitems oi
WHERE oi.ISBN = b.ISBN
AND o.customer# = c.customer#
AND o.order# = oi.order#
AND category = 'COMPUTER';

SELECT  c.customer# “C#”, o.order#, DISTINCT title, TO_CHAR((pubdate), 'MONTH DD-DAY') PUB_DATE,
TO_CHAR(oi.quantity*(oi.paideach-b.cost), '$999.99')  “Profit”
FROM customers c, orders o, books b, orderitems oi
WHERE oi.ISBN = b.ISBN
AND o.customer# = c.customer#
AND category = 'COMPUTER';

SELECT email, SUBSTR(email, 1, INSTR(email, '@')-1) LOCAL_PART,
SUBSTR(email, -7,7)  EMAIL_DOMAIN
FROM customers;

DISTINCT firstname || ' '|| lastname "Customer name", 
zip, 
SUBSTR(zip, 1, 3) "Distinct Code", 
SUBSTR(zip, -2, 2)  "Code2", 
email, 
SUBSTR(email, 1, INSTR(email, '@')-1) LOCAL_PART,
SUBSTR(email, -7,7)  EMAIL_DOMAIN
FROM customers;

