/*
Devolver todos los clientes
y ordenarlos por nombre de A - Z
Si el nombre coincide ordenar por apellido de Z - A
Si ambos coinciden elegir primero el cliente de mayor edad
*/


SELECT  edad = 2024 - YEAR(FechaNacimiento), *
FROM Clientes
ORDER BY  Nombre ASC ,  edad DESC

