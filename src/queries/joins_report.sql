-- Mostrar todas las reservaciones con información del cliente, mesa y horario

SELECT
    r.id_reservacion,
    c.nombre_completo,
    c.correo,
    m.numero_mesa,
    h.hora_reserva,
    r.fecha_reserva,
    r.comentarios
FROM reservaciones r
INNER JOIN clientes c
    ON r.id_cliente = c.id_cliente
INNER JOIN mesas m
    ON r.id_mesa = m.id_mesa
INNER JOIN horarios h
    ON r.id_horario = h.id_horario;

-- Mostrar todos los clientes, tengan o no reservaciones

SELECT
    c.nombre_completo,
    r.fecha_reserva
FROM clientes c
LEFT JOIN reservaciones r
    ON c.id_cliente = r.id_cliente;

-- Mostrar todas las mesas aunque no tengan reservaciones

SELECT
    r.id_reservacion,
    m.numero_mesa
FROM reservaciones r
RIGHT JOIN mesas m
    ON r.id_mesa = m.id_mesa;
