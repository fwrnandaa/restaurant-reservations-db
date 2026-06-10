# 🍡 Software Requirements Specification (SRS)
# Sistema de Reservaciones Mochi House

---

# 1. Introducción

## 1.1 Propósito

El propósito de este documento es definir los requisitos de software para el Sistema de Reservaciones Mochi House. El sistema permitirá a los clientes realizar y gestionar reservaciones de manera eficiente, evitando conflictos de horarios y optimizando el uso de las mesas del restaurante.

---

## 1.2 Alcance

El Sistema de Reservaciones Mochi House es una aplicación web diseñada para administrar reservaciones de restaurante.

El sistema permitirá a los usuarios:

- Registrarse en el sistema.
- Iniciar sesión.
- Crear reservaciones.
- Consultar reservaciones.
- Modificar reservaciones.
- Cancelar reservaciones.
- Consultar disponibilidad de mesas.
- Consultar horarios disponibles.
- Asignar mesas según disponibilidad.
- Evitar conflictos de reservaciones.
- Almacenar información en una base de datos.

### Tecnologías Utilizadas

| Tecnología | Versión |
|------------|----------|
| HTML | HTML5 |
| CSS | CSS3 |
| JavaScript | ECMAScript 2023 |
| Node.js | v22.16.0 |
| Express.js | v5.1.0 |
| MySQL | v8.0 |
| Git | v2.49 |
| GitHub | Plataforma Web |
| Visual Studio Code | v1.100 |
---

## 1.3 Audiencia Objetivo

Este documento está dirigido a:

- Desarrolladores
- Probadores (Testers)
- Docentes
- Interesados del proyecto
- Integrantes del equipo

---

## 1.4 Definiciones

| Término | Definición |
|----------|------------|
| Reservación | Apartado de una mesa para una fecha y horario específico |
| Cliente | Usuario que solicita una reservación |
| Mesa | Espacio físico asignado a una reservación |
| Disponibilidad | Mesas disponibles para reservar |
| Conflicto | Dos reservaciones asignadas a la misma mesa en la misma fecha y horario |

---

# 2. Descripción General

## 2.1 Perspectiva del Producto

El Sistema de Reservaciones Mochi House es una aplicación web independiente conectada a una base de datos MySQL.

### Componentes del Sistema

- Frontend (HTML, CSS, JavaScript)
- Backend (Node.js, Express.js)
- Base de Datos (MySQL)

---

## 2.2 Funciones del Producto

El sistema deberá:

1. Registrar clientes.
2. Autenticar usuarios.
3. Crear reservaciones.
4. Consultar reservaciones.
5. Modificar reservaciones.
6. Cancelar reservaciones.
7. Mostrar disponibilidad de mesas.
8. Mostrar horarios disponibles.
9. Evitar conflictos de reservaciones.
10. Administrar información de reservaciones.
11. Gestionar mesas disponibles.
12. Almacenar información de manera segura.

---

## 2.3 Clases de Usuario

### Cliente

**Permisos:**

- Registrarse.
- Iniciar sesión.
- Crear reservaciones.
- Consultar reservaciones.
- Modificar reservaciones.
- Cancelar reservaciones.
- Consultar disponibilidad.
- Consultar horarios.

---

## 2.4 Restricciones

- Se requiere conexión a Internet.
- Se requiere una base de datos MySQL.
- Se requiere un navegador moderno.
- El servidor backend debe estar activo.
- Las reservaciones deben validarse antes de almacenarse.
- No se permiten reservaciones duplicadas.

---

# 3. Requisitos Funcionales

## FR-01 Registro de Usuario

### Descripción

El sistema permitirá que nuevos usuarios creen una cuenta.

---

## FR-02 Inicio de Sesión

### Descripción

El sistema permitirá autenticar usuarios registrados.

---

## FR-03 Crear Reservación

### Descripción

El sistema permitirá a los clientes crear reservaciones.

---

## FR-04 Consultar Reservaciones

### Descripción

El sistema permitirá visualizar las reservaciones registradas.

---

## FR-05 Modificar Reservación

### Descripción

El sistema permitirá modificar una reservación existente.

---

## FR-06 Cancelar Reservación

### Descripción

El sistema permitirá cancelar reservaciones.

---

## FR-07 Consultar Disponibilidad

### Descripción

El sistema mostrará las mesas disponibles para una fecha y horario determinados.

---

## FR-08 Detección de Conflictos

### Descripción

El sistema evitará reservaciones duplicadas.

---

## FR-09 Consulta de Mesas

### Descripción

El sistema permitirá consultar la información de las mesas disponibles.

---

## FR-10 Consulta de Horarios

### Descripción

El sistema permitirá consultar los horarios disponibles.

---

## FR-11 Almacenamiento de Datos

### Descripción

El sistema almacenará la información de clientes y reservaciones.

---

## FR-12 Administración de Reservaciones

### Descripción

El sistema permitirá administrar las reservaciones registradas.

---

# 4. Requisitos de Base de Datos

