CREATE TABLE Countries(
  code CHAR(3) PRIMARY KEY,
  name VARCHAR2(256) NOT NULL
)

CREATE TABLE Directors(
	code INTEGER PRIMARY KEY,
  name VARCHAR2(256) NOT NULL
)

CREATE TABLE Actors(
	id INTEGER PRIMARY KEY,
  name VARCHAR2(256) NOT NULL
)

CREATE TABLE Movies(
  code INTEGER PRIMARY KEY,
  title VARCHAR(512) NOT NULL,
  language VARCHAR(128) NOT NULL,
  countryId CHAR(3) NOT NULL,
  director INTEGER NOT NULL,
  year NUMBER(4) NOT NULL,
  duration INTEGER NOT NULL,
  pg VARCHAR(128) CHECK (pg IN ('G', 'PG', 'PG-13', 'R', 'NC-17', 'Other')) NOT NULL,
  budget INTEGER NOT NULL,
  imdbScore NUMBER(3,1) /*Between 0 and 10*/ NOT NULL, #F00
  genre VARCHAR2(128) NOT NULL,
  ingestionDate DATE NOT NULL,
  previous INTEGER,

  FOREIGN KEY (countryId) REFERENCES Countries(code),
  FOREIGN KEY (director) REFERENCES Directors(code),
  FOREIGN KEY (previous) REFERENCES Movies(code) #F00
)

CREATE TABLE WorkedOn(
  movieCode INTEGER,
  actorId INTEGER,
  mainCharacter NOT NULL,
  likes INTEGER,

  PRIMARY KEY (movieCode, actorId),
  FOREIGN KEY (movieCode) REFERENCES Movies(code),
  FOREIGN KEY (actorId) REFERENCES Actors(id)
)

CREATE TABLE Accounts(
	id VARCHAR2(10) PRIMARY KEY,
	firstName VARCHAR2(256) NOT NULL,
	lastName VARCHAR2(256) NOT NULL,
	email VARCHAR2(256) NOT NULL,
	bankAccount CHAR(24) NOT NULL,
	countryId CHAR(3) NOT NULL,
	gender VARCHAR2(128) CHECK (gender IN ('Male', 'Female', 'Non binary', 'Other', 'I prefer not to say')),
	birthDate DATE,

  FOREIGN KEY (countryId) REFERENCES Countries(code)
)

CREATE TABLE Profiles(
	id INTEGER PRIMARY KEY,
  name VARCHAR2(256) UNIQUE,
  accountId VARCHAR2(10) UNIQUE,

  FOREIGN KEY (accountId) REFERENCES Accounts(id)
)

CREATE TABLE MovieLists(
  id INTEGER PRIMARY KEY,
  profileId INTEGER UNIQUE,
  name VARCHAR2(512) UNIQUE,

  FOREIGN KEY (profileId) REFERENCES Profiles(id)
)

CREATE TABLE ListContents(
  listId INTEGER,
  movieCode INTEGER,

  PRIMARY KEY (listId, movieCode),
  FOREIGN KEY (listId) REFERENCES MovieLists(id),
  FOREIGN KEY (movieCode) REFERENCES Movies(code)
)

CREATE TABLE ViewedMovies(
  profileId INTEGER,
  movieCode INTEGER,
  score NUMBER(1) /*Between 0 and 5*/ NOT NULL, #F00

  PRIMARY KEY (profileId, movieCode),
  FOREIGN KEY (profileId) REFERENCES Profiles(id),
  FOREIGN KEY (movieCode) REFERENCES Movies(code)
)
