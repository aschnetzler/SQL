CREATE TABLE customers_1
(customer_id CHAR(6) PRIMARY KEY,
firstname VARCHAR2(30) not null,
lastname VARCHAR2(30) not null,
address VARCHAR2(50),
city VARCHAR2(20),
state CHAR(2) DEFAULT 'IL',
zip CHAR(5),
region CHAR(2) CHECK(region IN('NE','SE','MW','W','PN','PO')));

CREATE TABLE orders_1
(order_id CHAR(3) PRIMARY KEY,
orderdate DATE DEFAULT SYSDATE,
shipdate DATE,
customer_id CHAR(6) REFERENCES customers_1(customer_id),
CONSTRAINT orders_ordershipdates_ck CHECK(orderdate <= shipdate));

CREATE TABLE products_1
(product_id CHAR(6) PRIMARY KEY,
product_description VARCHAR2(50) UNIQUE,
cost NUMBER(5,2),
list_price NUMBER(5,2));

CREATE TABLE order_details_1
(order_id CHAR(3),
product_id CHAR(6),
item_quantity NUMBER(10) NOT NULL,
CONSTRAINT orderdetails_orderid_fk FOREIGN KEY (order_id) REFERENCES orders_1(order_id),
CONSTRAINT orderdetails_product_id_fk FOREIGN KEY (product_id) REFERENCES products_1(product_id),
CONSTRAINT orderdetails_qty_ck CHECK(item_quantity > 0)
);