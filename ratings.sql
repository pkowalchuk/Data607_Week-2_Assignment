/*
  ratings.sql
*/

DROP TABLE IF EXISTS ratings;

CREATE TABLE ratings 
(
  ratingID int AUTO_INCREMENT PRIMARY KEY,
  name varchar(100),
  movie varchar(100),
  rating int
);

DROP TABLE IF EXISTS moviesTemp;

CREATE TABLE moviesTemp 
(
  movies varchar(100) NOT NULL,
  sue int NULL,
  sam int NULL,
  nick int NULL,
  sophie int NULL,
  alfred int NULL
);

LOAD DATA INFILE '/users/public/movies.csv' 
INTO TABLE moviesTemp
FIELDS TERMINATED BY ',';

SELECT * FROM moviesTemp;