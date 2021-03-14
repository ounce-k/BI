--Show the list of french customers’ names who used to order french products.

SELECT DISTINCT Customers.CompanyName,
Suppliers.Country
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID
INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Customers.Country = 'France' AND Suppliers.Country = 'France';
