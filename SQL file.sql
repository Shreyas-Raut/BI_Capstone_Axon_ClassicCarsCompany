SELECT * FROM classicmodels.customers;
SELECT * FROM classicmodels.customers;
ALTER TABLE customers
ADD COLUMN Address VARCHAR(200),
ADD COLUMN Contact_Name VARCHAR(200);
UPDATE customers
SET Address = concat_ws('-',phone, addressLine1, addressLine2, city, state, postalCode) ;
UPDATE customers
SET Contact_Name = concat_ws('-' , contactFirstName, contactLastName) ;

ALTER TABLE customers
DROP COLUMN contactLastName, 
DROP COLUMN contactFirstName, 
DROP COLUMN phone, 
DROP COLUMN addressLine1, 
DROP COLUMN addressLine2, 
DROP COLUMN city, 
DROP COLUMN state, 
DROP COLUMN postalCode;
Select * from customers;
