--Show the first and last name(s) of the eldest employee(s)
--Use a subquery

SELECT TOP 1 WITH TIES
FirstName, 
LastName
FROM Employees
WHERE YEAR(GETDATE()) - YEAR(BirthDate) = (SELECT MAX(YEAR(GETDATE()) - YEAR(BirthDate)) FROM Employees)
ORDER BY YEAR(GETDATE()) - YEAR(BirthDate) DESC;