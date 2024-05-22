create database Labx
use Labx
create table CUSTOMER(
Customer_ID int not null
,Name varchar(15)
,Age int
,City varchar(15)
,primary key(Customer_ID)
)
insert into Customer(Customer_ID,Name,Age,City) values
(1000,'Sara',22,'Rajshahi'),
(1005,'Mehedi',23,'Rajshahi'),
(1006,'Raha',22,'Dhaka'),
(1009,'Emon',22,'Dhaka')
select * from CUSTOMER

create table ORDERS(
Order_ID int,
Customer_ID int,
Product_ID int not null,
Times Time,
primary key(Product_ID),
foreign key(Customer_ID) references Customer(Customer_ID),
)
insert into ORDERS(Order_ID,Customer_ID,Product_ID,Times) values
(1,1000,0001,10)

create table PRODUCT(
Product_ID int,
Quantity int,
Price int,
foreign key(Product_ID) references ORDERS(Product_ID))
select *from PRODUCT

create database Labx3
use Labx3
create table users(
Users_ID int not null,
Users_Name varchar(15),
Users_Contact varchar(30)
primary key(Users_ID))

create table Reataurent(
Reataurent_ID int not null,
Reataurent_Name varchar(15),
Reataurent_Address varchar(30)
primary key(Reataurent_ID))

create table Menu_Item(
Menu_Item_ID int not null,
Menu_Item_Name varchar(15),
Reataurent_ID int
foreign key(Reataurent_ID) references Reataurent(Reataurent_ID),
primary key(Menu_Item_ID))

create table Orders(
Orders_ID int not null,
Users_ID int,
Menu_Item_ID int,
foreign key(Users_ID) references Users(Users_ID),
foreign key(Menu_Item_ID) references Menu_Item(Menu_Item_ID),
primary key(Orders_ID))

create table Payment(
Payment_ID int not null,
Users_ID int,
Amount int,
foreign key(Users_ID) references Users(Users_ID),
primary key(Payment_ID))

create table Raider(
Raider_ID int not null,
Users_ID int,
Orders_ID int,
foreign key(Users_ID) references Users(Users_ID),
foreign key(Orders_ID) references Orders(Orders_ID),

primary key(Raider_ID))

create table Delivery(
Raider_ID int,
Users_ID int,
Orders_ID int,
Payment_ID int,

foreign key(Users_ID) references Users(Users_ID),
foreign key(Orders_ID) references Orders(Orders_ID),
foreign key(Raider_ID) references Raider(Raider_ID),
foreign key(Payment_ID) references payment(Payment_ID),
)


