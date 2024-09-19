/*
Determinar cual es la categoria mas exitosa 
calculando el total vendido por categoria
*/

SELECT c.nombre, SUM(p.Precio * o.Cantidad) AS TotalVendido
FROM ordenes o
	JOIN Productos p ON o.ProductoId = p.Id
	JOIN Categorias c ON p.CategoriaId = c.Id
GROUP BY c.Nombre
ORDER BY SUM(p.Precio * o.Cantidad) DESC

SELECT * FROM Categorias
SELECT * FROM Ordenes