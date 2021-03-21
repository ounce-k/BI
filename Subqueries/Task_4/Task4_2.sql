--Show the info about orders, that contain the cheapest products from USA.

SELECT Orders.OrderID, 
Orders.CustomerID, 
Orders.EmployeeID, 
Orders.RequiredDate, 
Orders.ShipCountry,
Products.ProductID
FROM Orders INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID
WHERE Products.ProductID IN (
SELECT TOP 5 Products.ProductID
FROM Products INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Suppliers.Country = 'USA'
ORDER BY Products.UnitPrice);
