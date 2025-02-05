<?php
include 'db.php';

header("Access-Control-Allow-Origin: *"); 
header("Content-Type: application/json; charset=UTF-8");



// $conn = new mysqli($servername, $username, $password, $dbname);

// if ($conn->connect_error) {
//     die(json_encode(["success" => false, "message" => "Error de conexión a la base de datos"]));
// }

$json = file_get_contents("php://input");
$data = json_decode($json, true);

$username = $data["username"];
$password = $data["pass"];

if (empty($data['username', 'pass'])) {
    echo json_encode(["success" => false, "message" => "Todos los campos son requeridos."]);
    exit();
}else{
    print('aaaa');
}

$stmt = $mysqli->prepare("SELECT * FROM users WHERE username = ?");
$stmt->bind_param("s", $username);

// $sql = "SELECT * FROM users WHERE username = ?";
// $stmt = $conn->prepare($sql);
// $stmt->bind_param("s", $username);

$stmt->execute();
$result = $stmt->get_result();

if ($row = $result->fetch_assoc()) {
    if (password_verify($password, $row["password"])) {
        echo json_encode(["success" => true, "message" => "Inicio de sesión exitoso."]);
    } else {
        echo json_encode(["success" => false, "message" => "Contraseña incorrecta."]);
    }
} else {
    echo json_encode(["success" => false, "message" => "Usuario no encontrado."]);
}

$stmt->close();
$conn->close();
?>