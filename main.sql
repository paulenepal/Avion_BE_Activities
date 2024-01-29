CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    first_name character varying(100) NOT NULL,
    middle_name character varying(100) DEFAULT NULL,
    last_name character varying(100) NOT NULL,
    age INT,
    location TEXT NOT NULL
);

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES
    (1, 'Juan', '', 'Cruz', 18, 'Manila'),
    (2, 'Anne', '', 'Wall', 20, 'Manila'),
    (3, 'Theresa', '', 'Joseph', 21, 'Manila'),
    (4, 'Isaac', '', 'Gray', 19, 'Laguna'),
    (5, 'Zack', '', 'Matthews', 22, 'Marikina'),
    (6, 'Fin', '', 'Lam', 25, 'Manila');

UPDATE students
SET first_name = 'Pau', middle_name = '', last_name = 'Pallan', age = 25, location = 'Cavite'
WHERE id = 1;

DELETE FROM students WHERE id = (SELECT MAX(id) FROM students);

SELECT COUNT(*) AS student_count FROM students;

SELECT * FROM students WHERE location = 'Manila';

SELECT AVG(age) FROM students;

SELECT * FROM students ORDER BY (age) DESC;
