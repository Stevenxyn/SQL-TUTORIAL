/*
Determinar el promedio vendido por ciudad
ordenados de mayor a menor
*/

SELECT ciu.Id, ciu.Nombre, AVG(Precio * Cantidad) AS PromedioVendido
FROM Ordenes
INNER JOIN Productos p ON ProductoId = p.Id
INNER JOIN Clientes c ON ClienteId = c.Id
INNER JOIN Ciudades ciu ON CiudadId = ciu.Id
GROUP BY ciu.Id, ciu.Nombre
ORDER BY AVG(Precio * Cantidad) DESC;
