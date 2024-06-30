<?php
// Incluir archivo de conexión
include('conexion.php');

// Obtener los datos del formulario
$email = $_POST['email'];
$password = $_POST['password'];
$confirmPassword = $_POST['confirmPassword'];
$username = $_POST['username'];
$fullName = $_POST['fullName'];
$lastNamePaternal = $_POST['lastNamePaternal'];
$lastNameMaternal = $_POST['lastNameMaternal'];

// Validar que las contraseñas coincidan
if ($password !== $confirmPassword) {
    die("Las contraseñas no coinciden.");
}

// Validar que el correo no exista
$sql = "SELECT * FROM users WHERE email = ?";
$stmt = $conexion->prepare($sql);
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    die("El correo electrónico ya está registrado.");
}

// Insertar el nuevo usuario en la base de datos
$passwordHash = password_hash($password, PASSWORD_BCRYPT);
$sql = "INSERT INTO users (email, password, username, full_name, last_name_paternal, last_name_maternal) VALUES (?, ?, ?, ?, ?, ?)";
$stmt = $conexion->prepare($sql);
$stmt->bind_param("ssssss", $email, $passwordHash, $username, $fullName, $lastNamePaternal, $lastNameMaternal);

if ($stmt->execute()) {
    echo "Registro exitoso.";
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conexion->close();
?>
