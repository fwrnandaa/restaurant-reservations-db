# Diccionario de Datos — Sistema de Reservaciones Mochi House

## Tabla: `clientes`

### Descripción
Almacena la información de las personas que realizan reservaciones dentro del restaurante.

| Campo | Tipo de dato | Restricciones | Descripción |
|---|---|---|---|
| id_cliente | INT | PK, AUTO_INCREMENT, NOT NULL | Identificador único del cliente |
| nombre_completo | VARCHAR(100) | NOT NULL | Nombre completo del cliente |
| correo | VARCHAR(100) | UNIQUE, NOT NULL | Correo electrónico del cliente |
| telefono | VARCHAR(15) | NOT NULL | Número telefónico del cliente |
| fecha_registro | DATETIME | DEFAULT CURRENT_TIMESTAMP | Fecha y hora de registro del cliente |

### Llave primaria
- `id_cliente`

### Relaciones
- Un cliente puede tener muchas reservaciones.
- Relación 1:N con `reservaciones`.

---

# Tabla: `mesas`

### Descripción
Guarda la información de las mesas disponibles dentro del restaurante y permite controlar su capacidad y disponibilidad.

| Campo | Tipo de dato | Restricciones | Descripción |
|---|---|---|---|
| id_mesa | INT | PK, AUTO_INCREMENT, NOT NULL | Identificador único de la mesa |
| numero_mesa | INT | UNIQUE, NOT NULL | Número visible de la mesa |
| capacidad | INT | NOT NULL | Cantidad máxima de personas permitidas |
| zona | VARCHAR(50) | NOT NULL | Área o sección del restaurante |
| estado | ENUM('disponible','ocupada','mantenimiento') | DEFAULT 'disponible' | Estado actual de la mesa |

### Llave primaria
- `id_mesa`

### Relaciones
- Una mesa puede aparecer en muchas reservaciones.
- Relación 1:N con `reservaciones`.

---

# Tabla: `horarios`

### Descripción
Controla el horario permitido para realizar reservaciones dentro del restaurante.

| Campo | Tipo de dato | Restricciones | Descripción |
|---|---|---|---|
| id_horario | INT | PK, AUTO_INCREMENT, NOT NULL | Identificador del horario |
| hora_apertura | TIME | NOT NULL | Hora de apertura del restaurante |
| hora_cierre | TIME | NOT NULL | Hora de cierre del restaurante |
| activo | BOOLEAN | DEFAULT TRUE | Indica si el horario está habilitado |

### Llave primaria
- `id_horario`

---

# Tabla: `reservaciones`

### Descripción
Tabla principal del sistema. Guarda toda la información relacionada con las reservaciones realizadas por los clientes.

| Campo | Tipo de dato | Restricciones | Descripción |
|---|---|---|---|
| id_reservacion | INT | PK, AUTO_INCREMENT, NOT NULL | Identificador único de la reservación |
| id_cliente | INT | FK, NOT NULL | Cliente que realizó la reservación |
| id_mesa | INT | FK, NOT NULL | Mesa asignada para la reservación |
| fecha_reserva | DATE | NOT NULL | Fecha seleccionada para la reservación |
| hora_reserva | TIME | NOT NULL | Hora seleccionada para la reservación |
| cantidad_personas | INT | NOT NULL | Cantidad de personas de la reservación |
| comentario | TEXT | NULL | Comentarios o pedidos especiales |
| estado | ENUM('pendiente','confirmada','cancelada','completada') | DEFAULT 'pendiente' | Estado actual de la reservación |
| fecha_creacion | DATETIME | DEFAULT CURRENT_TIMESTAMP | Fecha y hora de creación de la reservación |

### Llave primaria
- `id_reservacion`

### Llaves foráneas
- `id_cliente` → `clientes(id_cliente)`
- `id_mesa` → `mesas(id_mesa)`

### Relaciones
- Muchas reservaciones pertenecen a un cliente.
- Muchas reservaciones pueden utilizar una mesa en diferentes horarios.

### Restricciones importantes

```sql
UNIQUE(id_mesa, fecha_reserva, hora_reserva)
```

Esta restricción evita que una mesa pueda reservarse dos veces en la misma fecha y hora.

---

# Relaciones del Sistema

| Tabla origen | Relación | Tabla destino |
|---|---|---|
| clientes | 1:N | reservaciones |
| mesas | 1:N | reservaciones |

---

# Reglas del Negocio

## Validación de horario

Las reservaciones únicamente pueden realizarse dentro del horario permitido del restaurante:

- Hora de apertura: `10:00 AM`
- Hora de cierre: `10:00 PM`

Si el usuario selecciona una hora fuera de este rango, el sistema bloquea automáticamente la reservación.

---

## Control de disponibilidad

El sistema valida constantemente:

- Mesa seleccionada
- Fecha
- Hora

Si ya existe una reservación con la misma mesa, fecha y hora, el sistema marca la mesa como ocupada y evita duplicados.

---

## Disponibilidad dinámica

Las mesas cambian automáticamente de estado dependiendo de las reservaciones registradas para cada horario.

Ejemplo:

- Mesa 4 → Disponible a las 2:00 PM
- Mesa 4 → Ocupada a las 6:00 PM

---

# Tipos de Datos Utilizados

| Tipo de dato | Uso dentro del sistema |
|---|---|
| INT | Identificadores y cantidades |
| VARCHAR | Nombres, correos y teléfonos |
| DATE | Fechas de reservación |
| TIME | Horas de reservación |
| DATETIME | Registro de fecha y hora completa |
| TEXT | Comentarios largos |
| ENUM | Estados definidos |
| BOOLEAN | Valores verdadero/falso |

---

# Integridad Relacional

El sistema utiliza un modelo relacional para mantener organizada toda la información y evitar duplicidad de datos.

Las llaves primarias (`PK`) identifican cada registro de forma única y las llaves foráneas (`FK`) permiten relacionar correctamente:

- Clientes
- Mesas
- Reservaciones

Esto garantiza consistencia, seguridad y control dentro del sistema de reservaciones de Mochi House.
