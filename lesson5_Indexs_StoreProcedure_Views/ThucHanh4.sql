-- Tao View co ten customer_views(customerNumber, customerName, phone) 
CREATE VIEW customer_views AS
SELECT customerNumber, customerName, phone
FROM  customers;
-- Lay du lieu customer_views
select * from customer_views;

-- Cap nhat View 
CREATE OR REPLACE VIEW customer_views AS
SELECT customerNumber, customerName, contactFirstName, contactLastName, phone
FROM customers
WHERE city = 'Nantes';
-- Lay du lieu customer_views
select * from customer_views;

-- Xoa View
DROP VIEW customer_views;
