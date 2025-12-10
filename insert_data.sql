-- Restaurants
INSERT INTO Restaurants(Name, Planet, Opening_year)
VALUES 
('Terra Dome','Terre',2025),
('Venda land','Venus',2028),
('URD','Uranus',2030),
('Lunasty','Lune',2023),
('Marshcrousty','Mars',2025);

-- Employees
INSERT INTO Employees(Firstname, Lastname, Role, IdRestaurant, hire_date)
VALUES
('Kouassi','Lemaitre','Chef cuisto',1,'2025-01-19'),
('Verla','Arouche','Serveuse',1,'2025-05-24'),
('Moog','Pelus','Chef cuisto',3,'2032-06-26'),
('Vuges','Temo','Chef cuisto',2,'2028-11-22'),
('Salome','Chieffe','Serveur',4,'2024-10-05'),
('Savares','Stung','Chef cuisto',4,'2025-10-16'),
('Piscine','Louis','Serveur',1,'2026-10-05'),
('Marcus','Smarty','Chef cuisto',5,'2025-02-13'),
('Calum','Teffare','Serveuse',2,'2029-04-21'),
('Sicky','Sodome','Serveur',5,'2025-07-07'),
('Sexy','Leane','Serveuse',3,'2031-01-10');

-- Dishes
INSERT INTO Dishes(Name, Price, Category, is_vegan)
VALUES
('Krusty burger',13.5,'Burger',0),
('Veganny chips',6,'Chips',1),
('Pasta ru',22.13,'Pâtes',0),
('Monny burger',7.99,'Burger',0),
('Kawai venuily',22,'Sushi',0),
('Tacala monk',5.98,'Tacos',0),
('Truica salad',10,'Salade',1),
('Venich',5.98,'Sandwich',0),
('Portolio',17.22,'Pizza',1);

-- Ingredients
INSERT INTO Ingredients(Name)
VALUES
('Tomate'),
('Fromage'),
('Salade'),
('Pain'),
('Pâte'),
('Viande'),
('Sushi rice'),
('Tacos wrap'),
('Sauce');

-- DishIngredients
INSERT INTO DishIngredients(IdDishes, IdIngredient)
VALUES
(1,6),(1,4),(1,9),
(2,3),(2,1),
(3,5),(3,2),(3,6),
(4,6),(4,4),(4,9),
(5,7),(5,1),(5,2),
(6,8),(6,6),(6,9),
(7,3),(7,1),
(8,4),(8,6),
(9,5),(9,2),(9,3);

-- CustomerOrders
INSERT INTO CustomerOrders(IdRestaurant, Total_amount, Customer_name)
VALUES
(1, 12.34, 'Jeff'),
(1, 32.5, 'Samuel'),
(3, 10, 'Mumus'),
(4, 15.10, 'Knight'),
(5, 8.70, 'Marc'),
(2, 33.3, 'Venuala'),
(2, 52.35, 'Klan'),
(3, 5.98, 'Hardy'),
(4, 7.77, 'Sandman'),
(5, 55.22, 'Lee');

-- OrderItems
INSERT INTO OrderItems(IdOrders, IdDishes, Quantity)
VALUES
(1, 10, 11),
(3, 5, 7),
(4, 2, 6),
(5, 6, 11),
(10, 8, 18),
(2, 3, 23),
(9, 5, 14),
(6, 9, 15),
(8, 7, 15),
(9, 1, 10),
(7, 4, 11),
(2, 4, 6),
(8, 2, 10);
