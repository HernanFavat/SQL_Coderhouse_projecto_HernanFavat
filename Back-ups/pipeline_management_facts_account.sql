-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: pipeline_management
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `facts_account`
--

DROP TABLE IF EXISTS `facts_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facts_account` (
  `accountid` int NOT NULL AUTO_INCREMENT,
  `a__name` varchar(255) DEFAULT 'NAME',
  `a__number` varchar(50) DEFAULT '5324534_NB',
  `a__country` varchar(50) DEFAULT 'Uruguay',
  `primary_contactid` int NOT NULL,
  `a__createddate` date DEFAULT (curdate()),
  PRIMARY KEY (`accountid`),
  KEY `primary_contactid` (`primary_contactid`),
  CONSTRAINT `facts_account_ibfk_1` FOREIGN KEY (`primary_contactid`) REFERENCES `dim_users` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_account`
--

LOCK TABLES `facts_account` WRITE;
/*!40000 ALTER TABLE `facts_account` DISABLE KEYS */;
INSERT INTO `facts_account` VALUES (1,'ABC Corporation','ABC123','United States',1,'2021-05-15'),(2,'XYZ Enterprises','XYZ456','Canada',2,'2021-06-20'),(3,'123 Industries','123789','United Kingdom',3,'2021-07-25'),(4,'123 Industries','123789','United Kingdom',3,'2021-07-25'),(5,'PQR Solutions','PQR123','India',4,'2021-11-15'),(6,'LMN Tech','LMN789','Japan',5,'2021-12-20'),(7,'XYZ Innovations','XYZ789','South Korea',6,'2022-01-25'),(8,'ABC Tech','ABC123','China',7,'2022-02-10'),(9,'EFG Innovations','EFG456','Singapore',8,'2022-03-15'),(10,'GHI Solutions','GHI789','Australia',9,'2022-04-20'),(11,'JKL Tech','JKL123','New Zealand',10,'2022-05-25'),(12,'MNO Innovations','MNO456','Taiwan',11,'2022-06-10'),(13,'RST Solutions','RST789','Philippines',12,'2022-07-15'),(14,'UVW Tech','UVW123','Thailand',13,'2022-08-20'),(15,'QRS Innovations','QRS456','Malaysia',14,'2022-09-25'),(16,'TUV Solutions','TUV789','Vietnam',15,'2022-10-10'),(17,'WXY Tech','WXY123','Indonesia',16,'2022-11-15'),(18,'ZAB Innovations','ZAB456','Myanmar',17,'2022-12-20'),(19,'CDE Tech','CDE789','Cambodia',18,'2023-01-25'),(20,'FGH Innovations','FGH123','Laos',19,'2023-02-10'),(21,'IJK Solutions','IJK456','Bangladesh',20,'2023-03-15'),(22,'LMN Tech','LMN789','Nepal',21,'2023-04-20'),(23,'OPQ Innovations','OPQ123','Pakistan',22,'2023-05-25');
/*!40000 ALTER TABLE `facts_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-20 17:49:18
