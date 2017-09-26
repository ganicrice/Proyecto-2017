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
-- Current Database: `hotel`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hotel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hotel`;

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
INSERT INTO `estado_habitacion` VALUES (101,0,'libre',NULL,NULL),(102,0,'libre',NULL,NULL),(103,0,'libre',NULL,NULL),(104,0,'libre',NULL,NULL),(105,0,'libre',NULL,NULL),(106,0,'libre',NULL,NULL),(107,0,'libre',NULL,NULL),(201,0,'libre',NULL,NULL),(202,0,'libre',NULL,NULL),(203,0,'libre',NULL,NULL),(204,0,'libre',NULL,NULL),(205,0,'libre',NULL,NULL),(206,0,'libre',NULL,NULL),(207,0,'libre',NULL,NULL),(301,11111111,'reservado','2017-05-07','2017-05-19'),(302,0,'libre',NULL,NULL),(303,33333333,'ocupado','2017-08-09','2017-08-19'),(304,0,'libre',NULL,NULL),(305,0,'libre',NULL,NULL),(306,0,'libre',NULL,NULL),(307,0,'libre',NULL,NULL),(401,0,'libre',NULL,NULL),(402,0,'libre',NULL,NULL),(403,55555555,'ocupado','2017-06-25','2017-07-02'),(404,0,'libre',NULL,NULL),(405,44444444,'reservado','2017-09-25','2017-10-07'),(406,0,'libre',NULL,NULL),(407,0,'libre',NULL,NULL),(501,0,'libre',NULL,NULL),(502,0,'libre',NULL,NULL),(503,77777777,'reservado','2017-09-19','2017-10-09'),(504,0,'libre',NULL,NULL),(505,0,'libre',NULL,NULL),(506,0,'libre',NULL,NULL),(507,0,'libre',NULL,NULL),(601,0,'libre',NULL,NULL),(602,0,'libre',NULL,NULL),(603,0,'libre',NULL,NULL),(604,0,'libre',NULL,NULL),(605,0,'libre',NULL,NULL),(606,0,'libre',NULL,NULL),(607,0,'libre',NULL,NULL),(701,66666666,'ocupado','2017-07-05','2017-07-14');
/*!40000 ALTER TABLE `estado_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitaciones`
--

DROP TABLE IF EXISTS `habitaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habitaciones` (
  `nro_habitacion` int(11) NOT NULL,
  `tipo_habitacion` int(11) NOT NULL,
  PRIMARY KEY (`nro_habitacion`),
  KEY `tipo_habitacion` (`tipo_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitaciones`
--

LOCK TABLES `habitaciones` WRITE;
/*!40000 ALTER TABLE `habitaciones` DISABLE KEYS */;
INSERT INTO `habitaciones` VALUES (101,1),(102,1),(103,1),(201,1),(202,1),(203,1),(301,1),(302,1),(303,1),(401,1),(402,1),(403,1),(501,1),(502,1),(503,1),(601,1),(602,1),(603,1),(104,2),(105,2),(106,2),(204,2),(205,2),(206,2),(304,2),(305,2),(306,2),(404,2),(405,2),(406,2),(504,2),(505,2),(506,2),(604,2),(605,2),(606,2),(107,3),(207,3),(307,3),(407,3),(507,3),(607,3),(701,4);
/*!40000 ALTER TABLE `habitaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial`
--

DROP TABLE IF EXISTS `historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historial` (
  `nombre` varchar(20) NOT NULL,
  `documento` int(11) NOT NULL,
  `nro_habitacion` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL,
  PRIMARY KEY (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial`
--

LOCK TABLES `historial` WRITE;
/*!40000 ALTER TABLE `historial` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tipo_cama`
--

DROP TABLE IF EXISTS `tipo_cama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_cama` (
  `idtipo_cama` int(11) NOT NULL,
  `nombre` varchar(19) NOT NULL,
  `cantidad_camas` int(11) NOT NULL,
  PRIMARY KEY (`idtipo_cama`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_cama`
--

LOCK TABLES `tipo_cama` WRITE;
/*!40000 ALTER TABLE `tipo_cama` DISABLE KEYS */;
INSERT INTO `tipo_cama` VALUES (1,'simple',1),(2,'doble',2),(3,'familiar',3);
/*!40000 ALTER TABLE `tipo_cama` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2017-09-26 18:41:51
