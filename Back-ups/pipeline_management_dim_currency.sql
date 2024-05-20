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
-- Table structure for table `dim_currency`
--

DROP TABLE IF EXISTS `dim_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_currency` (
  `currency_code` varchar(10) NOT NULL,
  `currency_name` varchar(100) DEFAULT 'Unknown',
  `currency_rate` decimal(12,5) DEFAULT NULL,
  `c__createddate` date DEFAULT (curdate()),
  PRIMARY KEY (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_currency`
--

LOCK TABLES `dim_currency` WRITE;
/*!40000 ALTER TABLE `dim_currency` DISABLE KEYS */;
INSERT INTO `dim_currency` VALUES ('AUD','Australian Dollar',0.77000,'2024-06-05'),('CNY','Chinese Yuan',0.16000,'2024-04-25'),('INR','Indian Rupee',0.01400,'2024-01-10'),('JPY','Japanese Yen',0.00930,'2024-02-15'),('KRW','South Korean Won',0.00088,'2024-03-20'),('NZD','New Zealand Dollar',0.71000,'2024-07-10'),('PHP','Philippine Peso',0.02000,'2024-07-15'),('SGD','Singapore Dollar',0.74000,'2024-05-30'),('THB','Thai Baht',0.03200,'2024-08-15'),('TWD','New Taiwan Dollar',0.03600,'2024-08-15'),('USD','United States Dollar',1.00000,'2023-04-10');
/*!40000 ALTER TABLE `dim_currency` ENABLE KEYS */;
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
