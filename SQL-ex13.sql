SELECT AVG(speed) FROM PC 
JOIN Product ON PC.model = Product.model
WHERE Product.maker = 'A'
