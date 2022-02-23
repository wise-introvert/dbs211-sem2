-- ***********************
-- Name:    Student Name
-- ID:      #########
-- Date:    28th Jan, '22
-- Purpose: Lab 03 DBS211
-- ***********************

-- Q1 SOLUTION --
CREATE TABLE newEmployees 
AS
(SELECT * FROM employees);

-- Q2 SOLUTION --
SET AUTCOMMIT OFF;
SET TRANSACTION READ WRITE;

-- Q3 SOLUTION --
INSERT ALL
  INTO newEmployees VALUES (100, 'Patel', 'Ralph', 22333, 'rpatel@mail.com', 1, NULL, 'Sales Rep')
  INTO newEmployees VALUES (101, 'Denis', 'Betty', 33444, 'bdenis@mail.com', 4, NULL, 'Sales Rep')
  INTO newEmployees VALUES (102, 'Biri', 'Ben', 44555, 'bbirir@mail.com', 2, NULL, 'Sales Rep')
  INTO newEmployees VALUES (103, 'Newman', 'Chad', 66777, 'cnewman@mail.com', 3, NULL, 'SalesRep')
  INTO newEmployees VALUES (104, 'Ropeburn', 'Audrey', 77888, 'aropebur@mail.com', 1, NULL, 'Sales Rep')
SELECT * FROM dual;

-- Q4 SOLUTION --
SELECT * FROM newEmployees 
WHERE employeenumber BETWEEN 100 AND 104;
-- number of rows selected:  5

-- Q5 SOLUTION --
ROLLBACK;
SELECT * FROM newEmployees;
-- number of rows selected:  5

-- Q6 SOLUTION --
COMMIT;
SELECT * FROM newEmployees;
-- number of rows selected:  23

-- Q7 SOLUTION --
UPDATE newEmployees 
SET jobTitle = 'Unknown';

-- Q8 SOLUTION --
COMMIT

-- Q9 SOLUTION --
ROLLBACK;
--     (a)     --
SELECT * FROM newEmployees
WHERE jobTitle = 'Unknown';
-- number of rows selected:  23 ( all of them are still updated )

--     (b)     --
-- No, the rollback was not effective

--     (c)     --
-- Since the auto-commit flag has been set to off, any new changes are temporary and 
-- are not made permanent until the COMMIT command is explicitly ran. 
-- In task 5, the ROLLBACK command wiped all the changes that were made to the db since 
-- the beginning of the script. 
-- In this task, however, when the ROLLBACK command was issued, it didn't have any effect
-- because of the COMMIT command that was dispatched in the previous step, making any changes 
-- made earlier permanent and irreversible

-- Q10 SOLUTION --
DELETE FROM newEmployees;

-- Q11 SOLUTION --
CREATE VIEW vwNewEmps 
AS 
SELECT * FROM newEmployees
ORDER by lastname , firstname;

-- Q12 SOLUTION --
ROLLBACK;
SELECT COUNT(*) FROM newEmployees;

--     (a)     --
-- 0

--     (b)     --
-- The ROLLBACK command was ineffective because all DDL statements are committed automatically
-- to the db, making any ROLLBACKS issued after the fact obsolete.

-- Q13 SOLUTION --
INSERT ALL
  INTO newEmployees VALUES (100, 'Patel', 'Ralph', 22333, 'rpatel@mail.com', 1, NULL, 'Sales Rep')
  INTO newEmployees VALUES (101, 'Denis', 'Betty', 33444, 'bdenis@mail.com', 4, NULL, 'Sales Rep')
  INTO newEmployees VALUES (102, 'Biri', 'Ben', 44555, 'bbirir@mail.com', 2, NULL, 'Sales Rep')
  INTO newEmployees VALUES (103, 'Newman', 'Chad', 66777, 'cnewman@mail.com', 3, NULL, 'SalesRep')
  INTO newEmployees VALUES (104, 'Ropeburn', 'Audrey', 77888, 'aropebur@mail.com', 1, NULL, 'Sales Rep')
SELECT * FROM dual;

-- Q14 SOLUTION --
SAVEPOINT insertion;

-- Q15 SOLUTION --
UPDATE newEmployees 
SET jobTitle = 'Unknown';
SELECT * FROM newEmployees
WHERE jobTitle = 'Unknown';

-- Q16 SOLUTION --
ROLLBACK to SAVEPOINT;
SELECT * FROM newEmployees ;
-- The data fetched is similar to what was saved at the SAVEPOINT. 
-- The rollback command, coupled with the SAVEPOINT flag, reverted all changes
-- made upto the savepoint.

-- Q17 SOLUTION --
ROLLBACK;
SELECT * FROM newemployees;
-- The rollback command cleared any uncommited changes made after the save point
-- and the fetched data reflects this.

-- Q18 SOLUTION --
REVOKE all
ON newEmployees
FROM PUBLIC;

-- Q19 SOLUTION --
GRANT READ
ON newEmployees
TO dbs211_221zb16;

-- Q20 SOLUTION --
GRANT INSERT, UPDATE, DELETE
ON newEmployees
TO dbs211_221zb16;

-- Q21 SOLUTION --
REVOKE all
ON newEmployees
FROM dbs211_221zb16;

-- Q22 SOLUTION --
DROP table newEmployees;
DROP VIEW vwNewEmp;
