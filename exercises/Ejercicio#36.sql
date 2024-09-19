
/*
Determinar el promedio vendido a clientes nacidos entre 1930 y 1970
*/


SELECT C.Id, c.Nombre + ' ' + c.Apellido AS NombreCompleto, AVG (Precio * Cantidad) AS CantidadPromedio
FROM Ordenes
	INNER JOIN Productos p ON ProductoId = p.Id
	INNER JOIN Clientes c ON ClienteId = c.Id
WHERE FechaNacimiento BETWEEN '19300101' AND '19701231'
GROUP BY c.Id, c.Nombre, c.Apellido
ORDER BY CantidadPromedio DESC
