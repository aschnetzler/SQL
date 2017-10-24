--Question 1
SELECT  c.firstname|| ‘ ‘ ||c.lastname “Customers”, o.order# 
FROM customers c, orders o 
WHERE c.customer#= o.customer#(+);

--Question 2
SELECT  c.firstname|| ' ' ||c.lastname "Customers", o.order# 
FROM customers c, orders o 
WHERE c.customer#= o.customer#(+)
AND o.order# IS NULL;


--Question 3
SELECT title, o.order#, state, c.lastname "Customers"
FROM books b, orders o,  orderitems oi, customers c
WHERE c.customer#(+)= o.customer#
AND o.order# (+)  = oi.order# 
AND oi.ISBN (+) = b.ISBN
AND b.category = 'COMPUTER'
Order By title;


--Question 4 I do not have the code for

--Question 5
SELECT title, o.order#, state, c.lastname "Customers"
FROM books b, orders o,  orderitems oi, customers c
WHERE c.customer# (+) = o.customer#
AND o.order# (+) = oi.order# 
AND oi.ISBN (+)= b.ISBN 
AND b.category = 'COMPUTER'
AND o.order# IS NULL
AND state IS NULL
AND c.customer# IS NULL
Order By title;

--Question 6
SELECT c.firstname|| ' ' ||c.lastname "Customers", state, o.order#, title
FROM orders o,  orderitems oi, customers c, books b
WHERE c.customer# = o.customer#(+)
AND o.order#  = oi.order# (+)
AND b.ISBN (+) = oi.ISBN
AND state IN('FL', 'MA','NY')
Order By state;

--Question 7
COLUMN "EMPLOYEE" FORMAT A15
COLUMN "MANAGER" FORMAT A15
SELECT e.firstname|| ' ' ||e.lastname "Employee",m.firstname|| ' ' || m.lastname "Manager"
FROM emp e, emp m
WHERE m.empno(+) = e.MGR_ID
Order By “Manager”;

--Question 8
SELECT e.firstname|| ' ' ||e.lastname "Employee",m.firstname|| ' ' ||m.lastname "Manager"
FROM emp e, emp m
WHERE m.empno(+)= e.MGR_ID
AND e.MGR_ID IS NULL;
