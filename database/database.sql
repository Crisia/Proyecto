CREATE DATABASE  IF NOT EXISTS `proyecto` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `proyecto`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `canton`
--

DROP TABLE IF EXISTS `canton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `canton` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProvinciaId` int(10) unsigned NOT NULL,
  `Nombre` varchar(126) NOT NULL,
  `Area` varchar(16) DEFAULT NULL,
  `Poblacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `canton_` (`ProvinciaId`),
  CONSTRAINT `canton_` FOREIGN KEY (`ProvinciaId`) REFERENCES `provincia` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=788 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canton`
--

LOCK TABLES `canton` WRITE;
/*!40000 ALTER TABLE `canton` DISABLE KEYS */;
INSERT INTO `canton` VALUES (707,1,'San José','44',352366),(708,1,'Escazú','34.49',60201),(709,1,'Desamparados','118.26',221346),(710,1,'Puriscal','553.66',32767),(711,1,'Tarrazú','297.5',16419),(712,1,'Aserrí','167.1',56422),(713,1,'Mora','162.04',24333),(714,1,'Goicoechea','31.5',131529),(715,1,'Santa Ana','61.42',39905),(716,1,'Alajuelita','21.17',81721),(717,1,'Vázquez de Coronado','222.2',63098),(718,1,'Acosta','342.24',20906),(719,1,'Tibás','8.15',81478),(720,1,'Moravia','28.62',55895),(721,1,'Montes de Oca','15.16',55814),(722,1,'Turrubares','415.29',5482),(723,1,'Dota','400.22',7465),(724,1,'Curridabat','15.95',69474),(725,1,'Pérez Zeledón','1905.51',140872),(726,1,'León Cortés Castro','120.8',13288),(727,2,'Alajuela','388.43',255598),(728,2,'San Ramón','1018.64',77380),(729,2,'Grecia','395.72',74860),(730,2,'San Mateo','125.9',5904),(731,2,'Atenas','127.19',25033),(732,2,'Naranjo','126.62',42637),(733,2,'Palmares','38.06',33401),(734,2,'Poás','73.84',28469),(735,2,'Orotina','141.92',17866),(736,2,'San Carlos','3347.98',151322),(737,2,'Zarcero','155.13',12368),(738,2,'Valverde Vega','120.25',18407),(739,2,'Upala','1580.67',44556),(740,2,'Los Chiles','1358.86',23902),(741,2,'Guatuso','758.32',15068),(742,3,'Cartago','287.77',149657),(743,3,'Paraíso','411.91',60005),(744,3,'La Unión','44.83',91090),(745,3,'Jiménez','286.43',15859),(746,3,'Turrialba','1642.67',78217),(747,3,'Alvarado','81.06',13862),(748,3,'Oreamuno','202.31',44403),(749,3,'El Guarco','167.69',39223),(750,4,'Heredia','282.6',118872),(751,4,'Barva','53.8',37041),(752,4,'Santo Domingo','24.84',38959),(753,4,'Santa Bárbara','53.21',33334),(754,4,'San Rafael','48.39',42398),(755,4,'San Isidro','26.96',18028),(756,4,'Belén','12.15',22400),(757,4,'Flores','6.96',17298),(758,4,'San Pablo','7.53',23370),(759,4,'Sarapiquí','2140.54',54537),(760,5,'Liberia','1436.47',55921),(761,5,'Nicoya','1333.68',47823),(762,5,'Santa Cruz','1312.27',46460),(763,5,'Bagaces','1273.49',18368),(764,5,'Carrillo','577.54',32168),(765,5,'Cañas','682.2',27970),(766,5,'Abangares','675.76',18319),(767,5,'Tilarán','638.39',20337),(768,5,'Nandayure','565.59',11185),(769,5,'La Cruz','1383.9',19978),(770,5,'Hojancha','261.42',7289),(771,6,'Puntarenas','1842.33',118928),(772,6,'Esparza','216.8',27199),(773,6,'Buenos Aires','2384.22',47576),(774,6,'Montes de Oro','244.76',12495),(775,6,'Osa','1930.24',29547),(776,6,'Quepos','543.77',23915),(777,6,'Golfito','1753.96',39699),(778,6,'Coto Brus','933.91',47247),(779,6,'Parrita','478.79',13940),(780,6,'Corredores','620.6',44180),(781,6,'Garabito','316.31',13165),(782,7,'Limón','1765.79',106356),(783,7,'Pococí','2403.49',121735),(784,7,'Siquirres','860.19',60881),(785,7,'Talamanca','2809.93',32158),(786,7,'Matina','772.64',39961),(787,7,'Guácimo','576.48',41082);
/*!40000 ALTER TABLE `canton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colector`
--

DROP TABLE IF EXISTS `colector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colector` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Enabled` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colector`
--

LOCK TABLES `colector` WRITE;
/*!40000 ALTER TABLE `colector` DISABLE KEYS */;
INSERT INTO `colector` VALUES (1,'Crisia Piedra Chaves','');
/*!40000 ALTER TABLE `colector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distrito`
--

DROP TABLE IF EXISTS `distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `distrito` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CantonId` int(10) unsigned NOT NULL,
  `Nombre` varchar(126) CHARACTER SET ucs2 NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `distrito_CantonId` (`CantonId`),
  CONSTRAINT `distrito_CantonId` FOREIGN KEY (`CantonId`) REFERENCES `canton` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=70615 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrito`
--

LOCK TABLES `distrito` WRITE;
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
INSERT INTO `distrito` VALUES (70606,707,'Carmen'),(70607,707,'Merced'),(70608,707,'Hospital'),(70609,707,'Catedral'),(70610,707,'Zapote'),(70611,707,'San Francisco de Dos Ríos'),(70612,707,'Uruca'),(70613,707,'Mata Redonda'),(70614,707,'Pavas');
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especie`
--

DROP TABLE IF EXISTS `especie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especie` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especie`
--

LOCK TABLES `especie` WRITE;
/*!40000 ALTER TABLE `especie` DISABLE KEYS */;
INSERT INTO `especie` VALUES (1,'Endivia'),(2,'Intybus'),(3,'Cardunculus'),(4,'Scolymus'),(5,'Lactuca sativa L'),(6,'Scorzonera hispanica L'),(7,'Tragopogon porrifolius L');
/*!40000 ALTER TABLE `especie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especiexgenero`
--

DROP TABLE IF EXISTS `especiexgenero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especiexgenero` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdEspecie` int(10) unsigned NOT NULL,
  `IdFamiliaXgenero` int(10) unsigned NOT NULL,
  `Autoria` varchar(100) NOT NULL DEFAULT '',
  `Sinonimias` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_especieXgenero_especie1_idx` (`IdEspecie`),
  KEY `fk_especieXgenero_familiaXgenero1_idx` (`IdFamiliaXgenero`),
  CONSTRAINT `fk_especieXgenero_especie1` FOREIGN KEY (`IdEspecie`) REFERENCES `especie` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_especieXgenero_familiaXgenero1` FOREIGN KEY (`IdFamiliaXgenero`) REFERENCES `familiaxgenero` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especiexgenero`
--

LOCK TABLES `especiexgenero` WRITE;
/*!40000 ALTER TABLE `especiexgenero` DISABLE KEYS */;
INSERT INTO `especiexgenero` VALUES (1,1,1,'Autoria','Sinonimias'),(2,2,1,'Autoria','Sinonimias'),(3,3,2,'Autoria','Sinonimias'),(4,4,2,'Autoria','Sinonimias'),(5,5,3,'Autoria','Sinonimias'),(6,6,4,'Autoria','Sinonimias'),(7,7,5,'Autoria','Sinonimias');
/*!40000 ALTER TABLE `especiexgenero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familia`
--

DROP TABLE IF EXISTS `familia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familia` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) NOT NULL,
  `Enabled` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familia`
--

LOCK TABLES `familia` WRITE;
/*!40000 ALTER TABLE `familia` DISABLE KEYS */;
INSERT INTO `familia` VALUES (1,'Asteraceae',''),(2,'Acanthaceae',''),(3,'Aizoaceae',''),(4,'Alliaceae',''),(5,'Amaranthaceae',''),(6,'Amaryllidaceae',''),(7,'cricri','');
/*!40000 ALTER TABLE `familia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familiaxgenero`
--

DROP TABLE IF EXISTS `familiaxgenero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `familiaxgenero` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IdGenero` int(10) unsigned NOT NULL,
  `IdFamilia` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_familiaXgenero_genero1_idx` (`IdGenero`),
  KEY `fk_familiaXgenero_familia1_idx` (`IdFamilia`),
  CONSTRAINT `fk_familiaXgenero_familia1` FOREIGN KEY (`IdFamilia`) REFERENCES `familia` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_familiaXgenero_genero1` FOREIGN KEY (`IdGenero`) REFERENCES `genero` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familiaxgenero`
--

LOCK TABLES `familiaxgenero` WRITE;
/*!40000 ALTER TABLE `familiaxgenero` DISABLE KEYS */;
INSERT INTO `familiaxgenero` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,1,7),(7,2,7),(8,3,7),(9,4,7),(10,5,7);
/*!40000 ALTER TABLE `familiaxgenero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fertilidad`
--

DROP TABLE IF EXISTS `fertilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fertilidad` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Enabled` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fertilidad`
--

LOCK TABLES `fertilidad` WRITE;
/*!40000 ALTER TABLE `fertilidad` DISABLE KEYS */;
INSERT INTO `fertilidad` VALUES (1,'Flores','\0'),(2,'Frutos','\0'),(3,'Muestra Esteril','\0');
/*!40000 ALTER TABLE `fertilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fertilidadxmuestra`
--

DROP TABLE IF EXISTS `fertilidadxmuestra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fertilidadxmuestra` (
  `IdMuestra` int(10) unsigned NOT NULL,
  `IdFertilidad` int(11) NOT NULL,
  KEY `fk_fertilidadXmuestra_muestra1_idx` (`IdMuestra`),
  KEY `fk_fertilidadXmuestra_Fertilidad1_idx` (`IdFertilidad`),
  CONSTRAINT `fk_fertilidadXmuestra_Fertilidad1` FOREIGN KEY (`IdFertilidad`) REFERENCES `fertilidad` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fertilidadXmuestra_muestra1` FOREIGN KEY (`IdMuestra`) REFERENCES `muestra` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fertilidadxmuestra`
--

LOCK TABLES `fertilidadxmuestra` WRITE;
/*!40000 ALTER TABLE `fertilidadxmuestra` DISABLE KEYS */;
/*!40000 ALTER TABLE `fertilidadxmuestra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha_historial`
--

DROP TABLE IF EXISTS `ficha_historial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ficha_historial` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Fecha` date NOT NULL,
  `Descripcion` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Usuario` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha_historial`
--

LOCK TABLES `ficha_historial` WRITE;
/*!40000 ALTER TABLE `ficha_historial` DISABLE KEYS */;
/*!40000 ALTER TABLE `ficha_historial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'Cichorium'),(2,'Cynara'),(3,'Lactuca'),(4,'Scorzonera'),(5,'Tragopogon'),(6,'Criss');
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen`
--

DROP TABLE IF EXISTS `imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagen` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdMuestra` int(10) unsigned NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Url` varchar(500) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Imagen_muestra1_idx` (`IdMuestra`),
  CONSTRAINT `fk_Imagen_muestra1` FOREIGN KEY (`IdMuestra`) REFERENCES `muestra` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
/*!40000 ALTER TABLE `imagen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muestra`
--

DROP TABLE IF EXISTS `muestra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `muestra` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IdDistrito` int(10) unsigned NOT NULL,
  `IdColector` int(11) NOT NULL,
  `IdValidador` int(11) NOT NULL,
  `IdEspecieXgenero` int(11) NOT NULL,
  `Localidad` varchar(500) NOT NULL,
  `Latitud` varchar(50) NOT NULL,
  `Longitud` varchar(50) NOT NULL,
  `Altitud` varchar(50) NOT NULL,
  `FechaIngreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FechaColecto` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nota` varchar(500) NOT NULL DEFAULT '',
  `codigo` varchar(45) DEFAULT NULL,
  `Estado` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_muestra_distrito1_idx` (`IdDistrito`),
  KEY `fk_muestra_colector1_idx` (`IdColector`),
  KEY `fk_muestra_validador1_idx` (`IdValidador`),
  KEY `fk_muestra_especieXgenero1_idx` (`IdEspecieXgenero`),
  CONSTRAINT `fk_muestra_colector1` FOREIGN KEY (`IdColector`) REFERENCES `colector` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestra_distrito1` FOREIGN KEY (`IdDistrito`) REFERENCES `distrito` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestra_especieXgenero1` FOREIGN KEY (`IdEspecieXgenero`) REFERENCES `especiexgenero` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestra_validador1` FOREIGN KEY (`IdValidador`) REFERENCES `validador` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muestra`
--

LOCK TABLES `muestra` WRITE;
/*!40000 ALTER TABLE `muestra` DISABLE KEYS */;
INSERT INTO `muestra` VALUES (1,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-30 14:31:15','2017-05-30 08:31:15','Nota',NULL,NULL),(2,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-30 14:34:58','2017-05-30 08:34:58','Nota',NULL,NULL),(3,70606,1,1,1,'Localidaddddddddd','Latitud','Lomgitud','Altitud','2017-05-30 14:40:44','2017-05-30 08:40:44','notassssssssss',NULL,NULL),(4,70606,1,1,1,'holaaaa','Latitud','Longitud','Altitud','2017-05-30 15:06:56','2017-05-30 09:06:56','holaaa',NULL,NULL),(5,70606,1,1,1,'nhkhjljil','mkjmkljm','kjkjkj','jljl','2017-05-30 15:08:55','2017-05-30 09:08:55','jsjdsabjd',NULL,NULL),(6,70606,1,1,2,'njbjbhj','latitud','Lon','jaja','2017-05-30 15:10:22','2017-05-30 09:10:22','hhgg',NULL,NULL),(7,70606,1,1,1,'ggggg','ggg','ggg','gg','2017-05-30 15:12:23','2017-05-30 09:12:23','ggggg',NULL,NULL),(8,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-30 15:14:50','2017-05-30 09:14:50','Nota',NULL,NULL),(9,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-30 15:15:31','2017-05-30 09:15:31','Nota',NULL,NULL),(10,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-30 15:15:33','2017-05-30 09:15:33','Nota',NULL,NULL),(11,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-30 15:16:15','2017-05-30 09:16:15','Nota',NULL,NULL),(12,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-30 15:20:36','2017-05-30 09:20:36','Nota',NULL,NULL),(13,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-30 15:20:42','2017-05-30 09:20:42','Nota',NULL,NULL),(14,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-30 15:20:43','2017-05-30 09:20:43','Nota',NULL,NULL),(15,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-30 15:20:43','2017-05-30 09:20:43','Nota',NULL,NULL),(16,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-30 15:23:02','2017-05-30 09:23:02','Nota',NULL,NULL),(17,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-30 15:23:04','2017-05-30 09:23:04','Nota',NULL,NULL),(18,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-30 23:35:45','2017-05-30 17:35:45','Nota',NULL,NULL),(19,70606,1,1,1,'localidad','latitud','longitud','altitud','2017-05-31 02:49:55','2017-05-30 20:49:55','Nota',NULL,NULL),(20,70606,1,1,1,'Yukiannn','Latitu','90909','98998','2017-05-31 02:53:49','2017-05-30 20:53:49','Criisaaa Piedra',NULL,NULL),(21,70606,1,1,1,'kk','000','999','999','2017-05-31 02:56:44','2017-05-30 20:56:44','mjkj',NULL,NULL),(22,70606,1,1,1,'gerardo','1001','100','2000','2017-05-31 03:00:39','2017-05-30 21:00:39','Gustavoooo',NULL,NULL),(23,70607,1,1,1,'hhh','hhh','hhh','hhh','2017-05-31 03:07:33','2017-05-30 21:07:33','hhh',NULL,NULL);
/*!40000 ALTER TABLE `muestra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincia` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'San José'),(2,'Alajuela'),(3,'Cartago'),(4,'Heredia'),(5,'Guancaste'),(6,'Puntarenas'),(7,'Limón');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(126) CHARACTER SET utf8 NOT NULL,
  `Clave` varchar(126) CHARACTER SET utf8 NOT NULL,
  `Nombre` varchar(126) CHARACTER SET utf8 NOT NULL,
  `Rol` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`,`Nombre`,`Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `validador`
--

DROP TABLE IF EXISTS `validador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `validador` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Enabled` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `validador`
--

LOCK TABLES `validador` WRITE;
/*!40000 ALTER TABLE `validador` DISABLE KEYS */;
INSERT INTO `validador` VALUES (1,'Yulian Ulloa Porras','');
/*!40000 ALTER TABLE `validador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'proyecto'
--

--
-- Dumping routines for database 'proyecto'
--
/*!50003 DROP PROCEDURE IF EXISTS `buscarFamilia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarFamilia`()
begin
	select Nombre from familia ;
	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarFamilia_Genero` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarFamilia_Genero`(nombreFamilia varchar(126))
begin
	select ge.Nombre from genero ge
	inner join familiaXgenero fxg on fxg.IdGenero = ge.Id 
	inner join familia fa on fa.Id = fxg.IdFamilia
	where  fa.Nombre = nombreFamilia;	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarFamilia_Genero_Especie` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarFamilia_Genero_Especie`(nombreFamilia varchar(126),nombreGenero varchar(126))
begin
	select es.Nombre from especie es 
	inner join especieXgenero exg on exg.IdEspecie=es.Id
	inner join familiaXgenero fxg on fxg.Id=exg.IdFamiliaXgenero
	inner join familia fa on fa.Id= fxg.IdFamilia
	inner join genero ge on ge.Id = fxg.IdGenero
	where ge.Nombre=nombreGenero and fa.Nombre=nombreFamilia;	
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarFamilia_Genero_Especie_Codigo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarFamilia_Genero_Especie_Codigo`(nombreFamilia varchar(126),nombreGenero varchar(126),nombreEspecie varchar(126))
begin
	select mu.codigo from muestra mu
	inner join especieXgenero exg on exg.Id=mu.IdEspecieXgenero
	inner join familiaXgenero fxg on fxg.Id= exg.IdFamiliaXgenero
	inner join familia fa on fa.Id= fxg.IdFamilia
	inner join especie es on es.Id=exg.IdEspecie
	inner join genero ge on ge.Id = fxg.IdGenero
	where fa.Nombre=nombreFamilia  and ge.Nombre=nombreGenero  and es.Nombre=nombreEspecie;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cantones` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cantones`(nombre varchar(50))
BEGIN

	select c.nombre from Canton c
	inner join Provincia p On p.Id=c.provinciaId
    where p.Nombre = Nombre;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `distritos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `distritos`(nombreP varchar(50), nombreC varchar(50))
BEGIN

	select d.Nombre from Distrito d
	inner join Canton c On c.Id=d.CantonId
	inner join Provincia p On p.Id=c.provinciaId
    where p.Nombre = nombreP and c.Nombre=nombreC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `fertilidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `fertilidad`()
BEGIN

	select Nombre from Fertilidad ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ingresarMuestra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ingresarMuestra`(nombreFamilia varchar(126) ,nombreGenero varchar(126), 
	nombreEspecie varchar(126), nombreValidador varchar(100), nombreColector varchar(100),
	nombreProvincia varchar(126),nombreCanton varchar(126), nombreDistrito varchar(126), 
	pLocalidad varchar(500), pLatitud varchar(50), pLongitud varchar(50), pAltitud varchar(50), pNota varchar(500), pFecha datetime)
begin
	declare idDistrito int;
	declare idColector int;
	declare idValidador int;
	declare idEspecieXgenero int;


	select di.Id from distrito di 
	inner join canton ca on ca.Id = di.CantonId
	inner join provincia pr on pr.Id=ca.ProvinciaId
	where pr.Nombre = nombreProvincia COLLATE utf8_unicode_ci and ca.Nombre=nombreCanton COLLATE utf8_unicode_ci and di.Nombre=nombreDistrito COLLATE utf8_unicode_ci into idDistrito ;


	select Id from colector where Nombre = nombreColector COLLATE utf8_unicode_ci into idColector;
	select Id from validador where Nombre = nombreValidador COLLATE utf8_unicode_ci into idValidador;

	select exg.Id from especieXgenero exg
	inner join especie es on es.Id=exg.IdEspecie
	inner join familiaXgenero fxg on fxg.Id=exg.IdFamiliaXgenero
	inner join familia fa on fa.Id=fxg.IdFamilia
	inner join genero ge on ge.Id = fxg.IdGenero
	where fa.Nombre=nombreFamilia COLLATE utf8_unicode_ci and ge.Nombre=nombreGenero COLLATE utf8_unicode_ci and es.Nombre=nombreEspecie COLLATE utf8_unicode_ci into idEspecieXgenero;

	select idDistrito, idColector, idValidador, idEspecieXgenero;
	IF (idDistrito is not null) and (idColector is not null) and (idValidador is not null) and (idEspecieXgenero is not null)
	Then
		insert into Muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,
		FechaColecto,nota) values(idDistrito,idColector,idValidador,idEspecieXgenero,pLocalidad,pLatitud,pLongitud,pAltitud,
		CURRENT_TIMESTAMP,pFecha,pNota);
		Select 1 as resultado;	
	
    end IF;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mostrarMuestra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mostrarMuestra`(nombreFamilia varchar(126),nombreGenero varchar(126), nombreEspecie varchar(126), codigo varchar(45))
begin
	select  mu.codigo, fa.Nombre as "Familia", ge.Nombre as "Genero", es.Nombre as "Especie", pr.Nombre as "Provincia",ca.Nombre as "Canton", di.Nombre as "Distrito",mu.Localidad, mu.Nota,mu.Longitud,mu.Latitud,mu.Altitud,im.Url from muestra mu 
	inner join especieXgenero exg on exg.Id=mu.IdEspecieXgenero
	inner join familiaXgenero fxg on fxg.Id= exg.IdFamiliaXgenero
	inner join familia fa on fa.Id= fxg.IdFamilia
	inner join especie es on es.Id=exg.IdEspecie
	inner join genero ge on ge.Id = fxg.IdGenero
	inner join imagen im on im.IdMuestra = mu.Id
	inner join distrito di on di.Id= mu.IdDistrito
	inner join canton ca on  ca.Id = di.CantonId
	inner join provincia pr on pr.Id= ca.ProvinciaId
	where fa.Nombre=nombreFamilia  and ge.Nombre=nombreGenero  and es.Nombre=nombreEspecie and mu.codigo=codigo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerColector` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerColector`()
BEGIN

	select Nombre from Colector ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `obtenerValidador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `obtenerValidador`()
BEGIN

	select Nombre from Validador ;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `provincias` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `provincias`()
BEGIN

	select * from Provincia;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuario`(pUser varchar(32))
begin

	select * from usuario u where u.usuario = pUser;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usuarioById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuarioById`(pId int)
BEGIN

	select * from Usuario u where u.Id = pId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuarios`()
BEGIN
	
	select * from Usuario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-30 21:48:40
