use Assignment_01;
show tables;

insert into Service (typeOfService, description, duration_hours)
VALUES 
('VIP Protection level 1', 'VIP personal security for high-profile clients', 24),
('VIP Protection level 2', 'Specialized security for political figures', 48),
('Event Security', 'Security services for large events and gatherings', 12),
('Corporate Security', 'Security for business premises and executives', 8),
('Executive Protection', 'Close protection for top executives', 24);

insert into Price(ServiceID, Cost)
values
(1, 500.00),
(2, 300.00),
(3, 400.00),
(4, 250.00),
(5, 600.00);
select * from Price;

insert into Bodyguard(Name, Surname, Age, BirthDate, LenghtOfService, BodyguardService)
VALUES 
('Oleksandr', 'Kovalenko', 32, '1993-04-15', 10, 1),
('Vladyslav', 'Shevchenko', 47, '1979-12-07', 15, 3),
('Ihor', 'Petrenko', 37, '1989-08-22', 7, 4),
('Yuriy', 'Bondar', 30, '1996-01-11', 6, 5),
('Denys', 'Zubko', 42, '1983-05-10', 10, 2),
('Roman', 'Tkachenko', 35, '1990-11-03', 10, 1),
('Andriy', 'Danylenko', 37, '1989-03-26', 5, 2),
('Oleh', 'Hrytsenko', 33, '1992-05-07', 9, 4),
('Volodymyr', 'Mykhailenko', 49, '1977-01-25', 20, 5),
('Serhiy', 'Klymenko', 31, '1995-10-10', 7, 5);

INSERT INTO Clients (
    Name, Surname, TelephoneNumber, Email, Age)
VALUES
('Ivan', 'Ivanov','380951234567', 'ivan_ivanov@gmai.com', 24),
('Petro', 'Petrov', '380951234568', 'petro_petrov@gmail.com', 29),
('Sergiy', 'Sergienko', '380951234569',  's_sergienco@gmail.com', 30),
('Oksana', 'Koval', '380951234570', 'okoval@gmail.com', 44),
('Natalia', 'Romanenko', '380951234571', 'nromanemko@gmail.com', 35),
('Andriy', 'Andriyenko', '380951234572', 'aandriyenko@gmail.com', 61),
('Oleh', 'Krutiy', '380861234573', 'o.krutiy@gmail.com', 72),
('Anna', 'Moroz', '380951234574', 'amoroz@gmail.com', 28),
('Maksym', 'Tkachenko', '380951234575', 'maks.tkachenko@gmail.com', 19),
('Viktor', 'Kravets', '380951234576', 'vkravets@gmail.com', 51);

insert into Location(Address, City, Region)
values
('Mykola Shpaka, 3', 'Dnipro', 'Dnipro'),
('Trubachenko, 25', 'Kyiv', 'Kyiv'),
('Sevastopolska, 45A', 'Dnipro', 'Dnipro'),
('Lev Tolstoi Street, 34', 'Kyiv', 'Kyiv'),
('Stetsenka, 3D', 'Kyiv', 'Kyiv'),
('Antonovska, 54', 'Kyiv', 'Kyiv'),
('Vitianska, 30', 'Kyiv', 'Kyiv'),
('Akademika Hluskova Avenue, 64', 'Dnipro', 'Dnipro'),
('Mykola Shpaka, 1', 'Kyiv', 'Kyiv'),
('Stetsenka, 56', 'Dnipro', 'Dnipro');


insert into Orders(ClientID, ServiceID, BodyguardID, OrderDate, StartDateTime, EndDateTime, status, locationID)
values 
(1, 1, 6, '2025-03-30', '2025-04-01','2025-04-02', 'Completed', 1),
(1, 2, 1, '2025-03-31', '2025-04-03','2025-04-05', 'Cancelled', 2),
(2, 2, 2, '2025-04-05', '2025-04-01','2025-04-03', 'Completed', 3),
(3, 3, 1, '2025-04-08', '2025-04-24','2025-04-24', 'Completed', 4),
(4, 5, 4, '2025-04-09', '2025-04-29','2025-04-30', 'Cancelled', 5),
(5, 5, 5, '2025-05-07', '2025-05-10','2025-05-11', 'Completed', 6),
(5, 3, 1, '2025-09-10', '2025-09-21','2025-09-21', 'Cancelled', 6),
(6, 1, 4, '2025-09-21', '2025-09-28','2025-09-29', 'Completed', 1),
(6, 3, 6, '2025-10-25', '2025-04-01','2025-04-02', 'Scheduled', 2),
(6, 1, 3, '2025-10-31', '2025-11-01','2025-11-02', 'Scheduled', 3);


insert into Payments(OrderID, Amount, PaymentDate, PaymentMethod)
values
(1, 500.00, '2025-03-30', 'Card'),
(2, 300.00, '2025-04-01', 'Cash'),
(3, 300.00, '2025-04-05', 'Transfer'),
(4, 400.00, '2025-04-08', 'Card'),
(5, 600.00, '2025-04-09', 'Cash'),
(6, 600.00, '2025-05-07', 'Transfer'),
(7, 400.00, '2025-09-10', 'Card'),
(8, 500.00, '2025-09-21', 'Card'),
(9, 400.00, '2025-10-25', 'Transfer'),
(10, 500.00, '2025-10-31', 'Cash');