--Show the list of product categories along with total ordering sums 
--calculated for the orders made for the products of each category, during the year 1997

SELECT Categories.CategoryName,
SUM(Orders.Freight) As OrderingSums
FROM Categories LEFT JOIN Products ON Categories.CategoryID = Products.CategoryID
LEFT JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
LEFT JOIN Orders ON [Order Details].OrderID = Orders.OrderID
WHERE YEAR(Orders.OrderDate) = 1997
GROUP BY Categories.CategoryName;
