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
