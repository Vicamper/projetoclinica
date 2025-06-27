<?php
require 'conexao.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $convenio = $_POST['convenio'] ?? '';
    $medico = $_POST['medico'] ?? '';
    $data_inicio = $_POST['data_inicio'] ?? '';
    $data_fim = $_POST['data_fim'] ?? '';
    $forma_pagamento = $_POST['forma_pagamento'] ?? '';
    $valor = $_POST['valor'] ?? '';

    if ($convenio && $medico && $data_inicio && $data_fim && $forma_pagamento && $valor) {
        $stmt = $conn->prepare("INSERT INTO dados_atendimentos (convenio, medico, data_inicio, data_fim, forma_pagamento, valor) VALUES (?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("sssssd", $convenio, $medico, $data_inicio, $data_fim, $forma_pagamento, $valor);
        $stmt->execute();
        echo "<script>alert('Consulta registrada com sucesso!');</script>";
    }
}

$consultas = $conn->query("SELECT * FROM dados_atendimentos ORDER BY data_inicio DESC");
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8">
  <title>Consultas - Clínica Nuvem</title>
  <link rel="stylesheet" href="home.css">
</head>
<body>

  <div class="sidebar">
    <h2>Menu</h2>
 <ul>
      <li><a href="home.html">Início</a></li>
      <li><a href="consultas.php">Consultas</a></li>
      <li><a href="relatorios.html">Relatórios</a></li>
      <li><a href="cadastro.html">Cadastros</a></li>
      <li><a href="pacientes.php">Pacientes</a></li> 
      <li><a href="logout.php">Sair</a></li>
    </ul>
  </div>

  <div class="main-content">
    <h1>Registrar Consulta</h1>

    <form action="consultas.php" method="POST">
      <label>Convênio:</label>
      <input type="text" name="convenio" required>

      <label>Médico:</label>
      <input type="text" name="medico" required>

      <label>Data de Início:</label>
      <input type="date" name="data_inicio" required>

      <label>Data de Fim:</label>
      <input type="date" name="data_fim" required>

      <label>Forma de Pagamento:</label>
      <select name="forma_pagamento" required>
        <option value="dinheiro">Dinheiro</option>
        <option value="pix">Pix</option>
        <option value="debito">Débito</option>
        <option value="credito">Crédito</option>
      </select>

      <label>Valor (R$):</label>
      <input type="number" name="valor" step="0.01" required>

      <button type="submit">Salvar Consulta</button>
    </form>

    <h2 style="margin-top:40px;">Consultas Registradas</h2>

    <table border="1" width="100%" style="border-collapse: collapse; margin-top: 10px;">
      <thead style="background-color:#f4f4f4;">
        <tr>
          <th>Convênio</th>
          <th>Médico</th>
          <th>Data Início</th>
          <th>Data Fim</th>
          <th>Pagamento</th>
          <th>Valor (R$)</th>
        </tr>
      </thead>
      <tbody>
        <?php while ($row = $consultas->fetch_assoc()): ?>
          <tr>
            <td><?= htmlspecialchars($row['convenio']) ?></td>
            <td><?= htmlspecialchars($row['medico']) ?></td>
            <td><?= htmlspecialchars($row['data_inicio']) ?></td>
            <td><?= htmlspecialchars($row['data_fim']) ?></td>
            <td><?= htmlspecialchars($row['forma_pagamento']) ?></td>
            <td><?= number_format($row['valor'], 2, ',', '.') ?></td>
          </tr>
        <?php endwhile; ?>
      </tbody>
    </table>
  </div>

</body>
</html>
