--Question 1
SELECT c.customer# C#, Lastname, state ST, shipdate, b.ISBN, category
FROM customers c, orders o, orderitems oi, books b
WHERE c.customer# = o.customer#
AND o.order# =oi.order#
AND oi.ISBN = b.ISBN
AND Lastname IN('GIANA','MORALES')
AND category IN('COMPUTER')
AND b.ISBN IN ('8843172113')
AND shipdate IS NOT NULL;

--Question 2
SELECT customer# C#, Lastname, state ST, shipdate,ISBN, category
FROM customers NATURAL JOIN orders
orders NATURAL JOIN orderitems
orderitems NATURAL JOIN books 
WHERE Lastname IN('GIANA','MORALES')
AND category IN('COMPUTER')
AND ISBN IN ('8843172113')
AND shipdate IS NOT NULL; 


--Question 3
SELECT customer# C#, Lastname, state ST, shipdate, ISBN, category
FROM customers JOIN orders USING(customer#)
JOIN orderitems USING(order#)
JOIN books USING (ISBN)
WHERE Lastname IN('GIANA','MORALES')
AND category IN('COMPUTER')
AND ISBN IN ('8843172113')
AND shipdate IS NOT NULL; 

--Question 4
SELECT c.customer# C#, Lastname, state ST, shipdate, b.ISBN, category
FROM customers c JOIN orders o ON c.customer# = o.customer#
JOIN orderitems oi ON  o.order# =oi.order#
JOIN books b ON oi.ISBN = b.ISBN
WHERE Lastname IN('GIANA','MORALES')
AND category IN('COMPUTER')
AND b.ISBN IN ('8843172113')
AND shipdate IS NOT NULL; 
