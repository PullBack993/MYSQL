USE geography;

SELECT continent_code, currency_code, COUNT(currency_code) AS currency_usage
FROM countries AS c
GROUP BY continent_code, currency_code
HAVING currency_usage > 1
   AND currency_usage = (SELECT COUNT(c2.currency_code) AS cn
                         FROM countries AS c2
                         WHERE c2.continent_code = c.continent_code
                         GROUP BY c2.currency_code
                         ORDER BY cn DESC
                         LIMIT 1)

ORDER BY continent_code, currency_code