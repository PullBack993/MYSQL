USE geography;

SELECT c.country_name, MAX(p.elevation) AS highest_peak_elevation, MAX(r.length) AS longest_river_length
FROM countries AS c
         LEFT JOIN mountains_countries mc on c.country_code = mc.country_code
         LEFT JOIN peaks p on mc.mountain_id = p.mountain_id
         LEFT JOIN countries_rivers cr on c.country_code = cr.country_code
         LEFT JOIN rivers r on r.id = cr.river_id
GROUP BY c.country_name
ORDER BY highest_peak_elevation DESC , longest_river_length DESC
LIMIT 5

