USE sf_exercise;

CREATE TABLE cities
(
    city_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    `name`  VARCHAR(50)
);
CREATE TABLE item_types
(
    item_type_id INT(11) PRIMARY KEY AUTO_INCREMENT,
    `name`       VARCHAR(50) NOT NULL
);

CREATE TABLE customers
(
    customer_id INT(11) AUTO_INCREMENT PRIMARY KEY,
    `name`      VARCHAR(50),
    birthday    DATE,
    city_id     INT(11),
    CONSTRAINT fk_customer_city
        FOREIGN KEY (city_id)
            REFERENCES cities (city_id)
);

CREATE TABLE orders
(
    order_id    INT(11) AUTO_INCREMENT PRIMARY KEY,
    customer_id INT(11),
    CONSTRAINT fk_order_customer
        FOREIGN KEY (customer_id)
            REFERENCES customers (customer_id)
);


CREATE TABLE items
(
    item_id      INT(11) AUTO_INCREMENT PRIMARY KEY,
    `name`       VARCHAR(50),
    item_type_id INT(11),
    CONSTRAINT fk_item_item_types
        FOREIGN KEY (item_type_id)
            REFERENCES item_types (item_type_id)
);

CREATE TABLE order_items
(
    order_id INT(11) AUTO_INCREMENT,
    item_id  INT(11),
    PRIMARY KEY (order_id, item_id),
    CONSTRAINT fk_order_item_order
        FOREIGN KEY (order_id)
            REFERENCES orders (order_id)
            ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_item_item
        FOREIGN KEY (item_id)
            REFERENCES items (item_id)
            ON DELETE CASCADE ON UPDATE CASCADE
);