--Show the list of employee that perform orders with freight 100(?).

SELECT DISTINCT Employees.FirstName, 
Employees.LastName
FROM Employees INNER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
WHERE Orders.OrderID IN 
(SELECT Orders.OrderID
FROM Orders
WHERE Orders.Freight > 100);