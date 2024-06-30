<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// Cargar la clase PHPMailer
require 'vendor/autoload.php'; // Asegúrate de que la ruta sea correcta si usas Composer

// Crear una instancia de PHPMailer
$mail = new PHPMailer(true); // Habilita excepciones

try {
    // Configuración del servidor SMTP
    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';  // Servidor SMTP de Gmail
    $mail->SMTPAuth = true;
    $mail->Username = 'c61909720@gmail.com'; // Tu dirección de correo Gmail
    $mail->Password = 't%R4mkXb6NZ'; // Tu contraseña de Gmail
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; // Habilita STARTTLS
    $mail->Port = 587; // Puerto SMTP para STARTTLS

    // Configuración del correo
    $mail->setFrom('c61909720@gmail.com', 'Tu Nombre');
    $mail->addAddress('gustavo.25.zgo@gmail.com', 'Nombre del Destinatario');
    $mail->Subject = 'Asunto del correo';
    $mail->Body = 'Contenido del correo';

    // Enviar el correo
    $mail->send();
    echo 'Correo enviado correctamente.';
} catch (Exception $e) {
    echo 'Hubo un error al enviar el correo: ', $mail->ErrorInfo;
}