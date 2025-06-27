-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3316
-- Tempo de geração: 27/06/2025 às 13:31
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clinica_nuvem`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_atendimentos`
--

CREATE TABLE `dados_atendimentos` (
  `convenio` varchar(50) DEFAULT NULL,
  `medico` varchar(100) DEFAULT NULL,
  `data_inicio` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `forma_pagamento` varchar(20) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `dados_atendimentos`
--

INSERT INTO `dados_atendimentos` (`convenio`, `medico`, `data_inicio`, `data_fim`, `forma_pagamento`, `valor`) VALUES
('Convenio', 'Medico', '0000-00-00', '0000-00-00', 'Forma_Pagamento', 0.00),
('Convênio 02', 'Dra. Marina Rocha', '2024-04-30', '2024-05-03', 'Pix', 340.20),
('Convênio 01', 'Dr. Pedro Lima', '2024-02-06', '2024-02-11', 'Pix', 217.00),
('Convênio 03', 'Dr. Pedro Lima', '2024-04-25', '2024-05-05', 'Débito', 361.70),
('Convênio 03', 'Dra. Ana Costa', '2024-06-17', '2024-06-20', 'Débito', 188.70),
('Convênio 01', 'Dra. Ana Costa', '2024-03-20', '2024-03-30', 'Dinheiro', 289.20),
('Convênio 03', 'Dr. João Silva', '2024-01-01', '2024-01-06', 'Dinheiro', 207.30),
('Convênio 02', 'Dra. Marina Rocha', '2024-01-26', '2024-01-31', 'Dinheiro', 216.00),
('Convênio 03', 'Dra. Ana Costa', '2024-01-31', '2024-02-04', 'Dinheiro', 428.30),
('Convênio 03', 'Dra. Ana Costa', '2024-06-17', '2024-06-20', 'Dinheiro', 493.90),
('Convênio 03', 'Dra. Ana Costa', '2024-04-16', '2024-04-22', 'Débito', 121.90),
('Convênio 03', 'Dra. Marina Rocha', '2024-06-28', '2024-07-05', 'Débito', 184.50),
('Convênio 02', 'Dra. Marina Rocha', '2024-05-12', '2024-05-18', 'Crédito', 255.70),
('Convênio 03', 'Dr. Pedro Lima', '2024-04-15', '2024-04-22', 'Débito', 74.74),
('Convênio 03', 'Dra. Marina Rocha', '2024-05-09', '2024-05-16', 'Crédito', 207.00),
('Convênio 03', 'Dr. João Silva', '2024-04-28', '2024-05-06', 'Crédito', 396.00),
('Convênio 03', 'Dr. Pedro Lima', '2024-01-22', '2024-01-29', 'Crédito', 127.00),
('Convênio 01', 'Dr. João Silva', '2024-06-28', '2024-07-07', 'Débito', 448.50),
('Convênio 03', 'Dr. Pedro Lima', '2024-03-27', '2024-04-01', 'Dinheiro', 127.80),
('Convênio 03', 'Dra. Marina Rocha', '2024-02-01', '2024-02-04', 'Pix', 226.00),
('Convênio 01', 'Dr. Pedro Lima', '2024-06-12', '2024-06-16', 'Dinheiro', 143.40),
('Convênio 03', 'Dr. Pedro Lima', '2024-03-30', '2024-04-07', 'Dinheiro', 371.70),
('Convênio 03', 'Dra. Ana Costa', '2024-04-04', '2024-04-13', 'Dinheiro', 349.80),
('Convênio 03', 'Dr. João Silva', '2024-04-27', '2024-05-05', 'Débito', 77.98),
('Convênio 02', 'Dra. Marina Rocha', '2024-02-10', '2024-02-17', 'Dinheiro', 275.60),
('Convênio 02', 'Dr. Pedro Lima', '2024-05-12', '2024-05-15', 'Débito', 375.70),
('Convênio 01', 'Dr. João Silva', '2024-02-02', '2024-02-12', 'Dinheiro', 213.90),
('Convênio 03', 'Dra. Ana Costa', '2024-01-06', '2024-01-13', 'Crédito', 193.80),
('Convênio 02', 'Dr. Pedro Lima', '2024-01-28', '2024-01-29', 'Pix', 277.10),
('Convênio 02', 'Dr. João Silva', '2024-05-08', '2024-05-10', 'Dinheiro', 79.31),
('Convênio 02', 'Dr. Pedro Lima', '2024-01-16', '2024-01-20', 'Débito', 157.60),
('Convênio 03', 'Dra. Ana Costa', '2024-03-26', '2024-04-01', 'Dinheiro', 215.60),
('Convênio 02', 'Dr. Pedro Lima', '2024-04-21', '2024-04-28', 'Pix', 436.50),
('Convênio 03', 'Dr. João Silva', '2024-01-04', '2024-01-12', 'Dinheiro', 65.43),
('Convênio 01', 'Dra. Marina Rocha', '2024-01-09', '2024-01-16', 'Pix', 311.40),
('Convênio 02', 'Dr. Pedro Lima', '2024-04-19', '2024-04-20', 'Pix', 280.20),
('Convênio 03', 'Dr. João Silva', '2024-04-16', '2024-04-24', 'Crédito', 275.00),
('Convênio 03', 'Dra. Ana Costa', '2024-03-01', '2024-03-07', 'Débito', 209.20),
('Convênio 01', 'Dr. João Silva', '2024-02-14', '2024-02-24', 'Pix', 438.40),
('Convênio 03', 'Dra. Ana Costa', '2024-01-03', '2024-01-11', 'Pix', 297.00),
('Convênio 03', 'Dr. João Silva', '2024-01-10', '2024-01-19', 'Crédito', 339.60),
('Convênio 03', 'Dra. Ana Costa', '2024-05-25', '2024-05-29', 'Dinheiro', 197.00),
('Convênio 01', 'Dra. Ana Costa', '2024-03-02', '2024-03-04', 'Crédito', 468.60),
('Convênio 03', 'Dra. Ana Costa', '2024-05-27', '2024-05-31', 'Dinheiro', 129.40),
('Convênio 02', 'Dr. Pedro Lima', '2024-06-05', '2024-06-10', 'Débito', 321.40),
('Convênio 03', 'Dr. Pedro Lima', '2024-06-20', '2024-06-29', 'Dinheiro', 325.00),
('Convênio 01', 'Dr. Pedro Lima', '2024-03-09', '2024-03-16', 'Débito', 312.00),
('Convênio 02', 'Dr. João Silva', '2024-06-01', '2024-06-06', 'Crédito', 240.70),
('Convênio 02', 'Dr. Pedro Lima', '2024-04-03', '2024-04-10', 'Crédito', 141.60),
('Convênio 02', 'Dr. Pedro Lima', '2024-03-05', '2024-03-12', 'Crédito', 208.40),
('Convênio 02', 'Dra. Marina Rocha', '2024-04-13', '2024-04-20', 'Débito', 469.30),
('Convênio 03', 'Dra. Ana Costa', '2024-03-13', '2024-03-18', 'Crédito', 211.00),
('Convênio 01', 'Dr. Pedro Lima', '2024-03-24', '2024-03-30', 'Pix', 105.70),
('Convênio 02', 'Dr. Pedro Lima', '2024-01-08', '2024-01-12', 'Débito', 270.20),
('Convênio 02', 'Dra. Ana Costa', '2024-05-18', '2024-05-23', 'Crédito', 365.70),
('Convênio 02', 'Dr. Pedro Lima', '2024-06-12', '2024-06-22', 'Dinheiro', 140.70),
('Convênio 03', 'Dr. Pedro Lima', '2024-01-10', '2024-01-19', 'Pix', 299.20),
('Convênio 02', 'Dr. João Silva', '2024-02-09', '2024-02-11', 'Pix', 210.20),
('Convênio 02', 'Dr. Pedro Lima', '2024-02-29', '2024-03-03', 'Dinheiro', 284.70),
('Convênio 02', 'Dr. João Silva', '2024-02-17', '2024-02-23', 'Débito', 137.30),
('Convênio 01', 'Dra. Marina Rocha', '2024-03-03', '2024-03-08', 'Crédito', 105.80),
('Convênio 01', 'Dr. Pedro Lima', '2024-05-11', '2024-05-12', 'Crédito', 352.00),
('Convênio 02', 'Dr. Pedro Lima', '2024-02-28', '2024-03-01', 'Crédito', 410.40),
('Convênio 02', 'Dr. João Silva', '2024-01-12', '2024-01-21', 'Dinheiro', 249.10),
('Convênio 02', 'Dr. Pedro Lima', '2024-06-01', '2024-06-06', 'Dinheiro', 449.20),
('Convênio 03', 'Dr. Pedro Lima', '2024-04-17', '2024-04-24', 'Débito', 211.50),
('Convênio 02', 'Dra. Ana Costa', '2024-04-30', '2024-05-02', 'Débito', 449.50),
('Convênio 03', 'Dra. Ana Costa', '2024-05-13', '2024-05-18', 'Dinheiro', 93.51),
('Convênio 01', 'Dr. João Silva', '2024-02-20', '2024-02-28', 'Débito', 133.80),
('Convênio 02', 'Dra. Marina Rocha', '2024-01-18', '2024-01-23', 'Dinheiro', 221.30),
('Convênio 02', 'Dra. Ana Costa', '2024-06-09', '2024-06-16', 'Pix', 363.30),
('Convênio 03', 'Dr. João Silva', '2024-01-07', '2024-01-10', 'Pix', 151.70),
('Convênio 01', 'Dr. Pedro Lima', '2024-02-24', '2024-02-25', 'Pix', 494.00),
('Convênio 02', 'Dra. Marina Rocha', '2024-02-23', '2024-03-04', 'Crédito', 144.80),
('Convênio 03', 'Dr. João Silva', '2024-01-25', '2024-02-03', 'Dinheiro', 312.40),
('Convênio 01', 'Dr. João Silva', '2024-04-22', '2024-04-25', 'Crédito', 333.80),
('Convênio 02', 'Dra. Ana Costa', '2024-02-11', '2024-02-15', 'Pix', 377.40),
('Convênio 01', 'Dr. João Silva', '2024-02-27', '2024-02-28', 'Débito', 87.52),
('Convênio 02', 'Dr. João Silva', '2024-01-05', '2024-01-12', 'Dinheiro', 390.60),
('Convênio 03', 'Dra. Marina Rocha', '2024-03-27', '2024-04-04', 'Dinheiro', 199.20),
('Convênio 01', 'Dra. Ana Costa', '2024-05-29', '2024-06-07', 'Pix', 496.20),
('Convênio 02', 'Dra. Marina Rocha', '2024-01-11', '2024-01-20', 'Pix', 61.14),
('Convênio 02', 'Dra. Ana Costa', '2024-05-22', '2024-05-23', 'Dinheiro', 228.30),
('Convênio 03', 'Dr. Pedro Lima', '2024-06-26', '2024-06-28', 'Pix', 315.70),
('Convênio 01', 'Dr. Pedro Lima', '2024-04-27', '2024-04-28', 'Pix', 397.40),
('Convênio 03', 'Dr. João Silva', '2024-04-06', '2024-04-11', 'Crédito', 328.80),
('Convênio 01', 'Dra. Ana Costa', '2024-01-11', '2024-01-14', 'Crédito', 213.70),
('Convênio 01', 'Dra. Marina Rocha', '2024-03-25', '2024-03-29', 'Débito', 236.90),
('Convênio 03', 'Dr. Pedro Lima', '2024-01-13', '2024-01-18', 'Débito', 431.50),
('Convênio 03', 'Dra. Marina Rocha', '2024-04-01', '2024-04-11', 'Dinheiro', 109.00),
('Convênio 02', 'Dra. Marina Rocha', '2024-01-31', '2024-02-03', 'Dinheiro', 237.70),
('Convênio 03', 'Dr. Pedro Lima', '2024-03-28', '2024-04-04', 'Débito', 164.70),
('Convênio 01', 'Dr. Pedro Lima', '2024-05-02', '2024-05-03', 'Débito', 305.20),
('Convênio 02', 'Dra. Ana Costa', '2024-02-15', '2024-02-20', 'Crédito', 118.40),
('Convênio 03', 'Dr. Pedro Lima', '2024-01-08', '2024-01-09', 'Crédito', 178.60),
('Convênio 03', 'Dr. Pedro Lima', '2024-05-17', '2024-05-23', 'Pix', 115.00),
('Convênio 03', 'Dr. Pedro Lima', '2024-01-31', '2024-02-05', 'Dinheiro', 140.60),
('Convênio 03', 'Dr. João Silva', '2024-01-13', '2024-01-18', 'Dinheiro', 261.70),
('Convênio 03', 'Dra. Marina Rocha', '2024-06-25', '2024-07-02', 'Pix', 319.80),
('Convênio 01', 'Dra. Ana Costa', '2024-02-27', '2024-03-02', 'Dinheiro', 477.00),
('Convênio 03', 'Dra. Ana Costa', '2024-02-19', '2024-02-28', 'Crédito', 295.70),
('convênio 2', 'Dra. Marina Rocha', '2025-06-02', '2025-06-17', 'pix', 2000.00),
('convênio 2', 'Dr. Pedro Lima', '2025-06-10', '2025-06-24', 'debito', 2000.00);

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `tipo` enum('funcionario','medico','administrador') NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `nascimento` date NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `tipo`, `email`, `telefone`, `nascimento`, `senha`) VALUES
(1, 'medico', 'miqueias@gmail.com', '5133945875', '2025-03-03', '$2y$10$db24nVzAL5VgRxJhCgmst.SFI5SJutu0QRTHuuxTy6p9AkgdrOqqq'),
(3, 'medico', 'miqueia23s@gmail.com', '5133945875', '2025-03-03', '$2y$10$/ogHiUy6tKeUPz12DgGue.nBz202BdCc1UjwhaqmXDWQ7oK3AfYpe'),
(4, 'administrador', 'luciana@luciana.com', '1111111111', '1993-05-27', '$2y$10$UBR9IBflMqKiV740vXPXQ.ffqvWMKEIV7jcMElWWipOGDqQQAi2By'),
(5, 'administrador', 'vitor@vitor.com', '1111111111', '1993-05-27', '$2y$10$CAYfMx5PmRo5vr7AXOkRgO6hVnEeuVEFenaPezDBuKFQI4E8E33Ee'),
(6, 'administrador', 'fernando@fernando.com', '1111111111', '1993-05-27', '$2y$10$2WDV.p.FgFb3C0VNihZ8tODGEigHDrM9ahmoOpSl2JLkyapgEcAt6'),
(7, 'funcionario', 'teste@teste.com', '61888888888', '2025-06-04', '$2y$10$LKNDZ7IL1cqppZk9DglxSuanutTK54sz7AhQ1V42Gbd4u4s7zmcbu'),
(8, 'administrador', 'teste1@teste.com', '61888888888', '2025-06-19', '$2y$10$sG/y/C9fblXUnjpbZhfEu.NVcKfaNSS.G5oXozB0VOzJD9HFLyyEi'),
(9, 'funcionario', 'funcionario@funcionario', '5133945875', '2025-06-05', '$2y$10$cckOUnflLgmqEfpqxZLUveKhxX3u0MSvFGY6TXG4AzKKhlwNTLCn6');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `idade` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `ultimo_procedimento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pacientes`
--

