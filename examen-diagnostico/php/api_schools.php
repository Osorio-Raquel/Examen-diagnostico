<?php
include 'db.php';

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *'); // Permitir acceso desde cualquier origen
header('Access-Control-Allow-Methods: POST, OPTIONS'); // Métodos permitidos
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$method = $_SERVER['REQUEST_METHOD'];

switch ($method) {
    case 'POST':
        handlePost($mysqli);
        break;
    default:
        echo json_encode(['message' => 'Metodo no soportado']);
        break;
}

function handlePost($mysqli)
{
    $data = json_decode(file_get_contents("php://input"), true);

    if (!empty($data['school_name', 'id_sch_type'])) {
        $stmt = $mysqli->prepare("INSERT INTO `schools`(`School_Name`, `Id_Sch_Type`, `Is_Deleted`) VALUES (?,?,0)");
        $stmt->bind_param("isssssisiiiii", $data['school_name', 'id_sch_type']);

        if ($stmt->execute()) {
            echo json_encode(["message" => "Colegio creado exitosamente."]);
        } else {
            echo json_encode(["message" => "Error al crear el colegio."]);
        }
    } else {
        echo json_encode(["message" => "Datos incompletos."]);
    }
}