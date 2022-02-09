-- ***********************
-- Name:    Your Name
-- ID:      #########
-- Date:    The current date
-- Purpose: Lab 04 DBS211
-- ***********************

-- Q1 SOLUTION --
SELECT 
    customers.customernumber,
    customers.customername,
    to_char(payments.paymentdate, 'MON, DD YYYY'),
    payments.amount
FROM customers
JOIN payments
ON customers.customernumber = payments.customernumber
WHERE customers.country = 'Canada' 
ORDER BY customers.customernumber;

-- Q2 SOLUTION --
SELECT
    employees.employeenumber,
    employees.firstname || ' ' || employees.lastname AS "Employee Name",
    employees.email
FROM employees
WHERE NOT EXISTS (
    SELECT 0
    FROM customers 
    WHERE customers.salesrepemployeenumber = employees.employeenumber
);

--Q3 SOLUTION --
CREATE VIEW vw_customer_order AS
    SELECT * from customers
    JOIN orders on orders.customernumber = customers.customernumber
    JOIN orderdetails on orderdetails.ordernumber = orders.ordernumber
    JOIN products on products.productcode = orderdetails.productcode;
    
-- Q4 SOLUTION --
SELECT * FROM vw_customer_order
JOIN orderdetails ON orderdetails.ordernumber = vw_customer_order.ordernumber
WHERE customernumber = 124
ORDER BY vw_customer_order.ordernumber, orderdetails.orderlinenumber;

-- Q5 SOLUTION --
SELECT customernumber,
       contactfirstname,   
       contactlastname,
       phone,
       creditlimit
FROM customers
WHERE NOT EXISTS (
    SELECT 0
    FROM orders
    WHERE orders.customernumber = customers.customernumber
);