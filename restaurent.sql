create database restaurent1
use restaurent1

create table Customer(
Customer_ID int not null,
Customer_Name varchar(15),
Customer_Phone varchar(15),
Customer_Address varchar(30),
primary key(Customer_ID)
)

create table Menu_Item
(
Menu_Item_ID int not null,
Menu_Item_Name varchar(15),
Menu_Item_Price float,
Menu_Item_Description varchar(30),
primary key(Menu_Item_ID)
)
select *from Menu_Item
create table Orders(
Order_id int not null,
Customer_ID int,
Total_price float,
Order_Time varchar(10),
foreign key(Customer_ID) references Customer(Customer_ID),
primary key(Order_id)
)

create table order_details(
Order_id int,
Customer_ID int,
Menu_Item_ID int,
foreign key(Order_id) references Orders(Order_id),
foreign key(Customer_ID) references Customer(Customer_ID),
foreign key(Menu_Item_ID) references Menu_Item(Menu_Item_ID),
)

create table Cancel_order(
cancel_ID int not null,
Order_id int,
Customer_ID int,
foreign key(Order_id) references Orders(Order_id),
foreign key(Customer_ID) references Customer(Customer_ID),
primary key(cancel_ID)
)
create table Payment(
Payment_Id int not null,
Customer_ID int,
Order_id int,
Payment_amount float,
Payment_Time varchar(10)
foreign key(Customer_ID) references Customer(Customer_ID),
foreign key(Order_id) references Orders(Order_id),

primary key(Payment_Id)
)

create table Payment_details(
Payment_Id int,
Received_cash float,
Received_other float,
Change_Money float,
Due_Money float,
foreign key(Payment_Id) references Payment(Payment_Id),
)
create table stuffs(
Stuff_Id int not null,
Stuff_Name varchar(20),
Stuff_position varchar(10),
Stuff_salary float,
Stuff_join varchar(10),
primary key(stuff_Id)
)
create table bonus(
Stuff_Id int,
Bonus_amount float,
foreign key(Stuff_Id) references Stuffs(Stuff_Id),
)

create table TableN
(
Table_Id int not null,
Avilability varchar(10),
primary key(Table_Id)
)
create table Table_Booking(
Table_Id int,
Customer_ID int,
foreign key(Table_Id) references TableN(Table_Id),
foreign key(Customer_ID) references Customer(Customer_ID),

)

create table Waiter(
Waiter_id int not null,
Waiter_name varchar(20),
Waiter_phone varchar(15),
Duty_Time varchar(10),
Stuff_Id int,
foreign key(Stuff_Id) references Stuffs(Stuff_Id),
primary key(Waiter_id)

)

drop table if exists [dbo].[Waiter]

create table Waiter_details(
Waiter_Id int,
Table_Id int,
foreign key(Waiter_Id) references Waiters(Waiter_Id),
foreign key(Table_Id) references TableN(Table_Id),

)
create table manager(
manager_id int not null,
manager_name varchar(15),
manager_duty_time varchar(15),
manager_phone_number varchar(15),
Stuff_Id int ,
primary key(manager_id),
foreign key(Stuff_Id) references stuffs(Stuff_Id)
)

create table chef(
chef_id int not null,
Stuff_Id int,
chef_name varchar(15),
chef_duty_time varchar(30),
primary key(chef_id),
foreign key(Stuff_Id) references stuffs(Stuff_Id)
)





