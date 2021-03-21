--Show the list of cities where employees and customers are from and where orders have been made to. 
--Duplicates should be eliminated

SELECT Customers.City FROM Customers
UNION 
SELECT Employees.City FROM Employees
UNION 
SELECT Orders.ShipCity FROM Orders
ORDER BY City;

