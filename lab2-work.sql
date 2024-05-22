create database DBhomework
use DBhomework


create table customer(
	Customer_Name varchar(20),
	Customer_city varchar(20),
	Customer_country varchar(20),
	Times varchar(20)
	)

insert customer 
	values
		('Galvin','Athens','Greece','GMT-4'),
		('Smith','Easter Island','Chile','GMT-6'),
		('Jony','Athens','USA','GMT-7'),
		('Ronald','Baltimore','USA','GMT-7')


create table loan(
	Customer_Name varchar(20),
	loan_number varchar(20),
	Amount int
	)


insert into loan
	values
		('Jony','L-174',25000),
		('Michel','P-857',32000),
		('Ronald','K-658',12580),
		('Rakesh','J-582',null)


create table student(
	student_Name varchar(20),
	CGPA varchar(20),
	Session varchar(20)
	)

insert into student 
	values
		('Sara','3.86','Summer15'),
		('Rakesh','3.24','Summer16'),
		('Wadud','3.69','String14'),
		('Simran','3.55','Fail13')

select *from student
---problem 2--------
alter table customer drop column Times
select *from customer
alter table customer add Times varchar(20)
update customer set Times='GMT-4' where Customer_Name='Galvin'
update customer set Times='GMT-6' where Customer_Name='Smith'
update customer set Times='GMT-7' where Customer_Name='Jony'
update customer set Times='GMT-7' where Customer_Name='Ronald'

---Problrm 3---
select *from customer 
	where Customer_country='USA'
	order by Customer_Name
---Problem 4---
select customer.Customer_Name,loan.Customer_Name, avg(Amount)
	from customer,loan
	where customer.Customer_Name=loan.Customer_Name and Customer_country='USA'
	and Amount>=all (select avg(Amount)from loan)   //select avg(Amount)from loan 
	/*group by customer.Customer_Name
	having Amount>=avg(Amount)*/


--Problem 5---
select Count(Customer_Name)
	 from customer

---Problrm 6-----
 select *from customer 
	where Times is null
 select *from customer 
	where Customer_Name is null or
	      Customer_city is null or
		  Customer_country is null


---Problem 7---
 select max(Amount) as MMAX, min(Amount) as MMIN, avg(Amount) as Avarage from loan

---Problem 8---
 select  min(Customer_Name) from customer


 select  min(customer.Customer_Name) as FromCustomer, min(loan.Customer_Name) as FromLoan 
		from customer, loan
	
	 
---Problem 9--
select student_Name,CGPA from student
	where CGPA between '3.5' and '3.99'
--Problem 10----
--delete from student where CGPA<'3.5'
