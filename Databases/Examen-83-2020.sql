--1 Find the code, name and description of the trips belonging to catalogue with code 'C100'
SELECT Code, Name, Description
FROM TRIP, CATALOGUE
WHERE TRIP.Catalog=CATALOGUE.Code AND CATALOGUE.Code=‘C100’;

--2 Build a query to get all trips ordered by Name in descending alphabetical order (z - a)
SELECT *
FROM TRIP
ORDER BY Name DESC;

--3 Build a query to get how many trips are managed by each manager
SELECT COUNT(*), Manager
FROM TRIP
GROUP BY MANAGER

--4 Build a query to get all trip names and descriptions of managers with age of 20 or more
SELECT Name, Description
FROM TRIP, MANAGER
WHERE TRIP.Manager=MANAGER.Code AND MANAGER.AGE>=20

--5 Find the code, name and date of trips plus manager email and name of the catalogue for ‘Spain’ country
SELECT T.Code, T.Name, T.Date, M.Email, C.Name
FROM TRIP T, MANAGER M, CATALOGUE C
WHERE TRIP.Manager=MANAGER.Code AND TRIP.Catalog=CATALOGUE.Code AND CATALOGUE.Country=‘Spain’

--6 Build a query to get manager codes and the average number of people of his / her trips
SELECT Manager, AVG(Num_people)
FROM TRIP
GROUP BY Manager

--7 Build a query to retrieve catalogue code, trip name and manager surname of 2019 trips if manager email ends in ‘.com’
SELECT T.Catalog, T.Name, M.Surname
FROM TRIP, MANAGER
WHERE TRIP.Date>=1/01/2019 AND TRIP.Date<=31/12/2019 AND TRIP.Manager=MANAGER.Code AND MANAGER.Email LIKE ‘%.com’

--8 Build a query to get catalogue codes and their aggregated number of people in case that number is below 1000
SELECT
FROM

--9 How many managers speak each language?
SELECT
FROM
