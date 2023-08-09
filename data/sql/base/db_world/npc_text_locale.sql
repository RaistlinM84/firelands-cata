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
-- Table structure for table `npc_text_locale`
--

DROP TABLE IF EXISTS `npc_text_locale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `npc_text_locale` (
  `ID` int unsigned NOT NULL DEFAULT '0',
  `Locale` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Text0_0` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text0_1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text1_0` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text1_1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text2_0` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text2_1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text3_0` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text3_1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text4_0` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text4_1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text5_0` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text5_1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text6_0` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text6_1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text7_0` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Text7_1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ID`,`Locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_text_locale`
--

LOCK TABLES `npc_text_locale` WRITE;
/*!40000 ALTER TABLE `npc_text_locale` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_text_locale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-09 10:22:01
