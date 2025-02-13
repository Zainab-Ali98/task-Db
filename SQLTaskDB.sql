use TaskDB

insert into Student
values 
( 'Zainab' , 20, 'zainab@gmail.com'),
( 'Noor' , 21, 'noor@gmail.com'),
('ahmad' , 23, 'ahmad@gmail.com')

insert into Courses
values 
( 'English',1),
( 'Arabic', 2 ),
( ' Math ', 3),
( 'Physics ', 4),
('History ',5)

Select s.StudentId ,s.Name , c.CourceName
from dbo.student s 
join dbo.Courses c On s.StudentId= c.stdID

update Student 
set Email = 'zainab@gmail.com' 
where StudentId=1

Delete from Courses 
where CourceId=2 and stdID =1


Alter table Student
Add gender nvarchar(20)

select * from student

update Student
set gender = 'female'
where studentid in (1,2,4)


update Student
set gender = 'male'
where studentid in (3,6)


select s.StudentId, s.Name, COUNT(c.CourceId) as CourceCount
from Student s
join Courses c on s.StudentId= c.stdID
group by s.StudentId, s.Name


select * from Student
where Name like 'M%'

select UPPER(Name) as uppercaseName 
from Student

select lower(CourceName) lowercaseName
from Courses

select s.Name as StudentName, c.CourceName as CourceDetails
from Student s
join Courses c on s.StudentId= c.stdID


insert into Student 
values 
( ' maryam' , 25, 'maryam@gmail.com', ' female ') 
insert into Courses 
values 
('Math' ,1),
('Physics' , 2) 

select * from Student 
order by  Age asc

delete from Student 
where Name =' Ahmad damra' 

-- delete ahmad and its couses
--delete from Courses
--where studentId = (select stdID from dbo.Couses where Name= 'Ahmad Damra' )


select CourceName from Courses
order by CourceName asc

create proc  sp_DisplayStudents
as
   select s.Name, c.CourceName
   from Student s inner join Courses c on s.StudentId=c.stdID
   exec sp_DisplayStudents

   create proc sp_DisplayIds
   as select s.Name, c.CourceName
   from Student s inner join Coursesc on s.StudentId=c.stdID
   exec sp_DisplayStudents