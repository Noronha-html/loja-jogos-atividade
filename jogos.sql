-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/03/2026 às 13:06
-- Versão do servidor: 10.4.27-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jogos`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogos`
--

CREATE TABLE `jogos` (
  `JogoID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Genero` varchar(55) NOT NULL,
  `Descricao` varchar(255) NOT NULL,
  `PublicadoraID` int(11) NOT NULL,
  `ProdutoraID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `jogos`
--

INSERT INTO `jogos` (`JogoID`, `Nome`, `Genero`, `Descricao`, `PublicadoraID`, `ProdutoraID`) VALUES
(1, 'Jogo1', 'Genero1', 'Descricao1', 1, 1),
(2, 'Jogo2', 'Genero2', 'Descricao', 2, 2),
(3, 'Jogo3', 'Genero3', 'Descricao3', 3, 3),
(4, 'Jogo4', 'Genero4', 'Descricao4', 4, 4),
(5, 'Jogo5', 'Genero5', 'Descricao5', 5, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtoras`
--

CREATE TABLE `produtoras` (
  `ProdutoraID` int(11) NOT NULL,
  `NomeProdutora` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `produtoras`
--

INSERT INTO `produtoras` (`ProdutoraID`, `NomeProdutora`) VALUES
(1, 'Produtora1'),
(2, 'Produtora2'),
(3, 'Produtora3'),
(4, 'Produtora4'),
(5, 'Produtora5');

-- --------------------------------------------------------

--
-- Estrutura para tabela `publicadoras`
--

CREATE TABLE `publicadoras` (
  `PublicadoraID` int(11) NOT NULL,
  `NomePublicadora` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `publicadoras`
--

INSERT INTO `publicadoras` (`PublicadoraID`, `NomePublicadora`) VALUES
(1, 'Publicadora1'),
(2, 'Publicadora2'),
(3, 'Publicadora3'),
(4, 'Publicadora4'),
(5, 'Publicadora5');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`JogoID`),
  ADD KEY `FK_jogos_produtoras_idx` (`ProdutoraID`),
  ADD KEY `FK_jogos_publicadoras_idx` (`PublicadoraID`);

--
-- Índices de tabela `produtoras`
--
ALTER TABLE `produtoras`
  ADD PRIMARY KEY (`ProdutoraID`);

--
-- Índices de tabela `publicadoras`
--
ALTER TABLE `publicadoras`
  ADD PRIMARY KEY (`PublicadoraID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `JogoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produtoras`
--
ALTER TABLE `produtoras`
  MODIFY `ProdutoraID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `publicadoras`
--
ALTER TABLE `publicadoras`
  MODIFY `PublicadoraID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `jogos`
--
ALTER TABLE `jogos`
  ADD CONSTRAINT `FK_jogos_produtoras` FOREIGN KEY (`ProdutoraID`) REFERENCES `produtoras` (`ProdutoraID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_jogos_publicadoras` FOREIGN KEY (`PublicadoraID`) REFERENCES `publicadoras` (`PublicadoraID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
