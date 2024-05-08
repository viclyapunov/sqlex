SELECT DISTINCT Prod.type
		, l.model
		, l.speed
FROM Laptop l
JOIN Product Prod ON Prod.model = l.model
WHERE l.speed < ALL (SELECT p.speed FROM PC p)
