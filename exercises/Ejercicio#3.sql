/*
Devolver en una sola columna nombre, apellido y direccion
de todos los clientes de la ciudad Bari.
El formato debe ser:
"Nombre: nombre, Apellido: apellido, Direccion: Direccion.
*/

SELECT 'Nombre: ' + Nombre +
	 ', Apellido: ' + Apellido +
	 ', Direccion: ' + Direccion AS 'Nombre completo y Direccion'
FROM Clientes
WHERE CiudadId = 1473
