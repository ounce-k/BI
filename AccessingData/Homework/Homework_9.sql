--Write a query to count current and discontinued products

SELECT COUNT(ProductID) 
FROM Products
WHERE UnitsInStock <> 0 AND Discontinued = 1;