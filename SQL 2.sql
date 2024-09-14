
CREATE DATABASE IF NOT EXISTS school;

USE school;

CREATE TABLE student(
    roll_no INT PRIMARY KEY,
    name VARCHAR(30),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

DROP TABLE student;

INSERT INTO student (roll_no , name , marks , grade , city)
         VALUES
         (01 , "Aakash" , 87 ,"A" , "Jaipur"),
         (02 , "Aman" , 60 ,"C" , "Jaipur"),
         (03 , "Dravid" , 70 ,"B" , "Agra"),
         (04 , "Virat" , 90 ,"A" , "Delhi");
         
INSERT INTO student VALUES(05 , "Ishan" , 84 , "A" , "Pune");

INSERT INTO student VALUES(06 , "Shikhar" , 81 , "B" , "Mumbai");

INSERT INTO student VALUES(07 , "Varun" , 82 , "B" , "Mumbai");

INSERT INTO student VALUES(08 , "Kishan" , 32 , "E" , "Mumbai");
         
  
SELECT * FROM student;

SELECT name , marks FROM school.student;

SELECT DISTINCT city FROM school.student;

-- LIKE OPERATOR

SELECT * FROM student WHERE city LIKE '%um%';

SELECT * FROM student WHERE city LIKE 'Ja%';

SELECT * FROM student WHERE city LIKE '%e';



-- WHERE CLAUSE

SELECT * FROM student WHERE marks > 80;

SELECT * FROM student WHERE city = "Jaipur";

SELECT * FROM student WHERE marks > 80 AND city = "Jaipur";

SELECT * FROM student WHERE marks BETWEEN 80 AND 90;

SELECT * FROM student WHERE marks NOT BETWEEN 80 AND 90;

SELECT * FROM student WHERE city IN ("Delhi" , "Agra" , "Mumbai");

-- LIMIT CLAUSE

SELECT * FROM student LIMIT 2;

SELECT * FROM student WHERE marks >= 60 LIMIT 2;

-- ORDER BY CLAUSE

SELECT * FROM student ORDER BY marks DESC;

SELECT * FROM student ORDER BY city ASC;


-- Aggregate Functions

SELECT MAX(marks) FROM student;

SELECT AVG(marks) FROM student;

SELECT COUNT(roll_no) FROM student;


SELECT grade , COUNT(roll_no)
FROM school.student
GROUP BY grade
ORDER BY grade;

SELECT city , COUNT(roll_no)
FROM student
GROUP BY city
HAVING MAX(marks) > 80
ORDER BY city;


-- General Order to write the clauses

-- SELECT column(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column(s)
-- HAVING condtion
-- ORDER BY coulmn(s) ASC;


SELECT city
FROM student
WHERE grade = 'A'
GROUP BY city
HAVING MAX(marks) > 85
ORDER BY city ASC;


-- UPDATING THE TABLE


UPDATE student
SET grade = "A"
WHERE marks BETWEEN 80 AND 90;

UPDATE student
SET grade = "B"
WHERE marks BETWEEN 70 AND 79;

UPDATE student
SET marks = marks + 1;

SELECT * FROM student;



-- DELETE THE TABLE

DELETE FROM student
WHERE marks < 33;

CREATE TABLE temp1(id INT , name VARCHAR(20));

DELETE FROM temp1;

SELECT * FROM temp1;

-- TABLE RELATED QUERIES (ALTER)

CREATE TABLE temp2(id INT , name VARCHAR(20));

DROP TABLE temp2;

SELECT * FROM temp2;

ALTER TABLE temp2
ADD COLUMN age INT NOT NULL DEFAULT 19;


ALTER TABLE temp2
DROP COLUMN age;

-- RENAME 

ALTER TABLE temp2
CHANGE age student_age INT NOT NULL DEFAULT 19;

ALTER TABLE temp2 
DROP COLUMN student_age;

-- MODIFY COLUMN DATA TYPE OR CONSTRAINTS

ALTER TABLE temp2
MODIFY student_age VARCHAR(2);

-- RENAME TABLE NAME

ALTER TABLE temp2
RENAME TO stu2;


SELECT * FROM stu2;

-- Delete all the rows from Table

TRUNCATE TABLE stu2;


-- SQL Sub Queries

-- Find the max marks from the city

SELECT MAX(marks) FROM (SELECT * FROM student WHERE city = "Mumbai") AS Mum;

-- Alternate Way

SELECT MAX(marks) 
FROM student
WHERE city = "Mumbai";

SELECT * FROM student;













