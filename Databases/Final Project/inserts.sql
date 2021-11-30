set define off;
--Accounts
insert into accounts values('U000001', 'Javier', 'Hernandez', 'fjhdezares@gmail.com',1234123456785678, 'USA', 'Male', TO_DATE ('2002/05/14','yyyy/MM/dd'));
insert into accounts values('U000002', 'Paula', 'Esparza', 'pauesparza@gmail.com',1234123456785679, 'USA', 'Female', TO_DATE ('2000/10/27','yyyy/MM/dd'));
insert into accounts values('U000003', 'Mayte', 'Anton', 'mayanton@gmail.com',1234123456785670, 'USA', 'Female', TO_DATE ('2000/10/27','yyyy/MM/dd'));
insert into accounts values('U000004', 'Andrea', 'Gutierrez', 'andguiterrez@gmail.com',1234123456785671, 'USA', 'Female', TO_DATE ('2001/10/27','yyyy/MM/dd'));
insert into accounts values('U000005', 'Martina', 'Casal', 'marcasal@gmail.com',1234123456785672, 'USA', 'Female', TO_DATE ('2002/10/27','yyyy/MM/dd'));
insert into accounts values('U000006', 'Shan', 'Jiang', 'shajiang@gmail.com',1234123456785673, 'USA', 'Female', TO_DATE ('2002/10/27','yyyy/MM/dd'));
insert into accounts values('U000007', 'Sergio', 'Del Rio', 'serdelrio@gmail.com',1234123456785674, 'USA', 'Male', TO_DATE ('2002/10/27','yyyy/MM/dd'));
insert into accounts values('U000008', 'Antonio', 'Requena', 'antrequena@gmail.com',1234123456785675, 'USA', 'Male', TO_DATE ('1999/10/27','yyyy/MM/dd'));
insert into accounts values('U000009', 'Alvaro', 'Lacasa', 'alvlacasa@gmail.com',1234123456785676, 'USA', 'Male', TO_DATE ('2002/10/27','yyyy/MM/dd'));
insert into accounts values('U000010', 'Jose Antonio', 'Guerrero', 'josantguerrero@gmail.com',1234123456785677, 'USA', 'Male', TO_DATE ('2001/10/27','yyyy/MM/dd'));
insert into accounts values('U000011', 'Claudia', 'Aso', 'claaso@gmail.com',1234123456785688, 'USA', 'Female', TO_DATE ('2001/10/27','yyyy/MM/dd'));
insert into accounts values('U000012', 'Nuria', 'Manzano', 'nurmanzano@gmail.com',1234123456785689, 'USA', 'Female', TO_DATE ('2000/10/27','yyyy/MM/dd'));
insert into accounts values('U000013', 'Eva', 'Alcala', 'evaalcala@gmail.com',1234123456785680, 'USA', 'Female', TO_DATE ('1998/10/27','yyyy/MM/dd'));
insert into accounts values('U000014', 'Veronica', 'Espinosa', 'verespinosa@gmail.com',1234123456785681, 'USA', 'Female', TO_DATE ('1998/10/27','yyyy/MM/dd'));
insert into accounts values('U000015', 'Nuria', 'Riquelme', 'nurriquelme@gmail.com',1234123456785682, 'USA', 'Female', TO_DATE ('1998/10/27','yyyy/MM/dd'));
insert into accounts values('U000016', 'Simon', 'Benzaquen', 'simbenzaquen@gmail.com',1234123456785683, 'USA', 'Male', TO_DATE ('2003/10/27','yyyy/MM/dd'));
insert into accounts values('U000017', 'Pablo', 'Madruga', 'pabmadruga@gmail.com',1234123456785684, 'USA', 'Male', TO_DATE ('2003/10/27','yyyy/MM/dd'));
insert into accounts values('U000018', 'John', 'Doe', 'johdoe@gmail.com',1234123456785685, 'USA', 'Male', TO_DATE ('1967/10/27','yyyy/MM/dd'));
insert into accounts values('U000019', 'Adam', 'Tots', 'adatots@gmail.com',1234123456785686, 'USA', 'Male', TO_DATE ('1985/11/3','yyyy/MM/dd'));
insert into accounts values('U000020', 'Ada', 'Lovelace', 'adalovelace@gmail.com',1234123456785687, 'USA', 'Female', TO_DATE ('1815/12/10','yyyy/MM/dd'));

--Profiles
insert into profiles values('1001', 'Javier', 'U000001');
insert into profiles values('1002', 'Ines', 'U000001');
insert into profiles values('1003', 'Mama', 'U000001');
insert into profiles values('2001', 'Paula', 'U000002');
insert into profiles values('3001', 'Mayte', 'U000003');

--Movie Lists
insert into MovieLists values('1001001', '1001', 'Animated movies');
insert into MovieLists values('1001002', '1001', 'Favourite movies');
insert into MovieLists values('1002001', '1002', 'Love Stories');
insert into MovieLists values('1003001', '1003', 'Movies to sleep');
insert into MovieLists values('2001001', '2001', 'Hollywood hits');
insert into MovieLists values('3001001', '3001', 'Horror movies');

--List Contents
insert into ListContents values('1001001', '8');
insert into ListContents values('1001001', '36');
insert into ListContents values('1001001', '91');
insert into ListContents values('1001002', '34');
insert into ListContents values('1001002', '91');
insert into ListContents values('1001002', '94');
insert into ListContents values('1001002', '97');
insert into ListContents values('1002001', '1637');
insert into ListContents values('1002001', '2179');
insert into ListContents values('1002001', '409');
insert into ListContents values('1003001', '418');
insert into ListContents values('1003001', '224');
insert into ListContents values('1003001', '118');
insert into ListContents values('2001001', '98');
insert into ListContents values('2001001', '3971');
insert into ListContents values('2001001', '4527');
insert into ListContents values('3001001', '4414');
insert into ListContents values('3001001', '3697');
insert into ListContents values('3001001', '3116');

--Viewed Movies
insert into ViewedMovies values('1001', '8', '7');
insert into ViewedMovies values('1001', '36', '9');
insert into ViewedMovies values('1001', '91', '5');
insert into ViewedMovies values('1001', '34', '7');
insert into ViewedMovies values('1001', '94', '6');
insert into ViewedMovies values('1001', '97', '1');
insert into ViewedMovies values('1002', '1637', '8');
insert into ViewedMovies values('1002', '2179', '4');
insert into ViewedMovies values('1002', '409', '3');
insert into ViewedMovies values('1003', '418', '2');
insert into ViewedMovies values('1003', '224', '8');
insert into ViewedMovies values('1003', '118', '9');
insert into ViewedMovies values('2001', '98', '9');
insert into ViewedMovies values('2001', '3971', '6');
insert into ViewedMovies values('2001', '4527', '8');
insert into ViewedMovies values('3001', '4414', '5');
insert into ViewedMovies values('3001', '3697', '6');
insert into ViewedMovies values('3001', '3116', '9');

set define on;
