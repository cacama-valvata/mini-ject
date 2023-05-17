-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: mini
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `postid` int DEFAULT NULL,
  `private` tinyint(1) DEFAULT NULL,
  `text` varchar(1000) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (0,0,'Welcome to Mini-ject! Here we take SQL injects very seriously. Here are some resources that might help get you started:\nhttps://www.w3schools.com/sql/sql_injection.asp\nhttps://www.invicti.com/blog/web-security/sql-injection-cheat-sheet/\nPlease reach out if you have any questions!','admin'),(1,1,'You found a secret flag! cyberwarrior{youweresupposedtodestroytheinjectnotjointhem}','admin'),(2,0,'Has anyone seen my fridge? It said it was going out for a jog but it hasn\'t been back in awhile...','admin'),(3,0,'Hi again! We were reading about open source software the other day and were inspired to open source our website backend! Here\'s our SQL table for these posts!\n\ncreate table posts (\npostid int,\nprivate bool,\ntext varchar(1000),\nauthor varchar(255)\n);\n\nPretty slick, huh?','admin'),(4,0,'Hope everyone has been enjoying the new company-hosted Doom server! You don\'t know how long it took me to get that working :(','admin'),(5,1,'google \'intro to python 101\'','admin'),(6,0,'Sorry about the office\'s network outage last week! The IT staff found a wumpus chewing on cables in the router closet.','admin'),(7,0,'How to boost your productivity! The one best trick your boss doesn\'t want you to know: http://corndogoncorndog.com/','admin'),(8,0,'Did you know you can use either single- or double-quotes in SQL queries? How neat!','admin');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-17  1:36:45
