SELECT C.id, C.name
FROM customers C,artists , likeartists
WHERE C.id=likeartists.customer_id
		AND artists.name=likeartists.artist_name
		AND artists.name='Picasso';