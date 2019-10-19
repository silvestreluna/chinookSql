SELECT
a.FirstName, a.LastName, c.InvoiceId
FROM Employee AS a
INNER JOIN Customer as b
ON a.EmployeeId = b.SupportRepId
INNER JOIN Invoice AS c
ON b.CustomerId = c.CustomerId