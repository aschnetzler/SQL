SELECT category, COUNT(title)"# of Books", 
AVG(retail) "Avg$"
FROM books

ORDER BY category;


SET LINESIZE 200
SET PAGESIZE 200
SELECT c.customer# "c#", COUNT(order#) "Placed Orders", COUNT(shipdate)"Shipped Orders"
FROM customers c, orders o
WHERE c.customer# = o.customer#(+)
GROUP BY c.customer#;

SELECT o.customer# c#, COUNT(*) "Undelivered Orders"
FROM orders o
WHERE shipdate IS NULL
GROUP BY o.customer#;

SELECT b.isbn, b.title, COUNT(*) "Purchase Frequency"
FROM books b, orderitems oi
WHERE b.isbn(+) = oi.isbn
ORDER BY title;

SELECT customer# c#, firstname ||' ' || lastname "Customer", state "State",
TO_CHAR(MAX(retail), '999,999.99')"Most$",
TO_CHAR(MIN(retail), '999,999.99')"Least$",
AVG(retail) "Average$",
TO_CHAR(SUM((retail-cost)*quantity), '999,999.99') "Total Profit"
FROM customers JOIN orders USING (customer#)
JOIN orderitems USING(order#)
JOIN books USING(isbn)
WHERE state = 'FL'
HAVING SUM((retail-cost)*quantity) >100
GROUP BY customer#, firstname ||' ' || lastname, state
ORDER BY "Total Profit" asc;

COLUMN "Avg Total Profit" FORMAT A16

SELECT ROUND(AVG((retail-cost)*quantity),2) "Avg Total Profit"
FROM books JOIN orderitems USING(isbn)
;

SELECT b.isbn, b.title, COUNT(*) "Purchase Frequency"
FROM books b, orderitems oi
WHERE b.ISBN = oi.ISBN
GROUP BY b.isbn, b.title
Order By "Purchase Frequency";

COLUMN "Avg Total Profit" FORMAT A16

SELECT TO_CHAR(AVG(SUM((retail-cost)* quantity)), '999,999.00') "Avg Total Profit"
FROM orderitems JOIN books USING(isbn)
GROUP by order#;






