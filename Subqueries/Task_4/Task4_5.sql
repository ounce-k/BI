--Show the lists the product names that order quantity equals to 100

SELECT Products.ProductName
FROM Products
WHERE Products.ProductID = ANY
(SELECT [Order Details].ProductID
FROM [Order Details]
WHERE [Order Details].Quantity = 100);
