select
top(5)
t.Name, count(il.TrackId) as num_sold
from Track as t
inner join InvoiceLine as il
on t.TrackId = il.TrackId
inner join Invoice as i
on i.InvoiceId = il.InvoiceId
group by t.Name
order by num_sold desc
