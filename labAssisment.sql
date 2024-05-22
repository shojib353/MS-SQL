create database stp
use stp
create table emp
(emp_name varchar(30),
emp_salary int,
joining_date date)

insert into emp values
('smith',25000,'03-20-2024')
insert into emp values
('jhon',35000,'1-20-2024'),
('sara',18000,'11-11-2023'),
('devid',45000,'12-10-2022')


select *from tblemp


create table std
(Sname varchar(30),
SCgpa float,
Department varchar(30))

insert into std values
('jara',3.5,'CSE'),
('sara',3.99,'CSE'),
('devid',3.6,'CSE'),
('smith',3.87,'EEEE')

exec sp_rename 'emp', 'tblemp'

--1 no question ans
create proc EmpBySalary
as
begin
select emp_salary as salary from tblemp
end

exec EmpBySalary

--2 no question ans

create proc CgpaOfStudents
@Department varchar(30),
@secondHigh float output
as
begin
SELECT @secondHigh=MAX(SCgpa) 

FROM std

WHERE Department=@Department and SCgpa NOT IN (SELECT MAX(SCgpa) FROM std) 

end

Declare @secondHighT  float
Exec  CgpaOfStudents @Department='CSE' ,
@secondHigh= @secondHighT output
Print @secondHighT 

--3 no question ans


create proc EmpJoiningDate 
@emp_salary int,
@countperson int output
as
begin

select @countperson=count(*) from tblemp where datediff(month, joining_date, getdate()) <= 6 
and emp_salary>@emp_salary
end

Declare @countpersonT  int
Exec  EmpJoiningDate @emp_salary=20000 ,@countperson= @countpersonT output
Print @countpersonT 


--4
sp_depends EmpJoiningDate 
sp_depends tblemp
sp_depends std
sp_depends CgpaOfStudents






create proc EmpJoiningDates 
@emp_salary int,
@emp_name varchar(30)
as
begin

select @emp_name=count(*) from tblemp where datediff(month, joining_date, getdate()) <= 6 
and emp_salary>@emp_salary
end

Declare @countpersonT  int
Exec  EmpJoiningDate @emp_salary=20000 ,@countperson= @countpersonT output
Print @countpersonT 

select count(*),joining_date,emp_name from tblemp where datediff(month, joining_date, getdate()) <= 6 
and emp_salary>20000
group by emp_name,joining_date


alter view xc
as
select count(*) as noumber from tblemp where datediff(month, joining_date, getdate()) <= 6 
and emp_salary>20000
group by emp_name,joining_date

select * from xc

drop view xc
