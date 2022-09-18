USE geography;

SELECT c.country_name, r.river_name
FROM countries AS c
         LEFT JOIN countries_rivers cr on c.country_code = cr.country_code
         LEFT JOIN rivers r on r.id = cr.river_id
         JOIN continents c2 on c2.continent_code = c.continent_code
WHERE c2.continent_code = 'AF'
ORDER BY c.country_name
LIMIT 5;

