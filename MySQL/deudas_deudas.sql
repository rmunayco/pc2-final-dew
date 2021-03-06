CREATE DATABASE  IF NOT EXISTS `deudas` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `deudas`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: deudas
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `deudas`
--

DROP TABLE IF EXISTS `deudas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deudas` (
  `idtributos` int(11) NOT NULL AUTO_INCREMENT,
  `nruc` varchar(11) DEFAULT NULL,
  `criterio` varchar(10) DEFAULT NULL,
  `periodo` varchar(45) DEFAULT NULL,
  `resolucion` varchar(90) DEFAULT NULL,
  `codigo` varchar(20) DEFAULT NULL,
  `monto` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`idtributos`),
  KEY `adeuda` (`nruc`),
  KEY `xruc` (`nruc`),
  CONSTRAINT `adeuda` FOREIGN KEY (`nruc`) REFERENCES `contribuyente` (`nruc`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deudas`
--

LOCK TABLES `deudas` WRITE;
/*!40000 ALTER TABLE `deudas` DISABLE KEYS */;
INSERT INTO `deudas` VALUES (18,'20100075009','2','2005-2','9123865','1234',200.00),(20,'20100040903','1','2013-1','1239865','4567',500.00);
/*!40000 ALTER TABLE `deudas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-08 23:44:30
