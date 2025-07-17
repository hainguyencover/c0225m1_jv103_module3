create database deMoBaiTap;

use deMoBaiTap;

CREATE TABLE Products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    productCode VARCHAR(50) NOT NULL,
    productName VARCHAR(100),
    productPrice DECIMAL(10 , 2 ),
    productAmount INT,
    productDescription TEXT,
    productStatus VARCHAR(50)
);

INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES 
('P001', 'Laptop', 1500.00, 10, 'High-end laptop', 'Available'),
('P002', 'Smartphone', 800.00, 30, 'Latest model smartphone', 'Available'),
('P003', 'Tablet', 500.00, 20, 'Compact and powerful', 'Out of stock');

-- Tao Unique Index tren productCode
CREATE UNIQUE INDEX idx_product_code ON Products(productCode);
-- Tao Composite index tren productName va productPrice
CREATE INDEX idx_name_price ON Products(productName, productPrice);
-- Su dung explain để biết được câu lệnh SQL của bạn thực thi như nào
EXPLAIN SELECT * FROM Products WHERE productCode = 'P001';
EXPLAIN SELECT * FROM Products WHERE productName = 'Laptop' AND productPrice = 1500.00;

-- Tao View 
CREATE VIEW view_products AS
SELECT productCode, productName, productPrice, productStatus FROM Products;
SELECT * FROM view_products;
-- Sua View
CREATE OR REPLACE VIEW view_products AS
SELECT productCode, productName, productPrice, productStatus, productAmount FROM Products;
SELECT * FROM view_products;
-- Xoa View
DROP VIEW IF EXISTS view_products;

-- Lay tat ca san pham
DELIMITER //
CREATE PROCEDURE getAllProducts()
BEGIN
    SELECT * FROM Products;
END //
DELIMITER ;

CALL getAllProducts();
-- Them san pham moi
DELIMITER //
CREATE PROCEDURE addProduct(
    IN p_code VARCHAR(50),
    IN p_name VARCHAR(100),
    IN p_price DECIMAL(10,2),
    IN p_amount INT,
    IN p_desc TEXT,
    IN p_status VARCHAR(50)
)
BEGIN
    INSERT INTO Products (productCode, productName, productPrice, productAmount, productDescription, productStatus)
    VALUES (p_code, p_name, p_price, p_amount, p_desc, p_status);
END //
DELIMITER ;

CALL addProduct('P004', 'Monitor', 300.00, 15, '24 inch Full HD', 'Available');
CALL getAllProducts();
-- Sua san pham theo ID
DELIMITER //
CREATE PROCEDURE updateProductById(
    IN p_id INT,
    IN p_name VARCHAR(100),
    IN p_price DECIMAL(10,2),
    IN p_amount INT,
    IN p_desc TEXT,
    IN p_status VARCHAR(50)
)
BEGIN
    UPDATE Products
    SET productName = p_name,
        productPrice = p_price,
        productAmount = p_amount,
        productDescription = p_desc,
        productStatus = p_status
    WHERE id = p_id;
END //
DELIMITER ;

CALL updateProductById(1, 'Gaming Laptop', 1800.00, 8, 'Top-tier GPU included', 'Available');
CALL getAllProducts();
-- Xoa san pham theo ID
DELIMITER //
CREATE PROCEDURE deleteProductById(
    IN p_id INT
)
BEGIN
    DELETE FROM Products WHERE id = p_id;
END //
DELIMITER ;

CALL deleteProductById(3);
CALL getAllProducts();