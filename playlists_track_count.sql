SELECT
b.Name, sum(a.PlaylistId) as number_of_tracks
from PlaylistTrack as a
inner join 
Playlist as b
on a.PlaylistId = b.PlaylistId
group by b.Name
