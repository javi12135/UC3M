--1 Find the code, name, surname of the authors that have articles in journal with code 'J100'
SELECT Code, Name, Surname
FROM ARTICLE, AUTHOR
WHERE ARTICLE.Journal='J100' AND ARTICLE.Author=AUTHOR.Code;

--2 Build a query to get all authors ordered by Name in an alphabetic way
SELECT *
FROM AUTHOR
ORDER BY Name;

--3 Build a query to get how many articles are written by each author
SELECT Author, COUNT(*)
FROM ARTICLE
GROUP BY Author;

--4 Build a query to get all the article titles and abstracts from authors with name 'John' and surname 'Smith'
SELECT Title, Abstract
FROM ARTICLE, AUTHOR
WHERE ARTICLE.Author=AUTHOR.Code AND AUTHOR.Name='John' AND AUTHOR.Surname='Smith';

--5 Find the title, abstract and code of the authors of the articles of journal with name containing 'bioinformatics'
SELECT Title, Abstract, Author
FROM ARTICLE, JOURNAL
WHERE JOURNAL.Code=ARTICLE.Journal JOURNAL.Name LIKE '%Bioinformatics%';

--6 Build a query to get author names and the average number of words of his/her articles
SELECT Name, AVG(ARTICLE.Num_words)
FROM AUTHOR, ARTICLE
WHERE ARTICLE.Author=AUTHOR.Code
GROUP BY AUTHOR.Name;

--7 Build a query to retrieve the title, author code and journal code of articles of 'war' genre written in 2020
SELECT Title, Author, Journal
FROM ARTICLE
WHERE Genre='War' AND Date>='01/01/2020' AND Date<='31/12/2020'

--8 Build a query to get journal codes and it's aggregated number of words where that number exceeds 50000
SELECT Journal, SUM(Num_words)
FROM ARTICLE
GROUP BY Journal
HAVING SUM(Num_words)>50000

--9 What is the code, title and abstract of the articles of Journal with Name 'Clinical Informatics' written by author of email 'john.smith@gmail.com'?
SELECT Code, Title, Abstract
FROM ARTICLE, JOURNAL, AUTHOR
WHERE ARTICLE.Journal=JOURNAL.Code AND JOURNAL.Name='Clinical Informatics' AND ARTICLE.Author=AUTHOR.Code AND AUTHOR.Email='john.smith@gmail.com'
