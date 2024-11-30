-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2022 a las 07:52:16
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mayabus_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direcciones`
--

CREATE TABLE `direcciones` (
  `Id_direcciones` int(8) NOT NULL,
  `calle` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `no_calle` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `direcciones`
--

INSERT INTO `direcciones` (`Id_direcciones`, `calle`, `no_calle`) VALUES
(1, 'Dennis', 80),
(2, 'Butterfield', 3675),
(3, 'Vermont', 1562),
(4, 'Mallory', 0),
(5, 'Everett', 390),
(6, 'Dixon', 396),
(7, 'Southridge', 5),
(8, 'Vahlen', 9162),
(9, 'Twin Pines', 975),
(10, 'Tomscot', 86),
(11, 'Pond', 6),
(12, 'Dennis', 67562),
(13, 'Delaware', 74),
(14, 'Havey', 7242),
(15, 'Del Sol', 283),
(16, 'Grayhawk', 28),
(17, 'Mifflin', 11),
(18, 'Lindbergh', 19299),
(19, 'Cascade', 9876),
(20, 'Charing Cross', 41344);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD PRIMARY KEY (`Id_direcciones`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
