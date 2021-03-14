--Create a report showing the information about employees and orders, whenever they had orders or not

SELECT Employees.LastName, 
Orders.OrderID
FROM Employees FULL OUTER JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID;
