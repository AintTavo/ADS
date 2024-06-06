<?php

//Incluimos la conexion a la base de datos
include "./Conexion_Base_Datos.php";
//Recuperamos el curp enviado
$id=$_GET["Id"];
//Realizmaos la accion de elimanar el registro en la base de datos
$sql=$conexion->query("DELETE FROM agenda WHERE Id='$id'");
header("Location:./Crud_Docentes.php");
?>
