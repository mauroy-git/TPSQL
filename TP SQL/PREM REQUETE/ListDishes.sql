SELECT * FROM Dishes 
WHERE Price > (SELECT AVG(Price) FROM Dishes);