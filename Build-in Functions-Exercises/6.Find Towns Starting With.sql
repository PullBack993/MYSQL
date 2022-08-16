USE soft_uni;

-- Couple solution

SELECT town_id, `name`
FROM towns
WHERE LOWER(`name`) LIKE 'k%'
   OR LOWER(`name`) LIKE 'e%'
   OR LOWER(`name`) LIKE 'b%'
   OR LOWER(`name`) LIKE 'm%'
ORDER BY `name`;

-- ---------------------------

SELECT town_id, `name`
FROM towns
WHERE `name` REGEXP '^[KkEeBbMm]'
ORDER BY `name`;

-- ---------------------------

SELECT town_id, `name`
FROM towns
WHERE LEFT(LOWER(name), 1) IN ('k', 'e', 'b', 'm')
ORDER BY `name`;