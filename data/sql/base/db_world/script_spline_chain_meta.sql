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
-- Table structure for table `script_spline_chain_meta`
--

DROP TABLE IF EXISTS `script_spline_chain_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `script_spline_chain_meta` (
  `entry` int unsigned NOT NULL,
  `chainId` smallint unsigned NOT NULL,
  `splineId` tinyint unsigned NOT NULL,
  `expectedDuration` int unsigned NOT NULL,
  `msUntilNext` int unsigned NOT NULL,
  `velocity` float DEFAULT '0',
  PRIMARY KEY (`entry`,`chainId`,`splineId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `script_spline_chain_meta`
--

LOCK TABLES `script_spline_chain_meta` WRITE;
/*!40000 ALTER TABLE `script_spline_chain_meta` DISABLE KEYS */;
INSERT INTO `script_spline_chain_meta` VALUES (17225,1,0,3689,0,0),(17225,2,0,26021,0,0),(17225,3,0,2697,0,0),(17225,4,0,15920,0,0),(17225,5,0,15920,0,0),(23089,1,0,3297,2391,0),(23089,1,1,2744,0,0),(23089,2,0,5077,3297,0),(23089,2,1,5259,3656,0),(23089,2,2,4364,3640,0),(23089,2,3,3825,2422,0),(23089,2,4,3466,2422,0),(23089,2,5,2911,1235,0),(23089,2,6,2798,1203,0),(23089,2,7,2172,0,0),(23089,3,0,4686,3640,0),(23089,3,1,3261,2453,0),(23089,3,2,3415,2438,0),(23089,3,3,4631,3641,0),(23089,3,4,2627,0,0),(23089,4,0,6925,0,0),(23089,5,0,5893,0,0),(23089,6,0,9319,0,0),(23089,7,0,4704,0,0),(26497,1,0,4710,3641,0),(26497,1,1,3684,2422,0),(26497,1,2,3639,0,0),(26497,2,0,2598,0,0),(26497,3,0,2911,0,0),(26497,4,0,12325,11047,0),(26497,4,1,8166,7296,0),(26497,4,2,8154,7266,0),(26497,4,3,6745,6063,0),(26497,4,4,9386,0,0),(26499,1,0,3341,2391,0),(26499,1,1,3167,2453,0),(26499,1,2,2548,1218,0),(26499,1,3,2864,1204,0),(26499,1,4,2870,0,0),(26499,2,0,4113,2438,0),(26499,2,1,4586,3641,0),(26499,2,2,3298,0,0),(26499,3,0,6366,4813,0),(26499,3,1,4957,3671,0),(26499,3,2,3972,2344,0),(26499,3,3,4644,0,0),(26499,4,0,2855,1156,0),(26499,4,1,3214,2578,0),(26499,4,2,2427,1203,0),(26499,4,3,2663,1219,0),(26499,4,4,3016,2437,0),(26499,4,5,1825,1204,0),(26499,4,6,3126,2406,0),(26499,4,7,2751,1234,0),(26499,4,8,2849,1219,0),(26499,4,9,4704,3578,0),(26499,4,10,2073,1266,0),(26499,4,11,1860,1218,0),(26499,4,12,1928,0,0),(26499,5,0,4032,2266,0),(26499,5,1,4170,2594,0),(26499,5,2,4925,3453,0),(26499,5,3,5560,0,0),(26499,6,0,3285,0,0),(26499,7,0,2247,0,0),(26499,91,0,1862,812,0),(26499,91,1,1990,1219,0),(26499,91,2,1831,0,0),(26499,92,0,2007,0,0),(26499,95,0,2801,1203,0),(26499,95,1,3454,2406,0),(26499,95,2,2278,1203,0),(26499,95,3,3222,2453,0),(26499,95,4,2819,0,0),(26499,96,0,1770,0,0),(26499,97,0,2572,1203,0),(26499,97,1,2696,1203,0),(26499,97,2,2289,1219,0),(26499,97,3,2102,1219,0),(26499,97,4,2940,1219,0),(26499,97,5,3202,0,0),(26499,98,0,1838,1219,0),(26499,98,1,1843,1015,0),(26499,98,2,2029,1391,0),(26499,98,3,1645,0,0),(26499,101,0,3239,2031,0),(26499,101,1,2072,1406,0),(26499,101,2,2380,1219,0),(26499,101,3,1975,0,0),(26499,121,0,3065,2282,0),(26499,121,1,1871,1203,0),(26499,121,2,2231,1219,0),(26499,121,3,4427,3828,0),(26499,121,4,3740,2250,0),(26499,121,5,2766,0,0),(26499,124,0,3499,0,0),(26499,125,0,7907,7266,0),(26499,125,1,8079,7297,0),(26499,125,2,8198,0,0),(26499,127,0,7779,6265,0),(26499,127,1,10397,9719,0),(26499,127,2,7018,0,0),(26499,128,0,1934,1157,0),(26499,128,1,1843,1078,0),(26499,128,2,2542,1422,0),(26499,128,3,2651,1203,0),(26499,128,4,4784,3547,0),(26499,128,5,2204,1281,0),(26499,128,6,2250,1250,0),(26499,128,7,3174,2297,0),(26499,128,8,1604,0,0),(26499,1024,0,3268,2422,0),(26499,1024,1,3636,2422,0),(26499,1024,2,4245,3640,0),(26499,1024,3,3058,2469,0),(26499,1024,4,3931,2390,0),(26499,1024,5,5062,3656,0),(26499,1024,6,4970,3844,0),(26499,1024,7,3764,2375,0),(26499,1024,8,4819,0,0),(26499,1025,0,4244,3500,0),(26499,1025,1,4211,2422,0),(26499,1025,2,5342,4031,0),(26499,1025,3,5534,4797,0),(26499,1025,4,4503,2421,0),(26499,1025,5,5721,4766,0),(26499,1025,6,4335,0,0),(26528,1,0,5743,4641,0),(26528,1,1,5579,4844,0),(26528,1,2,4219,3578,0),(26528,1,3,1549,0,0),(26528,2,0,3930,0,0),(26528,3,0,11271,9703,0),(26528,3,1,6575,4860,0),(26528,3,2,9893,8469,0),(26528,3,3,8798,7171,0),(26528,3,4,9000,0,0),(26532,1,0,2677,0,0),(26893,1,0,15064,0,0),(26893,2,0,3397,0,0),(26893,3,0,4472,0,0),(26893,4,0,23930,0,0),(26893,5,0,24026,0,0),(27742,1,0,2871,0,0),(27742,2,0,2662,0,0),(27742,3,0,2454,0,0),(27742,4,0,2259,0,0),(27742,5,0,1884,0,0),(27742,6,0,3268,0,0),(27742,7,0,2100,0,0),(27742,8,0,3187,0,0),(27742,9,0,2649,0,0),(27742,10,0,888,0,0),(27742,11,0,871,0,0),(27742,12,0,844,0,0),(27877,1,0,1877,1359,0),(27877,1,1,2104,0,0),(27877,2,0,4870,3641,0),(27877,2,1,5372,3625,0),(27877,2,2,4919,3453,0),(27877,2,3,6343,5016,0),(27877,2,4,7111,6031,0),(27877,2,5,7063,6016,0),(27877,2,6,6610,0,0),(27884,1,0,2596,0,0),(27884,2,0,2381,0,0),(27885,1,0,2514,0,0),(27885,2,0,2443,0,0),(27885,3,0,2443,0,0),(27885,70,0,5363,3640,0),(27885,70,1,4216,3500,0),(27885,70,2,5501,4969,0),(27885,70,3,2752,1062,0),(27885,70,4,3472,0,0),(27885,71,0,3757,0,0),(27885,72,0,3004,1218,0),(27885,72,1,3927,2282,0),(27885,72,2,3491,2562,0),(27885,72,3,3020,2422,0),(27885,72,4,2334,1063,0),(27885,72,5,3425,2562,0),(27885,72,6,3055,2422,0),(27885,72,7,2369,1031,0),(27885,72,8,1804,1375,0),(27885,72,9,1215,0,0),(27891,1,0,3239,2625,0),(27891,1,1,2755,0,0),(27891,2,0,4320,3235,0),(27891,2,1,3531,2422,0),(27891,2,2,2835,0,0),(27891,3,0,1964,1218,0),(27891,3,1,1879,1203,0),(27891,3,2,1555,0,0),(27891,4,0,3004,1250,0),(27891,4,1,4201,2438,0),(27891,4,2,4956,3640,0),(27891,4,3,4015,2422,0),(27891,4,4,5920,4844,0),(27891,4,5,5607,4875,0),(27891,4,6,5841,4687,0),(27891,4,7,7269,6250,0),(27891,4,8,6402,4797,0),(27891,4,9,8083,7297,0),(27891,4,10,5750,4750,0),(27891,4,11,3990,2531,0),(27891,4,12,5397,3500,0),(27891,4,13,5269,3750,0),(27891,4,14,6169,4860,0),(27891,4,15,5497,4828,0),(27891,4,16,5084,3625,0),(27891,4,17,5681,4844,0),(27891,4,18,6803,6062,0),(27891,4,19,5758,4844,0),(27891,4,20,4319,3625,0),(27891,4,21,4710,3641,0),(27891,4,22,7181,6062,0),(27891,4,23,8723,7125,0),(27891,4,24,6300,5000,0),(27891,4,25,6074,4828,0),(27891,4,26,6394,4844,0),(27891,4,27,4809,3641,0),(27891,4,28,6276,4750,0),(27891,4,29,6886,6031,0),(27891,4,30,6358,4969,0),(27891,4,31,6506,0,0),(27892,1,0,3242,2219,0),(27892,1,1,2553,1234,0),(27892,1,2,3071,2406,0),(27892,1,3,2449,1188,0),(27892,1,4,2974,1234,0),(27892,1,5,3961,2422,0),(27892,1,6,2884,1203,0),(27892,1,7,3427,0,0),(27892,2,0,2022,0,0),(27903,1,0,4337,3640,0),(27903,1,1,3730,2407,0),(27903,1,2,3116,2437,0),(27903,1,3,3533,0,0),(27903,2,0,1975,0,0),(27903,3,0,4685,3625,0),(27903,3,1,4437,3625,0),(27903,3,2,5367,3672,0),(27903,3,3,5862,0,0),(27907,1,0,1260,0,0),(27907,2,0,2395,1125,0),(27907,2,1,3378,2515,0),(27907,2,2,4259,3516,0),(27907,2,3,3997,2531,0),(27907,2,4,6453,4844,0),(27907,2,5,8822,7281,0),(27907,2,6,5655,4844,0),(27907,2,7,6149,4859,0),(27907,2,8,10645,9688,0),(27907,2,9,4624,3640,0),(27907,2,10,7230,6079,0),(27907,2,11,7563,6062,0),(27907,2,12,6819,6047,0),(27907,2,13,10112,8469,0),(27907,2,14,7902,7281,0),(27907,2,15,4819,3625,0),(27907,2,16,8246,7172,0),(27907,2,17,6200,4750,0),(27907,2,18,2828,1312,0),(27907,2,19,4017,2516,0),(27907,2,20,5094,3500,0),(27907,2,21,5351,0,0),(28167,1,0,2109,0,0),(39294,1,0,89126,0,13),(39294,2,0,5328,0,13),(39814,1,0,2314,0,0),(39814,2,0,3486,0,0),(49427,1,0,10192,0,0);
/*!40000 ALTER TABLE `script_spline_chain_meta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-09 10:22:00
