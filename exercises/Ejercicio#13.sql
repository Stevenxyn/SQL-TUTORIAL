/*
Devolver ID, Nombre, Costo y precio
de todos los productos relacionados con Queso
Siempre y cuando su costo no sea menor a 10 ni mayor a 30
*/

SELECT id, nombre, costo, precio
From Productos
WHERE Nombre LIKE '%Queso%' AND
	  Costo BETWEEN 10 AND 30