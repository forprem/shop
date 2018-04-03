CREATE DATABASE  IF NOT EXISTS `coffee` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `coffee`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: coffee
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `photo_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` varchar(10) NOT NULL DEFAULT '',
  `date` varchar(30) NOT NULL DEFAULT '',
  `status` enum('NEW','WORK','DELIVERY','CLOSED','REJECTION') NOT NULL DEFAULT 'NEW',
  `client_id` int(10) unsigned DEFAULT NULL,
  `manager_id` int(10) unsigned DEFAULT NULL,
  `shipping_address` text NOT NULL,
  `shipping_details` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `number` (`number`),
  KEY `client_id` (`client_id`),
  KEY `manager_id` (`manager_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `photo_link_short` varchar(100) NOT NULL DEFAULT '',
  `photo_link_long` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'coffee_beans','coffeezerna/coffee_zerna_150x150.png',''),(2,'ground_coffee','coffeemolotiy/coffee_molotiy_150x150.png',''),(3,'coffee_monodoses','coffeepods/coffee_pods_150x150.png',''),(4,'coffee_capsules','coffeecapsuls/coffee_capsuls_150x150.png',''),(5,'Lavazza Pienaroma','coffeezerna/lavazza_pienaroma_185x185.png','coffeezerna/lavazza_pienaroma_465x465.png'),(6,'Jurado Mas Espresso','coffeezerna/jurado_mas_espresso_185x185.png','coffeezerna/jurado_mas_espresso_465x465.png'),(7,'Lavazza Qualita Oro','coffeezerna/lavazza_qualita_oro_185x185.png','coffeezerna/lavazza_qualita_oro_465x465.png'),(8,'Lavazza Crema e Aroma','coffeezerna/lavazza_crema_e_aroma_185x185.png','coffeezerna/lavazza_crema_e_aroma_465x465.png'),(9,'Movenpick Caffe Crema','coffeezerna/movenpick_caffe_crema_185x185.png','coffeezerna/movenpick_caffe_crema_465x465.png'),(10,'Cafe Badilatti Jacu Bird','coffeezerna/cafe_badilatti_jacu_bird_185x185.png','coffeezerna/cafe_badilatti_jacu_bird_465x465.png'),(11,'Cafe Badilatti St. Moritz Cafe','coffeezerna/cafe_badilatti_st_moritz_cafe_185x185.png','coffeezerna/cafe_badilatti_st_moritz_cafe_465x465.png'),(12,'Malongo BLUE MOUNTEIN','coffeezerna/malongo_blue_mountein_185x185.png','coffeezerna/malongo_blue_mountein_465x465.png'),(13,'Malongo Supremo D Arabica','coffeemolotiy/malongo_supremo_darabica_185x185.png','coffeemolotiy/malongo_supremo_darabica_465x465.png'),(14,'Tchibo Privat Kaffee African Blue','coffeemolotiy/tchibo_privat_kaffee_african_blue_185x185.png','coffeemolotiy/tchibo_privat_kaffee_african_blue_465x465.png'),(15,'Malongo Bresil Sul de Minas','coffeemolotiy/malongo_bresil_sul_de_minas_185x185.png','coffeemolotiy/malongo_bresil_sul_de_minas_465x465.png'),(16,'Malongo Jamaica Blue Mountain','coffeemolotiy/malongo_jamaica_blue_mountain_185x185.png','coffeemolotiy/malongo_jamaica_blue_mountain_465x465.png'),(17,'Mami\'s Caffe Filter','coffeemolotiy/mamis_caffe_filter_coffee_185x185.png','coffeemolotiy/mamis_caffe_filter_coffee_465x465.png'),(18,'Malongo Cristal D\'arom Bio','coffeemolotiy/malongo_cristal_d_arom_bio_185x185.png','coffeemolotiy/malongo_cristal_d_arom_bio_465x465.png'),(19,'Schirmer Kaffee Casino','coffeemolotiy/schirmer_kaffee_casino_185x185.png','coffeemolotiy/schirmer_kaffee_casino_465x465.png'),(20,'Danesi Espresso gold molotiy','coffeemolotiy/danesi_espresso_gold_185x185.png','coffeemolotiy/danesi_espresso_gold_465x465.png'),(21,'ILLY E.S.E.','coffeepods/illy_ese_185x185.png','coffeepods/illy_ese_465x465.png'),(22,'Lavazza Sinfonia Espresso Intenso','coffeepods/lavazza_sinfonia_espresso_intenso_185x185.png','coffeepods/lavazza_sinfonia_espresso_intenso_465x465.png'),(23,'DALLMAYR Prodomo','/coffeepods/dallmayr_prodomo_185x185.png','/coffeepods/dallmayr_prodomo_465x465.png'),(24,'ILLY E.S.E. DECAF','coffeepods/illy_ese_decaf_185x185.png','coffeepods/illy_ese_decaf_465x465.png'),(25,'Malongo Columbia Supremo','coffeepods/malongo_columbia_supremo_185x185.png','coffeepods/malongo_columbia_supremo_465x465.png'),(26,'ILLY E.S.E. no caffein','coffeepods/illy_ese_no_caffeine_185x185.png','coffeepods/illy_ese_no_caffeine_465x465.png'),(27,'Lavazza Sinfonia Espresso pods','coffeepods/lavazza_sinfonia_espresso_185x185.png','coffeepods/lavazza_sinfonia_espresso_465x465.png'),(28,'Danesi Espresso gold','coffeepods/danesi_espresso_gold_185x185.png','coffeepods/danesi_espresso_gold_465x465.png'),(29,'ICS Noir Barista Espresso','coffeecapsuls/ics_noir_barista_espresso_185x185.png','coffeecapsuls/ics_noir_barista_espresso_465x465.png'),(30,'ICS Noir Gran Cru Lungo','coffeecapsuls/ics_noir_gran_cru_lungo_185x185.png','coffeecapsuls/ics_noir_gran_cru_lungo_465x465.png'),(31,'Gimoka Intenso','coffeecapsuls/gimoka_intenso_185x185.png','coffeecapsuls/gimoka_intenso_465x465.png'),(32,'Gimoka Vellutato 100% Arabica','coffeecapsuls/gimoka_vellutato_100_arabica_185x185.png','coffeecapsuls/gimoka_vellutato_100_arabica_465x465.png'),(33,'Gimoka Dek Soave','coffeecapsuls/gimoka_dek_soave_185x185.png','coffeecapsuls/gimoka_dek_soave_465x465.png'),(34,'Wcafe Italian Espresso','coffeecapsuls/wcafe_italian_espresso_185x185.png','coffeecapsuls/wcafe_italian_espresso_465x465.png'),(35,'Blasercafe Italia','coffeecapsuls/blasercafe_italia_185x185.png','coffeecapsuls/blasercafe_italia_465x465.png'),(36,'Wcafe Arabica Crema','coffeecapsuls/wcafe_arabica_crema_185x185.png','coffeecapsuls/wcafe_arabica_crema_465x465.png');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `parameters` text NOT NULL,
  `description` text NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `photo_id` int(10) unsigned DEFAULT NULL,
  `price` decimal(7,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`),
  UNIQUE KEY `article` (`article`),
  KEY `category_id` (`category_id`),
  KEY `photo_id` (`photo_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `number` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` enum('ADMIN','CLIENT','MANAGER') NOT NULL DEFAULT 'CLIENT',
  `name` varchar(50) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `vkontakte` varchar(50) NOT NULL DEFAULT '',
  `facebook` varchar(50) NOT NULL DEFAULT '',
  `skype` varchar(50) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'ADMIN','Yurii Salimov','login','password','yuriy.alex.salimov@gmail.com','+380637399290','','','','Самый главный человек!'),(2,'MANAGER','Liudmyla Salimova','login','password','liudmyla.salimova@gmail.com','+380637399290','','','','');
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

-- Dump completed on 2018-04-02 12:39:39
