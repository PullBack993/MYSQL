USE geography;

SELECT c.country_code, m.mountain_range, p.peak_name, p.elevation
FROM mountains_countries AS c
         JOIN peaks AS p ON c.mountain_id = p.mountain_id
         JOIN mountains m ON m.id = c.mountain_id
WHERE c.country_code = 'BG'
  AND p.elevation > 2835
ORDER BY p.elevation DESC;

