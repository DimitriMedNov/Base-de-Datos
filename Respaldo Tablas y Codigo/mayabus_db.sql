-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2022 a las 16:34:41
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
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Rutas` int(8) NOT NULL,
  `Id_Alumno` int(8) NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Numero` int(10) NOT NULL,
  `Id_Pago` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Rutas`, `Id_Alumno`, `Nombre`, `Apellido`, `Numero`, `Id_Pago`) VALUES
(4, 0, 'Dollie', 'Moylan', 1547983652, 16),
(5, 0, 'Chic', 'Losselyong', 1523695689, 14),
(6, 0, 'Staci', 'Axelby', 1547893654, 9),
(7, 0, 'Dix', 'Uttermare', 1586324785, 5),
(8, 0, 'Dasha', 'Maro', 1597536589, 9),
(9, 0, 'Valle', 'Sanham', 1574261254, 13),
(10, 0, 'Julio', 'De Mars', 1537598524, 17),
(11, 0, 'Bambie', 'Crowcombe', 1589631598, 8),
(12, 0, 'Hyman', 'Baistow', 1574567852, 9),
(13, 0, 'Borden', 'Jozsef', 1581259852, 4),
(14, 0, 'Lorette', 'Blase', 1563257391, 7),
(15, 0, 'Bea', 'Waind', 1587915236, 7),
(16, 0, 'Hart', 'Swarbrigg', 1574867319, 6),
(17, 0, 'Staci', 'Jamot', 1537195566, 2),
(18, 0, 'Herbie', 'Colter', 1553269984, 7),
(19, 0, 'Maurits', 'Matteacci', 1521126589, 2),
(20, 0, 'Gilbertina', 'Anstice', 1512361234, 17),
(4, 0, 'Dollie', 'Moylan', 1547983652, 16),
(5, 0, 'Chic', 'Losselyong', 1523695689, 14),
(6, 0, 'Staci', 'Axelby', 1547893654, 9),
(7, 0, 'Dix', 'Uttermare', 1586324785, 5),
(8, 0, 'Dasha', 'Maro', 1597536589, 9),
(9, 0, 'Valle', 'Sanham', 1574261254, 13),
(10, 0, 'Julio', 'De Mars', 1537598524, 17),
(11, 0, 'Bambie', 'Crowcombe', 1589631598, 8),
(12, 0, 'Hyman', 'Baistow', 1574567852, 9),
(13, 0, 'Borden', 'Jozsef', 1581259852, 4),
(14, 0, 'Lorette', 'Blase', 1563257391, 7),
(15, 0, 'Bea', 'Waind', 1587915236, 7),
(16, 0, 'Hart', 'Swarbrigg', 1574867319, 6),
(17, 0, 'Staci', 'Jamot', 1537195566, 2),
(18, 0, 'Herbie', 'Colter', 1553269984, 7),
(19, 0, 'Maurits', 'Matteacci', 1521126589, 2),
(20, 0, 'Gilbertina', 'Anstice', 1512361234, 17),
(1, 0, 'Juan', 'Taguada', 45484, 1),
(2, 0, 'Pedro', 'Julls', 116846, 2),
(3, 0, 'Alils', 'Uiolds', 4684534, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autobuses`
--

