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

$sqlDashboard = "SELECT
                    r.id_reservacion,
                    c.nombre_completo,
                    c.telefono,
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
                ON r.id_horario = h.id_horario

                ORDER BY r.fecha_reserva DESC,
                h.hora_reserva DESC";

$reservaciones = $conexion->query($sqlDashboard);

?>

<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Mochi House | Sistema de Reservaciones</title>

    <link rel="stylesheet" href="style.css">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap"
          rel="stylesheet">

</head>

<body>

    <!-- HEADER -->

    <header class="header">

        <div class="logo">
            🍡 Mochi House
        </div>

        <nav class="navbar">

            <a href="#inicio">Inicio</a>

            <a href="#reservacion">Reservar</a>

            <a href="#mesas">Mesas</a>

            <a href="#dashboard">Reservaciones</a>

        </nav>

    </header>

    <!-- HERO -->

    <section class="hero" id="inicio">

        <div class="hero-content">

            <h1>
                Sistema de Reservaciones
            </h1>

            <p>
                Selecciona fecha y hora para visualizar
                mesas disponibles en tiempo real.
            </p>

            <a href="#reservacion"
               class="hero-btn">

                Reservar Mesa

            </a>

        </div>

    </section>
  

    <!-- HEADER -->

    <header class="header">

        <div class="logo">
            🍡 Mochi House
        </div>

        <nav class="navbar">

            <a href="#inicio">Inicio</a>
            <a href="#reservacion">Reservar</a>
            <a href="#mesas">Mesas</a>
            <a href="#dashboard">Reservaciones</a>

        </nav>

    </header>

    <!-- HERO -->

    <section class="hero" id="inicio">

        <div class="hero-content">

            <h1>
                Sistema de Reservaciones
            </h1>

            <p>
                Selecciona fecha y hora para visualizar
                mesas disponibles en tiempo real.
            </p>

            <a href="#reservacion" class="hero-btn">
                Reservar Mesa
            </a>

        </div>

    </section>

    <!-- RESERVACIÓN -->

    <section class="reservation-section" id="reservacion">

        <div class="reservation-container">

            <div class="reservation-info">

                <h2>Reservar Mesa</h2>

                <p>
                    Selecciona una hora disponible y elige
                    directamente una mesa desde el layout.
                </p>

                <div class="info-box">

                    <p>🕙 Horario permitido</p>

                    <span>
                        10:00 AM - 10:00 PM
                    </span>

                </div>

            </div>

            <!-- FORMULARIO -->

            <form
                id="reservationForm"
                class="reservation-form"
                action="guardar_reservacion.php"
                method="POST">

                <input type="text"
                    id="nombre"
                    name="nombre"
                    placeholder="Nombre completo"
                    required>

                <input type="email"
                    id="correo"
                    name="correo"
                    placeholder="Correo electrónico"
                    required>

                <input type="tel"
                    id="telefono"
                    name="telefono"
                    placeholder="Número telefónico"
                    required>

                <input type="date"
                    id="fecha"
                    name="fecha"
                    required>

                <input type="time"
                    id="hora"
                    name="hora"
                    min="10:00"
                    max="22:00"
                    step="3600"
                    required>

                <textarea
                    id="pedido"
                    name="pedido"
                    placeholder="Pedido anticipado o comentarios">
                </textarea>

                <!-- INPUTS OCULTOS -->

                <input type="hidden"
                    id="mesaSeleccionada"
                    name="mesa">

                <input type="hidden"
                    id="capacidadMesa"
                    name="capacidad">

                <button type="submit">
                    Confirmar Reservación
                </button>

            </form>

        </div>

    </section>

    <!-- MESAS -->

    <section class="tables-section" id="mesas">

        <h2>Layout de Mesas</h2>

        <p class="tables-subtitle">
            Las mesas se ocupan automáticamente según la hora seleccionada.
        </p>

        <div class="restaurant-layout">

            <div class="window-area">
                🌸 Ventanal Sakura
            </div>

            <div class="tables-grid">

                <div class="table-card available"
                    data-table="1"
                    data-capacity="2">

                    <span>Mesa 1</span>
                    <small>2 Personas</small>

                </div>

                <div class="table-card available"
                    data-table="2"
                    data-capacity="4">

                    <span>Mesa 2</span>
                    <small>4 Personas</small>

                </div>

                <div class="table-card available"
                    data-table="3"
                    data-capacity="4">

                    <span>Mesa 3</span>
                    <small>4 Personas</small>

                </div>

                <div class="table-card available"
                    data-table="4"
                    data-capacity="6">

                    <span>Mesa 4</span>
                    <small>6 Personas</small>

                </div>

                <div class="table-card available"
                    data-table="5"
                    data-capacity="6">

                    <span>Mesa 5</span>
                    <small>6 Personas</small>

                </div>

                <div class="table-card available"
                    data-table="6"
                    data-capacity="2">

                    <span>Mesa 6</span>
                    <small>2 Personas</small>

                </div>

                <div class="table-card available"
                    data-table="7"
                    data-capacity="8">

                    <span>Mesa 7</span>
                    <small>8 Personas</small>

                </div>

                <div class="table-card available"
                    data-table="8"
                    data-capacity="4">

                    <span>Mesa 8</span>
                    <small>4 Personas</small>

                </div>

            </div>

        </div>

    </section>
<!-- DASHBOARD -->

<section class="tables-section" id="dashboard">

    <h2>Reservaciones Registradas</h2>

    <p class="tables-subtitle">
        Consulta las reservaciones almacenadas en el sistema.
    </p>

    <div class="restaurant-layout">

        <div style="overflow-x:auto;">

            <table class="dashboard-table">

                <thead>

                    <tr>

                        <th>Cliente</th>
                        <th>Teléfono</th>
                        <th>Fecha</th>
                        <th>Hora</th>
                        <th>Mesa</th>
                        <th>Comentarios</th>

                    </tr>

                </thead>

                <tbody>

                    <?php

                    if ($reservaciones->num_rows > 0) {

                        while ($fila = $reservaciones->fetch_assoc()) {

                            echo "

                            <tr>

                                <td>{$fila['nombre_completo']}</td>

                                <td>{$fila['telefono']}</td>

                                <td>{$fila['fecha_reserva']}</td>

                                <td>{$fila['hora_reserva']}</td>

                                <td>Mesa {$fila['numero_mesa']}</td>

                                <td>{$fila['comentarios']}</td>

                            </tr>

                            ";

                        }

                    } else {

                        echo "

                        <tr>

                            <td colspan='6'>

                                No hay reservaciones registradas.

                            </td>

                        </tr>

                        ";

                    }

                    ?>

                </tbody>

            </table>

        </div>

    </div>

</section>
  

    <!-- FOOTER -->

    <footer class="footer">

        <h3>🍡 Mochi House</h3>

        <p>
            Sistema Web Profesional de Reservaciones
        </p>

    </footer>

    <!-- SCRIPT -->

    <script src="script.js"></script>

</body>

</html>
