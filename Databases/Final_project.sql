CREATE TABLE countries(
  code CHAR(3) PRIMARY KEY,
  name VARCHAR2(256) NOT NULL
)

CREATE TABLE directors(
	code INTEGER PRIMARY KEY,
  name VARCHAR2(256) NOT NULL
)

CREATE TABLE actors(
	id INTEGER PRIMARY KEY,
  name VARCHAR2(256) NOT NULL
)

CREATE TABLE accounts(
	id VARCHAR2(10) PRIMARY KEY,
	firstname VARCHAR2(256) NOT NULL,
	lastname VARCHAR2(256) NOT NULL,
	email VARCHAR2(256) NOT NULL,
	bankaccount CHAR(24) NOT NULL,
	countryid CHAR(3) NOT NULL,
	gender VARCHAR2(128) CHECK (gender IN ('Male', 'Female', 'Non binary', 'Other', 'I prefer not to say')),
	birthdate DATE,

  FOREIGN KEY (countryid) REFERENCES countries(code)
)

CREATE TABLE profiles(
	id INTEGER PRIMARY KEY,
  name VARCHAR2(256) UNIQUE,
  accountid VARCHAR2(10) UNIQUE,

  FOREIGN KEY (accountid) REFERENCES accounts(id)
)
