USE soft_uni;

SELECT COUNT(salary) AS count
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);