--Show customers whose maximum freight level is less than the average for all customers

SELECT Customers.CompanyName, MAX(Orders.Freight) AS MaximumFreightLevel
FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CompanyName
HAVING MAX(Orders.Freight) < (SELECT AVG(Orders.Freight) FROM Orders)
ORDER BY MaximumFreightLevel DESC;

