# Mochi House Reservation System

## Sistema Profesional de Reservaciones

---

# Información General del Proyecto

## Nombre del Proyecto

Mochi House Reservation System

---

# Descripción General

El sistema de reservaciones de Mochi House fue desarrollado para administrar la disponibilidad de mesas dentro de un restaurante mediante un control dinámico basado en fecha, hora y mesa seleccionada.

El objetivo principal del sistema es evitar conflictos de reservaciones y mejorar la organización operativa del restaurante mediante validaciones automáticas y visualización en tiempo real de las mesas disponibles.

El sistema permite que el recepcionista gestione reservaciones utilizando un layout visual interactivo donde cada mesa posee una capacidad específica y cambia dinámicamente de estado dependiendo de las reservaciones registradas.

La lógica principal del sistema impide que una mesa sea reservada dos veces en la misma fecha y hora.

Además, el sistema valida que las reservaciones únicamente puedan realizarse dentro del horario permitido del restaurante, el cual es de 10:00 AM a 10:00 PM.

---

# Objetivo General

Desarrollar un sistema web profesional de reservaciones para restaurantes que permita administrar la disponibilidad de mesas en tiempo real mediante validaciones automáticas de fecha, hora y capacidad.

---

# Objetivos Específicos

* Implementar un layout visual interactivo para selección de mesas.
* Validar automáticamente conflictos de reservaciones.
* Controlar horarios válidos de atención.
* Facilitar la organización del restaurante.
* Centralizar las reservaciones registradas.
* Mejorar la experiencia operativa del recepcionista.
* Evitar duplicidad de reservaciones.
* Mostrar disponibilidad dinámica de mesas.

---

# Alcance del Proyecto

El sistema permite:

* Registrar reservaciones.
* Seleccionar fecha y hora.
* Seleccionar mesa desde un layout visual.
* Visualizar mesas disponibles.
* Mostrar reservaciones registradas.
* Administrar capacidades de mesas.
* Validar horarios permitidos.
* Evitar conflictos entre reservaciones.

---

# Limitaciones del Sistema

* El sistema actualmente funciona para un solo restaurante.
* No incluye pagos en línea.
* No incluye autenticación de usuarios.
* No cuenta con notificaciones automáticas.
* No incluye integración con aplicaciones móviles.

---

# Tecnologías Utilizadas

| Tecnología | Uso                            |
| ---------- | ------------------------------ |
| HTML       | Estructura del sistema         |
| CSS        | Diseño visual y estilos        |
| JavaScript | Lógica dinámica y validaciones |
| PHP        | Procesamiento backend          |
| MySQL      | Base de datos                  |
| XAMPP      | Servidor local                 |
| GitHub     | Control de versiones           |

---

# Roles del Sistema

## Recepcionista

El recepcionista es el usuario principal del sistema.

Funciones:

* Registrar reservaciones.
* Ver mesas disponibles.
* Consultar reservaciones.
* Seleccionar mesas.
* Confirmar disponibilidad.
* Gestionar información del cliente.

---

# Equipo Scrum

| Integrante | Rol Scrum               | Responsabilidad                        |
| ---------- | ----------------------- | -------------------------------------- |
| Alberto    | Scrum Master            | Organización y coordinación del equipo |
| Fernanda   | Backend Logic Developer | Desarrollo de lógica y validaciones    |
| Alexis     | Frontend Developer      | Diseño visual e interfaz gráfica       |
| Karen      | Backend Developer       | Programación y conexión funcional      |

---

# Roles Scrum

## Scrum Master

Alberto se encarga de organizar las actividades del equipo, coordinar avances y asegurar el cumplimiento de los sprints.

## Development Team

Fernanda, Alexis y Karen participan directamente en el desarrollo técnico del sistema.

## Product Owner

El equipo define conjuntamente los requerimientos funcionales del sistema basándose en las necesidades operativas del restaurante.

---

# Descripción Funcional del Sistema

## Página Principal

La página principal muestra información general del sistema y permite navegar entre las distintas secciones:

* Inicio
* Reservar
* Mesas
* Reservaciones

También presenta un acceso directo al formulario de reservaciones.

---

## Formulario de Reservación

El formulario permite ingresar:

* Nombre completo
* Correo electrónico
* Número telefónico
* Fecha
* Hora
* Comentarios especiales

Posteriormente el usuario debe seleccionar una mesa desde el layout visual.

---

## Layout de Mesas

