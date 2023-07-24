CREATE DATABASE iglesiaHeavensMysqlDB;
USE iglesiaHeavensMysqlDB;


CREATE TABLE Departamento (
    idDepartamento INT PRIMARY KEY,
    nombreDepartamento VARCHAR(100) NOT NULL
);


CREATE TABLE Municipio (
    idMunicipio INT PRIMARY KEY,
    NombreMunicipio VARCHAR(100) NOT NULL,
    idDepartamento INT,
    FOREIGN KEY (idDepartamento) REFERENCES Departamento(idDepartamento)
);


CREATE TABLE Comuna (
    idComuna INT PRIMARY KEY,
    nombreComuna VARCHAR(100) NOT NULL,
    idMunicipio INT,
    FOREIGN KEY (idMunicipio) REFERENCES Municipio(idMunicipio)
);


CREATE TABLE Barrio (
    idBarrio INT PRIMARY KEY,
    nombreBarrio VARCHAR(100) NOT NULL,
    idComuna INT,
    FOREIGN KEY (idComuna) REFERENCES Comuna(idComuna)
);


CREATE TABLE Creyente (
    ididentificacion INT PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    NroCelular VARCHAR(20),
    dirección VARCHAR(200),
    IdBarrio INT,
    FOREIGN KEY (IdBarrio) REFERENCES Barrio(idBarrio)
);


-- Insertar datos en la tabla Departamento
INSERT INTO Departamento (idDepartamento, nombreDepartamento) VALUES
(1, 'Santander');

-- Insertar datos en la tabla Municipio
INSERT INTO Municipio (idMunicipio, NombreMunicipio, idDepartamento) VALUES
(1, 'Bucaramanga', 1),
(2, 'Florida Blanca', 2);

-- Insertar datos en la tabla Comuna
INSERT INTO Comuna (idComuna, nombreComuna, idMunicipio) VALUES
(1, 'Comuna 1 Norte', 1),
(2, 'Comuna 2 Nororiental', 1),
(3, 'Comuna 3 San Francisco', 1),
(4, 'Comuna 4 Occidental', 1),
(5, 'Comuna 5 García Rovira', 1),
(6, 'Comuna 6 La Concordia', 1),
(7, 'Comuna 7 La Ciudadela', 1),
(8, 'Comuna 8 Sur Occidente', 1),
(9, 'Comuna 9 La Pedregosa', 1),
(10, 'Comuna 10 Provenza', 1),
(11, 'Comuna 11 Sur', 1),
(12, 'Comuna 12 Cabecera del llano', 1),
(13, 'Comuna 13 Oriental', 1),
(14, 'Comuna 14 Morrorico', 1),
(15, 'Comuna 15 Centro', 1),
(16, 'Comuna 16 Lagos del Cacique', 1),
(17, 'Comuna 17 Mutis', 1),
(18, 'ALTAMIRA Y CASCO ANTIGUO', 2),
(19, 'CAÑAVERAL', 2),
(20, 'BUCARICA', 2),
(21, 'CALDAS – REPOSO', 2),
(22, 'BOSQUE - MOLINOS', 2),
(23, 'LAGOS – BELLAVISTA', 2),
(24, 'CIUDAD VALENCIA – SANTA ANA', 2),
(25, 'CUMBRE - ELCARMEN', 2);


-- Insertar datos en la tabla Barrio
INSERT INTO Barrio (idBarrio, nombreBarrio, idComuna) VALUES
-- Comuna 1 Norte
(1, 'El Rosal', 1),
(2, 'Colorados', 1),
(3, 'Café Madrid', 1),
(4, 'Las Hamacas', 1),


-- Comuna 2 Nororiental
(21, 'Los Angeles', 2),
(22, 'Villa Helena I y II', 2),
(23, 'José María Córdoba', 2),


-- Comuna 3 San Francisco
(31, 'Norte Bajo', 3),
(32, 'San Rafael', 3),
(33, 'El Cinal', 3),


