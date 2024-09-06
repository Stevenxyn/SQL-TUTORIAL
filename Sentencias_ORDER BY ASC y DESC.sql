/*
Si no se especifica el ORDER BY ordena de forma automatica ASC

ASC | Ascendente menor a mayor | 1 - 100 | A - Z
DESC | Descendente mayor a menor | 100 - 1 | Z - A 

Dependiendo a que columnas le apliquemos el ASC ó DESC organiza por orden de invocacion y asignacion del orden

*/
SELECT Nombre + ' ' + Apellido AS NombreCompleto , CiudadId, FechaNacimiento
FROM Clientes
ORDER BY CiudadId ASC