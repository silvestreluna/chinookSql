SELECT
FirstName, LastName, InvoiceId,InvoiceDate, BillingCountry
FROM Customer AS A
INNER JOIN
Invoice AS B
ON A.CustomerId = B.CustomerId
WHERE BillingCountry = 'Brazil'