--Create a report that shows the company name, contact title, city and country of all 
--customers in Mexico or in any city in Spain except Madrid

SELECT Customers.CompanyName, 
Customers.ContactTitle,
Customers.City, 
Customers.Country
FROM Customers INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.ShipCity <> 'Madrid' AND Orders.ShipCountry IN ('Mexico', 'Spain');

