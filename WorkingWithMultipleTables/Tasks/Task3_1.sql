--Show first and last names of the employees as well as the count of orders 
--each of them have received during the year 1997

SELECT Employees.FirstName, 
Employees.LastName, 
COUNT(Orders.OrderID) AS CountOfOrders
FROM Employees LEFT JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE YEAR(Orders.OrderDate) = 1997
GROUP BY Employees.FirstName, 
Employees.LastName;

