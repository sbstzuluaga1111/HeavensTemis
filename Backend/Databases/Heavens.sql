CREATE DATABASE informacion_geografica;
USE informacion_geografica;

CREATE TABLE informacion_barrios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    departamento VARCHAR(100),
    municipio VARCHAR(100),
    comuna VARCHAR(100),
    barrio VARCHAR(100)
);

