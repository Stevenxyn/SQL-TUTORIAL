SELECT * 
FROM Productos 
/*
COUNT() Cuenta las filas o el elemento que le asignemos
*/


SELECT * 
FROM Proveedores

SELECT prov.Nombre,  COUNT(prov.Id) AS Cantidades
FROM Productos prod
	 JOIN Proveedores prov ON prod.ProveedorId = prov.Id
GROUP BY Prov.Nombre
ORDER BY Cantidades DESC


--Contar todos los clientes

SELECT COUNT(DISTINCT nombre)
FROM Clientes
WHERE nombre = 'carla'

