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
-- Table structure for table `tipo_habitacion`
--

DROP TABLE IF EXISTS `tipo_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_habitacion` (
  `tipo_habitacion` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `tv` tinyint(1) NOT NULL,
  `cable` tinyint(1) NOT NULL,
  `frigobar` tinyint(1) NOT NULL,
  `ventana_frente` tinyint(1) NOT NULL,
  `aire_acondicionado` tinyint(1) NOT NULL,
  `tipo_cama` tinyint(1) NOT NULL,
  `escritorio` tinyint(1) NOT NULL,
  `pc` tinyint(1) NOT NULL,
  `yacuzzi` tinyint(1) NOT NULL,
  `id_tipo_habitacion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_habitacion`,`tipo_habitacion`),
  KEY `tipo_cama` (`tipo_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_habitacion`
--

LOCK TABLES `tipo_habitacion` WRITE;
/*!40000 ALTER TABLE `tipo_habitacion` DISABLE KEYS */;
INSERT INTO `tipo_habitacion` VALUES (1,'economica',1,1,1,0,0,1,0,0,0,'1'),(4,'residencial',1,1,1,1,1,1,1,1,1,'10'),(1,'economica',1,1,1,0,0,2,0,0,0,'2'),(1,'economica',1,1,1,0,0,3,0,0,0,'3'),(2,'normal',1,1,1,0,1,1,0,0,0,'4'),(2,'normal',1,1,1,0,1,2,0,0,0,'5'),(2,'normal',1,1,1,0,1,3,0,0,0,'6'),(3,'swit',1,1,1,1,1,1,0,0,1,'7'),(3,'swit',1,1,1,1,1,2,0,0,1,'8'),(3,'swit',1,1,1,1,1,3,0,0,1,'9');
/*!40000 ALTER TABLE `tipo_habitacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-24 17:58:09
