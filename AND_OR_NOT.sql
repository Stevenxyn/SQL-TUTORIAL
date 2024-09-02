/*
AND = Las dos condiciones deben ser verdaderas para que devuelva un resultado
OR = Una de las dos condiciones debe ser verdadera para que devuelva un resultado
NOT Niega o no trae lo que queremos consultar


AND esta por encima de OR porque primero valida AND para que no valide de primeras AND
y valide en orden de lo que necesitamos usamos los () 

ejemplo:
WHERE (Nombre = 'Carla' OR Nombre = 'Abel') AND Apellido = 'Snider'
Primero valida lo dentro del parentesis y despues valida el AND
*/

SELECT * 
FROM Clientes
WHERE Nombre = 'Carla' AND Apellido = 'Snider'

GO
 
SELECT * 
FROM Clientes
WHERE Nombre = 'Carla' OR Nombre = 'Abel'

GO

SELECT * 
FROM Clientes
WHERE (Nombre = 'Carla' OR Nombre = 'Abel') AND Apellido = 'Snider'

GO

/*
Ejemplo anterior al inverso
Nombre = 'Carla' OR (Nombre = 'Abel' AND Apellido = 'Snider')
Primero valida el parentesis con AND y no se cumple por ende trae los resultados
de lo que se valido por fuera o sea Nombre = 'Carla' con OR
*/

SELECT * 
FROM Clientes
WHERE Nombre = 'Carla' OR (Nombre = 'Abel' AND Apellido = 'Snider')


/*
NOT Niega o no trae lo que queremos consultar
*/


SELECT * 
FROM Clientes
WHERE NOT Nombre = 'Carla'

