CREATE DATABASE iglesiaHeavensMysqlDB;
USE iglesiaHeavensMysqlDB;

CREATE TABLE Departamentos (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre_departamento VARCHAR(100),
);

CREATE TABLE Municipios (
    id_municipio INT AUTO_INCREMENT PRIMARY KEY,
    nombre_municipio VARCHAR(100),
    id_departamento INT,
    Foreign Key (id_departamento) REFERENCES Departamentos(id_departamento)
);

CREATE TABLE Comunas (
    id_comuna INT AUTO_INCREMENT PRIMARY KEY,
    nombre_comuna VARCHAR(100),
    id_municipio INT,
    Foreign Key (id_municipio) REFERENCES Municipios(id_municipio)
);

CREATE TABLE Barrios (
    id_barrio INT AUTO_INCREMENT PRIMARY KEY,
    nombre_barrio VARCHAR(100),
    id_comuna INT,
    Foreign Key (id_comuna) REFERENCES Barrios(id_comuna)
);

CREATE TABLE Creyente (
    id_creyente INT AUTO_INCREMENT PRIMARY KEY,
    nombre_creyente VARCHAR(100),
    id_barrio INT,
    Foreign Key (id_barrio) REFERENCES Creyente(id_barrio)
);

