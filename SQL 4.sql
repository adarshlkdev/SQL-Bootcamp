-- JOINS 
-- INNER JOIN  -> 

-- OUTER JOINS -> LEFT JOIN , RIGHT JOIN , FULL JOIN

CREATE DATABASE school2;

USE school2;

CREATE TABLE student(
    student_id INT PRIMARY KEY,
    name VARCHAR(20)
);

INSERT INTO student
 (student_id , name)
 VALUES
 (101 ,  "Alex"),
 (102 , "Bob"),
 (104 , "Romi");
 
INSERT INTO student VALUES(107 , "Adam");
 
SELECT * FROM student;
 
 CREATE TABLE course(
     student_id INT PRIMARY KEY,
     course VARCHAR(30)
     );
     
INSERT INTO course
     (student_id , course)
     VALUES
     (101 , "English"),
     (102 , "Maths"),
     (104 , "Computer");
     
INSERT INTO course
     (student_id , course)
     VALUES
     (103 , "English"),
     (106 , "Computer"),
     (105 , "Maths");
     
SELECT * FROM course;


-- INNER JOIN

SELECT *
FROM student as s
INNER JOIN course as c
ON s.student_id = c.student_id;


-- LEFT JOIN

SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id;

-- RIGHT JOIN

SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id;


-- FULL JOIN

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id;

-- CROSS JOIN (Mutilpy Table 1 to Table 2) Like Matrix

SELECT *
FROM student
CROSS JOIN course;


-- LEFT EXCLUSIVE JOIN

SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
WHERE c.student_id IS NULL;

-- RIGHT EXCLUSIVE JOIN

SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;

-- SELF JOIN

CREATE TABLE employee(
    id INT PRIMARY KEY,
    name VARCHAR(20),
    manager_id INT NOT NULL
);

INSERT INTO employee(id , name , manager_id)
       VALUES
       (101 , "Alax" , 103),
       (102 , "Bob" , 101),
       (103 , "Reeena" , 104),
       (104 , "Barbie" , 103);
       
SELECT * FROM employee;

TRUNCATE TABLE employee;

SELECT *
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

-- UNION AND UNION ALL

SELECT name
FROM employee
UNION 
SELECT name 
FROM employee;


SELECT name
FROM employee
UNION ALL
SELECT name 
FROM employee;







 
 