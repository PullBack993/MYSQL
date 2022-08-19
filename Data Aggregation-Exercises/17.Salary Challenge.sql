USE soft_uni;
SELECT first_name,last_name,department_id FROM employees AS e
WHERE e.salary > (SELECT  AVG(emp.salary) FROM employees AS emp
                                          WHERE e.department_id = emp.department_id
                                          GROUP BY emp.department_id)
ORDER BY e.department_id, e.employee_id
LIMIT 10;


