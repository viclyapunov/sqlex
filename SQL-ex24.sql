WITH ModelPrice AS (
	SELECT p.model
			, p.price
			FROM PC p
	UNION ALL
	SELECT prin.model
			, prin.price
			FROM Printer prin
	UNION ALL
	SELECT l.model
			, l.price
			FROM Laptop l
)
SELECT DISTINCT mp.model FROM ModelPrice mp
WHERE mp.price = (SELECT MAX(mp.price) FROM ModelPrice mp)
