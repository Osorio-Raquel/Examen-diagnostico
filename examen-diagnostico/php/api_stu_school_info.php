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

    if (!empty($data['grad_year', 'id_student', 'id_school', 'id_sch_shift'])) {
        $stmt = $mysqli->prepare("INSERT INTO `stu_school_info`(`Grad_Year`, `Id_Student`, `Id_School`, `Id_Sch_Shift`, `Is_Deleted`) VALUES (?,?,?,?,0)");
        $stmt->bind_param("isssssisiiiii", $data['grad_year', 'id_student', 'id_school', 'id_sch_shift']);

        if ($stmt->execute()) {
            echo json_encode(["message" => "Historial académico creado exitosamente."]);
        } else {
            echo json_encode(["message" => "Error al crear el historial académico."]);
        }
    } else {
        echo json_encode(["message" => "Datos incompletos."]);
    }
}