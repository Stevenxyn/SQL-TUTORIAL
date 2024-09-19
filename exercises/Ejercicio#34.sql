/*
Mostrar el total consumido por idioma de clientr ordenado de mayor a menor
*/

SELECT idi.PaisIdioma, SUM(p.Precio * Cantidad) AS Total
FROM Ordenes o
	INNER JOIN productos p ON  ProductoId = p.Id
	INNER JOIN Clientes c ON ClienteId = c.Id
	INNER JOIN Ciudades ciu ON CiudadId = ciu.Id
	INNER JOIN Paises pai ON ciu.CodigoPais = pai.Codigo
	INNER JOIN PaisesIdioma idi ON pai.Codigo = idi.PaisCodigo
GROUP BY idi.PaisIdioma
ORDER BY Total DESC