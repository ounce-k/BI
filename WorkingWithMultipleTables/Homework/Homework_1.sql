--Show the total ordering sum calculated for each country of customer

SELECT Customers.Country, 
SUM(Orders.Freight) AS OrderingSum
FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.Country;