-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Jul-2024 às 09:32
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `leituras`
--

CREATE TABLE `leituras` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `dia` date NOT NULL,
  `altura` int(11) NOT NULL,
  `peso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `leituras`
--

INSERT INTO `leituras` (`id`, `nome`, `dia`, `altura`, `peso`) VALUES
(1, 'FER', '2024-07-07', 234, 123),
(2, 'Silvia', '2024-07-07', 174, 182),
(3, 'Fernando', '2024-07-08', 174, 82),
(4, 'Helena', '2024-07-07', 174, 82),
(5, 'Torreira', '2024-07-07', 174, 82),
(6, 'Maria', '2024-06-30', 234, 23),
(7, 'Teresa', '2024-07-07', 176, 82),
(8, 'Rita', '2024-07-07', 145, 68),
(9, 'Pedro Teixeira', '2024-07-07', 156, 67),
(10, 'Ferreira', '2024-07-07', 145, 78),
(11, 'Perreira', '2024-07-07', 176, 84),
(12, 'Martim', '2024-07-07', 189, 86),
(13, 'Martim', '2024-07-07', 189, 86),
(14, 'Maria', '2024-06-30', 187, 45),
(15, 'Maria', '2024-06-30', 187, 45),
(16, 'Janeiras', '2024-07-07', 190, 90),
(17, 'Janeiras', '2024-07-07', 190, 90),
(18, 'Parrilha', '2024-07-07', 172, 67),
(20, 'Wanda', '2024-07-07', 156, 23),
(21, 'Tina', '2024-07-08', 156, 67),
(22, 'Maneul', '2024-07-08', 156, 23),
(23, 'Mina', '2024-07-08', 156, 78),
(24, 'Martins', '2024-07-08', 167, 67),
(25, 'ewtret', '2024-07-09', 233, 231),
(26, 'ewtret', '2024-07-09', 233, 231),
(27, 'Titi', '2024-07-08', 167, 78),
(28, 'Titi', '2024-07-08', 167, 78),
(29, 'rita', '2024-07-08', 145, 1234),
(30, 'rita', '2024-07-08', 145, 1234),
(31, 'Ribeiro', '2024-07-08', 189, 90),
(32, 'Errita', '2024-07-08', 184, 87),
(33, 'Errita', '2024-07-08', 184, 87),
(34, 'Witinha', '2024-07-08', 167, 45),
(35, 'Witinha', '2024-07-08', 167, 45),
(36, 'Yeri', '2024-07-08', 167, 89),
(37, 'Yeri', '2024-07-08', 167, 89),
(38, 'Yeri', '2024-07-08', 167, 89),
(39, 'Quioza', '2024-07-08', 176, 82),
(40, 'Quioza', '2024-07-08', 176, 82),
(41, 'Trena', '2024-07-08', 176, 77),
(42, 'Trena', '2024-07-08', 176, 77),
(43, 'Carina', '2024-07-08', 167, 78);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `leituras`
--
ALTER TABLE `leituras`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `leituras`
--
ALTER TABLE `leituras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
