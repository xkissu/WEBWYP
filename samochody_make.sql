-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: samochody
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `make`
--

DROP TABLE IF EXISTS `make`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `make` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(55) NOT NULL DEFAULT '',
  `title` varchar(55) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `make`
--

LOCK TABLES `make` WRITE;
/*!40000 ALTER TABLE `make` DISABLE KEYS */;
INSERT INTO `make` VALUES (1,'ACURA','Acura'),(2,'ALFA','Alfa Romeo'),(4,'ASTON','Aston Martin'),(5,'AUDI','Audi'),(7,'BENTL','Bentley'),(8,'BMW','BMW'),(10,'CAD','Cadillac'),(11,'CHEV','Chevrolet'),(12,'CHRY','Chrysler'),(13,'DAEW','Daewoo'),(14,'DAIHAT','Daihatsu'),(17,'DODGE','Dodge'),(19,'FER','Ferrari'),(20,'FIAT','FIAT'),(22,'FORD','Ford'),(26,'HONDA','Honda'),(27,'AMGEN','HUMMER'),(28,'HYUND','Hyundai'),(29,'INFIN','Infiniti'),(31,'JAG','Jaguar'),(32,'JEEP','Jeep'),(33,'KIA','Kia'),(34,'LAM','Lamborghini'),(35,'LAN','Lancia'),(36,'ROV','Land Rover'),(37,'LEXUS','Lexus'),(38,'LINC','Lincoln'),(39,'LOTUS','Lotus'),(40,'MAS','Maserati'),(41,'MAYBACH','Maybach'),(42,'MAZDA','Mazda'),(44,'MB','Mercedes'),(47,'MINI','MINI'),(48,'MIT','Mitsubishi'),(49,'NISSAN','Nissan'),(51,'PEUG','Peugeot'),(53,'PONT','Pontiac'),(54,'POR','Porsche'),(56,'REN','Renault'),(57,'RR','Rolls-Royce'),(58,'SAAB','Saab'),(61,'SMART','Smart'),(64,'SUB','Subaru'),(65,'SUZUKI','Suzuki'),(66,'TESLA','Tesla'),(67,'TOYOTA','Toyota'),(69,'VOLKS','Volkswagen'),(70,'VOLVO','Volvo');
/*!40000 ALTER TABLE `make` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 14:17:26
