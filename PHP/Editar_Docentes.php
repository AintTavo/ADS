<?php
include "./Conexion_Base_Datos.php";

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
    <title>Editar Docentes</title>
    <!--CSS-->
    <link rel="stylesheet" href="./../CSS/materialize.min.css">
    <link href="./../CSS/Crud_Docentes.css" rel="stylesheet">
    <link href="./../CSS/flex.css" rel="stylesheet">
    <link href="./../CSS/datatable.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--JavaScript-->
    <script src="./../JS/jquery.min.js"></script>
    <script src="./../JS/materialize.min.js"></script>
    <script src="./../JS/just_validate.min.js"></script>
    <script src="./../JS/sweet_alert.min.js"></script>
    <script src="./../JS/datatable.min.js"></script>
    <script src="./../JS/Editar_Docentes.js"></script>
</head>
<body>
    <header>
       <div class="row">
            <div class="col s12">
                <img src="./../IMG/Logo_IPN.png" class="logos_instituciones responsive-img " width="50">
            </div>
        </div>
        
    </header>
    <main class="valign-wrapper">
        <div class="container">
            <!--Titulo de la página-->
            <div class="row">
                <div class="col s12 ">
                    <h2 class="center-align">EDITAR RECORDATORIOS</h2>
                </div>
            </div>

            <!--Parte para ingresar datos-->
            <div class="row">
                <div class="col s12 ">
                    <h4 class="center-align">Editar</h4>
                    <form method="post" id="formulario_editar_docentes" autocomplete="off" novalidate="novalidate" action="./Controlador_Modificar_Docentes.php">
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">perm_identity</i>
                                <input id="nombre_recordatorio" type="text" class="validate" name="nombre_recordatorio" value="<?= $datos->recordatorio ?>">
                                <label for="nombre_recordatorio">Nombre del recordatorio</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">school</i>
                                <select id="tipo_recordatorio" name="tipo_recordatorio">
                                    <option value="" disabled>Elige una opción</option>
                                    <option value="medicina" <?php if ($datos->tipo == "medicina") echo "selected"; ?>>Medicina</option>
                                    <option value="tarea" <?php if ($datos->tipo == "tarea") echo "selected"; ?>>Tarea</option>
                                    <option value="ocio" <?php if ($datos->tipo == "ocio") echo "selected"; ?>>Ocio</option>
                                </select>
                                <label for="tipo_recordatorio">Tipo de recordatorio</label>
                            </div>
                        </div>
                        <input type="hidden" name="id_agenda" value="<?php echo $id_agenda; ?>">
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">grade</i>
                                <select id="importancia_recordatorio" name="importancia_recordatorio">
                                    <option value="" disabled>Elige una opción</option>
                                    <option value="alta" <?php if ($datos->importancia == "alta") echo "selected"; ?>>Alta</option>
                                    <option value="media" <?php if ($datos->importancia == "media") echo "selected"; ?>>Media</option>
                                    <option value="baja" <?php if ($datos->importancia == "baja") echo "selected"; ?>>Baja</option>
                                </select>
                                <label for="importancia_recordatorio">Importancia</label>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">date_range</i>
                                <input id="inicio_periodo" type="date" class="validate" name="inicio_periodo" value="<?= $datos->inicio_periodo ?>">
                                <label for="inicio_periodo">Inicio del periodo</label>
                            </div>
                            <!-- Campo de fecha para el fin del periodo -->
                            <div class="input-field col s12">
                                <i class="material-icons prefix">date_range</i>
                                <input id="fin_periodo" type="date" class="validate" name="fin_periodo" value="<?= $datos->fin_periodo ?>">
                                <label for="fin_periodo">Fin del periodo</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">assignment_ind</i>
                                <input id="hora_recordatorio" type="text" class="timepicker validate" name="hora_recordatorio"  value="<?= $datos->hora ?>">
                                <label for="hora_recordatorio">Horario</label>
                            </div>
                        </div>
                        
                        <div class="row">
                            <a href="./Crud_Docentes.php" class="btn waves-effect waves-light orange" name="boton_cancelar" value="ok">CANCELAR</a>
                            <button class="btn waves-effect waves-light green" type="submit" name="boton_editar" value="ok">EDITAR</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>
    <footer class="page-footer blue">
        <div class="footer-copyright">
          <div class="container ">
          © <?php echo date("Y"); ?> Copyright Text
          <a class="grey-text text-lighten-4 right" href="#!">Más enlaces</a>
          </div>
        </div>
    </footer>

    <!-- Incluir los archivos CSS y JS de Materialize -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var elems = document.querySelectorAll('select');
            var instances = M.FormSelect.init(elems);

            var timeElems = document.querySelectorAll('.timepicker');
            var timeInstances = M.Timepicker.init(timeElems, {
                twelveHour: false // Usar formato de 24 horas
            });
        });
    </script>
</body>
</html>
