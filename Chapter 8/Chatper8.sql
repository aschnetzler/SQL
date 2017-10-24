SELECT firstname, lastname
FROM customers
WHERE state = 'IL'
AND lastname = 'SMITH';

SELECT firstname || ' ' || lastname "Employee", monthly_salary

Select order#, orderdate
FROM orders
WHERE orderdate BETWEEN '01-APR-15' AND '31-OCT-15'
ORDER By orderdate;

Select order#, orderdate
FROM orders
WHERE orderdate >= '01-APR-15' 
AND  orderdate <= '31-OCT-15'
ORDER By orderdate;