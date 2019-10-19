select
t.Name as Album_name, m.Name as media_type, g.Name as media_genre
from track as t
inner join album as a
on t.AlbumId = a.AlbumId
inner join Genre as g
on t.GenreId = g.GenreId
inner join MediaType as m
on t.MediaTypeId = m.MediaTypeId