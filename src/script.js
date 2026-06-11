const reservationForm = document.getElementById("reservationForm");

const reservationTable = document.getElementById("reservationTable");

const fechaInput = document.getElementById("fecha");

const horaInput = document.getElementById("hora");

const tables = document.querySelectorAll(".table-card");

let selectedTable = null;

let selectedCapacity = null;

/* ========================= */
/* HORARIO */
/* ========================= */

horaInput.min = "10:00";

horaInput.max = "22:00";

/* ========================= */
/* BLOQUEAR HORAS INVÁLIDAS */
/* ========================= */

horaInput.addEventListener("input", () => {

    const hora = horaInput.value;

    if (
        hora < "10:00" ||
        hora > "22:00"
    ) {

        alert("Solo puedes seleccionar horarios entre 10 AM y 10 PM.");

        horaInput.value = "";

    }

});

/* ========================= */
/* CAMBIAR FECHA Y HORA */
/* ========================= */

fechaInput.addEventListener("change", updateTables);

horaInput.addEventListener("change", updateTables);

/* ========================= */
/* ACTUALIZAR MESAS */
/* ========================= */

function updateTables() {

    tables.forEach(table => {

        table.classList.remove("selected-table");

    });

}

/* ========================= */
/* SELECCIONAR MESA */
/* ========================= */

tables.forEach(table => {

    table.addEventListener("click", () => {

        if (
            !fechaInput.value ||
            !horaInput.value
        ) {

            alert("Primero selecciona fecha y hora.");

            return;

        }

        tables.forEach(t => {

            t.classList.remove("selected-table");

        });

        table.classList.add("selected-table");

        selectedTable = table.dataset.table;

        selectedCapacity = table.dataset.capacity;

        /* INPUTS HIDDEN */

        document.getElementById("mesaSeleccionada").value = selectedTable;

        document.getElementById("capacidadMesa").value = selectedCapacity;

    });

});

/* ========================= */
/* VALIDAR FORMULARIO */
/* ========================= */

reservationForm.addEventListener("submit", function(e) {

    if (!selectedTable) {

        e.preventDefault();

        alert("Selecciona una mesa.");

        return;

    }

    const horaSeleccionada = horaInput.value;

    if (
        horaSeleccionada < "10:00" ||
        horaSeleccionada > "22:00"
    ) {

        e.preventDefault();

        alert("Horario inválido.");

        return;

    }

});
