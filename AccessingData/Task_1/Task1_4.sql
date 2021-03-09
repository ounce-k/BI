--Show the list of first, last names and ages of the employees whose age is greater than 55 
--The result should be sorted by last name

SELECt FirstName, LastName, YEAR(GETDATE()) - YEAR(BirthDate) AS Age
FROM Employees
WHERE YEAR(GETDATE()) - YEAR(BirthDate) > 55
ORDER BY LastName;