-- ***********************
-- Name: Fardeen Sohil Panjwani
-- ID: 119588218
-- Date: 19th Jan, 2022
-- Purpose: Lab 02 DBS211
-- ***********************

-- Q1 Solution --
select officecode, 
       city, 
       state, 
       country, 
       phone 
from offices;

-- Q2 Solution --
select employeenumber,
       firstname,
       lastname,
       extension
from employees
where officecode = 1
order by employeenumber;

-- Q3 Solution --
select customernumber as "Customer Number",
       customername as "Customer Name",
       concat(concat(contactfirstname, ' '), contactlastname) as "Contact Name",
       phone as "Phone"
from customers
where country like 'Canada'
order by customername;
