USE restaurant;
SELECT COUNT(name) FROM products
WHERE category_id = 2 AND price > 8;