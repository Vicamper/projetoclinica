<?php
require 'conexao.php';
require 'vendor/autoload.php';
use Dompdf\Dompdf;

ob_start(); 


$convenio = $_POST['convenio'] ?? '';
$medico = $_POST['medico'] ?? '';
$data_inicio = $_POST['periodo_inicio'] ?? '';
$data_fim = $_POST['periodo_fim'] ?? '';
$formapagamento = $_POST['pagamento'] ?? '';

// Validação
if (!$convenio || !$medico || !$data_inicio || !$data_fim || !$formapagamento) {
    ob_end_clean();
    die(" Todos os campos são obrigatórios.");
}


$sql = "SELECT * FROM dados_atendimentos 
        WHERE LOWER(REPLACE(convenio, ' ', '')) = ?
        AND medico LIKE ?
        AND data_inicio >= ?
        AND data_fim <= ?
        AND LOWER(forma_pagamento) = ?";

$stmt = $conn->prepare($sql);
$convLimpo = strtolower(str_replace(' ', '', $convenio));
$medicoLike = "%$medico%";
$pagamentoLimpo = strtolower($formapagamento);

$stmt->bind_param("sssss", $convLimpo, $medicoLike, $data_inicio, $data_fim, $pagamentoLimpo);
$stmt->execute();
$result = $stmt->get_result();


$html = "<h2 style='text-align:center;'>Relatório de Atendimentos</h2>";

if ($result->num_rows === 0) {
    $html .= "<p style='color:red; text-align:center;'>Nenhum resultado encontrado.</p>";
} else {
    $html .= "
    <table border='1' width='100%' style='border-collapse: collapse; font-size: 12px;'>
        <thead style='background-color: #f0f0f0;'>
            <tr>
                <th>Convênio</th>
                <th>Médico</th>
                <th>Data Início</th>
                <th>Data Fim</th>
                <th>Forma de Pagamento</th>
                <th>Valor (R$)</th>
            </tr>
        </thead>
        <tbody>";
    
    while ($row = $result->fetch_assoc()) {
        $html .= "<tr>
            <td>{$row['convenio']}</td>
            <td>{$row['medico']}</td>
            <td>{$row['data_inicio']}</td>
            <td>{$row['data_fim']}</td>
            <td>{$row['forma_pagamento']}</td>
            <td>" . number_format($row['valor'], 2, ',', '.') . "</td>
        </tr>";
    }

    $html .= "</tbody></table>";
}


$dompdf = new Dompdf();
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'landscape');
$dompdf->render();

ob_end_clean(); 
$dompdf->stream("relatorio_atendimentos.pdf", ["Attachment" => false]);
exit;
