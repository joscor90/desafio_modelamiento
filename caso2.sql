-- Creación de la base de datos caso2

CREATE DATABASE caso2;

-- Creación de la tabla cursos

CREATE TABLE cursos(id SERIAL, PRIMARY KEY (id));

-- Creación de la tabla profesores

CREATE TABLE profesores(id SERIAL, nombre VARCHAR(50) NOT NULL, departamento VARCHAR(100) NOT NULL, PRIMARY KEY (id));


-- Creación de la tabla alumnos 

CREATE TABLE alumnos(id SERIAL, nombre VARCHAR(50) NOT NULL, rut INT NOT NULL, curso INT NOT NULL, PRIMARY KEY (id), FOREIGN KEY (curso) REFERENCES cursos(id));

-- Creación de la tabla pruebas

CREATE TABLE pruebas(id SERIAL, puntaje INT NOT NULL, profesor INT NOT NULL, PRIMARY KEY (id), FOREIGN KEY (profesor) REFERENCES profesores(id));

-- Creación de la tabla pruebas_rendidas

CREATE TABLE pruebas_rendidas(id_alumno INT, id_prueba INT, FOREIGN KEY (id_alumno) REFERENCES alumnos(id), FOREIGN KEY (id_prueba) REFERENCES pruebas(id), PRIMARY KEY (id_alumno, id_prueba));