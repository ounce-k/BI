--Show first and last names of the employees as well as the count of their orders 
--shipped after required date during the year 1997

SELECT Employees.FirstName, 
Employees.LastName, 
COUNT(Orders.OrderID) AS CountOfOrders
FROM Employees LEFT JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.ShippedDate > Orders.RequiredDate AND YEAR(Orders.OrderDate) = 1997
GROUP BY Employees.FirstName, 
Employees.LastName;