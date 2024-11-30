-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2022 at 06:23 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `escuela_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE `alumnos` (
  `Id_Alumno` int(11) NOT NULL,
  `Nombre` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ApellidoPa` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ApellidoMa` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` (`Id_Alumno`, `Nombre`, `ApellidoPa`, `ApellidoMa`) VALUES
(1, 'Neymar', 'Chan', 'Chu'),
(2, 'Cristiano', 'Ku', 'Perez'),
(3, 'Messi', 'Lopez', 'Zuñiga'),
(4, 'Robert', 'Shuminsky', 'Ake'),
(5, 'Ronaldiño', 'Randolph', 'Falcon'),
(6, 'Zinedin', 'Chi', 'Morales'),
(7, 'Mara', 'Droga', 'Tzad'),
(8, 'Pele', 'Pool', 'Cantu'),
(9, 'Benzema', 'Fabila', 'Batarse'),
(10, 'Memo', 'Ochoa', 'Noyer');

-- --------------------------------------------------------

--
-- Table structure for table `calificaciones`
--

CREATE TABLE `calificaciones` (
  `Id_Calificaciones` int(11) NOT NULL,
  `Parcial_1` int(3) NOT NULL,
  `Parcial_2` int(3) NOT NULL,
  `Parcial_3` int(3) NOT NULL,
  `Ordinario` int(3) NOT NULL,
  `Calificacion_Final` int(3) NOT NULL,
  `Id_Maestro` int(11) NOT NULL,
  `Id_Grupo` int(11) NOT NULL,
  `Id_Materia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clases`
--

CREATE TABLE `clases` (
  `Id_Clase` int(11) NOT NULL,
  `NombreClases` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Id_Alumno` int(11) NOT NULL,
  `Id_Maestro` int(11) NOT NULL,
  `Id_Salon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colegiatura`
--

CREATE TABLE `colegiatura` (
  `Id_Colegiatura` int(11) NOT NULL,
  `MontoPago` int(11) NOT NULL,
  `FechaPago` int(11) NOT NULL,
  `Id_Alumno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `escuela`
--

CREATE TABLE `escuela` (
  `Id_Escuela` int(11) NOT NULL,
  `Nombre_Escuela` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Id_nivelE` int(11) NOT NULL,
  `Id_Colegiatura` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grupos`
--

CREATE TABLE `grupos` (
  `Id_Grupo` int(11) NOT NULL,
  `NombreGrupo` varchar(70) COLLATE utf8mb4_spanish_ci NOT NULL,
  `Capacidad` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maestros`
--

CREATE TABLE `maestros` (
  `Id_Maestro` int(11) NOT NULL,
  `Nombre` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ApellidoPa` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL,
  `ApellidoMa` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materias`
--

CREATE TABLE `materias` (
  `Id_Materia` int(11) NOT NULL,
  `NombreMateria` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nivel_educativo`
--

CREATE TABLE `nivel_educativo` (
  `Id_nivelE` int(11) NOT NULL,
  `NombreEscuela` varchar(30) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salon`
--

CREATE TABLE `salon` (
  `Id_Salon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`Id_Alumno`);

--
-- Indexes for table `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`Id_Calificaciones`),
  ADD KEY `Id_Maestro` (`Id_Maestro`),
  ADD KEY `Id_Grupo` (`Id_Grupo`),
  ADD KEY `Id_Materia` (`Id_Materia`);

--
-- Indexes for table `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`Id_Clase`),
  ADD KEY `Id_Maestro` (`Id_Maestro`),
  ADD KEY `Id_Alumno` (`Id_Alumno`),
  ADD KEY `Id_Salon` (`Id_Salon`);

--
-- Indexes for table `colegiatura`
--
ALTER TABLE `colegiatura`
  ADD PRIMARY KEY (`Id_Colegiatura`),
  ADD KEY `Id_Alumno` (`Id_Alumno`);

--
-- Indexes for table `escuela`
--
ALTER TABLE `escuela`
  ADD PRIMARY KEY (`Id_Escuela`),
  ADD KEY `Id_nivelE` (`Id_nivelE`),
  ADD KEY `Id_Colegiatura` (`Id_Colegiatura`);

--
-- Indexes for table `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`Id_Grupo`);

--
-- Indexes for table `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`Id_Maestro`);

--
-- Indexes for table `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`Id_Materia`);

--
-- Indexes for table `nivel_educativo`
--
ALTER TABLE `nivel_educativo`
  ADD PRIMARY KEY (`Id_nivelE`);

--
-- Indexes for table `salon`
--
ALTER TABLE `salon`
  ADD PRIMARY KEY (`Id_Salon`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`Id_Maestro`) REFERENCES `maestros` (`Id_Maestro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`Id_Grupo`) REFERENCES `grupos` (`Id_Grupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_3` FOREIGN KEY (`Id_Materia`) REFERENCES `materias` (`Id_Materia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clases_ibfk_2` FOREIGN KEY (`Id_Salon`) REFERENCES `salon` (`Id_Salon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `clases_ibfk_3` FOREIGN KEY (`Id_Maestro`) REFERENCES `maestros` (`Id_Maestro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `colegiatura`
--
ALTER TABLE `colegiatura`
  ADD CONSTRAINT `colegiatura_ibfk_1` FOREIGN KEY (`Id_Alumno`) REFERENCES `alumnos` (`Id_Alumno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `escuela`
--
ALTER TABLE `escuela`
  ADD CONSTRAINT `escuela_ibfk_1` FOREIGN KEY (`Id_nivelE`) REFERENCES `nivel_educativo` (`Id_nivelE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `escuela_ibfk_2` FOREIGN KEY (`Id_Colegiatura`) REFERENCES `colegiatura` (`Id_Colegiatura`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
