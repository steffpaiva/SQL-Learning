-- Find null values in Customer table
SELECT * FROM Customer
WHERE FirstName IS NULL OR
LastName is NULL OR
Email is NULL OR
Phone is NULL;
