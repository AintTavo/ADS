<?php
    //Incluimos la conexion a la base de datos
    include "./Conexion_Base_Datos.php";
    
    //Llamamos a la sesion
    session_start();
    //Verificamos que el usuario venga del login
    if (empty($_SESSION["USUARIO"])) {
        header("location:./../HTML/Login_Usuario.html"); 
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CRUD</title>
    <!--CSS-->
    <link rel="stylesheet" href="./../CSS/materialize.min.css">
    <link href="./../CSS/Crud_Docentes.css" rel="stylesheet">
    <link href="./../CSS/flex.css" rel="stylesheet">
    <link href="./../CSS/datatable.min.css" rel="stylesheet">
    <link  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--JavaScript-->
    <script src="./../JS/jquery.min.js"></script>
    <script src="./../JS/materialize.min.js"></script>
    <script src="./../JS/just_validate.min.js"></script>
    <script src="./../JS/sweet_alert.min.js"></script>
    <script src="./../JS/datatable.min.js"></script>
    <script src="./../JS/Crud_Docentes.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <header>
        <div class="row">
            <div class="col s12">
                <img src="./../IMG/Logo_IPN.png" class="logos_instituciones responsive-img">
            </div>
        </div>
        <nav>
        <div class="nav-wrapper">
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="./Controlador_Cerrar_Sesion.php">Salir</a></li>
            </ul>
        </div>
  </nav>
    </header>
    <main class="valign-wrapper">
        <div class="container">
            <!--Titulo dela paginas-->
            <div class="row">
                <div class="col s12 ">
                    <h2 class="center-align">AGENDA</h2>
                </div>
                
            </div>
            <!--Seccion de botones para navegar entre las opciones ara la tabla de docentes o paae-->
            <div class="row">
                <ul class="collapsible">
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">book</i>
                            <a href="./Crud_Docentes.php">AGENDA</a></div>
                        
                    </li>
                    <li>
                        <div class="collapsible-header">
                            <i class="material-icons">assignment</i>
                            <a href="./Crud_PAAE.php">PAAE</a></div>
                        
                    </li>
                </ul>
            </div> 
            <!--CRUD-->
            
            <div class="row">
                <!--Parte para ingresar datos-->
                <div class="col s12 m4">
                    <h4 class="center-align">Registrar</h4>
                    <form  method="post" id="formulario_docentes" autocomplete="off"  action="./Registro_Docentes.php">
                        
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">perm_identity</i>
                                <input id="recordatorio" type="text" class="validate" name="recordatorio">
                                <label for="recordatorio">Nombre del recordatorio</label>
                            </div>
                        </div>
                        <div class="row">
    <div class="input-field col s12">
        <i class="material-icons prefix">school</i>
        <select id="tipo" name="tipo">
            <option value="" disabled selected>Elige una opción</option>
            <option value="medicina">Medicina</option>
            <option value="tarea">Tarea</option>
            <option value="ocio">Ocio</option>
        </select>
        <label for="tipo">Tipo de recordatorio</label>
    </div>
</div>

<div class="row">
    <div class="input-field col s12">
        <i class="material-icons prefix">grade</i>
        <select id="importancia" name="importancia">
            <option value="" disabled selected>Elige una opción</option>
            <option value="alta">Alta</option>
            <option value="media">Media</option>
            <option value="baja">Baja</option>
        </select>
        <label for="importancia">Importancia</label>
    </div>
</div>

<!-- Campo de fecha -->

    <div class="row">
        <div class="input-field col s12">
            <i class="material-icons prefix">date_range</i>
            <input id="inicio_periodo" type="date" class="validate" name="inicio_periodo">
            <label for="inicio_periodo">Inicio del periodo</label>
        </div>
        <!-- Campo de fecha para el fin del periodo -->
        <div class="input-field col s12">
            <i class="material-icons prefix">date_range</i>
            <input id="fin_periodo" type="date" class="validate" name="fin_periodo">
            <label for="fin_periodo">Fin del periodo</label>
        </div>
    </div>

<div class="row">
    <div class="input-field col s12">
        <i class="material-icons prefix">assignment_ind</i>
        <input id="hora" type="text" class="timepicker validate" name="hora">
        <label for="hora">Horario</label>
    </div>
</div>

<!-- Incluir los archivos CSS y JS de Materialize -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('select');
        M.FormSelect.init(elems);

        var timeElems = document.querySelectorAll('.timepicker');
        M.Timepicker.init(timeElems, {
            twelveHour: false // Usar formato de 24 horas
        });
    });
</script>

                        <div class="row">
                            <button class="btn blue" type="submit" name="registrar_docente" id="boton_registrar_docente">REGISTRAR</button>
                        </div>
                        
                    </form>
                </div>
                <!--Parte para la tabla-->
                <div class="col s12 m8">
                    <table class="responsive-table display" id="tabla_registros_docente" >
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
                            <?php
                                //Incluimos el archivo para conectarse a la base de datos
                                include "./Conexion_Base_Datos.php";
                                //Realizamos la consulta sql
                                $sql=$conexion->query('SELECT * FROM agenda');
                                //Recorremos todos los datos de la consulta
                                while ($datos=$sql->fetch_object()) {?>
                                    <tr>
                                    <td><?=$datos->Id?></td>    
                                    <td><?=$datos->Recordatorio?></td>
                                        <td><?=$datos->Tipo?></td>
                                        <td><?=$datos->Importancia?></td>
                                        <td><?=$datos->Inicio?></td>
                                        <td><?=$datos->Fin?></td>
                                        <td><?=$datos->Horario?></td>
                                        <td>
                                        <!--Cuando presionamos el boton para editar vamos a enviar la id -->
                                        <a href="./Editar_Docentes.php?Id=<?=$datos->Id?>" class="btn btn-small orange"><i class="material-icons small">edit</i></a>
                                        <a href="./Eliminar_Docente.php?Id=<?=$datos->Id?>" class="btn btn-small red" id="boton_eliminar"><i class="material-icons small">delete_forever</i></a>
                                        </td>
                                    </tr>
                            <?php }
                            ?>    
                        </tbody>
                    </table>
                </div>
            </div>
           
    <footer class="page-footer blue">
            <div class="footer-copyright">
              <div class="container ">
              © 2024 Copyright 
              <a class="grey-text text-lighten-4 right" href="#!">Mas Links</a>
              </div>
            </div>
    </footer>
    
</body>
</html>