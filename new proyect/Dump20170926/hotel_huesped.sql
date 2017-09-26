CREATE DATABASE  IF NOT EXISTS `hotel` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `hotel`;
-- MySQL dump 10.13  Distrib 5.5.9, for Win32 (x86)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	5.5.15

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
-- Table structure for table `huesped`
--

DROP TABLE IF EXISTS `huesped`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huesped` (
  `documento` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `ciudad` varchar(15) NOT NULL,
  `telefono` int(11) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `direccion_1` varchar(60) NOT NULL,
  `direccion_2` varchar(60) DEFAULT NULL,
  `pais` varchar(25) NOT NULL,
  `fecha_nacimiento` varchar(8) NOT NULL,
  `ocupacion` varchar(25) NOT NULL,
  `observaciones` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huesped`
--

LOCK TABLES `huesped` WRITE;
/*!40000 ALTER TABLE `huesped` DISABLE KEYS */;
INSERT INTO `huesped` VALUES (11111111,'juan','perez','rivera',111111111,'prueba1@gmail.com','rodo 1763','artigas 258','uruguay','12/04/82','ingeniero',NULL),(22222222,'andres','cuña','tacuarembo',222222222,'prueba2@hotmail.com','f.sanchez 2524',NULL,'uruguay','25/02/81','policia',NULL),(33333333,'maria','flores','miami',333333333,'prueba3@gmail.com','47 street',NULL,'eeuu','12/01/69','empresaria',NULL),(44444444,'rodrigo','acuña','paris',444444444,'prueba4@gmail.com','23asdrid',NULL,'francia','19/04/95','programador','No molestar de 14 a 16 hs.'),(55555555,'pablo','suarez','Montevideo',555555555,'prueba5@gmail.com','uruguay 2222',NULL,'uruguay','23/12/89','estilista',NULL),(66666666,'marco','sanchez','Rivera',666666666,'prueba6@gmail.com','sarandi 2229','av.italia 2229','uruguay','30/11/77','arquitecto',NULL),(77777777,'pedro','rodriguez','rivera',777777777,'prueba7@gmail.com','pte.viera 1212',NULL,'uruguay','30/05/91','heladero',NULL);
/*!40000 ALTER TABLE `huesped` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-26 18:41:17
