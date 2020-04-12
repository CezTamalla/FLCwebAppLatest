-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: flc
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `Cart_ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Client_Username` varchar(50) DEFAULT NULL,
  `ProdName` varchar(100) DEFAULT NULL,
  `Qty` int DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Cart_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (00001,'Hypermarket-Mand','SM Bonus Toilet Deo W/holder Sampa 50g',3000,'Removed'),(00002,'Hypermarket-Mand','SM Bonus Toilet Deo Ref. Sampa 100g',2000,'Removed'),(00003,'Hypermarket-Mand','SM Bonus Toilet Deo W/holder Straw 100g',2000,'Removed'),(00004,'Hypermarket-Mand','SM Bonus Alcohol 70% 500mL',2000,'Removed'),(00006,'Megamall','SM Bonus Alcohol 70% 500mL',2000,'Removed'),(00009,'Hypermarket-Mand','SM Bonus Alcologne 40% Baby Fresh 500mL',3000,'Removed'),(00010,'Hypermarket-Mand','SM Bonus TBC Lemon 250mL',2000,'Removed'),(00011,'Hypermarket-Mand','SM Bonus Alcohol 70% 500mL',2000,'Removed'),(00012,'Hypermarket-Mand','SM Bonus Alcohol 70% 500mL',2000,'Removed'),(00013,'Hypermarket-Mand','SM Bonus Glass Cleaner SpraySpray 600mL',2000,'Removed'),(00014,'Hypermarket-Mand','SM Bonus Alcohol 70% 500mL',2000,'Removed'),(00015,'Hypermarket-Mand','SM Bonus Alcologne 40% Baby Fresh 500mL',3000,'Removed'),(00016,'Hypermarket-Mand','SM Bonus Alcohol 70% 250mL',2000,'Active'),(00017,'Hypermarket-Mand','SM Bonus Alcologne 40% Baby Fresh 500mL',3000,'Active'),(00018,'Hypermarket-Mand','SM Bonus TBC Yellow w/deo 500mL',2000,'Removed'),(00019,'Megamall','SM Bonus Alcologne 40% Baby Fresh 500mL',3000,'Active'),(00020,'Megamall','SM Bonus Glass Cleaner RefillRefill 600mL',2000,'Removed'),(00021,'Megamall','SM Bonus Glass Cleaner RefillRefill 600mL',2000,'Active'),(00022,'Megamall','SM Bonus Alcologne 40% Baby Fresh 250mL',2000,'Ordered'),(00023,'Megamall','SM Bonus Alcohol 70% 500mL',2000,'Ordered'),(00024,'Megamall','SM Bonus Alcohol 70% 250mL',2000,'Ordered'),(00025,'Megamall','SM Bonus Cheese Flavored Popcorn250g',2000,'Active'),(00026,'Megamall','SM Bonus DeoRefill 50gx3 + SMB Bleach',2000,'Active'),(00027,'Megamall','SM Bonus TBCSampaguita 500mL',3000,'Active');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Address` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Contact_Person` varchar(45) DEFAULT NULL,
  `Contact_Number` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100007 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (10005,'Shaw Boulevard, Mandaluyong City','SM Megamall','Shawn Mendes','09415581956'),(100001,'Damong Maliit, Malinta, Quezon City','SM Novaliches','Jennifer Bayani','09451875991'),(100002,'Legarda Avenue, Manila','SM San Lazaro','Tannie De Guzman','09294157414'),(100003,'San Antonio, Edsa, Quezon City','SM North Edsa','Vilma Santos','09581234565'),(100004,'Shaw Blvd. Mandaluyong City','SM Hypermarket Mandaluyong','Mariah Carey','09220001122'),(100005,'Ortigas, EDSA','SM Megamall','Bruno Mars','09991223344'),(100006,'Cubao, EDSA','SM Hypermarket Cubao','Ed Sheeran','09998876767');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients_order`
--

DROP TABLE IF EXISTS `clients_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients_order` (
  `order_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `ordered_by` varchar(100) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients_order`
--

LOCK TABLES `clients_order` WRITE;
/*!40000 ALTER TABLE `clients_order` DISABLE KEYS */;
INSERT INTO `clients_order` VALUES (00001,'Client','SM BONUS ALCOHOL 70% 500ML (FRONTLABEL)',2000,'2020-03-18','On Process'),(00002,'Client','SM Bonus TBC Blue w/deo 500mL',4000,'2020-03-18','On Process'),(00003,'Client','SM Bonus Toilet Deo W/holder Sampa 50g',3000,'2020-03-18','On Process'),(00004,'Client','SM Bonus Toilet Deo  Ref. Lemon 50g',3000,'2020-03-20','On Process'),(00005,'Client','SM Bonus Toilet Deo  Ref. Lemon 50g',3000,'2020-03-20','On Process'),(00006,'Client','SM Bonus Toilet Deo W/holder Sampa 50g',3000,'2020-03-20','Completed'),(00007,'Megamall','SM Bonus Laundry Bleach250mL',3000,'2020-03-21','Out for Delivery'),(00013,'Megamall','SM Bonus Alcohol 70% 500mL',2000,'2020-03-25','On Process'),(00017,'Megamall','SM Bonus Alcologne 40% Baby Fresh 250mL',2000,'2020-03-25','Completed'),(00018,'Megamall','SM Bonus Pure Sugar Sachet 7g',2000,'2020-04-01','Out for Delivery.');
/*!40000 ALTER TABLE `clients_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Supplier_ID` int(5) unsigned zerofill NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `Product_Type` varchar(100) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Size` int DEFAULT NULL,
  `Unit` varchar(45) DEFAULT NULL,
  `Weight` int DEFAULT NULL,
  `Critical_Level` int DEFAULT NULL,
  `image_filename` varchar(100) DEFAULT NULL,
  `content_type` varchar(200) DEFAULT NULL,
  `image` blob,
  `Description` longtext,
  `Min_Order` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=322 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (00001,00003,'SM BONUS TOILET DEO ','Finished Product','Toilet Deodorizer',5,50,'g',50,31,'placeholder.png','image/png',_binary 'System.Byte[]','STRAWBERRY 50g','This product requires a minimum order of 2000 pieces'),(00002,00001,'SM Bonus Toilet Deo  ','Finished Product','Toilet Deodorizer',1281,50,'g',50,14,NULL,NULL,_binary 'imagesplaceholder.png','Ref. Lemon 50g','This product requires a minimum order of 2000 pieces'),(00003,00010,'SM Bonus Toilet Deo ','Finished Product','Toilet Deodorizer',134,50,'g',50,20,NULL,NULL,_binary 'imagesplaceholder.png','Ref. Sampa 50g','This product requires a minimum order of 2000 pieces'),(00004,00007,'SM Bonus Toilet Deo','Finished Product','Toilet Deodorizer',117,100,'g',100,50,NULL,NULL,_binary 'imagesplaceholder.png',' Ref. Straw 100g','This product requires a minimum order of 1000 pieces'),(00005,00004,'SM Bonus Toilet Deo ','Finished Product','Toilet Deodorizer',145,100,'g',100,13,NULL,NULL,_binary 'imagesplaceholder.png','Ref. Lemon 100g','This product requires a minimum order of 1000 pieces'),(00006,00006,'SM Bonus Toilet Deo ','Finished Product','Toilet Deodorizer',146,100,'g',100,12,NULL,NULL,_binary 'imagesplaceholder.png','Ref. Sampa 100g','This product requires a minimum order of 1000 pieces'),(00007,00002,'SM Bonus Toilet Deo','Finished Product','Toilet Deodorizer',218,50,'g',50,37,NULL,NULL,_binary 'imagesplaceholder.png','W/holder Straw 50g','This product requires a minimum order of 2000 pieces'),(00008,00002,'SM Bonus Toilet Deo ','Finished Product','Toilet Deodorizer',142,50,'g',50,33,NULL,NULL,_binary 'imagesplaceholder.png','W/holder Sampa 50g','This product requires a minimum order of 2000 pieces'),(00009,00001,'SM Bonus Toilet Deo ','Finished Product','Toilet Deodorizer',92,100,'g',100,19,NULL,NULL,_binary 'imagesplaceholder.png','W/holder Lemon 100g','This product requires a minimum order of 1000 pieces'),(00010,00008,'SM Bonus Toilet Deo ','Finished Product','Toilet Deodorizer',55,100,'g',100,21,NULL,NULL,_binary 'imagesplaceholder.png','W/holder Straw 100g','This product requires a minimum order of 1000 pieces'),(00011,00003,'SM Bonus Toilet Deo ','Finished Product','Toilet Deodorizer',87,100,'g',100,11,NULL,NULL,_binary 'imagesplaceholder.png','W/holder Sampa 100g','This product requires a minimum order of 1000 pieces'),(00012,00009,'SM Bonus Toilet Deo','Finished Product','Toilet Deodorizer',136,50,'g',250,42,NULL,NULL,_binary 'imagesplaceholder.png','W/holder Lemon 50g','This product requires a minimum order of 4000 bottles'),(00013,00009,'SM Bonus TBC ','Finished Product','Toilet Bowl Cleaner',93,250,'ml',250,12,NULL,NULL,_binary 'imagesTBC_Lem250.png','Lemon 250mL','This product requires a minimum order of 4000 bottles'),(00014,00008,'SM Bonus TBC ','Finished Product','Toilet Bowl Cleaner',122,250,'ml',250,13,NULL,NULL,_binary 'images	bcSampa250ml.png','Pine 250mL','This product requires a minimum order of 4000 bottles'),(00015,00005,'SM Bonus TBC ','Finished Product','Toilet Bowl Cleaner',133,500,'ml',500,19,NULL,NULL,_binary 'imagesplaceholder.png','Pine 500mL','This product requires a minimum order of 2000 bottles'),(00016,00007,'SM Bonus TBC ','Finished Product','Toilet Bowl Cleaner',95,500,'ml',500,39,NULL,NULL,_binary 'imagesplaceholder.png','Lemon 500mL','This product requires a minimum order of 2000 bottles'),(00017,00006,'SM Bonus TBC ','Finished Product','Toilet Bowl Cleaner',139,500,'ml',500,34,NULL,NULL,_binary 'imagesplaceholder.png','Pine 500mL','This product requires a minimum order of 2000 bottles'),(00018,00008,'SM Bonus TBC','Finished Product','Toilet Bowl Cleaner',97,500,'ml',500,21,NULL,NULL,_binary 'imagesplaceholder.png','Sampaguita 500mL','This product requires a minimum order of 2000 bottles'),(00019,00008,'SM Bonus TBC ','Finished Product','Toilet Bowl Cleaner',85,250,'ml',250,40,NULL,NULL,_binary 'imagesplaceholder.png','Blue w/deo 250mL','This product requires a minimum order of 4000 bottles'),(00020,00008,'SM Bonus TBC ','Finished Product','Toilet Bowl Cleaner',106,500,'ml',500,39,NULL,NULL,_binary 'imagesplaceholder.png','Blue w/deo 500mL','This product requires a minimum order of 2000 bottles'),(00021,00010,'SM Bonus TBC ','Finished Product','Toilet Bowl Cleaner',138,250,'ml',250,31,NULL,NULL,_binary 'imagesplaceholder.png','Yellow w/deo 250mL',NULL),(00022,00005,'SM Bonus TBC ','Finished Product','Toilet Bowl Cleaner',70,500,'ml',500,24,NULL,NULL,_binary 'imagesplaceholder.png','Yellow w/deo 500mL',NULL),(00023,00008,'SM Bonus Laundry Bleach','Finished Product','Laundry Bleach',62,250,'ml',250,10,NULL,NULL,_binary 'imagesplaceholder.png','250mL',NULL),(00024,00004,'SM Bonus Laundry Bleach','Finished Product','Laundry Bleach',144,1000,'ml',1000,37,NULL,NULL,_binary 'imagesplaceholder.png','1000mL',NULL),(00026,00006,'SM Bonus Glass Cleaner Spray','Finished Product','Glass Cleaner',95,600,'ml',600,22,NULL,NULL,_binary 'imagesplaceholder.png','Spray 600mL',NULL),(00027,00009,'SM Bonus Glass Cleaner Refill','Finished Product','Glass Cleaner',84,600,'ml',600,28,NULL,NULL,_binary 'imagesplaceholder.png','Refill 600mL',NULL),(00028,00006,'Fervar In-Tank TBC ','Finished Product','Glass Cleaner',84,50,'g',50,38,NULL,NULL,_binary 'imagesplaceholder.png','Blue 600mL',NULL),(00029,00007,'SM Bonus TBC ','Finished Product','Toilet Bowl Cleaner',80,50,'g',50,45,NULL,NULL,_binary 'imagesplaceholder.png','500mL + Toilet Bowl Intank',NULL),(00030,00005,'SM Bonus Deo','Finished Product','Toilet Deodorizer',116,250,'ml',250,12,NULL,NULL,_binary 'imagesplaceholder.png','Refill 50gx3 + SMB Bleach',NULL),(00032,00002,'SM Bonus Alcohol ','Finished Product','Alcohol',59,250,'ml',250,18,NULL,NULL,_binary 'imagesalcohol70%250ml.png','70% 250mL',NULL),(00033,00007,'SM Bonus Alcohol ','Finished Product','Alcohol',135,500,'ml',500,19,NULL,NULL,_binary 'imagesplaceholder.png','70% 500mL',NULL),(00034,00003,'SM Bonus Alcologne ','Finished Product','Alcohol',57,250,'ml',250,10,NULL,NULL,_binary 'imagesplaceholder.png','40% Baby Fresh 250mL',NULL),(00035,00009,'SM Bonus Alcologne ','Finished Product','Alcohol',93,500,'ml',500,47,NULL,NULL,_binary 'imagesplaceholder.png','40% Baby Fresh 500mL',NULL),(00036,00002,'SM Bonus Alcologne ','Finished Product','Alcohol',76,250,'ml',250,13,NULL,NULL,_binary 'imagesalcologneSho250.png','40% Shower Fresh 250mL',NULL),(00037,00004,'SM Bonus Alcologne ','Finished Product','Alcohol',141,500,'ml',500,22,NULL,NULL,_binary 'imagesplaceholder.png','40% Shower Fresh 500mL',NULL),(00038,00002,'SM Bonus Pure Sugar ','Finished Product','Food',127,7,'g',7,34,NULL,NULL,_binary 'imagesplaceholder.png','Sachet 7g',NULL),(00039,00003,'SM Bonus Non-Dairy Creamer','Finished Product','Food',52,3,'g',3,40,NULL,NULL,_binary 'imagesplaceholder.png','Sachet 3g',NULL),(00040,00003,'SM Bonus Cheese Flavored Popcorn','Finished Product','Food',149,250,'g',250,22,NULL,NULL,_binary 'imagesplaceholder.png','250g',NULL),(00041,00007,'SM Bonus Cheese Popcorn Canister','Finished Product','Food',142,300,'g',300,20,NULL,NULL,_binary 'imagesplaceholder.png','300g',NULL),(00042,00005,'SM Bonus Multi-purpose Breading mix ','Finished Product','Food',85,100,'g',100,40,NULL,NULL,_binary 'imagesplaceholder.png','100g',NULL),(00043,00001,'SM Bonus Gravy Sauce (Brown)','Finished Product','Food',113,50,'g',50,39,NULL,NULL,_binary 'imagesplaceholder.png','50g',NULL),(00108,00004,'Bateau TM1887','Raw Material',NULL,137,750,'g',750,44,NULL,NULL,_binary 'imagesplaceholder.png',NULL,NULL),(00109,00005,'PEG 40','Raw Material',NULL,1450,500,'g',500,10,NULL,NULL,NULL,NULL,NULL),(00110,00001,'Baby Fresh Scent','Raw Material',NULL,1518,1000,'ml',1000,50,NULL,NULL,_binary 'imagesplaceholder.png',NULL,NULL),(00111,00001,'Shower Fresh Scent','Raw Material',NULL,72,500,'ml',500,13,NULL,NULL,NULL,NULL,NULL),(00112,00004,'Grapesunflower','Raw Material',NULL,50,1000,'g',1000,21,NULL,NULL,NULL,NULL,NULL),(00113,00005,'SLES','Raw Material',NULL,67,250,'g',250,27,NULL,NULL,NULL,NULL,NULL),(00114,00010,'Tergitol','Raw Material',NULL,133,100,'g',100,10,NULL,NULL,NULL,NULL,NULL),(00115,00010,'Lactic Acid','Raw Material',NULL,133,750,'ml',750,25,NULL,NULL,NULL,NULL,NULL),(00116,00003,'Pine Scent HQ','Raw Material',NULL,78,500,'g',500,48,NULL,NULL,NULL,NULL,NULL),(00117,00007,'Blue 606 liquid','Raw Material',NULL,99,100,'g',100,27,NULL,NULL,NULL,NULL,NULL),(00118,00002,'Lemon Scent','Raw Material',NULL,138,100,'g',100,14,NULL,NULL,NULL,NULL,NULL),(00119,00003,'FDC Yellow # 5','Raw Material',NULL,115,250,'g',250,42,NULL,NULL,NULL,NULL,NULL),(00120,00009,'Sampa 17630','Raw Material',NULL,106,1000,'ml',1000,31,NULL,NULL,NULL,NULL,NULL),(00121,00006,'Butyl Cellosolve','Raw Material',NULL,142,500,'g',500,49,NULL,NULL,NULL,NULL,NULL),(00122,00010,'Strong Ammonia water','Raw Material',NULL,122,750,'g',750,29,NULL,NULL,NULL,NULL,NULL),(00123,00009,'STRAWBERRY SCENT','Raw Material',NULL,71,100,'ml',100,38,NULL,NULL,NULL,NULL,NULL),(00124,00010,'NAOCL','Raw Material',NULL,64,1000,'g',1000,31,NULL,NULL,NULL,NULL,NULL),(00125,00005,'Methyl salicylate','Raw Material',NULL,76,750,'g',750,14,NULL,NULL,NULL,NULL,NULL),(00126,00004,'Menthol','Raw Material',NULL,70,250,'g',250,36,NULL,NULL,NULL,NULL,NULL),(00127,00006,'IPA','Raw Material',NULL,112,1000,'ml',1000,12,NULL,NULL,NULL,NULL,NULL),(00128,00004,'Camphor','Raw Material',NULL,122,1000,'ml',1000,49,NULL,NULL,NULL,NULL,NULL),(00129,00007,'Eucalyptus oil','Raw Material',NULL,96,1000,'g',1000,24,NULL,NULL,NULL,NULL,NULL),(00130,00003,'Oil soluble green','Raw Material',NULL,98,100,'g',100,26,NULL,NULL,NULL,NULL,NULL),(00131,00002,'Mineral oil','Raw Material',NULL,115,100,'ml',100,42,NULL,NULL,NULL,NULL,NULL),(00132,00004,'White Sugar','Raw Material',NULL,57,100,'ml',100,16,NULL,NULL,NULL,NULL,NULL),(00133,00009,'Ferrous Sulphate Hep','Raw Material',NULL,68,250,'g',250,16,NULL,NULL,NULL,NULL,NULL),(00134,00008,'Sodium Benzoate','Raw Material',NULL,80,250,'ml',250,13,NULL,NULL,NULL,NULL,NULL),(00135,00009,'Citric Acid','Raw Material',NULL,96,250,'ml',250,22,NULL,NULL,NULL,NULL,NULL),(00136,00004,'Cinchona','Raw Material',NULL,74,100,'g',100,12,NULL,NULL,NULL,NULL,NULL),(00137,00001,'Tiki-Tiki','Raw Material',NULL,87,100,'ml',100,37,NULL,NULL,NULL,NULL,NULL),(00138,00001,'Ethyl Alcohol FG','Raw Material',NULL,94,500,'ml',500,10,NULL,NULL,NULL,NULL,NULL),(00139,00002,'Caramel Color NFH','Raw Material',NULL,77,500,'g',500,21,NULL,NULL,NULL,NULL,NULL),(00140,00009,'Vanilla Flavor','Raw Material',NULL,132,250,'ml',250,35,NULL,NULL,NULL,NULL,NULL),(00141,00005,'CAPB','Raw Material',NULL,90,500,'ml',500,24,NULL,NULL,NULL,NULL,NULL),(00142,00004,'Glycerine','Raw Material',NULL,141,100,'ml',100,22,NULL,NULL,NULL,NULL,NULL),(00143,00005,'Lactic Acid (PURAC)','Raw Material',NULL,138,1000,'ml',1000,24,NULL,NULL,NULL,NULL,NULL),(00144,00001,'Sodium Lactate (Purasal)','Raw Material',NULL,59,100,'g',100,49,NULL,NULL,NULL,NULL,NULL),(00145,00010,'Tea Tree oil','Raw Material',NULL,59,500,'g',500,40,NULL,NULL,NULL,NULL,NULL),(00146,00010,'Little John Texan','Raw Material',NULL,150,500,'g',500,39,NULL,NULL,NULL,NULL,NULL),(00147,00002,'Virginity Extract','Raw Material',NULL,81,750,'g',750,22,NULL,NULL,NULL,NULL,NULL),(00148,00009,'Guava Extract','Raw Material',NULL,51,1000,'ml',1000,33,NULL,NULL,NULL,NULL,NULL),(00149,00008,'D & C Blue #1(1% sol)','Raw Material',NULL,149,100,'g',100,31,NULL,NULL,NULL,NULL,NULL),(00150,00002,'Sodium Chloride','Raw Material',NULL,73,250,'ml',250,36,NULL,NULL,NULL,NULL,NULL),(00151,00004,'Deoplex','Raw Material',NULL,139,750,'ml',750,31,NULL,NULL,NULL,NULL,NULL),(00152,00008,'Tongkat ali  extract','Raw Material',NULL,53,250,'g',250,37,NULL,NULL,NULL,NULL,NULL),(00153,00001,'Avocado Oil','Raw Material',NULL,115,500,'g',500,39,NULL,NULL,NULL,NULL,NULL),(00154,00003,'Mangosteen Extract','Raw Material',NULL,65,250,'ml',250,35,NULL,NULL,NULL,NULL,NULL),(00155,00002,'Mango Extract','Raw Material',NULL,113,250,'ml',250,22,NULL,NULL,NULL,NULL,NULL),(00156,00004,'Bisabolol','Raw Material',NULL,123,500,'g',500,19,NULL,NULL,NULL,NULL,NULL),(00157,00006,'verstatil','Raw Material',NULL,57,750,'ml',750,50,NULL,NULL,NULL,NULL,NULL),(00158,00010,'MAP','Raw Material',NULL,114,1000,'g',1000,37,NULL,NULL,NULL,NULL,NULL),(00159,00004,'Cucumber extract','Raw Material',NULL,135,250,'g',250,42,NULL,NULL,NULL,NULL,NULL),(00160,00002,'Witch Hazel extract','Raw Material',NULL,58,100,'ml',100,30,NULL,NULL,NULL,NULL,NULL),(00161,00010,'Pentavitin','Raw Material',NULL,66,250,'ml',250,48,NULL,NULL,NULL,NULL,NULL),(00162,00003,'Polysorbate 20','Raw Material',NULL,141,250,'g',250,37,NULL,NULL,NULL,NULL,NULL),(00163,00006,'Vitamin E','Raw Material',NULL,84,250,'g',250,27,NULL,NULL,NULL,NULL,NULL),(00164,00007,'Euniphen','Raw Material',NULL,104,500,'ml',500,12,NULL,NULL,NULL,NULL,NULL),(00165,00005,'D & C Red # 33','Raw Material',NULL,91,500,'ml',500,45,NULL,NULL,NULL,NULL,NULL),(00166,00005,'Chicha Morada','Raw Material',NULL,93,750,'ml',750,38,NULL,NULL,NULL,NULL,NULL),(00167,00004,'Xanthan Gum','Raw Material',NULL,105,1000,'ml',1000,50,NULL,NULL,NULL,NULL,NULL),(00168,00005,'GINGER EXTRACT','Raw Material',NULL,138,100,'ml',100,43,NULL,NULL,NULL,NULL,NULL),(00169,00005,'Guava Extract','Raw Material',NULL,103,1000,'g',1000,36,NULL,NULL,NULL,NULL,NULL),(00170,00004,'SUGAR','Raw Material',NULL,54,750,'ml',750,12,NULL,NULL,NULL,NULL,NULL),(00171,00009,'CREAMER','Raw Material',NULL,83,500,'ml',500,49,NULL,NULL,NULL,NULL,NULL),(00237,00009,'SM BONUS TOILET DEO. STRAWBERRY  (FRONTLABEL)','Packaging',NULL,66,1,'na',1,42,NULL,NULL,NULL,NULL,NULL),(00238,00006,'SM BONUS TOILET DEO. LEMON  (FRONTLABEL)','Packaging',NULL,58,1,'na',1,43,NULL,NULL,NULL,NULL,NULL),(00239,00004,'SM BONUS TOILET DEO.SAMPAGUITA  (FRONTLABEL)','Packaging',NULL,58,1,'na',1,10,NULL,NULL,NULL,NULL,NULL),(00240,00004,'SM BonusToi. Deo REFILL Strawberry 50gms (Barcode)','Packaging',NULL,135,1,'na',1,47,NULL,NULL,NULL,NULL,NULL),(00241,00003,'SM BonusToi. Deo REFILL Strawberry 100gms (Barcode)','Packaging',NULL,75,1,'na',1,31,NULL,NULL,NULL,NULL,NULL),(00242,00010,'SM BONUS DEO HOLDER STRAW 50GMS (Barcode)','Packaging',NULL,50,1,'na',1,42,NULL,NULL,NULL,NULL,NULL),(00243,00008,'SM BONUS DEO HOLDER STRAW 100GMS (Barcode)','Packaging',NULL,99,1,'na',1,18,NULL,NULL,NULL,NULL,NULL),(00244,00006,'SM BonusToi. Deo REFILL Lemon 50gms (Barcode)','Packaging',NULL,133,1,'na',1,36,NULL,NULL,NULL,NULL,NULL),(00245,00007,'SM BONUS DEO REF. LEMON 100GMS (Barcode)','Packaging',NULL,120,1,'na',1,28,NULL,NULL,NULL,NULL,NULL),(00246,00007,'SM BONUS DEO HOLDER LEMON 50GMS (Barcode)','Packaging',NULL,122,1,'na',1,38,NULL,NULL,NULL,NULL,NULL),(00247,00004,'SM BONUS DEO HOLDER LEMON100GMS (Barcode)','Packaging',NULL,127,1,'na',1,11,NULL,NULL,NULL,NULL,NULL),(00248,00010,'BONUS DEO REFILL SAMPAGUITA 100GMS(Barcode)','Packaging',NULL,133,1,'na',1,32,NULL,NULL,NULL,NULL,NULL),(00249,00005,'BONUS DEO REFILL SAMPAGUITA 50GMS (Barcode)','Packaging',NULL,143,1,'na',1,42,NULL,NULL,NULL,NULL,NULL),(00250,00007,'BONUS DEOHolder SAMPAGUITA 50GMS (Barcode)','Packaging',NULL,118,1,'na',1,17,NULL,NULL,NULL,NULL,NULL),(00251,00006,'BONUS DEO HOLDER SAMPAGUITA 100GMS (Barcode)','Packaging',NULL,118,1,'na',1,29,NULL,NULL,NULL,NULL,NULL),(00252,00006,'SM Bonus TBC Pine 500ml set (back and Frontlabel)','Packaging',NULL,119,1,'na',1,34,NULL,NULL,NULL,NULL,NULL),(00253,00001,'SM BONUS TBC SAMPAGUITA 500ML LABEL SET (F/B)','Packaging',NULL,66,1,'na',1,14,NULL,NULL,NULL,NULL,NULL),(00254,00009,'SM BONUS TBCLEMON 500ML LABEL SET (F/B)','Packaging',NULL,129,1,'na',1,45,NULL,NULL,NULL,NULL,NULL),(00255,00004,'SM BONUS TBC LEMON 250ML LABEL SET (F/B)','Packaging',NULL,122,1,'na',1,31,NULL,NULL,NULL,NULL,NULL),(00256,00003,'SM Bonus TBC Pine 250ml set (back and Frontlabel)','Packaging',NULL,150,1,'na',1,33,NULL,NULL,NULL,NULL,NULL),(00257,00002,'SM BONUS TBC SAMPAGUITA 250ML LABEL SET (F/B)','Packaging',NULL,132,1,'na',1,20,NULL,NULL,NULL,NULL,NULL),(00258,00003,'SM BONUS ALCOHOL 70% 250ML (FRONTLABEL)','Packaging',NULL,102,1,'na',1,37,NULL,NULL,NULL,NULL,NULL),(00259,00004,'SM BONUS ALCOHOL 70% 500ML (FRONTLABEL)','Packaging',NULL,50,1,'na',1,42,NULL,NULL,NULL,NULL,NULL),(00260,00006,'SM BONUS SHOWER FRESH 250ML( FRONT LABEL)','Packaging',NULL,70,1,'na',1,10,NULL,NULL,NULL,NULL,NULL),(00261,00004,'SM BONUS SHOWER FRESH 500ML( FRONT LABEL)','Packaging',NULL,84,1,'na',1,19,NULL,NULL,NULL,NULL,NULL),(00262,00008,'SM BONUS BABYFRESH ALCOLOGNE 250ml( front label)','Packaging',NULL,115,1,'na',1,26,NULL,NULL,NULL,NULL,NULL),(00263,00003,'SM BONUS BABYFRESH ALCOLOGNE 500ml (front label)','Packaging',NULL,71,1,'na',1,32,NULL,NULL,NULL,NULL,NULL),(00264,00008,'SM BONUS GLASS CLEANER (FRONT /BACKLABEL)','Packaging',NULL,61,1,'na',1,49,NULL,NULL,NULL,NULL,NULL),(00265,00002,'SM BONUS ALCOHOL 70% 250ML (FRONTLABEL)','Packaging',NULL,53,1,'na',1,35,NULL,NULL,NULL,NULL,NULL),(00266,00001,'SM BONUS ALCOHOL 70% 500ML (FRONTLABEL)','Packaging',NULL,73,1,'na',1,17,NULL,NULL,NULL,NULL,NULL),(00267,00005,'SM BONUS SHOWER FRESH 250ML( FRONT LABEL)','Packaging',NULL,101,1,'na',1,13,NULL,NULL,NULL,NULL,NULL),(00268,00007,'SM BONUS SHOWER FRESH 500ML( FRONT LABEL)','Packaging',NULL,137,1,'na',1,29,NULL,NULL,NULL,NULL,NULL),(00269,00002,'SM BONUS BABYFRESH ALCOLOGNE 250ml( front label)','Packaging',NULL,87,1,'na',1,11,NULL,NULL,NULL,NULL,NULL),(00270,00001,'SM BONUS BABYFRESH ALCOLOGNE 500ml (front label)','Packaging',NULL,52,1,'na',1,25,NULL,NULL,NULL,NULL,NULL),(00271,00004,'CELLOPHANE - WHITE','Packaging',NULL,66,1,'na',1,22,NULL,NULL,NULL,NULL,NULL),(00272,00009,'CELLOPHANE - PINK','Packaging',NULL,133,1,'na',1,33,NULL,NULL,NULL,NULL,NULL),(00273,00005,'CELLOPHANE - YELLOW','Packaging',NULL,63,1,'na',1,43,NULL,NULL,NULL,NULL,NULL),(00274,00001,'CLEANING SOLUTION 201-0001-252','Packaging',NULL,93,1,'na',1,46,NULL,NULL,NULL,NULL,NULL),(00275,00006,'MAKE-UP V708-D','Packaging',NULL,129,1,'na',1,36,NULL,NULL,NULL,NULL,NULL),(00276,00007,'BLACK INK V435-D','Packaging',NULL,97,1,'na',1,27,NULL,NULL,NULL,NULL,NULL),(00277,00007,'TRIGGER SPRAYER 28MM WHITE (YUYTR100-1)','Packaging',NULL,102,1,'na',1,16,NULL,NULL,NULL,NULL,NULL),(00278,00003,'19.00mm ISPP (60ml Jimms Oil Liniment)','Packaging',NULL,89,1,'na',1,15,NULL,NULL,NULL,NULL,NULL),(00279,00005,'17.4MM ISPP  (30mL Jimms Oil Liniment)','Packaging',NULL,80,1,'na',1,17,NULL,NULL,NULL,NULL,NULL),(00280,00003,'34.00MM PS LINER (Trenz Purple Corn Powder Juice 350mL)','Packaging',NULL,107,1,'na',1,41,NULL,NULL,NULL,NULL,NULL),(00281,00009,'23.2MM SAFETY SEAL \'PE\' (SM Bonus Bleach 250mL)','Packaging',NULL,112,1,'na',1,25,NULL,NULL,NULL,NULL,NULL),(00282,00008,'26.5mm Safety Seal \'PE\' (SM Bonuis Bleach 1000mL)','Packaging',NULL,61,1,'na',1,40,NULL,NULL,NULL,NULL,NULL),(00283,00002,'31.5MM Safety Seal \'PE\' (SM Bonus 1/2 Gal )','Packaging',NULL,61,1,'na',1,46,NULL,NULL,NULL,NULL,NULL),(00284,00010,'22.00mm/ 18.5MM EPE Foam Washer (SM Bonus TBC)','Packaging',NULL,136,1,'na',1,13,NULL,NULL,NULL,NULL,NULL),(00285,00001,'CORR. BOX (RSC BFLUTE 175 lbs GLUED JOINT W/ ONE COLOR PRINT)','Packaging',NULL,135,1,'na',1,47,NULL,NULL,NULL,NULL,NULL),(00286,00009,'410 x 365  x 224mm x 175lbs. Test OD (500ml)','Packaging',NULL,81,1,'na',1,18,NULL,NULL,NULL,NULL,NULL),(00287,00006,'445 x 345 181mm x 175lbs. Test OD (250ml)','Packaging',NULL,87,1,'na',1,10,NULL,NULL,NULL,NULL,NULL),(00288,00009,'RSC,  C-125  LBS, Glued Joint, With Print  ','Packaging',NULL,132,1,'na',1,30,NULL,NULL,NULL,NULL,NULL),(00289,00002,'(Toilet deo 50g, Holder Sm Bonus) 288 x 223 x 161mm','Packaging',NULL,77,1,'na',1,14,NULL,NULL,NULL,NULL,NULL),(00290,00003,'50G REFILL(262 X 196 X 163mm) ','Packaging',NULL,57,1,'na',1,36,NULL,NULL,NULL,NULL,NULL),(00291,00008,'100G REFILL (290 x 226 x  262mm)','Packaging',NULL,149,1,'na',1,19,NULL,NULL,NULL,NULL,NULL),(00292,00002,'100G HOLDER (290 x 226 x 262mm)','Packaging',NULL,103,1,'na',1,37,NULL,NULL,NULL,NULL,NULL),(00293,00007,'54 X 30 TRANSPARENT W/ PRINT','Packaging',NULL,67,1,'na',1,16,NULL,NULL,NULL,NULL,NULL),(00294,00006,'46.00mm/38.mm SM BONUS TBC/ALCOHOL CAPSEAL','Packaging',NULL,129,1,'na',1,17,NULL,NULL,NULL,NULL,NULL),(00295,00005,'119.00mm/40.mm SM BONUS DEO CAPSEAL 100G.','Packaging',NULL,62,1,'na',1,17,NULL,NULL,NULL,NULL,NULL),(00296,00006,'105.00X40mm SM BONUS DEO CAPSEAL 50G.','Packaging',NULL,142,1,'na',1,29,NULL,NULL,NULL,NULL,NULL),(00297,00004,'60ML BOTTLE','Packaging',NULL,140,1,'na',1,37,NULL,NULL,NULL,NULL,NULL),(00298,00002,'DIRTY WHITE CAPS FOR 60ML','Packaging',NULL,110,1,'na',1,44,NULL,NULL,NULL,NULL,NULL),(00299,00002,'30ML BOTTLE','Packaging',NULL,106,1,'na',1,48,NULL,NULL,NULL,NULL,NULL),(00300,00006,'DIRTY WHITE CAPS FOR 30ML','Packaging',NULL,132,1,'na',1,34,NULL,NULL,NULL,NULL,NULL),(00301,00001,'PET GLASS CLEANER 600ML','Packaging',NULL,138,1,'na',1,20,NULL,NULL,NULL,NULL,NULL),(00302,00004,'7072-4076 Translucent Blue Screw on Smooth Wall with ','Packaging',NULL,140,1,'na',1,24,NULL,NULL,NULL,NULL,NULL),(00303,00009,'ZELSNAP, 4gms, Material: Polypropylene (PP)','Packaging',NULL,150,1,'na',1,35,NULL,NULL,NULL,NULL,NULL),(00304,00005,'7072-3148 Translucent PINK Screw on Smooth Wall with ','Packaging',NULL,106,1,'na',1,34,NULL,NULL,NULL,NULL,NULL),(00305,00004,'ZELSNAP, 4gms, Material: Polypropylene (PP)','Packaging',NULL,69,1,'na',1,47,NULL,NULL,NULL,NULL,NULL),(00306,00004,'7072-665 Translucent YELLOW Screw on Smooth Wall with ','Packaging',NULL,87,1,'na',1,14,NULL,NULL,NULL,NULL,NULL),(00307,00002,'ZELSNAP, 4gms, Material: Polypropylene (PP)','Packaging',NULL,124,1,'na',1,40,NULL,NULL,NULL,NULL,NULL),(00308,00005,'ALCOHOL BOT 250','Packaging',NULL,137,1,'na',1,36,NULL,NULL,NULL,NULL,NULL),(00309,00004,'ALCOHOL BOT. 500','Packaging',NULL,55,1,'na',1,20,NULL,NULL,NULL,NULL,NULL),(00310,00008,'24MM FLIPTOP CAP COLORED ( +VAT )','Packaging',NULL,108,1,'na',1,35,NULL,NULL,NULL,NULL,NULL),(00311,00006,'PACKAGING TAPE 3\" X 90Rls.\"','Packaging',NULL,105,1,'na',1,45,NULL,NULL,NULL,NULL,NULL),(00312,00003,'ALCOHOL 500 CARTON','Packaging',NULL,108,1,'na',1,31,NULL,NULL,NULL,NULL,NULL),(00313,00007,'ALCOHOL 250 CARTON','Packaging',NULL,84,1,'na',1,43,NULL,NULL,NULL,NULL,NULL),(00314,00005,'DEODORANT CARTON','Packaging',NULL,121,1,'na',1,34,NULL,NULL,NULL,NULL,NULL),(00315,00001,'GLASS SPRAY CARTON','Packaging',NULL,67,1,'na',1,27,NULL,NULL,NULL,NULL,NULL),(00316,00007,'GLASS REFILL CARTON','Packaging',NULL,61,1,'na',1,24,NULL,NULL,NULL,NULL,NULL),(00317,00009,'HALFGALLON CARTON','Packaging',NULL,134,1,'na',1,11,NULL,NULL,NULL,NULL,NULL),(00318,00001,'CREAMER POUCH','Packaging',NULL,72,1,'na',1,27,NULL,NULL,NULL,NULL,NULL),(00319,00008,'SUGAR POUCH','Packaging',NULL,72,1,'na',1,20,NULL,NULL,NULL,NULL,NULL),(00320,00009,'SUGAR PLASTIC','Packaging',NULL,57,1,'na',1,36,NULL,NULL,NULL,NULL,NULL),(00321,00004,'CREAMER PLASTIC','Packaging',NULL,57,1,'na',1,46,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Message` varchar(100) DEFAULT NULL,
  `Sender` varchar(45) DEFAULT NULL,
  `Recipient` varchar(100) DEFAULT NULL,
  `Date_Sent` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (00001,'Your order SM Bonus Alcohol 70% 500mL 2000 pieces is on process.','FLC','Megamall','2020-03-25'),(00002,'Your order SM Bonus Laundry Bleach250mL 3000 pieces is out for delivery today.','Fervar','Megamall','2020-03-21'),(00003,'Your order SM Bonus Pure Sugar Sachet 7g2000is On Process','FLC','Megamall','2020-04-02'),(00004,'Your order SM Bonus Pure Sugar Sachet 7g2000is On Process','FLC','Megamall','2020-04-02'),(00005,'Your order SM Bonus Pure Sugar Sachet 7g2000 is Out for Delivery.today','FLC','Megamall','2020-04-02'),(00006,'Your order SM BONUS ALCOHOL 70% 500ML (FRONTLABEL)2000 is On Process','FLC','Client','2020-04-02'),(00007,'Your order SM Bonus TBC Blue w/deo 500mL4000 is On Process','FLC','Client','2020-04-02'),(00008,'Your order SM Bonus Toilet Deo W/holder Sampa 50g3000 is On Process','FLC','Client','2020-04-02'),(00009,'Your order SM Bonus Toilet Deo  Ref. Lemon 50g3000 is On Process','FLC','Client','2020-04-02'),(00010,'Your order SM Bonus Toilet Deo  Ref. Lemon 50g3000 is On Process','FLC','Client','2020-04-02');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_requests`
--

DROP TABLE IF EXISTS `production_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_requests` (
  `ID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Recipe_ID` int(5) unsigned zerofill NOT NULL,
  `Requested_By` int(10) unsigned zerofill NOT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Theoretical_Yield` int DEFAULT NULL,
  `Actual_Yield` int DEFAULT NULL,
  `Percent_Yield` decimal(10,2) DEFAULT NULL,
  `Date_Requested` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Due_Date` datetime DEFAULT NULL,
  `Date_Accomplished` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_requests`
--

LOCK TABLES `production_requests` WRITE;
/*!40000 ALTER TABLE `production_requests` DISABLE KEYS */;
INSERT INTO `production_requests` VALUES (0000000072,00064,0000000007,'processing',97,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000073,00065,0000000008,'pending',65,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000074,00066,0000000009,'moved to inventory',69,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000075,00067,0000000010,'moved to inventory',80,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000076,00068,0000000011,'processing',43,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000077,00069,0000000012,'processing',20,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000078,00070,0000000013,'pending',23,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000079,00071,0000000014,'moved to inventory',41,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000080,00072,0000000015,'pending',23,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000081,00073,0000000016,'pending',26,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000082,00074,0000000017,'processing',25,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000083,00075,0000000018,'processing',42,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000084,00076,0000000019,'pending',46,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000085,00077,0000000020,'pending',25,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000086,00078,0000000021,'moved to inventory',88,NULL,NULL,'2020-02-08 02:48:44',NULL,NULL),(0000000087,00079,0000000022,'processing',52,NULL,NULL,'2020-02-11 21:12:52',NULL,NULL),(0000000088,00080,0000000023,'pending',45,NULL,NULL,'2020-02-12 00:40:29',NULL,NULL);
/*!40000 ALTER TABLE `production_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `production_requests_items`
--

DROP TABLE IF EXISTS `production_requests_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production_requests_items` (
  `ID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Request_ID` int(10) unsigned zerofill NOT NULL,
  `Item_ID` int(10) unsigned zerofill NOT NULL,
  `Quantity` int DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production_requests_items`
--

LOCK TABLES `production_requests_items` WRITE;
/*!40000 ALTER TABLE `production_requests_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `production_requests_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `ID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Item_ID` int(10) unsigned zerofill NOT NULL,
  `Ingredient_ID` int(10) unsigned zerofill NOT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_items`
--

DROP TABLE IF EXISTS `shipment_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipment_items` (
  `ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Shipment_ID` int(5) unsigned zerofill NOT NULL,
  `Item_ID` int(5) unsigned zerofill NOT NULL,
  `Quantity` int DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_items`
--

LOCK TABLES `shipment_items` WRITE;
/*!40000 ALTER TABLE `shipment_items` DISABLE KEYS */;
INSERT INTO `shipment_items` VALUES (00006,00009,00003,10,NULL),(00007,00008,00005,1,NULL),(00008,00002,00001,6,NULL),(00009,00001,00002,5,'Complete'),(00010,00008,00003,7,NULL),(00011,00007,00004,27,NULL),(00012,00004,00005,8,NULL),(00013,00002,00006,23,NULL),(00014,00002,00007,13,NULL),(00015,00009,00008,26,NULL),(00016,00008,00009,15,NULL),(00017,00010,00010,33,NULL),(00018,00009,00011,23,NULL),(00019,00002,00012,29,NULL),(00020,00002,00013,14,NULL),(00021,00009,00014,34,NULL),(00022,00002,00015,35,NULL),(00023,00008,00016,5,NULL),(00024,00008,00017,29,NULL),(00025,00006,00018,29,NULL),(00026,00002,00019,9,NULL),(00027,00001,00020,7,'Complete'),(00028,00010,00021,31,NULL),(00029,00006,00022,29,NULL),(00030,00002,00023,35,NULL),(00031,00003,00024,30,NULL),(00033,00007,00026,29,NULL),(00034,00001,00027,20,'Complete'),(00035,00010,00028,23,NULL),(00036,00009,00029,18,NULL),(00037,00003,00030,35,NULL),(00039,00001,00032,29,'Complete'),(00040,00009,00033,27,NULL),(00041,00001,00034,16,'Complete'),(00042,00010,00035,26,NULL),(00043,00006,00036,19,NULL),(00044,00001,00037,17,'Complete'),(00045,00001,00038,28,'Complete'),(00046,00008,00039,22,NULL),(00047,00008,00040,9,NULL),(00048,00004,00041,21,NULL),(00049,00006,00042,6,NULL),(00050,00005,00043,25,NULL),(00051,00005,00108,32,NULL),(00052,00010,00109,24,NULL),(00053,00006,00110,11,NULL),(00054,00009,00111,5,NULL),(00055,00009,00112,19,NULL),(00056,00002,00113,26,NULL),(00057,00003,00114,7,NULL),(00058,00002,00115,25,NULL),(00059,00003,00116,24,NULL),(00060,00004,00117,17,NULL),(00061,00003,00118,19,NULL),(00062,00008,00119,19,NULL),(00063,00009,00120,26,NULL),(00064,00001,00121,17,'Complete'),(00065,00007,00122,13,NULL),(00066,00003,00123,20,NULL),(00067,00005,00124,16,NULL),(00068,00008,00125,10,NULL),(00069,00010,00126,28,NULL),(00070,00004,00127,34,NULL),(00071,00007,00128,22,NULL),(00072,00009,00129,28,NULL),(00073,00006,00130,25,NULL),(00074,00005,00131,6,NULL),(00075,00006,00132,11,NULL),(00076,00003,00133,34,NULL),(00077,00001,00134,33,'Complete'),(00078,00003,00135,19,NULL),(00079,00004,00136,16,NULL),(00080,00010,00137,13,NULL),(00081,00006,00138,17,NULL),(00082,00008,00139,9,NULL),(00083,00009,00140,24,NULL),(00084,00001,00141,30,'Complete'),(00085,00007,00142,19,NULL),(00086,00003,00143,34,NULL),(00087,00006,00144,16,NULL),(00088,00003,00145,30,NULL),(00089,00006,00146,14,NULL),(00090,00009,00147,11,NULL),(00091,00008,00148,24,NULL),(00092,00003,00149,25,NULL),(00093,00005,00150,31,NULL),(00094,00010,00151,19,NULL),(00095,00010,00152,22,NULL),(00096,00006,00153,30,NULL),(00097,00007,00154,25,NULL),(00098,00001,00155,12,'Complete'),(00099,00002,00156,26,NULL),(00100,00007,00157,26,NULL),(00101,00010,00158,9,NULL),(00102,00010,00159,33,NULL),(00103,00001,00160,13,'Complete'),(00104,00010,00161,30,NULL),(00105,00001,00162,22,'Complete'),(00106,00002,00163,20,NULL),(00107,00100,00109,70,'Complete'),(00108,00101,00108,11,'Complete'),(00109,00101,00109,1341,'Complete'),(00110,00101,00110,1412,'Complete'),(00111,00102,00001,5,NULL),(00112,00103,00004,67,'Complete');
/*!40000 ALTER TABLE `shipment_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipments` (
  `ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Created_By` int(10) unsigned zerofill NOT NULL,
  `Truck_ID` int(5) unsigned zerofill NOT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `Origin` varchar(100) DEFAULT NULL,
  `Destination` varchar(100) DEFAULT NULL,
  `Distance` decimal(10,0) DEFAULT NULL,
  `Delivery_Agent_ID` int DEFAULT NULL,
  `Date_Created` datetime DEFAULT CURRENT_TIMESTAMP,
  `Date_Due` datetime DEFAULT NULL,
  `Date_Accomplished` datetime DEFAULT NULL,
  `Estimated_Time` int DEFAULT NULL,
  `Actual_Time` int DEFAULT NULL,
  `Delay` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` VALUES (00104,0000000001,00003,'Inbound','Complete','SANTA MESA HEIGHT','QUIAPO',12,2,'2019-01-24 11:36:43','2019-02-23 12:44:08','2019-03-19 22:26:25',222,248,26),(00106,0000000002,00002,'Outbound','Pending','UGONG NORTE','ERMITA',14,2,'2019-01-22 05:07:28','2019-03-01 00:38:56','2019-06-22 19:53:27',90,126,36),(00107,0000000003,00001,'Inbound','Pending','NOVALICHES','SANTA MESA',14,2,'2019-01-19 17:51:10','2019-02-23 10:57:39','2019-11-29 12:47:56',133,145,12),(00108,0000000004,00002,'Inbound','In-Transit','NEW MANILA','SAN MIGUEL',13,2,'2019-01-07 15:58:55','2019-02-24 11:39:00','2019-10-07 07:49:30',96,132,36);
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Contact_Person` varchar(45) DEFAULT NULL,
  `Contact_Number` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (00001,'5M CHEMICALS','Tyisha Ferrell','63-929-555-2433','beverly39@gmail.com','00 Hettinger Junction, Piddig 8698 Misamis Occidental'),(00002,'ALYSONS CHEM','Erlene Barrick','63-928-555-8570','keith10@yahoo.com','00A McDermott Ridge, San Sebastian 3297 Leyte'),(00003,'Fervar','Wilber Simmonds','63-909-555-8785','tuckermiguel@hotmail.com','02/85 Stamm Isle, Poblacion, Dapitan 8473 Lanao del Sur'),(00004,'CCT CHEMICALS, INC.','Janiece Braggs','63-932-555-2705','fphillips@collins-walker.com','07/11 Zemlak Crescent, Matanao 3520 Cagayan'),(00005,'CHEMISOL','Xenia Driggs','63-280-555-5286','jonesrussell@norton-gutierrez.com','11 Kunze Radial Apt. 254, Poblacion, Puerto Princesa 6133 Quezon'),(00006,'CTC CHEMICALS','Gwyn Garris','63-919-555-3616','katherine31@robles.com','12A Collier Key, Poblacion, La Carlota 7245 Metro Manila'),(00007,'ESSENTIAL ING. SPECIALIST INC.','Hyman Woll','63-919-555-7003','nielsenwilliam@simpson.com','14A Dare Square Suite 538, Bugasong 1776 Zamboanga Sibugay'),(00008,'EUNICE INC.','Antoine Bolster','63-932-555-7515','wendymurphy@yahoo.com','15 Skiles Street, Naujan 5797 Maguindanao'),(00009,'EURO CHEM','Ricky Marcoux','63-933-555-9329','wkelley@hotmail.com','19A Russel Turnpike Suite 153, Cabatuan 0921 Quirino'),(00010,'HEXICHEM','Stephine Meisel','63-921-555-659','thomaslucas@yahoo.com','2205-A West Tower Philippine Stock Exchange Building Exchange StreetOrtigas Center 1605'),(00011,'HIMMEL/RACHEM','Ardelle Goya','63-921-555-6193','allensherri@hotmail.com','27A Heathcote Glen Suite 961, Mahaplag 4723 Dinagat Islands'),(00012,'HYCO','Julian Schaefer','63-922-555-5914','vbanks@johnson-schmidt.com','38/99 Maggio Extension, Poblacion, Baguio 8179 Cavite'),(00013,'ISLANDWIDE','Julienne Schwanke','63-280-555-2350','solisjonathan@brown.com','39/83 Wiza Meadow Apt. 323, Rosario 7601 Sarangani'),(00014,'J-LAI CHEMICAL CORP','Joslyn Stille','63-280-555-2671','escott@hotmail.com','45A Goyette Roads, Madamba 7299 Agusan del Sur'),(00015,'KAMAGONG ENT.','Vernon Jowett','63-909-555-690','kaufmanheather@gmail.com','151 san gabriel street, Balagtas, Bulacan'),(00016,'MANG NOLI','Haydee Bonenfant','63-922-555-690','nicolebowen@sutton.com','45A Windler Locks Suite 394, Poblacion, Malabon 6410 Sarangani'),(00017,'NEW FLAVOR HOUSE','Lacy Martin','63-919-555-4093','csummers@shelton.com','49 Herzog Plaza, Hinigaran 0877 Negros Oriental'),(00018,'NEWCHEM CO. INC.','Naomi Applin','63-910-555-5847','paulfranco@hotmail.com','49A Corwin Isle, Poblacion, Lucena 0920 Maguindanao'),(00019,'OMNICIENT','Sebastian Schlottmann','63-283-555-9177','gary95@morris.org','61A Schmitt Crest Apt. 633, Poblacion, Himamaylan 6736 Guimaras'),(00020,'RA. KELMAN','Peter Schweitzer','63-909-555-4643','qmullen@oliver.com','62 Rath Estates, Poblacion, Oroquieta 8794 Bohol'),(00021,'RACHEM ENT.','Timika Fillmore','63-921-555-3338','ykautzer@parisian.com','63A/20 Cronin Lock Apt. 980, Santo Domingo 6305 Zamboanga del Sur'),(00022,'SHAKESVILLE ENT.','Yuri Rundell','63-280-555-199','renner.anya@nolan.com','66A/63 Hartmann Trace, Sorsogon City 7304 Southern Leyte'),(00023,'V.A. & SONS','Evelyne Michael','63-908-555-7622','littel.stephon@grimes.org','68 Collins Parkway, Roxas 1832 Abra'),(00024,'ZEFINA MEGA SALES','Carroll Harren','63-928-555-1576','grimes.karson@gmail.com','74 Towne Manors Apt. 388, Poblacion, Meycauayan 4081 Batangas');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_log`
--

DROP TABLE IF EXISTS `system_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_log` (
  `ID` int(5) unsigned zerofill NOT NULL,
  `User_ID` int(5) unsigned zerofill NOT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Body` varchar(420) DEFAULT NULL,
  `Category` varchar(45) DEFAULT NULL,
  `Timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_log`
--

LOCK TABLES `system_log` WRITE;
/*!40000 ALTER TABLE `system_log` DISABLE KEYS */;
INSERT INTO `system_log` VALUES (00043,00001,'PEG 40(70) was added to inventory','PEG 40(70) was added to inventory from Shipment no.100 and approved by Michael C. Francisco on 06/02/2020 9:31:23 PM','Inventory Update','2020-02-06 21:31:23'),(00044,00001,'Bateau TM1887(11) was added to inventory','Bateau TM1887(11) was added to inventory from Shipment no.101 and approved by Michael C. Francisco on 06/02/2020 9:33:12 PM','Inventory Update','2020-02-06 21:33:12'),(00045,00001,'PEG 40(1341) was added to inventory','PEG 40(1341) was added to inventory from Shipment no.101 and approved by Michael C. Francisco on 06/02/2020 9:33:12 PM','Inventory Update','2020-02-06 21:33:12'),(00046,00001,'Baby Fresh Scent(1412) was added to inventory','Baby Fresh Scent(1412) was added to inventory from Shipment no.101 and approved by Michael C. Francisco on 06/02/2020 9:33:12 PM','Inventory Update','2020-02-06 21:33:12'),(00048,00001,'SM Bonus Toilet Deo Ref. Straw (x67) was reduced from inventory','SM Bonus Toilet Deo Ref. Straw (x67) was reduced from inventory from Shipment no.103 and approved by Michael C. Francisco on 12/02/2020 8:46:52 AM','Inventory Update','2020-02-12 08:46:52'),(00049,00001,'SM Bonus Toilet Deo W/holder Straw(x10) was requested','SM Bonus Toilet Deo W/holder Straw(10) was requested by Michael C. Francisco on 12/02/2020 8:47:14 AM','Production Request','2020-02-12 08:47:14');
/*!40000 ALTER TABLE `system_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_log_read`
--

DROP TABLE IF EXISTS `system_log_read`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `system_log_read` (
  `ID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `System_Log_ID` int(10) unsigned zerofill NOT NULL,
  `User_ID` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_log_read`
--

LOCK TABLES `system_log_read` WRITE;
/*!40000 ALTER TABLE `system_log_read` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_log_read` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trucks`
--

DROP TABLE IF EXISTS `trucks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trucks` (
  `ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Plate_Number` varchar(45) DEFAULT NULL,
  `Model` varchar(45) DEFAULT NULL,
  `Capacity` int DEFAULT NULL,
  `Kilometers_Per_Liter` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trucks`
--

LOCK TABLES `trucks` WRITE;
/*!40000 ALTER TABLE `trucks` DISABLE KEYS */;
INSERT INTO `trucks` VALUES (00001,'A','A','A',1000,1000),(00002,'B','B','B',1000,1000),(00003,'C','C','C',1000,1000);
/*!40000 ALTER TABLE `trucks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `ID` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Username` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `User_Level` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Username_UNIQUE` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (00007,'Michael C. Francisco','admin','admin','IT Admin'),(00008,'Driver','driver','driver','Delivery Agent'),(00010,'Paul','test','dispensing','Dispensing Officer'),(00011,'Ringo','dispatching','dispatching','Dispatching Officer'),(00012,'George','production','production','Production Officer'),(00013,'SM','Client','1111','Client'),(00014,'SM Hypermarket Mandaluyong','Hypermarket-Mand','admin','Client'),(00015,'SM Megamall','Megamall','mega','Client'),(00016,'SM Hypermarket Cubao','Hyper-Cubao','admin','Client');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-02 18:32:30
