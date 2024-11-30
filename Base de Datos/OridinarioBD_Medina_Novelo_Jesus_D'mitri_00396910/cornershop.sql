-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: cornershop
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `CargoID` int(6) NOT NULL,
  `Descripcion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`CargoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Cajer@'),(2,'Gerente de Panadería'),(3,'Empleado de Panadería '),(4,'Gerente de Frutas y Verduras'),(5,'Empleado de frutas y verduras'),(6,'Gerente de Carnes Frías'),(7,'Empleado de Carnes Frías'),(8,'Gerente de Vinos y Licores'),(9,'Empleado de Vinos y Licores'),(10,'Empleado de Salchichoneria'),(11,'Gerente de Salchichoneria'),(12,'Empleado de farmacia'),(13,'Gerente de farmacia'),(14,'Empleado de Ropa'),(15,'Gerente de Ropa'),(16,'Empleado de AseoPersonal'),(17,'Gerente de AseoPersonal'),(18,'Empleado de Mariscos'),(19,'Gerente de Mariscos'),(20,'Empleado de Cereales'),(21,'Gerente de Cereales');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carritodecompras`
--

DROP TABLE IF EXISTS `carritodecompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carritodecompras` (
  `CarritoID` int(6) NOT NULL,
  `ProductoID` int(6) NOT NULL,
  `Cantidad` int(6) NOT NULL,
  PRIMARY KEY (`CarritoID`),
  KEY `ProductoID` (`ProductoID`),
  CONSTRAINT `carritodecompras_ibfk_2` FOREIGN KEY (`ProductoID`) REFERENCES `productos` (`ProductoID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carritodecompras`
--

LOCK TABLES `carritodecompras` WRITE;
/*!40000 ALTER TABLE `carritodecompras` DISABLE KEYS */;
INSERT INTO `carritodecompras` VALUES (1,6,1),(2,7,1),(3,4,4),(4,10,3),(5,8,1),(6,5,3),(7,14,1),(8,14,2),(9,20,3),(10,17,4),(11,13,2),(12,14,1),(13,19,2),(14,15,3),(15,9,4);
/*!40000 ALTER TABLE `carritodecompras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `Nombre` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `ApellidoP` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `ApellidoM` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `ID_Cliente` int(6) NOT NULL,
  PRIMARY KEY (`ID_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('Daddy','Yankee','Pr',1),('Bad ','Bunny','Mtz',2),('Mike','Towers','Pr',3),('Rauw','Alejandro','Pr',4),('Anuel','AA','Pr',5),('Danny','Ocean','Pr',6),('Viole','Ivashkov','Rowell',7),('Sauveur','Faircley','Reinmar',8),('Carney','Rehn','Kitchensid',9),('Correy','Lumby','Gaspar',10),('Malynda','Roxbrough','Bruffell',11),('Clayborne','Gavahan','Allwood',12),('Laurel','Stockport','Shortan',13),('Catarina','Greschke','Kilbourne',14),('Bay','Beig','Von Der Em',15),('Georgena','Jenny','Gabbot',16),('Sabine','Hamerton','Berriman',17),('Sherye','Leonardi','Shallo',18),('Codee','Andrioli','Lampen',19),('Betty','Twiggs','Mascall',20),('Vernon','Esome','Lemon',21);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compra` (
  `IDCompra` int(6) NOT NULL,
  `IDVenta` int(6) NOT NULL,
  `ID_Cliente` int(6) NOT NULL,
  `CarritoID` int(6) NOT NULL,
  `MontoFinal` float NOT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`IDCompra`),
  KEY `IDVenta` (`IDVenta`),
  KEY `ID_Cliente` (`ID_Cliente`),
  KEY `CarritoID` (`CarritoID`),
  CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`IDVenta`) REFERENCES `venta` (`IDVenta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`ID_Cliente`) REFERENCES `cliente` (`ID_Cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `compra_ibfk_3` FOREIGN KEY (`CarritoID`) REFERENCES `carritodecompras` (`CarritoID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,1,1,1,16000,'2022-05-08'),(2,2,2,2,8750,'2022-05-09'),(3,3,3,3,152,'2022-05-10'),(4,4,4,4,1290,'2022-05-11'),(5,5,5,5,49500,'2022-05-12'),(6,6,6,6,256.2,'2022-05-13'),(7,7,7,7,753.92,'2022-06-01'),(8,8,8,8,1507.84,'2022-06-02'),(9,9,9,9,2726.52,'2022-06-03'),(10,10,10,10,497.72,'2022-05-31'),(11,11,11,11,1424.84,'2022-05-26'),(12,12,12,12,753.92,'2022-05-24'),(13,13,13,13,1944.36,'2022-05-28'),(14,14,14,14,1793.91,'2022-05-29'),(15,15,15,15,920,'2022-05-17');
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `EmpleadoID` int(6) NOT NULL,
  `CargoID` int(6) NOT NULL,
  `Nombre` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `ApellidoP` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `ApellidoM` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`EmpleadoID`),
  KEY `CargoID` (`CargoID`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`CargoID`) REFERENCES `cargo` (`CargoID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,1,'Leonel','Messi','Us'),(2,2,'Ronaldo','Cortez','Wun'),(3,3,'Ronaldinho','Towers','Murillo'),(4,4,'Rauw','AA','Bug'),(5,5,'Tainy','Ozuna','Bello'),(6,6,'Wisin','Ocean','Op'),(7,7,'Yandel','Yanke','Yu'),(8,8,'Luis Migue','Jam','Martínez'),(9,9,'Dalex','Lenny','Tavarez'),(10,10,'Juan','Ol','Jio'),(11,11,'Julio','ujh','nkp'),(12,12,'Saul','Yuuu','Juuu'),(13,13,'Gerr','yuuuu','Puil'),(14,14,'weetu','Kill','Boom'),(15,15,'Astro','Nill','Nigga'),(16,16,'Quavo','Travis','Oil'),(17,17,'Ernesto','Hummus','Rol'),(18,18,'Bostons','Bronx','Efff'),(19,19,'Alex','Bee','Ujum'),(20,20,'Rodro','Wee','Are'),(21,21,'Saiz','Vetel','FVYVY');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `ProductoID` int(6) NOT NULL,
  `Descripcion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Precio` float NOT NULL,
  PRIMARY KEY (`ProductoID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Shampoo',60),(2,'Jabon Zote',16.5),(3,'Pan Bimbo',55),(4,'Salchichas',38),(5,'Vinagre Balsami',85.4),(6,'TV Samsung 55\"',16000),(7,'Iphone XR',8750),(8,'Laptop HP Omen ',49500),(9,'Bacardi Blanco',230),(10,'Jose Cuervo Rep',430),(11,'Cocktail Napkin Blue',400.42),(12,'Wine - Pinot Grigio ',770.78),(13,'Mousse - Banana Choc',712.42),(14,'Catfish - Fillets',753.92),(15,'Oil - Margarine',597.97),(16,'Wine - Rhine Rieslin',606.55),(17,'Buttons',124.43),(18,'Fish - Soup Base, Bo',46.05),(19,'Jameson Irish Whiske',972.18),(20,'Pepsi - Diet, 355 Ml',908.84);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `IDVenta` int(6) NOT NULL,
  `EmpleadoID` int(6) NOT NULL,
  `Descuento` int(3) DEFAULT NULL,
  PRIMARY KEY (`IDVenta`),
  KEY `EmpleadoID` (`EmpleadoID`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`EmpleadoID`) REFERENCES `empleado` (`EmpleadoID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,3,NULL),(2,5,10),(3,7,NULL),(4,9,NULL),(5,3,15),(6,5,NULL),(7,17,NULL),(8,15,NULL),(9,14,NULL),(10,8,NULL),(11,19,NULL),(12,11,NULL),(13,16,NULL),(14,13,NULL),(15,13,NULL),(16,18,NULL),(17,19,NULL),(18,9,NULL),(19,10,NULL),(20,20,NULL),(21,14,NULL);
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cornershop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-15 17:53:42
