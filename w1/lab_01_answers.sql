------ANSWER 1------
/*
    The first row from the CUSTOMERS table: 
    
    CUSTOMERNUMBER CUSTOMERNAME CONTACTLASTNAME CONTACTFIRSTNAME PHONE ADDRESSLINE1 ADDRESSLINE2 CITY STATE POSTALCODE COUNTRY SALESREPEMPLOYEENUMBER CREDITLIMIT
    103	Atelier graphique	Schmitt	Carine 	40.32.2555	54, rue Royale		Nantes		44000	France	1370	21000
*/


------ANSWER 2------
/*
    Table	      # Rows	# Cols
    CUSTOMERS	  122	    13
    EMPLOYEES	  23	    8
    OFFICES	      7	        9
    ORDERDETAILS  2996	    5
    ORDERS	      326	    7
    PAYMENTS	  273	    4
    PRODUCTLINES  7	        4
    PRODUCTS	  110	    9
*/


------ANSWER 3------
/*
    Name                   Null?    Type         
    ---------------------- -------- ------------ 
    CUSTOMERNUMBER         NOT NULL NUMBER(38)   
    CUSTOMERNAME           NOT NULL VARCHAR2(50) 
    CONTACTLASTNAME        NOT NULL VARCHAR2(50) 
    CONTACTFIRSTNAME       NOT NULL VARCHAR2(50) 
    PHONE                  NOT NULL VARCHAR2(50) 
    ADDRESSLINE1           NOT NULL VARCHAR2(50) 
    ADDRESSLINE2                    VARCHAR2(50) 
    CITY                   NOT NULL VARCHAR2(50) 
    STATE                           VARCHAR2(50) 
    POSTALCODE                      VARCHAR2(15) 
    COUNTRY                NOT NULL VARCHAR2(50) 
    SALESREPEMPLOYEENUMBER          NUMBER(38)   
    CREDITLIMIT                     NUMBER(10,2) 
*/


------ANSWER 4------
/*
    SELECT * FROM employees;
    => The given statement is fetching all the rows in the EMPLOYEES table.
    
    SELECT * FROM customers ORDER BY ContactLastName;
    => This statement fetches all the rows from the customers table and then orders them by the value of the “ContactLastName” column in each row
*/