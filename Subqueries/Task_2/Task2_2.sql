--Show the name of the supplier whose delivery  is lower then the grand average in the whole stock

SELECT Suppliers.CompanyName, SUM(Products.UnitsInStock) AS Delivery 
FROM Suppliers LEFT JOIN Products ON Suppliers.SupplierID = Products.ProductID
GROUP BY Suppliers.CompanyName
HAVING SUM(Products.UnitsInStock) < (SELECT AVG(Products.UnitsInStock) FROM Products)
ORDER BY Delivery DESC;

