-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 19, 2023 alle 13:01
-- Versione del server: 10.4.25-MariaDB
-- Versione PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tps`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `campionati`
--

CREATE TABLE `campionati` (
  `id_campionato` int(11) NOT NULL,
  `nazione_campionato` varchar(255) NOT NULL,
  `nome_campionato` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `campionati`
--

INSERT INTO `campionati` (`id_campionato`, `nazione_campionato`, `nome_campionato`) VALUES
(1, 'Italia', 'Serie A');

-- --------------------------------------------------------

--
-- Struttura della tabella `giornate`
--

CREATE TABLE `giornate` (
  `id` int(11) NOT NULL,
  `campionati` varchar(255) NOT NULL,
  `Numero_giornata` varchar(255) NOT NULL,
  `squadra_di_casa` varchar(255) NOT NULL,
  `gol_squadra_casa` varchar(255) NOT NULL,
  `gol_squadra_ospiti` varchar(255) NOT NULL,
  `squadra_ospite` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `giornate`
--

INSERT INTO `giornate` (`id`, `campionati`, `Numero_giornata`, `squadra_di_casa`, `gol_squadra_casa`, `gol_squadra_ospiti`, `squadra_ospite`) VALUES
(1, 'Serie A', '1', 'Sampdoria', '0', '2', 'Atalanta'),
(2, 'Serie A', '1', 'Milan', '4', '2', 'Udinese'),
(3, 'Serie A', '1', 'Monza', '1', '2', 'Torino'),
(4, 'Serie A', '1', 'Lecce', '1', '2', 'Inter'),
(5, 'Serie A', '1', 'Fiorentina', '3', '2', 'Cremonese'),
(6, 'Serie A', '1', 'Lazio', '2', '1', 'Bologna'),
(7, 'Serie A', '1', 'Spezia', '1', '0', 'Empoli'),
(8, 'Serie A', '1', 'Salernitana', '0', '1', 'Roma'),
(9, 'Serie A', '1', 'Verona', '2', '5', 'Napoli'),
(10, 'Serie A', '1', 'Juventus', '3', '0', 'Sassuolo'),
(11, 'Serie A', '2', 'Torino', '0', '0', 'Lazio'),
(12, 'Serie A', '2', 'Udinese', '0', '0', 'Salernitana'),
(13, 'Serie A', '2', 'Inter', '3', '0', 'Spezia'),
(14, 'Serie A', '2', 'Sassuolo', '1', '0', 'Lecce'),
(15, 'Serie A', '2', 'Napoli', '4', '0', 'Monza'),
(16, 'Serie A', '2', 'Empoli', '0', '0', 'Fiorentina'),
(17, 'Serie A', '2', 'Bologna', '1', '1', 'Verona'),
(18, 'Serie A', '2', 'Atalanta', '1', '1', 'Milan'),
(19, 'Serie A', '2', 'Roma', '1', '0', 'Cremonese'),
(20, 'Serie A', '2', 'Sampdoria', '0', '0', 'Juventus'),
(21, 'Serie A', '3', 'Monza', '1', '2', 'Udinese'),
(22, 'Serie A', '3', 'Lazio', '3', '1', 'Inter'),
(23, 'Serie A', '3', 'Juventus', '1', '1', 'Roma'),
(24, 'Serie A', '3', 'Cremonese', '1', '2', 'Torino'),
(25, 'Serie A', '3', 'Spezia', '2', '2', 'Sassuolo'),
(26, 'Serie A', '3', 'Milan', '2', '0', 'Bologna'),
(27, 'Serie A', '3', 'Verona', '0', '1', 'Atalanta'),
(28, 'Serie A', '3', 'Salernitana', '4', '0', 'Sampdoria'),
(29, 'Serie A', '3', 'Lecce', '1', '1', 'Empoli'),
(30, 'Serie A', '3', 'Fiorentina', '0', '0', 'Napoli'),
(31, 'Serie A', '4', 'Sassuolo', '0', '0', 'Milan'),
(32, 'Serie A', '4', 'Inter', '3', '1', 'Cremonese'),
(33, 'Serie A', '4', 'Roma', '3', '0', 'Monza'),
(34, 'Serie A', '4', 'Empoli', '1', '1', 'Verona'),
(35, 'Serie A', '4', 'Sampdoria', '1', '1', 'Lazio'),
(36, 'Serie A', '4', 'Udinese', '1', '0', 'Fiorentina'),
(37, 'Serie A', '4', 'Juventus', '2', '0', 'Spezia'),
(38, 'Serie A', '4', 'Napoli', '1', '1', 'Lecce'),
(39, 'Serie A', '4', 'Atalanta', '3', '1', 'Torino'),
(40, 'Serie A', '4', 'Bologna', '1', '1', 'Salernitana'),
(41, 'Serie A', '5', 'Fiorentina', '1', '1', 'Juventus'),
(42, 'Serie A', '5', 'Milan', '3', '2', 'Inter'),
(43, 'Serie A', '5', 'Lazio', '1', '2', 'Napoli'),
(44, 'Serie A', '5', 'Cremonese', '0', '0', 'Sassuolo'),
(45, 'Serie A', '5', 'Spezia', '2', '2', 'Bologna'),
(46, 'Serie A', '5', 'Verona', '2', '1', 'Sampdoria'),
(47, 'Serie A', '5', 'Udinese', '4', '0', 'Roma'),
(48, 'Serie A', '5', 'Monza', '0', '2', 'Atalanta'),
(49, 'Serie A', '5', 'Salernitana', '2', '2', 'Empoli'),
(50, 'Serie A', '5', 'Torino', '1', '0', 'Lecce'),
(51, 'Serie A', '6', 'Napoli', '1', '0', 'Spezia'),
(52, 'Serie A', '6', 'Inter', '1', '0', 'Torino'),
(53, 'Serie A', '6', 'Sampdoria', '1', '2', 'Milan'),
(54, 'Serie A', '6', 'Atalanta', '1', '1', 'Cremonese'),
(55, 'Serie A', '6', 'Sassuolo', '1', '3', 'Udinese'),
(56, 'Serie A', '6', 'Bologna', '2', '1', 'Fiorentina'),
(57, 'Serie A', '6', 'Lecce', '1', '1', 'Monza'),
(58, 'Serie A', '6', 'Lazio', '2', '0', 'Verona'),
(59, 'Serie A', '6', 'Juventus', '2', '2', 'Salernitana'),
(60, 'Serie A', '6', 'Empoli', '1', '2', 'Roma'),
(61, 'Serie A', '7', 'Salernitana', '1', '2', 'Lecce'),
(62, 'Serie A', '7', 'Bologna', '0', '1', 'Empoli'),
(63, 'Serie A', '7', 'Spezia', '2', '1', 'Sampdoria'),
(64, 'Serie A', '7', 'Torino', '0', '1', 'Sassuolo'),
(65, 'Serie A', '7', 'Udinese', '3', '1', 'Inter'),
(66, 'Serie A', '7', 'Fiorentina', '2', '0', 'Verona'),
(67, 'Serie A', '7', 'Monza', '1', '0', 'Juventus'),
(68, 'Serie A', '7', 'Cremonese', '0', '4', 'Lazio'),
(69, 'Serie A', '7', 'Roma', '0', '1', 'Atalanta'),
(70, 'Serie A', '7', 'Milan', '1', '2', 'Napoli'),
(71, 'Serie A', '8', 'Napoli', '3', '1', 'Torino'),
(72, 'Serie A', '8', 'Inter', '1', '2', 'Roma'),
(73, 'Serie A', '8', 'Empoli', '1', '3', 'Milan'),
(74, 'Serie A', '8', 'Lazio', '4', '0', 'Spezia'),
(75, 'Serie A', '8', 'Sassuolo', '5', '0', 'Salernitana'),
(76, 'Serie A', '8', 'Lecce', '1', '1', 'Cremonese'),
(77, 'Serie A', '8', 'Sampdoria', '0', '3', 'Monza'),
(78, 'Serie A', '8', 'Atalanta', '1', '0', 'Fiorentina'),
(79, 'Serie A', '8', 'Juventus', '3', '0', 'Bologna'),
(80, 'Serie A', '8', 'Verona', '1', '2', 'Udinese'),
(81, 'Serie A', '9', 'Sassuolo', '1', '2', 'Inter'),
(82, 'Serie A', '9', 'Milan', '2', '0', 'Juventus'),
(83, 'Serie A', '9', 'Bologna', '1', '1', 'Sampdoria'),
(84, 'Serie A', '9', 'Torino', '1', '1', 'Empoli'),
(85, 'Serie A', '9', 'Udinese', '2', '2', 'Atalanta'),
(86, 'Serie A', '9', 'Monza', '2', '0', 'Spezia'),
(87, 'Serie A', '9', 'Salernitana', '2', '1', 'Verona'),
(88, 'Serie A', '9', 'Cremonese', '1', '4', 'Napoli'),
(89, 'Serie A', '9', 'Roma', '2', '1', 'Lecce'),
(90, 'Serie A', '9', 'Fiorentina', '0', '4', 'Lazio'),
(91, 'Serie A', '10', 'Empoli', '1', '0', 'Monza'),
(92, 'Serie A', '10', 'Torino', '0', '1', 'Juventus'),
(93, 'Serie A', '10', 'Atalanta', '2', '1', 'Sassuolo'),
(94, 'Serie A', '10', 'Inter', '2', '0', 'Salernitana'),
(95, 'Serie A', '10', 'Lazio', '0', '0', 'Udinese'),
(96, 'Serie A', '10', 'Spezia', '2', '2', 'Cremonese'),
(97, 'Serie A', '10', 'Napoli', '3', '2', 'Bologna'),
(98, 'Serie A', '10', 'Verona', '1', '2', 'Milan'),
(99, 'Serie A', '10', 'Sampdoria', '0', '1', 'Roma'),
(100, 'Serie A', '10', 'Lecce', '1', '1', 'Fiorentina'),
(101, 'Serie A', '11', 'Juventus', '4', '0', 'Empoli'),
(102, 'Serie A', '11', 'Salernitana', '1', '0', 'Spezia'),
(103, 'Serie A', '11', 'Milan', '4', '1', 'Monza'),
(104, 'Serie A', '11', 'Fiorentina', '3', '4', 'Inter'),
(105, 'Serie A', '11', 'Udinese', '1', '2', 'Torino'),
(106, 'Serie A', '11', 'Bologna', '2', '0', 'Lecce'),
(107, 'Serie A', '11', 'Atalanta', '0', '2', 'Lazio'),
(108, 'Serie A', '11', 'Roma', '0', '1', 'Napoli'),
(109, 'Serie A', '11', 'Cremonese', '0', '1', 'Sampdoria'),
(110, 'Serie A', '11', 'Sassuolo', '2', '1', 'Verona'),
(111, 'Serie A', '12', 'Napoli', '4', '0', 'Sassuolo'),
(112, 'Serie A', '12', 'Lecce', '0', '1', 'Juventus'),
(113, 'Serie A', '12', 'Inter', '3', '0', 'Sampdoria'),
(114, 'Serie A', '12', 'Empoli', '0', '2', 'Atalanta'),
(115, 'Serie A', '12', 'Cremonese', '0', '0', 'Udinese'),
(116, 'Serie A', '12', 'Spezia', '1', '2', 'Fiorentina'),
(117, 'Serie A', '12', 'Lazio', '1', '3', 'Salernitana'),
(118, 'Serie A', '12', 'Torino', '2', '1', 'Milan'),
(119, 'Serie A', '12', 'Verona', '1', '3', 'Roma'),
(120, 'Serie A', '12', 'Monza', '1', '2', 'Bologna'),
(121, 'Serie A', '13', 'Udinese', '1', '1', 'Lecce'),
(122, 'Serie A', '13', 'Empoli', '1', '0', 'Sassuolo'),
(123, 'Serie A', '13', 'Salernitana', '2', '2', 'Cremonese'),
(124, 'Serie A', '13', 'Atalanta', '1', '2', 'Napoli'),
(125, 'Serie A', '13', 'Milan', '2', '1', 'Spezia'),
(126, 'Serie A', '13', 'Bologna', '2', '1', 'Torino'),
(127, 'Serie A', '13', 'Sampdoria', '0', '2', 'Fiorentina'),
(128, 'Serie A', '13', 'Monza', '2', '0', 'Verona'),
(129, 'Serie A', '13', 'Roma', '0', '1', 'Lazio'),
(130, 'Serie A', '13', 'Juventus', '2', '0', 'Inter'),
(131, 'Serie A', '14', 'Napoli', '2', '0', 'Empoli'),
(132, 'Serie A', '14', 'Spezia', '1', '1', 'Udinese'),
(133, 'Serie A', '14', 'Cremonese', '0', '0', 'Milan'),
(134, 'Serie A', '14', 'Sassuolo', '1', '1', 'Roma'),
(135, 'Serie A', '14', 'Lecce', '2', '1', 'Atalanta'),
(136, 'Serie A', '14', 'Torino', '2', '0', 'Sampdoria'),
(137, 'Serie A', '14', 'Fiorentina', '2', '1', 'Salernitana'),
(138, 'Serie A', '14', 'Inter', '6', '1', 'Bologna'),
(139, 'Serie A', '14', 'Verona', '0', '1', 'Juventus'),
(140, 'Serie A', '14', 'Lazio', '1', '0', 'Monza'),
(141, 'Serie A', '15', 'Empoli', '2', '0', 'Cremonese'),
(142, 'Serie A', '15', 'Napoli', '3', '2', 'Udinese'),
(143, 'Serie A', '15', 'Sampdoria', '0', '2', 'Lecce'),
(144, 'Serie A', '15', 'Bologna', '3', '0', 'Sassuolo'),
(145, 'Serie A', '15', 'Atalanta', '2', '3', 'Inter'),
(146, 'Serie A', '15', 'Roma', '1', '1', 'Torino'),
(147, 'Serie A', '15', 'Monza', '3', '0', 'Salernitana'),
(148, 'Serie A', '15', 'Verona', '1', '2', 'Spezia'),
(149, 'Serie A', '15', 'Milan', '2', '1', 'Fiorentina'),
(150, 'Serie A', '15', 'Juventus', '3', '0', 'Lazio'),
(151, 'Serie A', '16', 'Salernitana', '1', '2', 'Milan'),
(152, 'Serie A', '16', 'Sassuolo', '1', '2', 'Sampdoria'),
(153, 'Serie A', '16', 'Torino', '1', '1', 'Verona'),
(154, 'Serie A', '16', 'Spezia', '2', '2', 'Atalanta'),
(155, 'Serie A', '16', 'Roma', '1', '0', 'Bologna'),
(156, 'Serie A', '16', 'Lecce', '2', '1', 'Lazio'),
(157, 'Serie A', '16', 'Fiorentina', '1', '1', 'Monza'),
(158, 'Serie A', '16', 'Cremonese', '0', '1', 'Juventus'),
(159, 'Serie A', '16', 'Udinese', '1', '1', 'Empoli'),
(160, 'Serie A', '16', 'Inter', '1', '0', 'Napoli'),
(161, 'Serie A', '17', 'Fiorentina', '2', '1', 'Sassuolo'),
(162, 'Serie A', '17', 'Juventus', '1', '0', 'Udinese'),
(163, 'Serie A', '17', 'Monza', '2', '2', 'Inter'),
(164, 'Serie A', '17', 'Salernitana', '1', '1', 'Torino'),
(165, 'Serie A', '17', 'Spezia', '0', '0', 'Lecce'),
(166, 'Serie A', '17', 'Lazio', '2', '2', 'Empoli'),
(167, 'Serie A', '17', 'Sampdoria', '0', '2', 'Napoli'),
(168, 'Serie A', '17', 'Milan', '2', '2', 'Roma'),
(169, 'Serie A', '17', 'Verona', '2', '0', 'Cremonese'),
(170, 'Serie A', '17', 'Bologna', '1', '2', 'Atalanta'),
(171, 'Serie A', '18', 'Napoli', '5', '1', 'Juventus'),
(172, 'Serie A', '18', 'Cremonese', '2', '3', 'Monza'),
(173, 'Serie A', '18', 'Lecce', '2', '2', 'Milan'),
(174, 'Serie A', '18', 'Inter', '1', '0', 'Verona'),
(175, 'Serie A', '18', 'Sassuolo', '0', '2', 'Lazio'),
(176, 'Serie A', '18', 'Torino', '0', '1', 'Spezia'),
(177, 'Serie A', '18', 'Udinese', '1', '2', 'Bologna'),
(178, 'Serie A', '18', 'Atalanta', '8', '2', 'Salernitana'),
(179, 'Serie A', '18', 'Roma', '2', '0', 'Fiorentina'),
(180, 'Serie A', '18', 'Empoli', '1', '0', 'Sampdoria'),
(181, 'Serie A', '19', 'Verona', '2', '0', 'Lecce'),
(182, 'Serie A', '19', 'Salernitana', '0', '2', 'Napoli'),
(183, 'Serie A', '19', 'Fiorentina', '0', '1', 'Torino'),
(184, 'Serie A', '19', 'Sampdoria', '0', '1', 'Udinese'),
(185, 'Serie A', '19', 'Monza', '1', '1', 'Sassuolo'),
(186, 'Serie A', '19', 'Spezia', '0', '2', 'Roma'),
(187, 'Serie A', '19', 'Juventus', '3', '3', 'Atalanta'),
(188, 'Serie A', '19', 'Bologna', '1', '1', 'Cremonese'),
(189, 'Serie A', '19', 'Inter', '0', '1', 'Empoli'),
(190, 'Serie A', '19', 'Lazio', '4', '0', 'Milan'),
(191, 'Serie A', '20', 'Bologna', '2', '0', 'Spezia'),
(192, 'Serie A', '20', 'Lecce', '1', '2', 'Salernitana'),
(193, 'Serie A', '20', 'Empoli', '2', '2', 'Torino'),
(194, 'Serie A', '20', 'Cremonese', '1', '2', 'Inter'),
(195, 'Serie A', '20', 'Atalanta', '2', '0', 'Sampdoria'),
(196, 'Serie A', '20', 'Milan', '2', '5', 'Sassuolo'),
(197, 'Serie A', '20', 'Juventus', '0', '2', 'Monza'),
(198, 'Serie A', '20', 'Lazio', '1', '1', 'Fiorentina'),
(199, 'Serie A', '20', 'Napoli', '2', '1', 'Roma'),
(200, 'Serie A', '20', 'Udinese', '1', '1', 'Verona'),
(201, 'Serie A', '21', 'Cremonese', '0', '2', 'Lecce'),
(202, 'Serie A', '21', 'Roma', '2', '0', 'Empoli'),
(203, 'Serie A', '21', 'Sassuolo', '1', '0', 'Atalanta'),
(204, 'Serie A', '21', 'Spezia', '0', '3', 'Napoli'),
(205, 'Serie A', '21', 'Torino', '1', '0', 'Udinese'),
(206, 'Serie A', '21', 'Fiorentina', '1', '2', 'Bologna'),
(207, 'Serie A', '21', 'Inter', '1', '0', 'Milan'),
(208, 'Serie A', '21', 'Verona', '1', '1', 'Lazio'),
(209, 'Serie A', '21', 'Monza', '2', '2', 'Sampdoria'),
(210, 'Serie A', '21', 'Salernitana', '0', '3', 'Juventus'),
(211, 'Serie A', '22', 'Milan', '1', '0', 'Torino'),
(212, 'Serie A', '22', 'Empoli', '2', '2', 'Spezia'),
(213, 'Serie A', '22', 'Lecce', '1', '1', 'Roma'),
(214, 'Serie A', '22', 'Lazio', '0', '2', 'Atalanta'),
(215, 'Serie A', '22', 'Udinese', '2', '2', 'Sassuolo'),
(216, 'Serie A', '22', 'Bologna', '0', '1', 'Monza'),
(217, 'Serie A', '22', 'Juventus', '1', '0', 'Fiorentina'),
(218, 'Serie A', '22', 'Napoli', '3', '0', 'Cremonese'),
(219, 'Serie A', '22', 'Verona', '1', '0', 'Salernitana'),
(220, 'Serie A', '22', 'Sampdoria', '0', '0', 'Inter'),
(221, 'Serie A', '23', 'Sassuolo', '0', '2', 'Napoli'),
(222, 'Serie A', '23', 'Sampdoria', '1', '2', 'Bologna'),
(223, 'Serie A', '23', 'Monza', '0', '1', 'Milan'),
(224, 'Serie A', '23', 'Inter', '3', '1', 'Udinese'),
(225, 'Serie A', '23', 'Atalanta', '1', '2', 'Lecce'),
(226, 'Serie A', '23', 'Fiorentina', '1', '1', 'Empoli'),
(227, 'Serie A', '23', 'Salernitana', '0', '2', 'Lazio'),
(228, 'Serie A', '23', 'Spezia', '0', '2', 'Juventus'),
(229, 'Serie A', '23', 'Roma', '1', '0', 'Verona'),
(230, 'Serie A', '23', 'Torino', '2', '2', 'Cremonese'),
(231, 'Serie A', '24', 'Empoli', '0', '2', 'Napoli'),
(232, 'Serie A', '24', 'Lecce', '0', '1', 'Sassuolo'),
(233, 'Serie A', '24', 'Bologna', '1', '0', 'Inter'),
(234, 'Serie A', '24', 'Salernitana', '3', '0', 'Monza'),
(235, 'Serie A', '24', 'Udinese', '2', '2', 'Spezia'),
(236, 'Serie A', '24', 'Milan', '2', '0', 'Atalanta'),
(237, 'Serie A', '24', 'Verona', '0', '3', 'Fiorentina'),
(238, 'Serie A', '24', 'Lazio', '1', '0', 'Sampdoria'),
(239, 'Serie A', '24', 'Cremonese', '2', '1', 'Roma'),
(240, 'Serie A', '24', 'Juventus', '4', '2', 'Torino'),
(241, 'Serie A', '25', 'Napoli', '0', '1', 'Lazio'),
(242, 'Serie A', '25', 'Monza', '2', '1', 'Empoli'),
(243, 'Serie A', '25', 'Atalanta', '0', '0', 'Udinese'),
(244, 'Serie A', '25', 'Fiorentina', '2', '1', 'Milan'),
(245, 'Serie A', '25', 'Spezia', '0', '0', 'Verona'),
(246, 'Serie A', '25', 'Sampdoria', '0', '0', 'Salernitana'),
(247, 'Serie A', '25', 'Inter', '2', '0', 'Lecce'),
(248, 'Serie A', '25', 'Roma', '1', '0', 'Juventus'),
(249, 'Serie A', '25', 'Sassuolo', '3', '2', 'Cremonese'),
(250, 'Serie A', '25', 'Torino', '1', '0', 'Bologna'),
(251, 'Serie A', '26', 'Spezia', '2', '1', 'Inter'),
(252, 'Serie A', '26', 'Empoli', '0', '1', 'Udinese'),
(253, 'Serie A', '26', 'Napoli', '2', '0', 'Atalanta'),
(254, 'Serie A', '26', 'Bologna', '0', '0', 'Lazio'),
(255, 'Serie A', '26', 'Lecce', '0', '2', 'Torino'),
(256, 'Serie A', '26', 'Cremonese', '0', '2', 'Fiorentina'),
(257, 'Serie A', '26', 'Verona', '1', '1', 'Monza'),
(258, 'Serie A', '26', 'Roma', '3', '4', 'Sassuolo'),
(259, 'Serie A', '26', 'Juventus', '4', '2', 'Sampdoria'),
(260, 'Serie A', '26', 'Milan', '1', '1', 'Salernitana'),
(261, 'Serie A', '27', 'Sassuolo', '1', '0', 'Spezia'),
(262, 'Serie A', '27', 'Atalanta', '2', '1', 'Empoli'),
(263, 'Serie A', '27', 'Monza', '1', '1', 'Cremonese'),
(264, 'Serie A', '27', 'Salernitana', '2', '2', 'Bologna'),
(265, 'Serie A', '27', 'Udinese', '3', '1', 'Milan'),
(266, 'Serie A', '27', 'Sampdoria', '3', '1', 'Verona'),
(267, 'Serie A', '27', 'Torino', '0', '4', 'Napoli'),
(268, 'Serie A', '27', 'Fiorentina', '1', '0', 'Lecce'),
(269, 'Serie A', '27', 'Lazio', '1', '0', 'Roma'),
(270, 'Serie A', '27', 'Inter', '0', '1', 'Juventus'),
(271, 'Serie A', '28', 'Cremonese', '1', '3', 'Atalanta'),
(272, 'Serie A', '28', 'Inter', '0', '1', 'Fiorentina'),
(273, 'Serie A', '28', 'Juventus', '1', '0', 'Verona'),
(274, 'Serie A', '28', 'Bologna', '3', '0', 'Udinese'),
(275, 'Serie A', '28', 'Monza', '0', '2', 'Lazio'),
(276, 'Serie A', '28', 'Spezia', '1', '1', 'Salernitana'),
(277, 'Serie A', '28', 'Roma', '3', '0', 'Sampdoria'),
(278, 'Serie A', '28', 'Napoli', '0', '4', 'Milan'),
(279, 'Serie A', '28', 'Empoli', '1', '0', 'Lecce'),
(280, 'Serie A', '28', 'Sassuolo', '1', '1', 'Torino'),
(281, 'Serie A', '29', 'Salernitana', '1', '1', 'Inter'),
(282, 'Serie A', '29', 'Lecce', '1', '2', 'Napoli'),
(283, 'Serie A', '29', 'Milan', '0', '0', 'Empoli'),
(284, 'Serie A', '29', 'Udinese', '2', '2', 'Monza'),
(285, 'Serie A', '29', 'Fiorentina', '1', '1', 'Spezia'),
(286, 'Serie A', '29', 'Sampdoria', '2', '3', 'Cremonese'),
(287, 'Serie A', '29', 'Atalanta', '0', '2', 'Bologna'),
(288, 'Serie A', '29', 'Torino', '0', '1', 'Roma'),
(289, 'Serie A', '29', 'Verona', '2', '1', 'Sassuolo'),
(290, 'Serie A', '29', 'Lazio', '2', '1', 'Juventus'),
(291, 'Serie A', '30', 'Cremonese', '1', '0', 'Empoli'),
(292, 'Serie A', '30', 'Spezia', '0', '3', 'Lazio'),
(293, 'Serie A', '30', 'Bologna', '1', '1', 'Milan'),
(294, 'Serie A', '30', 'Napoli', '0', '0', 'Verona'),
(295, 'Serie A', '30', 'Inter', '0', '1', 'Monza'),
(296, 'Serie A', '30', 'Lecce', '1', '1', 'Sampdoria'),
(297, 'Serie A', '30', 'Torino', '1', '1', 'Salernitana'),
(298, 'Serie A', '30', 'Sassuolo', '1', '0', 'Juventus'),
(299, 'Serie A', '30', 'Roma', '3', '0', 'Udinese'),
(300, 'Serie A', '30', 'Fiorentina', '1', '1', 'Atalanta'),
(301, 'Serie A', '31', 'Verona', '2', '1', 'Bologna'),
(302, 'Serie A', '31', 'Salernitana', '3', '0', 'Sassuolo'),
(303, 'Serie A', '31', 'Lazio', '0', '1', 'Torino'),
(304, 'Serie A', '31', 'Sampdoria', '1', '1', 'Spezia'),
(305, 'Serie A', '31', 'Empoli', '0', '3', 'Inter'),
(306, 'Serie A', '31', 'Monza', '3', '2', 'Fiorentina'),
(307, 'Serie A', '31', 'Udinese', '3', '0', 'Cremonese'),
(308, 'Serie A', '31', 'Milan', '2', '0', 'Lecce'),
(309, 'Serie A', '31', 'Juventus', '0', '1', 'Napoli'),
(310, 'Serie A', '31', 'Atalanta', '3', '1', 'Roma'),
(311, 'Serie A', '32', 'Lecce', '1', '0', 'Udinese'),
(312, 'Serie A', '32', 'Spezia', '0', '2', 'Monza'),
(313, 'Serie A', '32', 'Roma', '1', '1', 'Milan'),
(314, 'Serie A', '32', 'Torino', '1', '2', 'Atalanta'),
(315, 'Serie A', '32', 'Inter', '3', '1', 'Lazio'),
(316, 'Serie A', '32', 'Cremonese', '1', '1', 'Verona'),
(317, 'Serie A', '32', 'Napoli', '1', '1', 'Salernitana'),
(318, 'Serie A', '32', 'Sassuolo', '2', '1', 'Empoli'),
(319, 'Serie A', '32', 'Fiorentina', '5', '0', 'Sampdoria'),
(320, 'Serie A', '32', 'Bologna', '1', '1', 'Juventus'),
(321, 'Serie A', '33', 'Juventus', '2', '1', 'Lecce'),
(322, 'Serie A', '33', 'Atalanta', '3', '2', 'Spezia'),
(323, 'Serie A', '33', 'Sampdoria', '0', '2', 'Torino'),
(324, 'Serie A', '33', 'Salernitana', '3', '3', 'Fiorentina'),
(325, 'Serie A', '33', 'Monza', '1', '1', 'Roma'),
(326, 'Serie A', '33', 'Lazio', '2', '0', 'Sassuolo'),
(327, 'Serie A', '33', 'Milan', '1', '1', 'Cremonese'),
(328, 'Serie A', '33', 'Verona', '0', '6', 'Inter'),
(329, 'Serie A', '33', 'Empoli', '3', '1', 'Bologna'),
(330, 'Serie A', '33', 'Udinese', '1', '1', 'Napoli'),
(331, 'Serie A', '34', 'Milan', '2', '0', 'Lazio'),
(332, 'Serie A', '34', 'Roma', '0', '2', 'Inter'),
(333, 'Serie A', '34', 'Cremonese', '2', '0', 'Spezia'),
(334, 'Serie A', '34', 'Atalanta', '0', '2', 'Juventus'),
(335, 'Serie A', '34', 'Torino', '1', '1', 'Monza'),
(336, 'Serie A', '34', 'Napoli', '1', '0', 'Fiorentina'),
(337, 'Serie A', '34', 'Lecce', '0', '1', 'Verona'),
(338, 'Serie A', '34', 'Udinese', '2', '0', 'Sampdoria'),
(339, 'Serie A', '34', 'Empoli', '2', '1', 'Salernitana'),
(340, 'Serie A', '34', 'Sassuolo', '1', '1', 'Bologna'),
(342, 'Serie A', '35', 'Lazio', '2', '2', 'Lecce'),
(343, 'Serie A', '35', 'Salernitana', '1', '0', 'Atalanta'),
(345, 'Serie A', '35', 'Inter', '4', '2', 'Sassuolo'),
(346, 'Serie A', '35', 'Verona', '0', '1', 'Torino'),
(347, 'Serie A', '35', 'Monza', '2', '0', 'Napoli'),
(348, 'Serie A', '35', 'Fiorentina', '2', '0', 'Udinese'),
(349, 'Serie A', '35', 'Bologna', '0', '0', 'Roma'),
(350, 'Serie A', '35', 'Juventus', '2', '0', 'Cremonese'),
(351, 'Serie A', '35', 'Sampdoria', '1', '1', 'Empoli'),
(352, 'Serie A', '35', 'Spezia', '2', '0', 'Milan');

-- --------------------------------------------------------

--
-- Struttura della tabella `squadre`
--

CREATE TABLE `squadre` (
  `id` int(11) NOT NULL,
  `nome_squadra` varchar(255) NOT NULL,
  `nazione_squadra` varchar(255) NOT NULL,
  `campionato_squadra` varchar(255) NOT NULL,
  `giornata` varchar(255) NOT NULL,
  `vittorie` varchar(255) NOT NULL,
  `pareggi` varchar(255) NOT NULL,
  `sconfitte` varchar(255) NOT NULL,
  `Goal_fatti` varchar(255) NOT NULL,
  `Goal_subiti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `squadre`
