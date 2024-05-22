Create database finalLab
use finalLab

create table Student
(Std_id int,
Name varchar(40),
Age int,
Dept varchar(40))

Create table Department
(Dept_namee varchar(40),
DpetHead varchar(40),
Address varchar(30))

create table Employee
(EmpID varchar(40),
Emp_Name varchar(40),
Salary int,
Division varchar(30))

create table Projects
(PID varchar(30),
P_name varchar(30),
EmpID varchar(40),
P_cost varchar(40))
 
Insert into Student
Values(11000,'Rana',21,'CSE'),
(11001,'Sajib',20,'CSE'),
(14000,'Omar',21,'EEE'),
(13000,'Sanjoy',21,'ENG'),
(12001,'Reza',19,'BBA'),
(11008,'Pyash',22,'CSE')
 
Insert into Department
Values('CSE','KIM','Talaimari'),
('EEE','KKI','Talaimari'),
('ENG','MSR','Kazla'),
('BBA','KAH','Vodra')

Insert into Employee
Values('E1001','Suman',92000,'Software'),
('E1004','polash',9800,'Network'),
('E1002','Rasel',86000,'Network'),
('E1003','Hossain',82000,'Software')

update Employee
set Division='Network ' where Division='Nwtwork'

Insert into Projects
values
('P3004','Network setup','E1002','25050000'),
('P3002','Repair Hub','E1002','12000000'),
('P3003','Server Installation','E1001','1500500'),
('P3001','Office Automation','E1001','2050000')

Select * from Student
Select * from Department
Select * from Employee
Select * from Projects
--1
--a)Update sajib's history(like cse to civil) 

update  Student
set dept='CIVIL' where Student.name='sajib'

select * from student

--b)
create view demo_st
as
select * from Student

select * from demo_st

--2
create clustered index cl_project
on
projects(PID desc)

select * from projects


--3
create nonclustered index ncli_emp
on
employee(division asc)

select division from employee

--4
create view emp
as
select Employee.Emp_Name,Salary,count(Projects.PID) as project_no from Employee
inner join Projects
on
Employee.EmpID=Projects.EmpID
where 1<(select count(*) from Projects where Projects.EmpID=Employee.EmpID)
and Salary>90000
group by Employee.Emp_Name,Salary

select* from emp--5create proc Empsalary
with encryption
as
begin
SELECT Employee.Emp_Name,Employee.Salary from Employee

endexec Empsalaryorcreate proc Empsalary2
@name varchar(40)
with encryption
as
begin
SELECT Employee.Emp_Name,Employee.Salary from Employee
where Employee.Emp_Name=@name

endexec Empsalary2 @name='polash'