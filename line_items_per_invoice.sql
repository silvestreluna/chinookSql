SELECT InvoiceId, count(*) as line_count
FROm InvoiceLine
group by InvoiceId