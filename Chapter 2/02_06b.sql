-- Find sales by month and year
SELECT
MONTHNAME(CreationDate) as MonthName,
YEAR(CreationDate) as OrderYear,
COUNT(DISTINCT Orders.OrderID) as TotalOrders,
SUM(Quantity) as TotalQuantity,
SUM(TotalDue) as TotalAmount
FROM Orders
LEFT OUTER JOIN OrderItem
ON Orders.OrderID = OrderItem.OrderID
GROUP BY MonthName, OrderYear
ORDER BY OrderYear, MONTH(CreationDate);