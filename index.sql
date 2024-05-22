create database indexing
use indexing

create table AdmissionInfo
(id int,name varchar(30)
,cgpa float
,sesson varchar(30))

insert into  AdmissionInfo
(id,name
,cgpa
,sesson) values
(1,'jakson',3.45,'fal-18'),
(2,'ranald',3.56,'spring-18'),
(3,'sara',3.23,'summer-18'),
(4,'smith',3.99,'spring-18'),
(5,'jenelia',3.86,'fal-18')


--1
create Index I_AdmissionInfo 
on AdmissionInfo(cgpa desc);

select cgpa from AdmissionInfo

--2
create clustered index ci
on AdmissionInfo(id desc);

select * from AdmissionInfo


--3
create nonclustered index nci
on AdmissionInfo(name asc);

select name from AdmissionInfo

