USE geography;

SELECT mc.country_code, COUNT(m.id) AS mountain_range
FROM mountains_countries AS mc
         JOIN mountains m on m.id = mc.mountain_id
WHERE mc.country_code IN ('BG', 'RU', 'US')
GROUP BY mc.country_code
ORDER BY mountain_range DESC;


-- -------------------------

SELECT c.country_code, COUNT(mc.mountain_id) AS mountain_range
FROM countries AS c
         JOIN mountains_countries AS mc ON c.country_code = mc.country_code
WHERE c.country_code IN ('US', 'RU', 'BG')
GROUP BY c.country_code
ORDER BY mountain_range DESC;