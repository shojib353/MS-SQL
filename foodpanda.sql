create database FoodPanda
use FoodPanda
create table users(
Users_ID int not null,
Users_Name varchar(15),
Users_Contact varchar(30),
Users_Loacation varchar(30)
primary key(Users_ID))




create table Restaurent(
Restaurent_ID int not null,
Restaurent_Name varchar(15),
Restaurent_Address varchar(30),
Restaurent_Delivery_Type varchar(30)
primary key(Restaurent_ID)
)

create table Menu_Item(
Menu_Item_ID int not null,
Menu_Item_Name varchar(15),
Menu_Item_Price int,
Restaurent_ID int,
foreign key(Restaurent_ID) references Restaurent(Restaurent_ID),
primary key(Menu_Item_ID))

create table Add_To_Cart(
cart_id int not null,
Restaurent_ID int,
Users_ID int,
foreign key(Users_ID) references Users(Users_ID),
primary key(cart_id),
foreign key(Restaurent_ID) references Restaurent(Restaurent_ID)
)
create table Cart_Details(
cart_id int,
Menu_Item_ID int,
foreign key(cart_id) references Add_To_Cart(cart_id),
foreign key(Menu_Item_ID) references Menu_Item(Menu_Item_ID),
)

create table Orders(
Orders_ID int not null,
cart_id int,
total_Price int,
foreign key(cart_id) references Add_To_Cart(cart_id),
primary key(Orders_ID))

create table Orders_cancel(
Orders_cancel_id int not null,
Users_ID int,
Orders_ID int,
foreign key(Users_ID) references Users(Users_ID),
foreign key(Orders_ID) references Orders(Orders_ID),
primary key(Orders_cancel_id)

)

create table Voucher(
Voucher_id int not null,
amount int,
primary key(Voucher_id)


)




create table Payment(
Payment_ID int not null,
Users_ID int,
Amount int,
Delivery_cost int,
Voucher_id int,
Payable_amount int,
foreign key(Voucher_id) references Voucher(Voucher_id),
foreign key(Users_ID) references Users(Users_ID),
primary key(Payment_ID))

create table Raider(
Raider_ID int not null,
Users_ID int,
Orders_ID int,
foreign key(Users_ID) references Users(Users_ID),
foreign key(Orders_ID) references Orders(Orders_ID),

primary key(Raider_ID))



create table Delivery_Done(
Raider_ID int,
Users_ID int,
Orders_ID int,
Payment_ID int,
foreign key(Users_ID) references Users(Users_ID),
foreign key(Orders_ID) references Orders(Orders_ID),
foreign key(Raider_ID) references Raider(Raider_ID),
foreign key(Payment_ID) references payment(Payment_ID),
)