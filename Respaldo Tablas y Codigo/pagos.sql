-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-11-2022 a las 06:16:44
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
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `Id_Pago` int(8) NOT NULL,
  `Fecha_Pago` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Método_Pago` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `Adeudo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`Id_Pago`, `Fecha_Pago`, `Método_Pago`, `Adeudo`) VALUES
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`Id_Pago`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
