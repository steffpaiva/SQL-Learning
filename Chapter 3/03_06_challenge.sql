-- Determine new customers
-- orders, customer table
-- first name, last number, number of orders =0,
-- customer left join orders 

SELECT 
FirstName,
LastName,
COUNT(DISTINCT OrderID) as Num_Orders
FROM Customer
LEFT OUTER JOIN Orders ON 
Customer.CustomerID = Orders.CustomerID
GROUP BY Customer.CustomerID
HAVING COUNT(OrderID) = 0;

