DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('John Allan');
INSERT INTO people (name) VALUES ('Colin Bell');
INSERT INTO people (name) VALUES ('Graeme Broose');
INSERT INTO people (name) VALUES ('Stuart Bryce');
INSERT INTO people (name) VALUES ('Christopher Burn');
INSERT INTO people (name) VALUES ('David Clarkson');
INSERT INTO people (name) VALUES ('Samuel DaBell');
INSERT INTO people (name) VALUES ('Crawford Davidson');
INSERT INTO people (name) VALUES ('Natasha Ford');
INSERT INTO people (name) VALUES ('Dale Johnston');
INSERT INTO people (name) VALUES ('Harvey Wheaton');
INSERT INTO people (name) VALUES ('Kieran Marshall');
INSERT INTO people (name) VALUES ('Stephen Ng');
INSERT INTO people (name) VALUES ('Michael Robertson');
INSERT INTO people (name) VALUES ('Jia Wong');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '15:15');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '22:05');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '18:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '22:15');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '23:25');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '12:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '13:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:40');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '18:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '21:10');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '15:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '22:45');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '22:00');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '15:30');

-- 1.  Return ALL the data in the 'movies' table.
SELECT * FROM movies;

-- 2.  Return ONLY the name column from the 'people' table
SELECT name FROM people;

-- 3.  Oops! Someone at CodeClan spelled Graham's name wrong! Change it to reflect the proper spelling ('Graeme Broose' should be 'Graham Bruce').
UPDATE people
	SET name = 'Graham Bruce'
	WHERE name = 'Graeme Broose';

-- 4. Insert your name into the 'people' table.
INSERT INTO people (name)
	VALUES ('Simon Shephard');

-- 5.  Return ONLY your name from the 'people' table.
SELECT name FROM people
	WHERE name = 'Simon Shephard';

-- 6.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE FROM movies
  WHERE title = 'Batman Begins';

-- 7.  Create a new entry in the 'people' table with the name of one of the instructors.
INSERT INTO people (name)
	VALUES ('Craig Morton');

-- 8.  Craig has decided to hijack our movie evening, Remove him from the table of people.
DELETE FROM people
	WHERE name = 'Craig Morton';

-- 9.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title, year, show_time)
	VALUES ('Avengers: Infinity War', 2018, '00:00');
-- 10.  The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.
SELECT show_time FROM movies
	WHERE title = 'Guardians of the Galaxy';
INSERT INTO movies (title, year, show_time)
	VALUES ('Guardians of the Galaxy 2', 2017, '20:55');

--
-- ## Extension
--
-- 1.  Research how to delete multiple entries from your table in a single command.
DELETE FROM people
	WHERE name in ('Christopher Burn', 'David Clarkson');
DELETE FROM movies
	WHERE id in (SELECT id FROM movies WHERE year = 2015);
SELECT * FROM movies;
SELECT * FROM people;
