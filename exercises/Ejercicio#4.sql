/*
Devolver todos los productos
cuyo precio sea mayor que el costo incrementado en un 40%
o la ganancia sea de al menos 25
*/

--Precio, costo, incremento o ganancia sea al menos 25 o mas
--costo * 1.4  incrementamos el costo en un 40%
SELECT *, costo * 1.4 AS CostoIncremento
FROM Productos
WHERE Precio > Costo * 1.4
	OR (Precio - costo) > 25