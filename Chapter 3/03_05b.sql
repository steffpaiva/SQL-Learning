-- Calculate repeat customer rate
-- repeat customers/ total customers
-- CTE: Virtual table created and used within query
-- deleted after query executes
-- used by adding WITH
-- Add before SELECT, INSERT etc. 

WITH Repeat_Customers AS
(
  SELECT
  CustomerID as Repeat_Cus
  FROM Orders
  GROUP BY CustomerID
  HAVING COUNT(OrderID) >1
  )
SELECT
(COUNT(DISTINCT Repeat_Cus)/
COUNT(DISTINCT CustomerID))*100
as CustomerRepeatRate
FROM Orders
LEFT OUTER JOIN Repeat_Customers
ON Orders.CustomerID = Repeat_Customers.Repeat_Cus;