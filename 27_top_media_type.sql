select 
mt.Name, count(t.MediaTypeId) as count_sold
from MediaType as mt
inner join Track as t
on mt.MediaTypeId = t.MediaTypeId
inner join InvoiceLine as il
on t.TrackId = il.TrackId
group by mt.Name
order by count_sold desc
