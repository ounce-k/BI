--Show the list of suppliers, products and its category

SELECT Suppliers.CompanyName, 
Products.ProductName, 
Categories.CategoryName
FROM Suppliers INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
ORDER BY Suppliers.CompanyName;