USE ThePrimaryKeys_DylanC;

CREATE table employee (
	employee_id smallint unsigned NOT NULL,
    first_name varchar(70) NOT NULL,
    last_name varchar(70) NOT NULL,
    salary decimal(10,2) NOT NULL,
    bank_account_number varchar(8) NOT NULL,
    NI_number varchar(9) NOT NULL,
    PRIMARY KEY (employee_id)
);

CREATE table sales_employee (
	sales_employee_id smallint unsigned NOT NULL,
	employee_id smallint unsigned NOT NULL,
	commission_rate decimal(3,2) NOT NULL,
	PRIMARY KEY (sales_employee_id),
	FOREIGN KEY (employee_id) REFERENCES employee(employee_id)
);