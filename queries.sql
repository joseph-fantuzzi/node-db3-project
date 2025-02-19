-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p.productname AS ProductName, c.categoryname AS CategoryName FROM product AS p
JOIN category AS c ON p.categoryid = c.id; 

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o.id AS OrderID, s.companyname AS CompanyName FROM "Order" AS o
JOIN shipper AS s ON o.shipvia = s.id
WHERE o.orderdate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p.productname AS ProductName, p.quantityperunit AS QuantityPerUnit FROM product AS p
JOIN orderdetail AS od ON p.id = od.productid
WHERE od.orderid = 10251;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT o.id AS OrderID, c.companyname AS CompanyName, e.lastname AS EmployeeLastName FROM "order" AS o
JOIN customer AS c ON o.customerid = c.id
JOIN employee AS e ON o.employeeid = e.id;