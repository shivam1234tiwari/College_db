create database CollegeDB1;
use CollegeDB1;
UPDATE Student
SET City = 'Bangalore'
WHERE Stud_ID = 2;

UPDATE Course
SET Credits = 5
WHERE Course_ID = 102;
select * from course;

DELETE FROM Student
WHERE Stud_ID = 4;
select * from student;

TRUNCATE TABLE Enrollment;
select * from enrollment;