INSERT INTO `pacientes` (`id`, `nome`, `telefone`, `idade`, `cpf`, `ultimo_procedimento`) VALUES
(1, 'Ana Souza', '(11) 98765-4321', 32, '123.456.789-00', 'Consulta clínica'),
(2, 'Bruno Lima', '(21) 99876-5432', 45, '234.567.890-11', 'Exame de sangue'),
(3, 'Carla Mendes', '(31) 91234-5678', 29, '345.678.901-22', 'Consulta dermatológica'),
(4, 'Diego Rocha', '(41) 92345-6789', 51, '456.789.012-33', 'Raio-X'),
(5, 'Eduarda Pires', '(51) 93456-7890', 38, '567.890.123-44', 'Ultrassonografia'),
(6, 'Fernando Gomes', '(61) 94567-8901', 40, '678.901.234-55', 'Check-up anual'),
(7, 'Gabriela Nunes', '(71) 95678-9012', 27, '789.012.345-66', 'Eletrocardiograma'),
(8, 'Henrique Silva', '(81) 96789-0123', 34, '890.123.456-77', 'Consulta ortopédica'),
(9, 'Isabela Martins', '(91) 97890-1234', 22, '901.234.567-88', 'Vacinação'),
(10, 'João Pedro', '(47) 98901-2345', 55, '012.345.678-99', 'Consulta clínica'),
(11, 'Larissa Costa', '(11) 98765-1111', 30, '111.111.111-11', 'Exame de sangue'),
(12, 'Mateus Dias', '(21) 99876-2222', 28, '222.222.222-22', 'Consulta oftalmológica'),
(13, 'Nathalia Alves', '(31) 91234-3333', 36, '333.333.333-33', 'Consulta ginecológica'),
(14, 'Otávio Neves', '(41) 92345-4444', 43, '444.444.444-44', 'Ultrassonografia'),
(15, 'Paula Ribeiro', '(51) 93456-5555', 39, '555.555.555-55', 'Consulta clínica'),
(16, 'Ricardo Viana', '(61) 94567-6666', 41, '666.666.666-66', 'Raio-X'),
(17, 'Sabrina Rocha', '(71) 95678-7777', 33, '777.777.777-77', 'Vacinação'),
(18, 'Thiago Lima', '(81) 96789-8888', 37, '888.888.888-88', 'Exame de sangue'),
(19, 'Ursula Ferreira', '(91) 97890-9999', 26, '999.999.999-99', 'Check-up'),
(20, 'Vinícius Castro', '(47) 98901-0000', 50, '000.000.000-00', 'Consulta clínica');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices de tabela `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cpf` (`cpf`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
