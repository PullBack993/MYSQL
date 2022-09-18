USE soft_uni;
SELECT e.first_name, e.last_name, e.hire_date, d.name AS depart_name FROM employees AS e
JOIN departments d on e.department_id = d.department_id
WHERE e.hire_date > 1/1/1999 AND d.name IN ('Sales', 'Finance')
ORDER BY hire_date
