USE ThePrimaryKeys_DylanC;

CREATE table project_delivery_employee (
	project_delivery_emplopyee_id mediumint unsigned NOT NULL,
	project_id smallint unsigned NOT NULL,
	delivery_employee_id smallint unsigned NOT NULL,
	started_on_date date NOT NULL,
	ended_on_date date,
	PRIMARY KEY (project_delivery_emplopyee_id),
	FOREIGN KEY (project_id) REFERENCES project(project_id),
	FOREIGN KEY (delivery_employee_id) REFERENCES delivery_employee(delivery_employee_id)
);