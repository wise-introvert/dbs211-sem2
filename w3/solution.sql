-- ***********************
-- Name:    Student Name
-- ID:      #########
-- Date:    28th Jan, '22
-- Purpose: Lab 03 DBS211
-- ***********************

SET AUTOCOMMIT ON;

-- Q1 Solution --
INSERT INTO employees2(
    EMPLOYEENUMBER,
    LASTNAME,
    FIRSTNAME,
    EXTENSION,
    EMAIL,
    OFFICECODE,
    REPORTSTO,
    JOBTITLE
)
SELECT
    EMPLOYEENUMBER,
    LASTNAME,
    FIRSTNAME,
    EXTENSION,
    EMAIL,
    OFFICECODE,
    REPORTSTO,
    JOBTITLE
FROM employees;