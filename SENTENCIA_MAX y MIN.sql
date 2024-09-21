--Valor MAX de precio productos, MIN Y MAX Solo tienen en cuenta valores que no son NULLS
SELECT MAX(precio), c.Nombre
FROM Productos p 
	INNER JOIN Categorias c ON p.CategoriaId = c.Id
GROUP BY c.Nombre

--Comprobando
SELECT * 
FROM Productos
	INNER JOIN Categorias c ON CategoriaId = c.Id
WHERE CategoriaId = 1
ORDER By precio DESC
