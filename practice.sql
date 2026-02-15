CREATE database Practice; 
use Practice;
create table student(
rollno int primary key,
name varchar(20)
);

select * from student;
insert into student (rollno,name) values(1,"Ajay");
insert into student (rollno,name) values(2,"vijay");