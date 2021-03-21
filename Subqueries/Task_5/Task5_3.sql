--Find the Companies that placed orders in 1997

SELECT DISTINCT Customers.CompanyName
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IN 
(SELECT Orders.OrderID
FROM Orders
WHERE YEAR(Orders.OrderDate) = 1997);

