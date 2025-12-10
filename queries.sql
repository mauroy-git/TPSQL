-- Liste des restaurants
SELECT * FROM Restaurants;

-- Plats par prix décroissant
SELECT Name, Price FROM Dishes ORDER BY Price DESC;

-- Employés triés par rôle
SELECT * FROM Employees ORDER BY Role;

-- Plats végétariens
SELECT * FROM Dishes WHERE is_vegan = 1;

-- Plats au prix supérieur à la moyenne
SELECT * FROM Dishes WHERE Price > (SELECT AVG(Price) FROM Dishes);

-- Plats dont is_vegan est NULL
SELECT * FROM Dishes WHERE is_vegan IS NULL;

-- Employés dont hire_date est NULL
SELECT * FROM Employees WHERE hire_date IS NULL;

-- Jointure employés + restaurants
SELECT e.Firstname, e.Lastname, e.Role, r.Name AS Restaurant
FROM Employees e
JOIN Restaurants r ON e.IdRestaurant = r.IdRestaurant;

-- Plats commandés avec nom client et planète
SELECT d.Name AS Dish, c.Customer_name, r.Planet
FROM OrderItems oi
JOIN Dishes d ON oi.IdDishes = d.IdDishes
JOIN CustomerOrders c ON oi.IdOrders = c.IdOrders
JOIN Restaurants r ON c.IdRestaurant = r.IdRestaurant;

-- Nombre d’employés par restaurant
SELECT r.Name, COUNT(e.IdEmployees) AS NbEmployes
FROM Restaurants r
LEFT JOIN Employees e ON r.IdRestaurant = e.IdRestaurant
GROUP BY r.Name;

-- Mise à jour prix
UPDATE Dishes SET Price = Price*0.9 WHERE Price > 12;
UPDATE Dishes SET Price = Price*0.95 WHERE Price <= 12;

-- Suppressions
DELETE FROM Dishes WHERE Price IS NULL;
DELETE FROM CustomerOrders WHERE Total_amount < 5;

-- Mini-analyses
SELECT Category, AVG(Price) AS PrixMoyen FROM Dishes GROUP BY Category;
SELECT SUM(Total_amount) AS TotalVentes FROM CustomerOrders;
SELECT Name, Price FROM Dishes ORDER BY Price DESC LIMIT 3;
SELECT * FROM Employees WHERE Lastname LIKE '%a%';

-- Bonus : menu vegan automatique
SELECT d.Name, d.Price
FROM Dishes d
WHERE d.is_vegan = 1;

-- Bonus : classement restaurants par ancienneté
SELECT Name, Opening_year
FROM Restaurants
ORDER BY Opening_year ASC;

-- Bonus : plats avec leurs ingrédients
SELECT d.Name AS Dish, GROUP_CONCAT(i.Name, ', ') AS Ingredients
FROM Dishes d
JOIN DishIngredients di ON d.IdDishes = di.IdDishes
JOIN Ingredients i ON di.IdIngredient = i.IdIngredient
GROUP BY d.IdDishes;

-- Bonus : commande la plus chère de la semaine (exemple)
SELECT Customer_name, Total_amount
FROM CustomerOrders
ORDER BY Total_amount DESC
LIMIT 1;
