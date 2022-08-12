USE soft_uni;
SELECT first_name,last_name FROM employees WHERE SUBSTRING(LOWER(first_name), 1, 2) = 'sa' ORDER BY employee_id;