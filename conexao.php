<?php
$host = 'localhost';
$user = 'root';     
$pass = '1234';
$dbname = 'clinica_nuvem';
$port = 3316;

$conn = new mysqli($host, $user, $pass, $dbname,$port);

if ($conn->connect_error) {
    die("❌ Erro na conexão: " . $conn->connect_error);
}

$conn->set_charset("utf8");
?>
