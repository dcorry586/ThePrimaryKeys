-- 4. As a member of the Sales team I want to be able to create a new project. I should be able to store a project name, 
-- value and a list of technologies that the project will use

SHOW TABLES;

-- create project table
CREATE TABLE project (
	project_id smallint unsigned AUTO_INCREMENT PRIMARY KEY,
    `name` varchar(255) NOT NULL,
    `value` decimal(11,2) NOT NULL, 
    start_date DATE NOT NULL,
    completion_date DATE,
    tech_lead_delivery_id smallint unsigned NOT NULL,
    client_id smallint unsigned NOT NULL,
    FOREIGN KEY (tech_lead_delivery_id)
    REFERENCES delivery_employee(employee_id),
    FOREIGN KEY (client_id)
    REFERENCES `client`(client_id)
);

-- check project completion date is after project start date
ALTER TABLE project
ADD CHECK (completion_date >= start_date);

DESCRIBE project;

-- create technology table
CREATE TABLE technology (
	technology_id smallint unsigned AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL
);

-- invalid data, tech_lead_delivery_id is not a delivery employee
INSERT INTO project
(`name`, `value`, start_date, completion_date, tech_lead_delivery_id, client_id)
VALUES
('first project', 10000, '2023-10-12', '2023-11-11', 1, 2);

-- valid data, will be insterted since completion date allowed to be null
INSERT INTO project
(`name`, `value`, start_date, tech_lead_delivery_id, client_id)
VALUES
('cool project', 20000, '2023-11-12', 3, 2);

-- valid data, completion date is after start date
INSERT INTO project
(`name`, `value`, start_date, completion_date, tech_lead_delivery_id, client_id)
VALUES
('nice project', 20000, '2023-11-12', '2023-12-12', 3, 2);

-- valid data, completion date is after start date
INSERT INTO project
(`name`, `value`, start_date, completion_date, tech_lead_delivery_id, client_id)
VALUES
('nice project', 20000, '2023-01-02', '2023-10-14', 3, 2);

-- valid data, completion date is after start date
INSERT INTO project
(`name`, `value`, start_date, completion_date, tech_lead_delivery_id, client_id)
VALUES
('ok project', 18000, '2023-05-02', '2024-10-14', 4, 3);

-- invalid data, will fail since completion date BEFORE start date
INSERT INTO project
(`name`, `value`, start_date, completion_date, tech_lead_delivery_id, client_id)
VALUES
(' project', 30000, '2023-12-17', '2023-10-17', 1, 2);

SELECT * FROM project;
SELECT * FROM `client`;
SELECT * FROM delivery_employee;




