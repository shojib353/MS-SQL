create database homeworkmam
create table meve_Employee(
employee_name varchar(50) primary key not null,
Street varchar(50),
City varchar(50)
)
insert into meve_Employee values
('Arif','51 upashahar','Rajshahi'),
('Sumon','52 east','Moynamoti'),
('Sagor','Neemgachi','Sirajgonj'),
('Abdul','Binodpur','Rajshahi'),
('Himesh','Nazrul avenue','Dhaka'),
('Amirul','Chawk bazar','Sylhet'),
('Sajib','99 worth','Chittagong')

select *from meve_Employee

create table meve_works(
employee_name varchar(50) primary key not null,
company_name varchar(50),
salary int,
FOREIGN KEY (employee_name) REFERENCES meve_Employee(employee_name),
)

insert into meve_works values
('Sumon','Agrani',12000),
('Abdul','Sonali',13000),
('Himesh','Agrani',6000),
('Amirul','Sonali',20000),
('Sagor','Sonali',8000),
('Arif','Janata',13000),
('Sajib','Janata',9000)

select *from meve_works

b) select employee_name from meve_Employee where City = 'Rajshahi'

c) select employee_name,Street from meve_Employee where City = 'Rajshahi'

d)select  Employee_Name from meve_Works where company_name IN ('Sonali', 'Agrani', 'Janata');

e)select  Employee_Name, salary from meve_Works where company_name IN ('Sonali', 'Agrani', 'Janata');

f) --(i) Salary is 12000

select employee_name from meve_Works where salary = 12000;

-- (ii) Salary is >= 12000

select employee_name from meve_Works where salary >= 12000;

-- (iii) Salary is < 12000

select employee_name from meve_Works where salary < 12000;

g) -- (i) Salary is 12000

select employee_name, company_name from meve_Works where salary = 12000;

-- (ii) Salary is >= 12000

select employee_name, company_name from meve_Works where salary >= 12000;

-- (iii) Salary is < 12000

select employee_name, company_name from meve_Works where salary < 12000;

n)update meve_Employee set city = 'natore' where employee_name = 'Arif';

o)UPDATE meve_Works SET Salary = Salary * 1.10 where Company_Name = 'Agrani';

p) delete from meve_Employee where employee_name = 'Sagor';

q) alter table meve_Works add column manager VARCHAR(100); 