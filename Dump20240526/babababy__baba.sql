-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: babababy_
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `baba`
--

DROP TABLE IF EXISTS `baba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baba` (
  `idBaba` int(11) NOT NULL AUTO_INCREMENT,
  `tempoExp` int(11) NOT NULL,
  `ref` varchar(50) NOT NULL,
  `sobre` varchar(300) NOT NULL,
  `estado` int(11) DEFAULT 0,
  `valor` float NOT NULL,
  `fk_idFxEtaria` int(11) NOT NULL,
  `pk_idUsuario` int(11) NOT NULL,
  `foto_doc` varchar(200) DEFAULT 'pendente',
  PRIMARY KEY (`idBaba`,`pk_idUsuario`),
  KEY `fk_idFxEtaria_idx` (`fk_idFxEtaria`),
  KEY `fk_baba_idUsuario_idx` (`pk_idUsuario`),
  CONSTRAINT `fk_baba_idUsuario` FOREIGN KEY (`pk_idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `fk_idFxEtaria` FOREIGN KEY (`fk_idFxEtaria`) REFERENCES `fxetaria` (`idFxEtaria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baba`
--

LOCK TABLES `baba` WRITE;
/*!40000 ALTER TABLE `baba` DISABLE KEYS */;
INSERT INTO `baba` VALUES (2,2012,'41995554775','Sou atenciosa',NULL,80,2,3,'pendente'),(3,2000,'54876415470','chata ne',NULL,50,2,7,'pendente'),(4,2003,'41556477881','legal',0,70,1,8,'pendente');
/*!40000 ALTER TABLE `baba` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26 22:43:40