--

INSERT INTO `squadre` (`id`, `nome_squadra`, `nazione_squadra`, `campionato_squadra`, `giornata`, `vittorie`, `pareggi`, `sconfitte`, `Goal_fatti`, `Goal_subiti`) VALUES
(1, 'Atalanta', 'Italia', 'Serie A', '3', '17', '7', '11', '56', '42'),
(2, 'Bologna', 'Italia', 'Serie A', '35', '12', '11', '12', '43', '44'),
(3, 'Cremonese', 'Italia', 'Serie A', '35', '4', '12', '19', '31', '61'),
(4, 'Empoli', 'Italia', 'Serie A', '35', '9', '12', '14', '32', '45'),
(5, 'Fiorentina', 'Italia', 'Serie A', '35', '13', '10', '12', '47', '40'),
(6, 'Inter', 'Italia', 'Serie A', '35', '21', '3', '11', '66', '37'),
(7, 'Juventus', 'Italia', 'Serie A', '35', '21', '6', '8', '54', '28'),
(8, 'Lazio', 'Italia', 'Serie A', '35', '19', '8', '8', '54', '28'),
(9, 'Lecce', 'Italia', 'Serie A', '35', '7', '11', '17', '30', '43'),
(10, 'Milan', 'Italia', 'Serie A', '35', '17', '10', '8', '55', '41'),
(11, 'Monza', 'Italia', 'Serie A', '35', '13', '10', '12', '44', '45'),
(12, 'Napoli', 'Italia', 'Serie A', '35', '26', '5', '4', '70', '25'),
(13, 'Roma', 'Italia', 'Serie A', '35', '17', '8', '10', '45', '33'),
(14, 'Salernitana', 'Italia', 'Serie A', '35', '8', '14', '13', '43', '56'),
(15, 'Sampdoria', 'Italia', 'Serie A', '35', '3', '9', '23', '21', '62'),
(16, 'Sassuolo', 'Italia', 'Serie A', '35', '12', '8', '15', '43', '54'),
(17, 'Spezia', 'Italia', 'Serie A', '35', '6', '12', '17', '30', '56'),
(18, 'Torino', 'Italia', 'Serie A', '35', '13', '10', '12', '37', '39'),
(19, 'Udinese', 'Italia', 'Serie A', '35', '11', '13', '11', '45', '43'),
(20, 'Verona', 'Italia', 'Serie A', '35', '6', '9', '18', '27', '51');

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `id_utente` int(11) NOT NULL,
  `nome_utente` varchar(255) NOT NULL,
  `password_utente` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`id_utente`, `nome_utente`, `password_utente`) VALUES