El layout representa visualmente la distribución de las mesas del restaurante.

Cada mesa muestra:

* Número de mesa
* Capacidad
* Estado de disponibilidad

Las mesas cambian dinámicamente dependiendo de la fecha y hora seleccionada.

---

# Distribución de Mesas

| Mesa   | Capacidad  |
| ------ | ---------- |
| Mesa 1 | 2 personas |
| Mesa 2 | 4 personas |
| Mesa 3 | 4 personas |
| Mesa 4 | 6 personas |
| Mesa 5 | 6 personas |
| Mesa 6 | 2 personas |
| Mesa 7 | 8 personas |
| Mesa 8 | 4 personas |

---

# Reglas de Negocio

## RN-01

El sistema únicamente permitirá reservaciones entre las 10:00 AM y las 10:00 PM.

## RN-02

No se puede reservar una mesa si ya existe una reservación registrada para la misma fecha y hora.

## RN-03

Una mesa sí puede volver a utilizarse el mismo día si la hora es diferente.

## RN-04

El usuario debe seleccionar obligatoriamente una mesa.

## RN-05

La mesa seleccionada debe respetar la capacidad máxima permitida.

## RN-06

Las mesas cambian dinámicamente de estado según la hora seleccionada.

## RN-07

Todos los campos obligatorios deben completarse antes de confirmar la reservación.

---

# Requerimientos Funcionales

| Código | Requerimiento                                               |
| ------ | ----------------------------------------------------------- |
| RF-01  | El sistema debe permitir registrar reservaciones            |
| RF-02  | El sistema debe validar horarios permitidos                 |
| RF-03  | El sistema debe mostrar mesas disponibles                   |
| RF-04  | El sistema debe impedir reservaciones duplicadas            |
| RF-05  | El sistema debe almacenar reservaciones                     |
| RF-06  | El sistema debe mostrar reservaciones registradas           |
| RF-07  | El sistema debe permitir seleccionar mesas desde un layout  |
| RF-08  | El sistema debe mostrar capacidades de mesas                |
| RF-09  | El sistema debe validar datos del formulario                |
| RF-10  | El sistema debe actualizar dinámicamente el estado de mesas |

---

# Requerimientos No Funcionales

| Código | Requerimiento                                           |
| ------ | ------------------------------------------------------- |
| RNF-01 | El sistema debe tener una interfaz intuitiva            |
| RNF-02 | El sistema debe responder rápidamente                   |
| RNF-03 | El sistema debe mantener consistencia visual            |
| RNF-04 | El sistema debe ser compatible con navegadores modernos |
| RNF-05 | El sistema debe organizar correctamente la información  |
| RNF-06 | El sistema debe permitir mantenimiento futuro           |

---

# Casos de Uso

## Caso de Uso 1 — Registrar Reservación

### Actor Principal

Recepcionista

### Descripción

Permite registrar una reservación dentro del horario permitido.

### Flujo Principal

1. El recepcionista ingresa al formulario.
2. Captura los datos del cliente.
3. Selecciona fecha y hora.
4. Visualiza las mesas disponibles.
5. Selecciona una mesa.
6. El sistema valida disponibilidad.
7. El sistema guarda la reservación.
8. Se muestra confirmación.

### Flujo Alternativo

* Si la mesa ya está ocupada, el sistema bloquea la reservación.
* Si la hora es inválida, el sistema muestra un mensaje de error.

---

## Caso de Uso 2 — Visualizar Layout

### Actor Principal

Recepcionista

### Descripción

Permite visualizar la disponibilidad de las mesas.

### Flujo Principal

1. El usuario selecciona fecha y hora.
2. El sistema consulta reservaciones.
3. El sistema actualiza el estado de las mesas.
4. Se muestran mesas disponibles y ocupadas.

---

## Caso de Uso 3 — Consultar Reservaciones

### Actor Principal

Recepcionista

### Descripción

Permite consultar todas las reservaciones registradas.

### Flujo Principal

1. El usuario accede a la sección de reservaciones.
2. El sistema consulta la información.
3. Se muestran las reservaciones registradas.

---

# Historias de Usuario

## Épica 1 — Gestión de Reservaciones

### HU-01

Como recepcionista
quiero registrar reservaciones
para organizar correctamente las mesas del restaurante.

### Criterios de Aceptación

* Debe permitir ingresar datos del cliente.
* Debe permitir seleccionar fecha y hora.
* Debe permitir seleccionar mesa.
* Debe guardar la reservación.

