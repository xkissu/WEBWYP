-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: samochody
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `model` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `make_id` int(10) NOT NULL DEFAULT '0',
  `code` varchar(125) NOT NULL DEFAULT '',
  `title` varchar(125) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1315 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES (6,1,'ILX','ILX'),(7,1,'INTEG','Integra'),(8,1,'LEGEND','Legend'),(9,1,'MDX','MDX'),(10,1,'NSX','NSX'),(11,1,'RDX','RDX'),(14,1,'RL',' - RL'),(15,1,'RSX','RSX'),(16,1,'SLX','SLX'),(21,1,'TSX','TSX'),(22,1,'VIGOR','Vigor'),(23,1,'ZDX','ZDX'),(24,1,'ACUOTH','Other Acura Models'),(25,2,'ALFA164','164'),(26,2,'ALFA8C','8C Competizione'),(27,2,'ALFAGT','GTV-6'),(28,2,'MIL','Milano'),(29,2,'SPID','Spider'),(30,2,'ALFAOTH','Other Alfa Romeo Models'),(31,3,'AMCALLIAN','Alliance'),(32,3,'CON','Concord'),(33,3,'EAGLE','Eagle'),(34,3,'AMCENC','Encore'),(35,3,'AMCSPIRIT','Spirit'),(36,3,'AMCOTH','Other AMC Models'),(37,4,'DB7','DB7'),(38,4,'DB9','DB9'),(39,4,'DBS','DBS'),(40,4,'LAGONDA','Lagonda'),(41,4,'RAPIDE','Rapide'),(42,4,'V12VANT','V12 Vantage'),(43,4,'VANTAGE','V8 Vantage'),(44,4,'VANQUISH','Vanquish'),(45,4,'VIRAGE','Virage'),(46,4,'UNAVAILAST','Other Aston Martin Models'),(47,5,'AUDI100','100'),(48,5,'AUDI200','200'),(49,5,'4000','4000'),(50,5,'5000','5000'),(51,5,'80','80'),(52,5,'90','90'),(53,5,'A3','A3'),(54,5,'A4','A4'),(55,5,'A5','A5'),(56,5,'A6','A6'),(57,5,'A7','A7'),(58,5,'A8','A8'),(59,5,'ALLRDQUA','allroad'),(60,5,'AUDICABRI','Cabriolet'),(61,5,'AUDICOUPE','Coupe'),(62,5,'Q3','Q3'),(63,5,'Q5','Q5'),(64,5,'Q7','Q7'),(65,5,'QUATTR','Quattro'),(66,5,'R8','R8'),(67,5,'RS4','RS 4'),(68,5,'RS5','RS 5'),(69,5,'RS6','RS 6'),(70,5,'S4','S4'),(71,5,'S5','S5'),(72,5,'S6','S6'),(73,5,'S7','S7'),(74,5,'S8','S8'),(75,5,'TT','TT'),(76,5,'TTRS','TT RS'),(77,5,'TTS','TTS'),(78,5,'V8','V8 Quattro'),(79,5,'AUDOTH','Other Audi Models'),(80,6,'CONVERT','Convertible'),(81,6,'COUPEAVANT','Coupe'),(82,6,'SEDAN','Sedan'),(83,6,'UNAVAILAVA','Other Avanti Models'),(84,7,'ARNAGE','Arnage'),(85,7,'AZURE','Azure'),(86,7,'BROOKLANDS','Brooklands'),(87,7,'BENCONT','Continental'),(88,7,'CORNICHE','Corniche'),(89,7,'BENEIGHT','Eight'),(90,7,'BENMUL','Mulsanne'),(91,7,'BENTURBO','Turbo R'),(92,7,'UNAVAILBEN','Other Bentley Models'),(93,8,'1_SERIES','1 Series (3)'),(97,8,'3_SERIES','3 Series (29)'),(127,8,'5_SERIES',' 5 Series'),(147,8,'6_SERIES','6 Series (8)'),(156,8,'7_SERIES','7 Series (15)'),(172,8,'8_SERIES','8 Series (4)'),(177,8,'L_SERIES','L Series (1)'),(179,8,'M_SERIES','M Series (8)'),(180,8,'1SERIESM',' - 1 Series M'),(183,8,'M3',' - M3'),(184,8,'M5',' - M5'),(185,8,'M6',' - M6'),(186,8,'X5M',' - X5 M'),(187,8,'X6M',' - X6 M'),(190,8,'X1',' - X1'),(191,8,'X3',' - X3'),(192,8,'X5',' - X5'),(193,8,'X6',' - X6'),(195,8,'Z3',' - Z3'),(196,8,'Z4',' - Z4'),(197,8,'Z8',' - Z8'),(198,8,'BMWOTH','Other BMW Models'),(199,9,'CENT','Century'),(200,9,'ELEC','Electra'),(201,9,'ENCLAVE','Enclave'),(202,9,'BUIENC','Encore'),(203,9,'LACROSSE','LaCrosse'),(204,9,'LESA','Le Sabre'),(205,9,'LUCERNE','Lucerne'),(206,9,'PARK','Park Avenue'),(207,9,'RAINIER','Rainier'),(208,9,'REATTA','Reatta'),(209,9,'REG','Regal'),(210,9,'RENDEZVOUS','Rendezvous'),(211,9,'RIV','Riviera'),(212,9,'BUICKROAD','Roadmaster'),(213,9,'SKYH','Skyhawk'),(214,9,'SKYL','Skylark'),(215,9,'SOMER','Somerset'),(216,9,'TERRAZA','Terraza'),(217,9,'BUVERANO','Verano'),(218,9,'BUOTH','Other Buick Models'),(219,10,'ALLANT','Allante'),(220,10,'ATS','ATS'),(221,10,'BROUGH','Brougham'),(222,10,'CATERA','Catera'),(223,10,'CIMA','Cimarron'),(224,10,'CTS','CTS'),(225,10,'DEV','De Ville'),(226,10,'DTS','DTS'),(227,10,'ELDO','Eldorado'),(228,10,'ESCALA','Escalade'),(229,10,'ESCALAESV','Escalade ESV'),(230,10,'EXT','Escalade EXT'),(231,10,'FLEE','Fleetwood'),(232,10,'SEV','Seville'),(233,10,'SRX','SRX'),(234,10,'STS','STS'),(235,10,'XLR','XLR'),(236,10,'XTS','XTS'),(237,10,'CADOTH','Other Cadillac Models'),(238,11,'ASTRO','Astro'),(239,11,'AVALNCH','Avalanche'),(240,11,'AVEO','Aveo'),(241,11,'AVEO5','Aveo5'),(242,11,'BERETT','Beretta'),(243,11,'BLAZER','Blazer'),(244,11,'CAM','Camaro'),(245,11,'CAP','Caprice'),(246,11,'CHECAPS','Captiva Sport'),(247,11,'CAV','Cavalier'),(248,11,'CELE','Celebrity'),(249,11,'CHEVETTE','Chevette'),(250,11,'CITATION','Citation'),(251,11,'COBALT','Cobalt'),(252,11,'COLORADO','Colorado'),(253,11,'CORSI','Corsica'),(254,11,'CORV','Corvette'),(255,11,'CRUZE','Cruze'),(256,11,'ELCAM','El Camino'),(257,11,'EQUINOX','Equinox'),(258,11,'G15EXP','Express Van'),(259,11,'G10','G Van'),(260,11,'HHR','HHR'),(261,11,'CHEVIMP','Impala'),(262,11,'KODC4500','Kodiak C4500'),(263,11,'LUMINA','Lumina'),(264,11,'LAPV','Lumina APV'),(265,11,'LUV','LUV'),(266,11,'MALI','Malibu'),(267,11,'CHVMETR','Metro'),(268,11,'CHEVMONT','Monte Carlo'),(269,11,'NOVA','Nova'),(270,11,'CHEVPRIZM','Prizm'),(271,11,'CHVST','S10 Blazer'),(272,11,'S10PICKUP','S10 Pickup'),(273,11,'CHEV150','Silverado and other C/K1500'),(274,11,'CHEVC25','Silverado and other C/K2500'),(275,11,'CH3500PU','Silverado and other C/K3500'),(276,11,'SONIC','Sonic'),(277,11,'SPARK','Spark'),(278,11,'CHEVSPEC','Spectrum'),(279,11,'CHSPRINT','Sprint'),(280,11,'SSR','SSR'),(281,11,'CHEVSUB','Suburban'),(282,11,'TAHOE','Tahoe'),(283,11,'TRACKE','Tracker'),(284,11,'TRAILBLZ','TrailBlazer'),(285,11,'TRAILBZEXT','TrailBlazer EXT'),(286,11,'TRAVERSE','Traverse'),(287,11,'UPLANDER','Uplander'),(288,11,'VENTUR','Venture'),(289,11,'VOLT','Volt'),(290,11,'CHEOTH','Other Chevrolet Models'),(291,12,'CHRYS200','200'),(292,12,'300','300'),(293,12,'CHRY300','300M'),(294,12,'ASPEN','Aspen'),(295,12,'CARAVAN','Caravan'),(296,12,'CIRRUS','Cirrus'),(297,12,'CONC','Concorde'),(298,12,'CHRYCONQ','Conquest'),(299,12,'CORDOBA','Cordoba'),(300,12,'CROSSFIRE','Crossfire'),(301,12,'ECLASS','E Class'),(302,12,'FIFTH','Fifth Avenue'),(303,12,'CHRYGRANDV','Grand Voyager'),(304,12,'IMPE','Imperial'),(305,12,'INTREPID','Intrepid'),(306,12,'CHRYLAS','Laser'),(307,12,'LEBA','LeBaron'),(308,12,'LHS','LHS'),(309,12,'CHRYNEON','Neon'),(310,12,'NY','New Yorker'),(311,12,'NEWPORT','Newport'),(312,12,'PACIFICA','Pacifica'),(313,12,'CHPROWLE','Prowler'),(314,12,'PTCRUIS','PT Cruiser'),(315,12,'CHRYSEB','Sebring'),(316,12,'CHRYTC','TC by Maserati'),(317,12,'TANDC','Town & Country'),(318,12,'VOYAGER','Voyager'),(319,12,'CHOTH','Other Chrysler Models'),(320,13,'LANOS','Lanos'),(321,13,'LEGANZA','Leganza'),(322,13,'NUBIRA','Nubira'),(323,13,'DAEOTH','Other Daewoo Models'),(324,14,'CHAR','Charade'),(325,14,'ROCKY','Rocky'),(326,14,'DAIHOTH','Other Daihatsu Models'),(327,15,'DAT200SX','200SX'),(328,15,'DAT210','210'),(329,15,'280Z','280ZX'),(330,15,'300ZX','300ZX'),(331,15,'310','310'),(332,15,'510','510'),(333,15,'720','720'),(334,15,'810','810'),(335,15,'DATMAX','Maxima'),(336,15,'DATPU','Pickup'),(337,15,'PUL','Pulsar'),(338,15,'DATSENT','Sentra'),(339,15,'STAN','Stanza'),(340,15,'DATOTH','Other Datsun Models'),(341,16,'DMC12','DMC-12'),(342,17,'400','400'),(343,17,'DOD600','600'),(344,17,'ARI','Aries'),(345,17,'AVENGR','Avenger'),(346,17,'CALIBER','Caliber'),(347,17,'DODCARA','Caravan'),(348,17,'CHALLENGER','Challenger'),(349,17,'DODCHAR','Charger'),(350,17,'DODCOLT','Colt'),(351,17,'DODCONQ','Conquest'),(352,17,'DODDW','D/W Truck'),(353,17,'DAKOTA','Dakota'),(354,17,'DODDART','Dart'),(355,17,'DAY','Daytona'),(356,17,'DIPLOMA','Diplomat'),(357,17,'DURANG','Durango'),(358,17,'DODDYNA','Dynasty'),(359,17,'GRANDCARAV','Grand Caravan'),(360,17,'INTRE','Intrepid'),(361,17,'JOURNEY','Journey'),(362,17,'LANCERDODG','Lancer'),(363,17,'MAGNUM','Magnum'),(364,17,'MIRADA','Mirada'),(365,17,'MONACO','Monaco'),(366,17,'DODNEON','Neon'),(367,17,'NITRO','Nitro'),(368,17,'OMNI','Omni'),(369,17,'RAIDER','Raider'),(370,17,'RAM1504WD','Ram 1500 Truck'),(371,17,'RAM25002WD','Ram 2500 Truck'),(372,17,'RAM3502WD','Ram 3500 Truck'),(373,17,'RAM4500','Ram 4500 Truck'),(374,17,'DODD50','Ram 50 Truck'),(375,17,'CV','RAM C/V'),(376,17,'RAMSRT10','Ram SRT-10'),(377,17,'RAMVANV8','Ram Van'),(378,17,'RAMWAGON','Ram Wagon'),(379,17,'RAMCGR','Ramcharger'),(380,17,'RAMPAGE','Rampage'),(381,17,'DODSHAD','Shadow'),(382,17,'DODSPIR','Spirit'),(383,17,'SPRINTER','Sprinter'),(384,17,'SRT4','SRT-4'),(385,17,'STREGIS','St. Regis'),(386,17,'STEAL','Stealth'),(387,17,'STRATU','Stratus'),(388,17,'VIPER','Viper'),(389,17,'DOOTH','Other Dodge Models'),(390,18,'EAGLEMED','Medallion'),(391,18,'EAGLEPREM','Premier'),(392,18,'SUMMIT','Summit'),(393,18,'TALON','Talon'),(394,18,'VISION','Vision'),(395,18,'EAGOTH','Other Eagle Models'),(396,19,'308GTB','308 GTB Quattrovalvole'),(397,19,'308TBI','308 GTBI'),(398,19,'308GTS','308 GTS Quattrovalvole'),(399,19,'308TSI','308 GTSI'),(400,19,'328GTB','328 GTB'),(401,19,'328GTS','328 GTS'),(402,19,'348GTB','348 GTB'),(403,19,'348GTS','348 GTS'),(404,19,'348SPI','348 Spider'),(405,19,'348TB','348 TB'),(406,19,'348TS','348 TS'),(407,19,'360','360'),(408,19,'456GT','456 GT'),(409,19,'456MGT','456M GT'),(410,19,'458ITALIA','458 Italia'),(411,19,'512BBI','512 BBi'),(412,19,'512M','512M'),(413,19,'512TR','512TR'),(414,19,'550M','550 Maranello'),(415,19,'575M','575M Maranello'),(416,19,'599GTB','599 GTB Fiorano'),(417,19,'599GTO','599 GTO'),(418,19,'612SCAGLIE','612 Scaglietti'),(419,19,'FERCALIF','California'),(420,19,'ENZO','Enzo'),(421,19,'F355','F355'),(422,19,'F40','F40'),(423,19,'F430','F430'),(424,19,'F50','F50'),(425,19,'FERFF','FF'),(426,19,'MOND','Mondial'),(427,19,'TEST','Testarossa'),(428,19,'UNAVAILFER','Other Ferrari Models'),(429,20,'2000','2000 Spider'),(430,20,'FIAT500','500'),(431,20,'BERTON','Bertone X1/9'),(432,20,'BRAVA','Brava'),(433,20,'PININ','Pininfarina Spider'),(434,20,'STRADA','Strada'),(435,20,'FIATX19','X1/9'),(436,20,'UNAVAILFIA','Other Fiat Models'),(437,21,'KARMA','Karma'),(438,22,'AERO','Aerostar'),(439,22,'ASPIRE','Aspire'),(440,22,'BRON','Bronco'),(441,22,'B2','Bronco II'),(442,22,'FOCMAX','C-MAX'),(443,22,'FORDCLUB','Club Wagon'),(444,22,'CONTOUR','Contour'),(445,22,'COURIER','Courier'),(446,22,'CROWNVIC','Crown Victoria'),(447,22,'E150ECON','E-150 and Econoline 150'),(448,22,'E250ECON','E-250 and Econoline 250'),(449,22,'E350ECON','E-350 and Econoline 350'),(450,22,'EDGE','Edge'),(451,22,'ESCAPE','Escape'),(452,22,'ESCO','Escort'),(453,22,'EXCURSION','Excursion'),(454,22,'EXP','EXP'),(455,22,'EXPEDI','Expedition'),(456,22,'EXPEDIEL','Expedition EL'),(457,22,'EXPLOR','Explorer'),(458,22,'SPORTTRAC','Explorer Sport Trac'),(459,22,'F100','F100'),(460,22,'F150PICKUP','F150'),(461,22,'F250','F250'),(462,22,'F350','F350'),(463,22,'F450','F450'),(464,22,'FAIRM','Fairmont'),(465,22,'FESTIV','Festiva'),(466,22,'FIESTA','Fiesta'),(467,22,'FIVEHUNDRE','Five Hundred'),(468,22,'FLEX','Flex'),(469,22,'FOCUS','Focus'),(470,22,'FREESTAR','Freestar'),(471,22,'FREESTYLE','Freestyle'),(472,22,'FUSION','Fusion'),(473,22,'GRANADA','Granada'),(474,22,'GT','GT'),(475,22,'LTD','LTD'),(476,22,'MUST','Mustang'),(477,22,'PROBE','Probe'),(478,22,'RANGER','Ranger'),(479,22,'TAURUS','Taurus'),(480,22,'TAURUSX','Taurus X'),(481,22,'TEMPO','Tempo'),(482,22,'TBIRD','Thunderbird'),(483,22,'TRANSCONN','Transit Connect'),(484,22,'WINDST','Windstar'),(485,22,'FORDZX2','ZX2 Escort'),(486,22,'FOOTH','Other Ford Models'),(487,23,'FRESPRINT','Sprinter'),(488,24,'GEOMETRO','Metro'),(489,24,'GEOPRIZM','Prizm'),(490,24,'SPECT','Spectrum'),(491,24,'STORM','Storm'),(492,24,'GEOTRACK','Tracker'),(493,24,'GEOOTH','Other Geo Models'),(494,25,'ACADIA','Acadia'),(495,25,'CABALLERO','Caballero'),(496,25,'CANYON','Canyon'),(497,25,'ENVOY','Envoy'),(498,25,'ENVOYXL','Envoy XL'),(499,25,'ENVOYXUV','Envoy XUV'),(500,25,'JIM','Jimmy'),(501,25,'RALLYWAG','Rally Wagon'),(502,25,'GMCS15','S15 Jimmy'),(503,25,'S15','S15 Pickup'),(504,25,'SAFARIGMC','Safari'),(505,25,'GMCSAVANA','Savana'),(506,25,'15SIPU4WD','Sierra C/K1500'),(507,25,'GMCC25PU','Sierra C/K2500'),(508,25,'GMC3500PU','Sierra C/K3500'),(509,25,'SONOMA','Sonoma'),(510,25,'SUB','Suburban'),(511,25,'GMCSYCLON','Syclone'),(512,25,'TERRAIN','Terrain'),(513,25,'TOPC4500','TopKick C4500'),(514,25,'TYPH','Typhoon'),(515,25,'GMCVANDUR','Vandura'),(516,25,'YUKON','Yukon'),(517,25,'YUKONXL','Yukon XL'),(518,25,'GMCOTH','Other GMC Models'),(519,26,'ACCORD','Accord'),(520,26,'CIVIC','Civic'),(521,26,'CRV','CR-V'),(522,26,'CRZ','CR-Z'),(523,26,'CRX','CRX'),(524,26,'CROSSTOUR_MODELS','Crosstour and Accord Crosstour Models (2)'),(525,26,'CROSSTOUR',' - Accord Crosstour'),(526,26,'HONCROSS',' - Crosstour'),(527,26,'HONDELSOL','Del Sol'),(528,26,'ELEMENT','Element'),(529,26,'FIT','Fit'),(530,26,'INSIGHT','Insight'),(531,26,'ODYSSEY','Odyssey'),(532,26,'PASSPO','Passport'),(533,26,'PILOT','Pilot'),(534,26,'PRE','Prelude'),(535,26,'RIDGELINE','Ridgeline'),(536,26,'S2000','S2000'),(537,26,'HONOTH','Other Honda Models'),(538,27,'HUMMER','H1'),(539,27,'H2','H2'),(540,27,'H3','H3'),(541,27,'H3T','H3T'),(542,27,'AMGOTH','Other Hummer Models'),(543,28,'ACCENT','Accent'),(544,28,'AZERA','Azera'),(545,28,'ELANTR','Elantra'),(546,28,'HYUELANCPE','Elantra Coupe'),(547,28,'ELANTOUR','Elantra Touring'),(548,28,'ENTOURAGE','Entourage'),(549,28,'EQUUS','Equus'),(550,28,'HYUEXCEL','Excel'),(551,28,'GENESIS','Genesis'),(552,28,'GENESISCPE','Genesis Coupe'),(553,28,'SANTAFE','Santa Fe'),(554,28,'SCOUPE','Scoupe'),(555,28,'SONATA','Sonata'),(556,28,'TIBURO','Tiburon'),(557,28,'TUCSON','Tucson'),(558,28,'VELOSTER','Veloster'),(559,28,'VERACRUZ','Veracruz'),(560,28,'XG300','XG300'),(561,28,'XG350','XG350'),(562,28,'HYUOTH','Other Hyundai Models'),(563,29,'EX_MODELS','EX Models (2)'),(566,29,'FX_MODELS','FX Models (4)'),(571,29,'G_MODELS','G Models (4)'),(576,29,'I_MODELS','I Models (2)'),(579,29,'J_MODELS','J Models (1)'),(581,29,'JX_MODELS','JX Models (1)'),(583,29,'M_MODELS','M Models (6)'),(590,29,'Q_MODELS','Q Models (1)'),(592,29,'QX_MODELS','QX Models (2)'),(595,29,'INFOTH','Other Infiniti Models'),(596,30,'AMIGO','Amigo'),(597,30,'ASCENDER','Ascender'),(598,30,'AXIOM','Axiom'),(599,30,'HOMBRE','Hombre'),(600,30,'I280','i-280'),(601,30,'I290','i-290'),(602,30,'I350','i-350'),(603,30,'I370','i-370'),(604,30,'ISUMARK','I-Mark'),(605,30,'ISUIMP','Impulse'),(606,30,'OASIS','Oasis'),(607,30,'ISUPU','Pickup'),(608,30,'RODEO','Rodeo'),(609,30,'STYLUS','Stylus'),(610,30,'TROOP','Trooper'),(611,30,'TRP2','Trooper II'),(612,30,'VEHICROSS','VehiCROSS'),(613,30,'ISUOTH','Other Isuzu Models'),(614,31,'STYPE','S-Type'),(615,31,'XTYPE','X-Type'),(616,31,'XF','XF'),(617,31,'XJ_SERIES','XJ Series (10)'),(628,31,'XK_SERIES','XK Series (3)'),(629,31,'JAGXK8',' - XK8'),(630,31,'XK',' - XK'),(631,31,'XKR',' - XKR'),(632,31,'JAGOTH','Other Jaguar Models'),(633,32,'CHER','Cherokee'),(634,32,'JEEPCJ','CJ'),(635,32,'COMANC','Comanche'),(636,32,'COMMANDER','Commander'),(637,32,'COMPASS','Compass'),(638,32,'JEEPGRAND','Grand Cherokee'),(639,32,'GRWAG','Grand Wagoneer'),(640,32,'LIBERTY','Liberty'),(641,32,'PATRIOT','Patriot'),(642,32,'JEEPPU','Pickup'),(643,32,'SCRAMBLE','Scrambler'),(644,32,'WAGONE','Wagoneer'),(645,32,'WRANGLER','Wrangler'),(646,32,'JEOTH','Other Jeep Models'),(647,33,'AMANTI','Amanti'),(648,33,'BORREGO','Borrego'),(649,33,'FORTE','Forte'),(650,33,'FORTEKOUP','Forte Koup'),(651,33,'OPTIMA','Optima'),(652,33,'RIO','Rio'),(653,33,'RIO5','Rio5'),(654,33,'RONDO','Rondo'),(655,33,'SEDONA','Sedona'),(656,33,'SEPHIA','Sephia'),(657,33,'SORENTO','Sorento'),(658,33,'SOUL','Soul'),(659,33,'SPECTRA','Spectra'),(660,33,'SPECTRA5','Spectra5'),(661,33,'SPORTA','Sportage'),(662,33,'KIAOTH','Other Kia Models'),(663,34,'AVENT','Aventador'),(664,34,'COUNT','Countach'),(665,34,'DIABLO','Diablo'),(666,34,'GALLARDO','Gallardo'),(667,34,'JALPA','Jalpa'),(668,34,'LM002','LM002'),(669,34,'MURCIELAGO','Murcielago'),(670,34,'UNAVAILLAM','Other Lamborghini Models'),(671,35,'BETA','Beta'),(672,35,'ZAGATO','Zagato'),(673,35,'UNAVAILLAN','Other Lancia Models'),(674,36,'DEFEND','Defender'),(675,36,'DISCOV','Discovery'),(676,36,'FRELNDR','Freelander'),(677,36,'LR2','LR2'),(678,36,'LR3','LR3'),(679,36,'LR4','LR4'),(680,36,'RANGE','Range Rover'),(681,36,'EVOQUE','Range Rover Evoque'),(682,36,'RANGESPORT','Range Rover Sport'),(683,36,'ROVOTH','Other Land Rover Models'),(684,37,'CT_MODELS','CT Models (1)'),(686,37,'ES_MODELS','ES Models (5)'),(692,37,'GS_MODELS','GS Models (6)'),(699,37,'GX_MODELS','GX Models (2)'),(702,37,'HS_MODELS','HS Models (1)'),(704,37,'IS_MODELS','IS Models (6)'),(711,37,'LEXLFA','LFA'),(712,37,'LS_MODELS','LS Models (4)'),(717,37,'LX_MODELS','LX Models (3)'),(721,37,'RX_MODELS','RX Models (5)'),(727,37,'SC_MODELS','SC Models (3)'),(731,37,'LEXOTH','Other Lexus Models'),(732,38,'AVIATOR','Aviator'),(733,38,'BLKWOOD','Blackwood'),(734,38,'CONT','Continental'),(735,38,'LSLINCOLN','LS'),(736,38,'MARKLT','Mark LT'),(737,38,'MARK6','Mark VI'),(738,38,'MARK7','Mark VII'),(739,38,'MARK8','Mark VIII'),(740,38,'MKS','MKS'),(741,38,'MKT','MKT'),(742,38,'MKX','MKX'),(743,38,'MKZ','MKZ'),(744,38,'NAVIGA','Navigator'),(745,38,'NAVIGAL','Navigator L'),(746,38,'LINCTC','Town Car'),(747,38,'ZEPHYR','Zephyr'),(748,38,'LINOTH','Other Lincoln Models'),(749,39,'ELAN','Elan'),(750,39,'LOTELISE','Elise'),(751,39,'ESPRIT','Esprit'),(752,39,'EVORA','Evora'),(753,39,'EXIGE','Exige'),(754,39,'UNAVAILLOT','Other Lotus Models'),(755,40,'430','430'),(756,40,'BITRBO','Biturbo'),(757,40,'COUPEMAS','Coupe'),(758,40,'GRANSPORT','GranSport'),(759,40,'GRANTURISM','GranTurismo'),(760,40,'QP','Quattroporte'),(761,40,'SPYDER','Spyder'),(762,40,'UNAVAILMAS','Other Maserati Models'),(763,41,'57MAYBACH','57'),(764,41,'62MAYBACH','62'),(765,41,'UNAVAILMAY','Other Maybach Models'),(766,42,'MAZDA323','323'),(767,42,'MAZDA626','626'),(768,42,'929','929'),(769,42,'B-SERIES','B-Series Pickup'),(770,42,'CX-5','CX-5'),(771,42,'CX-7','CX-7'),(772,42,'CX-9','CX-9'),(773,42,'GLC','GLC'),(774,42,'MAZDA2','MAZDA2'),(775,42,'MAZDA3','MAZDA3'),(776,42,'MAZDA5','MAZDA5'),(777,42,'MAZDA6','MAZDA6'),(778,42,'MAZDASPD3','MAZDASPEED3'),(779,42,'MAZDASPD6','MAZDASPEED6'),(780,42,'MIATA','Miata MX5'),(781,42,'MILL','Millenia'),(782,42,'MPV','MPV'),(783,42,'MX3','MX3'),(784,42,'MX6','MX6'),(785,42,'NAVAJO','Navajo'),(786,42,'PROTE','Protege'),(787,42,'PROTE5','Protege5'),(788,42,'RX7','RX-7'),(789,42,'RX8','RX-8'),(790,42,'TRIBUTE','Tribute'),(791,42,'MAZOTH','Other Mazda Models'),(792,43,'MP4','MP4-12C'),(793,44,'190_CLASS','190 Class (2)'),(796,44,'240_CLASS','240 Class (1)'),(798,44,'300_CLASS_E_CLASS','300 Class / E Class (6)'),(805,44,'C_CLASS','C Class (13)'),(819,44,'CL_CLASS','CL Class (6)'),(826,44,'CLK_CLASS','CLK Class (7)'),(834,44,'CLS_CLASS','CLS Class (4)'),(839,44,'E_CLASS','E Class (18)'),(858,44,'G_CLASS','G Class (4)'),(863,44,'GL_CLASS','GL Class (5)'),(869,44,'GLK_CLASS','GLK Class (1)'),(871,44,'M_CLASS','M Class (11)'),(883,44,'R_CLASS','R Class (6)'),(890,44,'S_CLASS','S Class (30)'),(921,44,'SL_CLASS','SL Class (13)'),(948,44,'SPRINTER_CLASS','Sprinter Class (1)'),(950,44,'MBOTH','Other Mercedes-Benz Models'),(951,45,'CAPRI','Capri'),(952,45,'COUGAR','Cougar'),(953,45,'MERCGRAND','Grand Marquis'),(954,45,'LYNX','Lynx'),(955,45,'MARAUDER','Marauder'),(956,45,'MARINER','Mariner'),(957,45,'MARQ','Marquis'),(958,45,'MILAN','Milan'),(959,45,'MONTEGO','Montego'),(960,45,'MONTEREY','Monterey'),(961,45,'MOUNTA','Mountaineer'),(962,45,'MYSTIQ','Mystique'),(963,45,'SABLE','Sable'),(964,45,'TOPAZ','Topaz'),(965,45,'TRACER','Tracer'),(966,45,'VILLA','Villager'),(967,45,'MERCZEP','Zephyr'),(968,45,'MEOTH','Other Mercury Models'),(969,46,'SCORP','Scorpio'),(970,46,'XR4TI','XR4Ti'),(971,46,'MEROTH','Other Merkur Models'),(972,47,'COOPRCLUB_MODELS','Cooper Clubman Models (2)'),(975,47,'COOPCOUNTRY_MODELS','Cooper Countryman Models (2)'),(978,47,'COOPCOUP_MODELS','Cooper Coupe Models (2)'),(981,47,'COOPER_MODELS','Cooper Models (2)'),(984,47,'COOPRROAD_MODELS','Cooper Roadster Models (2)'),(987,48,'3000GT','3000GT'),(988,48,'CORD','Cordia'),(989,48,'DIAMAN','Diamante'),(990,48,'ECLIP','Eclipse'),(991,48,'ENDEAVOR','Endeavor'),(992,48,'MITEXP','Expo'),(993,48,'GALANT','Galant'),(994,48,'MITI','i'),(995,48,'LANCERMITS','Lancer'),(996,48,'LANCEREVO','Lancer Evolution'),(997,48,'MITPU','Mighty Max'),(998,48,'MIRAGE','Mirage'),(999,48,'MONT','Montero'),(1000,48,'MONTSPORT','Montero Sport'),(1001,48,'OUTLANDER','Outlander'),(1002,48,'OUTLANDSPT','Outlander Sport'),(1003,48,'PRECIS','Precis'),(1004,48,'RAIDERMITS','Raider'),(1005,48,'SIGMA','Sigma'),(1006,48,'MITSTAR','Starion'),(1007,48,'TRED','Tredia'),(1008,48,'MITVAN','Van'),(1009,48,'MITOTH','Other Mitsubishi Models'),(1010,49,'NIS200SX','200SX'),(1011,49,'240SX','240SX'),(1012,49,'300ZXTURBO','300ZX'),(1013,49,'350Z','350Z'),(1014,49,'370Z','370Z'),(1015,49,'ALTIMA','Altima'),(1016,49,'PATHARMADA','Armada'),(1017,49,'AXXESS','Axxess'),(1018,49,'CUBE','Cube'),(1019,49,'FRONTI','Frontier'),(1020,49,'GT-R','GT-R'),(1021,49,'JUKE','Juke'),(1022,49,'LEAF','Leaf'),(1023,49,'MAX','Maxima'),(1024,49,'MURANO','Murano'),(1025,49,'MURANOCROS','Murano CrossCabriolet'),(1026,49,'NV','NV'),(1027,49,'NX','NX'),(1028,49,'PATH','Pathfinder'),(1029,49,'NISPU','Pickup'),(1030,49,'PULSAR','Pulsar'),(1031,49,'QUEST','Quest'),(1032,49,'ROGUE','Rogue'),(1033,49,'SENTRA','Sentra'),(1034,49,'STANZA','Stanza'),(1035,49,'TITAN','Titan'),(1036,49,'NISVAN','Van'),(1037,49,'VERSA','Versa'),(1038,49,'XTERRA','Xterra'),(1039,49,'NISSOTH','Other Nissan Models'),(1040,50,'88','88'),(1041,50,'ACHIEV','Achieva'),(1042,50,'ALERO','Alero'),(1043,50,'AURORA','Aurora'),(1044,50,'BRAV','Bravada'),(1045,50,'CUCR','Custom Cruiser'),(1046,50,'OLDCUS','Cutlass'),(1047,50,'OLDCALAIS','Cutlass Calais'),(1048,50,'CIERA','Cutlass Ciera'),(1049,50,'CSUPR','Cutlass Supreme'),(1050,50,'OLDSFIR','Firenza'),(1051,50,'INTRIG','Intrigue'),(1052,50,'98','Ninety-Eight'),(1053,50,'OMEG','Omega'),(1054,50,'REGEN','Regency'),(1055,50,'SILHO','Silhouette'),(1056,50,'TORO','Toronado'),(1057,50,'OLDOTH','Other Oldsmobile Models'),(1058,51,'405','405'),(1059,51,'504','504'),(1060,51,'505','505'),(1061,51,'604','604'),(1062,51,'UNAVAILPEU','Other Peugeot Models'),(1063,52,'ACC','Acclaim'),(1064,52,'ARROW','Arrow'),(1065,52,'BREEZE','Breeze'),(1066,52,'CARAVE','Caravelle'),(1067,52,'CHAMP','Champ'),(1068,52,'COLT','Colt'),(1069,52,'PLYMCONQ','Conquest'),(1070,52,'GRANFURY','Gran Fury'),(1071,52,'PLYMGRANV','Grand Voyager'),(1072,52,'HORI','Horizon'),(1073,52,'LASER','Laser'),(1074,52,'NEON','Neon'),(1075,52,'PROWLE','Prowler'),(1076,52,'RELI','Reliant'),(1077,52,'SAPPOROPLY','Sapporo'),(1078,52,'SCAMP','Scamp'),(1079,52,'SUNDAN','Sundance'),(1080,52,'TRAILDUST','Trailduster'),(1081,52,'VOYA','Voyager'),(1082,52,'PLYOTH','Other Plymouth Models'),(1083,53,'T-1000','1000'),(1084,53,'6000','6000'),(1085,53,'AZTEK','Aztek'),(1086,53,'BON','Bonneville'),(1087,53,'CATALINA','Catalina'),(1088,53,'FIERO','Fiero'),(1089,53,'FBIRD','Firebird'),(1090,53,'G3','G3'),(1091,53,'G5','G5'),(1092,53,'G6','G6'),(1093,53,'G8','G8'),(1094,53,'GRNDAM','Grand Am'),(1095,53,'GP','Grand Prix'),(1096,53,'GTO','GTO'),(1097,53,'J2000','J2000'),(1098,53,'LEMANS','Le Mans'),(1099,53,'MONTANA','Montana'),(1100,53,'PARISI','Parisienne'),(1101,53,'PHOENIX','Phoenix'),(1102,53,'SAFARIPONT','Safari'),(1103,53,'SOLSTICE','Solstice'),(1104,53,'SUNBIR','Sunbird'),(1105,53,'SUNFIR','Sunfire'),(1106,53,'TORRENT','Torrent'),(1107,53,'TS','Trans Sport'),(1108,53,'VIBE','Vibe'),(1109,53,'PONOTH','Other Pontiac Models'),(1110,54,'911','911'),(1111,54,'924','924'),(1112,54,'928','928'),(1113,54,'944','944'),(1114,54,'968','968'),(1115,54,'BOXSTE','Boxster'),(1116,54,'CARRERAGT','Carrera GT'),(1117,54,'CAYENNE','Cayenne'),(1118,54,'CAYMAN','Cayman'),(1119,54,'PANAMERA','Panamera'),(1120,54,'POROTH','Other Porsche Models'),(1121,55,'RAM1504WD','1500'),(1122,55,'RAM25002WD','2500'),(1123,55,'RAM3502WD','3500'),(1124,55,'RAM4500','4500'),(1125,56,'18I','18i'),(1126,56,'FU','Fuego'),(1127,56,'LECAR','Le Car'),(1128,56,'R18','R18'),(1129,56,'RENSPORT','Sportwagon'),(1130,56,'UNAVAILREN','Other Renault Models'),(1131,57,'CAMAR','Camargue'),(1132,57,'CORN','Corniche'),(1133,57,'GHOST','Ghost'),(1134,57,'PARKWARD','Park Ward'),(1135,57,'PHANT','Phantom'),(1136,57,'DAWN','Silver Dawn'),(1137,57,'SILSERAPH','Silver Seraph'),(1138,57,'RRSPIR','Silver Spirit'),(1139,57,'SPUR','Silver Spur'),(1140,57,'UNAVAILRR','Other Rolls-Royce Models'),(1141,58,'9-2X','9-2X'),(1142,58,'9-3','9-3'),(1143,58,'9-4X','9-4X'),(1144,58,'9-5','9-5'),(1145,58,'97X','9-7X'),(1146,58,'900','900'),(1147,58,'9000','9000'),(1148,58,'SAOTH','Other Saab Models'),(1149,59,'ASTRA','Astra'),(1150,59,'AURA','Aura'),(1151,59,'ION','ION'),(1152,59,'L_SERIES','L Series (3)'),(1153,59,'L100',' - L100'),(1154,59,'L200',' - L200'),(1155,59,'L300',' - L300'),(1156,59,'LSSATURN','LS'),(1157,59,'LW_SERIES','LW Series (4)'),(1158,59,'LW',' - LW1'),(1159,59,'LW2',' - LW2'),(1160,59,'LW200',' - LW200'),(1161,59,'LW300',' - LW300'),(1162,59,'OUTLOOK','Outlook'),(1163,59,'RELAY','Relay'),(1164,59,'SC_SERIES','SC Series (2)'),(1165,59,'SC1',' - SC1'),(1166,59,'SC2',' - SC2'),(1167,59,'SKY','Sky'),(1168,59,'SL_SERIES','SL Series (3)'),(1169,59,'SL',' - SL'),(1170,59,'SL1',' - SL1'),(1171,59,'SL2',' - SL2'),(1172,59,'SW_SERIES','SW Series (2)'),(1173,59,'SW1',' - SW1'),(1174,59,'SW2',' - SW2'),(1175,59,'VUE','Vue'),(1176,59,'SATOTH','Other Saturn Models'),(1177,60,'SCIFRS','FR-S'),(1178,60,'IQ','iQ'),(1179,60,'TC','tC'),(1180,60,'XA','xA'),(1181,60,'XB','xB'),(1182,60,'XD','xD'),(1183,61,'FORTWO','fortwo'),(1184,61,'SMOTH','Other smart Models'),(1185,62,'SRTVIPER','Viper'),(1186,63,'825','825'),(1187,63,'827','827'),(1188,63,'UNAVAILSTE','Other Sterling Models'),(1189,64,'BAJA','Baja'),(1190,64,'BRAT','Brat'),(1191,64,'SUBBRZ','BRZ'),(1192,64,'FOREST','Forester'),(1193,64,'IMPREZ','Impreza'),(1194,64,'IMPWRX','Impreza WRX'),(1195,64,'JUSTY','Justy'),(1196,64,'SUBL','L Series'),(1197,64,'LEGACY','Legacy'),(1198,64,'LOYALE','Loyale'),(1199,64,'SUBOUTBK','Outback'),(1200,64,'SVX','SVX'),(1201,64,'B9TRIBECA','Tribeca'),(1202,64,'XT','XT'),(1203,64,'XVCRSSTREK','XV Crosstrek'),(1204,64,'SUBOTH','Other Subaru Models'),(1205,65,'AERIO','Aerio'),(1206,65,'EQUATOR','Equator'),(1207,65,'ESTEEM','Esteem'),(1208,65,'FORENZA','Forenza'),(1209,65,'GRANDV','Grand Vitara'),(1210,65,'KIZASHI','Kizashi'),(1211,65,'RENO','Reno'),(1212,65,'SAMUR','Samurai'),(1213,65,'SIDE','Sidekick'),(1214,65,'SWIFT','Swift'),(1215,65,'SX4','SX4'),(1216,65,'VERONA','Verona'),(1217,65,'VITARA','Vitara'),(1218,65,'X90','X-90'),(1219,65,'XL7','XL7'),(1220,65,'SUZOTH','Other Suzuki Models'),(1221,66,'ROADSTER','Roadster'),(1222,67,'4RUN','4Runner'),(1223,67,'AVALON','Avalon'),(1224,67,'CAMRY','Camry'),(1225,67,'CELICA','Celica'),(1226,67,'COROL','Corolla'),(1227,67,'CORONA','Corona'),(1228,67,'CRESS','Cressida'),(1229,67,'ECHO','Echo'),(1230,67,'FJCRUIS','FJ Cruiser'),(1231,67,'HIGHLANDER','Highlander'),(1232,67,'LC','Land Cruiser'),(1233,67,'MATRIX','Matrix'),(1234,67,'MR2','MR2'),(1235,67,'MR2SPYDR','MR2 Spyder'),(1236,67,'PASEO','Paseo'),(1237,67,'PICKUP','Pickup'),(1238,67,'PREVIA','Previa'),(1239,67,'PRIUS','Prius'),(1240,67,'PRIUSC','Prius C'),(1241,67,'PRIUSV','Prius V'),(1242,67,'RAV4','RAV4'),(1243,67,'SEQUOIA','Sequoia'),(1244,67,'SIENNA','Sienna'),(1245,67,'SOLARA','Solara'),(1246,67,'STARLET','Starlet'),(1247,67,'SUPRA','Supra'),(1248,67,'T100','T100'),(1249,67,'TACOMA','Tacoma'),(1250,67,'TERCEL','Tercel'),(1251,67,'TUNDRA','Tundra'),(1252,67,'TOYVAN','Van'),(1253,67,'VENZA','Venza'),(1254,67,'YARIS','Yaris'),(1255,67,'TOYOTH','Other Toyota Models'),(1256,68,'TR7','TR7'),(1257,68,'TR8','TR8'),(1258,68,'TRIOTH','Other Triumph Models'),(1259,69,'BEETLE','Beetle'),(1260,69,'VOLKSCAB','Cabrio'),(1261,69,'CAB','Cabriolet'),(1262,69,'CC','CC'),(1263,69,'CORR','Corrado'),(1264,69,'DASHER','Dasher'),(1265,69,'EOS','Eos'),(1266,69,'EUROVAN','Eurovan'),(1267,69,'VOLKSFOX','Fox'),(1268,69,'GLI','GLI'),(1269,69,'GOLFR','Golf R'),(1270,69,'GTI','GTI'),(1271,69,'GOLFANDRABBITMODELS','Golf and Rabbit Models (2)'),(1272,69,'GOLF',' - Golf'),(1273,69,'RABBIT',' - Rabbit'),(1274,69,'JET','Jetta'),(1275,69,'PASS','Passat'),(1276,69,'PHAETON','Phaeton'),(1277,69,'RABBITPU','Pickup'),(1278,69,'QUAN','Quantum'),(1279,69,'R32','R32'),(1280,69,'ROUTAN','Routan'),(1281,69,'SCIR','Scirocco'),(1282,69,'TIGUAN','Tiguan'),(1283,69,'TOUAREG','Touareg'),(1284,69,'VANAG','Vanagon'),(1285,69,'VWOTH','Other Volkswagen Models'),(1286,70,'240','240'),(1287,70,'260','260'),(1288,70,'740','740'),(1289,70,'760','760'),(1290,70,'780','780'),(1291,70,'850','850'),(1292,70,'940','940'),(1293,70,'960','960'),(1294,70,'C30','C30'),(1295,70,'C70','C70'),(1296,70,'S40','S40'),(1297,70,'S60','S60'),(1298,70,'S70','S70'),(1299,70,'S80','S80'),(1300,70,'S90','S90'),(1301,70,'V40','V40'),(1302,70,'V50','V50'),(1303,70,'V70','V70'),(1304,70,'V90','V90'),(1305,70,'XC60','XC60'),(1306,70,'XC','XC70'),(1307,70,'XC90','XC90'),(1308,70,'VOLOTH','Other Volvo Models'),(1309,71,'GV','GV'),(1310,71,'GVC','GVC'),(1311,71,'GVL','GVL'),(1312,71,'GVS','GVS'),(1313,71,'GVX','GVX'),(1314,71,'YUOTH','Other Yugo Models');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-31 14:17:26
