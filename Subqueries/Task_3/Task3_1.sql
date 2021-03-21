--Calculate the average freight of all employees who work not with Western region

SELECT AVG(Orders.Freight) AS AverageFreight
FROM Employees INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Employees.EmployeeID NOT IN 
(SELECT DISTINCT Employees.EmployeeID
FROM Employees 
LEFT JOIN EmployeeTerritories ON Employees.EmployeeID = EmployeeTerritories.EmployeeID
LEFT JOIN Territories ON EmployeeTerritories.TerritoryID = Territories.TerritoryID
LEFT JOIN Region ON Territories.RegionID = Region.RegionID
WHERE Region.RegionDescription = 'Western');




