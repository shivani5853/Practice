-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.10.1

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
-- Table structure for table `App_Parameters`
--

DROP TABLE IF EXISTS `App_Parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `App_Parameters` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Key_Type` varchar(10) DEFAULT NULL,
  `Key_Value` varchar(10) DEFAULT NULL,
  `key_text` varchar(30) NOT NULL,
  `Cur_Status` varchar(10) DEFAULT NULL,
  `Lastupd_User` varchar(10) DEFAULT NULL,
  `Lastupd_Stamp` date DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_User` int(11) DEFAULT NULL,
  `Seq_Num` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `creator_User` (`creator_User`),
  CONSTRAINT `App_Parameters_ibfk_1` FOREIGN KEY (`creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `App_Parameters`
--

LOCK TABLES `App_Parameters` WRITE;
/*!40000 ALTER TABLE `App_Parameters` DISABLE KEYS */;
/*!40000 ALTER TABLE `App_Parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Bank_Details`
--

DROP TABLE IF EXISTS `Candidate_Bank_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Bank_Details` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Candidate_Id` int(11) NOT NULL,
  `Account_Number` bigint(20) NOT NULL,
  `is_Account_Num_Verified` tinyint(1) NOT NULL,
  `Pan_Number` varchar(10) DEFAULT NULL,
  `is_Pan_Number_Verified` tinyint(1) NOT NULL,
  `Addhaar_Number` bigint(20) DEFAULT NULL,
  `is_Addhaar_Number_Verified` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Pan_Number` (`Pan_Number`),
  UNIQUE KEY `Addhaar_Number` (`Addhaar_Number`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Candidate_Bank_Details_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Bank_Details`
--

LOCK TABLES `Candidate_Bank_Details` WRITE;
/*!40000 ALTER TABLE `Candidate_Bank_Details` DISABLE KEYS */;
INSERT INTO `Candidate_Bank_Details` VALUES (1,1,987665434322,1,'123456789',1,55465667767,1,'2019-12-13 07:16:43',3),(29,2,98556612345,1,'54346789',1,5546567767,1,'2019-12-13 07:26:45',4),(30,3,88766543456,1,'34456789',1,546890767,1,'2019-12-13 07:26:45',2),(31,4,754665467784,1,'3533456789',1,5435567767,1,'2019-12-13 07:26:45',1),(32,5,87866547855,1,'187456789',1,5645667767,1,'2019-12-13 07:26:45',5),(33,6,76566548785,1,'176456789',1,445465667767,1,'2019-12-13 07:26:45',2),(34,7,6789667344,1,'545456789',1,5246667767,1,'2019-12-13 07:26:45',2),(35,8,678905433324,1,'5553456789',1,134567767,1,'2019-12-13 07:26:45',2),(36,9,7989054324,1,'15456789',1,4894667767,1,'2019-12-13 07:26:45',2),(37,10,89995434443,1,'1789956789',1,123345456,1,'2019-12-13 07:26:45',3);
/*!40000 ALTER TABLE `Candidate_Bank_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Documents`
--

DROP TABLE IF EXISTS `Candidate_Documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Documents` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Candidate_Id` int(11) NOT NULL,
  `Doc_Type` varchar(20) DEFAULT NULL,
  `Doc_Path_Status` varchar(10) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `creator_User` (`creator_User`),
  CONSTRAINT `Candidate_Documents_ibfk_1` FOREIGN KEY (`creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Documents`
--

LOCK TABLES `Candidate_Documents` WRITE;
/*!40000 ALTER TABLE `Candidate_Documents` DISABLE KEYS */;
INSERT INTO `Candidate_Documents` VALUES (1,1,'pdf','true','2019-12-13 08:51:07',1),(2,2,'pdf','true','2019-12-13 08:51:07',2),(3,3,'pdf','true','2019-12-13 08:51:07',3),(4,4,'pdf','true','2019-12-13 08:51:07',4),(5,5,'pdf','true','2019-12-13 08:51:07',5),(6,6,'pdf','true','2019-12-13 08:51:07',1),(7,7,'pdf','true','2019-12-13 08:51:07',2),(8,8,'pdf','true','2019-12-13 08:51:07',3),(9,9,'pdf','true','2019-12-13 08:51:07',4),(10,10,'pdf','true','2019-12-13 08:51:07',5);
/*!40000 ALTER TABLE `Candidate_Documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Education_Detailed_Check`
--

DROP TABLE IF EXISTS `Candidate_Education_Detailed_Check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Education_Detailed_Check` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Candidate_Id` int(11) NOT NULL,
  `Field_Name` varchar(20) DEFAULT NULL,
  `is_Verified` tinyint(1) DEFAULT NULL,
  `Lastupd_Stamp` date DEFAULT NULL,
  `Lastupd_User` varchar(20) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Candidate_Education_Detailed_Check_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Education_Detailed_Check`
--

LOCK TABLES `Candidate_Education_Detailed_Check` WRITE;
/*!40000 ALTER TABLE `Candidate_Education_Detailed_Check` DISABLE KEYS */;
/*!40000 ALTER TABLE `Candidate_Education_Detailed_Check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Qualification`
--

DROP TABLE IF EXISTS `Candidate_Qualification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Qualification` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Candidate_Id` int(11) NOT NULL,
  `Diploma` varchar(10) DEFAULT NULL,
  `Degree_Name` varchar(10) NOT NULL,
  `is_Degree_Name_Verified` tinyint(1) NOT NULL,
  `Employee_Descipline_Verified` tinyint(1) DEFAULT NULL,
  `Passing_Year` int(4) NOT NULL,
  `is_Passing_Year_Verified` tinyint(1) NOT NULL,
  `Final_Year_Per` decimal(10,0) NOT NULL,
  `is_Final_year_Per_Verified` tinyint(1) DEFAULT NULL,
  `Training_Institute` varchar(20) DEFAULT NULL,
  `is_Training_Institute_Verified` tinyint(1) DEFAULT NULL,
  `Training_Duration_Month` int(3) DEFAULT NULL,
  `is_Training_Duration_Month_Verified` tinyint(1) DEFAULT NULL,
  `Other_Training` varchar(10) DEFAULT NULL,
  `is_Other_Training_Verified` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Candidate_Qualification_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Qualification`
--

LOCK TABLES `Candidate_Qualification` WRITE;
/*!40000 ALTER TABLE `Candidate_Qualification` DISABLE KEYS */;
INSERT INTO `Candidate_Qualification` VALUES (1,1,'Ece','B.E',1,1,2019,1,90,1,'Jspider',1,6,1,'Universal',1,'2019-12-13 07:40:13',2),(2,2,'Ece','B.E',1,1,2019,1,90,1,'Jspider',1,6,1,'Universal',1,'2019-12-13 08:35:10',2),(3,3,'EEE','B.Tech',1,1,2018,1,90,1,'Jspider',1,3,1,'Universal',1,'2019-12-13 08:36:16',1),(4,4,'CSE','B.E',1,1,2017,1,91,1,'Knowlegde',1,5,1,'Universal',1,'2019-12-13 08:36:16',1),(5,5,'ME','B.E',1,1,2018,1,70,1,'Jspider',1,6,1,'Universal',1,'2019-12-13 08:36:16',3),(6,6,'CSE','B.E',1,1,2019,1,80,1,'Jspider',1,6,1,'Universal',1,'2019-12-13 08:36:16',4),(7,7,'Ece','B.E',1,1,2019,1,98,1,'Universal',1,6,1,'Universal',1,'2019-12-13 08:36:16',5),(8,8,'EEE','B.E',1,1,2017,1,67,1,'Jspider',1,9,1,'Universal',1,'2019-12-13 08:36:16',5),(9,9,'BIO','B.E',1,1,2018,1,89,1,'Jspider',1,6,1,'Universal',1,'2019-12-13 08:36:16',4),(10,10,'CI','B.E',1,1,2019,1,46,1,'Jspider',1,6,1,'Universal',1,'2019-12-13 08:36:16',3);
/*!40000 ALTER TABLE `Candidate_Qualification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Candidate_Tech_Stack_Assignment`
--

DROP TABLE IF EXISTS `Candidate_Tech_Stack_Assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Candidate_Tech_Stack_Assignment` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Requirement_Id` int(11) NOT NULL,
  `Candidate_Id` int(11) NOT NULL,
  `Assign_Date` date DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  KEY `Candidate_Id` (`Candidate_Id`),
  CONSTRAINT `Candidate_Tech_Stack_Assignment_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Candidate_Tech_Stack_Assignment_ibfk_2` FOREIGN KEY (`Candidate_Id`) REFERENCES `Fellowship_Candidate` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Candidate_Tech_Stack_Assignment`
--

LOCK TABLES `Candidate_Tech_Stack_Assignment` WRITE;
/*!40000 ALTER TABLE `Candidate_Tech_Stack_Assignment` DISABLE KEYS */;
INSERT INTO `Candidate_Tech_Stack_Assignment` VALUES (1,1,1,'2018-02-22',1,'2019-12-14 05:38:17',1),(2,2,2,'2018-03-22',1,'2019-12-14 05:38:17',2),(3,3,3,'2018-04-22',1,'2019-12-14 05:38:17',5),(4,4,4,'2018-05-22',1,'2019-12-14 05:38:17',1),(5,5,5,'2018-06-22',1,'2019-12-14 05:38:17',2),(6,6,6,'2018-07-22',1,'2019-12-14 05:38:17',3),(7,7,7,'2018-08-22',1,'2019-12-14 05:38:17',4),(8,8,8,'2018-09-22',1,'2019-12-14 05:38:17',5);
/*!40000 ALTER TABLE `Candidate_Tech_Stack_Assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `Location` varchar(10) NOT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `creator_User` (`creator_User`),
  CONSTRAINT `Company_ibfk_1` FOREIGN KEY (`creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (1,'SoftSurva','UmayaTechPark','Banaglore',1,'2019-12-13 12:59:03',1),(2,'UBQ','UmayaTechPark','Banaglore',1,'2019-12-13 12:59:03',2),(3,'MTAP','UmayaTechPark','Banaglore',1,'2019-12-13 12:59:03',3),(4,'TekSystem','UmayaTechPark','Banaglore',1,'2019-12-13 12:59:03',4),(5,'MINDGame','UmayaTechPark','Banaglore',1,'2019-12-13 12:59:03',5),(6,'SoftTech','UmayaTechPark','Banaglore',1,'2019-12-13 12:59:03',1),(7,'OrchidSoft','UmayaTechPark','Banaglore',1,'2019-12-13 12:59:03',2),(8,'AmitSoft','UmayaTechPark','Banaglore',1,'2019-12-13 12:59:03',3),(9,'MindTree','UmayaTechPark','Banaglore',1,'2019-12-13 12:59:03',4),(10,'Oracle','ManytaTechPark','Banaglore',1,'2019-12-13 12:59:03',5);
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company_Requirement`
--

DROP TABLE IF EXISTS `Company_Requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company_Requirement` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Company_Id` int(11) NOT NULL,
  `Requested_Month` varchar(10) DEFAULT NULL,
  `City` varchar(10) NOT NULL,
  `is_Doc_Verification` tinyint(1) DEFAULT NULL,
  `Requirement_Doc_Path` varchar(20) DEFAULT NULL,
  `no_Of_Engg` int(11) DEFAULT NULL,
  `Tech_Stack_Id` int(11) NOT NULL,
  `Tech_Type_Id` int(11) NOT NULL,
  `Marker_Program_Id` int(11) NOT NULL,
  `Lead_Id` int(11) NOT NULL,
  `Ideation_Engg_Id` int(11) NOT NULL,
  `Buddy_Engg_Id` int(11) DEFAULT NULL,
  `Special_Remark` varchar(30) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  KEY `Company_Id` (`Company_Id`),
  KEY `Tech_Stack_Id` (`Tech_Stack_Id`),
  KEY `Tech_Type_Id` (`Tech_Type_Id`),
  KEY `Marker_Program_Id` (`Marker_Program_Id`),
  CONSTRAINT `Company_Requirement_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Company_Requirement_ibfk_2` FOREIGN KEY (`Company_Id`) REFERENCES `Company` (`Id`),
  CONSTRAINT `Company_Requirement_ibfk_3` FOREIGN KEY (`Tech_Stack_Id`) REFERENCES `Tech_Stack` (`Id`),
  CONSTRAINT `Company_Requirement_ibfk_4` FOREIGN KEY (`Tech_Type_Id`) REFERENCES `Tech_Type` (`Id`),
  CONSTRAINT `Company_Requirement_ibfk_5` FOREIGN KEY (`Marker_Program_Id`) REFERENCES `Maker_Program` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company_Requirement`
--

LOCK TABLES `Company_Requirement` WRITE;
/*!40000 ALTER TABLE `Company_Requirement` DISABLE KEYS */;
INSERT INTO `Company_Requirement` VALUES (1,1,'March','Bangalore',1,'//Home//img1.jpg',2,1,1,1,1,1,1,'Good',1,'2019-12-14 05:34:49',1);
/*!40000 ALTER TABLE `Company_Requirement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Fellowship_Candidate`
--

DROP TABLE IF EXISTS `Fellowship_Candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Fellowship_Candidate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(20) NOT NULL,
  `Middle_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `EmailId` varchar(30) DEFAULT NULL,
  `Hired_City` varchar(10) NOT NULL,
  `Degree` varchar(10) NOT NULL,
  `Hired_Date` date NOT NULL,
  `Mobile_Number` bigint(20) DEFAULT NULL,
  `Permanent_Pincode` int(11) DEFAULT NULL,
  `Hired_Lab` varchar(10) DEFAULT NULL,
  `Attitude` varchar(20) DEFAULT NULL,
  `Communication_Remark` varchar(30) DEFAULT NULL,
  `Knowledge_Remark` varchar(30) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) DEFAULT NULL,
  `Birth_Date` date NOT NULL,
  `Is_Birth_Date_Verified` tinyint(1) DEFAULT NULL,
  `Parents_Name` varchar(20) NOT NULL,
  `Parent_Occupation` varchar(10) DEFAULT NULL,
  `Parents_Mobile_Number` bigint(20) DEFAULT NULL,
  `Parents_Annual_Salary` bigint(20) DEFAULT NULL,
  `Local_Address` varchar(30) DEFAULT NULL,
  `Permanent_Address` varchar(30) NOT NULL,
  `Photo_Path` varchar(30) NOT NULL,
  `Joining_Date` date DEFAULT NULL,
  `Candidate_Status` varchar(10) NOT NULL,
  `Personal_Information` varchar(30) DEFAULT NULL,
  `Bank_Information` varchar(30) DEFAULT NULL,
  `Educational_Information` varchar(30) NOT NULL,
  `Document_Status` varchar(10) NOT NULL,
  `Remark` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Fellowship_Candidate_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Fellowship_Candidate`
--

LOCK TABLES `Fellowship_Candidate` WRITE;
/*!40000 ALTER TABLE `Fellowship_Candidate` DISABLE KEYS */;
INSERT INTO `Fellowship_Candidate` VALUES (1,'Shikha','','kumari','shika@gmail.com','Bangalore','B.Tech','2018-02-28',8789911404,456321,'BridgeLabz','Good','Good','Good','2019-12-13 06:47:09',4,'1994-02-23',1,'SudamaSingh','Manager',9876543212,500000000,'bangalore','jamshedpur','http://abc.jpg','2018-05-12','Good','1','1','1','yes','Good'),(2,'Rahul','','kumar','Rahul@gmail.com','Bangalore','B.Tech','2018-02-28',8789911405,456320,'BridgeLabz','Good','Good','Good','2019-12-13 06:49:58',3,'1994-05-23',1,'AvinabSingh','Manager',9876543215,400000000,'bangalore','Ranchi','http://mno.jpg','2018-05-12','Good','1','1','1','yes','Good'),(3,'Akash','','kumar','akash@gmail.com','Bangalore','B.Tech','2018-02-20',8789911604,426321,'BridgeLabz','Good','Good','Good','2019-12-13 06:55:40',2,'1994-02-20',1,'SudamaSingh','Manager',9876543213,1000000000,'bangalore','jamshedpur','http://ds.jpg','2018-05-12','Good','1','1','1','yes','Good'),(4,'Manisha','','kumari','manisha@gmail.com','Bangalore','B.Tech','2018-06-03',8789922604,428321,'BridgeLabz','Good','Good','Good','2019-12-13 07:00:19',1,'1994-05-09',1,'Mahapatra','Writter',9876543637,1000000,'bangalore','Gunupur','http://ghh.jpg','2018-06-22','Good','1','1','1','yes','Good'),(5,'Harshita','','kumari','Harshita@gmail.com','Mumbai','B.Tech','2018-02-12',87899731604,446321,'BridgeLabz','Bad','Bad','Good','2019-12-13 07:05:16',5,'1993-07-07',1,'T.D.Singh','Driver',9876543833,9000000,'bangalore','Orissa','http://mno.jpg','2018-05-03','Bad','1','1','1','yes','Bad'),(6,'Avinash','','kumar','avinash@gmail.com','Pune','B.Tech','2018-01-20',8789917788,426281,'BridgeLabz','Bad','Average','Average','2019-12-13 07:05:16',1,'1994-02-20',1,'K.D','Manager',9876543213,1000000000,'bangalore','Bokaro','http://dgdh.jpg','2018-05-12','Bad','1','1','1','yes','Good'),(7,'Arvind','','kumar','Arvind@gmail.com','Banaglore','B.Tech','2018-11-20',9999917788,926281,'BridgeLabz','Good','Average','Average','2019-12-13 07:11:03',1,'1991-11-20',1,'Raman','Manager',987623213,3000000,'bangalore','Kolkata','http://dh.jpg','2018-09-12','Good','1','1','1','yes','Good'),(8,'Raman','','kumar','raman@gmail.com','Pune','B.Tech','2018-01-20',8789917788,426281,'BridgeLabz','Bad','Average','Average','2019-12-13 07:11:03',4,'1994-02-20',1,'K.D','Manager',9876543213,1000000000,'bangalore','Bokaro','http://dgdh.jpg','2018-05-12','Bad','1','1','1','yes','Good'),(9,'Sneha','','kumari','sneha@gmail.com','Pune','B.Tech','2018-01-20',8789917788,426281,'BridgeLabz','Bad','Average','Average','2019-12-13 07:11:03',3,'1994-02-20',1,'K.D','Manager',9876543213,1000000000,'bangalore','Bokaro','http://dgdh.jpg','2018-05-12','Bad','1','1','1','yes','Good'),(10,'Avinav','','kumar','Avinav@gmail.com','Banglore','B.Tech','2018-01-20',8789917788,426281,'BridgeLabz','Bad','Average','Average','2019-12-13 07:11:03',5,'1994-02-20',1,'K.D','Manager',9876543213,1000000000,'bangalore','Bokaro','http://dgdh.jpg','2018-05-12','Bad','1','1','1','yes','Good');
/*!40000 ALTER TABLE `Fellowship_Candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hired_Candidate`
--

DROP TABLE IF EXISTS `Hired_Candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hired_Candidate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(30) NOT NULL,
  `Middle_Name` varchar(30) DEFAULT NULL,
  `Last_Name` varchar(30) DEFAULT NULL,
  `EmailId` varchar(40) DEFAULT NULL,
  `Hired_City` varchar(20) DEFAULT NULL,
  `Degree` varchar(10) NOT NULL,
  `Hired_Date` date DEFAULT NULL,
  `Mobile_Number` bigint(20) NOT NULL,
  `Permanent_Pincode` int(11) DEFAULT NULL,
  `Hired_Lab` varchar(10) DEFAULT NULL,
  `Attitude` varchar(30) DEFAULT NULL,
  `Communication_Remark` varchar(40) DEFAULT NULL,
  `Knowledge_Remark` varchar(40) DEFAULT NULL,
  `Aggregate_percentage` double DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Hired_Candidate_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hired_Candidate`
--

LOCK TABLES `Hired_Candidate` WRITE;
/*!40000 ALTER TABLE `Hired_Candidate` DISABLE KEYS */;
INSERT INTO `Hired_Candidate` VALUES (1,'Shiv','kam','kasyap','shiv@gmail.com','Bangalore','B.Tech','2018-02-22',8789911202,456321,'BridgeLabz','Good','Good','Good',98,'Accept','2019-12-13 05:10:04',3),(2,'Ravi',' ','kam','ravi@gmail.com','Bangalore','B.Tech','2018-02-12',8789911303,456321,'BridgeLabz','Good','Good','Good',88,'Accept','2019-12-13 05:37:25',4),(3,'Ram','Kumar','Singh','ram@gmail.com','Bangalore','B.Tech','2018-06-08',9789911202,656321,'BridgeLabz','Good','Good','Average',95.3,'Accept','2019-12-13 05:37:25',2);
/*!40000 ALTER TABLE `Hired_Candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab`
--

DROP TABLE IF EXISTS `Lab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Location` varchar(20) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `creator_User` (`creator_User`),
  CONSTRAINT `Lab_ibfk_1` FOREIGN KEY (`creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab`
--

LOCK TABLES `Lab` WRITE;
/*!40000 ALTER TABLE `Lab` DISABLE KEYS */;
INSERT INTO `Lab` VALUES (1,'BridgeLabz','Banaglore','HSR Layout Sector 4 Opposite To HSR BDA',1,'2019-12-13 12:51:23',1),(2,'BridgeLabz','Pune','Malhotra Chambers First Floor Govandi East Mumbai',1,'2019-12-13 12:51:23',2),(3,'BridgeLabz','Mumbai','Malhotra Chambers First Floor Govandi East Mumbai',1,'2019-12-13 12:51:23',3);
/*!40000 ALTER TABLE `Lab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lab_Threshold`
--

DROP TABLE IF EXISTS `Lab_Threshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lab_Threshold` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Lab_Id` int(11) NOT NULL,
  `Lab_Capacity` int(11) NOT NULL,
  `Lead_Threshold` int(11) DEFAULT NULL,
  `Ideation_Engg_Threshold` int(11) DEFAULT NULL,
  `Buddy_Engg_Threshold` int(11) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  KEY `Lab_Id` (`Lab_Id`),
  CONSTRAINT `Lab_Threshold_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Lab_Threshold_ibfk_2` FOREIGN KEY (`Lab_Id`) REFERENCES `Lab` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lab_Threshold`
--

LOCK TABLES `Lab_Threshold` WRITE;
/*!40000 ALTER TABLE `Lab_Threshold` DISABLE KEYS */;
INSERT INTO `Lab_Threshold` VALUES (1,1,100,5,4,15,'2019-12-13 13:50:41',1,1),(2,2,100,5,3,25,'2019-12-13 13:50:41',2,1),(3,3,100,5,5,20,'2019-12-13 13:50:41',3,1);
/*!40000 ALTER TABLE `Lab_Threshold` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Maker_Program`
--

DROP TABLE IF EXISTS `Maker_Program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Maker_Program` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Program_Name` varchar(20) NOT NULL,
  `Program_Type` varchar(20) NOT NULL,
  `Program_link` varchar(20) DEFAULT NULL,
  `Tech_Stack_Id` int(11) DEFAULT NULL,
  `Tech_Type_Id` int(11) DEFAULT NULL,
  `is_Program_Approved` tinyint(1) DEFAULT NULL,
  `Description` varchar(40) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `creator_User` (`creator_User`),
  KEY `Tech_Stack_Id` (`Tech_Stack_Id`),
  KEY `Tech_Type_Id` (`Tech_Type_Id`),
  CONSTRAINT `Maker_Program_ibfk_1` FOREIGN KEY (`creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Maker_Program_ibfk_2` FOREIGN KEY (`Tech_Stack_Id`) REFERENCES `Tech_Stack` (`Id`),
  CONSTRAINT `Maker_Program_ibfk_3` FOREIGN KEY (`Tech_Type_Id`) REFERENCES `Tech_Type` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Maker_Program`
--

LOCK TABLES `Maker_Program` WRITE;
/*!40000 ALTER TABLE `Maker_Program` DISABLE KEYS */;
INSERT INTO `Maker_Program` VALUES (1,'AddressBook','Java','geekforgeeks',1,1,1,'Json implementation',1,'2019-12-14 05:32:13',1),(2,'InventoryManagement','Java','geekforgeeks',2,1,1,'Json implementation',1,'2019-12-14 05:32:13',2),(3,'ClinicManagement','Java','geekforgeeks',3,1,1,'Json implementation',1,'2019-12-14 05:32:13',3),(4,'Amstrong','C#','geekforgeeks',4,1,1,'',0,'2019-12-14 05:32:13',4),(5,'SumOfTheNumber','PHP','geekforgeeks',3,1,1,'',1,'2019-12-14 05:32:13',5);
/*!40000 ALTER TABLE `Maker_Program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor`
--

DROP TABLE IF EXISTS `Mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Mentor_Type` varchar(20) NOT NULL,
  `Lab_Id` int(11) DEFAULT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  KEY `Lab_Id` (`Lab_Id`),
  CONSTRAINT `Mentor_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Mentor_ibfk_2` FOREIGN KEY (`Lab_Id`) REFERENCES `Lab` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor`
--

LOCK TABLES `Mentor` WRITE;
/*!40000 ALTER TABLE `Mentor` DISABLE KEYS */;
INSERT INTO `Mentor` VALUES (1,'Venkat','1',1,1,'2019-12-13 12:54:56',1),(2,'Varsha','2',2,1,'2019-12-13 12:54:56',2),(3,'Akashy','2',3,1,'2019-12-13 12:54:56',3);
/*!40000 ALTER TABLE `Mentor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor_Ideation_Map`
--

DROP TABLE IF EXISTS `Mentor_Ideation_Map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor_Ideation_Map` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Mentor_Id` int(11) NOT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  KEY `Mentor_Id` (`Mentor_Id`),
  CONSTRAINT `Mentor_Ideation_Map_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Mentor_Ideation_Map_ibfk_2` FOREIGN KEY (`Mentor_Id`) REFERENCES `Mentor` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor_Ideation_Map`
--

LOCK TABLES `Mentor_Ideation_Map` WRITE;
/*!40000 ALTER TABLE `Mentor_Ideation_Map` DISABLE KEYS */;
INSERT INTO `Mentor_Ideation_Map` VALUES (11,1,1,'2019-12-13 12:48:44',1),(12,2,1,'2019-12-13 12:48:44',2),(13,1,1,'2019-12-13 12:48:44',3),(14,2,1,'2019-12-13 12:48:44',4),(15,1,1,'2019-12-13 12:48:44',5);
/*!40000 ALTER TABLE `Mentor_Ideation_Map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Mentor_Tech_Stack`
--

DROP TABLE IF EXISTS `Mentor_Tech_Stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentor_Tech_Stack` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Mentor_Id` int(11) NOT NULL,
  `Tech_Stack_Id` int(11) NOT NULL,
  `Status` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  KEY `Mentor_Id` (`Mentor_Id`),
  KEY `Tech_Stack_Id` (`Tech_Stack_Id`),
  CONSTRAINT `Mentor_Tech_Stack_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`),
  CONSTRAINT `Mentor_Tech_Stack_ibfk_2` FOREIGN KEY (`Mentor_Id`) REFERENCES `Mentor` (`Id`),
  CONSTRAINT `Mentor_Tech_Stack_ibfk_3` FOREIGN KEY (`Tech_Stack_Id`) REFERENCES `Tech_Stack` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentor_Tech_Stack`
--

LOCK TABLES `Mentor_Tech_Stack` WRITE;
/*!40000 ALTER TABLE `Mentor_Tech_Stack` DISABLE KEYS */;
INSERT INTO `Mentor_Tech_Stack` VALUES (1,1,1,1,'2019-12-13 12:45:22',1),(2,2,5,1,'2019-12-13 12:45:22',2),(3,3,4,1,'2019-12-13 12:45:22',3),(4,1,3,1,'2019-12-13 12:45:22',4),(5,2,2,1,'2019-12-13 12:45:22',5),(6,3,3,1,'2019-12-13 12:45:22',1),(7,1,2,1,'2019-12-13 12:45:22',2),(8,2,1,1,'2019-12-13 12:45:22',3),(9,3,3,1,'2019-12-13 12:45:22',4),(10,3,2,1,'2019-12-13 12:45:22',5);
/*!40000 ALTER TABLE `Mentor_Tech_Stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tech_Stack`
--

DROP TABLE IF EXISTS `Tech_Stack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tech_Stack` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Tech_Name` varchar(20) NOT NULL,
  `Image_Path` varchar(20) DEFAULT NULL,
  `Framework_Cur_Status` varchar(20) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `creator_User` int(11) DEFAULT NULL,
  `Cur_Status` varchar(20) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `creator_User` (`creator_User`),
  CONSTRAINT `Tech_Stack_ibfk_1` FOREIGN KEY (`creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tech_Stack`
--

LOCK TABLES `Tech_Stack` WRITE;
/*!40000 ALTER TABLE `Tech_Stack` DISABLE KEYS */;
INSERT INTO `Tech_Stack` VALUES (1,'Java','/Home/Img1.jpg','Java+Backend','2019-12-13 10:18:17',1,'True'),(2,'Java','/Home/Img2.jpg','Java+Angular','2019-12-13 10:18:17',2,'True'),(3,'Java','/Home/Img3.jpg','Java+React','2019-12-13 10:18:17',3,'True'),(4,'Java','/Home/Img4.jpg','Java+Backend','2019-12-13 10:18:17',4,'True'),(5,'Java','/Home/Img5.jpg','Java+Angular','2019-12-13 10:18:17',5,'True'),(6,'Java','/Home/Img6.jpg','Java+Angular','2019-12-13 10:18:17',1,'True'),(7,'Java','/Home/Img7.jpg','Java+Backend','2019-12-13 10:18:17',2,'True'),(8,'Java','/Home/Img8.jpg','Java+Backend','2019-12-13 10:18:17',3,'True'),(9,'Java','/Home/Img9.jpg','Java+React+Angular','2019-12-13 10:18:17',4,'True'),(10,'Java','/Home/Img10.jpg','Java+Backend','2019-12-13 10:18:17',5,'False');
/*!40000 ALTER TABLE `Tech_Stack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tech_Type`
--

DROP TABLE IF EXISTS `Tech_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tech_Type` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Tech_Name` varchar(20) NOT NULL,
  `Cur_Status` tinyint(1) DEFAULT NULL,
  `Creator_Stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Creator_User` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Creator_User` (`Creator_User`),
  CONSTRAINT `Tech_Type_ibfk_1` FOREIGN KEY (`Creator_User`) REFERENCES `User_Details` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tech_Type`
--

LOCK TABLES `Tech_Type` WRITE;
/*!40000 ALTER TABLE `Tech_Type` DISABLE KEYS */;
INSERT INTO `Tech_Type` VALUES (1,'Java',1,'2019-12-13 13:06:26',1),(2,'React',1,'2019-12-13 13:06:26',2),(3,'C#',1,'2019-12-13 13:06:26',3),(4,'PHP',0,'2019-12-13 13:06:26',4),(5,'Python',1,'2019-12-13 13:06:26',5),(6,'Angular',1,'2019-12-13 13:06:26',1);
/*!40000 ALTER TABLE `Tech_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Details`
--

DROP TABLE IF EXISTS `User_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Details` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(30) DEFAULT NULL,
  `First_Name` varchar(20) DEFAULT NULL,
  `Last_Name` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Contact_Number` bigint(20) DEFAULT NULL,
  `Verified` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Details`
--

LOCK TABLES `User_Details` WRITE;
/*!40000 ALTER TABLE `User_Details` DISABLE KEYS */;
INSERT INTO `User_Details` VALUES (1,'shivani@gmail.com','Shivani','Kumari','admin',8789911404,1),(2,'venkat@gmail.com','Venkat','Reddy','venkat123',8789911444,1),(3,'amrutha@gmail.com','Amrutha','Sagar','amrutha123',8789911400,1),(4,'kalpesh@gmail.com','Kalpesh','Mali','kalpesh123',8789911409,1),(5,'varsha@gmail.com','Varsha','kumari','Varsha123',8789911408,1);
/*!40000 ALTER TABLE `User_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_Roles`
--

DROP TABLE IF EXISTS `User_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_Roles` (
  `User_Id` int(11) NOT NULL,
  `Role_Name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_Roles`
--

LOCK TABLES `User_Roles` WRITE;
/*!40000 ALTER TABLE `User_Roles` DISABLE KEYS */;
INSERT INTO `User_Roles` VALUES (1,'Admin'),(2,'Mentor'),(3,'TechLeadHead'),(4,'TechLead'),(5,'Mentor');
/*!40000 ALTER TABLE `User_Roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-14 17:34:36
