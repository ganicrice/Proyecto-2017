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
-- Table structure for table `estado_habitacion`
--

DROP TABLE IF EXISTS `estado_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_habitacion` (
  `nro_habitacion` int(11) NOT NULL,
  `nro_documento` int(11) NOT NULL DEFAULT '0',
  `estado` varchar(45) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `fecha_salida` date DEFAULT NULL,
  PRIMARY KEY (`nro_habitacion`,`nro_documento`),
  KEY `documento` (`nro_documento`),
  KEY `nro_habitaciones` (`nro_habitacion`),
  CONSTRAINT `nro_habitaciones` FOREIGN KEY (`nro_habitacion`) REFERENCES `habitaciones` (`nro_habitacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_habitacion`
--

LOCK TABLES `estado_habitacion` WRITE;
/*!40000 ALTER TABLE `estado_habitacion` DISABLE KEYS */;
INSERT INTO `estado_habitacion` VALUES (101,22222222,'ocupado','2017-09-05','2017-10-25'),(102,0,'libre',NULL,NULL),(103,0,'libre',NULL,NULL),(104,0,'libre',NULL,NULL),(105,0,'libre',NULL,NULL),(106,0,'libre',NULL,NULL),(107,0,'libre',NULL,NULL),(201,0,'libre',NULL,NULL),(202,0,'libre',NULL,NULL),(203,0,'libre',NULL,NULL),(204,0,'libre',NULL,NULL),(205,0,'libre',NULL,NULL),(206,0,'libre',NULL,NULL),(207,0,'libre',NULL,NULL),(301,11111111,'reservado','2017-05-07','2017-05-19'),(302,0,'libre',NULL,NULL),(303,33333333,'ocupado','2017-08-09','2017-08-19'),(304,0,'libre',NULL,NULL),(305,0,'libre',NULL,NULL),(306,0,'libre',NULL,NULL),(307,0,'libre',NULL,NULL),(401,0,'libre',NULL,NULL),(402,0,'libre',NULL,NULL),(403,55555555,'ocupado','2017-06-25','2017-07-02'),(404,0,'libre',NULL,NULL),(405,44444444,'reservado','2017-09-25','2017-10-07'),(406,0,'libre',NULL,NULL),(407,0,'libre',NULL,NULL),(501,0,'libre',NULL,NULL),(502,0,'libre',NULL,NULL),(503,77777777,'reservado','2017-09-19','2017-10-09'),(504,0,'libre',NULL,NULL),(505,0,'libre',NULL,NULL),(506,0,'libre',NULL,NULL),(507,0,'libre',NULL,NULL),(601,0,'libre',NULL,NULL),(602,0,'libre',NULL,NULL),(603,0,'libre',NULL,NULL),(604,0,'libre',NULL,NULL),(605,0,'libre',NULL,NULL),(606,0,'libre',NULL,NULL),(607,0,'libre',NULL,NULL),(701,66666666,'ocupado','2017-07-05','2017-07-14');
/*!40000 ALTER TABLE `estado_habitacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-24 17:58:08
