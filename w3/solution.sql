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

-- Q3 Solution --
INSERT INTO employees2
VALUES(
    1028415,
    'Doe',
    'John',
    'x2223',
    'johndoe@myseneca.ca',
    '4',
    1028414,
    'Cashier'
);

-- Q4 Solution --
DELETE FROM employees2 WHERE employeenumber = 1028414;
-- Fails because there's another row in the table that has it's foreign key
-- attached to the row being deleted
-- This results in an "Integrity Constraint Violation"

-- Q5 Solution --
DELETE from employees2 WHERE employeenumber = 1028415;
-- Running solution 4 after running this statement works because
-- now there's no dependency being violated and the employee can be
-- safely deleted from the table