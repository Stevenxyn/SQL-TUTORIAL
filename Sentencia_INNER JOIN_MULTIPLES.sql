SELECT *
FROM Proveedores

SELECT *
FROM Categorias

SELECT *
FROM Productos

GO
/*
INNER JOIN no combina valores nulos, si alguna tabla los contiene los elimina 
INNER JOIN la palabra INNER es opcional solo usando el JOIN funcionara
*/
SELECT p.Nombre,
	   p.Costo,
	   p.Precio,
	   c.Nombre AS NombreCategoria,
	   pr.Nombre AS NombreProveedor
FROM Productos p
	INNER JOIN Categorias c ON p.CategoriaId = c.Id
		  JOIN proveedores pr ON p.ProveedorId = pr.Id 
ORDER BY p.Nombre ASC