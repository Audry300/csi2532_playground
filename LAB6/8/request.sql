SELECT C.name
FROM customers C,artists , likeartists, artworks
WHERE C.id=likeartists.customer_id
		AND artists.name=likeartists.artist_name
		AND artworks.artist_name=artists.name
		AND artists.style='Renaissance'
		AND artworks.price>30000;
		