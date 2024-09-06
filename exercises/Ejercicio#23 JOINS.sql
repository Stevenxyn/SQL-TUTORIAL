/*
Devolver nombre y apellido de Clientes que:
	1. No hayan realizado alguna orden
	2. Hayan realizado alguna orden fuera del 2018
*/

-- 1
SELECT c.Nombre, c.Apellido, o.id AS Id_Orden
FROM Clientes c
	LEFT JOIN Ordenes o ON c.Id = o.ClienteId
WHERE o.Id IS NULL
ORDER BY c.Nombre


GO
-- 2
SELECT c.Nombre, c.Apellido, o.Fecha
FROM Clientes c
	INNER JOIN Ordenes o ON c.Id = o.ClienteId
WHERE o.Fecha NOT BETWEEN '20180101' AND '20181231'
ORDER BY o.Fecha

GO

--Solucion tutorial eficiente, si se aplica DISTINCT en la consulta de 1 tabla funciona, si se pone una columna de otra tabla
--no aplica el distinct si esa tiene mas registros de los duplicados

SELECT DISTINCT c.Nombre, c.Apellido, o.Fecha
FROM Clientes c
	LEFT JOIN Ordenes o ON c.Id = o.ClienteId AND
	o.Fecha NOT BETWEEN '20180101' AND '20181231'
ORDER BY c.Nombre
