-- I) How many users grouped by gender are subscribed to the platform?
SELECT Gender, COUNT(*)
FROM ACCOUNTS
GROUP BY gender;

-- II) Director full name, movie name, genre, year, PG rating and duration of all movies directed by people named ‘Bob’ , ordered by duration (longest ones first)
SELECT
FROM

-- III) All the information about the movies stored in custom lists for profile ‘Alejandro’ of user ‘U123’.
SELECT
FROM

-- IV) What is the genre with more movies in the platform?
SELECT
FROM

-- V) Code and name of the movies inserted into the database in Jan 2019
SELECT code, title
FROM MOVIES
WHERE ingestionDate>='01/01/2019' AND ingestionDate<='31/01/20191';

-- VI) Average user rating in our platform for all ‘Avengers’ movies in the platform.
SELECT
FROM

-- VII) Movie titles, budget and names of other actors participating on movies with ‘Chris Hemsworth’
SELECT
FROM

-- VIII) Name of the actors in the platform who have participated in more than 10 movies.
SELECT Name
FROM ACTORS, WORKEDON
WHERE COUNT(WORKEDON.actorId)>10;

-- IX) Total budget for all movies by genre and year, ordered by amount.
SELECT
FROM

-- X) Average imdb score of movies where ‘Bruce Willis’ was protagonist ordered by genre
SELECT
FROM

-- XI) Code, Name and all info about actors participating on the film previous to ‘Harry Potter and the Chamber of Secrets’
SELECT
FROM
