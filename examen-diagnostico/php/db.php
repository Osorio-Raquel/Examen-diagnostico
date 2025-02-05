<?php
$host = 'localhost';
$port = 3306;
$db = 'tw2_diagnos';
$user = 'root';
$pass = '';

$mysqli = new mysqli($host, $user, $pass, $db, $port);

if ($mysqli->connect_error) {
    die('Could not connect to DataBase: ' . $mysqli->connect_error);
}