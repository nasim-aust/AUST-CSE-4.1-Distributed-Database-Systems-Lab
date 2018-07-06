
clear screen;

DROP TABLE student CASCADE CONSTRAINTS;


CREATE TABLE student (
	snum number, 
	sname varchar2(30), 
	major char(3), 
	slevel char(1), 
	age number,
        PRIMARY KEY(snum)); 


insert into student (snum, sname, major, slevel, age) values (1, 'Sajid Abdullah', 'CSE', '1', 19); 
insert into student (snum, sname, major, slevel, age) values (2, 'Abdullah Karim', 'CSE', '1', 19); 
insert into student (snum, sname, major, slevel, age) values (3, 'Sajid Rahmatullah', 'CSE', '2', 20); 
insert into student (snum, sname, major, slevel, age) values (4, 'Abid Barkatullah', 'CSE', '2', 22); 
insert into student (snum, sname, major, slevel, age) values (5, 'Barkatullah Shahid', 'CSE', '3', 19); 
insert into student (snum, sname, major, slevel, age) values (6, 'Abid Abdullah', 'CSE', '3', 20); 
insert into student (snum, sname, major, slevel, age) values (7, 'Abdullah Hafiz', 'CSE', '3', 21); 
insert into student (snum, sname, major, slevel, age) values (8, 'Rahmatullah Hafiz', 'CSE', '3', 21); 
insert into student (snum, sname, major, slevel, age) values (11, 'Sajid Abdullah', 'ME', '1', 19); 
insert into student (snum, sname, major, slevel, age) values (12, 'Abdullah Karim', 'ME', '1', 20); 


commit;
 
