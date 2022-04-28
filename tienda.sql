-- MySQL dump 10.13  Distrib 5.7.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `tienda`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tienda` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tienda`;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulo` (
  `idarticulo` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nombre` char(50) NOT NULL,
  `descripcion` text NOT NULL,
  `valor` int(7) NOT NULL,
  `costoenvio` int(7) NOT NULL,
  `imagen` char(80) NOT NULL,
  `cedula` char(10) NOT NULL,
  `idestado` int(1) NOT NULL,
  `idcategoria` int(5) unsigned zerofill NOT NULL,
  `idpaisorigen` int(5) unsigned zerofill NOT NULL,
  `idmarca` int(5) unsigned zerofill NOT NULL,
  `idgenero` int(2) unsigned zerofill NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`idarticulo`),
  KEY `cedula` (`cedula`),
  KEY `idestado` (`idestado`),
  KEY `idcategoria` (`idcategoria`),
  KEY `idpaisorigen` (`idpaisorigen`),
  KEY `idmarca` (`idmarca`),
  KEY `idgenero` (`idgenero`),
  CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`cedula`) REFERENCES `vendedor` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `articulo_ibfk_2` FOREIGN KEY (`idestado`) REFERENCES `estado` (`idestado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `articulo_ibfk_3` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `articulo_ibfk_4` FOREIGN KEY (`idpaisorigen`) REFERENCES `paisorigen` (`idpaisorigen`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `articulo_ibfk_5` FOREIGN KEY (`idmarca`) REFERENCES `marca` (`idmarca`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `articulo_ibfk_6` FOREIGN KEY (`idgenero`) REFERENCES `genero` (`idgenero`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `idcategoria` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `categoria` char(40) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `idciudad` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `ciudad` char(40) NOT NULL,
  `iddepartamento` int(2) unsigned zerofill NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`idciudad`),
  KEY `iddepartamento` (`iddepartamento`),
  CONSTRAINT `ciudad_ibfk_1` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `iddepartamento` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `departamento` char(40) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`iddepartamento`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `idestado` int(1) NOT NULL AUTO_INCREMENT,
  `tipoestado` char(20) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formapago`
--

DROP TABLE IF EXISTS `formapago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formapago` (
  `idformapago` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `formapago` char(20) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`idformapago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapago`
--

LOCK TABLES `formapago` WRITE;
/*!40000 ALTER TABLE `formapago` DISABLE KEYS */;
/*!40000 ALTER TABLE `formapago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formapagovendedor`
--

DROP TABLE IF EXISTS `formapagovendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formapagovendedor` (
  `idformapago` int(2) unsigned zerofill NOT NULL,
  `cedula` char(10) NOT NULL,
  KEY `idformapago` (`idformapago`),
  KEY `cedula` (`cedula`),
  CONSTRAINT `formapagovendedor_ibfk_1` FOREIGN KEY (`idformapago`) REFERENCES `formapago` (`idformapago`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `formapagovendedor_ibfk_2` FOREIGN KEY (`cedula`) REFERENCES `vendedor` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapagovendedor`
--

LOCK TABLES `formapagovendedor` WRITE;
/*!40000 ALTER TABLE `formapagovendedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `formapagovendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `idgenero` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `genero` char(20) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`idgenero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `idmarca` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `marca` char(30) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`idmarca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paisorigen`
--

DROP TABLE IF EXISTS `paisorigen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paisorigen` (
  `idpaisorigen` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `paisorigen` char(30) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`idpaisorigen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paisorigen`
--

LOCK TABLES `paisorigen` WRITE;
/*!40000 ALTER TABLE `paisorigen` DISABLE KEYS */;
/*!40000 ALTER TABLE `paisorigen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendedor` (
  `cedula` char(10) NOT NULL,
  `nombre` char(40) NOT NULL,
  `nombrecomercial` char(40) NOT NULL,
  `telefono` char(10) NOT NULL,
  `email` char(40) NOT NULL,
  `usuario` char(20) NOT NULL,
  `contrasena` char(40) NOT NULL,
  `idciudad` int(5) unsigned zerofill NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`cedula`),
  KEY `idciudad` (`idciudad`),
  CONSTRAINT `vendedor_ibfk_1` FOREIGN KEY (`idciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-16  9:44:25
