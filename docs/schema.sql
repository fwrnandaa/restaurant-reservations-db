CREATE DATABASE mochi_house;
USE mochi_house;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL,
    telefono VARCHAR(15) NOT NULL
);

CREATE TABLE mesas (
    id_mesa INT AUTO_INCREMENT PRIMARY KEY,
    numero_mesa INT UNIQUE NOT NULL,
    capacidad INT NOT NULL,
    estado ENUM('Disponible', 'Ocupada', 'Mantenimiento')
    DEFAULT 'Disponible'
);

CREATE TABLE horarios (
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    hora_reserva TIME NOT NULL
);

CREATE TABLE reservaciones (
    id_reservacion INT AUTO_INCREMENT PRIMARY KEY,

    id_cliente INT NOT NULL,
    id_mesa INT NOT NULL,
    id_horario INT NOT NULL,

    fecha_reserva DATE NOT NULL,
    comentarios TEXT,

    CONSTRAINT fk_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),

    CONSTRAINT fk_mesa
        FOREIGN KEY (id_mesa)
        REFERENCES mesas(id_mesa),

    CONSTRAINT fk_horario
        FOREIGN KEY (id_horario)
        REFERENCES horarios(id_horario),

    CONSTRAINT unique_reserva
        UNIQUE (id_mesa, fecha_reserva, id_horario)
);
