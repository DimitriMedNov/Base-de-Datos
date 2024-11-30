-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2022 a las 16:10:02
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
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `id_conductor` bigint(20) UNSIGNED NOT NULL,
  `Nombre` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Apellido` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `licencia` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `sueldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`id_conductor`, `Nombre`, `Apellido`, `licencia`, `sueldo`) VALUES
(1, 'Marnia', 'Mullaly', '2P3AJD4J2D', 5814),
(2, 'Mable', 'Cavanaugh', 'ZUY9ZZ5MUV', 4828),
(3, 'Peirce', 'Petrov', 'MYRG7ZN920', 5482),
(4, 'Antoine', 'Ivasechko', 'ET0DXPXK5Q', 5104),
(5, 'Rand', 'Pee', 'E3MA905ZCE', 5839),
(6, 'Kamilah', 'Tubby', 'MOD9NWVNZ0', 5235),
(7, 'Jolene', 'Challin', 'G99TSMFRX2', 5572),
(8, 'Salvidor', 'Brumen', 'C0A9EMD514', 5961),
(9, 'Zita', 'Harwell', 'BYEXQDNXTK', 5766),
(10, 'Clarinda', 'Ciccotti', 'YGEOG0OFL7', 5902),
(11, 'Patsy', 'Hallihane', 'A20SY2NOB7', 5604),
(12, 'Wilmar', 'Hazeldean', '7ADBBNKVVE', 5455),
(13, 'Kennan', 'Mccaull', '8HRYYHPYGD', 5283),
(14, 'Gilberto', 'Bettlestone', 'M4TXPFNNG8', 5538),
(15, 'Austine', 'Whitehorn', 'NVX2VOHDGH', 5815),
(16, 'Pia', 'MacInnes', 'JFTZKSWD9D', 5506),
(17, 'Donetta', 'Lehrer', 'L4PFPFDMO7', 5112),
(18, 'Charlena', 'Lates', '92NJC242X4', 5647),
(19, 'Cordy', 'Stratiff', 'SR4TRJ5WLT', 5266),
(20, 'Casper', 'Melbert', 'CV2NXV0JYR', 5293);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`id_conductor`),
  ADD UNIQUE KEY `id_conductor` (`id_conductor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conductores`
--
ALTER TABLE `conductores`
  MODIFY `id_conductor` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
