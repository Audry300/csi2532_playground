Please find the Schema and seed files in the LAB6 folder

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1<br>
SELECT name, birthplace<br>
FROM artists;<br>

![result](https://user-images.githubusercontent.com/71721639/156947596-ca606baa-9d1c-40c3-856b-9933cf54148a.PNG)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

2<br>
SELECT title, price<br>
FROM artworks<br>
WHERE artworks.year>1600;<br>

![result](https://user-images.githubusercontent.com/71721639/156947635-4be43eba-deb7-4573-b165-26af48fc439f.PNG)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

3<br>
SELECT title,type<br>
FROM artworks<br>
WHERE artworks.artist_name LIKE 'Picasso' OR artworks.year=2000;<br>

![result](https://user-images.githubusercontent.com/71721639/156947702-f263341b-fefa-4458-b853-52a92d7735b6.PNG)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

4<br>
SELECT name,birthplace <br>
FROM artists<br>
WHERE EXTRACT(YEAR FROM dateofbirth)>1880 <br>
      AND EXTRACT(YEAR FROM dateofbirth)<1930;<br>

![result](https://user-images.githubusercontent.com/71721639/156947767-8f6ad7fa-ac35-4a1f-9e44-9e1715a1c3f5.PNG)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

5<br>
SELECT name, country<br>
FROM artists<br>
WHERE artists.style IN ('Modern','Baroque','Renaissance');<br>
![result](https://user-images.githubusercontent.com/71721639/156947791-4a2ca2c6-950b-4590-9a25-3e2cefae8f36.PNG)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

6<br>
SELECT * <br>
FROM artworks<br>
ORDER BY title;<br>
![result](https://user-images.githubusercontent.com/71721639/156947823-c9c66783-59c7-43bc-ab4d-c71286434b4f.PNG)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

7<br>
SELECT C.id, C.name<br>
FROM customers C,artists , likeartists<br>
WHERE C.id=likeartists.customer_id<br>
		AND artists.name=likeartists.artist_name<br>
		AND artists.name='Picasso';<br>

![result](https://user-images.githubusercontent.com/71721639/156947849-64ba3fc2-f9b1-48c3-9c56-c4bee11ed710.PNG)

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

8<br>
SELECT C.name<br>
FROM customers C,artists , likeartists, artworks<br>
WHERE C.id=likeartists.customer_id<br>
		AND artists.name=likeartists.artist_name<br>
		AND artworks.artist_name=artists.name<br>
		AND artists.style='Renaissance'<br>
		AND artworks.price>30000;<br>

![result](https://user-images.githubusercontent.com/71721639/156947893-f63b507b-a464-43ff-aa96-ed57df482068.PNG)






















---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
