--Show the name of customers that prefer to order non-domestic products

SELECT Customers.CompanyName
FROM Customers
WHERE Customers.CompanyName NOT IN
(SELECT Customers.CompanyName
FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
LEFT JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
LEFT JOIN Products ON [Order Details].ProductID = Products.ProductID
LEFT JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Customers.Country = Suppliers.Country
GROUP BY Customers.CompanyName);


