USE geography;
SELECT  mountain_range, p.peak_name, p.elevation FROM mountains AS m JOIN peaks p on m.id = p.mountain_id
                                                 WHERE m.mountain_range = 'Rila'
ORDER BY p.elevation DESC