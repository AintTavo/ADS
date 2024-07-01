<?php
include "Conexion_Base_Datos.php";

if (!isset($_GET["Id"])) {
    header("location:./Crud_Docentes.php");
    exit();
}

$Recordatorio = $_POST["recordatorio"];
$tipo = $_POST["tipo"];
$importancia = $_POST["importancia"];
$inicio = $_POST["inicio_periodo"];
$fin = $_POST["fin_periodo"];
$hora = $_POST["hora"];
$id_usuario = $_GET["Id"];

$sql = $conexion->prepare("INSERT INTO agenda (id_usuario, recordatorio, tipo, importancia, inicio_periodo, fin_periodo, hora) VALUES (?, ?, ?, ?, ?, ?, ?)");
$sql->bind_param("issssss", $id_usuario, $Recordatorio, $tipo, $importancia, $inicio, $fin, $hora);

if ($sql->execute()) {
    echo "Registro realizado correctamente.";
    //header("Location: ./Crud_Docentes.php");
} else {
    echo "Ocurrió un error: " . $conexion->error;
}

$sql->close();
?>