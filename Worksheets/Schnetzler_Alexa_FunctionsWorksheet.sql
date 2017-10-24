--Question 1
SELECT LOWER (firstname) firstname, LOWER(lastname) lastname FROM customers
WHERE state = 'IL';

--Question 2
SELECT INITCAP(firstname) firstname, INITCAP lastname) lastname FROM customers
WHERE state = 'IL';

--Question 3
SELECT INITCAP firstname) || ‘ ‘ ||INITCAP (lastname) name FROM customers
WHERE LOWER(lastname) = 'smith';

--Question 4
SELECT name, phone, SUBSTR(phone 1,3) areacode FROM publishers;

--Question 5
SELECT name, phone, SUBSTR(phone, 5)  last4 FROM publishers;
SELECT name, phone, SUBSTR(phone, 9,4)  last4 FROM publishers;
SELECT name, phone, SUBSTR(phone, -4,4)  last4 FROM publishers;
