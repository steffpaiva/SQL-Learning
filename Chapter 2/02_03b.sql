-- Determine which sales people made no sales
-- Inner joint returns matching values from both tables
-- Left outer join , all from left only matching from right
-- right outer, oposite of left outer 
-- full outer brings it all in

SELECT 
Salesperson.SalespersonID,
Salesperson.FirstName,
Salesperson.LastName
FROM Salesperson
LEFT OUTER JOIN Orders
ON Salesperson.SalespersonID =
Orders.SalespersonID
WHERE Orders.SalespersonID IS NULL;

