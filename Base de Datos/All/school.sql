-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-03-2022 a las 07:01:17
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `school`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `Nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido_P` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido_M` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ID` int(6) NOT NULL,
  `id_estado` int(2) NOT NULL,
  `id_pais` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`Nombre`, `Apellido_P`, `Apellido_M`, `ID`, `id_estado`, `id_pais`) VALUES
('Messi', 'Ewan', 'Chi', 1, 1, 121),
('Ronaldo', 'Solis', 'Atun', 2, 2, 121),
('Ronaldinho', 'Chan', 'Chu', 3, 3, 121),
('Mara', 'Droga', 'White', 4, 4, 121),
('Bad', 'Bunny', 'Ocasio', 5, 5, 121),
('Wisin', 'Eseba', 'Dino', 6, 6, 121),
('Yandel', 'Apam', 'Ñu', 7, 7, 121),
('Luis Miguel', 'Gallego', 'Basteri', 8, 8, 121),
('Rauw Alejandro', 'Ocasio', 'Ruiz', 9, 9, 121),
('Travis', 'Scott', 'Webster', 10, 10, 121);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `ID_Calificacion` int(6) NOT NULL,
  `ID_Grupo` int(6) NOT NULL,
  `ID_Materia` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `ID_Criterios` int(6) NOT NULL,
  `ID_Maestro` int(6) NOT NULL,
  `ID` int(6) NOT NULL,
  `Calificacion` float(3,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`ID_Calificacion`, `ID_Grupo`, `ID_Materia`, `ID_Criterios`, `ID_Maestro`, `ID`, `Calificacion`) VALUES
(1, 1, 'HUM1404', 1, 1, 1, 6.3),
(2, 2, 'SIS2403', 2, 3, 2, 8.9),
(3, 3, 'SIS1401', 3, 2, 3, 9.8),
(4, 4, 'SIS1402', 4, 4, 4, 9.0),
(5, 5, 'SIS2401', 5, 5, 5, 9.9),
(6, 6, 'CEB346', 9, 6, 6, 9.5),
(7, 7, 'CEB468', 10, 7, 7, 8.0),
(8, 8, 'UD0393', 6, 8, 8, 10.0),
(9, 9, 'UD642', 7, 9, 9, 7.0),
(10, 10, 'UD956', 8, 10, 10, 8.5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `ID_Clase` int(6) NOT NULL,
  `ID` int(6) NOT NULL,
  `ID_Maestro` int(6) NOT NULL,
  `ID_Salon` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`ID_Clase`, `ID`, `ID_Maestro`, `ID_Salon`) VALUES
(1, 1, 1, 1220),
(2, 2, 2, 1221),
(3, 3, 3, 1222),
(4, 4, 4, 1223),
(5, 5, 5, 1224),
(6, 6, 6, 1225),
(7, 7, 7, 1226),
(8, 8, 8, 1227),
(9, 9, 9, 1228),
(10, 10, 10, 1229);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegiatura`
--

CREATE TABLE `colegiatura` (
  `ID_Colegiatura` int(6) NOT NULL,
  `Clave_Escuela` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `ID` int(6) NOT NULL,
  `Pay_Day` date NOT NULL,
  `Monto` float(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `colegiatura`
--

INSERT INTO `colegiatura` (`ID_Colegiatura`, `Clave_Escuela`, `ID`, `Pay_Day`, `Monto`) VALUES
(1, 'ceb456', 1, '2022-03-01', 6000.00),
(2, 'ceb457', 2, '2022-03-02', 7000.00),
(3, 'mayab5', 3, '2022-03-03', 9999.99),
(4, 'mayab6', 4, '2022-03-04', 9999.99),
(5, 'mayab7', 5, '2022-03-05', 9999.99),
(6, 'mayab8', 6, '2022-03-06', 9999.99),
(7, 'mayab9', 7, '2022-03-07', 9999.99),
(8, 'wer156', 8, '2022-03-08', 2000.00),
(9, 'wer157', 9, '2022-03-09', 3500.00),
(10, 'wer158', 10, '2022-03-10', 7800.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterios`
--

