--Write a query to get Product list (name, units on order , units in stock) of stock is less than the quantity on order

SELECT ProductName, UnitsOnOrder, UnitsInStock
FROM Products
WHERE UnitsInStock < UnitsOnOrder;

