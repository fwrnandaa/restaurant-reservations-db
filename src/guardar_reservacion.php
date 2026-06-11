<?php

$conexion = new mysqli(
    "localhost",
    "root",
    "",
    "mochi_house"
);

if ($conexion->connect_error) {

    die("Error de conexión: " . $conexion->connect_error);

}

/* ========================= */
/* DATOS DEL FORMULARIO */
/* ========================= */

$nombre = $_POST['nombre'];

$correo = $_POST['correo'];

$telefono = $_POST['telefono'];

$fecha = $_POST['fecha'];

$hora = $_POST['hora'];

$mesa = $_POST['mesa'];

$pedido = $_POST['pedido'];

/* ========================= */
/* INSERTAR CLIENTE */
/* ========================= */

$sqlCliente = "INSERT INTO clientes
(nombre_completo, correo, telefono)

VALUES

('$nombre', '$correo', '$telefono')";

if ($conexion->query($sqlCliente) === TRUE) {

    $id_cliente = $conexion->insert_id;

} else {

    die("Error al guardar cliente");

}

/* ========================= */
/* OBTENER ID MESA */
/* ========================= */

$sqlMesa = "SELECT id_mesa
FROM mesas
WHERE numero_mesa = '$mesa'";

$resultMesa = $conexion->query($sqlMesa);

if ($resultMesa->num_rows > 0) {

    $filaMesa = $resultMesa->fetch_assoc();

    $id_mesa = $filaMesa['id_mesa'];

} else {

    die("Mesa no encontrada");

}

/* ========================= */
/* OBTENER ID HORARIO */
/* ========================= */

$sqlHorario = "SELECT id_horario
FROM horarios
WHERE hora_reserva = '$hora'";

$resultHorario = $conexion->query($sqlHorario);

if ($resultHorario->num_rows > 0) {

    $filaHorario = $resultHorario->fetch_assoc();

    $id_horario = $filaHorario['id_horario'];

} else {

    /* INSERTAR HORARIO SI NO EXISTE */

    $insertHorario = "INSERT INTO horarios
    (hora_reserva)

    VALUES

    ('$hora')";

    if ($conexion->query($insertHorario) === TRUE) {

        $id_horario = $conexion->insert_id;

    } else {

        die("Error al guardar horario");

    }

}

/* ========================= */
/* VALIDAR RESERVACIÓN DUPLICADA */
/* ========================= */

$verificar = "SELECT *
FROM reservaciones

WHERE fecha_reserva = '$fecha'
AND id_mesa = '$id_mesa'
AND id_horario = '$id_horario'";

$resultado = $conexion->query($verificar);

if ($resultado->num_rows > 0) {

    echo "

    <script>

        alert('La mesa ya está reservada para esa fecha y hora');

        window.history.back();

    </script>

    ";

    exit();

}

/* ========================= */
/* INSERTAR RESERVACIÓN */
/* ========================= */

$sqlReservacion = "INSERT INTO reservaciones

(id_cliente, id_mesa, id_horario, fecha_reserva, comentarios)

VALUES

('$id_cliente', '$id_mesa', '$id_horario', '$fecha', '$pedido')";

if ($conexion->query($sqlReservacion) === TRUE) {

    echo "

    <script>

        alert('Reservación guardada correctamente');

       window.location.href='mochi.php';

    </script>

    ";

} else {

    echo "Error: " . $conexion->error;

}

$conexion->close();

?>
