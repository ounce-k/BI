--Show first, last names and ages of 3 eldest employees

SELECT TOP 3
FirstName, 
LastName, 
YEAR(GETDATE()) - YEAR(BirthDate) AS Age
FROM Employees
ORDER BY YEAR(GETDATE()) - YEAR(BirthDate) DESC;