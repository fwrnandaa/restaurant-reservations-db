-- Número de reservaciones por mesa

SELECT
    id_mesa,
    COUNT(*) AS total_reservaciones
FROM reservaciones
GROUP BY id_mesa;

-- Número de reservaciones por horario

SELECT
    id_horario,
    COUNT(*) AS total_reservaciones
FROM reservaciones
GROUP BY id_horario;

-- Mesas con más de una reservación

SELECT
    id_mesa,
    COUNT(*) AS total
FROM reservaciones
GROUP BY id_mesa
HAVING COUNT(*) > 1;

-- Capacidad promedio de las mesas

SELECT
    AVG(capacidad) AS promedio_capacidad
FROM mesas;
