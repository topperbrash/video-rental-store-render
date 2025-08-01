/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.2-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: video_rental_store
-- ------------------------------------------------------
-- Server version	11.8.2-MariaDB-1 from Debian

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `inventory_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `director` varchar(100) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `format` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`inventory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `inventory` VALUES
(1,'The Shawshank Redemption','1994-09-23','Frank Darabont','Drama','Blu-ray'),
(2,'The Godfather','1972-03-24','Francis Ford Coppola','Crime','Blu-ray'),
(3,'The Dark Knight','2008-07-18','Christopher Nolan','Action','VHS'),
(4,'Pulp Fiction','1994-10-14','Quentin Tarantino','Crime','Blu-ray'),
(5,'Forrest Gump','1994-07-06','Robert Zemeckis','Drama','Blu-ray'),
(6,'Inception','2010-07-16','Christopher Nolan','Sci-Fi','Blu-ray'),
(7,'Fight Club','1999-10-15','David Fincher','Drama','DVD'),
(8,'The Matrix','1999-03-31','The Wachowskis','Sci-Fi','VHS'),
(9,'Goodfellas','1990-09-19','Martin Scorsese','Crime','Blu-ray'),
(10,'The Lord of the Rings: The Fellowship of the Ring','2001-12-19','Peter Jackson','Fantasy','VHS'),
(11,'Star Wars: Episode IV - A New Hope','1977-05-25','George Lucas','Sci-Fi','Blu-ray'),
(12,'Interstellar','2014-11-07','Christopher Nolan','Sci-Fi','Blu-ray'),
(13,'The Silence of the Lambs','1991-02-14','Jonathan Demme','Thriller','VHS'),
(14,'Saving Private Ryan','1998-07-24','Steven Spielberg','War','Digital'),
(15,'Jurassic Park','1993-06-11','Steven Spielberg','Adventure','VHS'),
(16,'Gladiator','2000-05-05','Ridley Scott','Action','Digital'),
(17,'The Green Mile','1999-12-10','Frank Darabont','Drama','DVD'),
(18,'Braveheart','1995-05-24','Mel Gibson','War','VHS'),
(19,'Titanic','1997-12-19','James Cameron','Romance','Digital'),
(20,'The Departed','2006-10-06','Martin Scorsese','Crime','Blu-ray'),
(21,'The Prestige','2006-10-20','Christopher Nolan','Drama','DVD'),
(22,'Whiplash','2014-10-10','Damien Chazelle','Drama','VHS'),
(23,'The Lion King','1994-06-24','Roger Allers & Rob Minkoff','Animation','Digital'),
(24,'The Usual Suspects','1995-08-16','Bryan Singer','Crime','Digital'),
(25,'Se7en','1995-09-22','David Fincher','Thriller','VHS'),
(26,'The Social Network','2010-10-01','David Fincher','Drama','Digital'),
(27,'Django Unchained','2012-12-25','Quentin Tarantino','Western','VHS'),
(28,'The Wolf of Wall Street','2013-12-25','Martin Scorsese','Biography','Digital'),
(29,'Avengers: Endgame','2019-04-26','Anthony Russo & Joe Russo','Action','Blu-ray'),
(30,'Shutter Island','2010-02-19','Martin Scorsese','Mystery','VHS'),
(31,'The Grand Budapest Hotel','2014-03-28','Wes Anderson','Comedy','VHS'),
(32,'Blade Runner 2049','2017-10-06','Denis Villeneuve','Sci-Fi','DVD'),
(33,'La La Land','2016-12-09','Damien Chazelle','Musical','Blu-ray'),
(34,'Mad Max: Fury Road','2015-05-15','George Miller','Action','VHS'),
(35,'Black Panther','2018-02-16','Ryan Coogler','Action','Digital'),
(36,'Parasite','2019-05-30','Bong Joon Ho','Thriller','Digital'),
(37,'Get Out','2017-02-24','Jordan Peele','Horror','Digital'),
(38,'The Revenant','2015-12-25','Alejandro G. Iñárritu','Adventure','DVD'),
(39,'The Big Lebowski','1998-03-06','Joel Coen','Comedy','VHS'),
(40,'The Truman Show','1998-06-05','Peter Weir','Drama','Digital'),
(41,'The Shining','1980-05-23','Stanley Kubrick','Horror','DVD'),
(42,'A Clockwork Orange','1971-12-19','Stanley Kubrick','Crime','DVD'),
(43,'The Godfather: Part II','1974-12-20','Francis Ford Coppola','Crime','VHS'),
(44,'The Godfather: Part III','1990-12-25','Francis Ford Coppola','Crime','Digital'),
(45,'Joker','2019-10-04','Todd Phillips','Drama','Blu-ray'),
(46,'Her','2013-12-18','Spike Jonze','Romance','Digital'),
(47,'Logan','2017-03-03','James Mangold','Action','Blu-ray'),
(48,'1917','2019-12-25','Sam Mendes','War','Blu-ray'),
(49,'No Country for Old Men','2007-11-21','Ethan Coen & Joel Coen','Crime','Digital'),
(50,'Arrival','2016-11-11','Denis Villeneuve','Sci-Fi','Blu-ray'),
(51,'Prisoners','2013-09-20','Denis Villeneuve','Thriller','DVD'),
(52,'Spotlight','2015-11-20','Tom McCarthy','Drama','DVD'),
(53,'Moonlight','2016-10-21','Barry Jenkins','Drama','Digital'),
(54,'The Shape of Water','2017-12-01','Guillermo del Toro','Fantasy','VHS'),
(55,'Birdman','2014-10-17','Alejandro G. Iñárritu','Comedy','DVD'),
(56,'The Imitation Game','2014-11-28','Morten Tyldum','Biography','Digital'),
(57,'12 Years a Slave','2013-11-08','Steve McQueen','Biography','Blu-ray'),
(58,'Argo','2012-10-12','Ben Affleck','Thriller','DVD'),
(59,'The King\'s Speech','2010-12-25','Tom Hooper','Drama','Digital'),
(60,'Slumdog Millionaire','2008-11-12','Danny Boyle','Drama','Digital'),
(61,'The Curious Case of Benjamin Button','2008-12-25','David Fincher','Fantasy','VHS'),
(62,'The Pianist','2002-09-25','Roman Polanski','Biography','Blu-ray'),
(63,'Requiem for a Dream','2000-10-27','Darren Aronofsky','Drama','Blu-ray'),
(64,'American Beauty','1999-10-01','Sam Mendes','Drama','Blu-ray'),
(65,'The Sixth Sense','1999-08-06','M. Night Shyamalan','Thriller','Digital'),
(66,'The Iron Giant','1999-08-06','Brad Bird','Animation','Digital'),
(67,'Toy Story','1995-11-22','John Lasseter','Animation','Blu-ray'),
(68,'Finding Nemo','2003-05-30','Andrew Stanton','Animation','Digital'),
(69,'The Incredibles','2004-11-05','Brad Bird','Animation','VHS'),
(70,'Up','2009-05-29','Pete Docter','Animation','Digital'),
(71,'WALL·E','2008-06-27','Andrew Stanton','Animation','Digital'),
(72,'Inside Out','2015-06-19','Pete Docter','Animation','DVD'),
(73,'Coco','2017-11-22','Lee Unkrich','Animation','VHS'),
(74,'Soul','2020-12-25','Pete Docter','Animation','DVD'),
(75,'Encanto','2021-11-24','Jared Bush & Byron Howard','Animation','Blu-ray'),
(76,'Frozen','2013-11-27','Chris Buck & Jennifer Lee','Animation','Blu-ray'),
(77,'Ratatouille','2007-06-29','Brad Bird','Animation','VHS'),
(78,'Zootopia','2016-03-04','Byron Howard & Rich Moore','Animation','Digital'),
(79,'Luca','2021-06-18','Enrico Casarosa','Animation','DVD'),
(80,'Turning Red','2022-03-11','Domee Shi','Animation','VHS'),
(81,'Spider-Man: Into the Spider-Verse','2018-12-14','Bob Persichetti, Peter Ramsey, Rodney Rothman','Animation','DVD'),
(82,'Spider-Man: Across the Spider-Verse','2023-06-02','Joaquim Dos Santos, Kemp Powers, Justin K. Thompson','Animation','Digital'),
(83,'Everything Everywhere All at Once','2022-03-11','Daniel Kwan & Daniel Scheinert','Sci-Fi','DVD'),
(84,'Oppenheimer','2023-07-21','Christopher Nolan','Biography','VHS'),
(85,'Barbie','2023-07-21','Greta Gerwig','Comedy','Digital'),
(86,'Killers of the Flower Moon','2023-10-20','Martin Scorsese','Crime','Digital'),
(87,'The Holdovers','2023-10-27','Alexander Payne','Drama','VHS'),
(88,'Poor Things','2023-12-08','Yorgos Lanthimos','Fantasy','Digital'),
(89,'Anatomy of a Fall','2023-08-23','Justine Triet','Thriller','DVD'),
(90,'Past Lives','2023-06-02','Celine Song','Romance','Blu-ray'),
(91,'Aftersun','2022-10-21','Charlotte Wells','Drama','VHS');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2025-07-30 15:11:19
