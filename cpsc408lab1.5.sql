--In class assignment 1.5

--1

SELECT MAX(Total)
FROM Invoice;

--2

SELECT Total
FROM Invoice
ORDER BY Total DESC
LIMIT 1;
--Limit only spits out a specified number of tuples

--3

SELECT MediaType.Name, COUNT(*) -- whenever you have an aggregate, you need GROUP BY
FROM Track, MediaType
WHERE Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name

--4

SELECT MediaType.Name, COUNT(*) AS Total-- whenever you have an aggregate, you need GROUP BY
FROM Track, MediaType
WHERE Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name
ORDER BY Total DESC;

--5

SELECT MediaType.Name, COUNT(*) AS Total-- whenever you have an aggregate, you need GROUP BY
FROM Track, MediaType
WHERE Track.MediaTypeId = MediaType.MediaTypeId
GROUP BY MediaType.Name HAVING (Total > 200)
ORDER BY Total DESC;

--6

SELECT COUNT(*) totalTracks,COUNT(DISTINCT Artist.Name)
artistCount
FROM Track,Artist,Album
WHERE Artist.ArtistId = Album.ArtistId AND Track.AlbumId = Album.AlbumId AND Artist.Name LIKE 'A%';


