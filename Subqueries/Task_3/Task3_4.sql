--Show first and last names of employees that don’t work with Eastern region

SELECT Employees.FirstName, 
Employees.LastName
FROM Employees
WHERE Employees.EmployeeID NOT IN
(SELECT DISTINCT Employees.EmployeeID
FROM Employees 
LEFT JOIN EmployeeTerritories ON Employees.EmployeeID = EmployeeTerritories.EmployeeID
LEFT JOIN Territories ON EmployeeTerritories.TerritoryID = Territories.TerritoryID
LEFT JOIN Region ON Territories.RegionID = Region.RegionID
WHERE Region.RegionDescription = 'Eastern')