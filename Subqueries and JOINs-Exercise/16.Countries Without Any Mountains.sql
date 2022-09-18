USE geography;

SELECT COUNT(*) AS country_count
FROM countries AS c
         LEFT JOIN mountains_countries mc on c.country_code = mc.country_code
         LEFT JOIN mountains m on m.id = mc.mountain_id
WHERE m.mountain_range IS NULL