/* Part1 
Query1*/
SELECT OrderNumber, (QuantityOrdered*QuotedPrice)  AS Revenue
FROM order_details;

/* Part1 
Query2 */
SELECT EmpFirstName, TIMESTAMPDIFF(year, EmpBirthDate,CURRENT_DATE())  as AGE  FROM `employees` ORDER BY AGE ASC;


/* Part 2
Query1 */
SELECT * FROM `employees` WHERE EmpFirstName LIKE '%r%' AND EmpLastName NOT LIKE '%q%';


/* Part4
Query1*/
SELECT  DISTINCT c.CustFirstName, c.CustPhoneNumber  FROM `customers` as c   join orders as o 
ON c.customerId= o.CustomerID 
JOIN order_details as od
ON o.OrderNumber= od.OrderNumber
JOIN products as p 
ON od.ProductNumber=p.ProductNumber
WHERE p.ProductName LIKE '%helmet%';


/* Part4
Query2*/
SELECT c.CustFirstName, e.EmpFirstName FROM customers c 
INNER JOIN employees e
ON c.CustFirstName=e.EmpFirstName;

/* Part5
Query*/
SELECT SUM(ord.QuantityOrdered*ord.QuotedPrice*2) AS "OR Amount"
FROM order_details ord 
JOIN orders o ON ord .OrderNumber=o.OrderNumber
JOIN customers as c ON o.CustomerID=c.CustomerID
WHERE c.CustState='OR';


