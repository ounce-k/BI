--Create a report that shows all information about suppliers and products

SELECT * 
FROM Suppliers FULL OUTER JOIN Products ON Suppliers.SupplierID = Products.SupplierID;