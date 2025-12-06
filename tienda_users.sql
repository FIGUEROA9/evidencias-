-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tienda
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `idusers` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `documento` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `email` varchar(300) NOT NULL,
  `rol_idrol` int(11) NOT NULL,
  `tipo_documento_idtipo_documento` int(11) NOT NULL,
  PRIMARY KEY (`idusers`),
  KEY `fk_users_rol_idx` (`rol_idrol`),
  KEY `fk_users_tipo_documento1_idx` (`tipo_documento_idtipo_documento`),
  CONSTRAINT `fk_users_rol` FOREIGN KEY (`rol_idrol`) REFERENCES `rol` (`idrol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_tipo_documento1` FOREIGN KEY (`tipo_documento_idtipo_documento`) REFERENCES `tipo_documento` (`idtipo_documento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'Juan','1013113684','0000000000','cr.juanfe06@gmail.com',1,1),(6,'Juan','1013113684','3219986037','cr.juanfe06@gmail.com',1,1),(7,'Daniel','1013223684','3219226037','buhoo@gmail.com',2,1),(8,'Camilo','1012112284','3229956037','aerxsmith@gmail.com',2,4),(9,'Yaya','1013113534','3133329611','carlosyaya@gmail.com',1,3),(10,'laura','1025469875','320256587','laura@gmail.com',2,1),(11,'laura camila','1025464895','3202578963','lauraCamila@gmail.com',2,4),(12,'Carlos Andrés','1012345678','3004567890','carlosAndres',2,1),(13,'María Fernanda','1023456789','3109876543','mariaFernanda',2,3),(14,'Juan Sebastián','1034567890','3201234567','juanSebastian',2,4),(15,'Paola Andrea','1045678901','3012345678','paolaAndrea',2,1),(16,'Diego Alejandro','1056789012','3113456789','diegoAlejandro',2,3),(17,'Camila Sofía','1067890123','3024567890','camilaSofia',1,2),(18,'Felipe José','1078901234','3125678901','felipeJose',1,3),(19,'Valentina Isabel','1089012345','3036789012','valentinaIsabel',2,1),(20,'Andrés Felipe','1090123456','3137890123','andresFelipe',2,1),(21,'Daniela Carolina','1101234567','3048901234','danielaCarolina',2,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-05 18:49:02
