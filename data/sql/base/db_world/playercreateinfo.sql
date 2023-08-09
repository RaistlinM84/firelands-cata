-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: firelands_world
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `playercreateinfo`
--

DROP TABLE IF EXISTS `playercreateinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playercreateinfo` (
  `race` tinyint unsigned NOT NULL DEFAULT '0',
  `class` tinyint unsigned NOT NULL DEFAULT '0',
  `map` smallint unsigned NOT NULL DEFAULT '0',
  `zone` int unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`race`,`class`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo`
--

LOCK TABLES `playercreateinfo` WRITE;
/*!40000 ALTER TABLE `playercreateinfo` DISABLE KEYS */;
INSERT INTO `playercreateinfo` VALUES (1,1,0,9,-8914.57,-133.909,80.5378,5.13806),(1,2,0,9,-8914.57,-133.909,80.5378,5.13806),(1,3,0,9,-8914.57,-133.909,80.5378,5.13806),(1,4,0,9,-8914.57,-133.909,80.5378,5.13806),(1,5,0,9,-8914.57,-133.909,80.5378,5.13806),(1,6,609,4298,2355.84,-5664.77,426.028,3.93485),(1,8,0,9,-8914.57,-133.909,80.5378,5.13806),(1,9,0,9,-8914.57,-133.909,80.5378,5.13806),(2,1,1,14,-618.518,-4251.67,38.718,4.72222),(2,3,1,14,-618.518,-4251.67,38.718,4.72222),(2,4,1,14,-618.518,-4251.67,38.718,4.72222),(2,6,609,4298,2358.44,-5666.9,426.023,3.93485),(2,7,1,14,-618.518,-4251.67,38.718,4.72222),(2,8,1,14,-618.518,-4251.67,38.718,4.72222),(2,9,1,14,-618.518,-4251.67,38.718,4.72222),(3,1,0,1,-6240.32,331.033,382.758,6.17716),(3,2,0,1,-6240.32,331.033,382.758,6.17716),(3,3,0,1,-6240.32,331.033,382.758,6.17716),(3,4,0,1,-6240.32,331.033,382.758,6.17716),(3,5,0,1,-6240.32,331.033,382.758,6.17716),(3,6,609,4298,2358.44,-5666.9,426.023,3.93485),(3,7,0,1,-6240.32,331.033,382.758,6.17716),(3,8,0,1,-6240.32,331.033,382.758,6.17716),(3,9,0,1,-6240.32,331.033,382.758,6.17716),(4,1,1,141,10311.3,832.463,1326.41,5.69632),(4,3,1,141,10311.3,832.463,1326.41,5.69632),(4,4,1,141,10311.3,832.463,1326.41,5.69632),(4,5,1,141,10311.3,832.463,1326.41,5.69632),(4,6,609,4298,2356.21,-5662.21,426.026,3.93485),(4,8,1,141,10311.3,832.463,1326.41,5.69632),(4,11,1,141,10311.3,832.463,1326.41,5.69632),(5,1,0,5692,1699.85,1706.56,135.928,4.88839),(5,3,0,5692,1699.85,1706.56,135.928,4.88839),(5,4,0,5692,1699.85,1706.56,135.928,4.88839),(5,5,0,5692,1699.85,1706.56,135.928,4.88839),(5,6,609,4298,2356.21,-5662.21,426.026,3.93485),(5,8,0,5692,1699.85,1706.56,135.928,4.88839),(5,9,0,5692,1699.85,1706.56,135.928,4.88839),(6,1,1,221,-2915.55,-257.347,59.2693,0.302378),(6,2,1,221,-2915.55,-257.347,59.2693,0.302378),(6,3,1,221,-2915.55,-257.347,59.2693,0.302378),(6,5,1,221,-2915.55,-257.347,59.2693,0.302378),(6,6,609,4298,2358.17,-5663.21,426.027,3.93485),(6,7,1,221,-2915.55,-257.347,59.2693,0.302378),(6,11,1,221,-2915.55,-257.347,59.2693,0.302378),(7,1,0,5495,-4983.42,877.7,274.31,3.06393),(7,4,0,5495,-4983.42,877.7,274.31,3.06393),(7,5,0,5495,-4983.42,877.7,274.31,3.06393),(7,6,609,4298,2355.05,-5661.7,426.026,3.93485),(7,8,0,5495,-4983.42,877.7,274.31,3.06393),(7,9,0,5495,-4983.42,877.7,274.31,3.06393),(8,1,1,5691,-1171.45,-5263.65,0.847728,5.78945),(8,3,1,5691,-1171.45,-5263.65,0.847728,5.78945),(8,4,1,5691,-1171.45,-5263.65,0.847728,5.78945),(8,5,1,5691,-1171.45,-5263.65,0.847728,5.78945),(8,6,609,4298,2355.05,-5661.7,426.026,3.93485),(8,7,1,5691,-1171.45,-5263.65,0.847728,5.78945),(8,8,1,5691,-1171.45,-5263.65,0.847728,5.78945),(8,9,1,5691,-1171.45,-5263.65,0.847728,5.78945),(8,11,1,5691,-1171.45,-5263.65,0.847728,5.78945),(9,1,648,4765,-8423.81,1361.3,104.671,1.55428),(9,3,648,4765,-8423.81,1361.3,104.671,1.55428),(9,4,648,4765,-8423.81,1361.3,104.671,1.55428),(9,5,648,4765,-8423.81,1361.3,104.671,1.55428),(9,6,609,4298,2355.05,-5661.7,426.026,3.93485),(9,7,648,4765,-8423.81,1361.3,104.671,1.55428),(9,8,648,4765,-8423.81,1361.3,104.671,1.55428),(9,9,648,4765,-8423.81,1361.3,104.671,1.55428),(10,1,530,3431,10349.6,-6357.29,33.4026,5.31605),(10,2,530,3431,10349.6,-6357.29,33.4026,5.31605),(10,3,530,3431,10349.6,-6357.29,33.4026,5.31605),(10,4,530,3431,10349.6,-6357.29,33.4026,5.31605),(10,5,530,3431,10349.6,-6357.29,33.4026,5.31605),(10,6,609,4298,2355.84,-5664.77,426.028,3.93485),(10,8,530,3431,10349.6,-6357.29,33.4026,5.31605),(10,9,530,3431,10349.6,-6357.29,33.4026,5.31605),(11,1,530,3526,-3961.64,-13931.2,100.615,2.08364),(11,2,530,3526,-3961.64,-13931.2,100.615,2.08364),(11,3,530,3526,-3961.64,-13931.2,100.615,2.08364),(11,5,530,3526,-3961.64,-13931.2,100.615,2.08364),(11,6,609,4298,2358.17,-5663.21,426.027,3.93485),(11,7,530,3526,-3961.64,-13931.2,100.615,2.08364),(11,8,530,3526,-3961.64,-13931.2,100.615,2.08364),(22,1,654,4756,-1451.53,1403.35,35.5561,0.333847),(22,3,654,4756,-1451.53,1403.35,35.5561,0.333847),(22,4,654,4756,-1451.53,1403.35,35.5561,0.333847),(22,5,654,4756,-1451.53,1403.35,35.5561,0.333847),(22,6,609,4298,2356.21,-5662.21,426.026,3.93485),(22,8,654,4756,-1451.53,1403.35,35.5561,0.333847),(22,9,654,4756,-1451.53,1403.35,35.5561,0.333847),(22,11,654,4756,-1451.53,1403.35,35.5561,0.333847);
/*!40000 ALTER TABLE `playercreateinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-09 10:21:47
