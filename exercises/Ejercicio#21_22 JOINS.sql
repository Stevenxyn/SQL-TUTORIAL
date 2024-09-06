/*
Devolver fecha, apellido y nombre de cliente y nombre de producto
de todos los clientes que hayan comprado productos 
entre 2016 y 2019 inclusive
ordenando primero por mas reciente y segundo por apellido A - Z

Agregar el pais a cual pertenece cada cliente
*/

SELECT * 
FROM Clientes

SELECT * 
FROM Productos

SELECT * 
FROM Ordenes

GO

SELECT ord.Fecha,
	   clie.Apellido,
	   clie.Nombre,
	   prod.Nombre AS NombreProducto 
FROM Clientes AS clie
	INNER JOIN Productos AS prod ON clie.Id = prod.Id
	INNER JOIN Ordenes AS ord ON clie.Id = ord.Id
WHERE ord.Fecha BETWEEN '20160101' AND '20191231'
ORDER BY ord.Fecha DESC, 
		 clie.Apellido ASC

GO

--ordenes cliente id | cliente id | producto
SELECT fecha, Apellido, c.Nombre,
	   p.Nombre AS NombreProducto,
	   pais.Nombre
FROM Ordenes
	INNER JOIN Clientes AS c ON ClienteId = c.Id
	INNER JOIN Productos AS p ON ProductoId = p.Id
	INNER JOIN Ciudades AS ciu ON CiudadId = ciu.Id  
	INNER JOIN Paises AS pais ON CodigoPais = pais.Codigo
WHERE Fecha BETWEEN '20160101' AND '20191231'
ORDER BY Fecha DESC, Apellido ASC

