-- Find average daily sales
-- total quantity/ total sales day = avg daily sales
-- quantity, count days 

SELECT 
SUM(Quantity)/
COUNT(DISTINCT CreationDate) as AverageDailySales
FROM
Orders
LEFT OUTER JOIN OrderItem
ON Orders.OrderID = OrderItem.OrderID;

