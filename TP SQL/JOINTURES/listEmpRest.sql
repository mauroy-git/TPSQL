SELECT 
    e.Firstname,
    e.Lastname,
    e.Role,
    r.Name AS Restaurant
FROM Employees e
JOIN Restaurants r ON e.IdRestaurant = r.IdRestaurant;