/*
Devolver la cantidad de productos cuya ganancia
este entre 5 y 20 y su proveedor no esta vacio
*/

SELECT COUNT(nombre) AS CONTA
FROM Productos
WHERE  (precio - costo) BETWEEN 5 AND 20 
		AND ProveedorId IS NOT NULL


SELECT *
FROM Productos