CREATE TABLE `autobuses` (
  `Placas` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Marca` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Modelo` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Capacidad` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `autobuses`
--

INSERT INTO `autobuses` (`Placas`, `Marca`, `Modelo`, `Capacidad`) VALUES
('0HA-1F-O', 'Chevrolet', 'TrailBlazer', 39),
('211-2L-O', 'Ford', 'Probe', 37),
('2NQ-2T-X', 'Pontiac', 'Firebird', 37),
('2QR-7H-Y', 'Pontiac', 'Firebird', 29),
('5SM-FF-H', 'Suzuki', 'SJ', 29),
('6OS-2T-G', 'Panoz', 'Esperante', 30),
('914-09-U', 'Isuzu', 'Oasis', 29),
('D2D-5K-9', 'Hyundai', 'Accent', 31),
('GL4-QF-K', 'Kia', 'Optima', 39),
('J6V-X9-C', 'Ford', 'F250', 31),
('K9S-G4-M', 'Ford', 'Thunderbird', 34),
('LOE-RX-V', 'MINI', 'Cooper Clubman', 37),
('MYN-Q4-T', 'Hyundai', 'Tiburon', 28),
('RJA-QT-J', 'Ford', 'F350', 34),
('RTJ-2B-W', 'Infiniti', 'J', 37),
('SIX-L8-O', 'Isuzu', 'Hombre', 37),
('SPT-W7-X', 'Ford', 'Explorer Sport Trac', 39),
('T63-TH-M', 'Chevrolet', 'Silverado 3500', 30),
('UQX-A8-Q', 'Pontiac', 'G5', 33),
('YNB-TV-P', 'Ford', 'Mustang', 33);

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `opcodigo` int(8) UNSIGNED NOT NULL,
  `opnombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Nivel` tinyint(1) UNSIGNED NOT NULL,
  `CodigoPlantel` char(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`opcodigo`, `opnombre`, `clave`, `Nivel`, `CodigoPlantel`) VALUES
(396910, 'Jesus Dimitri Medina Novelo', 'Cuchara', 1, '1'),
(431278, 'Manuel Alejandro Ruanova Lopez', 'Cuchara2', 2, '2'),
(488856, 'Cesar Augusto Gonzalez Zapata', 'Cuchara3', 3, '3'),
(856475, 'Payasito', 'Cuchara4', 4, '4');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `Id_Pago` int(8) NOT NULL,
  `Fecha_Pago` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Metodo_Pago` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Adeudo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`Id_Pago`, `Fecha_Pago`, `Metodo_Pago`, `Adeudo`) VALUES
(1, '2021-11-20', 'Efectivo', 943),
(2, '2021-02-20', 'Tarjeta', 9862),
(3, '2022-03-31', 'Efectivo', 9527),
(4, '2021-07-12', 'Efectivo', 6403),
(5, '2020-06-02', 'Efectivo', 4536),
(6, '2021-09-15', 'Tarjeta ', 5474),
(7, '2020-08-16', 'Efectivo', 2768),
(8, '2021-06-21', 'Tarjeta ', 685),
(9, '2021-10-29', 'Tarjeta ', 759),
(10, '2022-02-26', 'Efectivo', 8003),
(11, '2021-06-14', 'Tarjeta ', 565),
(12, '2020-04-22', 'Efectivo', 5491),
(13, '2020-11-07', 'Tarjeta ', 9486),
(14, '2021-05-30', 'Efectivo', 7858),
(15, '2020-11-29', 'Tarjeta ', 1150),
(16, '2020-02-22', 'Efectivo', 1101),
(17, '2020-10-05', 'Efectivo', 2750),
(18, '2021-02-10', 'Efectivo', 4891),
(19, '2020-07-14', 'Tarjeta ', 8649),
(20, '2022-04-20', '', 7540);

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
(1, 30, 1, 1, '0HA-1F-O', 1),
(2, 30, 2, 2, '2NQ-2T-X', 2),
(3, 30, 3, 3, '2QR-7H-Y', 3),
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
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD KEY `Rutas` (`Rutas`),
  ADD KEY `Id_Pago` (`Id_Pago`);

--
-- Indices de la tabla `autobuses`
--
ALTER TABLE `autobuses`
  ADD PRIMARY KEY (`Placas`);

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`id_conductor`),
  ADD UNIQUE KEY `id_conductor` (`id_conductor`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`opcodigo`);

--
-- Indices de la tabla `direcciones`
--
ALTER TABLE `direcciones`
  ADD PRIMARY KEY (`Id_direcciones`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`Id_Horario`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`Id_Pago`);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conductores`
--
ALTER TABLE `conductores`
  MODIFY `id_conductor` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`Rutas`) REFERENCES `rutas` (`Rutas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_2` FOREIGN KEY (`Id_Pago`) REFERENCES `pagos` (`Id_Pago`) ON DELETE CASCADE ON UPDATE CASCADE;

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
