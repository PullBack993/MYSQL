USE diablo;

SELECT name, DATE_FORMAT(start, '%Y-%m-%d')
FROM games
WHERE YEAR(start) IN (2011, 2012)
ORDER BY start, name
LIMIT 50;