SELECT Laptop.model
		, Laptop.price
FROM Laptop 
WHERE Laptop.model IN (SELECT model FROM Product WHERE Product.maker = 'B')
UNION
SELECT PC.model, PC.price 
FROM PC
WHERE PC.model IN (SELECT model FROM Product WHERE Product.maker = 'B')
UNION
SELECT Printer.model, Printer.price
FROM Printer
WHERE Printer.model IN (SELECT model FROM Product WHERE Product.maker = 'B')
