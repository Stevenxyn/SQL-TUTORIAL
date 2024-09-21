--Encontrar al cliente mas joven que alguna vez haya realizado una compra

SELECT  MAX(c.FechaNacimiento) AS FechaJoven,c.nombre
FROM Ordenes o
	INNER JOIN Clientes c ON ClienteId = c.Id
GROUP BY c.Nombre 
ORDER BY FechaJoven DESC