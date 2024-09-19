/*
Devolver la cantidad de productos vendidos por categoria
ordenando de mayor a menor
*/
--prod.Nombre
SELECT cate.Nombre, COUNT(cate.Id) AS CantidadVendidos
FROM Ordenes ord
	LEFT JOIN Productos prod ON ProductoId = prod.Id
	LEFT JOIN Categorias cate ON prod.CategoriaId = cate.Id
GROUP BY cate.Id , cate.Nombre
ORDER BY  CantidadVendidos DESC


SELECT * FROM Productos
SELECT * FROM Ordenes
SELECT * FROM Categorias


