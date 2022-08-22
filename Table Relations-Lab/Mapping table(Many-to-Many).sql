CREATE TABLE employees
(
    employee_id   INT PRIMARY KEY,
    employee_name VARCHAR(50)
);

CREATE TABLE projects
(
    project_id   INT PRIMARY KEY,
    project_name VARCHAR(50)
);

CREATE TABLE employees_projects
(
    employee_id INT,
    project_id  INT,
    CONSTRAINT pk_employees_projects
        PRIMARY KEY (employee_id, project_id),
    CONSTRAINT fk_employees_projects_employees
        FOREIGN KEY (employee_id)
            REFERENCES employees (employee_id),

    CONSTRAINT fk_employees_projects_projects
        FOREIGN KEY (project_id)
            REFERENCES projects (project_id)
)