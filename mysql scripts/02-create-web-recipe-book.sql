CREATE DATABASE  IF NOT EXISTS `web_recipe_book` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `web_recipe_book`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL AUTO_INCREMENT,
  `dish_name` varchar(45) DEFAULT NULL,
  `type_of_dish` varchar(45) DEFAULT NULL,
  `difficulty_level` varchar(45) DEFAULT NULL,
  `ingredients` varchar(5000) DEFAULT NULL,
  `preparation_time` int (100) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `photo_directory` varchar(500) DEFAULT NULL,
  `author_nick` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`recipe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;


LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;

INSERT INTO `recipe` VALUES 
	(1,'Pieczony kurczak z ziemkniakami','Danie główne','Średni', 'kurczak 1,5kg, ziemniaki 800g, olej 2 łyżki', 60, 'Krok 1: Stwórz błyskawiczną marynatę, mieszając przyprawę Knorr z olejem, papryką i oregano. Natrzyj nią kurczaka z zewnątrz i od środka. Jeśli lubisz potrawy pikantne, do marynaty dodaj również trochę ostrej papryki. Krok 2: Ziemniaki obierz i przekrój na cztery części. Krok 3: Kurczaka i ziemniaki umieść w brytfance, piecz 60 minut w 190 °C.', null, 'adams' ),
	(2,'Beza','Deser','Łatwy','białka jajek 8 sztuk, cukier puder 1 szklanka, mąka ziemniaczana 2 łyżki, ocet 1 łyżka, proszek do pieczenia 1 szczypta', 15, 'Krok 1: Białka oddziel od żółtek wybijając najpierw każde jajko oddzielnie do miseczki. Krok 2: Białka odłóż do lodówki na 30 minut aby się dobrze schłodziły. Krok 3: Ustawionym na niskie obroty mikserem ubijaj pianę z białek dosypując stopniowo cukier, a na koniec proszek do pieczenia. Zwiększ obroty i jeszcze chwilę ubijaj. Piana ma być bardzo sztywna, a cukier całkiem rozpuszczony. Krok 4: Przesiany razem z mąką ziemniaczaną cukier puder i ewentualnie inne dodatki smakowe (orzechy, cukier wanilinowy, kawę) połącz delikatnie z pianą z białek. Wlej ocet i wymieszaj. Krok 5: Piekarnik nagrzej do 120 st.C. Płaską blachę wyłóż papierem do pieczenia i narysuj na papierze planowane kształty bezowych ciastek. Krok 6: Masę bezową wyłóż łyżką na papier do pieczenia lub przy pomocy szprycy cukierniczej wyciskaj na papier małe formy. Susz w lekko uchylonym piekarniku od kilkudziesięciu minut do kilku godzin, w zależności od wielkości.', null, 'marysia'),
	(3,'Francuskie tosty serowe','Śniadanie','Łatwy','pieczywo tostowe 6 sztuk, olej 3 łyżki, przyprawa uniwesalna 1 szczypta, jajka 2 sztuki, ser żółty 80 gramów', 15, 'Krok 1: Jajka roztrzep i wymieszaj z startym serem oraz szczyptą przyprawy Knorr.Krok 2: Wlej Ramę na patelnię. Tosty maczaj w mieszance jajka i sera i smaż na patelni aż będą rumiane i chrupiące. Krok 3: Gotowe tosty posyp posiekaną natką pietruszki.',null, 'Piotr'),
	(4,'Ciasto na słodkie naleśniki','Kolacja','Łatwy','mąka pszenna: 1 szklanka, jajka 2 sztuki, mleko 0,5 szklanki, woda mineralna 0,5 szklanki, cukier waniliowy 1 łyżka, miód 1 łyżka, olej 30 ml, sól 1 szczypta', 20, 'Krok 1: Do miski wbij jajka i wymieszaj z cukrem i miodem. Następnie dodaj pozostałe składniki – mąkę, mleko, wodę, sól oraz olej – i wymieszaj używając do tego miksera. Ciasto powinno uzyskać gładką konsystencję. Krok 2: Na rozgrzanej i posmarowanej lekko tłuszczem patelni smaż naleśniki na złoty kolor z obu stron. Cukier waniliowy możesz sam przygotować w domowych warunkach – przekrojoną laskę wanilii włóż do słoiczka, a następnie zasyp ją zwykłym cukrem, zakręć słoik i pozostaw na kilka dni.',null, 'gość'),
	(5,'Szparagi z sosem','Przystawka','Łatwy','szparagi 2 pęczki, jakja 3 sztuki, bulion 1 sztuka, masło klarowane 250 ml, cukier 1 łyżka, sok z cytryny 50 ml', 15, 'Krok 1: Szparagi umyj, odetnij zdrewniałe końcówki, resztę szparagów obierz. W garnku nastaw doprawioną solą i cukrem wodę. Gdy woda zacznie się gotować, włóż do niej szparagi, gotuj zielone około 4 minut, a białe około 6 minut. Krok 2: Przygotuj sos: będziesz potrzebował trzepaczkę, garnek i metalową miskę o średnicy nieco większej niż garnek. Krok 3: Klarowane masło rozgrzej do temperatury około 60 stopni. Ma być ciepłe, nie gorące. W odpowiednim garnku zagotuj wodę. Do miski wbij żółtko jajek, dodaj cukier , kostkę rosołową, sok z cytryny. Miskę umieść na garnku, w kąpieli parowej. Powoli dodając masło, ucieraj je energicznie mieszając z żółtkami. Kontroluj przy tym temperaturę, gdyż w zbyt wysokiej jajka się po prostu zetną. Krok 4: Masło dodawaj do momentu, aż sos stanie się puszysty i zgęstnieje. Przełóż go wtedy do miski, dopraw białym pieprzem. Ugotowane szparagi podawaj polane sosem.',null, 'dominik');

/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
