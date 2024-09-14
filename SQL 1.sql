CREATE DATABASE college;

CREATE DATABASE IF NOT EXISTS college;

DROP DATABASE IF EXISTS college;


USE college;

CREATE TABLE student(
      rollno INT PRIMARY KEY,
      name VARCHAR(50),
      age int
      );

INSERT INTO student
      (rollno , name , age) 
      VALUES
	  (1 , "Aman" , 23),
	  (2 , "Lalit" , 24);
      
INSERT INTO student VALUES(3 , "Anjali" , 21);

DROP TABLE student;

SELECT * FROM student;

SHOW DATABASES;

SHOW TABLES;


CREATE DATABASE Garaaz;

USE garaaz;

CREATE TABLE emplyoee_info(
     id INT PRIMARY KEY,
     name VARCHAR(40),
     salary bigint
     );
     
INSERT INTO emplyoee_info
    (id , name , salary)
	VALUES
    (12 , "Akshay" , 20000),
	(21 , "Amit" , 14000),
    (31  , "Anita" , 12000);
    
CREATE TABLE temp1(
   id INT UNIQUE
   );
   
INSERT INTO temp1 VALUES (101);
INSERT INTO temp1 VALUES (101);
	
SHOW TABLES;

SELECT * FROM emplyoee_info;

SELECT * FROM temp1;

DROP TABLE temp1;

SHOW TABLES;


USE garaaz;

CREATE TABLE Orders(
        order_no bigint,
        customer_name VARCHAR(50),
		part_name VARCHAR(50),
        contact_no VARCHAR(20) unique,
        PRIMARY KEY(order_no)
        );
        
        
INSERT INTO Orders
 (order_no , customer_name , part_name , contact_no)
 VALUES
 (24421 , "Ganpati Workshop" , "Fender Right" , "8739271933"),
 (43213 , "Balaji Automobiles" , "Bumper Front" , "7987988099"),
 (43143 , "AK Automobiles" , "Door Panel" , "7987988065");
 
 INSERT INTO orders VALUES(32131 , "SK Workshop" , "Bumper Rear" , "9987988065");
 
 
 SELECT * FROM orders;
 
 
 DROP TABLE orders;



