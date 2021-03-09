--Write a query to get Product list (name, unit price) of ten most expensive products

SELECT TOP 10
ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC;
