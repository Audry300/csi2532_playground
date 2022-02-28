CREATE TABLE athletes (
    id int,
    name_athlete varchar(20),
    identified_gender varchar(1),
    dob date
);

CREATE TABLE schema_migrations ( 
 migration varchar(255), 
 migrated_at time, 
 PRIMARY KEY (migration) 
);

ALTER TABLE athletes 
RENAME COLUMN identified_gender TO gender;

ALTER TABLE athletes 
RENAME COLUMN name_athlete TO name; 