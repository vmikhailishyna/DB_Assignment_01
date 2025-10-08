use Assignment_01;

create table Service(
serviceID int not null primary key auto_increment,
typeOfService Enum('VIP Protection level 1', 'VIP Protection level 2', 'Event Security', 'Corporate Security', 'Executive Protection'),
description varchar(100),
duration_hours int check (duration_hours > 0));

create table Price(
price_ID int not null primary key auto_increment,
ServiceID int not null,
Cost Decimal (10, 2) not null check (Cost >= 0),
foreign key (ServiceID) references Service(ServiceID));

create table Bodyguard(
BodyguardID INT not null primary key auto_increment,
Name Varchar(30) not null,
Surname Varchar(50) not null,
Age INT not null check (Age >= 18 and Age <= 65),
BirthDate Date not null,
LenghtOfService int not null,
BodyguardService int not null,
foreign key (BodyguardService) references Service(ServiceID));

create table Clients(
ClientID int not null primary key auto_increment,
Name Varchar(30) not null,
Surname Varchar(50) not null,
TelephoneNumber varchar(15) unique not null,
Email varchar(100) unique,
Age int not null
);

create table Location (
  LocationID int primary key auto_increment,
  Address Varchar(100),
  City Varchar(50),
  Region Varchar(50)
);

create table Orders(
OrderID int not null primary key auto_increment,
ClientID int not null,
ServiceID int not null,
BodyguardID int not null,
OrderDate Date not null,
StartDateTime DATETIME not null,
EndDateTime DATETIME not null,
status Enum('Scheduled', 'Completed', 'Cancelled') default 'Scheduled',
locationID int not null,
foreign KEY (LocationID) references Location(LocationID),
Foreign key (ClientID) references Clients(ClientID),
Foreign key (ServiceID) references Service(ServiceID),
Foreign key (BodyguardID) references Bodyguard(BodyguardID));

CREATE TABLE Payments (
  PaymentID INT primary key auto_increment,
  OrderID INT not null unique,
  Amount DECIMAL(10,2) not null check (Amount >= 0),
  PaymentDate DATE not null,
  PaymentMethod ENUM('Cash', 'Card', 'Transfer') not null,
  foreign key (OrderID) references Orders(OrderID));

show tables;