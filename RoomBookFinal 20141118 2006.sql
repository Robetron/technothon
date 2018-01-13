-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.15


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema rbcdatabase1
--

CREATE DATABASE IF NOT EXISTS rbcdatabase1;
USE rbcdatabase1;

--
-- Definition of table `location_table`
--

DROP TABLE IF EXISTS `location_table`;
CREATE TABLE `location_table` (
  `LOCATION_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `LocationName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_table`
--

/*!40000 ALTER TABLE `location_table` DISABLE KEYS */;
INSERT INTO `location_table` (`LOCATION_ID`,`LocationName`) VALUES 
 (1,'HJ'),
 (2,'Nagpur'),
 (3,'PT'),
 (4,'HYD SEZ');
/*!40000 ALTER TABLE `location_table` ENABLE KEYS */;


--
-- Definition of table `room_table`
--

DROP TABLE IF EXISTS `room_table`;
CREATE TABLE `room_table` (
  `ROOM_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `ROOM_NAME` varchar(255) DEFAULT NULL,
  `ROOM_TYPE` varchar(255) DEFAULT NULL,
  `CAPACITY` bigint(20) DEFAULT NULL,
  `LOCATION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROOM_ID`),
  UNIQUE KEY `ROOM_NAME` (`ROOM_NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room_table`
--

/*!40000 ALTER TABLE `room_table` DISABLE KEYS */;
INSERT INTO `room_table` (`ROOM_ID`,`ROOM_NAME`,`ROOM_TYPE`,`CAPACITY`,`LOCATION`) VALUES 
 (1,'topaz','Lab',45,'HJ'),
 (2,'Opel','Lab',50,'HJ'),
 (3,'Emerald','Assessment',14,'HJ'),
 (4,'Sapphire','Soft Skill',20,'HJ'),
 (5,'Turquoise','Soft Skill',20,'HJ'),
 (6,'Coral','Assessment',14,'HJ'),
 (7,'Platinum','Assessment',12,'HJ'),
 (8,'Ruby','Lab',33,'HJ'),
 (9,'PerL','Lab',33,'HJ'),
 (11,'Mithila','Lab',28,'PT'),
 (12,'Nalanda','Lab',38,'PT'),
 (13,'Sarnath','Lab',38,'PT'),
 (14,'Taskhashila','Lab',32,'PT'),
 (15,'Vikramsheela','Soft Skill',20,'PT'),
 (16,'Patliputra','Lab',24,'PT'),
 (17,'Vallabhi','Lab',24,'PT'),
 (18,'Gurukul','Soft Skill',25,'PT'),
 (19,'SEZ training Room','Lab',18,'HYD SEZ'),
 (20,'Taapti','Assessment',8,'HYD SEZ'),
 (21,'Ganga','Soft Skill',20,'HYD SEZ'),
 (22,'Atharva','Lab',55,'Nagpur'),
 (23,'Omkar','Lab',35,'Nagpur'),
 (24,'Vidya','Lab',35,'Nagpur'),
 (25,'Sharda','Lab',35,'Nagpur'),
 (26,'Saraswati','Lab',35,'Nagpur'),
 (27,'Kadambari','Lab',25,'Nagpur');
/*!40000 ALTER TABLE `room_table` ENABLE KEYS */;


--
-- Definition of table `status_table`
--

DROP TABLE IF EXISTS `status_table`;
CREATE TABLE `status_table` (
  `STATUS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `TRAINING_ID` varchar(20) DEFAULT NULL,
  `ROOM_ID` bigint(20) DEFAULT NULL,
  `DATE` date DEFAULT NULL,
  `STATUS` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`STATUS_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_table`
--

/*!40000 ALTER TABLE `status_table` DISABLE KEYS */;
INSERT INTO `status_table` (`STATUS_ID`,`TRAINING_ID`,`ROOM_ID`,`DATE`,`STATUS`) VALUES 
 (182,'80',11,'2014-11-18',2),
 (183,'81',11,'2014-11-25',2),
 (184,'82',11,'2014-12-02',2),
 (185,'83',11,'2014-12-09',2),
 (186,'84',11,'2014-12-16',2),
 (187,'85',11,'2014-12-23',2),
 (188,'86',11,'2014-12-30',2),
 (189,'87',11,'2015-01-06',2),
 (190,'88',11,'2015-01-13',2),
 (191,'89',11,'2015-01-20',2),
 (192,'90',11,'2015-01-27',2),
 (193,'91',11,'2015-02-03',2),
 (194,'92',11,'2015-02-10',2),
 (195,'93',11,'2015-02-17',2),
 (196,'94',12,'2014-11-19',1),
 (197,'95',12,'2014-11-26',1),
 (198,'96',12,'2014-12-03',1),
 (199,'97',12,'2014-12-10',1),
 (200,'98',12,'2014-12-17',1),
 (201,'99',12,'2014-12-24',1),
 (202,'100',11,'2014-11-19',2),
 (203,'101',11,'2014-11-26',2),
 (204,'102',1,'2014-11-18',1),
 (205,'102',1,'2014-11-19',1),
 (206,'102',1,'2014-11-20',1),
 (207,'103',2,'2014-11-21',2),
 (208,'103',2,'2014-11-22',2),
 (209,'103',2,'2014-11-23',2),
 (210,'103',2,'2014-11-24',2),
 (211,'103',2,'2014-11-25',2),
 (212,'116',2,'2014-11-18',2),
 (217,'107',5,'2014-11-19',2),
 (218,'107',5,'2014-11-20',2),
 (219,'107',5,'2014-11-21',2),
 (221,'110',4,'2014-11-26',1),
 (222,'111',4,'2014-12-03',1),
 (223,'112',4,'2014-12-10',1),
 (224,'113',4,'2014-12-17',1),
 (225,'114',4,'2014-12-24',1),
 (226,'115',4,'2014-11-19',2),
 (228,'118',2,'2014-12-03',2),
 (229,'119',9,'2014-11-20',1),
 (230,'120',9,'2014-12-20',1),
 (231,'121',9,'2015-01-20',1),
 (232,'122',9,'2015-02-20',1),
 (233,'123',22,'2014-11-23',1),
 (234,'124',22,'2014-11-19',2),
 (235,'125',22,'2014-11-20',1),
 (236,'125',22,'2014-11-21',1),
 (237,'126',22,'2014-11-25',1),
 (238,'127',22,'2014-11-26',1),
 (239,'128',13,'2014-11-19',1),
 (240,'129',11,'2014-11-20',1),
 (246,'135',19,'2014-11-19',1),
 (248,'137',19,'2014-12-03',1),
 (249,'138,139',19,'2014-11-20',1),
 (250,'138',19,'2014-11-21',2);
/*!40000 ALTER TABLE `status_table` ENABLE KEYS */;


--
-- Definition of table `training_table`
--

DROP TABLE IF EXISTS `training_table`;
CREATE TABLE `training_table` (
  `TRAINING_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_ID` bigint(20) DEFAULT NULL,
  `ROOM_ID` bigint(20) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `TRAINING_TYPE` varchar(255) DEFAULT NULL,
  `START_TIME` varchar(255) DEFAULT NULL,
  `END_TIME` varchar(255) DEFAULT NULL,
  `OWNER_NAME` varchar(255) DEFAULT NULL,
  `TRAINING_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`TRAINING_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `training_table`
--

/*!40000 ALTER TABLE `training_table` DISABLE KEYS */;
INSERT INTO `training_table` (`TRAINING_ID`,`EMPLOYEE_ID`,`ROOM_ID`,`START_DATE`,`END_DATE`,`TRAINING_TYPE`,`START_TIME`,`END_TIME`,`OWNER_NAME`,`TRAINING_NAME`) VALUES 
 (80,2,11,'2014-11-18','2014-11-18','ELTP','09:00','12:00','Ganesh','cep'),
 (81,2,11,'2014-11-25','2014-11-25','ELTP','09:00','12:00','Ganesh','cep'),
 (82,2,11,'2014-12-02','2014-12-02','ELTP','09:00','12:00','Ganesh','cep'),
 (83,2,11,'2014-12-09','2014-12-09','ELTP','09:00','12:00','Ganesh','cep'),
 (84,2,11,'2014-12-16','2014-12-16','ELTP','09:00','12:00','Ganesh','cep'),
 (85,2,11,'2014-12-23','2014-12-23','ELTP','09:00','12:00','Ganesh','cep'),
 (86,2,11,'2014-12-30','2014-12-30','ELTP','09:00','12:00','Ganesh','cep'),
 (87,2,11,'2015-01-06','2015-01-06','ELTP','09:00','12:00','Ganesh','cep'),
 (88,2,11,'2015-01-13','2015-01-13','ELTP','09:00','12:00','Ganesh','cep'),
 (89,2,11,'2015-01-20','2015-01-20','ELTP','09:00','12:00','Ganesh','cep'),
 (90,2,11,'2015-01-27','2015-01-27','ELTP','09:00','12:00','Ganesh','cep'),
 (91,2,11,'2015-02-03','2015-02-03','ELTP','09:00','12:00','Ganesh','cep'),
 (92,2,11,'2015-02-10','2015-02-10','ELTP','09:00','12:00','Ganesh','cep'),
 (93,2,11,'2015-02-17','2015-02-17','ELTP','09:00','12:00','Ganesh','cep'),
 (94,2,12,'2014-11-19','2014-11-19','RBT','09:00','18:00','Ganesh','java'),
 (95,2,12,'2014-11-26','2014-11-26','RBT','09:00','18:00','Ganesh','java'),
 (96,2,12,'2014-12-03','2014-12-03','RBT','09:00','18:00','Ganesh','java'),
 (97,2,12,'2014-12-10','2014-12-10','RBT','09:00','18:00','Ganesh','java'),
 (98,2,12,'2014-12-17','2014-12-17','RBT','09:00','18:00','Ganesh','java'),
 (99,2,12,'2014-12-24','2014-12-24','RBT','09:00','18:00','Ganesh','java'),
 (100,2,11,'2014-11-19','2014-11-19','ELTP','09:00','12:00','Ganesh','.net'),
 (101,2,11,'2014-11-26','2014-11-26','ELTP','09:00','12:00','Ganesh','.net'),
 (102,2,1,'2014-11-18','2014-11-20','ELTP','09:00','18:00','Ganesh','Unix'),
 (103,3,2,'2014-11-21','2014-11-25','ELTP','09:00','12:00','loukik','shell scripting'),
 (107,8,5,'2014-11-19','2014-11-21','ELTP','09:00','12:00','Gurpreet','Web Services'),
 (110,8,4,'2014-11-26','2014-11-26','ELTP','10:00','18:00','Gurpreet','cep'),
 (111,8,4,'2014-12-03','2014-12-03','ELTP','10:00','18:00','Gurpreet','cep'),
 (112,8,4,'2014-12-10','2014-12-10','ELTP','10:00','18:00','Gurpreet','cep'),
 (113,8,4,'2014-12-17','2014-12-17','ELTP','10:00','18:00','Gurpreet','cep'),
 (114,8,4,'2014-12-24','2014-12-24','ELTP','10:00','18:00','Gurpreet','cep'),
 (115,2,4,'2014-11-19','2014-11-19','ELTP','09:00','12:00','Ganesh','advanced Java'),
 (116,3,2,'2014-11-18','2014-11-18','RBT','13:00','18:00','loukik','DEMO'),
 (118,2,2,'2014-12-03','2014-12-03','ELTP','09:00','12:00','Ganesh','adv java'),
 (119,2,9,'2014-11-20','2014-11-20','ELTP','09:00','18:00','Ganesh','.net'),
 (120,2,9,'2014-12-20','2014-12-20','ELTP','09:00','18:00','Ganesh','.net'),
 (121,2,9,'2015-01-20','2015-01-20','ELTP','09:00','18:00','Ganesh','.net'),
 (122,2,9,'2015-02-20','2015-02-20','ELTP','09:00','18:00','Ganesh','.net'),
 (123,2,22,'2014-11-23','2014-11-23','ELTP','09:00','18:00','Ganesh','Core java'),
 (124,2,22,'2014-11-19','2014-11-19','ELTP','09:00','12:00','Ganesh','adv java'),
 (125,2,22,'2014-11-20','2014-11-21','ELTP','09:00','18:00','Ganesh','.net'),
 (126,2,22,'2014-11-25','2014-11-25','ELTP','09:00','18:00','Ganesh','shellscript'),
 (127,3,22,'2014-11-26','2014-11-26','ELTP','09:00','18:00','loukik','sep'),
 (128,2,13,'2014-11-19','2014-11-19','ELTP','09:00','18:00','Ganesh','wep'),
 (129,3,11,'2014-11-20','2014-11-20','ELTP','09:00','18:00','loukik','sas'),
 (135,2,19,'2014-11-19','2014-11-19','RBT','09:00','18:00','Ganesh','testing'),
 (137,2,19,'2014-12-03','2014-12-03','RBT','09:00','18:00','Ganesh','testing'),
 (138,2,19,'2014-11-20','2014-11-21','ELTP','09:00','12:00','Ganesh','testing manual'),
 (139,2,19,'2014-11-20','2014-11-20','ELTP','12:00','18:00','Ganesh','auto');
/*!40000 ALTER TABLE `training_table` ENABLE KEYS */;


--
-- Definition of table `user_table`
--

DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table` (
  `EMPLOYEE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `EMPLOYEE_FNAME` varchar(255) DEFAULT NULL,
  `EMPLOYEE_LNAME` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `DESIGNATION` varchar(255) DEFAULT NULL,
  `USERTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

/*!40000 ALTER TABLE `user_table` DISABLE KEYS */;
INSERT INTO `user_table` (`EMPLOYEE_ID`,`EMPLOYEE_FNAME`,`EMPLOYEE_LNAME`,`USERNAME`,`PASSWORD`,`DESIGNATION`,`USERTYPE`) VALUES 
 (1,'Ganesh','N','Ganesh','ganesh','SE','admin'),
 (2,'Ganesh','N','admin','1234','SE','Administrator'),
 (3,'loukik','bhandari','loukik','12345','software engineer','Application'),
 (4,'anuja','N','admin1','12345',NULL,'Administrator'),
 (5,'anuja','asalkar','admin1','12345',NULL,'Administrator'),
 (6,'anuja','asalkar','admin6','123456',NULL,'Administrator'),
 (7,'anuja','asalkar','anuja','qwerty',NULL,'Administrator'),
 (8,'Gurpreet','Khanuja','Gurpreet','test123',NULL,'Administrator'),
 (9,'sarang','sawant','sarang','1234',NULL,'Administrator'),
 (10,'loukik','bhandari','loukik','1234556',NULL,'Application');
/*!40000 ALTER TABLE `user_table` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
