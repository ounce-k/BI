--Create a report that shows all the orders where the employee’s city and order’s ship city are same

SELECT Orders.OrderID, 
Orders.CustomerID,
Orders.ShipCity
FROM Employees INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Employees.City = Orders.ShipCity;
