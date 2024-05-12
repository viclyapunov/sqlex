SELECT DISTINCT Prod.maker
		, Prin.price
FROM Printer Prin 
JOIN Product Prod 
ON Prin.model = Prod.model
WHERE Prin.price = (SELECT MIN(p.price) FROM Printer p WHERE p.color='y')
AND Prin.color = 'y'