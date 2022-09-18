USE soft_uni;
SELECT e.employee_id, e.first_name, p.name AS project_name
FROM employees AS e
         JOIN employees_projects AS ep ON ep.employee_id = e.employee_id
         JOIN projects p on ep.project_id = p.project_id
WHERE DATE(p.start_date) > '2002-08-13'
  AND p.end_date IS NULL
ORDER BY e.first_name, p.name;