use Assignment_01;

WITH count_cte AS (
    SELECT 
        b.BodyguardID,
        b.Name AS BodyguardName,
        b.Surname AS BodyguardSurname,
        COUNT(o.OrderID) AS total_orders,
        SUM(p.Cost) AS total_income
    FROM Orders o
    JOIN Bodyguard b ON o.BodyguardID = b.BodyguardID
    JOIN Service s ON o.ServiceID = s.ServiceID
    JOIN Price p ON s.ServiceID = p.ServiceID
    GROUP BY b.BodyguardID, b.Name, b.Surname
    HAVING SUM(p.Cost) > 300
)
SELECT 
    cte.BodyguardName,
    cte.BodyguardSurname,
    c.Name AS ClientName,
    s.TypeOfService,
    p.Cost AS ServiceCost,
    cte.total_orders,
    cte.total_income
FROM Orders o
JOIN Clients c ON o.ClientID = c.ClientID
JOIN Bodyguard b ON o.BodyguardID = b.BodyguardID
JOIN Service s ON o.ServiceID = s.ServiceID
JOIN Price p ON s.ServiceID = p.ServiceID
JOIN count_cte AS cte ON b.BodyguardID = cte.BodyguardID
WHERE 
    o.OrderDate > '2025-03-01'                        
    AND p.Cost > (SELECT AVG(Cost) FROM Price)
ORDER BY 
    cte.total_income DESC 
LIMIT 5;
