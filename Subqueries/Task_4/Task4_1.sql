--Show employees (first and last name) working with orders from the United States

SELECT DISTINCT Employees.FirstName, 
Employees.LastName 
FROM Employees INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Employees.EmployeeID = ANY
(SELECT Orders.EmployeeID
FROM Orders
WHeRE Orders.ShipCountry = 'USA');