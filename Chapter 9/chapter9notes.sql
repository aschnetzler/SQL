--implicit join
SELECT title, p-pubid,name
FROM publishers p, books b
WHERE p.pubid = b.pubid;
--natural join
SELECT title, p-pubid,name
FROM publishers p
NATURAL JOIN books b;
--explicit join
SELECT title, pubid,name
FROM publishers p
NATURAL JOIN books b;

SELECT title, pubid,name, contact
FROM books
JOIN publishers2 USING (pubid);


SELECT c.customer# C#, c.firstname || ' ' || c.lastname AS "Customer", o.order# AS "Not Shipped Orders", orderdate, shipdate
FROM customers c, orders o
WHERE c.customer#= o.customer#
AND shipdate IS NULL
AND orderdate BETWEEN '04-OCT-15' AND '16-DEC-15'
ORDER BY orderdate;

SELECT title, retail, gift
FROM books b, promotion p 
WHERE retail BETWEEN minretail AND maxretail;

SELECT c.customer# C#, Lastname, state ST, shipdate, b.ISBN, category
FROM customers c, orders o, orderitems oi, books b
WHERE c.customer# = o.customer#
AND o.order# =oi.order#
AND oi.ISBN = b.ISBN
AND Lastname IN('GIANA','MORALES')
AND category IN('COMPUTER')
AND b.ISBN IN ('8843172113')
AND shipdate IS NOT NULL;

SELECT customer# C#, Lastname, state ST, shipdate,ISBN, category
FROM customers NATURAL JOIN orders
orders NATURAL JOIN orderitems
orderitems NATURAL JOIN books 
WHERE Lastname IN('GIANA','MORALES')
AND category IN('COMPUTER')
AND ISBN IN ('8843172113')
AND shipdate IS NOT NULL;

SELECT customer# C#, Lastname, state ST, shipdate, ISBN, category
FROM customers JOIN orders USING(customer#)
JOIN orderitems USING(order#)
JOIN books USING (ISBN)
WHERE Lastname IN('GIANA','MORALES')
AND category IN('COMPUTER')
AND ISBN IN ('8843172113')
AND shipdate IS NOT NULL;

SELECT c.customer# C#, Lastname, state ST, shipdate, b.ISBN, category
FROM customers c JOIN orders o ON c.customer# = o.customer#
JOIN orderitems oi ON  o.order# =oi.order#
JOIN books b ON oi.ISBN = b.ISBN
WHERE Lastname IN('GIANA','MORALES')
AND category IN('COMPUTER')
AND b.ISBN IN ('8843172113')
AND shipdate IS NOT NULL;


SELECT title, retail, gift, contact
FROM  books b, promotion p, publishers pu
WHERE b.pubid = pu.pubid
AND retail BETWEEN minretail AND maxretail
AND  category IN ('COMPUTER');


SELECT c.customer# C#, firstname || ' ' || lastname Customer, o.order#, title, retail, gift
FROM customers c, orders o, orderitems oi, books b, promotion p
WHERE c.customer#= o.customer#
AND o.order#= oi.order#
AND oi.ISBN = b.ISBN
AND retail BETWEEN minretail AND maxretail
AND  title IN ('E-BUSINESS THE EASY WAY', 'BIG BEAR AND LITTLE DOVE')
ORDER BY order#;

