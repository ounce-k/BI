--Show the list of cities in which the average age of employees is greater than 60 
--(the average age is also to be shown)

SELECT City, AVG(YEAR(GETDATE()) - YEAR(BirthDate)) AS averageAge
FROM Employees
GROUP BY City
HAVING AVG(YEAR(GETDATE()) - YEAR(BirthDate)) > 60;