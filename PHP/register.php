<?php
// Incluir archivo de conexión
include('./Conexion_Base_Datos.php');

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

$mensaje = "";
if ($stmt->execute()) {
    $mensaje = "Registro exitoso.";
} else {
    $mensaje = "Error: " . $stmt->error;
}

$stmt->close();
$conexion->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro Exitoso</title>
    <!-- Enlaces CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/CSS/site.css" />
    <link rel="stylesheet" href="./../CSS/materialize.min.css">
    <link href="./../CSS/Login.css" rel="stylesheet">
    <link href="./../CSS/flex.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>

<body>
    <!-- Header -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="/index.html">
                <img src="/IMG/Logo.svg" alt="Logo" style="height: 40px;">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="/">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/Home/Acerca">Acerca de</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/Home/Contacto">Contacto</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <!-- Contenido principal -->
    <main class="valign-wrapper">
        <div class="container">
            <h3>Registro Exitoso</h3>
            <div class="row">
                <div class="col s12">
                    <!-- Mensaje de registro exitoso -->
                    <p><?php echo $mensaje; ?></p>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer class="border-top footer text-muted">
        <div class="container">
            &copy; 2024 - TuSalud - <a asp-area="" asp-controller="Home" asp-action="Privacy">Privacy</a>
        </div>
    </footer>

    <!-- Enlaces JavaScript -->
    <script src="./../JS/jquery.min.js"></script>
    <script src="./../JS/materialize.min.js"></script>
    <script src="./../JS/just_validate.min.js"></script>
    <script src="./../JS/sweet_alert.min.js"></script>
    <script src="./../JS/Login_Administrador.js"></script>
</body>

</html>
