use Chinook


--1.Encuentre el número total de facturas (invoices) de cada cliente junto con el nombre completo, la ciudad y el correo electrónico de cada uno. 
--Después de ejecutar la consulta descrita anteriormente,
--¿cuál es la dirección de correo electrónico de la quinta persona, František Wichterlová?
select FirstName,lastname,city, email, count(I.customerid) as 'total facturas'
from Customer as C join Invoice as I on C.CustomerId=I.CustomerId group by FirstName,lastname,city, email
--¿cuál es la dirección de correo electrónico de la quinta persona, František Wichterlová?
select FirstName,lastname,email
from Customer 
where firstname='František' and lastname='Wichterlová'

--2.Recupere el nombre de la pista, el álbum, el ID del artista (artistID) y el ID de la pista (trackID) para todos los álbumes. 
select T.trackid,T.name, Al.albumid, Al.title,A.artistid, A.name 
from Track as T join album as Al on T.AlbumId=Al.AlbumId join Artist as A on Al.ArtistId=A.ArtistId

--¿Cuál es el título de la canción con trackID 12 del álbum "For Those About to Rock We Salute You"?
select T.trackid,T.name, Al.albumid, Al.title,A.artistid, A.name 
from Track as T join album as Al on T.AlbumId=Al.AlbumId join Artist as A on Al.ArtistId=A.ArtistId where TrackId=12

--3.Encuentra el nombre y el ID de los artistas que no tienen álbumes.
select distinct name, a.artistId, al.albumid from Artist as a left join Album as al on a.ArtistId=al.ArtistId  where al.albumId is null
--Después de ejecutar la consulta descrita anteriormente, dos de los registros devueltos tienen el mismo apellido. Diga cuál es.
---Santana feat y vinicius son apellidos que se repiten
