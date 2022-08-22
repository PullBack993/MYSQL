USE sf_exercise;

CREATE TABLE students
(
    student_id INT(10) AUTO_INCREMENT PRIMARY KEY,
    `name`     VARCHAR(20) NOT NULL
);

CREATE TABLE exams
(
    exam_id INT(20) AUTO_INCREMENT PRIMARY KEY,
    `name`  VARCHAR(20) NOT NULL
) AUTO_INCREMENT = 101;


CREATE TABLE students_exams
(
    student_id INT,
    exam_id    INT,
    CONSTRAINT fk_student_exam
        FOREIGN KEY (student_id)
            REFERENCES students (student_id),
    CONSTRAINT fk_exam_student
        FOREIGN KEY (exam_id)
            REFERENCES exams (exam_id)
);

INSERT INTO exams
VALUES (101, 'Spring MVC'),
       (102, 'Neo4j'),
       (103, 'Oracle 11g');


INSERT INTO students(`name`)
VALUES ('Mila'),
       ('Toni'),
       ('Ron');


INSERT INTO students_exams(student_id, exam_id)
VALUES (1, 101),
       (1, 102),
       (2, 101),
       (3, 103),
       (2, 102),
       (2, 103);


SELECT *
FROM exams AS e
         JOIN students_exams se on e.exam_id = se.exam_id
         JOIN students s on s.student_id = se.student_id
ORDER BY se.student_id
