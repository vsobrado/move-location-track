-- MySQL dump 10.13  Distrib 5.6.41, for Linux (x86_64)
--
-- Host: localhost    Database: loc_test
-- ------------------------------------------------------
-- Server version	5.6.41

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
-- Table structure for table `loc`
--

DROP TABLE IF EXISTS `loc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loc` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `lat` text,
  `longi` text,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `post` text,
  `image` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc`
--

LOCK TABLES `loc` WRITE;
/*!40000 ALTER TABLE `loc` DISABLE KEYS */;
INSERT INTO `loc` VALUES (137,'40.22583525458751','-75.30756910494961','2017-09-18 15:05:58','UPack Truck arrived. Hope our neighbors donâ€™t mind. ','/loc/uploads/F9C81095-323D-44E7-A57C-BD83F3961576.jpeg'),(138,'40.22595090284083','-75.3072034455557','2017-09-19 19:39:09','All loaded up! 13 linear feet of cargo all nicely stacked. A very empty apartment. Next few days are for cleaning. ','/loc/uploads/8050D977-F2A8-4EBD-A6B9-8DA6B47D7FBE.jpeg'),(139,'40.2245863108339','-75.30567247427562','2017-09-22 15:00:43','A little late- but here we go!','/loc/uploads/92E16039-9F1D-441A-87FA-0ED5ACDB8165.jpeg'),(140,'41.05837114159116','-75.73374900973936','2017-09-22 16:35:05','I-80','/loc/uploads/'),(141,'41.05837114159116','-75.73374900973936','2017-09-22 16:35:12','I-80','/loc/uploads/'),(142,'41.05720186609873','-75.76412133879565','2017-09-22 16:39:06','Traffic','/loc/uploads/1352AB25-08DB-417C-BBBB-207617841B46.png'),(143,'41.03934254501112','-77.4853682891256','2017-09-22 18:06:06','o','/loc/uploads/17628454-FBAA-4C34-9F80-0F59BE487846.png'),(144,'41.028158480613136','-78.43989733288119','2017-09-22 19:22:43','First gas stop. ','/loc/uploads/image.jpg'),(145,'41.201000371986254','-80.06109528250998','2017-09-22 20:56:47','F\r\n','/loc/uploads/DE22F560-A089-468F-99FE-14A935A36DD2.jpeg'),(146,'','','2017-09-22 21:16:34','Welcome to Ohio!','/loc/uploads/461F80C9-CC65-4143-8FE6-9A61E1889C02.jpeg'),(147,'41.256847525985215','-81.5348958783611','2017-09-22 22:05:21','F','/loc/uploads/AFA5EDCC-ADBD-4A3F-8B41-02F0CA2A0B72.png'),(148,'41.379054836036055','-82.22369243398515','2017-09-22 23:00:33','Fill up 2','/loc/uploads/image.jpg'),(149,'41.32873563099776','-82.4997896422469','2017-09-22 23:14:53','Ohio','/loc/uploads/43F39993-CA66-4038-8528-8EDFFCF6D468.jpeg'),(150,'41.330406826593084','-82.65631596784675','2017-09-22 23:21:37','Sunset. Avery, OH','/loc/uploads/6C32FDE1-1A68-4F8D-AA71-B1B8BF54BA96.jpeg'),(151,'41.330406826593084','-82.65631596784675','2017-09-22 23:21:45','Sunset. Avery, OH','/loc/uploads/6C32FDE1-1A68-4F8D-AA71-B1B8BF54BA96.jpeg'),(152,'41.330406826593084','-82.65631596784675','2017-09-22 23:21:45','Sunset. Avery, OH','/loc/uploads/6C32FDE1-1A68-4F8D-AA71-B1B8BF54BA96.jpeg'),(153,'41.433913093098845','-83.21459884763063','2017-09-22 23:44:43','H','/loc/uploads/845A7398-F236-453D-A3C2-B5F2CF9CD0D0.jpeg'),(154,'41.62525329277071','-83.4769504052433','2017-09-23 00:04:41','P','/loc/uploads/8C4A3D16-843B-48B5-905B-34F110310329.png'),(155,'41.62525329277071','-83.4769504052433','2017-09-23 00:04:45','P','/loc/uploads/8C4A3D16-843B-48B5-905B-34F110310329.png'),(156,'41.890008193479744','-83.39604483925122','2017-09-23 00:25:28','Traffic','/loc/uploads/image.jpg'),(157,'41.57657125543535','-83.91752388148365','2017-09-23 17:27:18','Apple Picking, Swaney, OH','/loc/uploads/C3A1E711-F4E3-417F-9486-F2836F4F7184.jpeg'),(158,'42.27087420415344','-85.47769451521847','2017-09-25 15:15:59','B','/loc/uploads/'),(159,'42.23808749124492','-85.6313092588338','2017-09-25 15:22:54','Kalamazoo','/loc/uploads/'),(160,'42.02421196322714','-86.52713565413684','2017-09-25 16:07:37','Shorewood','/loc/uploads/'),(161,'41.75684460442677','-86.7562315520707','2017-09-25 16:17:48','G','/loc/uploads/'),(162,'41.750042231382714','-86.76694152099094','2017-09-25 16:18:54','Indiana! ','/loc/uploads/1CD48B4F-1F21-4D3F-A2F4-6AF3E148C691.jpeg'),(163,'41.65857496209597','-86.9255426433747','2017-09-25 16:28:21','G','/loc/uploads/'),(164,'41.57785973174394','-87.56130555548567','2017-09-25 17:01:26','Illinois ','/loc/uploads/DA103B3C-C0AB-413C-B8FF-DE716547B119.jpeg'),(165,'41.57952188052384','-87.61463960640842','2017-09-25 17:03:54','J','/loc/uploads/'),(166,'41.78284380123185','-87.90685848341128','2017-09-25 17:28:48','D','/loc/uploads/'),(167,'41.783974617163295','-87.90674704396226','2017-09-25 17:52:59','Why is it so hot? ','/loc/uploads/F5DDDCDA-8E2B-422C-BE73-087D19678EE9.png'),(168,'41.78350236413998','-87.9074063371933','2017-09-25 17:57:49','How cute. ','/loc/uploads/77D8298D-B68F-46C0-AD35-B2E529992CEF.jpeg'),(169,'41.98827562052479','-87.86674515151893','2017-09-25 18:18:52','Chicago ','/loc/uploads/71F65ACB-DD55-4C98-B956-CBBB54DBC468.jpeg'),(170,'42.199352723585626','-88.68032332518015','2017-09-25 18:54:36','H','/loc/uploads/'),(171,'42.28259051222567','-88.97905242637636','2017-09-25 19:11:47','F','/loc/uploads/'),(172,'42.280456908939854','-89.07573719104322','2017-09-25 19:37:04','Nicholas Conservatory and Garden','/loc/uploads/F41946C7-590D-4764-9BCA-20B993B15A10.jpeg'),(173,'42.280456908939854','-89.07573719104322','2017-09-25 19:40:49','Rockford Guardians','/loc/uploads/ED0C3FFE-474B-411C-B0C1-A4CE4C13407B.jpeg'),(174,'42.280446714761','-89.07557733365248','2017-09-25 19:43:48','Rock dudes','/loc/uploads/11D32D3A-2E77-4059-9F18-857E21E41584.jpeg'),(175,'42.280446714761','-89.07557733365248','2017-09-25 19:44:28','Poem','/loc/uploads/926E9E48-3BA7-4FB4-AD57-4EA3B3D22CBB.jpeg'),(176,'42.280446714761','-89.07557733365248','2017-09-25 19:50:12','Spin spin','/loc/uploads/A531A592-0127-450B-830F-95DA29BE2004.jpeg'),(177,'42.280446714761','-89.07557733365248','2017-09-25 20:07:39','Thing','/loc/uploads/8D79D1F9-84ED-47B1-B5AC-D46D2DD2D16F.jpeg'),(178,'42.50858818869356','-88.98297058194476','2017-09-25 20:33:25','Wisconsin!!! ','/loc/uploads/795D7034-946D-4FE2-ABC3-E06A33934782.jpeg'),(179,'42.285891443061516','-89.0613635542296','2017-09-25 20:40:33','Great ','/loc/uploads/'),(180,'43.25008650638442','-89.38069838486648','2017-09-26 14:28:28','Pinky! ','/loc/uploads/CA57F3AA-4470-4DAD-BBFF-9719B53D37B4.jpeg'),(181,'43.27850959314954','-89.40101598113435','2017-09-26 14:50:26','Cheese!','/loc/uploads/C778DC8C-9EDB-4A93-84A0-2B0C89C58D3A.jpeg'),(182,'43.942168867256434','-90.67244555809597','2017-09-26 16:00:06','G','/loc/uploads/'),(183,'43.938951096538396','-90.80990382478647','2017-09-26 16:36:39','Ben!','/loc/uploads/5816B611-6FD3-4163-8D84-D1587B9A73AF.jpeg'),(184,'43.86426497113202','-91.31130161878846','2017-09-26 17:10:54','West of the Mississippi River! ','/loc/uploads/44A12DA5-8A14-48E4-ABF7-E7F9EB92776D.jpeg'),(185,'43.938114708330424','-91.62878500306199','2017-09-26 17:25:36','G','/loc/uploads/'),(186,'43.95503659736733','-92.12076877252396','2017-09-26 17:45:57','H','/loc/uploads/'),(187,'43.98054624911768','-92.46107462802199','2017-09-26 18:11:35','Culvers','/loc/uploads/'),(188,'43.668448255188046','-92.97489936294104','2017-09-26 19:48:48','Spam! ','/loc/uploads/C6FC5C04-61E2-4595-8976-F6A633F6B0F1.jpeg'),(189,'43.69174815252767','-93.40010561057683','2017-09-26 20:12:06','Up ','/loc/uploads/'),(190,'43.66607920412045','-93.53554893132427','2017-09-26 20:18:47','Open road','/loc/uploads/825087D7-754D-4433-A03D-3EB62232060E.jpeg'),(191,'43.651102292392075','-94.09568094657183','2017-09-26 21:20:09','Green giant!','/loc/uploads/B2E6144E-843F-4A2D-B12E-D4CC6157848E.jpeg'),(192,'43.63805891950022','-95.26703573772242','2017-09-26 22:17:15','T','/loc/uploads/image.jpg'),(193,'43.6381716980074','-95.43649451816029','2017-09-26 22:28:01','From ','/loc/uploads/EDE90237-94CA-4502-A02C-FE0E14DDB66F.jpeg'),(194,'43.632390756914155','-95.59601491481813','2017-09-26 23:08:36','Punny ','/loc/uploads/9DB2AD40-3B7F-4AC5-82E4-4299F58DF23B.jpeg'),(195,'43.638155730481856','-95.70524565884443','2017-09-26 23:18:50','G','/loc/uploads/8510AC6F-B1EF-472F-8E44-C6C09AD1753B.png'),(196,'43.609108789864564','-96.46680283369167','2017-09-26 23:50:11','G','/loc/uploads/'),(197,'43.60916521244146','-96.46066898180752','2017-09-26 23:50:21','South Dakota ','/loc/uploads/'),(198,'43.6090636952255','-97.01854529799616','2017-09-27 00:11:06','G','/loc/uploads/'),(199,'43.666674721784986','-97.16563507110752','2017-09-27 00:18:20','Sunset ','/loc/uploads/B0326C43-0E4D-4296-A78C-1F5EF86DC851.jpeg'),(200,'43.666386357549264','-97.20363331036381','2017-09-27 00:19:19','F','/loc/uploads/8713DCB2-818D-4E1D-B7AF-2A11946A9087.jpeg'),(201,'43.66579088190373','-97.59180466403616','2017-09-27 00:36:39','Better sunset','/loc/uploads/B86E6EE0-1579-4A57-A41C-F3EE8D285F57.jpeg'),(202,'43.706011762883236','-98.4895815421813','2017-09-27 01:09:31','H','/loc/uploads/'),(203,'43.79723214082773','-99.33852684693349','2017-09-27 01:59:32','Gg','/loc/uploads/'),(204,'43.80371771219107','-99.35651881694551','2017-09-27 02:01:50','Lyman County','/loc/uploads/'),(205,'43.897479074116696','-100.0060428400524','2017-09-27 02:27:19','Tr','/loc/uploads/'),(206,'43.9012152655459','-100.98235233696269','2017-09-27 03:03:59','Fffg','/loc/uploads/'),(207,'43.85344273414822','-101.20399952875562','2017-09-27 03:13:11','Shsyshsh','/loc/uploads/'),(208,'43.83920267694056','-101.52476901197947','2017-09-27 03:33:09','Gg','/loc/uploads/'),(209,'43.83769789519033','-101.5231801350337','2017-09-27 12:35:28','Scrappy','/loc/uploads/140AB45D-F7BF-4B12-B9DE-16F549C7759C.jpeg'),(210,'43.85307539571526','-101.48358910751847','2017-09-27 12:50:44','Sunrise on the prairie ','/loc/uploads/7983CAD9-B7ED-4E41-A114-058846D172DE.jpeg'),(211,'43.85301542472453','-101.48327255631004','2017-09-27 12:51:20','Fjfjf','/loc/uploads/'),(212,'43.821481816947326','-101.90031250082247','2017-09-27 13:24:41','Prarie Dog! ','/loc/uploads/B73D6A74-F1FD-446D-97D4-57D5900B9B68.jpeg'),(213,'43.75195657838485','-101.9303356111999','2017-09-27 14:13:29','Badlands','/loc/uploads/image.jpg'),(214,'43.75195657838485','-101.9303356111999','2017-09-27 14:14:26','Badlands','/loc/uploads/image.jpg'),(215,'43.75195657838485','-101.9303356111999','2017-09-27 14:14:35','Badlands','/loc/uploads/image.jpg'),(216,'43.758070254739145','-101.97450312795301','2017-09-27 14:39:38','Badlands','/loc/uploads/image.jpg'),(217,'43.77282676291072','-102.00348892258667','2017-09-27 15:34:22','','/loc/uploads/4E136B08-8860-4035-BC0A-F98833F6A12A.jpeg'),(218,'43.77282676291072','-102.00348892258667','2017-09-27 15:34:32','','/loc/uploads/4E136B08-8860-4035-BC0A-F98833F6A12A.jpeg'),(219,'43.77282676291072','-102.00348892258667','2017-09-27 15:36:55','F','/loc/uploads/'),(220,'43.79555739466454','-102.06067034984198','2017-09-27 16:21:54','Pana ','/loc/uploads/image.jpg'),(221,'43.822069899219855','-102.17519874694028','2017-09-27 17:08:21','Gg','/loc/uploads/'),(222,'43.843503347638844','-102.19446111479978','2017-09-27 17:20:04','HD','/loc/uploads/'),(223,'43.91701360237218','-102.33851426290566','2017-09-27 18:38:58','Buffs','/loc/uploads/'),(224,'43.87457049455854','-102.45757509032492','2017-09-27 18:58:43','Ff','/loc/uploads/'),(225,'44.030943639753716','-103.08966241035068','2017-09-27 19:48:17','Rapid city ','/loc/uploads/'),(226,'44.03273092834972','-103.2092861644183','2017-09-27 20:30:39','Hh','/loc/uploads/'),(227,'43.89729867064602','-103.42707794899754','2017-09-27 21:02:20','Minerâ€™s Gateway Tunnel','/loc/uploads/'),(228,'43.89315494865838','-103.42569009453354','2017-09-27 23:28:51','Keystone, SD','/loc/uploads/'),(229,'43.868406987789896','-103.43521320270693','2017-09-27 23:37:23','Great ','/loc/uploads/'),(230,'43.8465961441806','-103.39902819143924','2017-09-28 00:07:46','Tt','/loc/uploads/'),(231,'43.67296510380103','-103.36155136125475','2017-09-28 01:15:27','H','/loc/uploads/'),(232,'43.645291579927914','-103.35613371813982','2017-09-28 01:27:18','Hgg','/loc/uploads/'),(233,'43.4212786','-103.46653820000002','2017-09-28 13:51:49','sf','/loc/uploads/'),(234,'43.43442184642018','-103.48075814095748','2017-09-28 15:10:57','Big Blue','/loc/uploads/4A718FAA-E27A-4CE8-80F3-6095B1F72F4D.jpeg'),(235,'43.422315730753745','-103.46512310216525','2017-09-28 15:23:11','F','/loc/uploads/'),(236,'42.9933799663959','-103.20831927480475','2017-09-28 15:56:38','Gg','/loc/uploads/'),(237,'42.99119000208905','-103.2052830511416','2017-09-28 15:57:02','Nebraska ','/loc/uploads/'),(238,'42.81906085558498','-103.01818418326137','2017-09-28 16:13:31','Ggf','/loc/uploads/'),(239,'42.32407778971113','-102.92456192905355','2017-09-28 16:48:45','H','/loc/uploads/'),(240,'42.263437486293036','-102.86598508255823','2017-09-28 16:55:53','T','/loc/uploads/'),(241,'42.142289774531626','-102.85794205973191','2017-09-28 17:24:13','H','/loc/uploads/'),(242,'42.14228977453161','-102.85794205973188','2017-09-28 18:11:14','C','/loc/uploads/'),(243,'41.831137938463904','-103.63157671885902','2017-09-28 18:34:32','Ggf','/loc/uploads/'),(244,'41.8354409639653','-103.69966327417349','2017-09-28 19:42:56','Atop Scottsbluff','/loc/uploads/4655ACF5-79F1-40A4-8588-D90011AFCAB2.jpeg'),(245,'41.84781457301401','-103.66109359087763','2017-09-28 20:14:33','Taco','/loc/uploads/'),(246,'41.84781457301401','-103.66109359087763','2017-09-28 21:15:24','Gg','/loc/uploads/'),(247,'41.06089380107919','-103.66356021734295','2017-09-28 21:40:21','Bbvgbb','/loc/uploads/'),(248,'40.97190074626447','-103.68730128752411','2017-09-28 21:46:19','Gv','/loc/uploads/'),(249,'40.96778895498027','-103.68737966880501','2017-09-28 21:46:34','Colorado! ','/loc/uploads/'),(250,'40.96778895498027','-103.68737966880501','2017-09-28 21:46:36','Colorado! ','/loc/uploads/'),(251,'40.80410719852969','-103.68839344950736','2017-09-28 21:56:39','Ggf','/loc/uploads/'),(252,'40.56471162013762','-103.80254524769616','2017-09-28 22:18:45','Ffff','/loc/uploads/'),(253,'40.22054082717767','-104.20228600511719','2017-09-28 23:07:10','Ggf','/loc/uploads/'),(254,'40.077494387552214','-104.64233709508986','2017-09-28 23:27:13','Gg','/loc/uploads/'),(255,'39.69824830763215','-104.82750440032933','2017-09-29 00:20:31','Laquinta ','/loc/uploads/');
/*!40000 ALTER TABLE `loc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-05 15:47:47