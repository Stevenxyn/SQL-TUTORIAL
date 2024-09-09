/*
Devolver en un unico listado:
Id y Nombre de productos cuyo costo sea mayor a 80 pero menor a 100
Id y Nombre de categorias que no comiencen con la letra C
Id y Nombre de proveedores cuya segunda letra no sea "e", ni su ultima letra sea "n"
*/

SELECT 'Tabla Productos' AS TablaProductos, Id, Nombre 
FROM Productos
WHERE costo BETWEEN 80 AND 100

UNION ALL

SELECT 'Tabla Categorias' AS TablaCategorias,  * 
FROM Categorias
WHERE NOT nombre LIKE 'C%'

UNION ALL

SELECT 'Tabla Proveedores' AS TablaProveedores, *
FROM Proveedores
WHERE NOT Nombre LIKE '%N' AND NOT Nombre LIKE '_E%'
	  