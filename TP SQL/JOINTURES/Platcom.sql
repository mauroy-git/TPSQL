SELECT 
    d.Name AS Dishes,
    co.Customer_name,
    r.Planet AS Planète
FROM OrderItems oi
JOIN Dishes d ON oi.IdDishes = d.IdDishes
JOIN CustomerOrders co ON oi.IdOrders = co.IdOrders
JOIN Restaurants r ON co.IdRestaurant = r.IdRestaurant;