-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24-Fev-2019 às 16:53
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdcm`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblconsultas`
--

CREATE TABLE `tblconsultas` (
  `idcon` int(11) NOT NULL,
  `paciente` varchar(30) NOT NULL,
  `dtcon` date NOT NULL,
  `hora` varchar(5) NOT NULL,
  `especial` varchar(20) NOT NULL,
  `forma` varchar(20) NOT NULL,
  `valor` float NOT NULL,
  `unidade` varchar(20) NOT NULL,
  `medico` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblespecialidades`
--

CREATE TABLE `tblespecialidades` (
  `idespecial` int(11) NOT NULL,
  `especial` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tblespecialidades`
--

INSERT INTO `tblespecialidades` (`idespecial`, `especial`) VALUES
(1, 'Ortopedia'),
(2, 'Oftalmologista'),
(4, 'Cancerologia'),
(5, 'Ginecologista'),
(6, 'Psiquiatra'),
(7, 'Psicologo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblmedico`
--

CREATE TABLE `tblmedico` (
  `idmedico` int(11) NOT NULL,
  `medico` varchar(35) NOT NULL,
  `especialidade` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblpaciente`
--

CREATE TABLE `tblpaciente` (
  `idpaciente` int(11) NOT NULL,
  `cpf` varchar(18) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `telf` varchar(18) NOT NULL,
  `telc` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblconsultas`
--
ALTER TABLE `tblconsultas`
  ADD PRIMARY KEY (`idcon`);

--
-- Indexes for table `tblespecialidades`
--
ALTER TABLE `tblespecialidades`
  ADD PRIMARY KEY (`idespecial`);

--
-- Indexes for table `tblmedico`
--
ALTER TABLE `tblmedico`
  ADD PRIMARY KEY (`idmedico`);

--
-- Indexes for table `tblpaciente`
--
ALTER TABLE `tblpaciente`
  ADD PRIMARY KEY (`idpaciente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblconsultas`
--
ALTER TABLE `tblconsultas`
  MODIFY `idcon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblespecialidades`
--
ALTER TABLE `tblespecialidades`
  MODIFY `idespecial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblmedico`
--
ALTER TABLE `tblmedico`
  MODIFY `idmedico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpaciente`
--
ALTER TABLE `tblpaciente`
  MODIFY `idpaciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
