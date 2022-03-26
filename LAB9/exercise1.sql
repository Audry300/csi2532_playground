CREATE TABLE Author(
    Bookid integer;
    Authorid integer;
    Amount Numeric(7,2),
    Rating integer,
    Booktype varchar(25),

    PRIMARY KEY (Bookid),
    FOREIGN KEY (Authorid) REFERENCES Author(Authorid) 
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CHECK (rating<=10 AND rating>0),
    CHECK (Booktype IN ('Fictionadulte','Non-fiction-adulte', 'Fiction-jeunesse', 'Non-fictionjeunesse'))
);