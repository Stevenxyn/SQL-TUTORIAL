/*
Devolver Id y Nombre de todos los productos que nunca se han vendido

Productos
Ordenes
*/

SELECT TOP(5) *
FROM Productos

SELECT TOP(5) *
FROM Ordenes 

GO

SELECT P.Id, p.Nombre
FROM Productos p
	LEFT JOIN Ordenes o ON p.ProveedorId = o.ProductoId 
WHERE O.Id IS NULL
ORDER BY p.Nombre

