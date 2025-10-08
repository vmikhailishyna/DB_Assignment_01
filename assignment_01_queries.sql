use Assignment_01;

select b.Name as BodyguardName,
		b.Surname as BodyguardSurname,
		s.TypeOfService,
		c.Name as ClientName,
		o.OrderID,
		p.Cost
from Orders o
join Clients c on o.ClientID = c.ClientID
join Bodyguard b on o.BodyguardID = b.BodyguardID
join Service s on o.ServiceID = s.ServiceID
join Price p on s.ServiceID = p.ServiceID
where o.OrderDate > '2025-03-01'
order by p.Cost desc
limit 5;


SELECT b.Name as BodyguardName,
SUM(p.Cost) AS Sallary
FROM Orders o
join Bodyguard b on o.BodyguardID = b.BodyguardID
join Service s on o.ServiceID = s.ServiceID
join Price p on s.ServiceID = p.ServiceID
GROUP BY b.BodyguardID 
having Sallary > 300
order by Sallary desc;

with count_cte as(
select b.Name as BodyguardName,
b.Surname as BodyguardSurname,
Count(o.BodyguardID) as total_orders,
SUM(p.Cost) AS total_income
from Orders o
join Bodyguard b on o.BodyguardID = b.BodyguardID
JOIN Service s ON o.ServiceID = s.ServiceID
    JOIN Price p ON s.ServiceID = p.ServiceID
    GROUP BY b.BodyguardID, b.Name, b.Surname
)
select cte.BodyguardName,
cte.BodyguardSurname,
cte.total_orders,
cte.total_income
from count_cte cte
order by cte.total_income DESC;

select o.OrderID,
s.TypeOfService,
p.Cost
from Orders o
join Service s on o.ServiceID = s.ServiceID
join Price p on s.ServiceID = p.ServiceID
where p.Cost >(
select avg(Cost)
from Price)
order by p.Cost desc;


select Name from Bodyguard
union 
select Name from clients;