# Sistema de Gestión de Reservaciones de Restaurante

## Descripción del Proyecto
Este proyecto consiste en el desarrollo de un sistema web para la gestión de reservaciones en un restaurante. Permite registrar clientes, administrar mesas y gestionar reservaciones de forma organizada, asegurando una correcta asignación de espacios según la capacidad disponible.

La interfaz fue diseñada como un panel tipo dashboard, priorizando la claridad y la facilidad de uso.

---

## Objetivo
Desarrollar una solución digital que optimice el proceso de reservaciones, reduzca errores y mejore la organización del restaurante.

---

## Funcionalidades Principales

### Gestión de Clientes
- Registro de clientes
- Datos:
  - Nombre
  - Teléfono
  - Email 

### Gestión de Mesas
- Registro de mesas con:
  - Número
  - Capacidad
  - Ubicación
- La disponibilidad se calcula automáticamente

### Gestión de Reservaciones
- Crear reservaciones con:
  - Cliente
  - Mesa asignada
  - Fecha y hora (campo unificado)
  - Número de personas
- Validaciones:
  - El número de personas no puede exceder la capacidad de la mesa
- Estado de la reservación:
  - Activa
  - Cancelada
  - Finalizada

---

## Estructura del Sistema

### Base de Datos

**Clientes**
- id_cliente (PK)
- nombre
- telefono
- email

**Mesas**
- id_mesa (PK)
- numero
- capacidad
- ubicacion

**Reservaciones**
- id_reservacion (PK)
- cliente_id (FK)
- mesa_id (FK)
- fecha_hora
- personas
- estado

---

## Tecnologías Utilizadas
-MongoDB
- Figma

---

## Lógica del Sistema
- La disponibilidad de mesas no se almacena, se calcula en función de las reservaciones existentes.
- Se evita la duplicación de datos mediante el uso de claves foráneas.
- Se implementan validaciones para garantizar la integridad de la información.

---

