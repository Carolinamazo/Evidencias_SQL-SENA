use Chinook


--1.Encuentre el n�mero total de facturas (invoices) de cada cliente junto con el nombre completo, la ciudad y el correo electr�nico de cada uno. 
--Despu�s de ejecutar la consulta descrita anteriormente,
--�cu�l es la direcci�n de correo electr�nico de la quinta persona, Franti�ek Wichterlov�?
select FirstName,lastname,city, email, count(I.customerid) as 'total facturas'
from Customer as C join Invoice as I on C.CustomerId=I.CustomerId group by FirstName,lastname,city, email
--�cu�l es la direcci�n de correo electr�nico de la quinta persona, Franti�ek Wichterlov�?
select FirstName,lastname,email
from Customer 
where firstname='Franti�ek' and lastname='Wichterlov�'

--2.Recupere el nombre de la pista, el �lbum, el ID del artista (artistID) y el ID de la pista (trackID) para todos los �lbumes. 
select T.trackid,T.name, Al.albumid, Al.title,A.artistid, A.name 
from Track as T join album as Al on T.AlbumId=Al.AlbumId join Artist as A on Al.ArtistId=A.ArtistId

--�Cu�l es el t�tulo de la canci�n con trackID 12 del �lbum "For Those About to Rock We Salute You"?
select T.trackid,T.name, Al.albumid, Al.title,A.artistid, A.name 
from Track as T join album as Al on T.AlbumId=Al.AlbumId join Artist as A on Al.ArtistId=A.ArtistId where TrackId=12

--3.Encuentra el nombre y el ID de los artistas que no tienen �lbumes.
select distinct name, a.artistId, al.albumid from Artist as a left join Album as al on a.ArtistId=al.ArtistId  where al.albumId is null
--Despu�s de ejecutar la consulta descrita anteriormente, dos de los registros devueltos tienen el mismo apellido. Diga cu�l es.
---Santana feat y vinicius son apellidos que se repiten
