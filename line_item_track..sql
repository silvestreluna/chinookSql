SELECT
b.Name, a.*
FROM InvoiceLine as a
INNER JOIN
Track as b
ON a.InvoiceId = b.TrackId