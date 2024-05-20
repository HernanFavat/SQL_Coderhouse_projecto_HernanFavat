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
-- Table structure for table `dim_users`
--

DROP TABLE IF EXISTS `dim_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `u__email` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT 'User_Name',
  `last_name` varchar(50) DEFAULT 'User_LastName',
  `u__createddate` date DEFAULT (curdate()),
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `u__type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_users`
--

LOCK TABLES `dim_users` WRITE;
/*!40000 ALTER TABLE `dim_users` DISABLE KEYS */;
INSERT INTO `dim_users` VALUES (1,'john@management.com','John','Doe','2023-01-01',1,'Reseller'),(2,'marta_gomez@management.com','Marta','Gomez','2023-07-01',1,'Sales Rep'),(3,'fer_rodriguez@management.com','Fernando','Rodriguez','2023-12-01',1,'Technician'),(4,'emma@management.com','Emma','Johnson','2023-03-20',1,'Reseller'),(5,'david_wong@management.com','David','Wong','2023-04-25',1,'Technician'),(6,'laura_smith@management.com','Laura','Smith','2023-05-30',1,'Sales Rep'),(7,'alex@management.com','Alex','Martinez','2023-06-05',1,'Technician'),(8,'jessica@management.com','Jessica','Brown','2023-07-10',1,'Reseller'),(9,'michael@management.com','Michael','Davis','2023-08-15',1,'Sales Rep'),(10,'sophia@management.com','Sophia','Wilson','2023-09-20',1,'Reseller'),(11,'adam@management.com','Adam','Anderson','2023-10-25',1,'Technician'),(12,'olivia@management.com','Olivia','Taylor','2023-11-30',1,'Sales Rep'),(13,'william@management.com','William','Thomas','2023-12-05',1,'Reseller'),(14,'emily@management.com','Emily','Harris','2024-01-10',1,'Sales Rep'),(15,'james@management.com','James','Walker','2024-02-15',1,'Technician'),(16,'ava@management.com','Ava','White','2024-03-20',1,'Reseller'),(17,'benjamin@management.com','Benjamin','Jackson','2024-04-25',1,'Sales Rep'),(18,'harper@management.com','Harper','Moore','2024-05-30',1,'Technician'),(19,'emma@management.com','Emma','Martinez','2024-06-05',1,'Reseller'),(20,'logan@management.com','Logan','Lee','2024-07-10',1,'Sales Rep'),(21,'grace@management.com','Grace','Perez','2024-08-15',1,'Technician'),(22,'noah@management.com','Noah','Gonzalez','2024-09-20',1,'Reseller'),(23,'chloe@management.com','Chloe','Rodriguez','2024-10-25',1,'Sales Rep');
/*!40000 ALTER TABLE `dim_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-20 17:49:17
