--Customers Data--
INSERT INTO customers_2
	VALUES ('C10001','Micheal','Thompson','101 Main Street','New York','NY','10005','NE');
INSERT INTO customers_2
	VALUES ('C10002','Emma','Johnson','10012 No Name Street','Carbondale','IL','62902','MW');
INSERT INTO customers_2
	VALUES ('C10003','Noah','Williams','8008 Country Music Road','Carbondale','IL','62901','MW');
INSERT INTO customers_2
	VALUES ('C10004','Ava','Jones','400 S. Oak Avenus','Atlanta','GA','30301','SE');
INSERT INTO customers_2
	VALUES ('C10005','Mia','O'|| '' || 'hara','100 W. Broadway','Atlanta','GA','30301','SE');
--Orders Data--
INSERT INTO orders_2
	VALUES ('001','10-MAY-15','18-MAY-15','C10001');
INSERT INTO orders_2
	VALUES ('002','05-AUG-16','20-SEP-16','C10001');
INSERT INTO orders_2
	VALUES ('003','22-SEP-16','28-SEP-16','C10001');
INSERT INTO orders_2
	VALUES ('004','01-JAN-17',NULL,'C10002');
INSERT INTO orders_2
	VALUES ('005','25-DEC-16','16-JAN-17','C10003');
--Orders Details Data--
INSERT INTO order_details_2
	VALUES ('001','P00001',1);	
INSERT INTO order_details_2
	VALUES ('001','P00002',3);	
INSERT INTO order_details_2
	VALUES ('001','P00004',10);	
INSERT INTO order_details_2
	VALUES ('002','P00002',7);	
INSERT INTO order_details_2
	VALUES ('003','P00001',1);	
INSERT INTO order_details_2
	VALUES ('003','P00005',5);	
INSERT INTO order_details_2
	VALUES ('004','P00002',2);	
INSERT INTO order_details_2
	VALUES ('005','P00001',1);
--Products Data--
INSERT INTO products_2
	VALUES ('P00001','HP Envy 4500 Wireless All-in-One Color Photo Printer',109.65,129.00);
INSERT INTO products_2
	VALUES ('P00002','Canon PIXMA MX22 Wireless Color Photo Printer',169.15,199.00);
INSERT INTO products_2
	VALUES ('P00003','Brother MFC-J870DW Wireless Color Injet Printer',134.00,149.00);
INSERT INTO products_2
	VALUES ('P00004','HP Pavillion 15.6-Ince Touchscreen Laptop',629.00,699.00);
INSERT INTO products_2
	VALUES ('P00005','Toshiba Satellite C55-C5241 15.6 Inch Laptop',540.10,599.00);