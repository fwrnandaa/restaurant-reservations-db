# Manual de Usuario — Sistema de Reservaciones Mochi House

## Introducción

El sistema de reservaciones de Mochi House fue desarrollado para administrar las reservaciones de mesas dentro del restaurante de manera organizada y eficiente. Su principal función es controlar la disponibilidad de mesas mediante validaciones automáticas basadas en fecha, hora y mesa seleccionada.

El sistema está diseñado para ser utilizado por el recepcionista del restaurante, permitiendo registrar reservaciones, consultar disponibilidad de mesas y visualizar todas las reservaciones almacenadas.

---

# Objetivo del Sistema

El objetivo del sistema es:

- Registrar reservaciones de clientes.
- Evitar conflictos entre reservaciones.
- Controlar el horario permitido de atención.
- Mostrar la disponibilidad de mesas en tiempo real.
- Organizar las mesas mediante un layout visual interactivo.

---

# Acceso al Sistema

Al iniciar el sistema, se muestra la pantalla principal con acceso a las siguientes secciones:

- Inicio
- Reservación
- Layout de Mesas
- Reservaciones Registradas

Desde estas opciones el recepcionista puede navegar por las diferentes funciones del sistema.

---

# Interfaz Principal

La pantalla principal contiene:

- Menú de navegación.
- Acceso al formulario de reservaciones.
- Visualización del layout del restaurante.
- Acceso a la tabla de reservaciones registradas.

El sistema trabaja dinámicamente dependiendo de la fecha y hora seleccionadas.

---

# Módulo de Reservaciones

## Registrar una Reservación

Para registrar una reservación se deben seguir los siguientes pasos:

### Paso 1 — Acceder al formulario

Ingresar a la sección **Reservación** desde el menú principal.

### Paso 2 — Ingresar datos del cliente

Completar los siguientes campos:

- Nombre completo.
- Correo electrónico.
- Número telefónico.
- Fecha de reservación.
- Hora de reservación.
- Comentario o pedido especial.

### Paso 3 — Seleccionar fecha y hora

El sistema valida automáticamente que la hora ingresada esté dentro del horario permitido.

Horario válido:

- 10:00 AM a 10:00 PM

Si la hora es inválida, el sistema mostrará una notificación y bloqueará la operación.

### Paso 4 — Visualizar mesas disponibles

Después de seleccionar la fecha y hora, el sistema mostrará el layout visual del restaurante.

Las mesas cambian dinámicamente dependiendo de las reservaciones existentes.

Estados posibles:

- Disponible
- Ocupada
- No seleccionable

Cada mesa muestra:

- Número de mesa.
- Capacidad máxima.
- Estado actual.

### Paso 5 — Seleccionar una mesa

El recepcionista debe seleccionar una mesa disponible directamente desde el layout visual.

Las mesas ocupadas no permiten interacción.

### Paso 6 — Guardar reservación

El sistema realiza una validación automática para verificar que:

- La mesa no esté reservada en la misma fecha.
- La mesa no esté reservada a la misma hora.

Si no existe conflicto:

- La reservación se guarda correctamente.
- El sistema muestra una notificación de éxito.

---

# Validaciones del Sistema

## Validación de Horario

El sistema no permite reservaciones fuera del horario operativo del restaurante.

### Horario permitido

| Inicio | Fin |
|---|---|
| 10:00 AM | 10:00 PM |

Si el usuario intenta registrar una reservación fuera de este rango:

- El sistema muestra un mensaje de error.
- La operación es cancelada.

---

## Validación de Conflicto de Reservaciones

El sistema impide duplicar reservaciones utilizando:

- La misma mesa.
- La misma fecha.
- La misma hora.

### Ejemplo válido

| Mesa | Hora |
|---|---|
| Mesa 4 | 2:00 PM |
| Mesa 4 | 6:00 PM |

### Ejemplo inválido

| Mesa | Hora |
|---|---|
| Mesa 4 | 2:00 PM |
| Mesa 4 | 2:00 PM |

---

# Layout de Mesas

El layout representa visualmente la distribución de mesas dentro del restaurante.

## Información mostrada

Cada mesa contiene:

- Número de mesa.
- Capacidad máxima.
- Estado de disponibilidad.

## Funcionamiento dinámico

La disponibilidad cambia automáticamente dependiendo de:

- Fecha seleccionada.
- Hora seleccionada.
- Reservaciones existentes.

Una mesa puede aparecer:

- Disponible en un horario.
- Ocupada en otro horario.

---

# Reservaciones Registradas

La sección de reservaciones registradas permite consultar todas las reservaciones almacenadas en el sistema.

## Información mostrada

La tabla contiene:

- Nombre del cliente.
- Fecha de reservación.
- Hora.
- Mesa asignada.
- Capacidad de la mesa.
- Comentario o pedido especial.
- Acciones disponibles.

---

# Funcionamiento de la Base de Datos

El sistema utiliza una base de datos relacional para mantener organizada toda la información.

## Tabla `clientes`

Guarda los datos de las personas que realizan reservaciones.

### Información almacenada

- Nombre completo.
- Correo electrónico.
- Teléfono.

Cada cliente posee un identificador único:

```sql
id_cliente
```

---

## Tabla `mesas`

Almacena la información de las mesas del restaurante.

### Información almacenada

- Número de mesa.
- Capacidad máxima.
- Estado de disponibilidad.

Cada mesa posee un identificador único:

```sql
id_mesa
```

---

## Tabla `reservaciones`

Es la tabla principal del sistema.

Relaciona:

- Clientes.
- Mesas.
- Fecha.
- Hora.
- Comentarios.

### Información almacenada

- Cliente asociado.
- Mesa seleccionada.
- Fecha de reservación.
- Hora.
- Comentarios especiales.

Identificador principal:

```sql
id_reservacion
```

Llaves foráneas utilizadas:

```sql
id_cliente
id_mesa
```

---

# Restricción de Duplicidad

El sistema utiliza una restricción para evitar conflictos de reservaciones:

```sql
UNIQUE(id_mesa, fecha_reserva, hora_reserva)
```

Esta restricción evita que:

- Una mesa sea reservada dos veces.
- Existan conflictos en el mismo horario.

---

# Tipos de Datos Utilizados

| Tipo de dato | Uso |
|---|---|
| VARCHAR | Nombres, correos y teléfonos |
| INT | Identificadores y capacidades |
| DATE | Fechas |
| TIME | Horas |
| DATETIME | Fecha y hora completas |
| TEXT | Comentarios largos |
| ENUM | Estados específicos |

---

# Reglas Generales del Sistema

- Las reservaciones funcionan mediante validaciones automáticas.
- Una mesa no puede reservarse dos veces en el mismo horario.
- Una mesa puede utilizarse varias veces durante el día si las horas son diferentes.
- La disponibilidad depende de:
  - Fecha.
  - Hora.
  - Mesa seleccionada.
- El layout cambia dinámicamente según las reservaciones existentes.
- El sistema está orientado al uso interno del restaurante.

---

# Recomendaciones de Uso

- Verificar correctamente la fecha y hora antes de guardar.
- Confirmar que la mesa seleccionada esté disponible.
- Revisar los datos del cliente antes de registrar la reservación.
- Utilizar comentarios para pedidos especiales o aclaraciones.

---

# Conclusión

El sistema de reservaciones de Mochi House permite administrar las mesas del restaurante de manera organizada mediante validaciones automáticas y control dinámico de disponibilidad.

Gracias a su estructura relacional y al uso de restricciones automáticas, el sistema evita conflictos de reservaciones y facilita la gestión diaria del restaurante.
