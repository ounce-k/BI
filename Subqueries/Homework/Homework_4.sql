--Create a report that shows all the customers if there are more than 30 orders shipped in London city

SELECT 
CASE WHEN COUNT(Orders.OrderID) > 30 AND Orders.ShipCity = 'London'
THEN
	Customers.CompanyName
WHEN COUNT(Orders.OrderID) < 30 
THEN NULL
END Report
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CompanyName, Orders.ShipCity;


