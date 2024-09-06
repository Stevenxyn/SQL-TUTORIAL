SELECT *
FROM Categorias

SELECT *
FROM Productos

SELECT c.Id, p.Nombre, p.Precio ,c.Nombre, p.CategoriaId
FROM Productos AS p
	INNER JOIN Categorias AS c ON p.CategoriaId = c.Id
WHERE c.Nombre = 'Bebidas'
	 --p.CategoriaId = 1
	