--Create a report that shows all products by name that are in the Seafood category

SELECT Products.ProductName, Categories.CategoryName
FROM Categories INNER JOIN Products ON Categories.CategoryID = Products.CategoryID
WHERE Categories.CategoryName = 'Seafood';