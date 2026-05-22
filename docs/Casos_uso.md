# Casos de Uso — Sistema de Reservaciones Mochi House

## Descripción General

El sistema de reservaciones de Mochi House permite administrar la disponibilidad de mesas dentro del restaurante mediante validaciones automáticas basadas en fecha, hora y mesa seleccionada. El sistema es utilizado por el recepcionista y tiene como objetivo evitar conflictos entre reservaciones, controlar el horario permitido y organizar eficientemente el espacio del restaurante.

---

# Actores del Sistema

## Actor Principal

### Recepcionista
Persona encargada de registrar, consultar y administrar las reservaciones del restaurante.

---

# Caso de Uso 1 — Registrar Reservación

## Objetivo
Permitir al recepcionista registrar una nueva reservación para un cliente.

## Actor Principal
Recepcionista

## Flujo Principal

1. El recepcionista accede a la sección de reservaciones.
2. El sistema muestra el formulario de registro.
3. El recepcionista ingresa:
   - Nombre completo del cliente.
   - Correo electrónico.
   - Número telefónico.
   - Fecha de la reservación.
   - Hora de la reservación.
   - Comentario o pedido especial.
4. El sistema valida que la hora esté dentro del horario permitido.
5. El sistema muestra el layout de mesas disponibles para la fecha y hora seleccionadas.
6. El recepcionista selecciona una mesa desde el layout visual.
7. El sistema verifica que la mesa no esté reservada en la misma fecha y hora.
8. El sistema guarda la reservación.
9. El sistema muestra un mensaje de reservación registrada correctamente.

## Flujo Alternativo

### Hora fuera del horario permitido

1. El recepcionista selecciona una hora menor a las 10:00 AM o mayor a las 10:00 PM.
2. El sistema muestra una notificación indicando que la hora no es válida.
3. El sistema bloquea la reservación.

### Mesa ocupada

1. El recepcionista selecciona una mesa ya reservada para la misma fecha y hora.
2. El sistema detecta el conflicto.
3. La mesa aparece como ocupada.
4. El sistema impide guardar la reservación.

## Reglas de Negocio

- El horario permitido es de 10:00 AM a 10:00 PM.
- Una mesa no puede reservarse dos veces en la misma fecha y hora.
- Una misma mesa puede utilizarse varias veces en un día si las horas son diferentes.

---

# Caso de Uso 2 — Visualizar Disponibilidad de Mesas

## Objetivo
Permitir visualizar las mesas disponibles según la fecha y hora seleccionadas.

## Actor Principal
Recepcionista

## Flujo Principal

1. El recepcionista selecciona una fecha y una hora.
2. El sistema consulta las reservaciones existentes.
3. El sistema actualiza dinámicamente el layout de mesas.
4. Las mesas disponibles aparecen libres.
5. Las mesas reservadas aparecen ocupadas.

## Reglas de Negocio

- El estado de las mesas cambia dependiendo del horario seleccionado.
- La disponibilidad se actualiza automáticamente según las reservaciones registradas.

---

# Caso de Uso 3 — Consultar Reservaciones Registradas

## Objetivo
Permitir visualizar todas las reservaciones almacenadas en el sistema.

## Actor Principal
Recepcionista

## Flujo Principal

1. El recepcionista accede a la sección de reservaciones registradas.
2. El sistema muestra una tabla con:
   - Nombre del cliente.
   - Fecha.
   - Hora.
   - Mesa asignada.
   - Capacidad de la mesa.
   - Comentario o pedido especial.
   - Acciones disponibles.

---

# Caso de Uso 4 — Validar Horario de Reservación

## Objetivo
Verificar que las reservaciones se realicen únicamente dentro del horario permitido.

## Actor Principal
Sistema

## Flujo Principal

1. El usuario selecciona una hora.
2. El sistema compara la hora ingresada con el horario permitido.
3. Si la hora está dentro del rango:
   - El sistema permite continuar.
4. Si la hora está fuera del rango:
   - El sistema muestra una notificación de error.
   - El sistema bloquea la operación.

## Reglas de Negocio

- Horario permitido:
  - Inicio: 10:00 AM
  - Fin: 10:00 PM

---

# Caso de Uso 5 — Validar Conflicto de Reservaciones

## Objetivo
Evitar duplicidad de reservaciones sobre una misma mesa.

## Actor Principal
Sistema

## Flujo Principal

1. El sistema recibe:
   - Mesa seleccionada.
   - Fecha.
   - Hora.
2. El sistema consulta las reservaciones existentes.
3. El sistema compara:
   - Mesa.
   - Fecha.
   - Hora.
4. Si existe coincidencia:
   - La reservación es rechazada.
5. Si no existe coincidencia:
   - La reservación puede registrarse.

## Reglas de Negocio

- No pueden existir dos reservaciones con:
  - La misma mesa.
  - La misma fecha.
  - La misma hora.

---

# Caso de Uso 6 — Seleccionar Mesa desde el Layout

## Objetivo
Permitir seleccionar visualmente una mesa dentro de la distribución del restaurante.

## Actor Principal
Recepcionista

## Flujo Principal

1. El sistema muestra el layout del restaurante.
2. Cada mesa muestra:
   - Número de mesa.
   - Capacidad máxima.
   - Estado de disponibilidad.
3. El recepcionista selecciona una mesa disponible.
4. El sistema asigna la mesa a la reservación.

## Reglas de Negocio

- Solo pueden seleccionarse mesas disponibles.
- Las mesas ocupadas no permiten interacción.

---

# Requerimientos Funcionales Relacionados

- Registrar reservaciones.
- Validar horarios permitidos.
- Mostrar disponibilidad en tiempo real.
- Evitar conflictos de reservaciones.
- Mostrar layout visual del restaurante.
- Consultar reservaciones registradas.
- Administrar mesas y capacidad.

---

# Reglas Generales del Sistema

- El sistema funciona mediante validaciones automáticas.
- La disponibilidad depende de:
  - Fecha.
  - Hora.
  - Mesa seleccionada.
- El layout cambia dinámicamente según las reservaciones existentes.
- El sistema está orientado al uso interno del restaurante por parte del recepcionista.
