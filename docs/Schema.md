# Schema de Base de Datos  
## Sistema de Reservaciones - Mochi House

---

# Descripción General

La base de datos del sistema de reservaciones de Mochi House fue diseñada bajo el modelo relacional para administrar la disponibilidad de mesas dentro del restaurante mediante validaciones de fecha, hora y mesa seleccionada.

El sistema permite registrar clientes, controlar mesas disponibles y almacenar reservaciones evitando conflictos de horario.

La lógica principal del sistema consiste en impedir que una misma mesa sea reservada dos veces en la misma fecha y hora.

---

# Tablas del Sistema

El sistema está compuesto por las siguientes tablas:

- clientes
- mesas
- horarios
- reservaciones

---

# Tabla: clientes

## Descripción

La tabla `clientes` almacena la información de las personas que realizan reservaciones dentro del restaurante.

---

## Campos

| Campo | Tipo | Restricciones |
|---|---|---|
| id_cliente | INT | PK, AUTO_INCREMENT |
| nombre_completo | VARCHAR(100) | NOT NULL |
| correo | VARCHAR(100) | NOT NULL |
| telefono | VARCHAR(15) | NOT NULL |

---

## Llave Primaria

- `id_cliente`

---

## Relaciones

- Un cliente puede tener muchas reservaciones.
- Relación 1:N con `reservaciones`.

---

# Tabla: mesas

## Descripción

La tabla `mesas` almacena la información de las mesas del restaurante.

Cada mesa posee número, capacidad y estado de disponibilidad.

---

## Campos

| Campo | Tipo | Restricciones |
|---|---|---|
| id_mesa | INT | PK, AUTO_INCREMENT |
| numero_mesa | INT | UNIQUE, NOT NULL |
| capacidad | INT | NOT NULL |
| estado | ENUM('Disponible','Ocupada','Mantenimiento') | DEFAULT 'Disponible' |

---

## Llave Primaria

- `id_mesa`

---

## Relaciones

- Una mesa puede tener muchas reservaciones.
- Relación 1:N con `reservaciones`.

---

# Tabla: horarios

## Descripción

La tabla `horarios` almacena las horas válidas para realizar reservaciones.

El sistema únicamente permite horarios entre las 10:00 AM y las 10:00 PM.

---

## Campos

| Campo | Tipo | Restricciones |
|---|---|---|
| id_horario | INT | PK, AUTO_INCREMENT |
| hora_reserva | TIME | NOT NULL |

---

## Llave Primaria

- `id_horario`

---

## Relaciones

- Un horario puede asociarse a muchas reservaciones.
- Relación 1:N con `reservaciones`.

---

# Tabla: reservaciones

## Descripción

La tabla `reservaciones` es la tabla principal del sistema.

Aquí se almacena toda la información relacionada con las reservaciones realizadas por los clientes.

---

## Campos

| Campo | Tipo | Restricciones |
|---|---|---|
| id_reservacion | INT | PK, AUTO_INCREMENT |
| id_cliente | INT | FK, NOT NULL |
| id_mesa | INT | FK, NOT NULL |
| id_horario | INT | FK, NOT NULL |
| fecha_reserva | DATE | NOT NULL |
| comentarios | TEXT | NULL |

---

## Llave Primaria

- `id_reservacion`

---

## Llaves Foráneas

| Campo | Referencia |
|---|---|
| id_cliente | clientes(id_cliente) |
| id_mesa | mesas(id_mesa) |
| id_horario | horarios(id_horario) |

---

## Relaciones

- Muchas reservaciones pertenecen a un cliente.
- Muchas reservaciones pueden usar la misma mesa en distintos horarios.
- Muchas reservaciones pueden compartir el mismo horario siempre que las mesas sean diferentes.

---

# Restricción Principal

El sistema utiliza una restricción para evitar reservaciones duplicadas.

```sql
UNIQUE(id_mesa, fecha_reserva, id_horario)
```

Esta restricción impide que una misma mesa sea reservada dos veces en la misma fecha y hora.

---

# Validación de Horarios

El sistema únicamente permite reservaciones entre:

- 10:00 AM
- 10:00 PM

Si el usuario intenta seleccionar una hora fuera de ese rango, la reservación es bloqueada automáticamente.

---

# Funcionamiento del Layout

El layout visual del restaurante depende directamente de la información almacenada en la tabla `reservaciones`.

Cuando el usuario selecciona una fecha y una hora:

- el sistema consulta las reservaciones registradas
- detecta qué mesas ya están ocupadas
- actualiza visualmente la disponibilidad

Esto permite que una mesa pueda utilizarse varias veces durante el día en horarios distintos.

---

# Tipos de Datos Utilizados

| Tipo | Uso |
|---|---|
| INT | Identificadores y capacidades |
| VARCHAR | Nombres, correos y teléfonos |
| DATE | Fechas |
| TIME | Horarios |
| TEXT | Comentarios |
| ENUM | Estados |

---

# Integridad Relacional

Las llaves foráneas garantizan que:

- no existan reservaciones sin cliente
- no existan reservaciones sin mesa
- no existan reservaciones sin horario

---

# Relaciones Generales

| Tabla | Relación | Tabla relacionada |
|---|---|---|
| clientes | 1:N | reservaciones |
| mesas | 1:N | reservaciones |
| horarios | 1:N | reservaciones |

---

# Script SQL

```sql
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
        UNIQUE(id_mesa, fecha_reserva, id_horario)
);
```

---

# Conclusión

La estructura relacional del sistema de reservaciones de Mochi House permite controlar correctamente la disponibilidad de mesas mediante relaciones entre clientes, mesas, horarios y reservaciones.

Además, la restricción `UNIQUE` evita conflictos de reservaciones duplicadas y garantiza una gestión organizada y eficiente del restaurante.
