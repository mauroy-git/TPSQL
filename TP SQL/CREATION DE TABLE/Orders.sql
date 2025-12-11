CREATE TABLE "Orders" (
	"IdOrders"	INTEGER NOT NULL,
	"IdRestaurant"	INTEGER NOT NULL,
	"Total_amount"	NUMERIC NOT NULL,
    "Customer_name"	INTEGER NOT NULL,
	PRIMARY KEY("IdOrders" AUTOINCREMENT),
	FOREIGN KEY("IdRestaurant") REFERENCES "Restaurants"("IdRestaurant")
);