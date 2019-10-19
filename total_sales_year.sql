SELECT
DATEPART(YEAR, InvoiceDate) as year_of_invoice, sum(total) as total_sale
FROM Invoice
where InvoiceDate like '%2009%'
OR InvoiceDate like '%2011%'
group by DATEPART(YEAR, InvoiceDate)
