-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: kang movie
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `hinew`
--

DROP TABLE IF EXISTS `hinew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hinew` (
  `name` varchar(30) NOT NULL,
  `ID` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Year` varchar(45) NOT NULL,
  `Month` varchar(45) NOT NULL,
  `Day` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `age` int(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinew`
--

LOCK TABLES `hinew` WRITE;
/*!40000 ALTER TABLE `hinew` DISABLE KEYS */;
INSERT INTO `hinew` VALUES ('a','a','a','2006','11','02','aaa',13),('운영자','admin','1234','1998','07','21','01056684136',21);
/*!40000 ALTER TABLE `hinew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movietb`
--

DROP TABLE IF EXISTS `movietb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movietb` (
  `MovieID` varchar(50) NOT NULL,
  `MovieName` varchar(30) NOT NULL,
  `MoviewTime` varchar(50) NOT NULL,
  `julgary` varchar(500) NOT NULL,
  `filedata` varchar(500) NOT NULL,
  `viewAge` int(11) NOT NULL,
  PRIMARY KEY (`MovieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movietb`
--

LOCK TABLES `movietb` WRITE;
/*!40000 ALTER TABLE `movietb` DISABLE KEYS */;
INSERT INTO `movietb` VALUES ('Zoker2019-10-29','Zoker','7:40','“내 인생이 비극인줄 알았는데, 코미디였어”\n고담시의 광대 아서 플렉은 코미디언을 꿈꾸는 남자.\n 하지만 모두가 미쳐가는 코미디 같은 세상에서\n 맨 정신으로는 그가 설 자리가 없음을 깨닫게 되는데…\n 이제껏 본 적 없는 진짜 ‘조커’를 만나라!','Zoker.jpg',19),('괴물2019-10-16','괴물','7:40','괴물','괴물.png',19),('철용2019-10-16','철용','5:20','“내 인생이 비극인줄 알았는데, 코미디였어”\n고담시의 광대 아서 플렉은 코미디언을 꿈꾸는 남자.\n 하지만 모두가 미쳐가는 코미디 같은 세상에서\n 맨 정신으로는 그가 설 자리가 없음을 깨닫게 되는데…\n 이제껏 본 적 없는 진짜 ‘조커’를 만나라!','Iron_Dragon.png',19);
/*!40000 ALTER TABLE `movietb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movieviewlist`
--

DROP TABLE IF EXISTS `movieviewlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movieviewlist` (
  `MovieID` varchar(100) NOT NULL,
  `MovieName` varchar(30) NOT NULL,
  `MoviewTime` varchar(50) NOT NULL,
  `MovieTotalPrice` int(100) DEFAULT NULL,
  `MovieTotlaView` int(30) DEFAULT NULL,
  `Filename` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MovieID`),
  KEY `MovieID` (`MovieID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movieviewlist`
--

LOCK TABLES `movieviewlist` WRITE;
/*!40000 ALTER TABLE `movieviewlist` DISABLE KEYS */;
INSERT INTO `movieviewlist` VALUES ('Zoker2019-10-29','Zoker','7:40',0,0,'Zoker.jpg'),('괴물2019-10-16','괴물','7:40',0,0,'괴물.png'),('철용2019-10-16','철용','5:20',0,0,'Iron_Dragon.png');
/*!40000 ALTER TABLE `movieviewlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermoviebooks`
--

DROP TABLE IF EXISTS `usermoviebooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermoviebooks` (
  `userID` varchar(50) NOT NULL,
  `MovieID` varchar(50) NOT NULL,
  `MovieTime` varchar(50) NOT NULL,
  `MovieName` varchar(50) NOT NULL,
  `MoviePrice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermoviebooks`
--

LOCK TABLES `usermoviebooks` WRITE;
/*!40000 ALTER TABLE `usermoviebooks` DISABLE KEYS */;
INSERT INTO `usermoviebooks` VALUES ('a','철용2019-10-16','5:20','철용',22000),('a','Zoker2019-10-16','9:40','Zoker',22000),('a','Zoker2019-10-28','9:40','Zoker',22000),('a','괴물2019-10-16','7:40','괴물',22000),('ss','괴물2019-10-16','7:40','괴물',22000);
/*!40000 ALTER TABLE `usermoviebooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'kang movie'
--

--
-- Dumping routines for database 'kang movie'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-24 11:24:06
