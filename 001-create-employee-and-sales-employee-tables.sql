USE ThePrimaryKeys_DylanC;

CREATE table employee (
	employee_id smallint unsigned NOT NULL AUTO_INCREMENT,
    first_name varchar(70) NOT NULL,
    last_name varchar(70) NOT NULL,
    salary decimal(10,2) NOT NULL,
    bank_account_number varchar(8) NOT NULL,
    national_insurance_number varchar(9) NOT NULL,
    PRIMARY KEY (employee_id)
);

CREATE table sales_employee (
	employee_id smallint unsigned NOT NULL,
	commission_rate decimal(3,2) NOT NULL,
	PRIMARY KEY (employee_id),
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);

INSERT INTO employee (first_name, last_name, salary, bank_account_number, NI_number) VALUES ('Stephen', 'Hanna', 50000.00, '23418921', 'JX458205B');
INSERT INTO employee (first_name, last_name, salary, bank_account_number, NI_number) VALUES ('John', 'Smith', 40000.00, '23123921', 'JX904205B');

INSERT INTO sales_employee (employee_id, commission_rate) VALUES (1, 0.05);
INSERT INTO sales_employee (employee_id, commission_rate) VALUES (2, 0.05);

SELECT employee_id, first_name, last_name, salary, bank_account_number, NI_number, commission_rate 
FROM employee
RIGHT JOIN sales_employee USING (employee_id);
