-- ***********************
-- Name:    Student Name
-- ID:      #########
-- Date:    28th Jan, '22
-- Purpose: Lab 03 DBS211
-- ***********************

SET AUTOCOMMIT ON;

-- Q1 Solution --
INSERT INTO employees2
SELECT * FROM employees;

-- Q2 Solution --
INSERT INTO employees2
VALUES(
    1028414,
    'Panjwani',
    'Fardeen',
    'x2222',
    'fspanjwani@myseneca.ca',
    '4',
    1088,
    'Head Cashier'
);