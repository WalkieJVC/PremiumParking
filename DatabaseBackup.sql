CREATE DATABASE  IF NOT EXISTS `premiumparking` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `premiumparking`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: premiumparking
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `garage`
--

DROP TABLE IF EXISTS `garage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `garage` (
  `ParkingID` int NOT NULL,
  `FloorNumber` tinyint DEFAULT NULL,
  `SpotNumber` tinyint DEFAULT NULL,
  `SpotSize` varchar(10) DEFAULT NULL,
  `IsOccupied` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ParkingID`),
  UNIQUE KEY `LocationID_UNIQUE` (`ParkingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garage`
--

LOCK TABLES `garage` WRITE;
/*!40000 ALTER TABLE `garage` DISABLE KEYS */;
INSERT INTO `garage` VALUES (1,1,1,'Large',0),(2,1,2,'Large',0),(3,1,3,'Large',0),(4,1,4,'Large',0),(5,1,5,'Large',0),(6,1,6,'Large',0),(7,1,7,'Large',0),(8,1,8,'Large',0),(9,1,9,'Large',0),(10,1,10,'Large',0),(11,1,11,'Large',0),(12,1,12,'Large',0),(13,1,13,'Large',0),(14,1,14,'Large',0),(15,1,15,'Large',0),(16,1,16,'Large',0),(17,1,17,'Large',0),(18,1,18,'Large',0),(19,1,19,'Large',0),(20,1,20,'Large',0),(21,2,1,'Large',0),(22,2,2,'Large',0),(23,2,3,'Large',0),(24,2,4,'Large',0),(25,2,5,'Large',0),(26,2,6,'Large',0),(27,2,7,'Large',0),(28,2,8,'Large',0),(29,2,9,'Large',0),(30,2,10,'Large',0),(31,2,11,'Large',0),(32,2,12,'Large',0),(33,2,13,'Large',0),(34,2,14,'Large',0),(35,2,15,'Large',0),(36,2,16,'Large',0),(37,2,17,'Large',0),(38,2,18,'Large',0),(39,2,19,'Large',0),(40,2,20,'Large',0),(41,3,1,'Large',0),(42,3,2,'Large',0),(43,3,3,'Large',0),(44,3,4,'Large',0),(45,3,5,'Large',0),(46,3,6,'Large',0),(47,3,7,'Large',0),(48,3,8,'Large',0),(49,3,9,'Large',0),(50,3,10,'Large',0),(51,3,11,'Large',0),(52,3,12,'Large',0),(53,3,13,'Large',0),(54,3,14,'Large',0),(55,3,15,'Large',0),(56,3,16,'Large',0),(57,3,17,'Large',0),(58,3,18,'Large',0),(59,3,19,'Large',0),(60,3,20,'Large',0),(61,4,1,'Large',0),(62,4,2,'Large',0),(63,4,3,'Large',0),(64,4,4,'Large',0),(65,4,5,'Large',0),(66,4,6,'Large',0),(67,4,7,'Large',0),(68,4,8,'Large',0),(69,4,9,'Large',0),(70,4,10,'Large',0),(71,4,11,'Large',0),(72,4,12,'Large',0),(73,4,13,'Large',0),(74,4,14,'Large',0),(75,4,15,'Large',0),(76,4,16,'Large',0),(77,4,17,'Large',0),(78,4,18,'Large',0),(79,4,19,'Large',0),(80,4,20,'Large',0),(81,5,1,'Large',0),(82,5,2,'Large',0),(83,5,3,'Large',0),(84,5,4,'Large',0),(85,5,5,'Large',0),(86,5,6,'Large',0),(87,5,7,'Large',0),(88,5,8,'Large',0),(89,5,9,'Large',0),(90,5,10,'Large',0),(91,5,11,'Large',0),(92,5,12,'Large',0),(93,5,13,'Large',0),(94,5,14,'Large',0),(95,5,15,'Large',0),(96,5,16,'Large',0),(97,5,17,'Large',0),(98,5,18,'Large',0),(99,5,19,'Large',0),(100,5,20,'Large',0),(101,1,1,'Compact',0),(102,1,2,'Compact',0),(103,1,3,'Compact',0),(104,1,4,'Compact',0),(105,1,5,'Compact',0),(106,1,6,'Compact',0),(107,1,7,'Compact',0),(108,1,8,'Compact',0),(109,1,9,'Compact',0),(110,1,10,'Compact',0),(111,1,11,'Compact',0),(112,1,12,'Compact',0),(113,1,13,'Compact',0),(114,1,14,'Compact',0),(115,1,15,'Compact',0),(116,1,16,'Compact',0),(117,1,17,'Compact',0),(118,1,18,'Compact',0),(119,1,19,'Compact',0),(120,1,20,'Compact',0),(121,2,1,'Compact',0),(122,2,2,'Compact',0),(123,2,3,'Compact',0),(124,2,4,'Compact',0),(125,2,5,'Compact',0),(126,2,6,'Compact',0),(127,2,7,'Compact',0),(128,2,8,'Compact',0),(129,2,9,'Compact',0),(130,2,10,'Compact',0),(131,2,11,'Compact',0),(132,2,12,'Compact',0),(133,2,13,'Compact',0),(134,2,14,'Compact',0),(135,2,15,'Compact',0),(136,2,16,'Compact',0),(137,2,17,'Compact',0),(138,2,18,'Compact',0),(139,2,19,'Compact',0),(140,2,20,'Compact',0),(141,3,1,'Compact',0),(142,3,2,'Compact',0),(143,3,3,'Compact',0),(144,3,4,'Compact',0),(145,3,5,'Compact',0),(146,3,6,'Compact',0),(147,3,7,'Compact',0),(148,3,8,'Compact',0),(149,3,9,'Compact',0),(150,3,10,'Compact',0),(151,3,11,'Compact',0),(152,3,12,'Compact',0),(153,3,13,'Compact',0),(154,3,14,'Compact',0),(155,3,15,'Compact',0),(156,3,16,'Compact',0),(157,3,17,'Compact',0),(158,3,18,'Compact',0),(159,3,19,'Compact',0),(160,3,20,'Compact',0),(161,4,1,'Compact',0),(162,4,2,'Compact',0),(163,4,3,'Compact',0),(164,4,4,'Compact',0),(165,4,5,'Compact',0),(166,4,6,'Compact',0),(167,4,7,'Compact',0),(168,4,8,'Compact',0),(169,4,9,'Compact',0),(170,4,10,'Compact',0),(171,4,11,'Compact',0),(172,4,12,'Compact',0),(173,4,13,'Compact',0),(174,4,14,'Compact',0),(175,4,15,'Compact',0),(176,4,16,'Compact',0),(177,4,17,'Compact',0),(178,4,18,'Compact',0),(179,4,19,'Compact',0),(180,4,20,'Compact',0),(181,5,1,'Compact',0),(182,5,2,'Compact',0),(183,5,3,'Compact',0),(184,5,4,'Compact',0),(185,5,5,'Compact',0),(186,5,6,'Compact',0),(187,5,7,'Compact',0),(188,5,8,'Compact',0),(189,5,9,'Compact',0),(190,5,10,'Compact',0),(191,5,11,'Compact',0),(192,5,12,'Compact',0),(193,5,13,'Compact',0),(194,5,14,'Compact',0),(195,5,15,'Compact',0),(196,5,16,'Compact',0),(197,5,17,'Compact',0),(198,5,18,'Compact',0),(199,5,19,'Compact',0),(200,5,20,'Compact',0),(201,1,1,'Motorcycle',0),(202,1,2,'Motorcycle',0),(203,1,3,'Motorcycle',0),(204,1,4,'Motorcycle',0),(205,1,5,'Motorcycle',0),(206,1,6,'Motorcycle',0),(207,1,7,'Motorcycle',0),(208,1,8,'Motorcycle',0),(209,1,9,'Motorcycle',0),(210,1,10,'Motorcycle',0),(211,1,11,'Motorcycle',0),(212,1,12,'Motorcycle',0),(213,1,13,'Motorcycle',0),(214,1,14,'Motorcycle',0),(215,1,15,'Motorcycle',0),(216,1,16,'Motorcycle',0),(217,1,17,'Motorcycle',0),(218,1,18,'Motorcycle',0),(219,1,19,'Motorcycle',0),(220,1,20,'Motorcycle',0),(221,2,1,'Motorcycle',0),(222,2,2,'Motorcycle',0),(223,2,3,'Motorcycle',0),(224,2,4,'Motorcycle',0),(225,2,5,'Motorcycle',0),(226,2,6,'Motorcycle',0),(227,2,7,'Motorcycle',0),(228,2,8,'Motorcycle',0),(229,2,9,'Motorcycle',0),(230,2,10,'Motorcycle',0),(231,2,11,'Motorcycle',0),(232,2,12,'Motorcycle',0),(233,2,13,'Motorcycle',0),(234,2,14,'Motorcycle',0),(235,2,15,'Motorcycle',0),(236,2,16,'Motorcycle',0),(237,2,17,'Motorcycle',0),(238,2,18,'Motorcycle',0),(239,2,19,'Motorcycle',0),(240,2,20,'Motorcycle',0),(241,3,1,'Motorcycle',0),(242,3,2,'Motorcycle',0),(243,3,3,'Motorcycle',0),(244,3,4,'Motorcycle',0),(245,3,5,'Motorcycle',0),(246,3,6,'Motorcycle',0),(247,3,7,'Motorcycle',0),(248,3,8,'Motorcycle',0),(249,3,9,'Motorcycle',0),(250,3,10,'Motorcycle',0),(251,3,11,'Motorcycle',0),(252,3,12,'Motorcycle',0),(253,3,13,'Motorcycle',0),(254,3,14,'Motorcycle',0),(255,3,15,'Motorcycle',0),(256,3,16,'Motorcycle',0),(257,3,17,'Motorcycle',0),(258,3,18,'Motorcycle',0),(259,3,19,'Motorcycle',0),(260,3,20,'Motorcycle',0),(261,4,1,'Motorcycle',0),(262,4,2,'Motorcycle',0),(263,4,3,'Motorcycle',0),(264,4,4,'Motorcycle',0),(265,4,5,'Motorcycle',0),(266,4,6,'Motorcycle',0),(267,4,7,'Motorcycle',0),(268,4,8,'Motorcycle',0),(269,4,9,'Motorcycle',0),(270,4,10,'Motorcycle',0),(271,4,11,'Motorcycle',0),(272,4,12,'Motorcycle',0),(273,4,13,'Motorcycle',0),(274,4,14,'Motorcycle',0),(275,4,15,'Motorcycle',0),(276,4,16,'Motorcycle',0),(277,4,17,'Motorcycle',0),(278,4,18,'Motorcycle',0),(279,4,19,'Motorcycle',0),(280,4,20,'Motorcycle',0),(281,5,1,'Motorcycle',0),(282,5,2,'Motorcycle',0),(283,5,3,'Motorcycle',0),(284,5,4,'Motorcycle',0),(285,5,5,'Motorcycle',0),(286,5,6,'Motorcycle',0),(287,5,7,'Motorcycle',0),(288,5,8,'Motorcycle',0),(289,5,9,'Motorcycle',0),(290,5,10,'Motorcycle',0),(291,5,11,'Motorcycle',0),(292,5,12,'Motorcycle',0),(293,5,13,'Motorcycle',0),(294,5,14,'Motorcycle',0),(295,5,15,'Motorcycle',0),(296,5,16,'Motorcycle',0),(297,5,17,'Motorcycle',0),(298,5,18,'Motorcycle',0),(299,5,19,'Motorcycle',0),(300,5,20,'Motorcycle',0);
/*!40000 ALTER TABLE `garage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LocationID` int NOT NULL AUTO_INCREMENT,
  `ParkingID` int DEFAULT NULL,
  `VehicleID` int DEFAULT NULL,
  `LogID` int NOT NULL,
  PRIMARY KEY (`LocationID`),
  UNIQUE KEY `LocationID_UNIQUE` (`LocationID`),
  KEY `fk_Location_Garage_idx` (`ParkingID`),
  KEY `fk_Location_Vehicle_idx` (`VehicleID`),
  KEY `fk_Location_Log_idx` (`LogID`),
  CONSTRAINT `fk_Location_Garage` FOREIGN KEY (`ParkingID`) REFERENCES `garage` (`ParkingID`),
  CONSTRAINT `fk_Location_Log` FOREIGN KEY (`LogID`) REFERENCES `log` (`LogID`),
  CONSTRAINT `fk_Location_Vehicle` FOREIGN KEY (`VehicleID`) REFERENCES `vehicle` (`VehicleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `LogID` int NOT NULL AUTO_INCREMENT,
  `InDate` date NOT NULL,
  `InTime` time NOT NULL,
  `OutDate` date DEFAULT NULL,
  `OutTime` time DEFAULT NULL,
  `AmmountToPay` double DEFAULT NULL,
  `TransactionID` int DEFAULT NULL,
  PRIMARY KEY (`LogID`),
  UNIQUE KEY `LogID_UNIQUE` (`LogID`),
  KEY `fk_Log_Transaction_idx` (`TransactionID`),
  CONSTRAINT `fk_Log_Transaction` FOREIGN KEY (`TransactionID`) REFERENCES `transaction` (`TransactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `TransactionID` int NOT NULL AUTO_INCREMENT,
  `CardNumber` bigint DEFAULT NULL,
  PRIMARY KEY (`TransactionID`),
  UNIQUE KEY `TransactionID_UNIQUE` (`TransactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `VehicleID` int NOT NULL AUTO_INCREMENT,
  `Size` varchar(10) DEFAULT NULL,
  `LicensePlate` varchar(9) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  PRIMARY KEY (`VehicleID`),
  UNIQUE KEY `VehicleID_UNIQUE` (`VehicleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'premiumparking'
--

--
-- Dumping routines for database 'premiumparking'
--
/*!50003 DROP FUNCTION IF EXISTS `GetEmptySpot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetEmptySpot`(_size VARCHAR(10)) RETURNS int
BEGIN
	SET @spot = 0;
	IF (_size = 'Motorcycle') THEN
		IF (SELECT COUNT(*) AS 'NumOfSpotsAvailable' FROM Garage WHERE SpotSize = _size AND IsOccupied = false) > 0 THEN
			SET @spot = (SELECT MIN(ParkingID) AS 'ParkingID' FROM Garage WHERE SpotSize = _size AND IsOccupied = false);
		ELSEIF (SELECT COUNT(*) AS 'NumOfSpotsAvailable' FROM Garage WHERE SpotSize = 'Compact' AND IsOccupied = false) > 0 THEN
			SET @spot = (SELECT MIN(ParkingID) AS 'ParkingID' FROM Garage WHERE SpotSize = 'Compact' AND IsOccupied = false);
		ELSEIF (SELECT COUNT(*) AS 'NumOfSpotsAvailable' FROM Garage WHERE SpotSize = 'Large' AND IsOccupied = false) > 0 THEN
			SET @spot = (SELECT MIN(ParkingID) AS 'ParkingID' FROM Garage WHERE SpotSize = 'Large' AND IsOccupied = false);
		END IF;
	ELSEIF (_size = 'Compact') THEN
		IF (SELECT COUNT(*) AS 'NumOfSpotsAvailable' FROM Garage WHERE SpotSize = _size AND IsOccupied = false) > 0 THEN
			SET @spot = (SELECT MIN(ParkingID) AS 'ParkingID' FROM Garage WHERE SpotSize = _size AND IsOccupied = false);
		ELSEIF (SELECT COUNT(*) AS 'NumOfSpotsAvailable' FROM Garage WHERE SpotSize = 'Large' AND IsOccupied = false) > 0 THEN
			SET @spot = (SELECT MIN(ParkingID) AS 'ParkingID' FROM Garage WHERE SpotSize = 'Large' AND IsOccupied = false);
		END IF;
	END IF;
RETURN @spot;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetFirstOfConsecutiveSpots` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetFirstOfConsecutiveSpots`(_floorNumber INT, _size VARCHAR(10)) RETURNS int
BEGIN
	SET @minSpot = (WITH table1 as 
		(SELECT *,
			ROW_NUMBER() OVER (ORDER BY ParkingID) as rowNumber,
			ParkingID - (ROW_NUMBER() OVER (ORDER BY ParkingID)) as difference
			FROM Garage
			WHERE IsOccupied = false AND FloorNumber = _floorNumber AND SpotSize = _size),
		table2 as 
		(SELECT *, 
			COUNT(*) OVER(PARTITION BY difference) AS noOfRecords 
			FROM table1),
		table3 as
		(SELECT ParkingID
			FROM table2
			WHERE noOfRecords >= 5
			LIMIT 5)
		SELECT MIN(ParkingID) FROM table3);
		
	IF (@minSpot = null) THEN
		RETURN 0;
	ELSE
		RETURN @minSpot;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetLocationID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetLocationID`(_logID INT) RETURNS int
BEGIN
	RETURN (SELECT LocationID FROM Location WHERE LogID = _logID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetLogID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetLogID`(_vehicleID INT) RETURNS int
BEGIN
	RETURN (SELECT MIN(LogID) FROM Location WHERE VehicleID = _vehicleID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetNumberOfConsecutiveSpots` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetNumberOfConsecutiveSpots`(_floorNumber INT, _size VARCHAR(10)) RETURNS int
BEGIN
	SET @numOfSpot = (WITH table1 as 
		(SELECT *,
			ROW_NUMBER() OVER (ORDER BY ParkingID) as rowNumber,
			ParkingID - (ROW_NUMBER() OVER (ORDER BY ParkingID)) as difference
			FROM Garage
			WHERE IsOccupied = false AND FloorNumber = _floorNumber AND SpotSize = _size),
		table2 as 
		(SELECT *, 
			COUNT(*) OVER(PARTITION BY difference) AS noOfRecords 
			FROM table1),
		table3 as
		(SELECT ParkingID
			FROM table2
			WHERE noOfRecords >= 5
			LIMIT 5)
		SELECT COUNT(*) FROM table3);
RETURN @numOfSpot;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetParkingID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetParkingID`(_logID INT) RETURNS int
BEGIN
	RETURN (SELECT ParkingID FROM Location WHERE LogID = _logID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetSpotID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetSpotID`(_logID INT) RETURNS int
BEGIN
	RETURN (SELECT LocationID FROM Location WHERE LogID = _logID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetTransactionID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetTransactionID`(_cardNumber BIGINT) RETURNS int
BEGIN

RETURN (SELECT TransactionID FROM Transaction WHERE CardNumber = _cardNumber);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `GetVehicleID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `GetVehicleID`(_licensePlate VARCHAR(9), _state VARCHAR(2), _size VARCHAR(10)) RETURNS int
BEGIN
	RETURN (SELECT VehicleID FROM Vehicle WHERE LicensePlate = _licensePlate AND State = _state AND Size = _size);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CalculateAmountDue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculateAmountDue`(_licensePlate VARCHAR(9), _state VARCHAR(2), _size VARCHAR(10))
BEGIN
	SET @_vehicleID = GetVehicleID(_licensePlate, _state, _size);
    SET @_logID = GetLogID(@_vehicleID);
	
    SET @_outDate = (CURDATE());
    SET @_outTime = (CURTIME());
    
    SET @_inData = (SELECT CONCAT(InDate, " ", InTime)FROM Log WHERE LogID = @_logID);
    SET @_outData = (SELECT CONCAT(@_outDate, " ", @_outTime));
    
    SET @_timeSpent = (SELECT TIMESTAMPDIFF(SECOND, @_inData, @_outData));
    
	SET @_amountDue = (ROUND(((@_timeSpent / 3600) * 10), 2));
    
    CALL PopulateLog(@_logID, @_outDate, @_outTime, @_amountDue);
    
    SELECT @_amountDue as 'Value';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CancelPayment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelPayment`(_licensePlate VARCHAR(9), _state VARCHAR(2), _size VARCHAR(10))
BEGIN
	SET @_vehicleID = GetVehicleID(_licensePlate, _state, _size);
    SET @_logID = GetLogID(@_vehicleID);
    
    UPDATE Log
    SET OutDate = null, OutTime = null, AmmountToPay = null
    WHERE LogID = @_logID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ClearDatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ClearDatabase`()
BEGIN
	SET SQL_SAFE_UPDATES = 0;
	UPDATE Garage SET IsOccupied = false WHERE IsOccupied = true;
    DELETE FROM Location;
    DELETE FROM Log;
    DELETE FROM Transaction;
	DELETE FROM Vehicle;
    
    ALTER TABLE Location AUTO_INCREMENT = 1;
    ALTER TABLE Log AUTO_INCREMENT = 1;
    ALTER TABLE Transaction AUTO_INCREMENT = 1;
    ALTER TABLE Vehicle AUTO_INCREMENT = 1;
    SET SQL_SAFE_UPDATES = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DoesVehicleExist` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DoesVehicleExist`(_licensePlate VARCHAR(9), _state VARCHAR(2))
BEGIN
	IF EXISTS(SELECT VehicleID FROM Vehicle WHERE LicensePlate = _licensePlate AND State = _state) Then
	  SELECT 'True' AS `Value`;
	ELSE
	  SELECT 'False'AS `Value`;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DoesVehicleMatch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DoesVehicleMatch`(_licensePlate VARCHAR(9), _state VARCHAR(2), _size VARCHAR(10))
BEGIN
	IF EXISTS(SELECT VehicleID FROM Vehicle WHERE LicensePlate = _licensePlate AND State = _state AND Size = _size) Then
	  SELECT 'True' AS `Value`;
	ELSE
	  SELECT 'False'AS `Value`;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FillConsecutiveSpots` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FillConsecutiveSpots`(_licensePlate VARCHAR(9), _state VARCHAR(2), _parkingID INT)
BEGIN
	SET @vehicleID = (SELECT VehicleID FROM Vehicle WHERE LicensePlate = _licensePlate AND State = _state);
    SET @logID = (SELECT LogID FROM Log WHERE InDate = @currentDate AND InTime = @currentTime);
    
    CALL `PopulateLocation` (_parkingID, @vehicleID, @logID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FinishLog` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FinishLog`(_logID INT, _transactionID INT)
BEGIN
	UPDATE Log SET TransactionID = _transactionID WHERE LogID = _logID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllParkingDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllParkingDetails`()
BEGIN
	SELECT Location.LocationID, Garage.FloorNumber, Garage.SpotSize, Garage.SpotNumber, Vehicle.Size, Vehicle.LicensePlate, Vehicle.State, Log.InDate, Log.InTime
		FROM Location
		INNER JOIN Garage ON Location.ParkingID = Garage.ParkingID
		INNER JOIN Vehicle ON Location.VehicleID = Vehicle.VehicleID
		INNER JOIN Log On Location.LogID = Log.LogID
        WHERE Location.ParkingID IS NOT NULL AND Location.VehicleID IS NOT NULL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetConsecutiveSpots` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetConsecutiveSpots`(_floorNumber TINYINT, _numberOfSpots INT, _size VARCHAR(10))
BEGIN
	WITH table1 as 
	(SELECT *,
		ROW_NUMBER() OVER (ORDER BY ParkingID) as rowNumber,
        ParkingID - (ROW_NUMBER() OVER (ORDER BY ParkingID)) as difference
        FROM Garage
        WHERE IsOccupied = false AND FloorNumber = _floorNumber AND SpotSize = _size),
	table2 as 
	(SELECT *, 
		COUNT(*) OVER(PARTITION BY difference) AS noOfRecords 
		FROM table1)
	SELECT ParkingID
	FROM table2
	WHERE noOfRecords >= _numberOfSpots
	LIMIT _numberOfSpots;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetEmptySpot` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmptySpot`(_size VARCHAR(10))
BEGIN
	IF (_size = 'Motorcycle') THEN
		IF (SELECT COUNT(*) FROM Garage WHERE SpotSize = _size AND IsOccupied = false) > 0 THEN
			SELECT MIN(ParkingID) AS 'ParkingID' FROM Garage WHERE SpotSize = _size AND IsOccupied = false;
		ELSEIF (SELECT COUNT(*) FROM Garage WHERE SpotSize = 'Compact' AND IsOccupied = false) > 0 THEN
			SELECT MIN(ParkingID) AS 'ParkingID' FROM Garage WHERE SpotSize = 'Compact' AND IsOccupied = false;
		ELSEIF (SELECT COUNT(*) FROM Garage WHERE SpotSize = 'Large' AND IsOccupied = false) > 0 THEN
			SELECT MIN(ParkingID) AS 'ParkingID' FROM Garage WHERE SpotSize = 'Large' AND IsOccupied = false;
		END IF;
	ELSEIF (_size = 'Compact') THEN
		IF (SELECT COUNT(*) FROM Garage WHERE SpotSize = _size AND IsOccupied = false) > 0 THEN
			SELECT MIN(ParkingID) AS 'ParkingID' FROM Garage WHERE SpotSize = _size AND IsOccupied = false;
		ELSEIF (SELECT COUNT(*) FROM Garage WHERE SpotSize = 'Large' AND IsOccupied = false) > 0 THEN
			SELECT MIN(ParkingID) AS 'ParkingID' FROM Garage WHERE SpotSize = 'Large' AND IsOccupied = false;
		END IF;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetParkedVehicle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetParkedVehicle`(_licensePlate VARCHAR(9), _state VARCHAR(2))
BEGIN
	SELECT Location.LocationID, Garage.FloorNumber, Garage.SpotSize, Garage.SpotNumber, Vehicle.Size, Vehicle.LicensePlate, Vehicle.State, Log.InDate, Log.InTime
		FROM Location
		INNER JOIN Garage ON Location.ParkingID = Garage.ParkingID
		INNER JOIN Vehicle ON Location.VehicleID = Vehicle.VehicleID
		INNER JOIN Log On Location.LogID = Log.LogID
		WHERE Vehicle.LicensePlate = _licensePlate AND Vehicle.State = _state;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetParkingDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetParkingDetails`(_licensePlate VARCHAR(9), _state VARCHAR(2))
BEGIN
	SELECT Location.LocationID, Garage.FloorNumber, Garage.SpotSize, Garage.SpotNumber, Vehicle.Size, Vehicle.LicensePlate, Vehicle.State, Log.InDate, Log.InTime
		FROM Location
		INNER JOIN Garage ON Location.ParkingID = Garage.ParkingID
		INNER JOIN Vehicle ON Location.VehicleID = Vehicle.VehicleID
		INNER JOIN Log On Location.LogID = Log.LogID
		WHERE Vehicle.LicensePlate = _licensePlate AND Vehicle.State = _state;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InitializeGarage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InitializeGarage`(_parkingID INT, _floorNumber TINYINT, _spotNumber TINYINT, _size VARCHAR(10))
BEGIN
	INSERT INTO Garage (ParkingID, FloorNumber, SpotNumber, SpotSize, IsOccupied)
    VALUES (_parkingID, _floorNumber, _spotNumber, _size, false);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InitializeLog` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InitializeLog`(_inDate DATE, _inTime TIME)
BEGIN
	INSERT INTO Log (InDate, InTime, OutDate, OutTime, AmmountToPay, TransactionID)
    VALUES (_inDate, _inTime, null, null, null, null);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `IsGarageInitialized` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `IsGarageInitialized`()
BEGIN
	IF EXISTS(SELECT 1 FROM Garage) Then
		SELECT 'True' AS `Value`;
	ELSE
        SELECT 'False' AS `Value`;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `OccupyGarage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `OccupyGarage`(_parkingID INT)
BEGIN
	UPDATE Garage SET IsOccupied = TRUE WHERE ParkingID = _parkingID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ParkVehicle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ParkVehicle`(_licensePlate VARCHAR(9), _state VARCHAR(2), _size VARCHAR(10))
BEGIN
	
    IF (SELECT COUNT(*) FROM Vehicle WHERE LicensePlate = _licensePlate AND State = _state) = 0 THEN
		SET @_currentDate = CURDATE();
		SET @_currentTime = TIME_FORMAT(CURTIME(), "%T");
        
        IF (_size = 'Large') THEN
			SET @_numOfFloors = 5;
            SET @_numOfConsecutiveSpots = 5;
            SET @_floorNumber = 1;
            
			Test_LOOP: LOOP
				SET @_numOfAvailableSpots = GetNumberOfConsecutiveSpots(@_floorNumber, _size);
				
                IF (@_numOfAvailableSpots = 5) THEN
					SET @_spot = GetFirstOfConsecutiveSpots(@_floorNumber, 'large');
                    
                    CALL `PopulateVehicle` (_licensePlate, _state, _size);
					SET @_vehicleID = (SELECT VehicleID FROM Vehicle WHERE LicensePlate = _licensePlate AND State = _state);
					
					CALL `OccupyGarage` (@_spot);
					CALL `InitializeLog` (@_currentDate, @_currentTime);
					SET @_logID = (SELECT LogID FROM Log WHERE InDate = @_currentDate AND InTime = @_currentTime);
					
					CALL `PopulateLocation` (@_spot, @_vehicleID, @_logID);
                    
					SET @_counter = 2;
                    
                    Parking_Loop: LOOP
						IF (@_counter > 5) THEN
							SELECT 'True' AS `Value`;
							LEAVE Test_LOOP;
						ELSE
							SET @_spot = @_spot + 1;
							CALL `OccupyGarage` (@_spot);
                            CALL `PopulateLocation` (@_spot, @_vehicleID, @_logID);
						END IF;
                        SET @_counter = @_counter + 1;
                    END LOOP Parking_Loop;
				ELSE
					SET @_floorNumber = @_floorNumber + 1;
                END IF;
					
				IF (@_floorNumber > @_numOfFloors) THEN
					SELECT 'False' AS `Value`;
					LEAVE Test_LOOP;
				END IF;
            END LOOP Test_LOOP;
		ELSE
			IF (SELECT COUNT(*) FROM Garage WHERE IsOccupied = 'false' AND SpotSize = _size) > 0 THEN
				CALL `PopulateVehicle` (_licensePlate, _state, _size);
                SET @_vehicleID = (SELECT VehicleID FROM Vehicle WHERE LicensePlate = _licensePlate AND State = _state);
                
                SET @_spot = GetEmptySpot(_size);
                
                CALL `OccupyGarage` (@_spot);
				CALL `InitializeLog` (@_currentDate, @_currentTime);
				SET @_logID = (SELECT LogID FROM Log WHERE InDate = @_currentDate AND InTime = @_currentTime);
                
                CALL `PopulateLocation` (@_spot, @_vehicleID, @_logID);
                
                SELECT 'True' AS `Value`;
			ELSE
				SELECT 'False' AS `Value`;
            END IF;
		END IF;
	ELSE
		SELECT 'False' AS `Value`;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PopulateGarage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PopulateGarage`(_parkingID INT, _floorNumber TINYINT, _spotNumber TINYINT, _size VARCHAR(10))
BEGIN
	INSERT INTO Garage (ParkingID, FloorNumber, SpotNumber, SpotSize, IsOccupied)
    VALUES (_parkingID, _floorNumber, _spotNumber, _size, false);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PopulateLocation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PopulateLocation`(_parkingID INT, _vehicleID INT, _logID INT)
BEGIN
	INSERT INTO Location (ParkingID, VehicleID, LogID)
    VALUES (_parkingID, _vehicleID, _logID);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PopulateLog` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PopulateLog`(_logID INT, _outDate DATE, _outTime TIME, _amountDue DOUBLE)
BEGIN
	UPDATE Log
    SET OutDate = _outDate, OutTime = _outTime, AmmountToPay = _amountDue
    WHERE LogID = _logID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PopulateTransaction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PopulateTransaction`(_cardNumber BIGINT)
BEGIN
	INSERT INTO Transaction (CardNumber)
    VALUES (_cardNumber);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PopulateVehicle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PopulateVehicle`(_licensePlate VARCHAR(9), _state VARCHAR(2), _size VARCHAR(10))
BEGIN
	INSERT INTO Vehicle (LicensePlate, State, Size)
    VALUES (_licensePlate, _state, _size);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RemoveVehicle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RemoveVehicle`(_vehicleID INT)
BEGIN
	DELETE FROM Vehicle WHERE VehicleID = _vehicleID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UnOccupyGarage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UnOccupyGarage`(_parkingID INT)
BEGIN
	UPDATE Garage SET IsOccupied = FALSE WHERE ParkingID = _parkingID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UnParkVehicle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UnParkVehicle`(_licensePlate VARCHAR(9), _state VARCHAR(2), _size VARCHAR(10), _cardNumber BIGINT)
BEGIN
	
    IF EXISTS(SELECT VehicleID FROM Vehicle WHERE LicensePlate = _licensePlate AND State = _state AND Size = _size) THEN
		SET @_vehicleID = GetVehicleID(_licensePlate, _state, _size);
        SET @_logID = GetLogID(@_vehicleID);
        
        IF EXISTS (SELECT TransactionID FROM Transaction WHERE CardNumber = _cardNumber) THEN
			SET @_transactionID = GetTransactionID(_cardNumber);
		ELSE
			CALL PopulateTransaction(_cardNumber);
			SET @_transactionID = GetTransactionID(_cardNumber);
		END IF;
        
        CALL FinishLog(@_logID, @_transactionID);
        
        IF (_size = 'Large') THEN
			
			SET SQL_SAFE_UPDATES = 0;
			DELETE table1 FROM Location as table1
			INNER JOIN Location as table2
			WHERE table1.ParkingID > table2.ParkingID AND table1.VehicleID = table2.VehicleID AND table1.VehicleID = @_vehicleID;
			SET SQL_SAFE_UPDATES = 1;
        
			SET @_locationID = GetLocationID(@_logID);
            SET @_parkingID = GetParkingID(@_logID);
            SET @_counter = 1;
            CALL UnOccupyGarage(@_parkingID);
            
            unoccupyLoop: LOOP
				SET @_counter = @_counter + 1;
                IF (@_counter > 5) THEN
					LEAVE unoccupyLoop;
                END IF;
                SET @_parkingID = @_parkingID + 1;
				CALL UnOccupyGarage(@_parkingID);
            END LOOP unoccupyLOOP;
        
			CALL UpdateLocation(@_locationID);
        
			SET SESSION FOREIGN_KEY_CHECKS=0;
            
            CALL RemoveVehicle(@_vehicleID);
            
            SET SESSION FOREIGN_KEY_CHECKS=1;
        
			SELECT 'True' AS `Value`;
        ELSE
            SET @_locationID = GetLocationID(@_logID);
            SET @_parkingID = GetParkingID(@_logID);
            
            CALL UnOccupyGarage(@_parkingID);
            CALL UpdateLocation(@_locationID);
            
            SET SESSION FOREIGN_KEY_CHECKS=0;
            
            CALL RemoveVehicle(@_vehicleID);
            
            SET SESSION FOREIGN_KEY_CHECKS=1;
			
            Select 'True' AS `Value`;
        END IF;
    ELSE
		SELECT 'False' AS `Value`;
    END IF;



	-- Check If Vehicle Exists
		-- Get VehicleID
        -- Get LogID
        -- Populate Transaction
        -- Populate Log
        -- UnOccupy Spots
        -- Make Fields Null In Location
        -- Delete Vehicle
        
	-- Else
		-- Do Nothing
		
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateLocation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateLocation`(_locationID INT)
BEGIN
    UPDATE Location SET ParkingID = NULL, VehicleID = NULL WHERE LocationID = _locationID;
END ;;
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

-- Dump completed on 2022-04-19 19:03:29
