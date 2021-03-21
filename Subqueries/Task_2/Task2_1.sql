--Show the name of the category in which the average price of  a certain product is greater 
--than the grand average in the whole stock

SELECT Categories.CategoryName, AVG(Products.UnitPrice) AS AveragePrice
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.ProductID
GROUP BY Categories.CategoryName
HAVING AVG(Products.UnitPrice) >
(SELECT AVG(Products.UnitPrice) FROM Products);

