
# Diagrama Entidad Relación del Sistema

Este archivo contiene el diagrama ER del sistema de reservaciones del restaurante utilizando Mermaid.

erDiagram

CLIENTE {
    int id_cliente PK
    string nombre
    string telefono
}

MESA {
    int id_mesa PK
    int numero_mesa
    int capacidad
    string ubicacion
}

EMPLEADO {
    int id_empleado PK
    string nombre
    string rol
    string telefono
}

RESERVACION {
    int id_reservacion PK
    date fecha
    time hora
    int num_personas
    string estado_reservacion
    int id_cliente FK
    int id_mesa FK
    int id_empleado FK
}

CLIENTE ||--o{ RESERVACION : hace
MESA ||--o{ RESERVACION : asignada
EMPLEADO ||--o{ RESERVACION : registra
