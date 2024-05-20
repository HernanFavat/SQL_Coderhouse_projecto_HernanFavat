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
-- Table structure for table `facts_products`
--

DROP TABLE IF EXISTS `facts_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facts_products` (
  `productid` int NOT NULL AUTO_INCREMENT,
  `product__code` varchar(50) DEFAULT NULL,
  `product__name` varchar(50) DEFAULT NULL,
  `product__type` varchar(50) DEFAULT NULL,
  `serial__number` varchar(150) DEFAULT 'JFSADFA_5345_4267',
  `product__price` decimal(10,2) DEFAULT '450.00',
  `currencycode` varchar(10) DEFAULT 'USD',
  `opportunityid` int NOT NULL,
  PRIMARY KEY (`productid`),
  KEY `opportunityid` (`opportunityid`),
  CONSTRAINT `facts_products_ibfk_1` FOREIGN KEY (`opportunityid`) REFERENCES `facts_opportunities` (`opportunityid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facts_products`
--

LOCK TABLES `facts_products` WRITE;
/*!40000 ALTER TABLE `facts_products` DISABLE KEYS */;
INSERT INTO `facts_products` VALUES (1,'P1234','Xiaomi phone L2','Electronics','JFSADFA_5345_4267',899.99,'USD',1),(2,'P343536','Tablet Apple','Electronics','JFSADFA_5345_4267',699.99,'USD',1),(3,'P737475','Rice Cooker Zojirushi','Home Appliances','JFSADFA_5345_4267',129.99,'USD',2),(4,'P404142','Adidas Sneakers','Footwear','JFSADFA_5345_4267',129.99,'GBP',3),(5,'P91011','Sara Jeans','Clothing XXL','JFSADFA_5345_4267',49.99,'GBP',3),(6,'P495051','Puma Joggers','Clothing M','JFSADFA_5345_4267',39.99,'CNY',6),(7,'P13234','Computer Dell','Electronics','JFSADFA_5345_4267',750.00,'JPY',4),(8,'P434445','Smart TV Sony','Electronics','JFSADFA_5345_4267',1499.99,'JPY',4),(9,'P464748','Microwave Panasonic','Home Appliances','JFSADFA_5345_4267',149.99,'INR',5),(10,'P4378','Blender Philips','Home Appliances','JFSADFA_5345_4267',5000.00,'INR',5),(11,'P94511','Desigual Sweater','Clothing XXS','JFSADFA_5345_4267',1500.00,'CNY',6),(12,'P495051','Puma Joggers','Clothing M','JFSADFA_5345_4267',39.99,'CNY',6),(13,'P162738','Smartwatch Y3','Electronics','JFSADFA_5345_4267',349.99,'AUD',7),(14,'P525354','Digital Camera Canon','Electronics','JFSADFA_5345_4267',599.99,'AUD',7),(15,'P192021','Refrigerator Samsung','Home Appliances','JFSADFA_5345_4267',899.99,'NZD',8),(16,'P555657','Air Fryer Philips','Home Appliances','JFSADFA_5345_4267',249.99,'NZD',8),(17,'P222324','Levi Jeans','Clothing XL','JFSADFA_5345_4267',59.99,'TWD',9),(18,'P585960','Leather Jacket','Clothing S','JFSADFA_5345_4267',119.99,'TWD',9),(19,'P252627','Laptop HP','Electronics','JFSADFA_5345_4267',899.99,'THB',10),(20,'P616263','Bluetooth Speaker JBL','Electronics','JFSADFA_5345_4267',199.99,'THB',10),(21,'P282930','Toaster KitchenAid','Home Appliances','JFSADFA_5345_4267',13500.00,'SGD',11),(22,'P646566','Vacuum Cleaner Dyson','Home Appliances','JFSADFA_5345_4267',399.99,'SGD',11),(23,'P313233','Nike Hoodie','Clothing L','JFSADFA_5345_4267',79.99,'PHP',12),(24,'P676869','Summer Dress','Clothing XS','JFSADFA_5345_4267',29.99,'PHP',13),(25,'P707172','Wireless Headphones Sony','Electronics','JFSADFA_5345_4267',299.99,'USD',15),(26,'P5678','Fridge GM','Home Appliances','JFSADFA_5345_4267',399.50,'USD',15),(27,'P737475','Rice Cooker Zojirushi','Home Appliances','JFSADFA_5345_4267',129.99,'USD',14);
/*!40000 ALTER TABLE `facts_products` ENABLE KEYS */;
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
