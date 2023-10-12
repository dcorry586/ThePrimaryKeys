-- As a member of the HR team I want to be able to create a new delivery employee. 
-- I should be able to store a name, salary, bank account number and national insurance number

USE ThePrimaryKeys_DylanC;

-- creating delivery_employee table
CREATE TABLE delivery_employee (
    employee_id smallint unsigned AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (employee_id)
	REFERENCES employee(employee_id)
);

DESCRIBE delivery_employee;

-- add employees to employee table then add them to delivery_employee table to make them delivery employees
INSERT INTO employee 
(first_name, last_name, salary, bank_account_number, NI_number)
VALUES ('doctor', 'who', 35000, 10295674, 'PG836602Y');

INSERT INTO employee 
(first_name, last_name, salary, bank_account_number, NI_number)
VALUES ('bob', 'mcgee', 40000, 10299067, 'TR838602Y');

INSERT INTO employee 
(first_name, last_name, salary, bank_account_number, NI_number)
VALUES ('alice', 'mcfadden', 53000, 05673829, 'HG729602K');

-- insert new employees into delivery_employee table
INSERT INTO delivery_employee
(employee_id) 
VALUES (3);

INSERT INTO delivery_employee
(employee_id) 
VALUES (4);

INSERT INTO delivery_employee
(employee_id) 
VALUES (5);

SELECT * FROM delivery_employee;

