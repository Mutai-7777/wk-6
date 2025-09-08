--question 1

use salesdb;

SELECT employees.firstName, employees.lastName, employees.email, employees.officeCode,offices.officeCode
FROM employees 
INNER JOIN offices ON employees.officeCode=offices.officeCode;

--question 2
use salesdb;

SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;

--question 3
use salesdb;

SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
