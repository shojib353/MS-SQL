use stp

create proc EmpJoiningDate
@emp_salary int,
@countperson int output
as
begin
select @countperson=count(*) from tblemp where datediff(month, joining_date, getdate())
<= 6
and emp_salary>@emp_salary
end


Declare @countpersonT int
Exec EmpJoiningDate @emp_salary=20000 ,@countperson= @countpersonT output
Print @countpersonT 



--3.Create a stored procedure named EmpJoiningDate using parameter and output keyword that will
--find those employees who joined before 6 months ago and salary greater than 20,000.
create proc Empname2
@emp_salary int,
@emp_name varchar(30) 
as
begin
select @emp_name=emp_name from tblemp where datediff(month, joining_date, getdate())
<= 6
and emp_salary>@emp_salary
end


Declare @emp_nameT varchar(30)
Exec Empname2 @emp_salary=34000 ,@emp_name= @emp_nameT 
Print @emp_nameT

select * from tblemp

select emp_name,joining_date,datediff(month, joining_date, getdate()) from tblemp where datediff(month, joining_date, getdate())
<=6 and emp_salary>20000

sp_depends EmpJoiningDate