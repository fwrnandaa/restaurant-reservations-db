# Estrategia de Respaldo

## Proyecto: Mochi House Reservation System

---

## Objetivo

Garantizar la integridad, disponibilidad y recuperación de la información almacenada en la base de datos del sistema **Mochi House Reservation System**, minimizando el riesgo de pérdida de datos ante errores humanos, fallos del sistema o modificaciones importantes.

---

## Alcance

Esta estrategia aplica a la base de datos **`mochi_house`**, la cual almacena la información necesaria para el funcionamiento del sistema de reservaciones.

Las tablas incluidas en los respaldos son:

* `clientes`
* `mesas`
* `horarios`
* `reservaciones`

---

## Política de Respaldo

Se realizará un **respaldo completo de la base de datos** en las siguientes situaciones:

* Antes de implementar cambios importantes en la estructura de la base de datos.
* Antes de desplegar una nueva versión del sistema.
* Antes de ejecutar operaciones masivas de actualización o eliminación de registros.
* Al finalizar el desarrollo de funcionalidades críticas relacionadas con las reservaciones.
* Como medida preventiva antes de actividades de mantenimiento.

---

## Tipo de Respaldo

Se utilizará un **respaldo lógico completo** mediante la herramienta `mysqldump`, incluida en MySQL.

Este tipo de respaldo permite exportar tanto la estructura como los datos de la base de datos a un archivo con extensión `.sql`.

### Ventajas

* Facilita la recuperación de la información.
* Permite migrar la base de datos a otro entorno.
* Genera archivos de texto fáciles de almacenar y administrar.
* Es compatible con cualquier instalación estándar de MySQL.

---

## Procedimiento para Generar un Respaldo

1. Abrir la terminal o consola de comandos.
2. Acceder al directorio donde se almacenará el respaldo.
3. Ejecutar el siguiente comando:

```bash
mysqldump -u root -p mochi_house > respaldo_mochi_house.sql
```

### Descripción del comando

| Elemento                   | Descripción                                                         |
| -------------------------- | ------------------------------------------------------------------- |
| `mysqldump`                | Herramienta utilizada para exportar bases de datos MySQL.           |
| `-u root`                  | Usuario con permisos sobre la base de datos.                        |
| `-p`                       | Solicita la contraseña del usuario.                                 |
| `mochi_house`              | Nombre de la base de datos que será respaldada.                     |
| `>`                        | Redirecciona la salida hacia un archivo.                            |
| `respaldo_mochi_house.sql` | Archivo generado con la estructura y los datos de la base de datos. |

---

## Verificación del Respaldo

Una vez generado el archivo, se deberá comprobar que:

* El archivo `respaldo_mochi_house.sql` exista.
* El tamaño del archivo sea mayor a 0 KB.
* El contenido incluya sentencias como `CREATE TABLE` e `INSERT INTO`.

Estas verificaciones permiten asegurar que el respaldo se generó correctamente.

---

## Procedimiento para Restaurar un Respaldo

En caso de pérdida de información o necesidad de recuperación del sistema, se deberán seguir los siguientes pasos.

### 1. Crear la base de datos (si no existe)

```sql
CREATE DATABASE mochi_house;
```

### 2. Restaurar la información

```bash
mysql -u root -p mochi_house < respaldo_mochi_house.sql
```

### Descripción del comando

| Elemento                   | Descripción                                            |
| -------------------------- | ------------------------------------------------------ |
| `mysql`                    | Cliente de línea de comandos de MySQL.                 |
| `-u root`                  | Usuario con permisos suficientes.                      |
| `-p`                       | Solicita la contraseña correspondiente.                |
| `mochi_house`              | Base de datos donde se restaurará la información.      |
| `<`                        | Redirecciona el contenido del archivo SQL hacia MySQL. |
| `respaldo_mochi_house.sql` | Archivo que contiene el respaldo previamente generado. |

---

## Almacenamiento de los Respaldos

Los archivos de respaldo deberán almacenarse en una ubicación segura y organizada.

Se recomienda utilizar nombres que incluyan la fecha de generación para facilitar su identificación.

### Ejemplos

```text
respaldo_mochi_house_2026-06-10.sql
respaldo_mochi_house_2026-06-17.sql
respaldo_mochi_house_2026-06-24.sql
```

---

## Responsabilidades

El equipo de desarrollo será responsable de:

* Generar los respaldos cuando corresponda.
* Verificar la correcta creación de los archivos.
* Conservar una copia actualizada antes de realizar cambios importantes.
* Ejecutar los procedimientos de restauración cuando sea necesario.

---

## Conclusión

La estrategia de respaldo implementada para **Mochi House Reservation System** busca asegurar la continuidad del proyecto y la protección de la información almacenada. La generación periódica de respaldos y la existencia de procedimientos claros de recuperación constituyen buenas prácticas dentro de la administración de bases de datos y contribuyen a la confiabilidad del sistema.
