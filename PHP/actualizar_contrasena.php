<?php
// Conexión a la base de datos
require 'Conexion_Base_Datos.php'; // Asegúrate de que este archivo contiene la conexión a la base de datos

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $token = $_POST['token'];
    $new_password = password_hash($_POST['new_password'], PASSWORD_BCRYPT);

    // Verificar el token
    $stmt = $conexion->prepare("SELECT * FROM users WHERE reset_token = ? AND reset_expiration > NOW()");
    $stmt->bind_param("s", $token);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Token válido, actualizar la contraseña
        $stmt = $conexion->prepare("UPDATE users SET password = ?, reset_token = NULL, reset_expiration = NULL WHERE reset_token = ?");
        $stmt->bind_param("ss", $new_password, $token);
        $stmt->execute();

        echo "Tu contraseña ha sido actualizada.";
        header("location:./../HTML/Login_Usuario.html");
        exit();
    } else {
        echo "El enlace de recuperación es inválido o ha expirado.";
    }
}
?>
