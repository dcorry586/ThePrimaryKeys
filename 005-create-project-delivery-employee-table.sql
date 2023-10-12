USE ThePrimaryKeys_DylanC;

-- Create table

CREATE table project_delivery_employee (
	project_delivery_emplopyee_id mediumint unsigned NOT NULL AUTO_INCREMENT,
	project_id smallint unsigned NOT NULL,
	delivery_employee_id smallint unsigned NOT NULL,
	started_on_date date NOT NULL,
	ended_on_date date,
	PRIMARY KEY (project_delivery_emplopyee_id),
	FOREIGN KEY (project_id) REFERENCES project(project_id),
	FOREIGN KEY (delivery_employee_id) REFERENCES delivery_employee(employee_id)
);


-- Add sample data

INSERT INTO project_delivery_employee (project_id, delivery_employee_id, started_on_date)
VALUES (9, 3, '2023-11-12');
INSERT INTO project_delivery_employee (project_id, delivery_employee_id, started_on_date)
VALUES (11, 3, '2023-11-12');
INSERT INTO project_delivery_employee (project_id, delivery_employee_id, started_on_date)
VALUES (9, 4, '2023-11-12');
INSERT INTO project_delivery_employee (project_id, delivery_employee_id, started_on_date)
VALUES (11, 5, '2023-11-12');
INSERT INTO project_delivery_employee (project_id, delivery_employee_id, started_on_date, ended_on_date)
VALUES (12, 3, '2023-10-14', '2023-11-12');


-- Check data is there

SELECT project_delivery_emplopyee_id, project_id, delivery_employee_id, started_on_date, ended_on_date  
FROM project_delivery_employee pde ;

