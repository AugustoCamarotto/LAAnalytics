CREATE DATABASE  IF NOT EXISTS `laanalytics_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `laanalytics_db`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: laanalytics_db
-- ------------------------------------------------------
-- Server version	5.7.35-log

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
-- Table structure for table `jogador_tb`
--

DROP TABLE IF EXISTS `jogador_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogador_tb` (
  `id_jog` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome_jog` varchar(45) NOT NULL,
  `sobrenome_jog` varchar(45) NOT NULL,
  `idade_jog` varchar(45) NOT NULL DEFAULT 'não cadastrado',
  `posicao_jog` varchar(45) NOT NULL DEFAULT 'não cadastrado',
  `equipe_jog` varchar(45) NOT NULL DEFAULT 'não cadastrado',
  PRIMARY KEY (`id_jog`),
  UNIQUE KEY `id_jog_UNIQUE` (`id_jog`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogador_tb`
--

LOCK TABLES `jogador_tb` WRITE;
/*!40000 ALTER TABLE `jogador_tb` DISABLE KEYS */;
INSERT INTO `jogador_tb` VALUES (1,'James','Brown','19','Ala Direita','Lakers');
/*!40000 ALTER TABLE `jogador_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-23 20:58:16
