CREATE DATABASE project_management;
USE project_management;


CREATE TABLE clients
(
    id          INT PRIMARY KEY,
    client_name VARCHAR(100)
);

CREATE TABLE employees
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name  VARCHAR(30) NOT NULL,
    project_id INT(11)
);

CREATE TABLE projects
(
    id              INT AUTO_INCREMENT PRIMARY KEY,
    client_id       INT(11) ,
    project_lead_id INT(11)

);

ALTER TABLE projects
ADD CONSTRAINT fk_client
FOREIGN KEY (client_id)
REFERENCES clients(id),
ADD CONSTRAINT fk_project_lead
FOREIGN KEY (project_lead_id)
REFERENCES employees(id)

