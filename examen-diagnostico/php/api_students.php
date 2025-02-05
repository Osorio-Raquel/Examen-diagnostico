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

    if (!empty($data['id','names','f_surname', 'm_surname', 'birthday', 'address', 'phone_number', 'email', 'id_campus', 'id_gender', 'id_career', 'id_blood_type'])) {
        $stmt = $mysqli->prepare("INSERT INTO `students`(`Id`, `Names`, `F_Surname`, `M_Surname`, `Birthday`, `Address`, `Phone_Number`, `Email`, `Id_Campus`, `Id_Gender`, `Id_Career`, `Id_Blood_Type`, `Is_Deleted`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,0)");
        $stmt->bind_param("isssssisiiiii", $data['id','names','f_surname', 'm_surname', 'birthday', 'address', 'phone_number', 'email', 'id_campus', 'id_gender', 'id_career', 'id_blood_type']);

        if ($stmt->execute()) {
            echo json_encode(["message" => "Estudiante creado exitosamente."]);
        } else {
            echo json_encode(["message" => "Error al crear el estudiante."]);
        }
    } else {
        echo json_encode(["message" => "Datos incompletos."]);
    }
}