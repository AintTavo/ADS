<?php
    //Iniciamos la sesion 
    session_start();
    //Destruimos la sesion
    session_destroy();
    //Mandamos al login
    header("location:./../index.html");
?>