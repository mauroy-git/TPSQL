SELECT 
    r.Name AS Restaurant,
    COUNT(e.IdEmployees) AS Nombre_employes
FROM Restaurants r
LEFT JOIN Employees e ON r.IdRestaurant = e.IdRestaurant
GROUP BY r.IdRestaurant, r.Name;