-- Creación de la base de datos caso1

CREATE DATABASE caso1;

-- Creación de la tabla departamentos

CREATE TABLE departamentos(id SERIAL, nombre VARCHAR(100) NOT NULL, PRIMARY KEY (id));

-- Creación de la tabla trabajadores

CREATE TABLE trabajadores(id SERIAL, nombre VARCHAR(50) NOT NULL, rut INT NOT NULL, direccion VARCHAR(200) NOT NULL, departamento INT NOT NULL, PRIMARY KEY (id), FOREIGN KEY (departamento) REFERENCES departamentos(id));

-- Creación tabla liquidaciones

CREATE TABLE liquidaciones(id SERIAL, archivo VARCHAR(20) NOT NULL, trabajador INT NOT NULL, PRIMARY KEY (id), FOREIGN KEY (trabajador) REFERENCES trabajadores(id));