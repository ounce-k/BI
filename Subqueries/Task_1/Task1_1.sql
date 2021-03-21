--Show first and last names of the employees who have the biggest freight

SELECT Employees.EmployeeID, 
Employees.FirstName, 
Employees.LastName, 
Orders.Freight
FROM Employees INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.Freight = 
(SELECT MAX(Orders.Freight) FROM Orders)