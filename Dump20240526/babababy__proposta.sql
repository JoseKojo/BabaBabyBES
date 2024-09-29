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
-- Table structure for table `proposta`
--

DROP TABLE IF EXISTS `proposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proposta` (
  `idProposta` int(11) NOT NULL AUTO_INCREMENT,
  `data` varchar(50) DEFAULT NULL,
  `dataAceite` varchar(50) DEFAULT NULL,
  `dataRecusa` varchar(50) DEFAULT NULL,
  `motivoRecusa` varchar(255) DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `dataPronto` date DEFAULT NULL,
  `fk_idPais` int(11) DEFAULT NULL,
  `fk_Ppk_idUsuario` int(11) NOT NULL,
  `fk_idBaba` int(11) NOT NULL,
  `fk_Bpk_idUsuario` int(11) NOT NULL,
  `turno` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idProposta`),
  KEY `fk_prop_idPais_idx` (`fk_idPais`,`fk_Ppk_idUsuario`),
  KEY `fk_prop_idBaba_idx` (`fk_idBaba`,`fk_Bpk_idUsuario`),
  CONSTRAINT `fk_prop_idBaba` FOREIGN KEY (`fk_idBaba`, `fk_Bpk_idUsuario`) REFERENCES `baba` (`idBaba`, `pk_idUsuario`),
  CONSTRAINT `fk_prop_idPais` FOREIGN KEY (`fk_idPais`, `fk_Ppk_idUsuario`) REFERENCES `pais` (`idPais`, `pk_idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proposta`
--

LOCK TABLES `proposta` WRITE;
/*!40000 ALTER TABLE `proposta` DISABLE KEYS */;
INSERT INTO `proposta` VALUES (1,'2024-05-28','2024-05-27 01:37:51',NULL,NULL,1,'2024-05-27',2,5,2,3,'Tarde');
/*!40000 ALTER TABLE `proposta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26 22:43:38
