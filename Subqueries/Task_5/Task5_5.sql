--Create a report that shows all companies by name that sell products in the Dairy Products category

SELECT Suppliers.CompanyName, Categories.CategoryName
FROM Suppliers INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName LIKE 'Dairy%';
