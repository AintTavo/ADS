<?php
    //Se utiliza el archivo de conexion para la base de datos
    include ("./Conexion_Base_Datos.php");
    //Iniciamos la sesion
    session_start();
    //Validamos que el fomrulario y el boton se hayan presionado
    
        //Obtenemos los valores enviados por el formulario
        $usuario=$_POST["usuario"];
        $contra=$_POST["password"];
        //Realizamos la consulta en la base de datos
        $sql="SELECT * FROM administrador WHERE USUARIO = '$usuario' AND CONTRA='$contra' ";
        $resultado=mysqli_query($conexion,$sql);
        //Obtenemos el numero de registro de cada consulta
        $numero_registro=mysqli_num_rows($resultado);

        //Verificamos si se encontro algun registro
        if($numero_registro==1)
        {
            $_SESSION["USUARIO"]=$usuario;
            echo "Bienvenido";
            header("location:./Crud_Docentes.php");
        }
        else
        {
            echo "No existe registro";
            header("location: ../HTML/Login_Usuario.html");
        }    
?> 