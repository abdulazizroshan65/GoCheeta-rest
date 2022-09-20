-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gocheeta
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `Email` varchar(32) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Branch` varchar(45) NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES ('chrisevans@gmail.com','chrisevans1234','Chris Evans','Kandy'),('galgadot@gmail.com','galgadot1234','Gal Gadot','Kurunegala'),('jasonmomoa@gmail.com','jasonmomoa1234','Jason Momoa','Jaffna'),('selenagomes@gmail.com','selenagomes1234','Selena Gomes','Nugegoda'),('tomcruise@gmail.com','tomcruise1234','Tom Cruise','Gampaha'),('willsmith@gmail.com','willsmith1234','Will Smith','Galle');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `DateTime` varchar(45) NOT NULL DEFAULT '2022-09-10',
  `CustomerEmail` varchar(45) NOT NULL,
  `DriverEmail` varchar(45) NOT NULL,
  `VehicleNo` varchar(45) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `Pickup` varchar(45) NOT NULL,
  `Drop` varchar(45) NOT NULL,
  `Distance` int NOT NULL,
  `Fare` int NOT NULL,
  `Feedback` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (2,'','aselvinjitha@gmail.com','gotabhayaraja@gmail.com','N/A','Completed','pick ','drop',6,720,'None');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `NoOfDrivers` int NOT NULL,
  `NoOfCustomers` int NOT NULL,
  `NoOfAdmins` int NOT NULL,
  `NoOfTrips` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Nugegoda',1,1,0,0),(2,'Galle',1,1,0,0),(3,'Gampaha',1,1,0,0),(4,'Jaffna',1,1,0,0),(5,'Kandy',1,1,0,0),(6,'Kurunegala',1,1,0,0);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Type` varchar(45) NOT NULL,
  `UnitPrice` int NOT NULL,
  `Passengers` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Details of Vehicle Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Bike',50,1),(2,'Tuk',60,3),(3,'Compact',80,4),(4,'Sedan',100,4),(5,'Van',120,8);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `charges`
--

