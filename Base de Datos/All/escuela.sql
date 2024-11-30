-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 16-03-2022 a las 18:23:23
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `matricula` int(8) NOT NULL,
  `curp` varchar(18) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `a_paterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `a_materno` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_pais` int(3) NOT NULL,
  `id_estado` int(2) NOT NULL,
  `id_sangre` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`matricula`, `curp`, `nombres`, `a_paterno`, `a_materno`, `id_pais`, `id_estado`, `id_sangre`) VALUES
(1, '00081854', 'DANIEL', 'MESSI', NULL, 9, 33, 5),
(2, 'DFHEWFHWEHFHWIUDS', 'LARRY', 'ROMERO', 'GARCIA', 120, 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id_calificaciones` int(8) NOT NULL,
  `id_maestro` int(4) NOT NULL,
  `id_grupo` int(4) NOT NULL,
  `id_criterios` int(3) NOT NULL,
  `id_materia` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `matricula` int(8) NOT NULL,
  `calificacion` float(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id_calificaciones`, `id_maestro`, `id_grupo`, `id_criterios`, `id_materia`, `matricula`, `calificacion`) VALUES
(1, 1, 1, 1, '1', 1, 6.2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id_clase` int(10) NOT NULL,
  `matricula` int(8) NOT NULL,
  `id_maestro` int(4) NOT NULL,
  `id_salon` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id_clase`, `matricula`, `id_maestro`, `id_salon`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 2),
