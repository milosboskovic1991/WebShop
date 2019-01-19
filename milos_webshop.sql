-- MySQL dump 10.13  Distrib 5.7.23, for Win64 (x86_64)
--
-- Host: localhost    Database: milos_webshop
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--
-- ORDER BY:  `id`

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'TVs'),(2,'Mobile Phones'),(3,'LapTops'),(6,'Tablets');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--
-- ORDER BY:  `id`

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Beograd'),(2,'Nis'),(3,'Kragujevac'),(4,'Novi Sad'),(5,'Kraljevo'),(6,'Cacak'),(7,'Valjevo'),(8,'Vranje'),(9,'Pirot'),(10,'Leskovac'),(11,'Subotica'),(12,'Zrenjanin'),(13,'Pancevo'),(14,'Senta'),(15,'Krusevac'),(16,'Majdanpek'),(17,'Bor'),(18,'Jagodina'),(19,'Vrsac');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `manufacturer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_fk` (`category_id`),
  KEY `manufacturer_fk` (`manufacturer_id`),
  CONSTRAINT `category_fk` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `manufacturer_fk` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--
-- ORDER BY:  `id`

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'best quality','Samsung led tv',300,1,2),(3,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque interdum, nibh non sagittis imperdiet, enim ante suscipit nulla, sed ornare turpis sapien sed odio.\r\n                    ','Nokia N95',100.55,2,1),(4,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et lorem vel diam faucibus feugiat et nec metus. Vivamus vel elit tempus, malesuada mi eget, congue turpis. \r\n                    ','Samsung p2',230,1,2),(5,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et lorem vel diam faucibus feugiat et nec metus.  ','Vivax -tv',100,1,5),(6,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et lorem vel diam faucibus feugiat et nec metus. \r\n                    ','Grundig X355',220,1,9),(7,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et lorem vel diam faucibus feugiat et nec metus. \r\n                    ','Toshiba spider',210,1,6),(8,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et lorem vel diam faucibus feugiat et nec metus. \r\n                    ','Fox Led Tv',185,1,10),(9,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et lorem vel diam faucibus feugiat et nec metus. \r\n                    ','Samsung UltraHD led tv',350,1,2),(10,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et lorem vel diam faucibus feugiat et nec metus. \r\n                    ','Huawei P10-lite',340,2,4),(11,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et lorem vel diam faucibus feugiat et nec metus. \r\n                    ','Vivax -tcp551',99.99,6,5),(12,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque et lorem vel diam faucibus feugiat et nec metus. Vivamus vel elit tempus, malesuada mi eget, congue turpis. Morbi sit amet aliquam mauris.\r\n                    ','Acer Aspire X55',550,3,11);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--
-- ORDER BY:  `id`

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (1,'Nokia'),(2,'Samsung'),(4,'Huawei'),(5,'Vivax'),(6,'Toshiba'),(7,'Dell'),(8,'Coolpad'),(9,'Grundig'),(10,'Fox'),(11,'Acer'),(12,'Asus');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `approved` varchar(5) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `item_fk` (`item_id`),
  KEY `user_fk` (`user_id`),
  CONSTRAINT `item_fk` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  CONSTRAINT `user_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--
-- ORDER BY:  `id`

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'2019-01-14 16:26:21',1,1,'yes'),(2,'2019-01-14 16:28:52',1,1,'no'),(3,'2019-01-14 16:30:18',1,1,'no'),(4,'2019-01-14 16:30:21',1,1,'yes'),(5,'2019-01-14 16:33:36',1,1,'no'),(6,'2019-01-14 16:34:07',1,1,'yes'),(7,'2019-01-14 16:34:09',1,1,'no'),(8,'2019-01-14 16:35:00',1,1,'no'),(9,'2019-01-14 19:13:18',3,3,'yes'),(10,'2019-01-14 21:03:14',1,1,'yes'),(11,'2019-01-14 21:03:23',12,1,'yes'),(12,'2019-01-15 05:59:45',12,3,'no'),(13,'2019-01-15 05:59:52',11,3,'no');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `city_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_fk` (`city_id`),
  CONSTRAINT `city_fk` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--
-- ORDER BY:  `id`

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Hadzi-Mustafina 3','bosko_kv_91@hotmail.com','Milos','Boskovic','milos','0693315671','milos',1),(2,'Hadzi-Mustafina 3','bosko_kv_91@hotmail.com','Admin','Admin','admin','0693316787','admin',7),(3,'Obileceva 5','petar@gmail.com','Petar','Petrovic','petar','069/587-5641','petar',12),(4,'Savski Venac 14b','marko@gmail.com','Marko','Markovic','marko','065/484-8558','marko',1),(5,'Cara Dusana 6','nikola@yahoo.com','Nikola','Nikolic','nikola','064/441-2241','nikola',9);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-15 17:28:05
