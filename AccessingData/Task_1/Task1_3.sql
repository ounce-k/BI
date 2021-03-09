--Show the list of first and last names of the employees whose first name begins with letter A

SELECT FirstName, LastName
FROM Employees
WHERE FirstName LIKE 'A%';