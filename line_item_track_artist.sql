SELECT 
b.Name, b.Composer, a.*
FROM InvoiceLine as a
INNER JOIN 
Track as b
ON a.TrackId = b.TrackId
