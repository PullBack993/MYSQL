USE gamebar;
CREATE TABLE employees
(
    id         INT(11) AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(50)            NOT NULL,
    last_name  VARCHAR(50)            NOT NULL
);

CREATE TABLE categories
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    a  VARCHAR(50) NOT NULL
);

CREATE TABLE products
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(50) NOT NULL,
    category_id INT         NOT NULL
);