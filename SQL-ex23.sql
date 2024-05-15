SELECT Prod.maker
FROM Product Prod
JOIN PC p 
ON Prod.model = p.model
WHERE p.speed >= 750
INTERSECT
SELECT Prod.maker
FROM Product Prod
JOIN Laptop l
ON Prod.model = l.model
WHERE l.speed >= 750
