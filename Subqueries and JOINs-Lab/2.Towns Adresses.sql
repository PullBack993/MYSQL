USE soft_uni;

SELECT t.town_id, name AS town_name, a.address_text
FROM towns AS t
         JOIN addresses a on t.town_id = a.town_id
WHERE t.name IN ('San Francisco', 'Sofia', 'Carnation')
ORDER BY town_id, address_id
