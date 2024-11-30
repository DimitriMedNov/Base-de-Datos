-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2022 a las 17:14:47
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
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `Rutas` int(8) NOT NULL,
  `Cantidad_Pasajeros` int(2) NOT NULL,
  `Id_Horario` int(8) NOT NULL,
  `id_conductor` bigint(20) UNSIGNED NOT NULL,
  `Placas` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Id_direcciones` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`Rutas`, `Cantidad_Pasajeros`, `Id_Horario`, `id_conductor`, `Placas`, `Id_direcciones`) VALUES
(1, 30, 1, 1, '0HA-1F-O', 2),
(2, 22, 2, 2, '2NQ-2T-X', 2),
(3, 23, 3, 3, '2QR-7H-Y', 3),
(4, 29, 4, 4, '5SM-FF-H', 4),
(5, 24, 5, 5, '6OS-2T-G', 5),
(6, 27, 6, 6, '211-2L-O', 6),
(7, 30, 7, 7, '914-09-U', 7),
(8, 28, 8, 8, 'D2D-5K-9', 8),
(9, 26, 9, 9, 'GL4-QF-K', 9),
(10, 27, 10, 10, 'J6V-X9-C', 10),
(11, 33, 11, 11, 'K9S-G4-M', 11),
(12, 32, 12, 12, 'LOE-RX-V', 12),
(13, 25, 13, 13, 'MYN-Q4-T', 13),
(14, 31, 14, 14, 'RJA-QT-J', 14),
(15, 31, 15, 15, 'RTJ-2B-W', 15),
(16, 34, 16, 16, 'SIX-L8-O', 16),
(17, 38, 17, 17, 'SPT-W7-X', 17),
(18, 29, 18, 18, 'T63-TH-M', 18),
(19, 30, 19, 19, 'UQX-A8-Q', 19),
(20, 32, 20, 20, 'YNB-TV-P', 20);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`Rutas`),
  ADD KEY `Id_Horario` (`Id_Horario`,`id_conductor`,`Placas`),
  ADD KEY `Placas` (`Placas`),
  ADD KEY `id_conductor` (`id_conductor`),
  ADD KEY `Id_direcciones` (`Id_direcciones`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD CONSTRAINT `rutas_ibfk_2` FOREIGN KEY (`Placas`) REFERENCES `autobuses` (`Placas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rutas_ibfk_3` FOREIGN KEY (`Id_Horario`) REFERENCES `horarios` (`Id_Horario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rutas_ibfk_4` FOREIGN KEY (`id_conductor`) REFERENCES `conductores` (`id_conductor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rutas_ibfk_5` FOREIGN KEY (`Id_direcciones`) REFERENCES `direcciones` (`Id_direcciones`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
