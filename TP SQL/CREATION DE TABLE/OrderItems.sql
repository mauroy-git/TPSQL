CREATE TABLE "OrderItems" (
	"IdOrderItems"	INTEGER NOT NULL,
	"IdOrders"	INTEGER NOT NULL,
	"IdDishes"	INTEGER NOT NULL,
	"Quantity"	INTEGER NOT NULL,
	PRIMARY KEY("IdOrderItems" AUTOINCREMENT),
	FOREIGN KEY("IdDishes") REFERENCES "Dishes"("IdDishes"),
	FOREIGN KEY("IdOrders") REFERENCES "Orders"("IdOrders")
);