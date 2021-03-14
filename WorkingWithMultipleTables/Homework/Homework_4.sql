--Show the list of product names along with unit prices and the history of unit 
--prices taken from the orders (show ‘Product name – Unit price – Historical price’). 
--The duplicate records should be eliminated. If no orders were made for a certain product,
--then the result for this product should look like ‘Product name – Unit price – NULL’. 
--Sort the list by the product name.

SELECT DISTINCT Products.ProductName,
Products.UnitPrice, 
[Order Details].UnitPrice AS HistoricalPrice
FROM Products LEFT JOIN [Order Details] ON Products.ProductID = [Order Details].ProductID
WHERE Products.UnitPrice <> [Order Details].UnitPrice;