## 4.1 Tabla: Clientes

| Campo | Tipo |
|---------|---------|
| id_cliente | INT |
| nombre | VARCHAR(100) |
| correo | VARCHAR(100) |
| telefono | VARCHAR(15) |
| contraseña | VARCHAR(255) |

## 4.2 Tabla: Horarios

| Campo | Tipo |
|---------|---------|
| id_horario | INT |
| hora_inicio | TIME |
| hora_fin | TIME |

## 4.3 Tabla: Mesas

| Campo | Tipo |
|---------|---------|
| id_mesa | INT |
| numero_mesa | INT |
| capacidad | INT |

## 4.4 Tabla: Reservaciones

| Campo | Tipo |
|---------|---------|
| id_reservacion | INT |
| id_cliente | INT |
| id_mesa | INT |
| id_horario | INT |
| fecha | DATE |
| numero_personas | INT |
| estado | VARCHAR(20) |

## 4.5 Relaciones

```text
CLIENTES (1)
      |
      |
      └──────< RESERVACIONES >───────┐
                                     |
                                     |
                                MESAS (1)

                                     |
                                     |
                              HORARIOS (1)
```

## 4.6 Reglas de Negocio

- Un cliente puede tener múltiples reservaciones.
- Una reservación pertenece a un único cliente.
- Una reservación está asociada a una sola mesa.
- Una reservación está asociada a un solo horario.
- No pueden existir dos reservaciones para la misma mesa en la misma fecha y horario.
- El número de personas no puede superar la capacidad de la mesa.
- No se pueden crear reservaciones para fechas pasadas.
- Una reservación cancelada no puede modificarse.
- Toda la información debe validarse antes de almacenarse.

---

# 5. Requisitos No Funcionales

## 5.1 Rendimiento

- El sistema deberá responder en menos de 3 segundos.
- Las búsquedas de reservaciones deberán ejecutarse rápidamente.

## 5.2 Confiabilidad

- No se deberá perder información de reservaciones.
- Las transacciones de base de datos deberán completarse correctamente.

## 5.3 Seguridad

- Se requerirá autenticación para acceder al sistema.
- Las contraseñas deberán almacenarse cifradas.
- Los usuarios no autorizados no podrán modificar datos.

## 5.4 Usabilidad

- La interfaz deberá ser intuitiva.
- El proceso de reservación deberá requerir pocos pasos.
- Los mensajes de error deberán ser comprensibles.

## 5.5 Compatibilidad

- Google Chrome
- Mozilla Firefox
- Microsoft Edge

## 5.6 Mantenibilidad

- Se utilizará arquitectura MVC.
- Los componentes estarán separados por responsabilidades.
- El código deberá ser modular y documentado.

---

# 6. Casos de Uso

## UC-01 Registro de Usuario

**Actor:** Cliente

1. El usuario accede al formulario de registro.
2. Captura sus datos.
3. El sistema valida la información.
4. Se crea la cuenta.

---

## UC-02 Inicio de Sesión

**Actor:** Cliente

1. El usuario introduce sus credenciales.
2. El sistema valida la información.
3. Se concede acceso.

---

## UC-03 Crear Reservación

**Actor:** Cliente

1. El usuario selecciona fecha.
2. El usuario selecciona horario.
3. El usuario indica el número de personas.
4. El sistema verifica disponibilidad.
5. El sistema asigna una mesa.
6. La reservación es almacenada.

---

## UC-04 Modificar Reservación

**Actor:** Cliente

1. El usuario selecciona una reservación.
2. Modifica la información.
3. El sistema valida los cambios.
4. La reservación es actualizada.

---

## UC-05 Cancelar Reservación

**Actor:** Cliente

1. El usuario selecciona una reservación.
2. Confirma la cancelación.
3. La reservación cambia a estado cancelado.

---

## UC-06 Consultar Disponibilidad

**Actor:** Cliente

1. El usuario selecciona fecha y horario.
2. El sistema verifica disponibilidad.
3. Se muestran las mesas disponibles.

---

# 7. Matriz de Trazabilidad

| Historia de Usuario | Requisito |
|---------------------|-----------|
| Usuario se registra | FR-01 |
| Usuario inicia sesión | FR-02 |
| Crear reservación | FR-03 |
| Consultar reservaciones | FR-04 |
| Modificar reservación | FR-05 |
| Cancelar reservación | FR-06 |
| Consultar disponibilidad | FR-07 |
| Evitar conflictos | FR-08 |
| Consultar mesas | FR-09 |
| Consultar horarios | FR-10 |
| Almacenar datos | FR-11 |
| Administrar reservaciones | FR-12 |

---

# 8. Mejoras Futuras

- Confirmación de reservaciones por correo electrónico.
- Recordatorios automáticos.
- Panel administrativo.
- Estadísticas de reservaciones.
- Diseño responsivo para dispositivos móviles.
- Selección visual de mesas.
- Gestión de perfil de usuario.

---

# Fin del Documento
