CREATE TABLE "Employees" (
	"IdEmployees"	INTEGER NOT NULL,
	"Firstname"	TEXT NOT NULL,
	"Lastname"	TEXT NOT NULL,
	"Role"	TEXT NOT NULL,
	"IdRestaurant"	INTEGER NOT NULL,
	PRIMARY KEY("IdEmployees" AUTOINCREMENT),
	FOREIGN KEY("IdRestaurant") REFERENCES "Restaurants"("IdRestaurant")
);