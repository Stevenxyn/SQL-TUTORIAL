/*
Une los resultados de dos tablas en una sola tabla
*/

SELECT 'Nombre Cliente: ' , Nombre
FROM Clientes

UNION ALL

SELECT 'Nombre Provedor: ' , Nombre
FROM Proveedores