-- Comuna 4 Occidental
(41, 'Gaitán', 4),
(42, 'Granadas', 4),
(43, 'Nariño', 4),


-- Comuna 5 García Rovira
(51, 'Quinta Estrella', 5),
(52, 'Alfonso López', 5),
(53, 'La Joya', 5),


-- Comuna 6 La Concordia
(61, 'La Concordia', 6),
(62, 'San Miguel', 6),
(63, 'Candiles', 6),

-- Comuna 7 La Ciudadela
(71, 'Ciudadela Real de Minas', 7),

-- Comuna 8 Sur Occidente
(81, 'San Gerardo', 8),
(82, 'Antiguo Colombia', 8),
(83, 'Los Canelos', 8),

-- Comuna 9 La Pedregosa
(91, 'Quebrada la Iglesia', 9),
(92, 'Antonia Santos Sur', 9),
(93, 'San Pedro Claver', 9),

-- Comuna 10 Provenza
(101, 'Diamante II', 10),
(102, 'San Luis', 10),
(103, 'Provenza', 10),

-- Comuna 11 Sur
(111, 'Ciudad Venecia', 11),
(112, 'Villa Alicia', 11),
(113, 'El Rocío', 11),

-- Comuna 12 Cabecera del llano
(121, 'Cabecera del Llano', 12),
(122, 'Sotomayor', 12),
(123, 'Antiguo Campestre', 12),

-- Comuna 13 Oriental
(131, 'Los Pinos', 13),
(132, 'San Alonso', 13),
(133, 'Galán', 13),

-- Comuna 14 Morrorico
(141, 'Vegas de Morrorico', 14),
(142, 'El Diviso', 14),
(143, 'Morrorico', 14),

-- Comuna 15 Centro
(151, 'Centro', 15),
(152, 'García Rovira', 15),


-- Comuna 126: ALTAMIRA Y CASCO ANTIGUO

(1, 'Nogales de Florida', 18),
(2, 'Jardín de Limoncito', 18),
(3, 'Limoncito', 18),

-- Comuna 127: CAÑAVERAL
(11, 'La Pera', 19),
(12, 'Club House', 19),
(13, 'Alamos Parque', 19),

-- Comuna 128: BUCARICA
(21, 'Bucarica', 128),
(22, 'Simón Bolivar', 128),
(23, 'Villa Corán', 128),

-- Comuna 129: CALDAS – REPOSO
(31, 'Caldas', 129),
(32, 'El Dorado', 129),
(33, 'Aranjuez', 129),

-- Comuna 130: BOSQUE - MOLINOS
(41, 'Santa Catalina', 130),
(42, 'Niza', 130),
(43, 'Bosques del Payador', 130),

-- Comuna 131: LAGOS – BELLAVISTA
(51, 'Panorama', 131),
(52, 'Torres de Bellavista', 131),
(53, 'Altos de Bellavista', 131),

-- Comuna 132: CIUDAD VALENCIA – SANTA ANA
(61, 'Villabel', 132),
(62, 'Nuevo Villabel', 132),
(63, 'Ciudad Valencia', 132),

-- Comuna 133: CUMBRE - ELCARMEN
(71, 'El Carmen I', 133),
(72, 'II', 133),
(73, 'III', 133);


INSERT INTO Creyente (ididentificacion, nombres, email, NroCelular, dirección, IdBarrio) VALUES
(1001, 'Ana Gómez', 'ana@example.com', '1234567890', 'Calle 1, Apartamento 101', 1),
(1002, 'Carlos Rodríguez', 'carlos@example.com', '9876543210', 'Avenida 2, Casa 20', 5),
(1003, 'María Martínez', 'maria@example.com', '5555555555', 'Carrera 3, Piso 30', 12),
(1004, 'Pedro López', 'pedro@example.com', '1111111111', 'Calle 4, Casa 15', 9),
(1005, 'Laura Ramírez', 'laura@example.com', '9999999999', 'Avenida 5, Apartamento 5', 3);
