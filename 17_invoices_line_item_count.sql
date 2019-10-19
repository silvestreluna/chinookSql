select *
from Invoice as i
left join InvoiceLine as b
on i.InvoiceId = b.InvoiceLineId
