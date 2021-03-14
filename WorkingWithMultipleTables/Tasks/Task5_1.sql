--Show the list of french customers’ names who are working in the same cities

SELECT A.CompanyName AS CustomerOne, 
B.CompanyName AS Customer2, 
A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID AND A.City = B.City 
AND A.Country = 'France' 
Order BY A.City;
