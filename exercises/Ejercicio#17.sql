/*
Devolver nombre, apellido, direccion de todos los clientes
Ordenados por fecha de nacimiento desde el mas reciente a mas antiguo
*/

SELECT Nombre, Apellido, Direccion
FROM Clientes
ORDER BY FechaNacimiento DESC