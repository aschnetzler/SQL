SELECT *
FROM customers;

SELECT firstname, lastname
FROM customers;

SELECT title 
FROM books;

SELECT title "Book Title"
FROM books;

SELECT title AS book_title
FROM books;

SELECT isbn, retail, cost, 
(retail-cost) profit
FROM books;

SELECT state
FROM customers;

SELECT DISTINCT state
FROM customers;

SELECT UNIQUE state
FROM customers;

SELECT firstname || ' ' || lastname "Customer"
FROM customers;

--QUESTIONS--

--Question 1--
SELECT title "Book Title", pubdate "Publication Date"
FROM books;

--Question 2--
SELECT DISTINCT pubid, category
From books
ORDER BY pubid ASC;

--Question 3--
SELECT order#, item#, isbn, quantity, paideach, 
(quantity*paideach) "Item Total"
FROM orderitems
ORDER BY (quantity*paideach) DESC;

--Question 4--
SELECT firstname || ' ' || lastname "Customer Name", 
address || ' ' || city || ' ' || state || ' ' || zip "Location"
FROM customers;

--Question 5--
SELECT title "Book Title", ((retail-cost)/cost*100)"Profit %"
FROM books
ORDER BY ((retail-cost)/cost*100) ASC;

