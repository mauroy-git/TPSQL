-- Table Restaurants
CREATE TABLE Restaurants (
    IdRestaurant INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL,
    Planet TEXT NOT NULL,
    Opening_year INTEGER NOT NULL
);

-- Table Employees
CREATE TABLE Employees (
    IdEmployees INTEGER PRIMARY KEY AUTOINCREMENT,
    Firstname TEXT NOT NULL,
    Lastname TEXT NOT NULL,
    Role TEXT NOT NULL,
    IdRestaurant INTEGER NOT NULL,
    hire_date DATE,
    FOREIGN KEY (IdRestaurant) REFERENCES Restaurants(IdRestaurant)
);

-- Table Dishes
CREATE TABLE Dishes (
    IdDishes INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL,
    Price NUMERIC NOT NULL,
    Category TEXT NOT NULL,
    is_vegan BOOLEAN
);

-- Table Orders → CustomerOrders après renommage
CREATE TABLE Orders (
    IdOrders INTEGER PRIMARY KEY AUTOINCREMENT,
    IdRestaurant INTEGER NOT NULL,
    Total_amount NUMERIC NOT NULL,
    Customer_name TEXT NOT NULL,
    FOREIGN KEY (IdRestaurant) REFERENCES Restaurants(IdRestaurant)
);

-- Table OrderItems
CREATE TABLE OrderItems (
    IdOrderItems INTEGER PRIMARY KEY AUTOINCREMENT,
    IdOrders INTEGER NOT NULL,
    IdDishes INTEGER NOT NULL,
    Quantity INTEGER NOT NULL,
    FOREIGN KEY (IdOrders) REFERENCES Orders(IdOrders),
    FOREIGN KEY (IdDishes) REFERENCES Dishes(IdDishes)
);

-- Bonus : Table Ingredients
CREATE TABLE Ingredients (
    IdIngredient INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL
);

-- Table relation DishIngredients
CREATE TABLE DishIngredients (
    IdDishIngredient INTEGER PRIMARY KEY AUTOINCREMENT,
    IdDishes INTEGER NOT NULL,
    IdIngredient INTEGER NOT NULL,
    FOREIGN KEY (IdDishes) REFERENCES Dishes(IdDishes),
    FOREIGN KEY (IdIngredient) REFERENCES Ingredients(IdIngredient)
);
