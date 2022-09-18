USE soft_uni;

SELECT e.employee_id, e.first_name, e.manager_id, em.first_name AS manager_name
FROM employees AS e
         JOIN employees AS em ON e.manager_id = em.employee_id
WHERE em.employee_id in (3, 7)
ORDER BY e.first_name