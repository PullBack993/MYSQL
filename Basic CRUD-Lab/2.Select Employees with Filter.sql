USE hotel;

SELECT id, CONCAT(first_name," " ,  last_name) AS `full_name`, job_title, salary
from employees
WHERE salary > 1000
ORDER BY id ASC;