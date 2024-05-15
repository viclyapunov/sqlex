WITH MinRAM AS (
		SELECT a.model
				, a.ram
				, a.speed
				FROM PC a WHERE a.ram = (SELECT MIN(ram) FROM PC) 
)
SELECT DISTINCT d.maker
FROM Product d
WHERE d.type='Printer' 
AND d.maker IN (
		SELECT p.maker
		FROM Product p WHERE p.model IN (
				SELECT b.model				
				FROM MinRAM b
				WHERE b.speed = (SELECT MAX(c.speed) FROM MinRAM c)
		)
)