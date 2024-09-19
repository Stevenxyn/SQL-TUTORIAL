/*
GROUP BY Agrupa las filas que tienen valores identicos en una columna especificada
EJEMPLO
1
1
2
2
2
3
3
3

Ordena todo lo repetido en 1 2 3 unificando todo lo que es similar
*/

SELECT ProveedorId, p.Nombre
FROM Productos
	JOIN Proveedores p ON ProveedorId = p.Id
GROUP BY ProveedorId, p.Nombre
ORDER BY ProveedorId