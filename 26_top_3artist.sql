

select top(3)
	a.Name, count(a.ArtistId) as num_sale
from Artist as a
	inner join Album as alb
		on a.ArtistId = alb.ArtistId
	inner join Track as t
		on alb.AlbumId = t.AlbumId
	inner join InvoiceLine as il
		on il.TrackId = t.TrackId
		group by a.Name
		order by num_sale desc
