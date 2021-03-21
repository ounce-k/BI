--Create a report that shows the product name and supplier id for all products supplied by 
--Exotic Liquids, Grandma Kelly's Homestead, and Tokyo Traders

SELECT Suppliers.SupplierID, Suppliers.CompanyName, Products.ProductName
FROM Suppliers INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID
WHERE Suppliers.CompanyName IN ('Exotic Liquids', 'Grandma Kelly''s Homestead', 'Tokyo Traders');
