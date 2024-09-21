/*
HAVING
Clausula para filtrar grupos en base a  condiciones especificas
cumple la funcion de where que es individuales y having para grupos
*/

SELECT prov.Nombre, SUM(Prod.Precio) AS PrecioTotal
FROM Productos prod
	INNER JOIN Proveedores prov ON ProveedorId = prov.Id
GROUP BY prov.Nombre
HAVING SUM(Prod.Precio) > 100
ORDER BY prov.Nombre