### Prioridad

Alta

### Story Points

8

---

### HU-02

Como recepcionista
quiero visualizar mesas disponibles
para evitar conflictos de reservaciones.

### Criterios de Aceptación

* Las mesas disponibles deben mostrarse visualmente.
* Las mesas ocupadas deben bloquearse.
* El layout debe actualizarse dinámicamente.

### Prioridad

Alta

### Story Points

8

---

### HU-03

Como recepcionista
quiero validar horarios permitidos
para evitar reservaciones fuera del horario operativo.

### Criterios de Aceptación

* El sistema debe permitir horarios únicamente entre 10:00 AM y 10:00 PM.
* Debe mostrar mensajes de error.
* Debe impedir guardar horarios inválidos.

### Prioridad

Alta

### Story Points

5

---

### HU-04

Como recepcionista
quiero visualizar las reservaciones registradas
para consultar información de los clientes.

### Criterios de Aceptación

* Debe mostrarse una tabla.
* Debe incluir fecha, hora y mesa.
* Debe incluir comentarios especiales.

### Prioridad

Media

### Story Points

5

---

### HU-05

Como recepcionista
quiero impedir reservaciones duplicadas
para evitar conflictos entre clientes.

### Criterios de Aceptación

* No debe permitirse repetir mesa, fecha y hora.
* Debe mostrarse una alerta de conflicto.
* El sistema debe validar automáticamente.

### Prioridad

Alta

### Story Points

8

---

## Épica 2 — Interfaz y Experiencia Visual

### HU-06

Como recepcionista
quiero una interfaz visual organizada
para utilizar el sistema fácilmente.

### Criterios de Aceptación

* Debe existir menú de navegación.
* Debe existir diseño consistente.
* Debe tener buena legibilidad.

### Prioridad

Media

### Story Points

3

---

### HU-07

Como recepcionista
quiero seleccionar mesas desde un layout visual
para identificar rápidamente capacidades y disponibilidad.

### Criterios de Aceptación

* Cada mesa debe mostrar capacidad.
* Las mesas deben ser seleccionables.
* Deben existir cambios visuales de estado.

### Prioridad

Alta

### Story Points

8

---

### HU-08

Como recepcionista
quiero visualizar mensajes de validación
para conocer errores durante el registro.

### Criterios de Aceptación

* Deben mostrarse alertas.
* Deben mostrarse errores claros.
* Debe indicarse la causa del problema.

### Prioridad

Media

### Story Points

3

---

## Épica 3 — Persistencia y Base de Datos

### HU-09

Como desarrollador
quiero conectar el sistema a MySQL
para almacenar reservaciones permanentemente.

### Criterios de Aceptación

* Debe existir conexión funcional.
* Deben almacenarse reservaciones.
* Deben consultarse datos guardados.

### Prioridad

Alta

### Story Points

13

---

### HU-10

Como desarrollador
quiero estructurar correctamente la base de datos
para mantener integridad de información.

### Criterios de Aceptación

* Deben existir tablas normalizadas.
* Deben existir relaciones.
* Debe existir integridad de datos.

### Prioridad

Alta

### Story Points

8

---

# Product Backlog

| ID    | Historia                             | Prioridad | Story Points | Estado     |
| ----- | ------------------------------------ | --------- | ------------ | ---------- |
| HU-01 | Registrar reservaciones              | Alta      | 8            | Completado |
| HU-02 | Visualizar mesas disponibles         | Alta      | 8            | Completado |
| HU-03 | Validar horarios permitidos          | Alta      | 5            | Completado |
| HU-04 | Visualizar reservaciones registradas | Media     | 5            | Completado |
| HU-05 | Impedir reservaciones duplicadas     | Alta      | 8            | Completado |
| HU-06 | Interfaz organizada                  | Media     | 3            | Completado |
| HU-07 | Layout visual interactivo            | Alta      | 8            | Completado |
| HU-08 | Mensajes de validación               | Media     | 3            | Completado |
| HU-09 | Conexión MySQL                       | Alta      | 13           | Pendiente  |
| HU-10 | Estructura de base de datos          | Alta      | 8            | Pendiente  |

---

# Sprint Planning

# Sprint 1

## Objetivo

Diseñar la estructura visual inicial del sistema.

## Actividades

* Diseño de interfaz.
* Navbar principal.
* Página de inicio.
* Diseño general.

## Historias Incluidas

* HU-06

## Responsable Principal

Alexis

---

# Sprint 2