DROP TABLE IF EXISTS `charges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charges` (
  `Combination` int NOT NULL AUTO_INCREMENT,
  `Branch` varchar(25) NOT NULL,
  `Start` varchar(45) NOT NULL,
  `Stop` varchar(45) NOT NULL,
  `Distance` int NOT NULL,
  PRIMARY KEY (`Combination`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charges`
--

LOCK TABLES `charges` WRITE;
/*!40000 ALTER TABLE `charges` DISABLE KEYS */;
INSERT INTO `charges` VALUES (1,'Nugegoda','Sea Street','Temple Lane',4),(2,'Galle','Woodland Rd','Retreat Rd',5),(3,'Galle','Retreat Rd','Anderson Rd',7),(4,'Galle','Retreat Rd','Woodland Rd',5),(5,'Gampaha','Wall St','Cross St',8),(6,'Gampaha','Wall St','Alfred Av',3),(7,'Gampaha','Cross St','Wall St',8),(8,'Gampaha','Cross St','Alfred Av',4),(9,'Gampaha','Alfred Av','Wall St',3),(10,'Gampaha','Alfred Av','Cross St',4),(11,'Jaffna','Quarry Rd','Duplication Rd',3),(12,'Nugegoda','Sea Street','School Avenue',6),(13,'Jaffna','Quarry Rd','Peter\'s Lane',4),(14,'Jaffna','Duplication Rd','Quarry Rd',3),(15,'Jaffna','Duplication Rd','Peter\'s Lane',5),(16,'Jaffna','Peter\'s Lane','Quarry Rd',4),(17,'Jaffna','Peter\'s Lane','Duplication Rd',5),(18,'Kandy','Harmers St','Maliban St',9),(19,'Kandy','Harmers St','Highlevel Rd',7),(20,'Kandy','Maliban St','Harmers St',9),(21,'Kandy','Maliban St','Highlevel Rd',5),(22,'Kandy','Highlevel Rd','Harmers St',7),(23,'Nugegoda','Temple Lane','Sea Street',4),(24,'Kandy','Highlevel Rd','Maliban St',5),(25,'Kurunegala','Armour St','Marine Dr',6),(26,'Kurunegala','Armour St','Frazer Av',7),(27,'Kurunegala','Marine Dr','Armour St',6),(28,'Kurunegala','Marine Dr','Frazer Av',8),(29,'Kurunegala','Frazer Av','Armour St',7),(30,'Kurunegala','Frazer Av','Marine Dr',8),(31,'Nugegoda','Temple Lane','School Avenue',5),(32,'Nugegoda','School Avenue','Sea Street',6),(33,'Nugegoda','School Avenue','Temple Lane',5),(34,'Galle','Anderson Rd','Woodland Rd',6),(35,'Galle','Anderson Rd','Retreat Rd',7),(36,'Galle','Woodland Rd','Anderson Rd',6);
/*!40000 ALTER TABLE `charges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `Email` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Branch` varchar(45) NOT NULL,
  `Telephone` varchar(45) NOT NULL,
  `NoOfTrips` int NOT NULL,
  `Status` varchar(45) NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('abdulazizroshan@gmail.com','abdulazizroshan1234','Abdulaziz Roshan','Galle','0123456789',0,'Free'),('aselvinjitha@gmail.com','aselvinjitha1234','Asel Vinjitha','Kandy','0234567891',0,'Free'),('kanishkamadhawa@gmail.com','kanishkamadhawa1234','Kanishka Madhawa','Nugegoda','0345678912',0,'Free'),('madushanhapuarachi@gmail.com','madushanhapuarachi1234','Madushan Hapuarachi','Galle','0789123456',0,'Free'),('sachirukarunarathna@gmail.com','sachirukarunarathna1234','Sachiru Karunarathna','Jaffna','0678912345',0,'Free'),('sonalrandinu@gmail.com','sonalrandinu1234','Sonal Randinu','Gampaha','0456789123',0,'Free'),('thilanmaduranga@gmail.com','thilanmaduranga1234','Thilan Maduranga','Kurunegala','0567891234',0,'Free');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `Email` varchar(32) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Branch` varchar(45) NOT NULL,
  `Telephone` varchar(32) NOT NULL,
  `Status` varchar(45) NOT NULL,
  `NoOfVehicles` int NOT NULL,
  `NoOfTrips` int NOT NULL,
  PRIMARY KEY (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES ('ajithkabba@gmail.com','ajithkabba1234','Ajith Kabral','Kandy','0678912345','Free',2,0),('basilrajapaksha@gmail.com','basilrajapaksha1234','Basil Rajapaksha','Kurunegala','0123456789','Free',1,0),('gotabhayaraja@gmail.com','gotabhayaraja1234','Gotabhaya Rajapaksha','Gampaha','0234567891','Free',2,0),('mahindaraja@gmail.com','mahindaraja1234','Mahinda Rajapaksha','Nugegoda','0345678912','Free',1,0),('namalrajapaksha@gmail.com','namalrajapaksha1234','Namal Rajapaksha','Jaffna','0456789123','Free',1,0),('ranilwickrama@gmail.com','ranilwickrama1234','Ranil Wickramasinghe','Galle','0567891234','Free',1,0);
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `PlateNo` varchar(32) NOT NULL,
  `CategoryID` int NOT NULL,
  `DriverName` varchar(45) NOT NULL,
  `NoOfTrips` int NOT NULL,
  PRIMARY KEY (`PlateNo`,`CategoryID`),
  KEY `fk_cid_idx` (`CategoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES ('AAA-1234',3,'Ajith Kabral',0),('AAB-5678',3,'Basil Rajapaksha',0),('AAC-9012',2,'Gotabhaya Rajapaksha',200),('AAD-3456',1,'Mahinda Rajapaksha',0),('AAE-7890',5,'Namal Rajapaksha',0),('AAF-1234',4,'Ranil Wickramasinghe',0),('AAG-5678',2,'Gotabhaya Rajapaksha',0);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-20 23:44:48
