create table accounts(
id VARCHAR2(10),
firstname VARCHAR2(255) not null,
lastname VARCHAR2(255) not null,
email VARCHAR2(255) not null,
bankaccount CHAR(24) not null,
countryid CHAR(3) not null,
gender VARCHAR2(128) CHECK (gender IN ('Male', 'Female', 'Non binary', 'Other', 'I prefer not to say')),
birthdate DATE,
primary key(id)
)
