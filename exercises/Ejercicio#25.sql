/*
Devolver Nombre y codigo de paises que tengan clientes
Pero nunca hayan participado en una transaccion

Nombre, Codigo pais que no tengan ordenes

Paises,
Ciudades,
Ordenes,
Clientes.
*/

-- 
SELECT DISTINCT p.Nombre, p.NombreLocal 
FROM Clientes cli
	LEFT JOIN Ordenes o ON cli.Id = o.ClienteId
	LEFT JOIN Ciudades ciu ON cli.CiudadId = ciu.Id
	LEFT JOIN Paises p ON ciu.CodigoPais = p.Codigo
WHERE o.Id IS NULL
ORDER BY Nombre ASC


SELECT *
FROM clientes 

SELECT TOP (5) *
FROM ciudades 

SELECT TOP (5) *
FROM paises

