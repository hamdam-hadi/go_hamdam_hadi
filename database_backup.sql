-- MySQL dump 10.13  Distrib 9.0.1, for macos14.4 (arm64)
--
-- Host: localhost    Database: join_union_agregationdb
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `join_union_agregationdb`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `join_union_agregationdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `join_union_agregationdb`;

--
-- Table structure for table `operators`
--

DROP TABLE IF EXISTS `operators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operators` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operators`
--

LOCK TABLES `operators` WRITE;
/*!40000 ALTER TABLE `operators` DISABLE KEYS */;
INSERT INTO `operators` VALUES (1,'Operator A1','2024-08-19 10:10:58','2024-08-19 10:10:58'),(2,'Operator A2','2024-08-19 10:10:58','2024-08-19 10:10:58'),(3,'Operator A3','2024-08-19 10:10:58','2024-08-19 10:10:58'),(4,'Operator A4','2024-08-19 10:10:58','2024-08-19 10:10:58'),(5,'Operator A5','2024-08-19 10:10:58','2024-08-19 10:10:58');
/*!40000 ALTER TABLE `operators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_methods`
--

DROP TABLE IF EXISTS `payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_methods` (
  `id` int NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_methods`
--

LOCK TABLES `payment_methods` WRITE;
/*!40000 ALTER TABLE `payment_methods` DISABLE KEYS */;
INSERT INTO `payment_methods` VALUES (1,'Danna',1,'2024-08-19 10:18:51','2024-08-19 10:18:51'),(2,'GoPay',1,'2024-08-19 10:18:51','2024-08-19 10:18:51'),(3,'Cash',1,'2024-08-19 10:18:51','2024-08-19 10:18:51');
/*!40000 ALTER TABLE `payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_descriptions`
--

DROP TABLE IF EXISTS `product_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_descriptions` (
  `id` int NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_descriptions`
--

LOCK TABLES `product_descriptions` WRITE;
/*!40000 ALTER TABLE `product_descriptions` DISABLE KEYS */;
INSERT INTO `product_descriptions` VALUES (1,'An HP and Macbook Laptop.','2024-08-19 10:18:06','2024-08-19 10:18:06'),(2,'A Galaxy and an Iphone.','2024-08-19 10:18:06','2024-08-19 10:18:06'),(3,'A comfortable T-Shirt made of organic cotton.','2024-08-19 10:18:06','2024-08-19 10:18:06'),(4,'A pair of jeans that combines style and comfort.','2024-08-19 10:18:06','2024-08-19 10:18:06'),(5,'A sweater.','2024-08-19 10:18:06','2024-08-19 10:18:06'),(6,'A soft drink.','2024-08-19 10:18:06','2024-08-19 10:18:06'),(7,'Freshly baked bread.','2024-08-19 10:18:06','2024-08-19 10:18:06'),(8,'Crispy chips with a salty flavor.','2024-08-19 10:18:06','2024-08-19 10:18:06');
/*!40000 ALTER TABLE `product_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_types` (
  `id` int NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_types`
--

LOCK TABLES `product_types` WRITE;
/*!40000 ALTER TABLE `product_types` DISABLE KEYS */;
INSERT INTO `product_types` VALUES (1,'Electronics','2024-08-19 10:11:32','2024-08-19 10:11:32'),(2,'Clothing','2024-08-19 10:11:32','2024-08-19 10:11:32'),(3,'Food & Beverage','2024-08-19 10:11:32','2024-08-19 10:11:32');
/*!40000 ALTER TABLE `product_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_type_id` int DEFAULT NULL,
  `operator_id` int DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `status` smallint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,3,'E001','product dummy',1,'2024-08-19 10:14:17','2024-08-19 10:14:17'),(2,1,3,'E002','Smartphone',1,'2024-08-19 10:14:17','2024-08-19 10:14:17'),(3,2,1,'C001','T-Shirt',1,'2024-08-19 10:14:21','2024-08-19 10:14:21'),(4,2,1,'C002','Jeans',1,'2024-08-19 10:14:21','2024-08-19 10:14:21'),(6,3,4,'F001','Soda',1,'2024-08-19 10:15:54','2024-08-19 10:15:54'),(7,3,4,'F002','Bread',1,'2024-08-19 10:15:54','2024-08-19 10:15:54'),(8,3,4,'F003','Chips',1,'2024-08-19 10:15:54','2024-08-19 10:15:54');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_details`
--

DROP TABLE IF EXISTS `transaction_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_details` (
  `transaction_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `price` decimal(25,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_details`
--

LOCK TABLES `transaction_details` WRITE;
/*!40000 ALTER TABLE `transaction_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `payment_method_id` int DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL,
  `total_qty` int DEFAULT NULL,
  `total_price` decimal(25,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,1,'Completed',5,250.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(2,1,2,'Completed',3,150.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(3,1,3,'Pending',4,200.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(4,2,1,'Completed',6,300.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(5,2,2,'Pending',2,100.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(6,2,3,'Completed',3,120.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(7,3,1,'Completed',7,350.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(8,3,2,'Completed',4,180.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(9,3,3,'Pending',5,210.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(10,4,1,'Completed',8,400.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(11,4,2,'Pending',3,150.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(12,4,3,'Completed',4,160.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(13,5,1,'Completed',6,330.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(14,5,2,'Completed',5,270.00,'2024-08-19 10:21:22','2024-08-19 10:21:22'),(15,5,3,'Pending',4,220.00,'2024-08-19 10:21:22','2024-08-19 10:21:22');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL,
  `status` smallint DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'1990-01-01','M','2024-08-19 10:19:10','2024-08-19 10:19:10'),(2,1,'1985-05-10','F','2024-08-19 10:19:10','2024-08-19 10:19:10'),(3,1,'1992-08-25','M','2024-08-19 10:19:10','2024-08-19 10:19:10'),(4,1,'2000-12-15','F','2024-08-19 10:19:10','2024-08-19 10:19:10'),(5,1,'1995-07-07','M','2024-08-19 10:19:10','2024-08-19 10:19:10');
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

-- Dump completed on 2024-08-24 12:38:11
