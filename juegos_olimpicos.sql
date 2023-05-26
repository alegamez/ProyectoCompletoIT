-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2023 a las 19:15:34
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juegos_olimpicos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deporte`
--

CREATE TABLE `deporte` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `tipo` enum('Individual','Equipo') NOT NULL DEFAULT 'Individual',
  `sexo` enum('Masculino','Femenino') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `deporte`
--

INSERT INTO `deporte` (`id`, `nombre`, `tipo`, `sexo`) VALUES
(1, 'Fútbol', 'Equipo', 'Masculino'),
(2, 'Fútbol', 'Equipo', 'Femenino'),
(3, 'Baloncesto', 'Equipo', 'Masculino'),
(4, 'Baloncesto', 'Equipo', 'Femenino'),
(5, 'Tiro con arco', 'Individual', 'Masculino'),
(6, 'Tiro con arco', 'Individual', 'Femenino'),
(7, 'Natación', 'Individual', 'Masculino'),
(8, 'Natación', 'Individual', 'Femenino'),
(9, 'Atletismo', 'Individual', 'Masculino'),
(10, 'Atletismo', 'Individual', 'Femenino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deportista`
--

CREATE TABLE `deportista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `id_equipo` int(11) DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL,
  `id_deporte` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `deportista`
--

INSERT INTO `deportista` (`id`, `nombre`, `apellido`, `edad`, `sexo`, `id_equipo`, `id_pais`, `id_deporte`) VALUES
(21, 'Alvaro', 'Morata', 23, 'M', 1, 1, 1),
(22, 'Antonio', 'Martínez', 26, 'M', 1, 1, 1),
(23, 'Javier', 'Sánchez', 21, 'M', 1, 1, 1),
(24, 'David', 'López', 24, 'M', 1, 1, 1),
(25, 'Pedro', 'García', 22, 'M', 1, 1, 1),
(26, 'Pablo', 'Fernández', 20, 'M', 1, 1, 1),
(27, 'Alberto', 'Romero', 27, 'M', 1, 1, 1),
(28, 'José', 'Hernández', 19, 'M', 1, 1, 1),
(29, 'Miguel', 'Gómez', 25, 'M', 1, 1, 1),
(30, 'Adrián', 'Jiménez', 21, 'M', 1, 1, 1),
(31, 'Francisco', 'Ruiz', 22, 'M', 1, 1, 1),
(32, 'Luis', 'Díaz', 24, 'M', 1, 1, 1),
(33, 'Carlos', 'Moreno', 23, 'M', 1, 1, 1),
(34, 'Mario', 'Muñoz', 20, 'M', 1, 1, 1),
(35, 'Sergio', 'Ortega', 26, 'M', 1, 1, 1),
(36, 'Jorge', 'Castillo', 21, 'M', 1, 1, 1),
(37, 'Fernando', 'Santos', 22, 'M', 1, 1, 1),
(38, 'Diego', 'Vega', 25, 'M', 1, 1, 1),
(39, 'Juan', 'Rojas', 23, 'M', 1, 1, 1),
(40, 'Roberto', 'Navarro', 27, 'M', 1, 1, 1),
(41, 'Laura', 'Martínez', 25, 'F', 2, 1, 2),
(42, 'Carmen', 'García', 22, 'F', 2, 1, 2),
(43, 'Ana', 'López', 23, 'F', 2, 1, 2),
(44, 'Sofía', 'Pérez', 26, 'F', 2, 1, 2),
(45, 'Marta', 'González', 28, 'F', 2, 1, 2),
(46, 'Lucía', 'Fernández', 24, 'F', 2, 1, 2),
(47, 'María', 'Díaz', 27, 'F', 2, 1, 2),
(48, 'Isabel', 'Sánchez', 29, 'F', 2, 1, 2),
(49, 'Teresa', 'Romero', 21, 'F', 2, 1, 2),
(50, 'Cristina', 'Hernández', 25, 'F', 2, 1, 2),
(51, 'Natalia', 'Torres', 23, 'F', 2, 1, 2),
(52, 'Raquel', 'Santos', 26, 'F', 2, 1, 2),
(53, 'Adriana', 'Vega', 24, 'F', 2, 1, 2),
(54, 'Patricia', 'Jiménez', 27, 'F', 2, 1, 2),
(55, 'Elena', 'Álvarez', 22, 'F', 2, 1, 2),
(56, 'Sara', 'Gómez', 28, 'F', 2, 1, 2),
(57, 'Nerea', 'Morales', 25, 'F', 2, 1, 2),
(58, 'Ainhoa', 'Rubio', 23, 'F', 2, 1, 2),
(59, 'Irene', 'Ortega', 26, 'F', 2, 1, 2),
(60, 'Paula', 'Gutiérrez', 24, 'F', 2, 1, 2),
(61, 'Antoine', 'Giroud', 26, 'M', 5, 2, 1),
(62, 'Hugo', 'Lloris', 24, 'M', 5, 2, 1),
(63, 'Karim', 'Benzema', 23, 'M', 5, 2, 1),
(64, 'Raphael', 'Varane', 27, 'M', 5, 2, 1),
(65, 'Paul', 'Pogba', 25, 'M', 5, 2, 1),
(66, 'Kylian', 'Mbappé', 22, 'M', 5, 2, 1),
(67, 'NGolo', 'Kante', 28, 'M', 5, 2, 1),
(68, 'Benjamin', 'Pavard', 23, 'M', 5, 2, 1),
(69, 'Corentin', 'Tolisso', 25, 'M', 5, 2, 1),
(70, 'Lucas', 'Hernandez', 24, 'M', 5, 2, 1),
(71, 'Thomas', 'Lemar', 22, 'M', 5, 2, 1),
(72, 'Florian', 'Thauvin', 27, 'M', 5, 2, 1),
(73, 'Olivier', 'Giroud', 30, 'M', 5, 2, 1),
(74, 'Wissam', 'Ben Yedder', 28, 'M', 5, 2, 1),
(75, 'Clement', 'Lenglet', 25, 'M', 5, 2, 1),
(76, 'Steven', 'Nzonzi', 27, 'M', 5, 2, 1),
(77, 'Presnel', 'Kimpembe', 24, 'M', 5, 2, 1),
(78, 'Moussa', 'Sissoko', 26, 'M', 5, 2, 1),
(79, 'Adrien', 'Rabiot', 23, 'M', 5, 2, 1),
(80, 'Mike', 'Maignan', 25, 'M', 5, 2, 1),
(81, 'Emma', 'Dubois', 24, 'F', 6, 2, 2),
(82, 'Chloé', 'Lefebvre', 22, 'F', 6, 2, 2),
(83, 'Sophie', 'Durand', 25, 'F', 6, 2, 2),
(84, 'Camille', 'Girard', 23, 'F', 6, 2, 2),
(85, 'Julie', 'Lacroix', 26, 'F', 6, 2, 2),
(86, 'Aurélie', 'Martel', 20, 'F', 6, 2, 2),
(87, 'Anaïs', 'Bouchard', 28, 'F', 6, 2, 2),
(88, 'Céline', 'Moreau', 21, 'F', 6, 2, 2),
(89, 'Elodie', 'Rousseau', 27, 'F', 6, 2, 2),
(90, 'Emilie', 'Berger', 23, 'F', 6, 2, 2),
(91, 'Isabelle', 'Fournier', 24, 'F', 6, 2, 2),
(92, 'Mathilde', 'Gauthier', 26, 'F', 6, 2, 2),
(93, 'Marie', 'Lambert', 22, 'F', 6, 2, 2),
(94, 'Léa', 'Dupont', 20, 'F', 6, 2, 2),
(95, 'Noémie', 'Renaud', 27, 'F', 6, 2, 2),
(96, 'Océane', 'Michel', 24, 'F', 6, 2, 2),
(97, 'Pauline', 'Dumas', 21, 'F', 6, 2, 2),
(98, 'Sandrine', 'Fabre', 28, 'F', 6, 2, 2),
(99, 'Sylvie', 'Joly', 23, 'F', 6, 2, 2),
(100, 'Valérie', 'Leclerc', 25, 'F', 6, 2, 2),
(101, 'Andrea', 'Ricci', 22, 'M', 9, 3, 1),
(102, 'Giovanni', 'Ferrari', 25, 'M', 9, 3, 1),
(103, 'Marco', 'Romano', 27, 'M', 9, 3, 1),
(104, 'Lorenzo', 'Bruno', 23, 'M', 9, 3, 1),
(105, 'Alessandro', 'Russo', 24, 'M', 9, 3, 1),
(106, 'Gabriele', 'Costa', 26, 'M', 9, 3, 1),
(107, 'Davide', 'Fontana', 28, 'M', 9, 3, 1),
(108, 'Francesco', 'Moretti', 22, 'M', 9, 3, 1),
(109, 'Antonio', 'Lombardi', 23, 'M', 9, 3, 1),
(110, 'Alberto', 'Gallo', 25, 'M', 9, 3, 1),
(111, 'Mattia', 'Pellegrini', 24, 'M', 9, 3, 1),
(112, 'Riccardo', 'Giordano', 26, 'M', 9, 3, 1),
(113, 'Simone', 'Mancini', 27, 'M', 9, 3, 1),
(114, 'Luigi', 'Marchetti', 28, 'M', 9, 3, 1),
(115, 'Cristian', 'Greco', 23, 'M', 9, 3, 1),
(116, 'Federico', 'Santoro', 22, 'M', 9, 3, 1),
(117, 'Enrico', 'Conte', 24, 'M', 9, 3, 1),
(118, 'Mauro', 'Rizzo', 26, 'M', 9, 3, 1),
(119, 'Roberto', 'Fabbri', 27, 'M', 9, 3, 1),
(120, 'Stefano', 'Vitali', 28, 'M', 9, 3, 1),
(121, 'Giulia', 'Rossi', 23, 'F', 10, 3, 2),
(122, 'Sofia', 'Bianchi', 25, 'F', 10, 3, 2),
(123, 'Martina', 'Ricci', 22, 'F', 10, 3, 2),
(124, 'Alessia', 'Conti', 26, 'F', 10, 3, 2),
(125, 'Serena', 'Gallo', 27, 'F', 10, 3, 2),
(126, 'Valentina', 'Marini', 24, 'F', 10, 3, 2),
(127, 'Beatrice', 'Santoro', 28, 'F', 10, 3, 2),
(128, 'Ludovica', 'Rizzo', 21, 'F', 10, 3, 2),
(129, 'Federica', 'Moretti', 26, 'F', 10, 3, 2),
(130, 'Alice', 'Greco', 23, 'F', 10, 3, 2),
(131, 'Giorgia', 'Ferrari', 25, 'F', 10, 3, 2),
(132, 'Camilla', 'Pellegrini', 29, 'F', 10, 3, 2),
(133, 'Sara', 'Rinaldi', 24, 'F', 10, 3, 2),
(134, 'Noemi', 'Lombardi', 27, 'F', 10, 3, 2),
(135, 'Francesca', 'Neri', 22, 'F', 10, 3, 2),
(136, 'Simona', 'Barbieri', 28, 'F', 10, 3, 2),
(137, 'Elisa', 'Fabbri', 26, 'F', 10, 3, 2),
(138, 'Gaia', 'Mancini', 23, 'F', 10, 3, 2),
(139, 'Martina', 'Fontana', 25, 'F', 10, 3, 2),
(140, 'Alice', 'Galli', 21, 'F', 10, 3, 2),
(141, 'Michael', 'Johnson', 23, 'M', 13, 4, 1),
(142, 'Robert', 'Davis', 28, 'M', 13, 4, 1),
(143, 'William', 'Jones', 24, 'M', 13, 4, 1),
(144, 'John', 'Smith', 26, 'M', 13, 4, 1),
(145, 'Christopher', 'Wilson', 29, 'M', 13, 4, 1),
(146, 'David', 'Clark', 22, 'M', 13, 4, 1),
(147, 'Brian', 'Moore', 25, 'M', 13, 4, 1),
(148, 'James', 'Brown', 27, 'M', 13, 4, 1),
(149, 'Eric', 'Johnson', 24, 'M', 13, 4, 1),
(150, 'Thomas', 'White', 23, 'M', 13, 4, 1),
(151, 'Joseph', 'Davis', 28, 'M', 13, 4, 1),
(152, 'Matthew', 'Robinson', 25, 'M', 13, 4, 1),
(153, 'Jason', 'Jones', 26, 'M', 13, 4, 1),
(154, 'Scott', 'Williams', 27, 'M', 13, 4, 1),
(155, 'Kevin', 'Taylor', 24, 'M', 13, 4, 1),
(156, 'Mark', 'Brown', 23, 'M', 13, 4, 1),
(157, 'Daniel', 'Miller', 29, 'M', 13, 4, 1),
(158, 'Ryan', 'Anderson', 25, 'M', 13, 4, 1),
(159, 'Joshua', 'Jackson', 26, 'M', 13, 4, 1),
(160, 'Nicholas', 'Wilson', 24, 'M', 13, 4, 1),
(161, 'Emma', 'Johnson', 23, 'F', 14, 4, 2),
(162, 'Olivia', 'Smith', 27, 'F', 14, 4, 2),
(163, 'Ava', 'Brown', 29, 'F', 14, 4, 2),
(164, 'Sophia', 'Lee', 25, 'F', 14, 4, 2),
(165, 'Isabella', 'Garcia', 26, 'F', 14, 4, 2),
(166, 'Mia', 'Davis', 21, 'F', 14, 4, 2),
(167, 'Amelia', 'Jones', 24, 'F', 14, 4, 2),
(168, 'Charlotte', 'Rodriguez', 26, 'F', 14, 4, 2),
(169, 'Harper', 'Martinez', 22, 'F', 14, 4, 2),
(170, 'Evelyn', 'Hernandez', 27, 'F', 14, 4, 2),
(171, 'Abigail', 'Lopez', 28, 'F', 14, 4, 2),
(172, 'Emily', 'Gonzalez', 25, 'F', 14, 4, 2),
(173, 'Elizabeth', 'Wilson', 26, 'F', 14, 4, 2),
(174, 'Sofia', 'Anderson', 24, 'F', 14, 4, 2),
(175, 'Victoria', 'Thomas', 23, 'F', 14, 4, 2),
(176, 'Madison', 'Jackson', 29, 'F', 14, 4, 2),
(177, 'Scarlett', 'White', 22, 'F', 14, 4, 2),
(178, 'Chloe', 'Harris', 27, 'F', 14, 4, 2),
(179, 'Grace', 'Martin', 24, 'F', 14, 4, 2),
(180, 'Natalie', 'Allen', 26, 'F', 14, 4, 2),
(181, 'Lucas', 'Silva', 25, 'M', 17, 5, 1),
(182, 'Rafael', 'Oliveira', 27, 'M', 17, 5, 1),
(183, 'Felipe', 'Santos', 23, 'M', 17, 5, 1),
(184, 'Renato', 'Lima', 26, 'M', 17, 5, 1),
(185, 'Marcelo', 'Garcia', 24, 'M', 17, 5, 1),
(186, 'João', 'Rodrigues', 21, 'M', 17, 5, 1),
(187, 'Fábio', 'Pereira', 22, 'M', 17, 5, 1),
(188, 'Gustavo', 'Alves', 29, 'M', 17, 5, 1),
(189, 'Rodrigo', 'Ferreira', 28, 'M', 17, 5, 1),
(190, 'Luciano', 'Silveira', 30, 'M', 17, 5, 1),
(191, 'Vitor', 'Vieira', 23, 'M', 17, 5, 1),
(192, 'Hugo', 'Couto', 26, 'M', 17, 5, 1),
(193, 'Thiago', 'Gomes', 24, 'M', 17, 5, 1),
(194, 'Anderson', 'Costa', 21, 'M', 17, 5, 1),
(195, 'Cristiano', 'Fernandes', 22, 'M', 17, 5, 1),
(196, 'Vinicius', 'Souza', 25, 'M', 17, 5, 1),
(197, 'Eduardo', 'Martins', 27, 'M', 17, 5, 1),
(198, 'Gabriel', 'Pereira', 24, 'M', 17, 5, 1),
(199, 'Leonardo', 'Mendes', 23, 'M', 17, 5, 1),
(200, 'Paulo', 'Sampaio', 28, 'M', 17, 5, 1),
(201, 'Maria', 'Silva', 24, 'F', 18, 5, 2),
(202, 'Ana', 'Garcia', 25, 'F', 18, 5, 2),
(203, 'Carla', 'Santos', 27, 'F', 18, 5, 2),
(204, 'Julia', 'Oliveira', 23, 'F', 18, 5, 2),
(205, 'Gabriela', 'Ferreira', 22, 'F', 18, 5, 2),
(206, 'Lucia', 'Rodrigues', 26, 'F', 18, 5, 2),
(207, 'Aline', 'Costa', 28, 'F', 18, 5, 2),
(208, 'Raquel', 'Nunes', 29, 'F', 18, 5, 2),
(209, 'Daniela', 'Ribeiro', 25, 'F', 18, 5, 2),
(210, 'Mariana', 'Alves', 24, 'F', 18, 5, 2),
(211, 'Leticia', 'Pereira', 26, 'F', 18, 5, 2),
(212, 'Isabela', 'Mendes', 23, 'F', 18, 5, 2),
(213, 'Camila', 'Soares', 27, 'F', 18, 5, 2),
(214, 'Lara', 'Lima', 28, 'F', 18, 5, 2),
(215, 'Juliana', 'Souza', 24, 'F', 18, 5, 2),
(216, 'Fernanda', 'Martins', 26, 'F', 18, 5, 2),
(217, 'Beatriz', 'Correia', 23, 'F', 18, 5, 2),
(218, 'Tatiana', 'Barbosa', 27, 'F', 18, 5, 2),
(219, 'Renata', 'Fonseca', 25, 'F', 18, 5, 2),
(220, 'Jéssica', 'Gonçalves', 24, 'F', 18, 5, 2),
(221, 'Juan', 'Pérez', 24, 'M', 21, 6, 1),
(222, 'Lucas', 'García', 27, 'M', 21, 6, 1),
(223, 'Carlos', 'Martínez', 26, 'M', 21, 6, 1),
(224, 'Agustín', 'Fernández', 22, 'M', 21, 6, 1),
(225, 'Lautaro', 'Gómez', 23, 'M', 21, 6, 1),
(226, 'Miguel', 'Rodríguez', 25, 'M', 21, 6, 1),
(227, 'Ezequiel', 'Sánchez', 26, 'M', 21, 6, 1),
(228, 'Federico', 'Díaz', 24, 'M', 21, 6, 1),
(229, 'Leandro', 'Alvarez', 25, 'M', 21, 6, 1),
(230, 'Jorge', 'López', 23, 'M', 21, 6, 1),
(231, 'Maximiliano', 'Gutiérrez', 27, 'M', 21, 6, 1),
(232, 'Santiago', 'Ramírez', 22, 'M', 21, 6, 1),
(233, 'Esteban', 'Acosta', 26, 'M', 21, 6, 1),
(234, 'Gonzalo', 'Moreno', 25, 'M', 21, 6, 1),
(235, 'Diego', 'Gómez', 24, 'M', 21, 6, 1),
(236, 'Hernán', 'Fernández', 23, 'M', 21, 6, 1),
(237, 'Mariano', 'Vega', 27, 'M', 21, 6, 1),
(238, 'Matías', 'Romero', 22, 'M', 21, 6, 1),
(239, 'Roberto', 'González', 25, 'M', 21, 6, 1),
(240, 'Nicolás', 'Peralta', 24, 'M', 21, 6, 1),
(241, 'Martina', 'Garcia', 24, 'F', 22, 6, 2),
(242, 'Camila', 'Rodriguez', 26, 'F', 22, 6, 2),
(243, 'Sofia', 'Lopez', 23, 'F', 22, 6, 2),
(244, 'Valentina', 'Martinez', 27, 'F', 22, 6, 2),
(245, 'Luciana', 'Gonzalez', 28, 'F', 22, 6, 2),
(246, 'Florencia', 'Diaz', 25, 'F', 22, 6, 2),
(247, 'Agustina', 'Perez', 29, 'F', 22, 6, 2),
(248, 'Maria', 'Gomez', 30, 'F', 22, 6, 2),
(249, 'Lola', 'Suarez', 27, 'F', 22, 6, 2),
(250, 'Candela', 'Fernandez', 24, 'F', 22, 6, 2),
(251, 'Micaela', 'Sanchez', 26, 'F', 22, 6, 2),
(252, 'Clara', 'Alvarez', 23, 'F', 22, 6, 2),
(253, 'Victoria', 'Torres', 27, 'F', 22, 6, 2),
(254, 'Rocio', 'Flores', 28, 'F', 22, 6, 2),
(255, 'Antonella', 'Rivera', 25, 'F', 22, 6, 2),
(256, 'Julia', 'Romero', 29, 'F', 22, 6, 2),
(257, 'Mariana', 'Acosta', 30, 'F', 22, 6, 2),
(258, 'Ana', 'Castillo', 27, 'F', 22, 6, 2),
(259, 'Natalia', 'Alonso', 24, 'F', 22, 6, 2),
(260, 'Belen', 'Luna', 26, 'F', 22, 6, 2),
(261, 'Liu', 'Chen', 22, 'M', 25, 7, 1),
(262, 'Wei', 'Gao', 23, 'M', 25, 7, 1),
(263, 'Zhi', 'Wu', 25, 'M', 25, 7, 1),
(264, 'Yan', 'Liu', 24, 'M', 25, 7, 1),
(265, 'Yong', 'Huang', 21, 'M', 25, 7, 1),
(266, 'Lei', 'Yang', 26, 'M', 25, 7, 1),
(267, 'Hao', 'Deng', 27, 'M', 25, 7, 1),
(268, 'Qiang', 'Wang', 22, 'M', 25, 7, 1),
(269, 'Jun', 'Li', 23, 'M', 25, 7, 1),
(270, 'Xin', 'Zhang', 25, 'M', 25, 7, 1),
(271, 'Bo', 'Jin', 24, 'M', 25, 7, 1),
(272, 'Shuai', 'Cheng', 21, 'M', 25, 7, 1),
(273, 'Jian', 'Zhao', 26, 'M', 25, 7, 1),
(274, 'Kai', 'Guo', 27, 'M', 25, 7, 1),
(275, 'Peng', 'Xu', 22, 'M', 25, 7, 1),
(276, 'Tao', 'Sun', 23, 'M', 25, 7, 1),
(277, 'Xiang', 'Zhou', 25, 'M', 25, 7, 1),
(278, 'Chao', 'Zhu', 24, 'M', 25, 7, 1),
(279, 'Long', 'Lin', 21, 'M', 25, 7, 1),
(280, 'Ming', 'Yu', 26, 'M', 25, 7, 1),
(281, 'Li', 'Ying', 24, 'F', 26, 7, 2),
(282, 'Wang', 'Chen', 22, 'F', 26, 7, 2),
(283, 'Chen', 'Liu', 26, 'F', 26, 7, 2),
(284, 'Lin', 'Zhang', 25, 'F', 26, 7, 2),
(285, 'Xu', 'Wang', 23, 'F', 26, 7, 2),
(286, 'Yang', 'Li', 21, 'F', 26, 7, 2),
(287, 'Wei', 'Sun', 24, 'F', 26, 7, 2),
(288, 'Zhang', 'Wu', 25, 'F', 26, 7, 2),
(289, 'Hong', 'Zhao', 23, 'F', 26, 7, 2),
(290, 'Yu', 'Xu', 22, 'F', 26, 7, 2),
(291, 'Cheng', 'Liang', 26, 'F', 26, 7, 2),
(292, 'Wei', 'Chen', 25, 'F', 26, 7, 2),
(293, 'Xin', 'Zhang', 24, 'F', 26, 7, 2),
(294, 'Xia', 'Wang', 21, 'F', 26, 7, 2),
(295, 'Jie', 'Li', 22, 'F', 26, 7, 2),
(296, 'Fang', 'Zheng', 23, 'F', 26, 7, 2),
(297, 'Jun', 'Wu', 24, 'F', 26, 7, 2),
(298, 'Hui', 'Zhang', 21, 'F', 26, 7, 2),
(299, 'Mei', 'Chen', 22, 'F', 26, 7, 2),
(300, 'Hitaki', 'Liu', 23, 'F', 26, 7, 2),
(301, 'Juan', 'Pérez', 25, 'M', NULL, 1, 5),
(303, 'Jean', 'Dupont', 27, 'M', NULL, 2, 5),
(305, 'Luca', 'Rossi', 24, 'M', NULL, 3, 5),
(307, 'John', 'Smith', 26, 'M', NULL, 4, 5),
(309, 'Pedro', 'Santos', 23, 'M', NULL, 5, 5),
(311, 'Diego', 'Fernandez', 26, 'M', NULL, 6, 5),
(313, 'Chen', 'Wei', 22, 'M', NULL, 7, 5),
(315, 'Takashi', 'Sato', 27, 'M', NULL, 8, 5),
(317, 'Jack', 'Wilson', 24, 'M', NULL, 9, 5),
(319, 'Lucas', 'Garcia', 25, 'M', NULL, 10, 5),
(321, 'Ana', 'López', 26, 'F', NULL, 1, 6),
(323, 'Camille', 'Leblanc', 24, 'F', NULL, 2, 6),
(325, 'Martina', 'Ricci', 23, 'F', NULL, 3, 6),
(327, 'Emily', 'Smith', 27, 'F', NULL, 4, 6),
(329, 'Carla', 'Silva', 25, 'F', NULL, 5, 6),
(331, 'Luciana', 'Fernández', 26, 'F', NULL, 6, 6),
(333, 'Yan', 'Zhang', 24, 'F', NULL, 7, 6),
(335, 'Sakura', 'Yamamoto', 22, 'F', NULL, 8, 6),
(337, 'Ava', 'Roberts', 27, 'F', NULL, 9, 6),
(339, 'Sophie', 'Martin', 23, 'F', NULL, 10, 6),
(341, 'Juan', 'González', 26, 'M', NULL, 1, 7),
(343, 'Jean', 'Lefevre', 28, 'M', NULL, 2, 7),
(345, 'Luca', 'Ricci', 25, 'M', NULL, 3, 7),
(347, 'John', 'Smith', 27, 'M', NULL, 4, 7),
(349, 'Carlos', 'Silva', 24, 'M', NULL, 5, 7),
(351, 'Diego', 'González', 26, 'M', NULL, 6, 7),
(353, 'Wang', 'Chao', 27, 'M', NULL, 7, 7),
(355, 'Taro', 'Sato', 28, 'M', NULL, 8, 7),
(357, 'Marco', 'Rossi', 25, 'M', NULL, 9, 7),
(359, 'Derek', 'Brown', 27, 'M', NULL, 10, 7),
(361, 'Carmen', 'Sánchez', 22, 'F', NULL, 1, 8),
(362, 'Camille', 'Lefebvre', 20, 'F', NULL, 2, 8),
(363, 'Chiara', 'Conti', 23, 'F', NULL, 3, 8),
(364, 'Emily', 'Johnson', 21, 'F', NULL, 4, 8),
(365, 'Maria', 'Santos', 26, 'F', NULL, 5, 8),
(366, 'Ana', 'García', 24, 'F', NULL, 6, 8),
(367, 'Sakura', 'Nakamura', 22, 'F', NULL, 7, 8),
(368, 'Olivia', 'Taylor', 25, 'F', NULL, 8, 8),
(369, 'Beatriz', 'Fernández', 23, 'F', NULL, 9, 8),
(370, 'Li', 'Wang', 24, 'F', NULL, 10, 8),
(371, 'Pablo', 'González', 22, 'M', NULL, 1, 9),
(372, 'Antoine', 'Dubois', 25, 'M', NULL, 2, 9),
(373, 'Giovanni', 'Ricci', 24, 'M', NULL, 3, 9),
(374, 'John', 'Smith', 26, 'M', NULL, 4, 9),
(375, 'Rafael', 'Ferreira', 27, 'M', NULL, 5, 9),
(376, 'Santiago', 'García', 21, 'M', NULL, 6, 9),
(377, 'Wei', 'Chen', 23, 'M', NULL, 7, 9),
(378, 'Yamato', 'Nakamura', 20, 'M', NULL, 8, 9),
(379, 'Connor', 'Jackson', 28, 'M', NULL, 9, 9),
(380, 'Maxime', 'Larivière', 29, 'M', NULL, 10, 9),
(381, 'María', 'García', 25, 'F', NULL, 1, 10),
(382, 'Sophie', 'Martin', 27, 'F', NULL, 2, 10),
(383, 'Giulia', 'Bianchi', 23, 'F', NULL, 3, 10),
(384, 'Emily', 'Johnson', 26, 'F', NULL, 4, 10),
(385, 'Gabriela', 'Silva', 24, 'F', NULL, 5, 10),
(386, 'Camila', 'Rodriguez', 21, 'F', NULL, 6, 10),
(387, 'Jing', 'Li', 28, 'F', NULL, 7, 10),
(388, 'Aya', 'Nakamura', 22, 'F', NULL, 8, 10),
(389, 'Isabella', 'Smith', 24, 'F', NULL, 9, 10),
(390, 'Evelyn', 'Chen', 23, 'F', NULL, 10, 10),
(391, 'Yui', 'Nakashima', 22, 'F', 30, 8, 2),
(392, 'Sakura', 'Sato', 26, 'F', 30, 8, 2),
(393, 'Yuka', 'Takahashi', 20, 'F', 30, 8, 2),
(394, 'Nana', 'Yamada', 23, 'F', 30, 8, 2),
(395, 'Ai', 'Miyamoto', 25, 'F', 30, 8, 2),
(396, 'Mika', 'Okada', 21, 'F', 30, 8, 2),
(397, 'Erika', 'Sasaki', 24, 'F', 30, 8, 2),
(398, 'Aya', 'Kobayashi', 27, 'F', 30, 8, 2),
(399, 'Mayu', 'Ishida', 22, 'F', 30, 8, 2),
(400, 'Rina', 'Nakamura', 23, 'F', 30, 8, 2),
(401, 'Mami', 'Arai', 25, 'F', 30, 8, 2),
(402, 'Hina', 'Shimizu', 20, 'F', 30, 8, 2),
(403, 'Nanami', 'Yoshida', 26, 'F', 30, 8, 2),
(404, 'Mio', 'Takagi', 21, 'F', 30, 8, 2),
(405, 'Mari', 'Kato', 24, 'F', 30, 8, 2),
(406, 'Mizuho', 'Suzuki', 27, 'F', 30, 8, 2),
(407, 'Asuka', 'Takeda', 23, 'F', 30, 8, 2),
(408, 'Tomoka', 'Nagano', 22, 'F', 30, 8, 2),
(409, 'Yurie', 'Nishimura', 25, 'F', 30, 8, 2),
(410, 'Ayumi', 'Yamamoto', 21, 'F', 30, 8, 2),
(411, 'Kaito', 'Suzuki', 22, 'M', 29, 8, 1),
(412, 'Hiroto', 'Ito', 25, 'M', 29, 8, 1),
(413, 'Takahiro', 'Yamamoto', 27, 'M', 29, 8, 1),
(414, 'Ryo', 'Nakamura', 23, 'M', 29, 8, 1),
(415, 'Koki', 'Kato', 26, 'M', 29, 8, 1),
(416, 'Daisuke', 'Kobayashi', 24, 'M', 29, 8, 1),
(417, 'Yuto', 'Sato', 20, 'M', 29, 8, 1),
(418, 'Masato', 'Tanaka', 21, 'M', 29, 8, 1),
(419, 'Kosuke', 'Watanabe', 23, 'M', 29, 8, 1),
(420, 'Ryota', 'Ishida', 25, 'M', 29, 8, 1),
(421, 'Takumi', 'Miyamoto', 28, 'M', 29, 8, 1),
(422, 'Shota', 'Fujimoto', 29, 'M', 29, 8, 1),
(423, 'Taiki', 'Nakajima', 24, 'M', 29, 8, 1),
(424, 'Tatsuya', 'Yoshida', 26, 'M', 29, 8, 1),
(425, 'Shinichi', 'Abe', 22, 'M', 29, 8, 1),
(426, 'Kazuki', 'Takahashi', 23, 'M', 29, 8, 1),
(427, 'Kento', 'Nakamura', 27, 'M', 29, 8, 1),
(428, 'Yuki', 'Yamada', 21, 'M', 29, 8, 1),
(429, 'Shunsuke', 'Mori', 25, 'M', 29, 8, 1),
(430, 'Riku', 'Saito', 24, 'M', 29, 8, 1),
(437, 'Makoto', 'Nishimura', 27, 'M', 31, 8, 3),
(438, 'Kenta', 'Aoki', 29, 'M', 31, 8, 3),
(439, 'Takumi', 'Nakajima', 26, 'M', 31, 8, 3),
(440, 'Yuto', 'Saito', 24, 'M', 31, 8, 3),
(441, 'Juan', 'González', 28, 'M', 3, 1, 3),
(442, 'Miguel', 'Martínez', 25, 'M', 3, 1, 3),
(443, 'David', 'Sánchez', 29, 'M', 3, 1, 3),
(444, 'Javier', 'García', 26, 'M', 3, 1, 3),
(445, 'Carlos', 'Hernández', 27, 'M', 3, 1, 3),
(446, 'Alejandro', 'López', 24, 'M', 3, 1, 3),
(447, 'José', 'Fernández', 28, 'M', 3, 1, 3),
(448, 'Antonio', 'Pérez', 25, 'M', 3, 1, 3),
(449, 'Pablo', 'Rodríguez', 29, 'M', 3, 1, 3),
(450, 'Daniel', 'Gómez', 26, 'M', 3, 1, 3),
(451, 'Antoine', 'Dupont', 25, 'M', 7, 2, 3),
(452, 'Louis', 'Martin', 26, 'M', 7, 2, 3),
(453, 'Pierre', 'Rousseau', 28, 'M', 7, 2, 3),
(454, 'Mathieu', 'Leclerc', 24, 'M', 7, 2, 3),
(455, 'Alexandre', 'Moreau', 27, 'M', 7, 2, 3),
(456, 'Julien', 'Girard', 29, 'M', 7, 2, 3),
(457, 'Nicolas', 'Lefebvre', 26, 'M', 7, 2, 3),
(458, 'Guillaume', 'Dubois', 24, 'M', 7, 2, 3),
(459, 'François', 'Côté', 25, 'M', 7, 2, 3),
(460, 'Sébastien', 'Bergeron', 28, 'M', 7, 2, 3),
(461, 'Luca', 'Bianchi', 27, 'M', 11, 3, 3),
(462, 'Giovanni', 'Rossi', 24, 'M', 11, 3, 3),
(463, 'Marco', 'Conti', 25, 'M', 11, 3, 3),
(464, 'Alessandro', 'Esposito', 28, 'M', 11, 3, 3),
(465, 'Riccardo', 'Ferrari', 26, 'M', 11, 3, 3),
(466, 'Davide', 'Rizzo', 29, 'M', 11, 3, 3),
(467, 'Matteo', 'Marino', 24, 'M', 11, 3, 3),
(468, 'Andrea', 'Santoro', 27, 'M', 11, 3, 3),
(469, 'Simone', 'Lombardi', 28, 'M', 11, 3, 3),
(470, 'Antonio', 'Gallo', 25, 'M', 11, 3, 3),
(471, 'Michael', 'Johnson', 27, 'M', 15, 4, 3),
(472, 'Christopher', 'Brown', 24, 'M', 15, 4, 3),
(473, 'Joshua', 'Jones', 25, 'M', 15, 4, 3),
(474, 'William', 'Garcia', 28, 'M', 15, 4, 3),
(475, 'David', 'Lee', 26, 'M', 15, 4, 3),
(476, 'Ryan', 'Robinson', 29, 'M', 15, 4, 3),
(477, 'Tyler', 'Jackson', 24, 'M', 15, 4, 3),
(478, 'James', 'Davis', 27, 'M', 15, 4, 3),
(479, 'Brandon', 'Martinez', 28, 'M', 15, 4, 3),
(480, 'Jacob', 'Taylor', 25, 'M', 15, 4, 3),
(481, 'Lucas', 'Silva', 27, 'M', 19, 5, 3),
(482, 'Thiago', 'Santos', 24, 'M', 19, 5, 3),
(483, 'Gabriel', 'Ferreira', 25, 'M', 19, 5, 3),
(484, 'Rafael', 'Costa', 28, 'M', 19, 5, 3),
(485, 'Felipe', 'Ribeiro', 26, 'M', 19, 5, 3),
(486, 'Diego', 'Pereira', 29, 'M', 19, 5, 3),
(487, 'João', 'Gonçalves', 24, 'M', 19, 5, 3),
(488, 'Matheus', 'Alves', 27, 'M', 19, 5, 3),
(489, 'Alex', 'Barbosa', 28, 'M', 19, 5, 3),
(490, 'Gustavo', 'Oliveira', 25, 'M', 19, 5, 3),
(491, 'Juan', 'González', 27, 'M', 23, 6, 3),
(492, 'Facundo', 'Pérez', 24, 'M', 23, 6, 3),
(493, 'Agustín', 'López', 25, 'M', 23, 6, 3),
(494, 'Nicolás', 'García', 28, 'M', 23, 6, 3),
(495, 'Lucas', 'Fernández', 26, 'M', 23, 6, 3),
(496, 'Santiago', 'Martínez', 29, 'M', 23, 6, 3),
(497, 'Matías', 'Rodríguez', 24, 'M', 23, 6, 3),
(498, 'Joaquín', 'Sánchez', 27, 'M', 23, 6, 3),
(499, 'Emiliano', 'Díaz', 28, 'M', 23, 6, 3),
(500, 'Leonardo', 'Romero', 25, 'M', 23, 6, 3),
(511, 'Wei', 'Chen', 27, 'M', 27, 7, 3),
(512, 'Jian', 'Li', 24, 'M', 27, 7, 3),
(513, 'Ming', 'Wang', 25, 'M', 27, 7, 3),
(514, 'Tao', 'Zhang', 28, 'M', 27, 7, 3),
(515, 'Jun', 'Liu', 26, 'M', 27, 7, 3),
(516, 'Shan', 'Zhao', 29, 'M', 27, 7, 3),
(517, 'Kai', 'Wu', 24, 'M', 27, 7, 3),
(518, 'Jin', 'Sun', 27, 'M', 27, 7, 3),
(519, 'Xin', 'Yang', 28, 'M', 27, 7, 3),
(520, 'Hao', 'Xu', 25, 'M', 27, 7, 3),
(521, 'Chen', 'Wei', 28, 'M', 31, 8, 3),
(522, 'Li', 'Jian', 25, 'M', 31, 8, 3),
(523, 'Wang', 'Ming', 27, 'M', 31, 8, 3),
(524, 'Zhang', 'Tao', 26, 'M', 31, 8, 3),
(525, 'Liu', 'Jun', 29, 'M', 31, 8, 3),
(526, 'Zhao', 'Shan', 24, 'M', 31, 8, 3),
(527, 'Wu', 'Kai', 28, 'M', 31, 8, 3),
(528, 'Sun', 'Jin', 25, 'M', 31, 8, 3),
(529, 'Yang', 'Xin', 27, 'M', 31, 8, 3),
(530, 'Xu', 'Hao', 26, 'M', 31, 8, 3),
(531, 'Jack', 'Smith', 27, 'M', 35, 9, 3),
(532, 'Liam', 'Johnson', 26, 'M', 35, 9, 3),
(533, 'William', 'Brown', 24, 'M', 35, 9, 3),
(534, 'Oliver', 'Wilson', 29, 'M', 35, 9, 3),
(535, 'Harry', 'Davis', 28, 'M', 35, 9, 3),
(536, 'Noah', 'Thompson', 25, 'M', 35, 9, 3),
(537, 'Ethan', 'Jones', 26, 'M', 35, 9, 3),
(538, 'Thomas', 'Taylor', 27, 'M', 35, 9, 3),
(539, 'Joshua', 'Martin', 24, 'M', 35, 9, 3),
(540, 'James', 'Anderson', 28, 'M', 35, 9, 3),
(541, 'Ethan', 'Smith', 24, 'M', 39, 10, 3),
(542, 'Aiden', 'Johnson', 26, 'M', 39, 10, 3),
(543, 'Liam', 'Brown', 28, 'M', 39, 10, 3),
(544, 'Logan', 'Wilson', 25, 'M', 39, 10, 3),
(545, 'Noah', 'Davis', 27, 'M', 39, 10, 3),
(546, 'Carter', 'Thompson', 28, 'M', 39, 10, 3),
(547, 'Mason', 'Jones', 24, 'M', 39, 10, 3),
(548, 'Jackson', 'Taylor', 26, 'M', 39, 10, 3),
(549, 'Owen', 'Martin', 27, 'M', 39, 10, 3),
(550, 'Landon', 'Anderson', 29, 'M', 39, 10, 3),
(551, 'Laura', 'García', 24, 'F', 4, 1, 4),
(552, 'María', 'Martínez', 25, 'F', 4, 1, 4),
(553, 'Carmen', 'López', 26, 'F', 4, 1, 4),
(554, 'Lucía', 'González', 27, 'F', 4, 1, 4),
(555, 'Sara', 'Díaz', 28, 'F', 4, 1, 4),
(556, 'Paula', 'Fernández', 29, 'F', 4, 1, 4),
(557, 'Ana', 'Sánchez', 24, 'F', 4, 1, 4),
(558, 'Elena', 'Ramírez', 26, 'F', 4, 1, 4),
(559, 'Natalia', 'Ruiz', 27, 'F', 4, 1, 4),
(560, 'Isabel', 'Gómez', 28, 'F', 4, 1, 4),
(561, 'Camille', 'Martin', 26, 'F', 8, 2, 4),
(562, 'Sophie', 'Dubois', 24, 'F', 8, 2, 4),
(563, 'Charlotte', 'Leroy', 27, 'F', 8, 2, 4),
(564, 'Emma', 'Fontaine', 25, 'F', 8, 2, 4),
(565, 'Aurélie', 'Rousseau', 28, 'F', 8, 2, 4),
(566, 'Julie', 'Moreau', 29, 'F', 8, 2, 4),
(567, 'Manon', 'Lecomte', 24, 'F', 8, 2, 4),
(568, 'Mélanie', 'Girard', 26, 'F', 8, 2, 4),
(569, 'Caroline', 'Dupont', 27, 'F', 8, 2, 4),
(570, 'Chloé', 'Lefèvre', 28, 'F', 8, 2, 4),
(571, 'Chiara', 'Bianchi', 27, 'F', 12, 3, 4),
(572, 'Sofia', 'Romano', 25, 'F', 12, 3, 4),
(573, 'Ludovica', 'Greco', 26, 'F', 12, 3, 4),
(574, 'Francesca', 'Conti', 24, 'F', 12, 3, 4),
(575, 'Elena', 'Rizzo', 28, 'F', 12, 3, 4),
(576, 'Alessia', 'Lombardi', 29, 'F', 12, 3, 4),
(577, 'Martina', 'Giordano', 24, 'F', 12, 3, 4),
(578, 'Valentina', 'Santoro', 26, 'F', 12, 3, 4),
(579, 'Giulia', 'Moretti', 27, 'F', 12, 3, 4),
(580, 'Serena', 'Ferrari', 28, 'F', 12, 3, 4),
(581, 'Emily', 'Johnson', 26, 'F', 16, 4, 4),
(582, 'Avery', 'Garcia', 24, 'F', 16, 4, 4),
(583, 'Madison', 'Lee', 27, 'F', 16, 4, 4),
(584, 'Ella', 'Gonzalez', 25, 'F', 16, 4, 4),
(585, 'Grace', 'Rodriguez', 28, 'F', 16, 4, 4),
(586, 'Chloe', 'Martinez', 26, 'F', 16, 4, 4),
(587, 'Mia', 'Jackson', 24, 'F', 16, 4, 4),
(588, 'Lily', 'Davis', 27, 'F', 16, 4, 4),
(589, 'Aria', 'Perez', 25, 'F', 16, 4, 4),
(590, 'Harper', 'Martin', 28, 'F', 16, 4, 4),
(591, 'Ana', 'Souza', 26, 'F', 20, 5, 4),
(592, 'Luiza', 'Silva', 24, 'F', 20, 5, 4),
(593, 'Camila', 'Oliveira', 27, 'F', 20, 5, 4),
(594, 'Mariana', 'Pereira', 25, 'F', 20, 5, 4),
(595, 'Isabela', 'Rodrigues', 28, 'F', 20, 5, 4),
(596, 'Julia', 'Santos', 26, 'F', 20, 5, 4),
(597, 'Gabriela', 'Costa', 24, 'F', 20, 5, 4),
(598, 'Leticia', 'Barbosa', 27, 'F', 20, 5, 4),
(599, 'Rafaela', 'Nascimento', 25, 'F', 20, 5, 4),
(600, 'Beatriz', 'Ferreira', 28, 'F', 20, 5, 4),
(601, 'Martina', 'González', 27, 'F', 24, 6, 4),
(602, 'Valentina', 'Rodríguez', 26, 'F', 24, 6, 4),
(603, 'Luciana', 'Fernández', 28, 'F', 24, 6, 4),
(604, 'Camila', 'López', 25, 'F', 24, 6, 4),
(605, 'Agustina', 'García', 29, 'F', 24, 6, 4),
(606, 'Carolina', 'Martínez', 27, 'F', 24, 6, 4),
(607, 'Sofía', 'Sánchez', 26, 'F', 24, 6, 4),
(608, 'Ana', 'Pérez', 28, 'F', 24, 6, 4),
(609, 'María', 'Díaz', 25, 'F', 24, 6, 4),
(610, 'Julieta', 'Alvarez', 29, 'F', 24, 6, 4),
(611, 'Ling', 'Chen', 23, 'F', 28, 7, 4),
(612, 'Yan', 'Wang', 24, 'F', 28, 7, 4),
(613, 'Wei', 'Li', 22, 'F', 28, 7, 4),
(614, 'Xiao', 'Liu', 25, 'F', 28, 7, 4),
(615, 'Hong', 'Yang', 26, 'F', 28, 7, 4),
(616, 'Fang', 'Zhang', 23, 'F', 28, 7, 4),
(617, 'Xin', 'Wu', 24, 'F', 28, 7, 4),
(618, 'Ying', 'Sun', 22, 'F', 28, 7, 4),
(619, 'Jie', 'Zhao', 25, 'F', 28, 7, 4),
(620, 'Hui', 'Deng', 26, 'F', 28, 7, 4),
(621, 'Mei', 'Chen', 23, 'F', 26, 7, 2),
(622, 'Yuan', 'Wang', 24, 'F', 26, 7, 2),
(623, 'Hua', 'Li', 22, 'F', 26, 7, 2),
(624, 'Jing', 'Liu', 25, 'F', 26, 7, 2),
(625, 'Lin', 'Yang', 26, 'F', 26, 7, 2),
(626, 'Xue', 'Zhang', 23, 'F', 26, 7, 2),
(627, 'Min', 'Wu', 24, 'F', 26, 7, 2),
(628, 'Yan', 'Sun', 22, 'F', 26, 7, 2),
(629, 'Yi', 'Zhao', 25, 'F', 26, 7, 2),
(630, 'Qing', 'Deng', 26, 'F', 26, 7, 2),
(631, 'Miyako', 'Tanaka', 24, 'F', 30, 8, 2),
(632, 'Sakura', 'Sato', 23, 'F', 30, 8, 2),
(633, 'Yui', 'Nakamura', 25, 'F', 30, 8, 2),
(634, 'Emi', 'Kato', 22, 'F', 30, 8, 2),
(635, 'Mao', 'Ito', 26, 'F', 30, 8, 2),
(636, 'Ayaka', 'Yamamoto', 21, 'F', 30, 8, 2),
(637, 'Arisa', 'Miyamoto', 25, 'F', 30, 8, 2),
(638, 'Mika', 'Fujimoto', 24, 'F', 30, 8, 2),
(639, 'Kaori', 'Ogawa', 23, 'F', 30, 8, 2),
(640, 'Rina', 'Mori', 22, 'F', 30, 8, 2),
(641, 'Yuko', 'Arai', 25, 'F', 32, 8, 4),
(642, 'Tomoka', 'Kubo', 23, 'F', 32, 8, 4),
(643, 'Saki', 'Sasaki', 24, 'F', 32, 8, 4),
(644, 'Ayumi', 'Takahashi', 26, 'F', 32, 8, 4),
(645, 'Nana', 'Nakagawa', 22, 'F', 32, 8, 4),
(646, 'Maya', 'Kawamura', 27, 'F', 32, 8, 4),
(647, 'Miki', 'Miyazaki', 24, 'F', 32, 8, 4),
(648, 'Aya', 'Suzuki', 23, 'F', 32, 8, 4),
(649, 'Yui', 'Watanabe', 22, 'F', 32, 8, 4),
(650, 'Misaki', 'Shimizu', 25, 'F', 32, 8, 4),
(651, 'Isabella', 'Smith', 23, 'F', 34, 9, 2),
(652, 'Olivia', 'Johnson', 21, 'F', 34, 9, 2),
(653, 'Sophia', 'Williams', 24, 'F', 34, 9, 2),
(654, 'Ava', 'Jones', 22, 'F', 34, 9, 2),
(655, 'Charlotte', 'Brown', 25, 'F', 34, 9, 2),
(656, 'Mia', 'Davis', 20, 'F', 34, 9, 2),
(657, 'Amelia', 'Garcia', 22, 'F', 34, 9, 2),
(658, 'Harper', 'Martinez', 23, 'F', 34, 9, 2),
(659, 'Evelyn', 'Rodriguez', 21, 'F', 34, 9, 2),
(660, 'Abigail', 'Lee', 24, 'F', 34, 9, 2),
(661, 'Chloe', 'Taylor', 23, 'F', 36, 9, 4),
(662, 'Emily', 'Clark', 22, 'F', 36, 9, 4),
(663, 'Ella', 'Lewis', 21, 'F', 36, 9, 4),
(664, 'Avery', 'Walker', 25, 'F', 36, 9, 4),
(665, 'Grace', 'Hall', 24, 'F', 36, 9, 4),
(666, 'Victoria', 'Allen', 23, 'F', 36, 9, 4),
(667, 'Scarlett', 'Wright', 20, 'F', 36, 9, 4),
(668, 'Madison', 'Scott', 21, 'F', 36, 9, 4),
(669, 'Lily', 'Green', 22, 'F', 36, 9, 4),
(670, 'Aria', 'Baker', 24, 'F', 36, 9, 4),
(671, 'Sofía', 'García', 25, 'F', 38, 10, 2),
(672, 'Ana', 'Martínez', 28, 'F', 38, 10, 2),
(673, 'Laura', 'Pérez', 23, 'F', 38, 10, 2),
(674, 'María', 'González', 27, 'F', 38, 10, 2),
(675, 'Lucía', 'Fernández', 24, 'F', 38, 10, 2),
(676, 'Carmen', 'López', 26, 'F', 38, 10, 2),
(677, 'Paula', 'Rodríguez', 29, 'F', 38, 10, 2),
(678, 'Isabel', 'Sánchez', 31, 'F', 38, 10, 2),
(679, 'Teresa', 'Ruiz', 22, 'F', 38, 10, 2),
(680, 'Sara', 'Hernández', 30, 'F', 38, 10, 2),
(681, 'Mónica', 'Jiménez', 27, 'F', 40, 10, 4),
(682, 'Adriana', 'Gómez', 24, 'F', 40, 10, 4),
(683, 'Ana María', 'Díaz', 26, 'F', 40, 10, 4),
(684, 'Carla', 'Ortega', 28, 'F', 40, 10, 4),
(685, 'Camila', 'Núñez', 23, 'F', 40, 10, 4),
(686, 'Silvia', 'Mendoza', 29, 'F', 40, 10, 4),
(687, 'Daniela', 'Carrasco', 25, 'F', 40, 10, 4),
(688, 'Valeria', 'Castillo', 27, 'F', 40, 10, 4),
(689, 'Mariana', 'Chávez', 30, 'F', 40, 10, 4),
(690, 'Patricia', 'Flores', 22, 'F', 40, 10, 4),
(691, 'Maria', 'Garcia', 23, 'F', 2, 1, 2),
(692, 'Sofia', 'Rodriguez', 21, 'F', 2, 1, 2),
(693, 'Lucia', 'Fernandez', 24, 'F', 2, 1, 2),
(694, 'Martina', 'Gonzalez', 22, 'F', 2, 1, 2),
(695, 'Paula', 'Lopez', 25, 'F', 2, 1, 2),
(696, 'Julia', 'Sanchez', 20, 'F', 2, 1, 2),
(697, 'Alba', 'Santos', 22, 'F', 2, 1, 2),
(698, 'Valeria', 'Alvarez', 23, 'F', 2, 1, 2),
(699, 'Emma', 'Torres', 21, 'F', 2, 1, 2),
(700, 'Carla', 'Ruiz', 24, 'F', 2, 1, 2),
(701, 'Camille', 'Martin', 23, 'F', 6, 2, 2),
(702, 'Chloe', 'Dubois', 21, 'F', 6, 2, 2),
(703, 'Julie', 'Lefevre', 24, 'F', 6, 2, 2),
(704, 'Maelle', 'Girard', 22, 'F', 6, 2, 2),
(705, 'Elodie', 'Roux', 25, 'F', 6, 2, 2),
(706, 'Nina', 'Simon', 20, 'F', 6, 2, 2),
(707, 'Lena', 'Berger', 22, 'F', 6, 2, 2),
(708, 'Pauline', 'Moreau', 23, 'F', 6, 2, 2),
(709, 'Emilie', 'Caron', 21, 'F', 6, 2, 2),
(710, 'Mathilde', 'Dupont', 24, 'F', 6, 2, 2),
(711, 'Giulia', 'Bianchi', 23, 'F', 10, 3, 2),
(712, 'Sofia', 'Romano', 21, 'F', 10, 3, 2),
(713, 'Alessia', 'Ricci', 24, 'F', 10, 3, 2),
(714, 'Martina', 'Greco', 22, 'F', 10, 3, 2),
(715, 'Francesca', 'Marino', 25, 'F', 10, 3, 2),
(716, 'Alice', 'Conti', 20, 'F', 10, 3, 2),
(717, 'Valentina', 'Galli', 22, 'F', 10, 3, 2),
(718, 'Elisa', 'Lombardi', 23, 'F', 10, 3, 2),
(719, 'Silvia', 'Moretti', 21, 'F', 10, 3, 2),
(720, 'Beatrice', 'Ferrari', 24, 'F', 10, 3, 2),
(721, 'Emma', 'Johnson', 23, 'F', 14, 4, 2),
(722, 'Madison', 'Williams', 21, 'F', 14, 4, 2),
(723, 'Avery', 'Jones', 24, 'F', 14, 4, 2),
(724, 'Olivia', 'Brown', 22, 'F', 14, 4, 2),
(725, 'Isabella', 'Davis', 25, 'F', 14, 4, 2),
(726, 'Sophia', 'Garcia', 20, 'F', 14, 4, 2),
(727, 'Charlotte', 'Martinez', 22, 'F', 14, 4, 2),
(728, 'Mia', 'Rodriguez', 23, 'F', 14, 4, 2),
(729, 'Abigail', 'Lee', 21, 'F', 14, 4, 2),
(730, 'Chloe', 'Taylor', 24, 'F', 14, 4, 2),
(731, 'Isabella', 'Silva', 23, 'F', 18, 5, 2),
(732, 'Maria', 'Souza', 21, 'F', 18, 5, 2),
(733, 'Ana', 'Santos', 24, 'F', 18, 5, 2),
(734, 'Luisa', 'Ferreira', 22, 'F', 18, 5, 2),
(735, 'Gabriela', 'Oliveira', 25, 'F', 18, 5, 2),
(736, 'Julia', 'Costa', 20, 'F', 18, 5, 2),
(737, 'Carolina', 'Pereira', 22, 'F', 18, 5, 2),
(738, 'Beatriz', 'Alves', 23, 'F', 18, 5, 2),
(739, 'Fernanda', 'Barbosa', 21, 'F', 18, 5, 2),
(740, 'Mariana', 'Gomes', 24, 'F', 18, 5, 2),
(741, 'Sofía', 'Gómez', 23, 'F', 22, 6, 2),
(742, 'Camila', 'Rodríguez', 21, 'F', 22, 6, 2),
(743, 'Martina', 'López', 24, 'F', 22, 6, 2),
(744, 'Valentina', 'García', 22, 'F', 22, 6, 2),
(745, 'Lucía', 'Martínez', 25, 'F', 22, 6, 2),
(746, 'Delfina', 'Sánchez', 20, 'F', 22, 6, 2),
(747, 'Antonella', 'Pérez', 22, 'F', 22, 6, 2),
(748, 'Agustina', 'Fernández', 23, 'F', 22, 6, 2),
(749, 'Milagros', 'Gutiérrez', 21, 'F', 22, 6, 2),
(750, 'Julieta', 'Díaz', 24, 'F', 22, 6, 2),
(760, 'Mia', 'Zapata', 21, 'F', NULL, 1, 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `id_pais` int(11) DEFAULT NULL,
  `id_deporte` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id`, `nombre`, `id_pais`, `id_deporte`) VALUES
