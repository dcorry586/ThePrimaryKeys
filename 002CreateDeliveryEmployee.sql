-- As a member of the HR team I want to be able to create a new delivery employee. 
-- I should be able to store a name, salary, bank account number and national insurance number

USE ThePrimaryKeys_DylanC;

CREATE TABLE delivery_employee (
	delivery_employee_id smallint unsigned NOT NULL, 
    employee_id smallint unsigned NOT NULL
);

ALTER TABLE delivery_employee
	ADD PRIMARY KEY(delivery_employee_id);
    
ALTER TABLE delivery_employee
ADD CONSTRAINT fk_delivery_employee_employee_id
FOREIGN KEY (employee_id)
REFERENCES employee(employee_id);

DESCRIBE delivery_employee;
    
