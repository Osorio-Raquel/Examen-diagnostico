<?php
include 'db.php';

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *'); // Permitir acceso desde cualquier origen
header('Access-Control-Allow-Methods: GET, OPTIONS'); // Métodos permitidos
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

$method = $_SERVER['REQUEST_METHOD'];

switch ($method) {
    case 'GET':
        handleGet($mysqli);
        break;
    default:
        echo json_encode(['message' => 'Metodo no soportado']);
        break;
}

function handleGet($mysqli)
{
    $stmt = $mysqli->prepare("SELECT * FROM school_types WHERE is_deleted = 0");

    $stmt->execute();
    $result = $stmt->get_result();
    $school_types = $result->fetch_all(MYSQLI_ASSOC);
    echo json_encode($school_types);
}