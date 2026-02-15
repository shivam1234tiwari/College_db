CREATE DATABASE college;
use college;
create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);
insert into student values(1,"aman",34,"A","PUNE"),
(2,"bhumika",93,"A","MUMBAI"),
(3,"ajay",78,"C","lucknow"),
(4,"divya",84,"B","DELHI");
select * from student;
select distinct city from student;
select *
 from student 
 where city not in ("Delhi","Mumbai");
 
 SELECT *
 FROM student
 where marks >=80
limit 3;

SELECT * FROM student 
ORDER BY 
marks DESC
LIMIT 3;
-- Aggregate function count () ,MAX(), MIN(),AVG()-- 
SELECT max(marks)
 from student;
SELECT avg(marks)
from student; 
select count(rollno) from student;
-- Group by clause--
SELECT city,count(name) 
from student 
group by city; 