CREATE DATABASE sf_exercise;
USE sf_exercise;

CREATE TABLE people
(
    person_id   INT(11) AUTO_INCREMENT PRIMARY KEY,
    first_name  VARCHAR(50) NOT NULL,
    salary      DECIMAL(10, 2) DEFAULT 0,
    passport_id INT(11) UNIQUE
);

CREATE TABLE passports
(
    passport_id     INT(11) PRIMARY KEY,
    passport_number VARCHAR(20)
) AUTO_INCREMENT = 101;

ALTER TABLE people
    ADD CONSTRAINT fk_peoples_passports
        FOREIGN KEY (passport_id)
            REFERENCES passports (passport_id);

INSERT INTO passports(passport_id, passport_number)
VALUES (101, 'N34FG21B'),
       (102, 'K65LO4R7'),
       (103, 'ZE657QP2');

INSERT INTO people(person_id, first_name, salary, passport_id)
VALUES (1, 'Roberto', '43300.00', 102),
       (2, 'Tom', '56100.00', 103),
       (3, 'Yana', '60200.00', 101);

