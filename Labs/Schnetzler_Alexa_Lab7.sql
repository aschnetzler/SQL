--Run this code first
SET LINESIZE 200
SET PAGESIZE 100

--Question 1
SELECT c.customer# C#, firstname || ‘ ‘ || lastname Customer, c.order#, title, retail, gift
FROM customers c, orders o, orderitems oi, books b, promotion p
WHERE c.customer#= o.customer#
AND o.order#= oi.order#
AND oi.ISBN = b.ISBN
AND retail BETWEEN minretail AND maxretail
AND  title IN ('E-BUSINESS THE EASY WAY', 'BIG BEAR AND LITTLE DOVE')
ORDER BY order#;

--Question 2
SELECT title, retail, gift, contact
FROM  books b, promotion p, publishers pu
WHERE b.pubid = pu.pubid
AND retail BETWEEN minretail AND maxretail
AND  category IN ('COMPUTER')
ORDER BY title;


--Question 3
SELECT c.customer# C#, c.firstname ||' ' || c.lastname Customer, r.customer# R#, r.firstname ||' '|| r.lastname "Referred By", o.order#, orderdate
FROM customers c, customers r, orders o
WHERE c.customer# = r.customer#
AND c.customer#= o.customer#
AND orderdate IS NOT NULL
AND c.referred IS NOT NULL
ORDER BY c.customer#;

--Question 4
COLUMN "EMPLOYEE" FORMAT A15
COLUMN "MANAGER" FORMAT A15
COLUMN JOBTITLE FORMAT A25
COLUMN PAY_GRADE FORMAT A10
Select e.firstname ||' ' || e.lastname Employee, e. JOBTITLE, e.MONTHLY_SALARY, PAY_GRADE, m.firstname ||' ' || m.lastname Manager, m. JOBTITLE
FROM EMP e, EMP m, PAY_SCALE
WHERE e.EMPNO = m.EMPNO
AND e.MGR_ID = m.MGR_ID
AND e. JOBTITLE = e. JOBTITLE
AND m.JOBTITLE = e.JOBTITLE
Order By e. JOBTITLE;
