<?php
require 'conexao.php';
require 'vendor/autoload.php'; 

use Dompdf\Dompdf;

if (!isset($_POST['selecionados']) || empty($_POST['selecionados'])) {
    die("Nenhum paciente selecionado.");
}

$ids = $_POST['selecionados'];


$placeholders = implode(',', array_fill(0, count($ids), '?'));
$stmt = $conn->prepare("SELECT nome, telefone, idade, cpf, ultimo_procedimento FROM pacientes WHERE id IN ($placeholders)");
$stmt->bind_param(str_repeat('i', count($ids)), ...$ids);
$stmt->execute();
$result = $stmt->get_result();


$html = "
<h2 style='text-align:center;'>Relatório de Pacientes</h2>
<table border='1' width='100%' style='border-collapse: collapse; font-size: 12px;'>
    <thead>
        <tr style='background-color:#f0f0f0;'>
            <th>Nome</th>
            <th>Telefone</th>
            <th>Idade</th>
            <th>CPF</th>
            <th>Último Procedimento</th>
        </tr>
    </thead>
    <tbody>
";

while ($row = $result->fetch_assoc()) {
    $html .= "<tr>
        <td>{$row['nome']}</td>
        <td>{$row['telefone']}</td>
        <td>{$row['idade']}</td>
        <td>{$row['cpf']}</td>
        <td>{$row['ultimo_procedimento']}</td>
    </tr>";
}

$html .= "</tbody></table>";

$conn->close();


$dompdf = new Dompdf();
$dompdf->loadHtml($html);


$dompdf->setPaper('A4', 'portrait');
$dompdf->render();
$dompdf->stream("relatorio_pacientes.pdf", ["Attachment" => false]);
exit;
