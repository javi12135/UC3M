set define off;
insert into accounts values(000001, 'Antonio', 'Requena', 'requena1@gmail.com',1234123456785678, (select code from countries where name = 'USA'), 'Male', TO_DATE ('1999/10/27','yyyy/mm/dd') );
set define on;
