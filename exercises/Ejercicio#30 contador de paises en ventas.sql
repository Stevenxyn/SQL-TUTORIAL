/*
Devolver la cantidad de clientes que alguna vez ordenaron algo por pais
*/


SELECT p.Codigo, p.Nombre, COUNT(p.Nombre) AS CantidadAparicion
FROM Ordenes ord
	INNER JOIN Clientes clie ON ord.ClienteId = clie.Id
	INNER JOIN Ciudades ciu ON clie.CiudadId = ciu.Id
	INNER JOIN Paises p ON ciu.CodigoPais = p.Codigo
GROUP BY  p.Codigo, p.Nombre


SELECT * FROM Ciudades
SELECT * FROM Paises
