/*
Determinar cual es el pais al cual se realizaron la mayor
y la menor venta ordenando los resultados
*/

SELECT pa.Codigo, pa.Nombre, MAX(precio * Cantidad) AS TotalVendido
FROM Ordenes o
	INNER JOIN Productos p ON ProductoId = p.Id
	INNER JOIN Clientes c ON ClienteId = c.Id
	INNER JOIN Ciudades ciu ON c.CiudadId = ciu.Id
	INNER JOIN Paises pa ON ciu.CodigoPais = pa.Codigo
GROUP BY pa.Codigo, pa.Nombre
ORDER BY TotalVendido DESC


