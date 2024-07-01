<?php
include "./Conexion_Base_Datos.php";
$archivo = file_get_contents('./../CSS/materialize.min.css');


if (!isset($_GET["id_agenda"])) {
    header("location:./Crud_Docentes.php");
    exit();
}
if (!isset($_GET["id_usuario"])) {
    header("location:./Crud_Docentes.php");
    exit();
}

$id_agenda = $_GET["id_agenda"];
$id_usuario = $_GET["id_usuario"];
$sql = $conexion->prepare("SELECT * FROM agenda WHERE id_agenda = ? AND id_usuario = ?");
$sql->bind_param("ii", $id_agenda, $id_usuario);
$sql->execute();
$resultado = $sql->get_result();

if ($resultado->num_rows === 0) {
    echo "No se encontró el registro.";
    exit();
}

$datos = $resultado->fetch_object();
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar</title>
    <!--CSS-->
    <link rel="stylesheet" href="./../CSS/materialize.min.css">
    <link href="./../CSS/Crud_Docentes.css" rel="stylesheet">
    <link href="./../CSS/flex.css" rel="stylesheet">
    <link href="./../CSS/datatable.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--JavaScript-->
    <script src="./../JS/jquery.min.js"></script>
    <script src="./../JS/materialize.min.js"></script>
    <script src="./../JS/just_validate.min.js"></script>
    <script src="./../JS/sweet_alert.min.js"></script>
    <script src="./../JS/datatable.min.js"></script>
    <script src="./../JS/Crud_Docentes.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        <?=$archivo?>
    </style>
</head>
<body>
    <header>
        <div class="row">
            <div class="col s12">
                <img src="./../IMG/Logo_IPN.png" class="logos_instituciones responsive-img" width="50">
            </div>
        </div>
    </header>
    <main class="valign-wrapper">
        <div class="container">
            <!-- Titulo de la pagina -->
            <div class="row">
                <div class="col s12">
                    <h2 class="center-align">ELIMINAR RECORDATORIO</h2>
                </div>
            </div>
            <div class="row">
                <!-- Parte para ingresar datos -->
                <div class="col s12">
                    <h4 class="center-align">¿ESTÁS SEGURO DE ELIMINAR EL SIGUIENTE REGISTRO?</h4>
                    <table class="responsive-table display" id="registro">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Recordatorio</th>
                                <th>Tipo</th>
                                <th>Importancia</th>
                                <th>Fecha de inicio</th>
                                <th>Fecha de finalización</th>
                                <th>Horario</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><?= $datos->id_agenda ?></td>
                                <td><?= $datos->recordatorio ?></td>
                                <td><?= $datos->tipo ?></td>
                                <td><?= $datos->importancia ?></td>
                                <td><?= $datos->inicio_periodo ?></td>
                                <td><?= $datos->fin_periodo ?></td>
                                <td><?= $datos->hora ?></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    <!-- Botón para cancelar -->
                    <a href="./Crud_Docentes.php" class="btn btn-small orange">CANCELAR</a>
                    <!-- Botón para eliminar -->
                    <a href="./Controlador_Eliminar_Docente.php?id_agenda=<?= $id_agenda ?>" class="btn btn-small red" id="boton_eliminar">ELIMINAR</a>
                </div>
            </div>
        </div>
    </main>
    <footer class="page-footer blue">
        <div class="footer-copyright">
            <div class="container">
                © 2024 Copyright
                <a class="grey-text text-lighten-4 right" href="#!">Más Links</a>
            </div>
        </div>
    </footer>

    <!-- JavaScript -->
    <script src="./../JS/jquery.min.js"></script>
    <script src="./../JS/materialize.min.js"></script>
    <script src="./../JS/just_validate.min.js"></script>
    <script src="./../JS/sweet_alert.min.js"></script>
    <script src="./../JS/datatable.min.js"></script>
    <script src="./../JS/Eliminar_Docente.js"></script>

    <script>
        // Initialize Materialize components
        document.addEventListener('DOMContentLoaded', function() {
            M.AutoInit();
        });
    </script>
</body>
</html>
