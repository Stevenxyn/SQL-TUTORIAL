/*
Devolver en un solo listado de productos, precio y nombre de categoria
con precios actualizados
Descuento del 10% para bebidas
Aumento del 15% para carnes
impuesto fijo de 13.5% para lacteos

*/

SELECT p.Precio - (p.Precio * 0.13) AS Precio ,
	   c.Nombre,
	   c.Id
FROM Productos p
	INNER JOIN Categorias c ON p.CategoriaId = c.Id
WHERE c.Id = 1 --Bebidas

UNION 

SELECT p.Precio - (p.Precio * 0.15) AS Precio ,
	   c.Nombre,
	   c.Id
FROM Productos p
	INNER JOIN Categorias c ON p.CategoriaId = c.Id
WHERE c.Id = 4 --Carnes

UNION

SELECT p.Precio + 13.5 AS Precio ,
	   c.Nombre,
	   c.Id
FROM Productos p
	INNER JOIN Categorias c ON p.CategoriaId = c.Id
WHERE c.Id = 6 --Lacteos

UNION

SELECT p.Precio ,
	   c.Nombre,
	   c.Id
FROM Productos p
	INNER JOIN Categorias c ON p.CategoriaId = c.Id
WHERE c.Id NOT IN (1,6,4) 
ORDER BY C.Nombre