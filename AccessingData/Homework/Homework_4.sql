--Write a query to get most expense and least expensive Product list (name and unit price)

SELECT 
ProductName, 
UnitPrice
FROM Products
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products) OR UnitPrice = (SELECT MIN(UnitPrice) FROM Products);