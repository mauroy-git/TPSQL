SELECT 
    co.IdOrders,
    co.Customer_name,
    SUM(oi.Quantity) AS Total_articles,
    SUM(oi.Quantity * d.Price) AS Montant_calculé
FROM CustomerOrders co
JOIN OrderItems oi ON co.IdOrders = oi.IdOrders
JOIN Dishes d ON oi.IdDishes = d.IdDishes
GROUP BY co.IdOrders, co.Customer_name;