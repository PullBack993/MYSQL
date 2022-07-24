CREATE TABLE users
(
    id              INT PRIMARY KEY AUTO_INCREMENT,
    username        VARCHAR(30) NOT NULL,
    password        VARCHAR(26) NOT NULL,
    profile_picture BLOB,
    last_login_time DATE,
    is_deleted      BOOLEAN

);

INSERT INTO users(username, password)
VALUES ('a', '1234'),
       ('a', '1234'),
       ('a', '1234'),
       ('a', '1234'),
       ('a', '1234');