-- SQL SUB QUERIES

USE school2;

CREATE TABLE result(
    roll_no INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    marks INT NOT NULL
    );
    
INSERT INTO result(roll_no , name , marks)
       VALUES
       (01 , "Akshat" , 87),
       (02 , "Vivan" , 56),
       (03 , "Neha" , 93),
       (04 , "Ankita" , 81);

INSERT INTO result VALUES(06 , "Ankit" , 92);

-- Find the student names who have scored greater than avg marks

SELECT name , marks
FROM result
WHERE marks > (SELECT AVG(marks) FROM result);

-- Find the names of all students with even roll number

SELECT name , roll_no
FROM result
WHERE roll_no IN (
  SELECT roll_no
  FROM result
  WHERE roll_no % 2 = 0
  );

