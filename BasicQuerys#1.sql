/*Traer totalidad columnas*/
SELECT *  FROM Paises

GO


/*Traer algunas columnas y renombrar columnas con un Alias*/
SELECT Nombre AS Titular
	  ,Codigo
	  ,Continente 
	  ,iso AS Codigo1
	  ,Region AS Providencia
FROM Paises

GO

/*Operadores Aritmeticos | Siempre asignar un alias a lo operado |
No traer la totalidad de registros ponemos la clausula TOP
*/
SELECT TOP 24 Id
	  ,Nombre
	  ,Costo
	  ,Precio
	  ,Precio - costo AS Beneficio
	  ,precio + (Precio * 1.5) / 100 AS PrecioMinorista /*aumento del 1.5 al valor inicial*/
FROM Productos


GO

/*DISTINCT La usamos para filtrar resultados duplicados distintos uno de otros */
SELECT CodigoPais AS WithoutDistinct FROM Ciudades
SELECT DISTINCT CodigoPais AS WithDistinct FROM Ciudades




