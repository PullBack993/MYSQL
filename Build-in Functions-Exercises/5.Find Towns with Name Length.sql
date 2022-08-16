USE soft_uni;

SELECT `name`
FROM towns
WHERE CHAR_LENGTH(`name`) IN (5, 6)
ORDER BY `name`;

-- ---------------------

SELECT `name`
FROM towns
WHERE CHAR_LENGTH(`name`) = 5
   OR CHAR_LENGTH(`name`) = 6
ORDER BY `name`;
