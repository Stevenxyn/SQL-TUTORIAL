/*
Devolver nombre, proveedorId y ganancia de todos los productos
Ordenados de mayor a menor, con el producto de mayor ganancia 
primero en la lista

*/

SELECT Nombre, ProveedorId, 
	   Ganancia = (Precio - Costo) 
FROM Productos
WHERE ProveedorId IS NOT NULL
ORDER BY Ganancia DESC