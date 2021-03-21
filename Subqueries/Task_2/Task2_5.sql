--Show the categories of products for which the average discount is higher than the average discount for all products

SELECT Categories.CategoryName, 
AVG([Order Details].Discount) AS AverageDiscount
FROM Categories LEFT JOIN Products ON Categories.CategoryID = Products.CategoryID
LEFT JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
GROUP BY Categories.CategoryName
HAVING AVG([Order Details].Discount) >
(SELECT AVG([Order Details].Discount) FROM [Order Details]);
