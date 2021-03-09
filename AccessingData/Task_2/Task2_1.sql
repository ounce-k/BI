--Calculate the greatest, the smallest and the average age among the employees from London

SELECT 
MAX(YEAR(GETDATE()) - YEAR(BirthDate)) as greatestAge, 
MIN(YEAR(GETDATE()) - YEAR(BirthDate)) as smallestAge,
AVG(YEAR(GETDATE()) - YEAR(BirthDate)) as averageAge
FROM Employees
WHERE City = 'London';