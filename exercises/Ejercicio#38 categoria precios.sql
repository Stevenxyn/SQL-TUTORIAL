/*
Determinar el producto de menor costo en cada categoria que se haya vendido almenos una vez
*/

SELECT MIN(p.Costo), c.Nombre
FROM Ordenes
	INNER JOIN Productos p ON ProductoId = p.Id
	INNER JOIN Categorias c ON CategoriaId = c.Id
GROUP BY c.Nombre
