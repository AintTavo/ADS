<?php
session_start();
include("./Conexion_Base_Datos.php");

if (empty($_SESSION["id_usuario"])) {
    header("location:./../HTML/Login_Usuario.html");
    exit();
}

$id_usuario = $_SESSION["id_usuario"];

// Obtener los datos del usuario actual
$sql_usuario = "SELECT * FROM users WHERE id_usuario = ?";
$stmt_usuario = $conexion->prepare($sql_usuario);
$stmt_usuario->bind_param("i", $id_usuario);
$stmt_usuario->execute();
$result_usuario = $stmt_usuario->get_result();
$usuario = $result_usuario->fetch_assoc();

// Actualizar información del usuario
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["editar_usuario"])) {
    $email = $_POST["email"];
    $username = $_POST["username"];
    $full_name = $_POST["full_name"];
    $last_name_paternal = $_POST["last_name_paternal"];
    $last_name_maternal = $_POST["last_name_maternal"];

    $sql_update = "UPDATE users SET email=?, username=?, full_name=?, last_name_paternal=?, last_name_maternal=? WHERE id_usuario=?";
    $stmt_update = $conexion->prepare($sql_update);
    $stmt_update->bind_param("sssssi", $email, $username, $full_name, $last_name_paternal, $last_name_maternal, $id_usuario);

    if ($stmt_update->execute()) {
        // Mostrar alerta con SweetAlert
        echo '<script>';
        echo 'setTimeout(function() {';
        echo '  Swal.fire({';
        echo '    title: "¡Actualizado!",';
        echo '    text: "Información actualizada correctamente.",';
        echo '    icon: "success",';
        echo '    confirmButtonText: "OK"';
        echo '  });';
        echo '}, 100);'; // Espera 100ms para asegurar que SweetAlert se cargue correctamente
        echo '</script>';
    } else {
        echo "Error al actualizar la información: " . $stmt_update->error;
    }

    $stmt_update->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Usuario</title>
    <!-- Incluir CSS de Materialize y SweetAlert -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link href="./../CSS/Crud_Docentes.css" rel="stylesheet">
    <link href="./../CSS/flex.css" rel="stylesheet">
    <link href="./../CSS/datatable.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Incluir jQuery y Materialize JS -->
    <script src="./../JS/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <!-- Incluir SweetAlert JS -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <header>
        <header>
        <nav class="blue lighten-1"> <!-- Aquí ajusta los colores según tus preferencias -->
        <div class="nav-wrapper container">
            <a href="/index.html" class="brand-logo">
                <img src="/IMG/Logo.svg" alt="Logo" style="height: 40px;">
            </a>
            
        </div>
    </nav>
</header>
    </header>
    <main>
        <div class="container">
            <h2>Editar Información del Usuario</h2>
            <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
                <div class="row">
                    <div class="input-field col s6">
                        <input id="email" type="email" name="email" value="<?php echo $usuario['email']; ?>" required>
                        <label for="email">Email</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="username" type="text" name="username" value="<?php echo $usuario['username']; ?>" required>
                        <label for="username">Nombre de usuario</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="full_name" type="text" name="full_name" value="<?php echo $usuario['full_name']; ?>" required>
                        <label for="full_name">Nombre completo</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="last_name_paternal" type="text" name="last_name_paternal" value="<?php echo $usuario['last_name_paternal']; ?>" required>
                        <label for="last_name_paternal">Apellido paterno</label>
                    </div>
                    <div class="input-field col s6">
                        <input id="last_name_maternal" type="text" name="last_name_maternal" value="<?php echo $usuario['last_name_maternal']; ?>" required>
                        <label for="last_name_maternal">Apellido materno</label>
                    </div>
                </div>
                <button class="btn waves-effect waves-light" type="submit" name="editar_usuario">Actualizar Información</button>
                <a href="./crud_docentes.php" class="btn waves-effect waves-light red">Regresar</a>
            </form>
        </div>
    </main>
    <footer>
        <div class="container">
            &copy; 2024 - TuSalud - <a asp-area="" asp-controller="Home" asp-action="Privacy">Privacy</a>
        </div>
    </footer>
</body>
</html>