(3, 1, 1, 2),
(4, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegiatura`
--

CREATE TABLE `colegiatura` (
  `id_colegiatura` int(10) NOT NULL,
  `clave_escuela` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `matricula` int(8) NOT NULL,
  `fecha_pago` date NOT NULL,
  `monto` float(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `colegiatura`
--

INSERT INTO `colegiatura` (`id_colegiatura`, `clave_escuela`, `matricula`, `fecha_pago`, `monto`) VALUES
(1, 'IJDIJD92', 1, '2022-03-16', 10.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `criterios`
--

CREATE TABLE `criterios` (
  `id_criterios` int(3) NOT NULL,
  `criterio` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `criterios`
--

INSERT INTO `criterios` (`id_criterios`, `criterio`) VALUES
(1, 'EXAMEN'),
(2, 'TAREA'),
(3, 'EXAMEN EN LINEA'),
(4, 'PROYECTO'),
(5, 'ASISTE.'),
(6, 'EXPO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuela`
--

CREATE TABLE `escuela` (
  `clave_escuela` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `id_nivel` int(2) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(80) COLLATE utf8_spanish_ci NOT NULL,
  `cp` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `www` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `escuela`
--

INSERT INTO `escuela` (`clave_escuela`, `id_nivel`, `nombre`, `direccion`, `cp`, `www`) VALUES
('IJDIJD92', 3, 'PATITOS FELIZ', 'CONOCIDO', '97000', 'WWW.FELIZTRONARAN.COM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(2) NOT NULL,
  `estados` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id_estado`, `estados`) VALUES
(1, 'Aguascalientes'),
(2, 'Baja California'),
(3, 'Baja California Sur'),
(4, 'Campeche'),
(5, 'Chiapas'),
(6, 'Chihuahua'),
(7, 'Coahuila de Zaragoza'),
(8, 'Colima'),
(9, 'Distrito Federal'),
(10, 'Durango'),
(11, 'Guanajuato'),
(12, 'Guerrero'),
(13, 'Hidalgo'),
(14, 'Jalisco'),
(15, 'México'),
(16, 'Michoacán de Ocampo'),
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
(30, 'Veracruz de Ignacio de la Llave'),
(31, 'Yucatán'),
(32, 'Zacatecas'),
(33, 'extranjero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id_grupo` int(4) NOT NULL,
  `grupo` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`id_grupo`, `grupo`, `descripcion`) VALUES
(1, 'A', 'HOLA'),
(2, 'B', ''),
(3, 'C', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id_maestro` int(4) NOT NULL,
  `curp` varchar(18) COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `a_paterno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `a_materno` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `cedula` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `id_pais` int(3) NOT NULL,
  `id_estado` int(2) NOT NULL,
  `id_sangre` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id_maestro`, `curp`, `nombres`, `a_paterno`, `a_materno`, `cedula`, `id_pais`, `id_estado`, `id_sangre`) VALUES
(1, 'CAML811201', 'LUIS ABEL', 'CALCANEO', 'MURILLO', 'CIDHJEDHUQ', 120, 9, 8),
(2, 'JFGHFHWD', 'GEORGINA', 'ESPINOZA', 'GURRITZ', 'JSHDGGDHWBH', 3, 33, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `materia` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `materia`, `descripcion`) VALUES
('1', 'BASE DE DATOS', 'QUE BONITO '),
('2', 'ESTRUCTURA DE DATOS', 'HAY LOS VEO'),
('3', 'CURSO DE EXCEL', 'LES ESPERA EN OTRA MATERIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_educ`
--

CREATE TABLE `nivel_educ` (
  `id_nivel` int(2) NOT NULL,
  `nivel` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `nivel_educ`
--

INSERT INTO `nivel_educ` (`id_nivel`, `nivel`) VALUES
(1, 'Kinder'),
(2, 'Primaria'),
(3, 'Secundaria'),
(4, 'Preparatoria'),
(5, 'Carrera'),
(6, 'Postgrado'),
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
(1, 'Afganistán'),
(2, 'Albania'),
(3, 'Alemania'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Antigua y Barbuda'),
(7, 'Arabia Saudita'),
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
(20, 'Benín'),
(21, 'Bielorrusia'),
(22, 'Birmania'),
(23, 'Bolivia'),
(24, 'Bosnia-Herzegovina'),
(25, 'Botsuana'),
(26, 'Brasil'),
(27, 'Brunéi'),
(28, 'Bulgaria'),
(29, 'Burkina Faso'),
(30, 'Burundi'),
(31, 'Bután'),
(32, 'Cabo Verde'),
(33, 'Camboya'),
(34, 'Camerún'),
(35, 'Canadá'),
(36, 'Catar'),
(37, 'Chad'),
(38, 'Chile'),
(39, 'China'),
(40, 'Chipre'),
(41, 'Colombia'),
(42, 'Comoras'),
(43, 'Congo'),
(44, 'Corea del Norte'),
(45, 'Corea del Sur'),
(46, 'Costa de Marfil'),
(47, 'Costa Rica'),
(48, 'Croacia'),
(49, 'Cuba'),
(50, 'Dinamarca'),
(51, 'Dominica'),
(52, 'Ecuador'),
(53, 'Egipto'),
(54, 'El Salvador'),
(55, 'Emiratos Árabes Unidos'),
(56, 'Eritrea'),
(57, 'Eslovaquia'),
(58, 'Eslovenia'),
(59, 'España'),
(60, 'Estados Unidos'),
(61, 'Estonia'),
(62, 'Esuatini'),
(63, 'Etiopía'),
(64, 'Filipinas'),
(65, 'Finlandia'),
(66, 'Fiyi'),
(67, 'Francia'),
(68, 'Gabón'),
(69, 'Gambia'),
(70, 'Georgia'),
(71, 'Ghana'),
(72, 'Granada'),
(73, 'Grecia'),
(74, 'Guatemala'),
(75, 'Guinea'),
(76, 'Guinea Ecuatorial'),
(77, 'Guinea-Bisáu'),
(78, 'Guyana'),
(79, 'Haití'),
(80, 'Honduras'),
(81, 'Hungría'),
(82, 'India'),
(83, 'Indonesia'),
(84, 'Irak'),
(85, 'Irán'),
(86, 'Irlanda'),
(87, 'Islandia'),
(88, 'Islas Marshall'),
(89, 'Islas Salomón'),
(90, 'Israel'),
(91, 'Italia'),
(92, 'Jamaica'),
(93, 'Japón'),
(94, 'Jordania'),
(95, 'Kazajistán'),
(96, 'Kenia'),
(97, 'Kirguistán'),
(98, 'Kiribati'),
(99, 'Kosovo'),
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
(115, 'Malí'),
(116, 'Malta'),
(117, 'Marruecos'),
(118, 'Mauricio'),
(119, 'Mauritania'),
(120, 'México'),
(121, 'Micronesia'),
(122, 'Moldavia'),
(123, 'Mónaco'),
(124, 'Mongolia'),
(125, 'Montenegro'),
(126, 'Mozambique'),
(127, 'Namibia'),
(128, 'Nauru'),
(129, 'Nepal'),
(130, 'Nicaragua'),
(131, 'Níger'),
(132, 'Nigeria'),
(133, 'Noruega'),
(134, 'Nueva Zelanda'),
(135, 'Omán'),
(136, 'Países Bajos'),
(137, 'Pakistán'),
(138, 'Palaos'),
(139, 'Palestina'),
(140, 'Panamá'),
(141, 'Papúa Nueva Guinea'),
(142, 'Paraguay'),
(143, 'Perú'),
(144, 'Polonia'),
(145, 'Portugal'),
(146, 'Reino Unido'),
(147, 'República Centroafricana'),
(148, 'República Checa'),
(149, 'República Democrática del Congo'),
(150, 'República Dominicana'),
(151, 'Ruanda'),
(152, 'Rumania'),
(153, 'Rusia'),
(154, 'Samoa'),
(155, 'San Cristóbal y Nieves'),
(156, 'San Marino'),
(157, 'San Vicente y las Granadinas'),
(158, 'Santa Lucía'),
(159, 'Santo Tomé y Príncipe'),
(160, 'Senegal'),
(161, 'Serbia'),
(162, 'Seychelles'),
(163, 'Sierra Leona'),
(164, 'Singapur'),
(165, 'Siria'),
(166, 'Somalia'),
(167, 'Sri Lanka'),
(168, 'Sudáfrica'),
(169, 'Sudán'),
(170, 'Sudán del Sur'),
(171, 'Suecia'),
(172, 'Suiza'),
(173, 'Surinam'),
(174, 'Tailandia'),
(175, 'Taiwán'),
(176, 'Tanzania'),
(177, 'Tayikistán'),
(178, 'Timor Oriental'),
(179, 'Togo'),
(180, 'Tonga'),
(181, 'Trinidad y Tobago'),
(182, 'Túnez'),
(183, 'Turkmenistán'),
(184, 'Turquía'),
(185, 'Tuvalu'),
(186, 'Ucrania'),
(187, 'Uganda'),
(188, 'Uruguay'),
(189, 'Uzbekistán'),
(190, 'Vanuatu'),
(191, 'Vaticano'),
(192, 'Venezuela'),
(193, 'Vietnam'),
(194, 'Yemen'),
(195, 'Yibuti'),
(196, 'Zambia'),
(197, 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salones`
--

CREATE TABLE `salones` (
  `id_salon` int(4) NOT NULL,
  `salon` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `salones`
--

INSERT INTO `salones` (`id_salon`, `salon`, `descripcion`) VALUES
(1, '9122', 'ES EL MEJOR SALON DE LA UNI'),
(2, '1222', 'HOLA ESTA EN EL EDIF. 12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sangre`
--

CREATE TABLE `sangre` (
  `id_sangre` int(1) NOT NULL,
  `sangre` varchar(4) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sangre`
--

INSERT INTO `sangre` (`id_sangre`, `sangre`) VALUES
(1, 'A+'),
(2, 'A-'),
(3, 'B+'),
(4, 'B-'),
(5, 'AB+'),
(6, 'AB-'),
(7, 'O+'),
(8, 'O-');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`matricula`),
  ADD UNIQUE KEY `curp` (`curp`),
  ADD KEY `id_pais` (`id_pais`,`id_estado`,`id_sangre`),
  ADD KEY `id_estado` (`id_estado`),
  ADD KEY `id_sangre` (`id_sangre`);

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id_calificaciones`),
  ADD KEY `id_maestro` (`id_maestro`,`id_grupo`,`id_criterios`,`id_materia`),
  ADD KEY `id_criterios` (`id_criterios`),
  ADD KEY `id_grupo` (`id_grupo`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `matricula` (`matricula`);

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD KEY `matricula` (`matricula`,`id_maestro`,`id_salon`),
  ADD KEY `id_maestro` (`id_maestro`),
  ADD KEY `id_salon` (`id_salon`);

--
-- Indices de la tabla `colegiatura`
--
ALTER TABLE `colegiatura`
  ADD PRIMARY KEY (`id_colegiatura`),
  ADD KEY `clave_escuela` (`clave_escuela`,`matricula`),
  ADD KEY `matricula` (`matricula`);

--
-- Indices de la tabla `criterios`
--
ALTER TABLE `criterios`
  ADD PRIMARY KEY (`id_criterios`);

--
-- Indices de la tabla `escuela`
--
ALTER TABLE `escuela`
  ADD PRIMARY KEY (`clave_escuela`),
  ADD KEY `id_nivel` (`id_nivel`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id_grupo`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id_maestro`),
  ADD UNIQUE KEY `curp` (`curp`),
  ADD KEY `id_pais` (`id_pais`,`id_estado`,`id_sangre`),
  ADD KEY `id_estado` (`id_estado`),
  ADD KEY `id_sangre` (`id_sangre`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`);

--
-- Indices de la tabla `nivel_educ`
--
ALTER TABLE `nivel_educ`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indices de la tabla `salones`
--
ALTER TABLE `salones`
  ADD PRIMARY KEY (`id_salon`);

--
-- Indices de la tabla `sangre`
--
ALTER TABLE `sangre`
  ADD PRIMARY KEY (`id_sangre`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id_pais`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `alumnos_ibfk_3` FOREIGN KEY (`id_sangre`) REFERENCES `sangre` (`id_sangre`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`id_criterios`) REFERENCES `criterios` (`id_criterios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_3` FOREIGN KEY (`id_maestro`) REFERENCES `maestros` (`id_maestro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_4` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_5` FOREIGN KEY (`matricula`) REFERENCES `alumnos` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`id_maestro`) REFERENCES `maestros` (`id_maestro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`id_salon`) REFERENCES `salones` (`id_salon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clases_ibfk_3` FOREIGN KEY (`matricula`) REFERENCES `alumnos` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `colegiatura`
--
ALTER TABLE `colegiatura`
  ADD CONSTRAINT `colegiatura_ibfk_1` FOREIGN KEY (`clave_escuela`) REFERENCES `escuela` (`clave_escuela`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `colegiatura_ibfk_2` FOREIGN KEY (`matricula`) REFERENCES `alumnos` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `escuela`
--
ALTER TABLE `escuela`
  ADD CONSTRAINT `escuela_ibfk_1` FOREIGN KEY (`id_nivel`) REFERENCES `nivel_educ` (`id_nivel`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD CONSTRAINT `maestros_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `paises` (`id_pais`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maestros_ibfk_2` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `maestros_ibfk_3` FOREIGN KEY (`id_sangre`) REFERENCES `sangre` (`id_sangre`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
