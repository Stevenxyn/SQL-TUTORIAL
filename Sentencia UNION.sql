/*
Une los resultados de dos tablas en una sola tabla

- los AS se aplican a la primera consulta nunca a las siguientes
- Los ORDER BY se aplican a la ultima consulta de lo contrario no funcionaria
*/

SELECT 'Nombre Cliente: ' , Nombre
FROM Clientes


UNION ALL

SELECT 'Nombre Provedor: ' , Nombre
FROM Proveedores
ORDER BY Nombre


SELECT 'Importante' AS Tipo, *
FROM Productos
WHERE Precio - Costo >= 25

UNION

SELECT 'Menos importante' AS Tipo, *
FROM Productos
WHERE Precio - Costo BETWEEN 1 AND 5
