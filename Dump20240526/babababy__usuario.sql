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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `sobrenome` varchar(45) NOT NULL,
  `dtaNascimento` date NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `foto` varchar(300) DEFAULT NULL,
  `adm` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'anaju@yho.com','Abcd123!','08012345678','Ana Julia','Moura','1991-12-03','41991234567','Curitiba','Rua Julia da Costa',NULL,1),(2,'pate@email.com','123Abcd#','49009876543','Paula','Tenue','2000-10-11','41999987654','Curitiba','Rua Padre Anchieta',NULL,0),(3,'juliamm@yahoo.com.br','AA!!bcde','15448778559','Julia Menezes','Mello','1987-05-12','41998979910','Curitiba','Marechal Hermes','C:\\xampp\\htdocs\\baba-baby2\\baba-baby2\\src\\cadastro\\arquivos\\GLxqr4vXsAAbvbK.jpg.jpg',0),(4,'julic@yahoo.com.br','AA!!bcde','09578556993','Julio','Costa','1987-04-18','4199879852','curitibaa','Rua Julio mesquita','C:\\xampp\\htdocs\\baba-baby2\\baba-baby2\\src\\cadastro\\arquivos\\GLxqr4vXsAAbvbK.jpg.jpg',NULL),(5,'nicfat@yahoo.com.br','AA!!bcde','15489667558','Nicole','Fatuch','1978-08-17','41998567448','Curitiba','Rua Rezende','C:\\xampp\\htdocs\\baba-baby2\\baba-baby2\\src\\cadastro\\arquivos\\GLxqr4vXsAAbvbK.jpg.jpg',NULL),(6,'marciacosta@yahoo.com.br','AA!!bcde','56784914758','Marcia Costa','Pereira','1974-08-17','41658794215','curitiba','top','C:\\xampp\\htdocs\\baba-baby2\\src\\cadastro\\arquivos\\GLxqr4vXsAAbvbK.jpg.jpg',0),(7,'meiremelone@yahoo.com.br','AA!!bcde','54876125448','meire','melloni','1999-05-14','41556874210','curitiba','rua eu','C:\\xampp\\htdocs\\baba-baby2\\src\\cadastro\\arquivos\\GLxqr4vXsAAbvbK.jpg.jpg',0),(8,'gagaag@yahoo.com.br','AA!!bcde','45687445669','Carela kdjsjcf','asjjiadasjo','1999-05-14','41665487992','curitiba','rua amrechal','C:\\xampp\\htdocs\\baba-baby2\\src\\cadastro\\arquivos\\GLxqr4vXsAAbvbK.jpg.jpg',0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26 22:43:39
