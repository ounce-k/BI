--Show first, last names of the employees, their freight who have the freight bigger then avarage

SELECT Employees.EmployeeID, 
Employees.FirstName, 
Employees.LastName, 
Orders.Freight
FROM Employees INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.Freight > 
(SELECT AVG(Orders.Freight) FROM Orders)