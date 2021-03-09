--Calculate the greatest, the smallest and the average age of the employees for each city

SELECT City,
MAX(YEAR(GETDATE()) - YEAR(BirthDate)) as greatestAge, 
MIN(YEAR(GETDATE()) - YEAR(BirthDate)) as smallestAge,
AVG(YEAR(GETDATE()) - YEAR(BirthDate)) as averageAge
FROM Employees
GROUP BY City;



