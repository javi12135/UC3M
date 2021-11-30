-- I) How many users grouped by gender are subscribed to the platform?
SELECT Gender, COUNT(*)
FROM ACCOUNTS
GROUP BY gender;

-- II) Director full name, movie name, genre, year, PG rating and duration of all movies directed by people named ‘Bob’ , ordered by duration (longest ones first)
SELECT D.name, M.title, M.genre, M.Year, M.PG, M.Duration
FROM Movies M, Directors D
WHERE M.Director=D.Code AND D.Name='Bob'
ORDER BY M.Duration DESC;

-- III) All the information about the movies stored in custom lists for profile ‘Alejandro’ of user ‘U123’.
SELECT M.*
FROM LISTCONTENTS L, MOVIELISTS M, PROFILES P
WHERE L.listId=M.id AND M.profileId=P.id AND P.accountId='U123' AND P.name='Alejandro';

-- IV) What is the genre with more movies in the platform?
SELECT MAX(Genre)
FROM MOVIES;

-- V) Code and name of the movies inserted into the database in Jan 2019
SELECT code, title
FROM MOVIES
WHERE ingestionDate>='01/01/2019' AND ingestionDate<='31/01/2019';

-- VI) Average user rating in our platform for all ‘Avengers’ movies in the platform.
SELECT AVG(V.Score)
FROM VIEWEDMOVIES V, MOVIES M
WHERE M.code=V.movieCode AND M.title LIKE '%Avengers%';

-- VII) Movie titles, budget and names of other actors participating on movies with ‘Chris Hemsworth’
SELECT M.Title, M.budget, A.name
FROM MOVIES M, ACTORS A, WORKEDON W
WHERE W.movieCode=M.code AND W.actorId=A.id AND M.code IN
  (SELECT W.movieCode
  FROM WORKEDON W, ACTORS A
  WHERE A.id=W.actorId AND A.name='Chris Hemsworth' AND M.code=W.movieCode);

-- VIII) Name of the actors in the platform who have participated in more than 10 movies.
SELECT A.Name
FROM ACTORS A, WORKEDON W
WHERE A.id=W.actorId
GROUP BY A.name
HAVING COUNT(A.id)>10;

-- IX) Total budget for all movies by genre and year, ordered by amount.
SELECT SUM(budget), genre, year
FROM MOVIES
GROUP BY genre, year
ORDER BY SUM(budget) DESC;

-- X) Average imdb score of movies where ‘Bruce Willis’ was protagonist ordered by genre
SELECT AVG(imdbScore)
FROM MOVIES M, WORKEDON W
WHERE W.movieCode=M.code AND W.mainCharacter='Bruce Willis'
ORDER BY genre;

-- XI) Code, Name and all info about actors participating on the film previous to ‘Harry Potter and the Chamber of Secrets’
SELECT A.id, A.name
FROM MOVIES M, ACTORS A, WORKEDON W
WHERE A.id=W.actorId AND W.movieCode=M.code AND M.code IN (
  SELECT M.previous
  FROM MOVIES M
  WHERE M.title='Harry Potter and the Chamber of Secrets');
