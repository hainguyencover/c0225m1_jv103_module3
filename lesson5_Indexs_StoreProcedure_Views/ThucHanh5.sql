create database company;

use company;

CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    deparment VARCHAR(50) NOT NULL,
    salary DECIMAL(10 , 2 ) NOT NULL
);

DELIMITER //
CREATE TRIGGER update_department
before INSERT ON employees
FOR EACH ROW
BEGIN
     IF NEW.salary >= 5000 THEN
          SET new.deparment = 'Management';
     ELSEIF NEW.salary >= 3000 THEN
          SET new.deparment = 'Sales';
     ELSE
          SET new.deparment = 'Support';
     END IF;
END //
DELIMITER ;

INSERT INTO employees (name, deparment, salary)
VALUES      ('John Doe', 'A', 3500),
                    ('Jane Smith', 'A', 2000),
                    ('David Johnson', 'A', 6000);
                    
SELECT * FROM employees;