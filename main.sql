CREATE TABLE students (
    id             integer                PRIMARY KEY,
    first_name     character varying(100) NOT NULL,
    middle_name    character varying(100) DEFAULT NULL,
    last_name      character varying(100) NOT NULL,
    age            integer                DEFAULT 0,
    location       text                   NOT NULL
);

INSERT INTO students (id, first_name, middle_name, last_name, age, location)
VALUES
    (1, 'Juan', NULL, 'Cruz', 18, 'Manila'),
    (2, 'Anne', NULL, 'Wall', 20, 'Manila'),
    (3, 'Theresa', NULL, 'Joseph', 21, 'Manila'),
    (4, 'Isaac', NULL, 'Gray', 19, 'Laguna'),
    (5, 'Zack', NULL, 'Matthews', 22, 'Marikina'),
    (6, 'Fin', NULL, 'Lam', 25, 'Manila');

UPDATE students
SET first_name = 'Ivan', middle_name = 'Ingram', last_name = 'Howard', age = 25, location = 'Bulacan'
WHERE id = 1;

DELETE FROM students WHERE id = (SELECT MAX(id) FROM students);

SELECT COUNT(*) AS student_count FROM students;

SELECT * FROM students WHERE location = 'Manila';

SELECT AVG(age) FROM students;

SELECT * FROM students ORDER BY (age) DESC;

-- SQL ACTIVITY 2: JOINS

-- ENUM
-- CREATE TYPE valid_grades AS ENUM ('A', 'B', 'C', 'D', 'E', 'F', '');

-- DROP TYPE valid_grades;

-- CREATE TABLE research_papers (
-- 	id			integer			PRIMARY KEY,
-- 	student_id	integer			REFERENCES students (id),
-- 	grade		valid_grades	DEFAULT NULL::valid_grades
-- );

-- CHECK CONSTRAINTS
CREATE TABLE research_papers (
	id			integer			PRIMARY KEY,
	student_id	integer			REFERENCES students (id),
	grade		text CHECK (grade IN ('A', 'B', 'C', 'D', 'E', 'F', NULL))
);

DROP TABLE research_papers;

INSERT INTO research_papers VALUES
	(1, 2, NULL),
	(2, 2, 'A'),
	(3, 2, 'C'),
	(4, 3, 'B'),
	(5, 4, 'E'),
	(6, 4, 'F'),
	(7, 4, 'A'),
	(8, 5, 'A'),
	(9, 1, 'A'),
	(10, 1, NULL);

SELECT * FROM research_papers;

-- All students with multiple research papers
SELECT s.first_name, s.last_name, COUNT(r.id) AS number_of_reseach_papers
FROM students s 
INNER JOIN research_papers r
ON s.id = r.student_id
GROUP BY s.id
HAVING COUNT(r.id) > 1;

-- All students with ungraded research papers
SELECT s.first_name, s.last_name, r.id, r.grade
FROM students s
LEFT OUTER JOIN research_papers r
ON s.id = r.student_id
GROUP by s.id, s.first_name, s.last_name, r.id, r.grade
HAVING r.grade IS NULL;

