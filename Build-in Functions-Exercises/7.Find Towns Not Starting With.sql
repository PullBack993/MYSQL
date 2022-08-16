USE soft_uni;
SELECT town_id, `name`
FROM towns
WHERE LEFT(LOWER(`name`), 1) NOT IN ('r', 'b', 'd')
ORDER BY `name`;