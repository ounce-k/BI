--Show the names of products, that have the biggest price

SELECT Products.ProductName
FROM Products
WHERE Products.UnitPrice = 
(SELECT MAX(Products.UnitPrice) FROM Products)
