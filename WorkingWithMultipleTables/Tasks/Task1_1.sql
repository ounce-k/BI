--Create a report showing the first and last name of all sales representatives 
--who are from  Seattle or Redmond

SELECT Employees.FirstName, 
Employees.LastName, 
Territories.TerritoryDescription
FROM Employees INNER JOIN EmployeeTerritories ON Employees.EmployeeID = EmployeeTerritories.EmployeeID
INNER JOIN Territories ON EmployeeTerritories.TerritoryID = Territories.TerritoryID
WHERE Territories.TerritoryDescription IN ('Seattle', 'Redmond');
