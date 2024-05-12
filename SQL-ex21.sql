SELECT Prod.maker
		, MAX(P.price)
FROM Product Prod 
JOIN PC P 
ON Prod.model = P.model
GROUP BY Prod.maker