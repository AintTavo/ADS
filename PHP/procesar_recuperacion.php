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

        // Enviar el enlace de recuperación por correo electrónico usando PHPMailer
        $reset_link = "http://yourdomain.com/reset_password.html?token=" . $token;
        
        $mail = new PHPMailer(true);

        try {
            // Configuración del servidor SMTP de Google
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'c61909720@gmail.com';
            $mail->Password = '%R4mkXb6NZ'; // Aquí debes usar la contraseña correcta o la contraseña de aplicación generada
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port = 587;

            // Configuración del correo electrónico
            $mail->setFrom('c61909720@gmail.com', 'TuSalud');
            $mail->addAddress($user_email);
            $mail->Subject = 'Recuperación de contraseña';
            $mail->Body = "Haz clic en el siguiente enlace para restablecer tu contraseña: " . $reset_link;

            $mail->send();
            echo "Se ha enviado un enlace de recuperación a tu correo electrónico.";
        } catch (Exception $e) {
            echo "Hubo un error al enviar el correo electrónico: {$mail->ErrorInfo}";
        }
    } else {
        echo "El correo electrónico no está registrado.";
    }
}
?>
