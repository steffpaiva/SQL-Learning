-- Remove null values from customer table
SELECT FirstName,
LastName,
Email,
Phone
FROM Customer
WHERE Email is NOT NULL AND
Phone IS NOT NULL;