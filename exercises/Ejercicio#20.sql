/*
Devolver nombre de proveedores, precio y costo
de productos cuya ganancia sea mayor a 20
*/

SELECT * 
FROM Proveedores

SELECT * 
FROM Productos


SELECT p.Nombre AS NombreProveedor,
	   pr.Costo,
	   pr.Precio,
	   pr.precio - pr.costo AS Ganancia
FROM Proveedores AS p
	INNER JOIN Productos AS pr ON p.Id = pr.Id
WHERE pr.precio - pr.costo > 20
