<?php
    //Incluimos la conexion a la base de datos
    include "./Conexion_Base_Datos.php";
    //Recuperamos el curp enviado
    $id=$_GET["Id"];
    //Realizmaos la consulta a la base de datos con la curp enviada
    $sql=$conexion->query("SELECT * FROM agenda WHERE Id = '$id' ");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eliminar recordatorio</title>
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
    <script src="./../JS/Eliminar_Docente.js"></script>
</head>
<body>
    <header>
       <div class="row">
            <div class="col s12">
                <img src="./../IMG/Logo_IPN.png" class="logos_instituciones responsive-img">
            </div>
        </div>
        
    </header>
    <main class="valign-wrapper">
        <div class="container">
            <!--Titulo dela paginas-->
            <div class="row">
                <div class="col s12 ">
                    <h2 class="center-align">ELIMINAR RECORDATORIO</h2>
                </div>
            </div>
            <div class="row">
                <!--Parte para ingresar datos-->
                <div class="col s12 ">
                    <h4 class="center-align">¿ESTAS SEGURO DE ELIMINAR EL SIGUIENTE REGISTRO?</h4>
                    
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
                            <?php
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
                                    </tr>
                                    
                            <?php }
                            ?>    
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col s12">
                    <!--Boton para cancelar-->
                    <a href="./Crud_Docentes.php" class="btn btn-small orange">CANCELAR</a>
                    <!--Boton para eliminar-->
                    <a href="./Controlador_Eliminar_Docente.php?Id=<?=$id?>" class="btn btn-small red" id="boton_eliminar">ELIMINAR</a>
                </div>

            </div>
        </div>
    </main>
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