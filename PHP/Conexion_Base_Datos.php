<?php
//Codigo para realizar la conexion a la base de datos
//Variables a usar
$host="localhost";
$usuario="root";
$password="";
$base_datos="proyecto_backend";
//Variable para realizar la conexion
$conexion=mysqli_connect($host,$usuario,$password,$base_datos,3306);
mysqli_query($conexion, "SET NAMES 'utf8'");
  
  if(mysqli_connect_errno()){
    echo "CONEXION FALLIDA";
    die("Problemas con la conexión a la BD ".mysqli_connect_error());
  }
  else{
    //echo "CONEXIO ESTABLECIDA";
  }
?>