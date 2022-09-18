USE soft_uni;

SELECT AVG(salary) AS min_avarage_salary
FROM employees AS e
GROUP BY e.department_id
ORDER BY min_avarage_salary
LIMIT 1