(1, 'Selección Española de Fútbol Masculino', 1, 1),
(2, 'Selección Española de Fútbol Femenino', 1, 2),
(3, 'Selección Española de Baloncesto Masculino', 1, 3),
(4, 'Selección Española de Baloncesto Femenino', 1, 4),
(5, 'Selección Francesa de Fútbol Masculino', 2, 1),
(6, 'Selección Francesa de Fútbol Femenino', 2, 2),
(7, 'Selección Francesa de Baloncesto Masculino', 2, 3),
(8, 'Selección Francesa de Baloncesto Femenino', 2, 4),
(9, 'Selección Italiana de Fútbol Masculino', 3, 1),
(10, 'Selección Italiana de Fútbol Femenino', 3, 2),
(11, 'Selección Italiana de Baloncesto Masculino', 3, 3),
(12, 'Selección Italiana de Baloncesto Femenino', 3, 4),
(13, 'Selección de Fútbol Masculino de Estados Unidos', 4, 1),
(14, 'Selección de Fútbol Femenino de Estados Unidos', 4, 2),
(15, 'Selección de Baloncesto Masculino de Estados Unidos', 4, 3),
(16, 'Selección de Baloncesto Femenino de Estados Unidos', 4, 4),
(17, 'Selección Brasileña de Fútbol Masculino', 5, 1),
(18, 'Selección Brasileña de Fútbol Femenino', 5, 2),
(19, 'Selección Brasileña de Baloncesto Masculino', 5, 3),
(20, 'Selección Brasileña de Baloncesto Femenino', 5, 4),
(21, 'Selección Argentina de Fútbol Masculino', 6, 1),
(22, 'Selección Argentina de Fútbol Femenino', 6, 2),
(23, 'Selección Argentina de Baloncesto Masculino', 6, 3),
(24, 'Selección Argentina de Baloncesto Femenino', 6, 4),
(25, 'Selección China de Fútbol Masculino', 7, 1),
(26, 'Selección China de Fútbol Femenino', 7, 2),
(27, 'Selección China de Baloncesto Masculino', 7, 3),
(28, 'Selección China de Baloncesto Femenino', 7, 4),
(29, 'Selección Japonesa de Fútbol Masculino', 8, 1),
(30, 'Selección Japonesa de Fútbol Femenino', 8, 2),
(31, 'Selección Japonesa de Baloncesto Masculino', 8, 3),
(32, 'Selección Japonesa de Baloncesto Femenino', 8, 4),
(33, 'Australian Men\'s National Soccer Team', 9, 1),
(34, 'Australian Women\'s National Soccer Team', 9, 2),
(35, 'Australian Men\'s National Basketball Team', 9, 3),
(36, 'Australian Women\'s National Basketball Team', 9, 4),
(37, 'Selección Canadiense de Fútbol Masculino', 10, 1),
(38, 'Selección Canadiense de Fútbol Femenino', 10, 2),
(39, 'Selección Canadiense de Baloncesto Masculino', 10, 3),
(40, 'Selección Canadiense de Baloncesto Femenino', 10, 4),
(48, 'ESPARTEROS RM', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento`
--

CREATE TABLE `evento` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `id_deporte` int(11) DEFAULT NULL,
  `id_equipo_local` int(11) DEFAULT NULL,
  `id_equipo_visitante` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evento`
--

INSERT INTO `evento` (`id`, `nombre`, `fecha`, `hora`, `id_deporte`, `id_equipo_local`, `id_equipo_visitante`) VALUES
(1, 'ESPAÑA - ARGENTINA', '2023-05-10', '19:00:00', 1, 1, 5),
(2, '100 Metros Mariposa', '2023-05-10', '15:30:00', 7, NULL, NULL),
(3, 'Carrera de 100 metros en el Parque de los Príncipes de Paris', '2024-07-01', '10:00:00', 10, NULL, NULL),
(4, 'Carrera de 200 metros en el Estadio Charléty de Paris', '2024-07-02', '11:00:00', 10, NULL, NULL),
(5, 'Carrera de 400 metros en el Jardín de Luxemburgo de Paris', '2024-07-03', '12:00:00', 10, NULL, NULL),
(6, 'Carrera de 800 metros en el Bois de Vincennes de Paris', '2024-07-04', '13:00:00', 10, NULL, NULL),
(7, 'Carrera de 1500 metros en el Bois de Boulogne de Paris', '2024-07-05', '14:00:00', 10, NULL, NULL),
(8, 'Carrera de 100 metros en el Parque de los Príncipes de Paris', '2024-07-01', '10:00:00', 9, NULL, NULL),
(9, 'Carrera de 200 metros en el Estadio Charléty de Paris', '2024-07-02', '11:00:00', 9, NULL, NULL),
(10, 'Carrera de 400 metros en el Jardín de Luxemburgo de Paris', '2024-07-03', '12:00:00', 9, NULL, NULL),
(11, 'Carrera de 800 metros en el Bois de Vincennes de Paris', '2024-07-04', '13:00:00', 9, NULL, NULL),
(12, 'Carrera de 1500 metros en el Bois de Boulogne de Paris', '2024-07-05', '14:00:00', 9, NULL, NULL),
(13, 'Carrera de 100m libres', '2024-07-18', '09:30:00', 7, NULL, NULL),
(14, 'Salto de trampolín de 10m', '2024-07-24', '14:45:00', 7, NULL, NULL),
(15, 'Espalda 500 metros', '2024-07-19', '11:00:00', 7, NULL, NULL),
(16, 'Nado sincronizado', '2024-07-21', '13:15:00', 7, NULL, NULL),
(17, 'Carrera de 100m libres', '2024-07-22', '09:30:00', 8, NULL, NULL),
(18, 'Salto de trampolín de 10m', '2024-07-23', '14:45:00', 8, NULL, NULL),
(19, 'Espalda 500 metros', '2024-07-28', '11:00:00', 8, NULL, NULL),
(20, 'Nado sincronizado', '2024-07-30', '13:15:00', 8, NULL, NULL),
(21, 'Tiro con Arco 100m', '2023-06-22', '09:00:00', 5, NULL, NULL),
(22, 'Tiro con Arco 200m', '2023-06-23', '13:00:00', 5, NULL, NULL),
(23, 'Tiro con Arco 300m', '2023-06-25', '10:00:00', 5, NULL, NULL),
(24, 'Tiro con Arco 400m', '2023-06-26', '13:00:00', 5, NULL, NULL),
(25, 'Tiro con Arco 500m', '2023-06-28', '14:00:00', 5, NULL, NULL),
(26, 'Tiro con Arco 100m', '2023-06-22', '09:00:00', 6, NULL, NULL),
(27, 'Tiro con Arco 200m', '2023-06-23', '13:00:00', 6, NULL, NULL),
(28, 'Tiro con Arco 300m', '2023-06-25', '10:00:00', 6, NULL, NULL),
(29, 'Tiro con Arco 400m', '2023-06-26', '13:00:00', 6, NULL, NULL),
(30, 'Tiro con Arco 500m', '2023-06-28', '14:00:00', 6, NULL, NULL),
(31, 'ESPAÑA - ITALIA', '2023-05-11', '20:00:00', 2, 2, 10),
(32, 'FRANCIA - BRASIL', '2023-05-12', '19:00:00', 2, 6, 18),
(33, 'ARGENTINA - ESTADOS UNIDOS', '2023-05-13', '18:00:00', 2, 22, 14),
(34, 'CHINA - JAPON ', '2023-05-14', '17:00:00', 2, 26, 30),
(35, 'FRANCIA - ITALIA', '2023-05-11', '20:00:00', 4, 8, 12),
(36, 'ARGENTINA - BRASIL', '2023-05-12', '19:00:00', 4, 24, 20),
(37, 'ESPAÑA -  CHINA', '2023-05-13', '18:00:00', 4, 4, 28),
(38, 'ESTADOS UNIDOS - JAPON ', '2023-05-14', '17:00:00', 4, 16, 32),
(39, 'FRANCIA - JAPON', '2024-07-05', '19:00:00', 1, 5, 29),
(40, 'BRASIL - ITALIA', '2024-07-20', '14:00:00', 1, 17, 9),
(41, 'CHINA - ESTADOS UNIDOS', '2024-08-02', '19:30:00', 1, 25, 13),
(42, 'ESPAÑA - ESTADOS UNIDOS', '2024-08-02', '19:30:00', 3, 3, 15),
(43, 'FRANCIA - BRASIL', '2024-07-05', '19:00:00', 3, 7, 19),
(44, 'JAPON - ITALIA', '2024-07-20', '14:00:00', 3, 31, 11),
(45, 'CHINA - AUSTRALIA', '2024-08-02', '19:30:00', 3, 27, 35),
(47, 'Natacion Labradores', '2024-06-01', '14:35:00', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_deportista`
--

CREATE TABLE `evento_deportista` (
  `id_evento` int(11) NOT NULL,
  `id_deportista` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `evento_deportista`
--

INSERT INTO `evento_deportista` (`id_evento`, `id_deportista`) VALUES
(2, 341),
(2, 343),
(2, 345),
(2, 347),
(2, 349),
(2, 351),
(2, 353),
(2, 355),
(2, 357),
(2, 359),
(3, 381),
(3, 382),
(3, 383),
(3, 384),
(3, 385),
(3, 386),
(3, 387),
(3, 388),
(3, 389),
(3, 390),
(4, 381),
(4, 382),
(4, 383),
(4, 384),
(4, 385),
(4, 386),
(4, 387),
(4, 388),
(4, 389),
(4, 390),
(5, 381),
(5, 382),
(5, 383),
(5, 384),
(5, 385),
(5, 386),
(5, 387),
(5, 388),
(5, 389),
(5, 390),
(6, 381),
(6, 382),
(6, 383),
(6, 384),
(6, 385),
(6, 386),
(6, 387),
(6, 388),
(6, 389),
(6, 390),
(7, 381),
(7, 382),
(7, 383),
(7, 384),
(7, 385),
(7, 386),
(7, 387),
(7, 388),
(7, 389),
(7, 390),
(8, 371),
(8, 372),
(8, 373),
(8, 374),
(8, 375),
(8, 376),
(8, 377),
(8, 378),
(8, 379),
(8, 380),
(9, 371),
(9, 372),
(9, 373),
(9, 374),
(9, 375),
(9, 376),
(9, 377),
(9, 378),
(9, 379),
(9, 380),
(10, 371),
(10, 372),
(10, 373),
(10, 374),
(10, 375),
(10, 376),
(10, 377),
(10, 378),
(10, 379),
(10, 380),
(11, 371),
(11, 372),
(11, 373),
(11, 374),
(11, 375),
(11, 376),
(11, 377),
(11, 378),
(11, 379),
(11, 380),
(12, 371),
(12, 372),
(12, 373),
(12, 374),
(12, 375),
(12, 376),
(12, 377),
(12, 378),
(12, 379),
(12, 380),
(13, 341),
(13, 343),
(13, 345),
(13, 347),
(13, 349),
(13, 351),
(13, 353),
(13, 355),
(13, 357),
(13, 359),
(14, 341),
(14, 343),
(14, 345),
(14, 347),
(14, 349),
(14, 351),
(14, 353),
(14, 355),
(14, 357),
(14, 359),
(15, 341),
(15, 343),
(15, 345),
(15, 347),
(15, 349),
(15, 351),
(15, 353),
(15, 355),
(15, 357),
(15, 359),
(16, 341),
(16, 343),
(16, 345),
(16, 347),
(16, 349),
(16, 351),
(16, 353),
(16, 355),
(16, 357),
(16, 359),
(17, 361),
(17, 362),
(17, 363),
(17, 364),
(17, 365),
(17, 366),
(17, 367),
(17, 368),
(17, 369),
(17, 370),
(18, 361),
(18, 362),
(18, 363),
(18, 364),
(18, 365),
(18, 366),
(18, 367),
(18, 368),
(18, 369),
(18, 370),
(19, 361),
(19, 362),
(19, 363),
(19, 364),
(19, 365),
(19, 366),
(19, 367),
(19, 368),
(19, 369),
(19, 370),
(20, 361),
(20, 362),
(20, 363),
(20, 364),
(20, 365),
(20, 366),
(20, 367),
(20, 368),
(20, 369),
(20, 370),
(21, 301),
(21, 303),
(21, 305),
(21, 307),
(21, 309),
(21, 311),
(21, 313),
(21, 315),
(21, 317),
(21, 319),
(22, 301),
(22, 303),
(22, 305),
(22, 307),
(22, 309),
(22, 311),
(22, 313),
(22, 315),
(22, 317),
(22, 319),
(23, 301),
(23, 303),
(23, 305),
(23, 307),
(23, 309),
(23, 311),
(23, 313),
(23, 315),
(23, 317),
(23, 319),
(24, 301),
(24, 303),
(24, 305),
(24, 307),
(24, 309),
(24, 311),
(24, 313),
(24, 315),
(24, 317),
(24, 319),
(25, 301),
(25, 303),
(25, 305),
(25, 307),
(25, 309),
(25, 311),
(25, 313),
(25, 315),
(25, 317),
(25, 319),
(26, 321),
(26, 323),
(26, 325),
(26, 327),
(26, 329),
(26, 331),
(26, 333),
(26, 335),
(26, 337),
(26, 339),
(27, 321),
(27, 323),
(27, 325),
(27, 327),
(27, 329),
(27, 331),
(27, 333),
(27, 335),
(27, 337),
(27, 339),
(28, 321),
(28, 323),
(28, 325),
(28, 327),
(28, 329),
(28, 331),
(28, 333),
(28, 335),
(28, 337),
(28, 339),
(29, 321),
(29, 323),
(29, 325),
(29, 327),
(29, 329),
(29, 331),
(29, 333),
(29, 335),
(29, 337),
(29, 339),
(30, 321),
(30, 323),
(30, 325),
(30, 327),
(30, 329),
(30, 331),
(30, 333),
(30, 335),
(30, 337),
(30, 339),
(47, 363),
(47, 364),
(47, 366);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evento_personalseguridad`
--

CREATE TABLE `evento_personalseguridad` (
  `id_evento` int(11) NOT NULL,
  `id_personalSeguridad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id`, `nombre`) VALUES
(1, 'España'),
(2, 'Francia'),
(3, 'Italia'),
(4, 'Estados Unidos'),
(5, 'Brasil'),
(6, 'Argentina'),
(7, 'China'),
(8, 'Japón'),
(9, 'Australia'),
(10, 'Canadá');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personalseguridad`
--

CREATE TABLE `personalseguridad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personalseguridad`
--

INSERT INTO `personalseguridad` (`id`, `nombre`, `edad`, `sexo`, `apellido`) VALUES
(1, 'Juan', 35, 'M', 'García'),
(2, 'María', 28, 'F', 'López'),
(3, 'Pedro', 42, 'M', 'Fernández'),
(4, 'Ana', 31, 'F', 'Martínez'),
(5, 'Carlos', 37, 'M', 'Gómez'),
(6, 'Laura', 26, 'F', 'Sánchez'),
(7, 'José', 39, 'M', 'Pérez'),
(8, 'Lucía', 29, 'F', 'Rodríguez'),
(9, 'Miguel', 44, 'M', 'González'),
(10, 'Carmen', 33, 'F', 'Hernández'),
(11, 'Pablo', 36, 'M', 'Jiménez'),
(12, 'Isabel', 30, 'F', 'Díaz'),
(13, 'Antonio', 40, 'M', 'Ruiz'),
(14, 'Sofía', 27, 'F', 'Álvarez'),
(15, 'David', 38, 'M', 'Garrido'),
(16, 'Elena', 32, 'F', 'Gutiérrez'),
(17, 'Francisco', 43, 'M', 'Ortega'),
(18, 'Alicia', 25, 'F', 'Navarro'),
(19, 'Juan Carlos', 41, 'M', 'Moreno'),
(20, 'Sara', 34, 'F', 'Romero'),
(21, 'Javier', 45, 'M', 'Castro'),
(22, 'Marina', 24, 'F', 'Vázquez'),
(23, 'Manuel', 46, 'M', 'Santos'),
(24, 'Beatriz', 23, 'F', 'Cabrera'),
(25, 'Luis', 47, 'M', 'Reyes'),
(26, 'Eva', 22, 'F', 'Molina'),
(27, 'Rafael', 48, 'M', 'Guzmán'),
(28, 'Natalia', 21, 'F', 'Ramos'),
(29, 'Alberto', 49, 'M', 'Serrano'),
(30, 'Claudia', 20, 'F', 'Castillo'),
(31, 'Carlos', 29, 'M', 'García'),
(32, 'Ana', 31, 'F', 'Pérez'),
(33, 'Mark', 25, 'M', 'Johnson'),
(34, 'Emily', 27, 'F', 'Smith'),
(35, 'Luigi', 33, 'M', 'Rossi'),
(36, 'Giovanna', 30, 'F', 'Bianchi'),
(37, 'John', 28, 'M', 'Doe'),
(38, 'Jane', 26, 'F', 'Doe'),
(39, 'Hiroshi', 35, 'M', 'Yamamoto'),
(40, 'Yuka', 29, 'F', 'Sato'),
(41, 'Diego', 32, 'M', 'Martinez'),
(42, 'Maria', 30, 'F', 'Fernandez'),
(43, 'Tom', 28, 'M', 'Williams'),
(44, 'Emma', 26, 'F', 'Jones'),
(45, 'Mario', 34, 'M', 'Gonzalez'),
(46, 'Isabella', 31, 'F', 'Ricci'),
(47, 'Alex', 27, 'M', 'Wilson'),
(48, 'Samantha', 25, 'F', 'Brown'),
(49, 'Ricardo', 33, 'M', 'Silva'),
(50, 'Beatriz', 30, 'F', 'Gomez'),
(51, 'Daniel', 28, 'M', 'Rodriguez'),
(52, 'Laura', 26, 'F', 'Sanchez'),
(53, 'Jack', 34, 'M', 'Taylor'),
(54, 'Sophie', 31, 'F', 'Clark'),
(55, 'Jorge', 27, 'M', 'Hernandez'),
(56, 'Alicia', 25, 'F', 'Ruiz'),
(57, 'Gabriel', 33, 'M', 'Santos'),
(58, 'Carla', 30, 'F', 'Lopez'),
(59, 'Peter', 28, 'M', 'White'),
(60, 'Olivia', 26, 'F', 'Wilson');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `usuario`, `password`, `correo`) VALUES
(1, 'alejandro', 'alejandro123', 'alegamez7@gmail.com'),
(3, 'miazap', 'maizapataG1', 'miazapa@gmail.com'),
(7, 'miazapata', 'Miazapata1', 'miazapatablasco@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `deporte`
--
ALTER TABLE `deporte`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deportista`
--
ALTER TABLE `deportista`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_equipo` (`id_equipo`),
  ADD KEY `id_pais` (`id_pais`),
  ADD KEY `id_deporte` (`id_deporte`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pais` (`id_pais`),
  ADD KEY `fk_equipo_deporte` (`id_deporte`);

--
-- Indices de la tabla `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_deporte` (`id_deporte`),
  ADD KEY `id_equipo_local` (`id_equipo_local`),
  ADD KEY `id_equipo_visitante` (`id_equipo_visitante`);

--
-- Indices de la tabla `evento_deportista`
--
ALTER TABLE `evento_deportista`
  ADD PRIMARY KEY (`id_evento`,`id_deportista`),
  ADD KEY `id_deportista` (`id_deportista`);

--
-- Indices de la tabla `evento_personalseguridad`
--
ALTER TABLE `evento_personalseguridad`
  ADD PRIMARY KEY (`id_evento`,`id_personalSeguridad`),
  ADD KEY `id_personalSeguridad` (`id_personalSeguridad`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personalseguridad`
--
ALTER TABLE `personalseguridad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `deporte`
--
ALTER TABLE `deporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `deportista`
--
ALTER TABLE `deportista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=762;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `evento`
--
ALTER TABLE `evento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `personalseguridad`
--
ALTER TABLE `personalseguridad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `deportista`
--
ALTER TABLE `deportista`
  ADD CONSTRAINT `deportista_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id`),
  ADD CONSTRAINT `deportista_ibfk_2` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`),
  ADD CONSTRAINT `deportista_ibfk_3` FOREIGN KEY (`id_deporte`) REFERENCES `deporte` (`id`);

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`),
  ADD CONSTRAINT `fk_equipo_deporte` FOREIGN KEY (`id_deporte`) REFERENCES `deporte` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `evento`
--
ALTER TABLE `evento`
  ADD CONSTRAINT `evento_ibfk_1` FOREIGN KEY (`id_deporte`) REFERENCES `deporte` (`id`),
  ADD CONSTRAINT `evento_ibfk_2` FOREIGN KEY (`id_equipo_local`) REFERENCES `equipo` (`id`),
  ADD CONSTRAINT `evento_ibfk_3` FOREIGN KEY (`id_equipo_visitante`) REFERENCES `equipo` (`id`);

--
-- Filtros para la tabla `evento_deportista`
--
ALTER TABLE `evento_deportista`
  ADD CONSTRAINT `evento_deportista_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id`),
  ADD CONSTRAINT `evento_deportista_ibfk_2` FOREIGN KEY (`id_deportista`) REFERENCES `deportista` (`id`);

--
-- Filtros para la tabla `evento_personalseguridad`
--
ALTER TABLE `evento_personalseguridad`
  ADD CONSTRAINT `evento_personalseguridad_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `evento` (`id`),
  ADD CONSTRAINT `evento_personalseguridad_ibfk_2` FOREIGN KEY (`id_personalSeguridad`) REFERENCES `personalseguridad` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
