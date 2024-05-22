create database Employe
use Employe

create table meve_employee
(employe_name varchar(20),
street varchar(10),
city varchar(10))

ALTER TABLE meve_employee
ALTER COLUMN city varchar(20);

create table mave_works
(employe_name varchar(20),
company_name varchar (20),
salary int)

select * from meve_employee,mave_works
select * from meve_employee
select * from mave_works

insert meve_employee
	values
('Arif','51 upashahar','Rajshahi'),
('Sumon','52 east','Moynamati'),
('Sagor','Neemgachhi','Sirajgong'),
('Abdul','Binodpur','Rajshahi'),
('Himesh','Nazrul avenue','Dhaka'),
('Amirul','Chawk bazar','Sylhet'),
('Sajib','99 north','Chittagong')

insert into mave_works
	values
('Sumon','Agrani',12000),
('Abdul','Sonali',13000),
('Himesh','Agrani',6000),
('Amirul','Sonali',20000),
('Sagor','Sonali',8000),
('Arif','Janata',13000),
('Sajib','Janata',9000)


--b .No
SELECT employe_name,city
 FROM meve_employee
 WHERE city = 'rajshahi';--c.noSELECT employe_name,street,city
 FROM meve_employee
 WHERE city = 'rajshahi';--d.no	--(i)		SELECT employe_name,company_name
		 FROM mave_works
		 WHERE company_name = 'Sonali';	--(ii)		SELECT employe_name,company_name
		 FROM mave_works
		 WHERE company_name = 'Agrani';	--(iii)		SELECT employe_name,company_name
		 FROM mave_works
		 WHERE company_name = 'janata';		-- .e)--(i)		SELECT employe_name,company_name,salary
		 FROM mave_works
		 WHERE company_name = 'Sonali';	--(ii)		SELECT employe_name,company_name,salary
		 FROM mave_works
		 WHERE company_name = 'Agrani';	--(iii)		SELECT employe_name,company_name,salary
		 FROM mave_works
		 WHERE company_name = 'janata';
--.f)

--i)
SELECT employe_name,company_name,salary
		 FROM mave_works
		 WHERE salary =12000;

--ii)
SELECT employe_name,company_name,salary
		 FROM mave_works
		 WHERE salary >=12000;
--iiI)
SELECT employe_name,company_name,salary
		 FROM mave_works
		 WHERE salary <12000;
--.g)

--i)
SELECT employe_name,company_name
		 FROM mave_works
		 WHERE salary =12000;

--ii)
SELECT employe_name,company_name
		 FROM mave_works
		 WHERE salary >=12000;
--iiI)
SELECT employe_name,company_name
		 FROM mave_works
		 WHERE salary <12000;

--h)
SELECT mave_works.employe_name [Name],street,city 
FROM meve_employee inner join mave_works 
		on meve_employee.employe_name=mave_works.employe_name
		 WHERE mave_works.company_name='Agrani';
--I)

SELECT mave_works.employe_name [Name],street,city ,salary
FROM 
meve_employee 
inner join 
mave_works 
on meve_employee.employe_name=mave_works.employe_name
		 WHERE mave_works.salary>=10000;
--j)
SELECT mave_works.employe_name [Name],street,city ,salary
FROM 
meve_employee 
inner join 
mave_works 
on meve_employee.employe_name=mave_works.employe_name
		 WHERE city='rajshahi';
--k)
SELECT mave_works.employe_name [Name],street,city ,salary,company_name
FROM 
meve_employee 
inner join 
mave_works 
on meve_employee.employe_name=mave_works.employe_name
		 WHERE salary>=10000;

--l)

SELECT mave_works.employe_name [Name],street,city ,salary,company_name
FROM 
meve_employee 
inner join 
mave_works 
on meve_employee.employe_name=mave_works.employe_name
		 WHERE salary>=10000 and company_name='sonali';

--m)
SELECT mave_works.employe_name [Name],street,city ,salary,company_name
FROM 
meve_employee 
inner join 
mave_works 
on meve_employee.employe_name=mave_works.employe_name
		 WHERE salary>=10000 and company_name!='sonali';

		 --n)
		 update meve_employee set city = 'natore' where employe_name = 'Arif';

		 --o)
		 

		 UPDATE mave_works set salary=salary*1.10 where company_name='Agrani'

		 --p)
		 delete from meve_Employee where employe_name = 'Sagor'
		 --Q)
		
		 Alter table mave_works Add manager varchar(20);

		 select *from mave_works

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		create table encripted(
		M_name varchar(100),
		pass varchar(100)
		 )
		 alter table encripted add E_pass varchar(100)
		 alter table encripted drop column E_pass 

		select *from encripted

		insert into encripted values
		('asif',HASHBYTES('sha1','1'))

		select * from encripted
		where pass=HASHBYTES('sha1','1')

		create table Quatation(
		Person varchar(100),
		Quatation varchar(100),
		Year varchar(20)
		)

		select *from Quatation

		insert into Quatation values
		('Paulo Coelho',HASHBYTES('sha1','"When Someone leaves,its because someone 
		else is about to arrive"'),'1993')

		insert into Quatation values
		('Mitche Albom',HASHBYTES('sha1','"All endings are also beginnings.We just dont know 
		it at the time"'),'1998'),
		('I.K.Rowling',HASHBYTES('sha1','"It is our choices that show what
		we truely are, far more than our abilities"'),'1987'),
		('Paulo Coelho',HASHBYTES('sha1','"Be brave and take risk .Nothing can substritute experience"'),'1980'),
		('Veronica',HASHBYTES('sha1','"Fear does not shut you down;it wakes you up"'),'1980');
		

		UPDATE Quatation set Year='1983' where Person='Veronica'

create table Employee(
JobID int,
Name varchar(50),
DeptID int
)
select *from Employee

insert into Employee values
(2340,'Jackson',333),
(6002,'Sara',444),
(7845,'Maria',333),
(8547,'Ronald',999),
(1245,'Kafi',444)

create table Info_Emp(
ID int,
Name varchar(40),
Position varchar(40),
Join_Date varchar(40)

)


insert into Info_Emp values
(3256,'Ronald','CEO','2017-02-12'),
(7845,'Maria','PO','2018-08-11'),
(1245,'Kafi','AE','2018-05-15'),
(3256,'Jenelia','ME','2019-01-31'),
(8547,'Mehta','PO','2018-12-25')



select 