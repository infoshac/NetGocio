-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Out-2021 às 15:09
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `netgocio`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ligas`
--

CREATE TABLE `ligas` (
  `id_lig` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `logo_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ligas`
--

INSERT INTO `ligas` (`id_lig`, `id`, `name`, `logo_path`) VALUES
(1, 501, 'Premiership', 'https://cdn.sportmonks.com/images/soccer/leagues/501.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `liga_premiere`
--

CREATE TABLE `liga_premiere` (
  `id` int(11) NOT NULL,
  `Position` int(10) NOT NULL,
  `id_teams` int(11) NOT NULL,
  `Team` varchar(20) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Played` int(11) NOT NULL,
  `Won` int(11) NOT NULL,
  `Drawn` int(11) NOT NULL,
  `Lost` int(11) NOT NULL,
  `Goal` int(11) NOT NULL,
  `Difference` int(11) NOT NULL,
  `Points` int(11) NOT NULL,
  `logo_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `liga_premiere`
--

INSERT INTO `liga_premiere` (`id`, `Position`, `id_teams`, `Team`, `Name`, `Played`, `Won`, `Drawn`, `Lost`, `Goal`, `Difference`, `Points`, `logo_path`) VALUES
(428, 1, 314, 'Hearts', 'Hearts', 314, 5, 5, 0, 16, 9, 20, 'https://cdn.sportmonks.com/images/soccer/teams/26/314.png'),
(429, 2, 62, 'Rangers', 'Rangers', 62, 6, 2, 1, 15, 8, 20, 'https://cdn.sportmonks.com/images/soccer/teams/30/62.png'),
(430, 3, 282, 'Dundee United', 'Dundee United', 282, 6, 2, 2, 10, 4, 20, 'https://cdn.sportmonks.com/images/soccer/teams/26/282.png'),
(431, 4, 53, 'Celtic', 'Celtic', 53, 6, 1, 3, 23, 17, 19, 'https://cdn.sportmonks.com/images/soccer/teams/21/53.png'),
(432, 5, 66, 'Hibernian', 'Hibernian', 66, 4, 3, 3, 14, 2, 15, 'https://cdn.sportmonks.com/images/soccer/teams/2/66.png'),
(433, 6, 309, 'Motherwell', 'Motherwell', 309, 4, 2, 4, 12, -1, 14, 'https://cdn.sportmonks.com/images/soccer/teams/21/309.png'),
(434, 7, 496, 'St. Mirren', 'St. Mirren', 496, 3, 4, 2, 12, -4, 13, 'https://cdn.sportmonks.com/images/soccer/teams/16/496.png'),
(435, 8, 273, 'Aberdeen', 'Aberdeen', 273, 3, 2, 5, 11, -2, 11, 'https://cdn.sportmonks.com/images/soccer/teams/17/273.png'),
(436, 9, 258, 'Livingston', 'Livingston', 258, 3, 1, 6, 9, -6, 10, 'https://cdn.sportmonks.com/images/soccer/teams/2/258.png'),
(437, 10, 734, 'St. Johnstone', 'St. Johnstone', 734, 2, 3, 5, 6, -5, 9, 'https://cdn.sportmonks.com/images/soccer/teams/30/734.png'),
(438, 11, 284, 'Dundee', 'Dundee', 284, 1, 4, 5, 8, -10, 7, 'https://cdn.sportmonks.com/images/soccer/teams/28/284.png'),
(439, 12, 246, 'Ross County', 'Ross County', 246, 0, 3, 7, 10, -12, 3, 'https://cdn.sportmonks.com/images/soccer/teams/22/246.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `played_team`
--

CREATE TABLE `played_team` (
  `id` int(11) NOT NULL,
  `id_team` varchar(11) DEFAULT NULL,
  `id_played` varchar(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `Goals` int(11) DEFAULT NULL,
  `yellowCard` int(11) DEFAULT NULL,
  `redCard` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `played_team`
--

INSERT INTO `played_team` (`id`, `id_team`, `id_played`, `number`, `Goals`, `yellowCard`, `redCard`) VALUES
(13, '53', '108928', 1, NULL, NULL, 1),
(14, '53', '172923', 29, NULL, NULL, 29),
(15, '53', '173999', 65, NULL, NULL, 65),
(16, '53', '32761', 2, NULL, NULL, 2),
(17, '53', '173080', 3, NULL, NULL, 3),
(18, '53', '37342595', 47, NULL, NULL, 47),
(19, '53', '173129', 56, 2, NULL, 56),
(20, '53', '540672', 57, NULL, 1, 57),
(21, '53', '123913', 6, NULL, 1, 6),
(22, '53', '463976', 12, NULL, 1, 12),
(23, '53', '173160', 14, 4, 2, 14),
(24, '53', '172630', 18, 1, NULL, 18),
(25, '62', '1069', 1, NULL, NULL, 1),
(26, '62', '537378', 13, NULL, NULL, 13),
(27, '62', '6525', 33, NULL, 2, 33),
(28, '62', '378239', 54, NULL, NULL, 54),
(29, '62', '758', 2, 1, 1, 2),
(30, '62', '540027', 3, NULL, 1, 3),
(31, '62', '338951', 15, NULL, NULL, 15),
(32, '62', '130152', 5, 1, NULL, 5),
(33, '62', '2927', 6, 1, 2, 6),
(34, '62', '37260638', 16, NULL, NULL, 16),
(35, '62', '31483', 26, NULL, 1, 26),
(36, '62', '73552', 31, NULL, 1, 31),
(37, '314', '35', 1, NULL, NULL, 1),
(38, '314', '172979', 13, NULL, NULL, 13),
(39, '314', '8860', 2, 1, NULL, 2),
(40, '314', '172581', 4, 2, NULL, 4),
(41, '314', '1628', 21, 2, 1, 21),
(42, '314', '586850', 25, NULL, NULL, 25),
(43, '314', '174388', 19, 1, 1, 19),
(44, '314', '54089', 5, NULL, 2, 5),
(45, '314', '172604', 7, NULL, 1, 7),
(46, '314', '2662', 16, 1, 2, 16),
(47, '314', '172505', 11, 1, NULL, 11),
(48, '314', '122075', 18, NULL, NULL, 18),
(49, '282', '11998', 1, NULL, 1, 1),
(50, '282', '21427967', 31, NULL, NULL, 31),
(51, '282', '172895', 2, NULL, NULL, 2),
(52, '282', '333777', 3, NULL, NULL, 3),
(53, '282', '8438', 5, NULL, NULL, 5),
(54, '282', '8190', 6, NULL, NULL, 6),
(55, '282', '11472', 12, 2, 3, 12),
(56, '282', '172004', 8, 1, 4, 8),
(57, '282', '22536433', 14, NULL, NULL, 14),
(58, '282', '6536', 18, NULL, 4, 18),
(59, '282', '5641151', 21, NULL, 1, 21),
(60, '282', '518639', 23, 2, NULL, 23),
(61, '66', '496780', 21, NULL, NULL, 21),
(62, '66', '4307', 1, NULL, NULL, 1),
(63, '66', '171980', 4, NULL, 1, 4),
(64, '66', '176702', 5, 1, 4, 5),
(65, '66', '9510', 6, 1, 2, 6),
(66, '66', '9781', 13, NULL, NULL, 13),
(67, '66', '171978', 16, NULL, 1, 16),
(68, '66', '172377', 24, NULL, 1, 24),
(69, '66', '37260591', 3, NULL, 1, 3),
(70, '66', '174235', 26, NULL, NULL, 26),
(71, '66', '172828', 27, NULL, NULL, 27),
(72, '66', '174381', 7, 2, NULL, 7),
(73, '309', '6540', 23, 1, 4, 23),
(74, '309', '5693', 3, NULL, 1, 3),
(75, '309', '174085', 4, NULL, NULL, 4),
(76, '309', '537436', 19, NULL, 3, 19),
(77, '309', '12524', 5, 1, 1, 5),
(78, '309', '35683625', 25, NULL, NULL, 25),
(79, '309', '12321', 2, NULL, 3, 2),
(80, '309', '172600', 8, NULL, 2, 8),
(81, '309', '172704', 20, NULL, NULL, 20),
(82, '309', '173645', 6, NULL, NULL, 6),
(83, '309', '7160', 22, NULL, NULL, 22),
(84, '309', '35683626', 18, NULL, NULL, 18),
(85, '496', '4195', 1, NULL, NULL, 1),
(86, '496', '9281', 26, NULL, NULL, 26),
(87, '496', '12100', 2, NULL, NULL, 2),
(88, '496', '172462', 4, 2, 2, 4),
(89, '496', '122154', 5, NULL, NULL, 5),
(90, '496', '172748', 22, 2, 2, 22),
(91, '496', '3434', 8, NULL, 1, 8),
(92, '496', '174384', 17, NULL, NULL, 17),
(93, '496', '2483210', 14, NULL, NULL, 14),
(94, '496', '121792', 7, 1, 1, 7),
(95, '496', '37563060', 15, NULL, NULL, 15),
(96, '496', '2483209', 16, 1, 1, 16),
(97, '734', '172415', 1, NULL, NULL, 1),
(98, '734', '3288', 12, NULL, NULL, 12),
(99, '734', '378926', 45, NULL, NULL, 45),
(100, '734', '523934', 2, NULL, 1, 2),
(101, '734', '173767', 4, NULL, 1, 4),
(102, '734', '173046', 6, NULL, 1, 6),
(103, '734', '15563', 19, NULL, 3, 19),
(104, '734', '172383', 24, NULL, NULL, 24),
(105, '734', '172059', 8, NULL, 1, 8),
(106, '734', '172077', 10, NULL, 3, 10),
(107, '734', '2333', 13, NULL, 1, 13),
(108, '734', '1494445', 15, NULL, NULL, 15),
(109, '273', '1265', 1, NULL, NULL, 1),
(110, '273', '2755', 25, NULL, NULL, 25),
(111, '273', '171846', 4, NULL, NULL, 4),
(112, '273', '172791', 6, NULL, NULL, 6),
(113, '273', '3169867', 3, 1, NULL, 3),
(114, '273', '37260590', 22, NULL, 1, 22),
(115, '273', '8156', 10, NULL, NULL, 10),
(116, '273', '8042', 11, NULL, 1, 11),
(117, '273', '9377', 15, NULL, NULL, 15),
(118, '273', '7282', 17, 1, 3, 17),
(119, '273', '6648042', 19, 1, 4, 19),
(120, '273', '741623', 24, NULL, NULL, 24),
(121, '258', '4763', 32, NULL, NULL, 32),
(122, '258', '173891', 2, NULL, 4, 2),
(123, '258', '9680', 5, NULL, 2, 5),
(124, '258', '173208', 21, NULL, NULL, 21),
(125, '258', '174207', 3, NULL, 2, 3),
(126, '258', '2384', 40, NULL, NULL, 40),
(127, '258', '173717', 7, NULL, NULL, 7),
(128, '258', '173733', 10, NULL, 2, 10),
(129, '258', '174304', 17, 1, 3, 17),
(130, '258', '3574', 18, NULL, 3, 18),
(131, '258', '174211', 8, 1, 2, 8),
(132, '258', '13651674', 37, NULL, NULL, 37),
(133, '284', '2399', 1, NULL, 1, 1),
(134, '284', '28571456', 30, NULL, NULL, 30),
(135, '284', '172735', 2, NULL, NULL, 2),
(136, '284', '172695', 6, NULL, 2, 6),
(137, '284', '1967', 4, NULL, NULL, 4),
(138, '284', '172703', 14, NULL, 4, 14),
(139, '284', '172842', 16, NULL, NULL, 16),
(140, '284', '174187', 3, NULL, 2, 3),
(141, '284', '37548662', NULL, NULL, NULL, NULL),
(142, '284', '172687', 8, NULL, 3, 8),
(143, '284', '172017', 10, 1, 2, 10),
(144, '284', '174151', 18, NULL, 2, 18),
(145, '246', '173738', 1, NULL, NULL, 1),
(146, '246', '4361', 2, NULL, 1, 2),
(147, '246', '172045', 15, NULL, 2, 15),
(148, '246', '6429', 16, 1, NULL, 16),
(149, '246', '6378', 25, NULL, 1, 25),
(150, '246', '37260706', 33, NULL, NULL, 33),
(151, '246', '6234', 17, 2, 1, 17),
(152, '246', '172957', 7, 3, 1, 7),
(153, '246', '11896', 22, NULL, 1, 22),
(154, '246', '173218', 6, NULL, 2, 6),
(155, '246', '37536880', 32, NULL, NULL, 32),
(156, '246', '18151', 26, 1, 1, 26);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ligas`
--
ALTER TABLE `ligas`
  ADD PRIMARY KEY (`id_lig`);

--
-- Índices para tabela `liga_premiere`
--
ALTER TABLE `liga_premiere`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `played_team`
--
ALTER TABLE `played_team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `ligas`
--
ALTER TABLE `ligas`
  MODIFY `id_lig` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `liga_premiere`
--
ALTER TABLE `liga_premiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT de tabela `played_team`
--
ALTER TABLE `played_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
