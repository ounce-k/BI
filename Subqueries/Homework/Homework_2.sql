--Create a report that shows all the products which are supplied by a company called ‘Pavlova, Ltd.’

SELECT Products.ProductName, Suppliers.CompanyName
FROM Suppliers INNER JOIN Products ON Suppliers.SupplierID = Products.SupplierID
WHERE Suppliers.CompanyName = 'Pavlova, Ltd.';