/*
Devolver nombre de producto, apellido y nombre como cliente, fecha de orden 
y texto "mayorista" para aquellas ordenes con pedidos mayores a 50
y texto "minorista" para aquellas ordenes con pedidos menores a 50
*/


SELECT 'Mayoristas' AS Texto, 
		c.Nombre, c.Apellido,
		o.Fecha, o.Cantidad
FROM Ordenes o
	LEFT JOIN Productos p on o.ProductoId = p.Id
	LEFT JOIN Clientes c on o.ClienteId = c.Id
WHERE o.Cantidad >= 50

UNION ALL


SELECT 'Minoristas',
		c.Nombre,
		c.Apellido,
		o.Fecha,
		o.Cantidad
FROM Clientes c
	LEFT JOIN Ordenes o ON c.Id = o.ClienteId
WHERE o.Cantidad <= 50
ORDER BY o.Cantidad DESC