SELECT DISTINCT Prod.maker
		, AVG(l.screen)
FROM Product Prod
JOIN Laptop l
ON Prod.model = l.model
GROUP BY Prod.maker