USE diablo;
SELECT user_name, REGEXP_REPLACE(email, '.*@', '') AS 'email provider'
FROM users
ORDER BY `email provider`, user_name;