create database Employe
use Employe
create table itdept
(
id int,
name varchar(20),
salary int
)

insert into itdept values
(1,'shojib',100),
(2,'shojib',100),
(3,'asif',100),
(4,'asif',100),
(5,'aksah',100)
select *from itdept
delete from itdept 


select name, sum(salary) as salary ,count(name)
from itdept 
group by name
having sum(salary) between 90 and 1990

select distinct name from itdept

select all name from itdept

select * from itdept where name like 'a_%_%_%_'
select * from itdept where name like '%si%'


create table dept
(id int,brance varchar(20))

insert dept values
(6,'raj'),
(2,'raj'),
(3,'dhk'),
(4,'cul'),
(5,'raj')


insert into itdept values
(6,'namy',100)
select id from itdept
union
select id from dept

except
select id from itdept
select count(id) from dept

select name,count(*) as id ,sum(salary) from itdept
group by name
having name='shojib'

select brance, count(id) from dept
group by brance
select * from dept

select name,sum(salary),count(name) from itdept 
group by name,salary

select * from itdept
left outer join dept on itdept.id=dept.id

select id from itdept
except 
select id from dept
except 
select id from itdept

delete from itdept 
where id=6
select *from itdept


drop table itdept

alter table dept
add  x int
select *from dept
alter table dept
drop column x

select distinct brance from dept

select id from itdept

select id from dept
except
select id from itdept


create table depositor
(customer_name varchar(20),account_number int)

insert into depositor values
('tripty',10),
('proma',11),
('asif',12),
('foysal',13),
('asfak',14),
('atik',15)
create table account
(account_number int,brance_name varchar(30),balance int)
insert into account values
(10,'rajshahi',10000),
(11,'dhaka',10000),
(12,'rajshahi',10000),
(13,'dhaka',10000),
(14,'rajshahi',10000),
(15,'dhaka',10000)

select account.brance_name ,count(depositor.customer_name),sum(account.balance),count(account.brance_name)
from depositor,account
where depositor.account_number=account.account_number
group by account.brance_name

select account_number, count(account_number) 
from account
group by account_number



