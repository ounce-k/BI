--Show the lists the suppliers with a product price equal to 10$.

SELECT Suppliers.CompanyName, Products.UnitPrice
FROM Suppliers INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID
WHERE Products.UnitPrice = 10;