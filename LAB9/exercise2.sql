CREATE TABLE Author(
	Authorid integer,
	Authorname varchar(20),
	PRIMARY KEY (Authorid)
);

CREATE assertion check_total_of_books_and_authors
	CHECK (
	(SELECT COUNT(*) FROM Book B)+(SELECT COUNT(*) FROM Author A)<10000
	);