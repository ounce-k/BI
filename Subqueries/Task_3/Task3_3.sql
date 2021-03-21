--Show the names of products and their total cost, which were delivered by German suppliers

SELECT Products.ProductName, 
SUM(Products.UnitPrice) AS TotalCost
FROM Products
WHERE Products.SupplierID IN 
(SELECT Suppliers.SupplierID
FROM Suppliers
WHERE Suppliers.Country = 'Germany')
GROUP BY Products.ProductName; 

