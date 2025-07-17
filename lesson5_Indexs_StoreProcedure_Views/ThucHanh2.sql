-- Goi procedure
DELIMITER //
CREATE PROCEDURE findAllCustomers()
BEGIN
  SELECT * FROM customers;
END //
DELIMITER ;
call findAllCustomers();

-- Xoa procedure
DELIMITER //
DROP PROCEDURE IF EXISTS `findAllCustomers`//
CREATE PROCEDURE findAllCustomers()
BEGIN
SELECT * FROM customers where customerNumber = 175;
END //