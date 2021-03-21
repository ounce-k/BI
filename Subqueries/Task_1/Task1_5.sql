--Show the name of supplier  who delivered the cheapest product

SELECT Suppliers.CompanyName 
FROM Suppliers INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID
WHERE Products.UnitPrice = 
(SELECT MIN(Products.UnitPrice) FROM Products);