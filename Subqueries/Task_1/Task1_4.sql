--Show the name of customers with the freight bigger then avarage

SELECT DISTINCT Customers.CompanyName 
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.Freight > 
(SELECT AVG(Orders.Freight) FROM Orders);
