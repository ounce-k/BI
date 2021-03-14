--Show the list of german suppliers’ names who are not working in the same cities

SELECT A.CompanyName AS CustomerOne, 
A.City AS CustomerCity1,
B.CompanyName AS Customer2, 
B.City AS CustomerCity2
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID AND A.City <> B.City 
AND A.Country = 'Germany' AND B.Country = 'Germany'
Order BY A.City;