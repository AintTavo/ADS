<?php
    //Incluimos la conexion a la base de datos
    include ("./Conexion_Base_Datos.php");
    $Recordatorio=$_POST["nombre_recordatorio"];
    $tipo=$_POST["tipo_recordatorio"];
    $importancia=$_POST["importancia_recordatorio"];
    $hora=$_POST["hora_recordatorio"];
    $id = $_POST["id_agenda"];
    $inicio=$_POST["inicio_periodo"];
    $fin=$_POST["fin_periodo"];
    //Realizamos la instruccion sql
    $sql=$conexion->query("UPDATE agenda SET Recordatorio='$Recordatorio',Tipo='$tipo',Importancia='$importancia', hora='$hora', inicio_periodo='$inicio', fin_periodo='$fin'  WHERE id_agenda='$id' ");
    //Checamos si la isntruccion sql se realizo correctamente
    if($sql==1) {
        //Se modifico
        header("Location:./Crud_Docentes.php");
    } else {
        echo "ERROR";
    }
    
?>