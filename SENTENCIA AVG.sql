--AVG
SELECT prov.nombre, AVG(prod.Precio) AS PrecioPromedio
FROM Productos prod
	JOIN Proveedores prov ON prod.ProveedorId = prov.id
GROUP BY prov.Nombre
ORDER BY prov.Nombre

-- Valores unicos con Distinct
SELECT prov.nombre, AVG(DISTINCT prod.Precio) AS PrecioPromedio
FROM Productos prod
	JOIN Proveedores prov ON prod.ProveedorId = prov.id
GROUP BY prov.Nombre
ORDER BY prov.Nombre

-- Ganancia promedio por proveedor
SELECT prov.nombre, AVG(prod.Precio - prod.Costo) AS GananciaPromedio
FROM Productos prod
	JOIN Proveedores prov ON prod.ProveedorId = prov.id
GROUP BY prov.Nombre
ORDER BY prov.Nombre
