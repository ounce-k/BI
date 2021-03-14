--Show the total ordering sums calculated for each customer’s country 
--for domestic and non-domestic products separately 
--(e.g.: “France – French products ordered – Non-french products ordered” 
--and so on for each country)

SELECT subquery.Country, 
SUM(subquery.DomesticOrderingSum) AS DomesticOrderingSum, 
SUM(subquery.NonDomesticOrderingSum) AS NonDomesticOrderingSum
FROM
(SELECT Customers.Country,
SUM(Orders.Freight) AS DomesticOrderingSum, 
NULL AS NonDomesticOrderingSum
FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
LEFT JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
LEFT JOIN Products ON [Order Details].ProductID = Products.ProductID
LEFT JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Customers.Country = Suppliers.Country
GROUP BY Customers.Country
UNION
SELECT Customers.Country,
NULL AS DomesticOrderingSum, 
SUM(Orders.Freight) AS NonDomesticOrderingSum
FROM Customers LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
LEFT JOIN [Order Details] ON Orders.OrderID = [Order Details].OrderID
LEFT JOIN Products ON [Order Details].ProductID = Products.ProductID
LEFT JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Customers.Country <> Suppliers.Country
GROUP BY Customers.Country) AS subquery
GROUP BY subquery.Country
ORDER BY subquery.Country;


