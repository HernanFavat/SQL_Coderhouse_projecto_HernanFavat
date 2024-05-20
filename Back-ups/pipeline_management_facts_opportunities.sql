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
-- Table structure for table `facts_opportunities`
--

DROP TABLE IF EXISTS `facts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facts_opportunities` (
  `opportunityid` int NOT NULL AUTO_INCREMENT,
  `accountid` int DEFAULT NULL,
  `ownerid` int DEFAULT NULL,
  `o__name` varchar(150) DEFAULT 'Opportunity_name',
  `o__statusname` varchar(50) DEFAULT 'Stages',
  `o__closeddate` date DEFAULT (curdate()),
  `o__createddate` date DEFAULT (curdate()),
  `o_amount` decimal(10,2) DEFAULT '650000.00',
  `productid` int DEFAULT NULL,
  `currencycode` varchar(10) DEFAULT 'USD',
  PRIMARY KEY (`opportunityid`),
  KEY `ownerid` (`ownerid`),
  KEY `accountid` (`accountid`),
  KEY `fk_opportunity_currency` (`currencycode`),
  CONSTRAINT `facts_opportunities_ibfk_1` FOREIGN KEY (`ownerid`) REFERENCES `dim_users` (`userid`),
  CONSTRAINT `facts_opportunities_ibfk_2` FOREIGN KEY (`accountid`) REFERENCES `facts_account` (`accountid`),
  CONSTRAINT `fk_opportunity_currency` FOREIGN KEY (`currencycode`) REFERENCES `dim_currency` (`currency_code`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_opportunities`
--

LOCK TABLES `facts_opportunities` WRITE;
/*!40000 ALTER TABLE `facts_opportunities` DISABLE KEYS */;
INSERT INTO `facts_opportunities` VALUES (1,1,1,'Xaiomi and Dell products USA customer','Won','2024-02-12','2023-04-10',650000.00,1,'USD'),(2,2,2,'Phillips and GM - special discount','Won','2024-02-12','2023-04-10',650000.00,2,'USD'),(3,3,3,'Fashion closthing different size','Won','2024-02-12','2023-04-10',650000.00,3,'USD'),(4,1,1,'Xaiomi and Dell products USA customer','Won','2024-02-12','2023-04-10',650000.00,1,'USD'),(5,2,2,'Phillips and GM - special discount','Won','2024-02-12','2023-04-10',650000.00,2,'USD'),(6,3,3,'Fashion closthing different size','Won','2024-02-12','2023-04-10',650000.00,3,'USD'),(7,1,4,'Software Development Project','Lost','2025-05-15','2024-01-10',650000.00,4,'INR'),(8,2,5,'Tech Consultation Service','Lost','2025-05-15','2024-02-15',650000.00,5,'JPY'),(9,3,6,'Hardware Upgrade Contract','Lost','2025-05-15','2024-03-20',650000.00,6,'KRW'),(10,1,7,'Cloud Services Implementation','Lost','2025-05-15','2024-04-25',650000.00,7,'CNY'),(11,2,8,'AI Integration Project','Lost','2025-05-15','2024-05-30',650000.00,8,'SGD'),(12,3,9,'Digital Marketing Campaign','Lost','2024-09-05','2024-06-05',650000.00,9,'AUD'),(13,1,10,'E-commerce Platform Development','Lost','2025-05-15','2024-07-10',650000.00,10,'NZD'),(14,2,11,'IoT Solutions Implementation','Lost','2025-05-15','2024-08-15',650000.00,11,'TWD'),(15,3,12,'Network Infrastructure Upgrade','Lost','2025-05-15','2024-08-15',650000.00,12,'THB'),(16,1,13,'Mobile App Development','Lost','2025-02-12','2024-07-15',650000.00,13,'PHP'),(17,2,14,'Web Development Project','Lost','2024-10-15','2024-03-15',650000.00,14,'SGD'),(18,3,15,'Database Optimization','Lost','2024-12-15','2024-08-15',650000.00,15,'AUD'),(19,4,3,'New Software Installation Project','Open','2024-05-19','2024-05-19',650000.00,16,'USD');
/*!40000 ALTER TABLE `facts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_technician_opportunities` AFTER INSERT ON `facts_opportunities` FOR EACH ROW BEGIN 
    DECLARE user_type VARCHAR(50);

   
    SELECT u.u__type INTO user_type 
    FROM dim_users u 
    WHERE u.userid = NEW.ownerid;


    IF user_type = 'Technician' THEN
        INSERT INTO technician_opportunity_log (opportunity_id, technician_id, opportunity_name, created_at)
        VALUES (NEW.opportunityid, NEW.ownerid, NEW.o__name, NOW());
    END IF;
END */;;
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

-- Dump completed on 2024-05-20 17:49:18
