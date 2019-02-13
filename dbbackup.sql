-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: ansal
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ce`
--

DROP TABLE IF EXISTS `ce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ce` (
  `no` int(2) NOT NULL,
  `student_name` varchar(20) DEFAULT NULL,
  `regno` bigint(20) DEFAULT NULL,
  `enrollment_no` varchar(20) DEFAULT NULL,
  `mentor` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ce`
--

LOCK TABLES `ce` WRITE;
/*!40000 ALTER TABLE `ce` DISABLE KEYS */;
INSERT INTO `ce` VALUES (1,'Aakansha',2171216449,'170BTCCIV001','MR.Sumeet Gupta'),(2,'shahbaz',2171216725,'170BTCCIV002','MR.Sumeet Gupta'),(3,'sarthak',2171216833,'170BTCCIV003','MR.Sumeet Gupta'),(4,'vineet',2171216373,'170BTCCIV004','MR.Sumeet Gupta'),(5,'rahul',2171216406,'170BTCCIV006','MR.Sumeet Gupta'),(6,'Tanuj',2161114634,'170BTCCIV021','MR.Shadab Alam'),(7,'Mahesh',15001449,'170BTCCIV018','MS.Inderjeet Kaur'),(8,'Amit',15003498,'170BTCCIV043','MR.Anand Sharma'),(9,'Tarun',15002161,'150BTCCIV053','MR.Anand Sharma'),(10,'Ankit ',2161111623,'161BTCCIV010','MR.Anand Sharma');
/*!40000 ALTER TABLE `ce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empl`
--

DROP TABLE IF EXISTS `empl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empl` (
  `emp_id` int(8) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sal` double(7,2) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empl`
--

LOCK TABLES `empl` WRITE;
/*!40000 ALTER TABLE `empl` DISABLE KEYS */;
/*!40000 ALTER TABLE `empl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frn`
--

DROP TABLE IF EXISTS `frn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `frn` (
  `id` int(7) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `age` int(2) DEFAULT NULL,
  KEY `id` (`id`),
  CONSTRAINT `frn_ibfk_1` FOREIGN KEY (`id`) REFERENCES `empl` (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frn`
--

LOCK TABLES `frn` WRITE;
/*!40000 ALTER TABLE `frn` DISABLE KEYS */;
/*!40000 ALTER TABLE `frn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login` (
  `login_id` int(5) DEFAULT NULL,
  `username` varchar(9) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `email_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1001,'Tom','warmachine','tommob@gmail.com'),(1002,'qwer','qwer','qwertricks@gmail.com'),(1003,'carry','1234','carry123@gmail.com'),(1004,'hritik','12345','hritik123@gmail.com'),(1005,'gagan','gagan','gaganm@gmail.com'),(1006,'admin','admin','admin@eu'),(1007,'marverick','qwert','maver@gmail.com'),(1008,'qwertyu','abcd','abcd@gmail.com'),(1009,'abcd','1234','adia@gmail.com');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentor`
--

DROP TABLE IF EXISTS `mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mentor` (
  `mentor_id` int(5) DEFAULT NULL,
  `name` varchar(7) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `email` varchar(15) DEFAULT NULL,
  `contact_number` bigint(20) DEFAULT NULL,
  `address` varchar(12) DEFAULT NULL,
  `subject` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentor`
--

LOCK TABLES `mentor` WRITE;
/*!40000 ALTER TABLE `mentor` DISABLE KEYS */;
INSERT INTO `mentor` VALUES (1101,'carrym','1991-01-04','M','carry@gmail.com',4537378364,'delhi','Data mining'),(1102,'abc','1990-01-05','M','ab@gmail.com',4578456732,'delhi','java');
/*!40000 ALTER TABLE `mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentorssub`
--

DROP TABLE IF EXISTS `mentorssub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mentorssub` (
  `mentor_id` varchar(7) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `subject` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentorssub`
--

LOCK TABLES `mentorssub` WRITE;
/*!40000 ALTER TABLE `mentorssub` DISABLE KEYS */;
INSERT INTO `mentorssub` VALUES ('1101','abc','data');
/*!40000 ALTER TABLE `mentorssub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `student` (
  `studentid` varchar(7) DEFAULT NULL,
  `firstname` varchar(10) DEFAULT NULL,
  `lastname` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(7) DEFAULT NULL,
  `email` varchar(15) DEFAULT NULL,
  `contact_number` bigint(20) DEFAULT NULL,
  `address` varchar(15) DEFAULT NULL,
  `mentor` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('1101','quver','Tom','1997-09-06','M','Tom@gmail.com',2378657865,'delhi','rewa sharma'),('1102','johnk','watson','1990-02-03','M','john@gmail.com',4523785987,'delhi',NULL),('1103','admin','ad','1997-07-11','M','admin@eu',11111111111,'new delhi','rewa sharma'),('1104','ash','vin','1999-12-24','f','asds@gmail.com',1312312312,'dasdsa','sherryvema'),('1105','ashvin','ashvin','1999-04-05','m','adad@gmail.com',2423423423,'swx','sherry verma');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-13 23:48:42
