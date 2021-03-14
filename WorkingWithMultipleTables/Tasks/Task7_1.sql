--Show the count of orders made by each customer from France

SELECT Customers.CustomerID,
Customers.Country,
COUNT(Orders.OrderID) AS OrdersCount
FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.Country = 'France'
GROUP BY Customers.CustomerID, Customers.Country;
