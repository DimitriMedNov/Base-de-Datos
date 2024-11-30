-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2022 a las 17:14:27
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
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `Id_Horario` int(8) NOT NULL,
  `Inicio_Turno` time NOT NULL,
  `Final_Turno` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`Id_Horario`, `Inicio_Turno`, `Final_Turno`) VALUES
(1, '06:13:00', '12:06:00'),
(2, '06:12:00', '12:23:00'),
(3, '06:04:00', '12:04:00'),
(4, '06:04:00', '12:01:00'),
(5, '06:09:00', '12:12:00'),
(6, '06:18:00', '12:02:00'),
(7, '06:21:00', '12:18:00'),
(8, '06:24:00', '12:10:00'),
(9, '06:06:00', '12:11:00'),
(10, '06:03:00', '12:21:00'),
(11, '06:07:00', '12:02:00'),
(12, '06:11:00', '12:16:00'),
(13, '06:18:00', '12:20:00'),
(14, '06:06:00', '12:18:00'),
(15, '06:06:00', '12:14:00'),
(16, '06:25:00', '12:27:00'),
(17, '06:09:00', '12:22:00'),
(18, '06:17:00', '12:12:00'),
(19, '06:28:00', '12:24:00'),
(20, '06:02:00', '12:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`Id_Horario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
