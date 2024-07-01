<?php
// Conexión a la base de datos
require 'Conexion_Base_Datos.php'; // Asegúrate de que este archivo contiene la conexión a la base de datos
require_once 'vendor/autoload.php'; // Asegúrate de que autoload.php está en la ubicación correcta

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = $_POST['email'];

    // Verificar si el correo electrónico existe en la base de datos
    $stmt = $conexion->prepare("SELECT * FROM users WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // El correo electrónico existe, generar un token y enviar el enlace de recuperación
        $row = $result->fetch_assoc();
        $token = bin2hex(random_bytes(50));
        $stmt_update = $conexion->prepare("UPDATE users SET reset_token = ?, reset_expiration = DATE_ADD(NOW(), INTERVAL 1 HOUR) WHERE email = ?");
        $stmt_update->bind_param("ss", $token, $email);
        $stmt_update->execute();

        // Obtener el correo electrónico del usuario
        $user_email = $row['email'];

        // Enviar el enlace de recuperación por correo electrónico usando Mailtrap
        $reset_link = "ads.localhost/PHP/reset_contrasena.php?token=".$token;
        
        $mail = new PHPMailer(true);

        try {
            // Configuración del servidor SMTP de Mailtrap
            $phpmailer = new PHPMailer();
            $phpmailer->isSMTP();
            $phpmailer->Host = 'sandbox.smtp.mailtrap.io';
            $phpmailer->SMTPAuth = true;
            $phpmailer->Port = 2525;
            $phpmailer->Username = '3bcbdb2890f1ad';
            $phpmailer->Password = 'f985f013cfebff';

            // Configuración del correo electrónico
            $phpmailer->setFrom('gustavo.25.zgo@gmail.com','CodigoDeValidacion');
            $phpmailer->addAddress($user_email);
            $phpmailer->Subject = 'Recuperación de contraseña';
            $phpmailer->Body = "Haz clic en el siguiente enlace para restablecer tu contraseña: " . $reset_link;

            $phpmailer->send();
            echo "Se ha enviado un enlace de recuperación a tu correo electrónico.";
        } catch (Exception $e) {
            echo "Hubo un error al enviar el correo electrónico: {$mail->ErrorInfo}";
        }
    } else {
        echo "El correo electrónico no está registrado.";
    }
}
?>