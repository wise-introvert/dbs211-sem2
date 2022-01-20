-- ***********************
-- Name: Fardeen Sohil Panjwani
-- ID: 119588218
-- Date: 19th Jan, 2022
-- Purpose: Lab 02 DBS211
-- ***********************

-- Q1 Solution --
SELECT officecode, 
       city, 
       state, 
       country, 
       phone 
FROM offices;

-- Q2 Solution --
SELECT employeenumber,
       firstname,
       lastname,
       extension
FROM employees
WHERE officecode = 1
ORDER BY employeenumber;

-- Q3 Solution --
SELECT customernumber AS "Customer Number",
       customername AS "Customer Name",
       CONCAT(CONCAT(contactfirstname, ' '), contactlastname) AS "Contact Name",
       phone AS "Phone"
FROM customers
WHERE country LIKE 'Canada'
ORDER BY customername;

-- Q4 Solution --
SELECT DISTINCT customernumber 
FROM payments 
ORDER BY customernumber 
FETCH FIRST 10 ROWS ONLY;

-- Q5 Solution --
SELECT customernumber, 
       checknumber, 
       amount 
FROM payments 
WHERE amount NOT BETWEEN 1500 AND 120000 
ORDER BY amount DESC;

-- Q6 Solution --
SELECT pa.productcode,
       pa.productname,
       pa.buyprice,
       pa.msrp,
       pa.markup,
       round(pa.percmarkup, 2)
FROM (
    SELECT productcode,
           productname,
           buyprice,
           msrp,
           msrp - buyprice AS markup,
		   100 * ((msrp - buyprice) / buyprice) AS percmarkup
    FROM products
) pa
WHERE pa.percmarkup > 140
ORDER BY pa.percmarkup;

-- Q7 Solution --
SELECT replace(productcode, '_', ' '), 
       productname, 
       quantityinstock 
FROM products 
WHERE lower(productname) LIKE '%co%' 
ORDER BY quantityinstock;

-- Q8 Solution --
SELECT customernumber,
       contactfirstname,
       contactlastname
FROM customers
WHERE lower(contactfirstname) LIKE 's%e%'
ORDER BY customernumber;
