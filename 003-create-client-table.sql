-- Use the team's database.
USE ThePrimaryKeys_DylanC;

-- Create client table
CREATE TABLE client(
	client_id SMALLINT UNSIGNED NOT NULL,
	name VARCHAR(255) NOT NULL,
	address VARCHAR(255) NOT NULL,
	phone_number VARCHAR(11) NOT NULL,
	sales_employee_id SMALLINT UNSIGNED NOT NULL,
	PRIMARY KEY (client_id),
	FOREIGN KEY (sales_employee_id) REFERENCES sales_employee(sales_employee_id)
);

-- Insert data into table
INSERT INTO client (name, address, phone_number, sales_employee_id)
VALUES ('Bob Dylan', '123 somewhere over the rainbow St', '07935754333', 1);

-- Select a record from table
SELECT * FROM client;

