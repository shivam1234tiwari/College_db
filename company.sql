create database company;
use company;
create table employee(
id int primary key,
name varchar(50),
salary int
);
insert into employee values(1,"adam",25000),(2,"bob",25000),(3,"caey",35000);
select * from employee;

create table emp(
id int,
salary int default 25000
);
insert into emp (id) values(1);
select * from emp;
