WITH MinRAM AS(
SELECT DISTINCT p.model
		, p.ram
		, p.speed
FROM
PC p
WHERE p.ram = (SELECT MIN(PC.ram) FROM PC)
)
SELECT 
SELECT Product.model FROM Product WHERE Product.maker IN (
SELECT DISTINCT Prod.maker FROM Product Prod WHERE Prod.type = 'Printer'
)
AND Product.type = 'PC'
