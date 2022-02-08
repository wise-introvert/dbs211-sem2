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