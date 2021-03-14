-- Show the list of employee (firstname, lastname) and his manager

SELECT A.EmployeeID,
A.FirstName + ' ' + A.LastName AS Employee, 
B.EmployeeID AS ManagerID,
B.FirstName + ' ' + B.LastName AS Manager
FROM Employees A, Employees B
WHERE A.ReportsTo = B.EmployeeID;
