/*
Devolver Clientes cuyos apellidos sean:
Myers, Lewis, Kent, Case o Berger
*/

SELECT *
FROM Clientes
WHERE Apellido IN ('Myers', 'Lewis', 'Kent', 'Case', 'Berger')