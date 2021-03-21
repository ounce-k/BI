--Show the regions where employees work, the middle age of which is higher than over the whole company

SELECT Region.RegionDescription, 
AVG(YEAR(GETDATE()) - YEAR(Employees.BirthDate)) AS RegionMiddleAge
FROM Employees INNER JOIN EmployeeTerritories ON Employees.EmployeeID = EmployeeTerritories.EmployeeID
INNER JOIN Territories ON EmployeeTerritories.TerritoryID = Territories.TerritoryID
INNER JOIN Region ON Territories.RegionID = Region.RegionID
GROUP BY Region.RegionDescription
HAVING AVG(YEAR(GETDATE()) - YEAR(Employees.BirthDate)) > 
(SELECT AVG(YEAR(GETDATE()) - YEAR(Employees.BirthDate)) FROM Employees);