(1, 'admin', 'admin');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `campionati`
--
ALTER TABLE `campionati`
  ADD PRIMARY KEY (`id_campionato`),
  ADD KEY `nome_campionato` (`nome_campionato`);

--
-- Indici per le tabelle `giornate`
--
ALTER TABLE `giornate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `squadra_di_Casa` (`squadra_di_casa`),
  ADD KEY `squadra_ospite` (`squadra_ospite`),
  ADD KEY `campionato` (`campionati`);

--
-- Indici per le tabelle `squadre`
--
ALTER TABLE `squadre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campionato_squadre` (`campionato_squadra`),
  ADD KEY `nome_squadra` (`nome_squadra`);

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_utente`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `campionati`
--
ALTER TABLE `campionati`
  MODIFY `id_campionato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT per la tabella `giornate`
--
ALTER TABLE `giornate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=353;

--
-- AUTO_INCREMENT per la tabella `squadre`
--
ALTER TABLE `squadre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT per la tabella `user`
--
ALTER TABLE `user`
  MODIFY `id_utente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `giornate`
--
ALTER TABLE `giornate`
  ADD CONSTRAINT `giornate_ibfk_1` FOREIGN KEY (`campionati`) REFERENCES `campionati` (`nome_campionato`),
  ADD CONSTRAINT `squadra_di_casa` FOREIGN KEY (`squadra_di_casa`) REFERENCES `squadre` (`nome_squadra`),
  ADD CONSTRAINT `squadra_ospite` FOREIGN KEY (`squadra_ospite`) REFERENCES `squadre` (`nome_squadra`);

--
-- Limiti per la tabella `squadre`
--
ALTER TABLE `squadre`
  ADD CONSTRAINT `campionato_squadre` FOREIGN KEY (`campionato_squadra`) REFERENCES `campionati` (`nome_campionato`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
