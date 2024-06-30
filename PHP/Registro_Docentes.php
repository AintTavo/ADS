<?php
//Conexion a la base de datos
include "./Conexion_Base_Datos.php";
//Obtenemos los datos enviados por el formulario
$Recordatorio=$_POST["recordatorio"];
$tipo=$_POST["tipo"];
$importancia=$_POST["importancia"];
$inicio=$_POST["inicio_periodo"];
$fin=$_POST["fin_periodo"];
$hora=$_POST["hora"];
//Realizamos la consulta 
$sql=$conexion->query("INSERT INTO agenda (Recordatorio,Tipo,Importancia,Inicio,Fin,Horario) VALUES ('$Recordatorio','$tipo','$importancia','$inicio','$fin','$hora')");
if($sql==true){
    echo "Registro Realiazado Correctamente";
    header("Location:./Crud_Docentes.php");
}
else{
    echo "Ocurrio un error";
}


?>