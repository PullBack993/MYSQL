CREATE DATABASE movies;
USE movies;

CREATE TABLE directors
(
    id            INT AUTO_INCREMENT PRIMARY KEY,
    director_name VARCHAR(50) NOT NULL,
    notes         TEXT
);

INSERT INTO directors(director_name)
VALUES ('a'),
       ('b'),
       ('c'),
       ('d'),
       ('e');

CREATE TABLE genres
(
    id         INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL,
    notes      TEXT
);

INSERT INTO genres(genre_name, notes)
VALUES ('test', 'a'),
       ('test1', 'a1'),
       ('test1', 'a1'),
       ('test1', 'a1'),
       ('test1', 'a1');

CREATE TABLE categories
(
    id            INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    notes         TEXT
);

INSERT INTO categories (category_name, notes)
VALUES ('test', 'a'),
       ('test1', 'a1'),
       ('test1', 'a1'),
       ('test1', 'a1'),
       ('test1', 'a1');



CREATE TABLE movies
(
    id             INT AUTO_INCREMENT PRIMARY KEY,
    title          VARCHAR(10) NOT NULL,
    director_id    INT,
    copyright_year INT,
    length         INT,
    genre_id       INT,
    category_id    INT,
    rating         DOUBLE,
    notes          TEXT
);

INSERT INTO movies(title)
VALUES ('Test1'),
       ('Test2'),
       ('Test3'),
       ('Test4'),
       ('Test5');