create database Lab
use Lab
create table student
(St_name varchar(100),Course_code varchar(100),Semester varchar(20))

create table course
(St_name varchar(100),Section varchar(10),Marks int)


insert into student values
('sojib','cse 301','1st'),
('arman','cse 302','2nd'),
('rifat','cse 303','2nd'),
('tonmoy','cse 304','5th')

insert into course
values
('sojib','b',80),
('arman','a',70),
('rifat','d',55),
('tonmoy','c',87)

--1
select * from student
where St_name like 'T%'

--2
select *from student
where Course_code='cse 302'

--3
alter table student
alter column St_name varchar(40) not null

alter table student
add primary key(St_name)

alter table course
alter column St_name varchar(40) not null

alter table course
add primary key(St_name)

--4

select * from course
where not Section='c'

--5

select *from course 
order by St_name --asc or desc

--6
select st_name,section,
iif(section='b',marks+5,marks-10) as marks
from course

--6
select st_name,section,
case when section='b' then marks+5
else marks-10
end [marks]
from course

--7
select count(*) from student

--8
select * from course

select avg(marks) as marks from course

--9
alter table student 
add St_id int
--10
select * from course
where marks> all (select avg(marks) as marks from course)

--11
select st_name from student
union
select st_name from course

select st_name from student
union all
select st_name from course

select st_name from student
intersect
select st_name from course

select st_name from student
except
select st_name from course
--12
select * from student inner join course
on
student.St_name=course.St_name

select * from student left outer join course
on
student.St_name=course.St_name

select * from student right outer join course
on
student.St_name=course.St_name

select * from student full outer join course
on
student.St_name=course.St_name
--13
select student.St_name,course_code,semester,section,marks
from student,course
where student.St_name=course.St_name and Marks>80

select * from course







