/*
Determinar cual es el provedor mas exitoso del sistema
calculando el total por proveedor
*/

SELECT p.Id, p.Nombre, SUM(pro.Costo) AS CostoTotal
FROM Ordenes o
	INNER JOIN Proveedores p ON o.ProductoId = p.Id
	INNER JOIN Productos pro ON p.Id = pro.ProveedorId
GROUP BY p.Id, p.Nombre
ORDER BY CostoTotal DESC

SELECT TOP 2 *  FROM Ordenes 
SELECT TOP 2 * FROM Proveedores
SELECT TOP 2 * FROM Productos