--Create a report that shows the orders placed by all the customers excluding the customers who belongs to London city

SELECT Orders.OrderID, 
Orders.CustomerID, 
Customers.City
FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Customers.City <> 'London';
