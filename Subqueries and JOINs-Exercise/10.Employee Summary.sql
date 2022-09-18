USE soft_uni;

SELECT e.employee_id,
       CONCAT(e.first_name, ' ', e.last_name)   AS employee_name,
       CONCAT(em.first_name, ' ', em.last_name) AS manager_name,
       d.name
FROM employees AS e
         JOIN employees AS em ON e.manager_id = em.employee_id
         JOIN departments AS d ON d.department_id = e.department_id
ORDER BY employee_id
LIMIT 5