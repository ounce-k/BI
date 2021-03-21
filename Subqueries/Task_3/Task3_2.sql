--Show first and last names of employees who shipped orders in cities of USA

SELECT Employees.FirstName, Employees.LastName
FROM Employees
WHERE Employees.EmployeeID IN
(SELECT DISTINCT Employees.EmployeeID 
FROM Employees INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.ShipCountry = 'USA');