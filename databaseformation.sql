CREATE DATABASE  IF NOT EXISTS `formation` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `formation`;
-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: formation
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `id_class` int unsigned NOT NULL AUTO_INCREMENT,
  `libelle_class` varchar(45) NOT NULL,
  `teacher_id_teacher` int unsigned NOT NULL,
  PRIMARY KEY (`id_class`),
  UNIQUE KEY `id_class_UNIQUE` (`id_class`),
  KEY `fk_class_teacher1_idx` (`teacher_id_teacher`),
  CONSTRAINT `fk_class_teacher1` FOREIGN KEY (`teacher_id_teacher`) REFERENCES `teacher` (`id_teacher`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'Afton',1),(2,'Elli',2),(3,'Worthy',3),(4,'Alisha',4),(5,'Thomasine',5),(6,'Alfred',6),(7,'Nanny',7),(8,'Rex',8),(9,'Phedra',9),(10,'Devonne',10),(11,'Jeralee',11),(12,'Tome',12),(13,'Kendell',13),(14,'Sunshine',14),(15,'Tabby',15),(16,'Ranee',16),(17,'Wilfred',17),(18,'Cecily',18),(19,'Ansel',19),(20,'Michel',20),(21,'Thedrick',21),(22,'Link',22),(23,'Shea',23),(24,'Beckie',24),(25,'Jedediah',25),(26,'Darrick',26),(27,'Bond',27),(28,'Emmey',28),(29,'Jackquelin',29),(30,'Johann',30),(31,'Sutton',31),(32,'Sid',32),(33,'Seka',33),(34,'Yorke',34),(35,'Lucian',35),(36,'Allis',36),(37,'Bettina',37),(38,'Jacobo',38),(39,'Caye',39),(40,'Thom',40),(41,'Brose',41),(42,'Bathsheba',42),(43,'Worth',43),(44,'Courtney',44),(45,'Inger',45),(46,'Almire',46),(47,'Binky',47),(48,'Kylen',48),(49,'Babb',49),(50,'Elie',50),(51,'Codie',51),(52,'Tiphany',52),(53,'Joell',53),(54,'Rodney',54),(55,'Britney',55),(56,'Joelly',56),(57,'Dee',57),(58,'Duncan',58),(59,'Shurwood',59),(60,'Whittaker',60),(61,'Neysa',61),(62,'Jania',62),(63,'Ellene',63),(64,'Delphine',64),(65,'Gavan',65),(66,'Fifi',66),(67,'Leandra',67),(68,'Alleyn',68),(69,'Tarrah',69),(70,'Nedi',70),(71,'Scarlet',71),(72,'Johanna',72),(73,'Jaymie',73),(74,'Jenifer',74),(75,'Portie',75),(76,'Annadiana',76),(77,'Hank',77),(78,'Judi',78),(79,'Lynnelle',79),(80,'Rhiamon',80),(81,'Maryl',81),(82,'Marris',82),(83,'Lonnard',83),(84,'Bronny',84),(85,'Martie',85),(86,'Reginald',86),(87,'Roldan',87),(88,'Billye',88),(89,'Lorena',89),(90,'Alia',90),(91,'Brion',91),(92,'Mia',92),(93,'Karita',93),(94,'Kennith',94),(95,'Krissy',95),(96,'Fred',96),(97,'Maxy',97),(98,'Gallard',98),(99,'Rees',99),(100,'Marlee',100);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id_student` int unsigned NOT NULL AUTO_INCREMENT,
  `nom_student` varchar(45) NOT NULL,
  `prenom_student` varchar(45) NOT NULL,
  `adresse` varchar(45) NOT NULL,
  `class_id_class` int unsigned NOT NULL,
  `training_id_training` int unsigned NOT NULL,
  PRIMARY KEY (`id_student`),
  UNIQUE KEY `id_students_UNIQUE` (`id_student`),
  KEY `fk_student_class_idx` (`class_id_class`),
  KEY `fk_student_training1_idx` (`training_id_training`),
  CONSTRAINT `fk_student_class` FOREIGN KEY (`class_id_class`) REFERENCES `class` (`id_class`),
  CONSTRAINT `fk_student_training1` FOREIGN KEY (`training_id_training`) REFERENCES `training` (`id_training`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Cleavland','Wyss','Stephana',1,1),(2,'Celestyn','Pike','Thorstein',2,2),(3,'Viviana','Gerge','Konstanze',3,3),(4,'Stevy','McBeth','Daloris',4,4),(5,'Dawna','Heino','Jammal',5,5),(6,'Edik','Peiro','Eartha',6,6),(7,'Luigi','Hambly','Ardella',7,7),(8,'Lola','Leban','Brenna',8,8),(9,'Sephira','Huortic','Adam',9,9),(10,'Nana','Morsey','Vite',10,10),(11,'Alexis','Guilliland','Zarla',11,11),(12,'Hildy','Bouchier','Armando',12,12),(13,'Wandie','Ferrieri','Sisile',13,13),(14,'Vina','Hantusch','Arabele',14,14),(15,'Margalo','Ziemke','Deanna',15,15),(16,'Orella','Reely','Mavra',16,16),(17,'Jaquelyn','Cronshaw','Alyda',17,17),(18,'Raff','Reynalds','Jamey',18,18),(19,'Milt','Cowburn','Galvin',19,19),(20,'Zorina','Stranks','Genna',20,20),(21,'Sula','Leddie','Jorry',21,21),(22,'Frazer','Olenichev','Drake',22,22),(23,'Thacher','Banishevitz','Eadith',23,23),(24,'Melba','Cardoo','Carlyn',24,24),(25,'Dukie','Beek','Bendix',25,25),(26,'Ariana','McCuis','Lyndy',26,26),(27,'Locke','Dearl','Karylin',27,27),(28,'Winne','Dy','Lari',28,28),(29,'Nealy','Thurlbeck','Roseline',29,29),(30,'Tulley','Goundrill','Ruthann',30,30),(31,'Pandora','Pester','Marthena',31,31),(32,'Flynn','Ifill','Seana',32,32),(33,'Norby','Hussell','Lorry',33,33),(34,'Brana','Rance','Parry',34,34),(35,'Tessi','Ilyukhov','Xerxes',35,35),(36,'Theresina','Father','Lora',36,36),(37,'Winni','Broggio','Hollis',37,37),(38,'Walther','Kunath','Heida',38,38),(39,'Jameson','Artois','George',39,39),(40,'Rolf','Roux','Hamlin',40,40),(41,'Elsbeth','Duggon','Ansel',41,41),(42,'Cass','Baleine','Grannie',42,42),(43,'Dan','De Dei','May',43,43),(44,'Tito','Belt','Basia',44,44),(45,'Mercedes','Shallo','Anthiathia',45,45),(46,'Consolata','Peres','Viv',46,46),(47,'Yelena','Croyden','Morley',47,47),(48,'Diena','Gauvain','Laney',48,48),(49,'Nikki','Upchurch','Pansy',49,49),(50,'Chrysler','Littley','Baily',50,50),(51,'Clareta','Pickance','Lisette',51,51),(52,'Denys','Yakovliv','Willdon',52,52),(53,'Alisun','Bradnick','Sandy',53,53),(54,'Darsie','Linn','Winny',54,54),(55,'Cozmo','Wasiel','Elyse',55,55),(56,'Burty','Vedeneev','Roby',56,56),(57,'Rowe','Immings','Siouxie',57,57),(58,'Jonathan','Attridge','Colin',58,58),(59,'Zorine','Wimlett','Jeremiah',59,59),(60,'Mimi','Mossop','Dasha',60,60),(61,'Hilary','Upfold','Agata',61,61),(62,'Fred','Earie','Rusty',62,62),(63,'Starlene','Chaimson','Hercule',63,63),(64,'Freddie','Sleightholme','Arlette',64,64),(65,'Benny','Torfin','Fitz',65,65),(66,'Brandise','Sachno','Abie',66,66),(67,'Camella','Geindre','Shurwood',67,67),(68,'Bentley','Foister','Concettina',68,68),(69,'Ericka','Mathew','Hyacinthe',69,69),(70,'Bambie','Dennick','Bernardine',70,70),(71,'Earl','Jeaneau','Jackie',71,71),(72,'Stefano','Ashard','Ivette',72,72),(73,'Jacquenette','Ingman','Luke',73,73),(74,'Paton','Latta','Doralynne',74,74),(75,'Daffy','Whale','Ralina',75,75),(76,'Clovis','Perel','Skyler',76,76),(77,'Fabian','Armin','Timmie',77,77),(78,'Christi','Ashlin','Mamie',78,78),(79,'Riva','Skeete','Deni',79,79),(80,'Roderic','Oldred','Aaren',80,80),(81,'Darryl','Shales','Paulo',81,81),(82,'Jania','Penburton','Koo',82,82),(83,'Rebbecca','Daouze','Shayne',83,83),(84,'Nerti','Cuniffe','Edy',84,84),(85,'Camala','Boscott','Inness',85,85),(86,'Sofie','Dighton','Purcell',86,86),(87,'Whitby','Gohn','Jeffy',87,87),(88,'Lem','Whiscard','Suzanna',88,88),(89,'Joachim','Reaman','Cullin',89,89),(90,'Vivyanne','Morden','Gib',90,90),(91,'Jackelyn','Kynston','Juliann',91,91),(92,'Rosalinde','Rowen','Gael',92,92),(93,'Kathye','Sacaze','Dale',93,93),(94,'Joyan','Skey','Miller',94,94),(95,'Robbi','Povah','Job',95,95),(96,'Alphard','Barkshire','Florette',96,96),(97,'Amelia','Grimditch','Hagen',97,97),(98,'Tuckie','Matthensen','Sammy',98,98),(99,'Cordie','Scranney','Nettle',99,99),(100,'Kaitlynn','Gaither','Glen',100,100);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `id_teacher` int unsigned NOT NULL AUTO_INCREMENT,
  `nom_teacher` varchar(45) NOT NULL,
  `prenom_teacher` varchar(45) NOT NULL,
  PRIMARY KEY (`id_teacher`),
  UNIQUE KEY `id_teacher_UNIQUE` (`id_teacher`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Farrell','Antonikov'),(2,'Coretta','Jillions'),(3,'Ganny','Wiltshear'),(4,'Ferdy','Thake'),(5,'Corbett','Dallow'),(6,'Dennis','Colenutt'),(7,'Kiri','Runnalls'),(8,'Em','Julian'),(9,'Gardiner','Kynforth'),(10,'Konstance','Birtle'),(11,'Roz','Seys'),(12,'Mart','O\'Duggan'),(13,'Flori','Karpychev'),(14,'Angus','Wilne'),(15,'Aguie','Strathdee'),(16,'Maybelle','Kissack'),(17,'Vanna','Whartonby'),(18,'Wiley','Gluyus'),(19,'Garik','Gebbe'),(20,'Skelly','Dunbabin'),(21,'Augustin','Skittrell'),(22,'Emogene','Dawbury'),(23,'Lambert','Bollini'),(24,'Tan','Viccars'),(25,'Andres','Klagge'),(26,'Danita','Kempshall'),(27,'Robby','Kilcoyne'),(28,'Kit','Freschi'),(29,'Aila','Farries'),(30,'Cherice','MacNulty'),(31,'Katusha','Braddon'),(32,'Liza','Cant'),(33,'Valdemar','Jirusek'),(34,'Ferguson','Tippings'),(35,'Arlena','Crawcour'),(36,'Simone','Stonnell'),(37,'Berte','Santry'),(38,'Michel','Pettwood'),(39,'Rozella','Alti'),(40,'Connie','Sendley'),(41,'Gay','Titchard'),(42,'Terrye','Pinchon'),(43,'Clem','Huckleby'),(44,'Meghan','Slator'),(45,'Lynn','Haslin'),(46,'Garreth','Greenhowe'),(47,'Nina','Iacobini'),(48,'Bard','Franks'),(49,'Hurlee','Soitoux'),(50,'Rasia','Ruffler'),(51,'Thane','Lewsey'),(52,'Joni','Broadbridge'),(53,'Domenico','Dolphin'),(54,'Abe','Hamberston'),(55,'Devinne','Garrish'),(56,'Karna','Senechell'),(57,'Molli','Solomonides'),(58,'Mahala','Leheude'),(59,'Matthew','Kopacek'),(60,'Christine','Paffitt'),(61,'Annalee','Bettles'),(62,'Dyanne','Belasco'),(63,'Keene','Freund'),(64,'Sawyer','Schwand'),(65,'Beatrix','Fells'),(66,'Marline','Sket'),(67,'Trudi','McGray'),(68,'Glenda','Davidwitz'),(69,'Sabina','Kalker'),(70,'Glori','Farman'),(71,'Ruben','Brownrigg'),(72,'Filmer','McCafferky'),(73,'Adrea','Deveril'),(74,'Ryon','Tuff'),(75,'Corrina','Bowering'),(76,'Barrie','Curteis'),(77,'Mallissa','Bare'),(78,'Nana','MacClay'),(79,'Bradley','Lattos'),(80,'Jeffrey','Farnhill'),(81,'Rand','Camamill'),(82,'Willy','Pointon'),(83,'Maurene','Kibby'),(84,'Emiline','Dring'),(85,'Arv','Lawly'),(86,'Ninette','Pothbury'),(87,'Charla','LAbbet'),(88,'Fionnula','Ambrogioni'),(89,'Stanwood','Pearmain'),(90,'Forester','Wilber'),(91,'Tessy','Newens'),(92,'Gracie','Blenkinsopp'),(93,'Luce','Matfield'),(94,'Trescha','Goulding'),(95,'Valentine','Jerrom'),(96,'Clem','Buckston'),(97,'Alvira','McWard'),(98,'Chickie','Rivallant'),(99,'Ingar','Sodo'),(100,'Myrle','Kyme');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `training`
--

DROP TABLE IF EXISTS `training`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `training` (
  `id_training` int unsigned NOT NULL AUTO_INCREMENT,
  `libelle_training` varchar(45) NOT NULL,
  PRIMARY KEY (`id_training`),
  UNIQUE KEY `id_training_UNIQUE` (`id_training`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `training`
--

LOCK TABLES `training` WRITE;
/*!40000 ALTER TABLE `training` DISABLE KEYS */;
INSERT INTO `training` VALUES (1,'Vanny'),(2,'Friederike'),(3,'Johnnie'),(4,'Mirelle'),(5,'Adelaida'),(6,'Mareah'),(7,'Faustine'),(8,'Garrot'),(9,'Mae'),(10,'Frans'),(11,'Edithe'),(12,'Dora'),(13,'Leicester'),(14,'Rosemaria'),(15,'Mitchel'),(16,'Marcus'),(17,'Veronike'),(18,'Truman'),(19,'Ted'),(20,'Allen'),(21,'Shellysheldon'),(22,'Creighton'),(23,'Mady'),(24,'Spence'),(25,'Dalton'),(26,'Carolina'),(27,'Candra'),(28,'Rinaldo'),(29,'Hadley'),(30,'Jayme'),(31,'Lyndell'),(32,'Yvonne'),(33,'Janet'),(34,'Jana'),(35,'Vasilis'),(36,'Odetta'),(37,'Orelle'),(38,'Silvan'),(39,'Berty'),(40,'Sidnee'),(41,'L;urette'),(42,'Abdel'),(43,'Kris'),(44,'Kristos'),(45,'Zechariah'),(46,'Raphaela'),(47,'Trenton'),(48,'Evy'),(49,'Zea'),(50,'Basilius'),(51,'Ray'),(52,'Winnifred'),(53,'Arline'),(54,'Roslyn'),(55,'Leese'),(56,'Tybi'),(57,'Edgardo'),(58,'Thedric'),(59,'Derrik'),(60,'Heinrick'),(61,'Sergio'),(62,'Bonnibelle'),(63,'Viva'),(64,'Sheffy'),(65,'Lianna'),(66,'Bendix'),(67,'Nicolai'),(68,'Yorker'),(69,'Deonne'),(70,'Hunfredo'),(71,'Jesus'),(72,'Valma'),(73,'Harrison'),(74,'Margot'),(75,'Conroy'),(76,'Carlos'),(77,'Cathee'),(78,'Loni'),(79,'Maryann'),(80,'Rory'),(81,'Allison'),(82,'Dalia'),(83,'Eveline'),(84,'Rossy'),(85,'Taddeusz'),(86,'Barbara'),(87,'Giraldo'),(88,'Town'),(89,'Hugo'),(90,'Mada'),(91,'Betteann'),(92,'Hortensia'),(93,'Jacobo'),(94,'Sheilakathryn'),(95,'Melisenda'),(96,'Sarah'),(97,'Virgie'),(98,'Noelyn'),(99,'Simone'),(100,'Margo');
/*!40000 ALTER TABLE `training` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-18 10:00:46
