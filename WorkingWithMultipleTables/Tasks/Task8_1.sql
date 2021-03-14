--Show the list of customers’ names who used to order the ‘Tofu’ product

SELECT Customers.CompanyName
FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
LEFT JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
LEFT JOIN Products ON [Order Details].ProductID = Products.ProductID
WHERE Products.ProductName = 'Tofu';
