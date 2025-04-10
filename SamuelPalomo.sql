--1
INSERT ALL 
INTO Jugadores VALUES ('Cristiano Ronaldo', 'El bicho', '5-02-1985', 'Portugués', 5)
INTO Jugadores VALUES ('Lionel Messi', 'La pulga', '24-06-1987', 'Argentino', 4)
INTO Jugadores VALUES ('Wayne Rooney', 'Rooney', '24-10-1985', 'Inglés', 1)
INTO Jugadores VALUES ('Sergio Agüero', 'Kun Agüero', '02-06-1988', 'Argentino', NULL)
SELECT * FROM DUAL;

--2
DELETE FROM Jugadores
WHERE Nacionalidad != 'Argentino';

--3
UPDATE Jugadores
SET Champions = 3
WHERE Champions <2;

--4 

INSERT INTO Jugadores (Nombre, Apodo, Fecha_Nacimiento, Nacionalidad, Champions)
SELECT Nombre, Apodo, Fecha_Nacimiento, Nacionalidad, Champions
FROM Fichajes
WHERE Champions > 4;


--5 
UPDATE Jugadores
ACCEPT SET Apodo = '&Apodo', Champions = '&Champions'
WHERE ID = '&ID';