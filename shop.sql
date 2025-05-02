-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ao BEDE','LGBT'),(2,'Ao Nam','Nam'),(3,'Ao Nu','Nu');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'pending',
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `description` text,
  `thumbnail` varchar(2048) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `view` int DEFAULT '0',
  `category_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Ao BEDE','Ao bede','https://cdn.santino.com.vn/storage/upload/news/2023/06/ao-so-mi-di-bien-nam-10.jpg',1,5,0,1,'2024-11-13 12:28:33'),(2,'Ao Nam','Ao Nam','./assets/img/products/f1.jpg',2,10,0,2,'2024-11-15 11:03:49'),(3,'Zo Nu','Ao nu','./assets/img/products/f2.jpg',3,20,0,3,'2024-11-15 11:03:49'),(4,'Ao Nu','Ao Nu','./assets/img/products/f3.jpg',4,50,50,1,'2024-11-15 11:19:30'),(5,'Ao Nu','Ao Nu','./assets/img/products/f5.jpg',5,50,50,1,'2024-11-15 11:19:30'),(6,'Ao Nu','Ao Nu','./assets/img/products/f6.jpg',6,50,50,1,'2024-11-15 11:19:30'),(7,'Ao Nu','Ao Nu','./assets/img/products/f7.jpg',7,50,50,1,'2024-11-15 11:19:30'),(8,'Ao Nu','Ao Nu','./assets/img/products/f8.jpg',8,50,50,1,'2024-11-15 11:19:30'),(9,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',9,50,50,1,'2024-11-15 11:19:30'),(10,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',10,50,50,1,'2024-11-15 11:19:30'),(11,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',11,50,50,1,'2024-11-15 11:19:30'),(12,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',12,50,50,1,'2024-11-15 11:19:30'),(13,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',13,50,50,1,'2024-11-15 11:19:30'),(14,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',14,50,50,1,'2024-11-15 11:19:30'),(15,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',15,50,50,1,'2024-11-15 11:19:30'),(16,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(17,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(18,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(19,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(20,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(21,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(22,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(23,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(24,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(25,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(26,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(27,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(28,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(29,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30'),(30,'Ao Nu','Ao Nu','./assets/img/products/f1.jpg',50,50,50,1,'2024-11-15 11:19:30');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2024-11-29 18:14:35
