USE sf_exercise;

CREATE TABLE manufacturers
(
    `manufacturer_id` INT(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name`            VARCHAR(20),
    `established_on`  DATE
);


INSERT INTO manufacturers(`manufacturer_id`, `name`, `established_on`)
VALUES (1, 'BMW', '1916-03-01'),
       (2, 'Tesla', '2003-01-01'),
       (3, 'Lada', '1966-05-01');

CREATE TABLE models
(
    `model_id`      INT(11) AUTO_INCREMENT NOT NULL PRIMARY KEY UNIQUE,
    `name`          VARCHAR(20),
    manufacturer_id INT(11)                NOT NULL
);

ALTER TABLE models
    ADD CONSTRAINT fk_manufacturers_models
        FOREIGN KEY (manufacturer_id)
            REFERENCES manufacturers (manufacturer_id);


INSERT INTO models(`model_id`, `name`, `manufacturer_id`)
VALUES (101, 'X1', 1),
       (102, 'i6', 1),
       (103, 'Model S', 2),
       (104, 'Model X', 2),
       (105, 'Model 3', 2),
       (106, 'Nova', 3);


SELECT *
FROM manufacturers AS m
         JOIN models md on m.manufacturer_id = md.manufacturer_id;
