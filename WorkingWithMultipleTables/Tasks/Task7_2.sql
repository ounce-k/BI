--Show the list of french customers’ names who have made more than one order

SELECT Customers.CustomerID,
Customers.Country,
COUNT(Orders.OrderID) AS OrdersCount
FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.Country = 'France'
GROUP BY Customers.CustomerID, Customers.Country
HAVING COUNT(Orders.OrderID) > 1;