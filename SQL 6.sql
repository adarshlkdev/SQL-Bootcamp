-- VIEWS IN SQL

CREATE DATABASE IF NOT EXISTS company;

USE company;

CREATE TABLE customer_data(
    id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    age INT NOT NULL,
    plan_type VARCHAR(20) DEFAULT "Basic"
    );
    
INSERT INTO customer_data(id , name , age , plan_type)
           VALUES
           (101 , "Anil" , 21 , "Subscribed"),
           (102 , "Parth" , 22 , "Basic"),
           (104 , "Shyam" , 25 , "Subscribed"),
           (108 , "Nitin" , 21 , "Basic");
    
SELECT * FROM customer_data;

CREATE VIEW data_for_sales AS 
SELECT id , name , age FROM customer_data;

SELECT * FROM data_for_sales;
