USE garaaz;

CREATE TABLE payment_info(
       customer_id VARCHAR(10)PRIMARY KEY,
       customer_name VARCHAR(30),
       payment_mode VARCHAR(30),
       city VARCHAR(30)
       );
       
DROP TABLE payment_info;
       
INSERT INTO payment_info (customer_id, customer_name, payment_mode, city)
VALUES
    ('3213', 'Alex', 'CASH', 'Poland'),
    ('4214', 'John', 'Net Banking', 'Berlin'),
    ('3134', 'Aliza', 'CASH', 'Delhi'),
    ('3245', 'Lucid', 'Net Banking', 'Paris');
    
-- GROUP BY CLAUSE
    
SELECT * FROM payment_info;

SELECT payment_mode , COUNT(customer_name)
FROM payment_info
GROUP BY payment_mode;


-- UPDATING THE TABLE

SET SQL_SAFE_UPDATES = 0;

UPDATE payment_info
SET payment_mode = "Credit Card"
WHERE payment_mode = "Cash";

ALTER TABLE payment_info
ADD COLUMN remarks VARCHAR(50);

UPDATE payment_info
SET remarks = "Great"
WHERE payment_mode = "Credit Card";

UPDATE payment_info
SET remarks = "Good"
WHERE payment_mode = "Net Banking";

ALTER TABLE payment_info
CHANGE remarks feedback VARCHAR(20) DEFAULT "Good";





 