## Objetivo

Desarrollar formulario de reservaciones.

## Actividades

* Campos del formulario.
* Validaciones básicas.
* Diseño responsivo.

## Historias Incluidas

* HU-01
* HU-03
* HU-08

## Responsable Principal

Karen

---

# Sprint 3

## Objetivo

Implementar layout visual interactivo.

## Actividades

* Diseño de mesas.
* Capacidades.
* Selección visual.
* Estados dinámicos.

## Historias Incluidas

* HU-02
* HU-07

## Responsable Principal

Alexis

---

# Sprint 4

## Objetivo

Implementar lógica de validación.

## Actividades

* Validación de conflictos.
* Restricción de horarios.
* Bloqueo de mesas ocupadas.

## Historias Incluidas

* HU-05

## Responsable Principal

Fernanda

---

# Sprint 5

## Objetivo

Conectar sistema con base de datos.

## Actividades

* Conexión MySQL.
* Consultas SQL.
* Guardado permanente.
* Consulta de reservaciones.

## Historias Incluidas

* HU-09
* HU-10

## Responsable Principal

Karen

---

# Sprint Backlog

| Sprint   | Actividad                | Responsable | Estado     |
| -------- | ------------------------ | ----------- | ---------- |
| Sprint 1 | Diseño UI                | Alexis      | Completado |
| Sprint 1 | Navbar                   | Alexis      | Completado |
| Sprint 1 | Página principal         | Alexis      | Completado |
| Sprint 2 | Formulario reservaciones | Karen       | Completado |
| Sprint 2 | Validación de horarios   | Fernanda    | Completado |
| Sprint 2 | Mensajes de error        | Fernanda    | Completado |
| Sprint 3 | Layout de mesas          | Alexis      | Completado |
| Sprint 3 | Estados dinámicos        | Fernanda    | Completado |
| Sprint 3 | Capacidades              | Alexis      | Completado |
| Sprint 4 | Validación conflictos    | Fernanda    | Completado |
| Sprint 4 | Restricción de horarios  | Fernanda    | Completado |
| Sprint 5 | Conexión MySQL           | Karen       | Pendiente  |
| Sprint 5 | Consultas SQL            | Karen       | Pendiente  |
| Sprint 5 | Persistencia de datos    | Karen       | Pendiente  |

---

# Riesgos del Proyecto

| Riesgo                      | Impacto | Solución                       |
| --------------------------- | ------- | ------------------------------ |
| Conflictos de reservaciones | Alto    | Validaciones automáticas       |
| Errores en horarios         | Alto    | Restricción horaria            |
| Pérdida de datos            | Alto    | Uso de MySQL                   |
| Errores visuales            | Medio   | Pruebas de interfaz            |
| Problemas de integración    | Medio   | Control de versiones en GitHub |

---

# Arquitectura General

## Frontend

* HTML
* CSS
* JavaScript

## Backend

* PHP

## Base de Datos

* MySQL

---

# Definición de Ready

Una historia de usuario estará lista para desarrollarse cuando:

* Esté correctamente definida.
* Tenga criterios de aceptación.
* Tenga prioridad asignada.
* El equipo comprenda su objetivo.
* Existan tareas identificadas.

---

# Definición de Done

Una funcionalidad se considerará terminada cuando:

* El código funcione correctamente.
* Existan validaciones completas.
* No existan errores críticos.
* La interfaz funcione correctamente.
* La funcionalidad sea demostrable.
* El equipo apruebe el resultado.

---

# Flujo General del Sistema

1. El recepcionista accede al sistema.
2. Ingresa al apartado de reservaciones.
3. Captura información del cliente.
4. Selecciona fecha.
5. Selecciona hora.
6. El sistema valida horario permitido.
7. El sistema actualiza el layout.
8. El usuario selecciona una mesa.
9. El sistema valida disponibilidad.
10. La reservación se guarda.
11. La información aparece en reservaciones registradas.

---

# Conclusión

El sistema Mochi House Reservation System fue diseñado para optimizar la administración de reservaciones dentro de un restaurante mediante un control dinámico de disponibilidad de mesas.

La implementación de validaciones automáticas, selección visual de mesas y control de conflictos permite mejorar la organización operativa y evitar errores comunes en la gestión manual de reservaciones.

El uso de metodologías Scrum permitió organizar correctamente el desarrollo del proyecto mediante sprints, historias de usuario y distribución clara de responsabilidades entre los integrantes del equipo.
