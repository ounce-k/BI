--Show the info about customers that prefer to order meat products and never order drinks

SELECT Customers.CustomerID, 
Customers.CompanyName
FROM Customers
WHERE Customers.CustomerID NOT IN
(SELECT Customers.CustomerID
FROM Orders INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID 
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName = 'Beverages')
AND Customers.CustomerID IN
(SELECT Customers.CustomerID
FROM Orders INNER JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID 
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName = 'Meat/Poultry');


