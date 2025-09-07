
-- Q1: Employees with their office details
SELECT 
    e.firstName, 
    e.lastName, 
    e.email, 
    o.officeCode
FROM employees e
INNER JOIN offices o
    ON e.officeCode = o.officeCode;

-- Q2: Products with their product line info
SELECT 
    p.productName, 
    p.productVendor, 
    pl.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;


-- Q3: First 10 orders with customer relationship
SELECT 
    o.orderDate, 
    o.shippedDate, 
    o.status, 
    c.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;
