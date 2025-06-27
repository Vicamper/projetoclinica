<?php
require 'conexao.php';

$busca = $_GET['busca'] ?? '';
$sql = "SELECT * FROM pacientes WHERE nome LIKE ? OR cpf LIKE ? ORDER BY nome";
$stmt = $conn->prepare($sql);
$like = "%$busca%";
$stmt->bind_param("ss", $like, $like);
$stmt->execute();
$result = $stmt->get_result();
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Pacientes</title>
  <link rel="stylesheet" href="home.css" />
  <style>
    .form-busca {
      margin: 20px 0;
    }
    .form-busca input {
      padding: 8px;
      width: 250px;
    }
    .form-busca button {
      padding: 8px 12px;
      background-color: #00acc1;
      color: white;
      border: none;
      border-radius: 5px;
    }
    table {
      width: 100%;
      background: white;
      border-collapse: collapse;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      margin-top: 10px;
    }
    th, td {
      padding: 12px;
      border: 1px solid #ccc;
      text-align: left;
    }
    th {
      background-color: #00acc1;
      color: white;
    }
    .acoes a {
      margin-right: 8px;
      text-decoration: none;
      color: #00acc1;
    }
  </style>
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
    <h1>Pacientes</h1>

    <form class="form-busca" method="GET" action="">
      <input type="text" name="busca" placeholder="Buscar por nome ou CPF" value="<?= htmlspecialchars($busca) ?>" />
      <button type="submit">Buscar</button>
    </form>

    <form method="POST" action="gerar_pdf.php" target="_blank">
      <table>
        <thead>
          <tr>
            <th><input type="checkbox" onclick="toggleAll(this)"/></th>
            <th>Nome</th>
            <th>Telefone</th>
            <th>Idade</th>
            <th>CPF</th>
            <th>Último Procedimento</th>
            <th>Ações</th>
          </tr>
        </thead>
        <tbody>
        <?php while ($row = $result->fetch_assoc()): ?>
          <tr>
            <td><input type="checkbox" name="selecionados[]" value="<?= $row['id'] ?>"></td>
            <td><?= htmlspecialchars($row['nome']) ?></td>
            <td><?= htmlspecialchars($row['telefone']) ?></td>
            <td><?= $row['idade'] ?></td>
            <td><?= htmlspecialchars($row['cpf']) ?></td>
            <td><?= htmlspecialchars($row['ultimo_procedimento']) ?></td>
            <td class="acoes">
              <a href="editar_paciente.php?id=<?= $row['id'] ?>">✏️</a>
              <a href="excluir_paciente.php?id=<?= $row['id'] ?>" onclick="return confirm('Deseja excluir este paciente?')">🗑️</a>
            </td>
          </tr>
        <?php endwhile; ?>
        </tbody>
      </table>
      <br>
      <button type="submit">Gerar PDF</button>
    </form>
  </div>

  <script>
    function toggleAll(source) {
      checkboxes = document.getElementsByName('selecionados[]');
      for (let i = 0; i < checkboxes.length; i++) {
        checkboxes[i].checked = source.checked;
      }
    }
  </script>
</body>
</html>
