SELECT P.speed
		, AVG(P.price)
FROM PC P
GROUP BY P.speed
HAVING AVG(P.speed) > 600