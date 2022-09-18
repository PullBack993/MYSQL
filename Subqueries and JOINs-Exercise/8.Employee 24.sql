USE soft_uni;
SELECT e.employee_id, e.first_name, IF(YEAR(p.start_date) >= 2005, NULL, p.name) AS project_name
FROM employees AS e
         JOIN employees_projects ep on e.employee_id = ep.employee_id
         JOIN projects p on ep.project_id = p.project_id

WHERE e.employee_id = 24
ORDER BY p.name;

-- -------------------------------

SELECT e.employee_id,
       e.first_name,
       CASE
           WHEN YEAR(p.start_date) >= 2005 THEN NULL
           ELSE p.name
           END AS project_name
FROM employees AS e
         JOIN employees_projects AS ep ON e.employee_id = ep.employee_id
         JOIN projects AS p ON p.project_id = ep.project_id
WHERE e.employee_id = 24
ORDER BY p.name