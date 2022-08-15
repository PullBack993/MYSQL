USE geography;
SELECT peak_name,
       river_name,
       LOWER(CONCAT(p.peak_name, SUBSTRING(r.river_name, 2, CHAR_LENGTH(r.river_name)))) AS mix

FROM peaks AS p,
     rivers AS r
WHERE RIGHT(p.peak_name, 1) = LEFT(r.river_name, 1)
ORDER BY mix;