CREATE TABLE `criterios` (
  `ID_Criterios` int(6) NOT NULL,
  `Criterio` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `criterios`
--

INSERT INTO `criterios` (`ID_Criterios`, `Criterio`) VALUES
(1, 'Examen'),
(2, 'Examen'),
(3, 'Examen'),
(4, 'Asistencia'),
(5, 'Asistencia'),
(6, 'Asistencia'),
(7, 'Examen'),
(8, 'Particip'),
(9, 'Tareas'),
(10, 'Tareas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuelas`
--

CREATE TABLE `escuelas` (
  `Clave_Escuela` varchar(6) COLLATE utf8_spanish_ci NOT NULL,
  `ID_Nivel` int(2) NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `CP` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `escuelas`
--

INSERT INTO `escuelas` (`Clave_Escuela`, `ID_Nivel`, `Nombre`, `CP`) VALUES
('ceb456', 3, 'Cebetis 1', 95400),
('ceb457', 3, 'Cebetis 2', 95401),
('mayab5', 5, 'Anahuac Mayab 5', 98205),
('mayab6', 5, 'Anahuac Mayab 4', 98204),
('mayab7', 9, 'Anahuac Mayab 3', 98203),
('mayab8', 6, 'Anahuac Mayab 1', 98200),
('mayab9', 7, 'Anahuac Mayab 2', 98201),
('wer156', 4, 'Uady 1', 97000),
('wer157', 4, 'Uady 2', 97001),
('wer158', 4, 'Uady 3', 97002);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(2) NOT NULL,
  `Estados` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `Estados`) VALUES
(1, 'Aguascalientes'),
(2, 'Baja California'),
(3, 'Baja California Sur'),
(4, 'Campeche'),
(5, 'Chiapas'),
(6, 'Chihuahua'),
(7, 'Ciudad de México'),
(8, 'Coahuila'),
(9, 'Colima'),
(10, 'Durango'),
(11, 'Estado de México'),
(12, 'Guanajuato'),
(13, 'Guerrero'),
(14, 'Hidalgo'),
(15, 'Jalisco'),
(16, 'Michoacán'),
(17, 'Morelos'),
(18, 'Nayarit'),
(19, 'Nuevo León'),
(20, 'Oaxaca'),
(21, 'Puebla'),
(22, 'Querétaro'),
(23, 'Quintana Roo'),
(24, 'San Luis Potosí'),
(25, 'Sinaloa'),
(26, 'Sonora'),
(27, 'Tabasco'),
(28, 'Tamaulipas'),
(29, 'Tlaxcala'),
(30, 'Veracruz'),
(31, 'Yucatán'),
(32, 'Zacatecas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `Id_Grupo` int(6) NOT NULL,
  `Grupo` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`Id_Grupo`, `Grupo`) VALUES
(1, 'Arqui'),
(2, 'Ti'),
(3, 'Negocios'),
(4, 'Conta'),
(5, 'Medicina'),
(6, 'Ceb1'),
(7, 'Ceb2'),
(8, 'Uad1'),
(9, 'Uad2'),
(10, 'Uad3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `ID_Maestro` int(6) NOT NULL,
  `Nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ApellidoP` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `ApellidoM` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `Cedula` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `id_pais` int(3) NOT NULL,
  `id_estado` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`ID_Maestro`, `Nombre`, `ApellidoP`, `ApellidoM`, `Cedula`, `id_pais`, `id_estado`) VALUES
(1, 'Justin', 'Quiles', 'Us', 'Ingeniero', 121, 1),
(2, 'Jhay', 'Cortez', 'Wun', 'Astrofisico', 121, 2),
(3, 'Luis Abel', 'Calcáneo', 'Murillo', 'Programador Senior', 121, 3),
(4, 'Anuel', 'AA', 'Bug', 'Full Stack', 121, 4),
(5, 'Tainy', 'Ozuna', 'Bello', 'Ingeniero', 121, 5),
(6, 'Myke', 'Towers', 'Op', 'Programador Jr', 121, 6),
(7, 'Daddy', 'Yanke', 'Yu', 'Ingeniero', 121, 7),
(8, 'Nicky', 'Jam', 'Martínez', 'Ingeniero', 121, 8),
(9, 'Dalex', 'Lenny', 'Tavarez', 'Ingeniero', 121, 9),
(10, 'Alex', 'Rose', 'Red', 'Ingeniero', 121, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `ID_Materia` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Materia` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`ID_Materia`, `Materia`) VALUES
('CEB346', 'Cívica y Ética'),
('CEB468', 'Español'),
('HUM1404', 'Etica'),
('SIS1401', 'Programación'),
('SIS1402', 'LOO'),
('SIS2401', 'Redes'),
('SIS2403', 'Base de Datos'),
('UD0393', 'Filosofía'),
('UD642', 'Etica'),
('UD956', 'Matemáticas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_educativo`
--

CREATE TABLE `nivel_educativo` (
  `ID_Nivel` int(2) NOT NULL,
  `NivelEdu` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nivel_educativo`
--

INSERT INTO `nivel_educativo` (`ID_Nivel`, `NivelEdu`) VALUES
(1, 'Kinder'),
(2, 'Primaria'),
(3, 'Secundaria'),
(4, 'Preparatoria'),
(5, 'Carrera'),
(6, 'Posgrado'),
(7, 'Doctorado'),
(8, 'Diplomado'),
(9, 'Curso'),
(10, 'Taller');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id_pais` int(3) NOT NULL,
  `pais` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id_pais`, `pais`) VALUES
(1, 'Afganistan'),
(2, 'Albania'),
(3, 'Alemania'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua y Barbuda'),
(7, 'Arabia Saudita / Arabia Saudí'),
(8, 'Argelia'),
(9, 'Argentina'),
(10, 'Armenia'),
(11, 'Australia'),
(12, 'Austria'),
(13, 'Azerbaiyán'),
(14, 'Bahamas'),
(15, 'Bangladés'),
(16, 'Barbados'),
(17, 'Baréin'),
(18, 'Bélgica'),
(19, 'Belice'),
(20, 'Bielorrusia'),
(21, 'Benín'),
(22, 'Birmania / Myanmar'),
(23, 'Bolivia'),
(24, 'Bosnia y Herzegovina / Bosnia-Herzegovin'),
(25, 'Botsuana'),
(26, 'Brasil'),
(27, 'Brunei'),
(28, 'Bulgaria'),
(29, 'Burkina Faso'),
(30, 'Burundi'),
(31, 'Bután'),
(32, 'Cabo Verde'),
(33, 'Camboya'),
(34, 'Camerún'),
(35, 'Canadá'),
(36, 'Catar'),
(37, 'República Centroafricana'),
(38, 'Chad'),
(39, 'República Checa / Chequia'),
(40, 'Chile'),
(41, 'China'),
(42, 'Chipre'),
(43, 'Colombia'),
(44, 'Comoras'),
(45, 'República del Congo'),
(46, 'República Democrática del Congo'),
(47, 'Corea del Norte'),
(48, 'Corea del Sur'),
(49, 'Costa de Marfil'),
(50, 'Costa Rica'),
(51, 'Croacia'),
(52, 'Cuba'),
(53, 'Dinamarca'),
(54, 'Dominica'),
(55, 'República Dominicana'),
(56, 'Ecuador'),
(57, 'Egipto'),
(58, 'El Salvador'),
(59, 'Emiratos Árabes Unidos'),
(60, 'Eritrea'),
(61, 'Eslovaquia'),
(62, 'Eslovenia'),
(63, 'España'),
(64, 'Estados Unidos'),
(65, 'Estonia'),
(66, 'Etiopía'),
(67, 'Filipinas'),
(68, 'Finlandia'),
(69, 'Fiyi'),
(70, 'Francia'),
(71, 'Gabón'),
(72, 'Gambia'),
(73, 'Georgia'),
(74, 'Ghana'),
(75, 'Granada'),
(76, 'Grecia'),
(77, 'Guatemala'),
(78, 'Guinea'),
(79, 'Guinea-Bisáu'),
(80, 'Guinea Ecuatorial'),
(81, 'Guyana'),
(82, 'Haití'),
(83, 'Honduras'),
(84, 'Hungría'),
(85, 'India'),
(86, 'Indonesia'),
(87, 'Irak'),
(88, 'Irán'),
(89, 'Irlanda'),
(90, 'Islandia'),
(91, 'Israel'),
(92, 'Italia'),
(93, 'Jamaica'),
(94, 'Japón'),
(95, 'Jordania'),
(96, 'Kazajistán'),
(97, 'Kenia'),
(98, 'Kirguistán'),
(99, 'Kiribati'),
(100, 'Kuwait'),
(101, 'Laos'),
(102, 'Lesoto'),
(103, 'Letonia'),
(104, 'Líbano'),
(105, 'Liberia'),
(106, 'Libia'),
(107, 'Liechtenstein'),
(108, 'Lituania'),
(109, 'Luxemburgo'),
(110, 'Macedonia del Norte'),
(111, 'Madagascar'),
(112, 'Malasia'),
(113, 'Malaui'),
(114, 'Maldivas'),
(115, 'Mali / Malí'),
(116, 'Malta'),
(117, 'Marruecos'),
(118, 'Islas Marshall'),
(119, 'Mauricio'),
(120, 'Mauritania'),
(121, 'México'),
(122, 'Micronesia'),
(123, 'Moldavia'),
(124, 'Mónaco'),
(125, 'Mongolia'),
(126, 'Montenegro'),
(127, 'Mozambique'),
(128, 'Namibia'),
(129, 'Nauru'),
(130, 'Nepal'),
(131, 'Nicaragua'),
(132, 'Níger'),
(133, 'Nigeria'),
(134, 'Noruega'),
(135, 'Nueva Zelanda / Nueva Zelandia'),
(136, 'Omán'),
(137, 'Países Bajos'),
(138, 'Pakistán'),
(139, 'Palaos'),
(140, 'Palestina'),
(141, 'Panamá'),
(142, 'Papúa Nueva Guinea'),
(143, 'Paraguay'),
(144, 'Perú'),
(145, 'Polonia'),
(146, 'Portugal'),
(147, 'Reino Unido'),
(148, 'Ruanda'),
(149, 'Rumania / Rumanía'),
(150, 'Rusia'),
(151, 'Islas Salomón'),
(152, 'Samoa'),
(153, 'San Cristóbal y Nieves'),
(154, 'San Marino'),
(155, 'San Vicente y las Granadinas'),
(156, 'Santa Lucía'),
(157, 'Santo Tomé y Príncipe'),
(158, 'Senegal'),
(159, 'Serbia'),
(160, 'Seychelles'),
(161, 'Sierra Leona'),
(162, 'Singapur'),
(163, 'Siria'),
(164, 'Somalia'),
(165, 'Sri Lanka'),
(166, 'Suazilandia / Esuatini'),
(167, 'Sudáfrica'),
(168, 'Sudán'),
(169, 'Sudán del Sur'),
(170, 'Suecia'),
(171, 'Suiza'),
(172, 'Surinam'),
(173, 'Tailandia'),
(174, 'Tanzania'),
(175, 'Tayikistán'),
(176, 'Timor Oriental'),
(177, 'Togo'),
(178, 'Tonga'),
(179, 'Trinidad y Tobago'),
(180, 'Túnez'),
(181, 'Turkmenistán'),
(182, 'Turquía'),
(183, 'Tuvalu'),
(184, 'Ucrania'),
(185, 'Uganda'),
(186, 'Uruguay'),
(187, 'Uzbekistán'),
(188, 'Vanuatu'),
(189, 'Ciudad del Vaticano'),
(190, 'Venezuela'),
(191, 'Vietnam'),
(192, 'Yemen'),
(193, 'Yibuti'),
(194, 'Zambia'),
(195, 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salones`
--

CREATE TABLE `salones` (
  `ID_Salon` int(6) NOT NULL,
  `Salon` varchar(8) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `salones`
--

INSERT INTO `salones` (`ID_Salon`, `Salon`) VALUES
(1220, 'Liet HP2'),
(1221, 'Salud 1'),
(1222, 'Salud 2'),
(1223, ' Central'),
(1224, 'Central '),
(1225, 'Central '),
(1226, 'Ing 1'),
(1227, 'Ing 2'),
(1228, 'Ing 3'),
(1229, 'Liet HP1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_estado` (`id_estado`),
  ADD KEY `id_pais` (`id_pais`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`ID_Calificacion`),
  ADD KEY `ID_Grupo` (`ID_Grupo`,`ID_Materia`,`ID_Criterios`,`ID_Maestro`,`ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ID_Materia` (`ID_Materia`),
  ADD KEY `ID_Criterios` (`ID_Criterios`),
  ADD KEY `ID_Maestro` (`ID_Maestro`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`ID_Clase`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ID_Salon` (`ID_Salon`),
  ADD KEY `ID_Maestro` (`ID_Maestro`);

--
-- Indices de la tabla `colegiatura`
--
ALTER TABLE `colegiatura`
  ADD PRIMARY KEY (`ID_Colegiatura`),
  ADD KEY `Clave_Escuela` (`Clave_Escuela`);

--
-- Indices de la tabla `criterios`
--
ALTER TABLE `criterios`
  ADD PRIMARY KEY (`ID_Criterios`);

--
-- Indices de la tabla `escuelas`
--
ALTER TABLE `escuelas`
  ADD PRIMARY KEY (`Clave_Escuela`),
  ADD KEY `ID_Nivel` (`ID_Nivel`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`Id_Grupo`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`ID_Maestro`),
  ADD KEY `id_pais` (`id_pais`),
  ADD KEY `id_estado` (`id_estado`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`ID_Materia`);

--
-- Indices de la tabla `nivel_educativo`
--
ALTER TABLE `nivel_educativo`
  ADD PRIMARY KEY (`ID_Nivel`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indices de la tabla `salones`
--
ALTER TABLE `salones`
  ADD PRIMARY KEY (`ID_Salon`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`ID_Estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_2` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id_pais`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `alumnos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`ID_Grupo`) REFERENCES `grupo` (`Id_Grupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_3` FOREIGN KEY (`ID_Materia`) REFERENCES `materia` (`ID_Materia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_4` FOREIGN KEY (`ID_Criterios`) REFERENCES `criterios` (`ID_Criterios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_5` FOREIGN KEY (`ID_Maestro`) REFERENCES `maestros` (`ID_Maestro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `alumnos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`ID_Salon`) REFERENCES `salones` (`ID_Salon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clases_ibfk_3` FOREIGN KEY (`ID_Maestro`) REFERENCES `maestros` (`ID_Maestro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `colegiatura`
--
ALTER TABLE `colegiatura`
  ADD CONSTRAINT `colegiatura_ibfk_1` FOREIGN KEY (`Clave_Escuela`) REFERENCES `escuelas` (`Clave_Escuela`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `colegiatura_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `alumnos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `escuelas`
--
ALTER TABLE `escuelas`
  ADD CONSTRAINT `escuelas_ibfk_1` FOREIGN KEY (`ID_Nivel`) REFERENCES `nivel_educativo` (`ID_Nivel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD CONSTRAINT `maestros_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id_pais`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maestros_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`ID_Estado`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
