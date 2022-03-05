SELECT name,birthplace
FROM artists
WHERE EXTRACT(YEAR FROM dateofbirth)>1880 AND EXTRACT(YEAR FROM dateofbirth)<1930;