<?php

$host = 'localhost';
$user = 'clinica_user';
$pass = '1234';
$dbname = 'clinica_nuvem';
$port = 3316;

$conn = new mysqli($host, $user, $pass, $dbname, $port);

if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}


$tipo = $_POST['tipo'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];
$nascimento = $_POST['nascimento'];
$senha = password_hash($_POST['senha'], PASSWORD_DEFAULT); 


$stmt = $conn->prepare("INSERT INTO funcionarios (tipo, email, telefone, nascimento, senha) VALUES (?, ?, ?, ?, ?)");
$stmt->bind_param("sssss", $tipo, $email, $telefone, $nascimento, $senha);

if ($stmt->execute()) {
    echo "<script>
        alert('Funcionário cadastrado com sucesso!');
        window.location.href = 'home.html';
    </script>";
} else {
    echo "<script>
        alert('Erro ao cadastrar: " . $stmt->error . "');
        window.history.back(); 
    </script>";
}

$stmt->close();
$conn->close();
?>
