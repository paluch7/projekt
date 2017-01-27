-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 27 Sty 2017, 04:46
-- Wersja serwera: 5.5.52-cll-lve
-- Wersja PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bendomin_paluch7`
--

DELIMITER $$
--
-- Funkcje
--
CREATE DEFINER=`bendomin_paluch7`@`localhost` FUNCTION `HelloWorld` () RETURNS VARCHAR(20) CHARSET utf8 COLLATE utf8_polish_ci BEGIN
        RETURN 'Hello World';
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `artysta`
--

CREATE TABLE `artysta` (
  `idartysta` int(11) NOT NULL,
  `imie` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `pochodzenie` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `wiek` int(11) NOT NULL,
  `plec` bit(1) NOT NULL,
  `opis` longtext COLLATE utf8_polish_ci,
  `artysta_zespol_FK` int(11) NOT NULL,
  `artysta_kolaboracja_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `artysta`
--

INSERT INTO `artysta` (`idartysta`, `imie`, `nazwisko`, `pochodzenie`, `wiek`, `plec`, `opis`, `artysta_zespol_FK`, `artysta_kolaboracja_FK`) VALUES
(7, 'Billy', 'Armstrong', 'Oakland', 45, b'1', 'amerykański muzyk, kompozytor, wokalista i autor tekstów. Billie Joe Armstrong znany jest przede wszystkim z wieloletnich występów w zespole rockowym Green Day. Występuje ponadto w zespołach Foxboro Hot Tubs i Pinhead Gunpowder. W latach 2003-2005 występował także w grupie The Network.', 13, NULL),
(8, 'Mike', 'Dirnt', 'Rodeo', 45, b'1', 'amerykański basista, muzyk grupy Green Day.', 13, 4),
(9, 'Paul', 'Hewson', 'Dublin', 57, b'1', 'irlandzki muzyk, filantrop, lider grupy rockowej U2', 14, 4),
(10, 'Michael', 'Balzary', 'Melbourne', 55, b'1', ' amerykański gitarzysta basowy, trębacz i aktor. Najdłużej związany z alternatywnym zespołem Red Hot Chili Peppers, którego jest współzałożycielem. W trakcie pracy z zespołem komponował i wykonywał różne rodzaje muzyki.', 15, 3),
(11, 'Thom', 'Yorke', 'Wellingborough', 49, b'1', 'wokalista i lider brytyjskiego zespołu Radiohead. Autor tekstów, w zespole gra na gitarze, perkusji i pianinie.', 16, 3),
(12, 'Serj', 'Tankian', 'Bejrut', 50, b'1', 'amerykański muzyk, instrumentalista i wokalista pochodzenia ormiańskiego. Członek grupy muzycznej System of a Down.', 17, NULL),
(13, 'Daron', 'Malakian', 'Los Angeles', 42, b'1', 'amerykański gitarzysta pochodzenia ormiańskiego, współzałożyciel System Of A Down.', 17, NULL),
(14, 'Chester', 'Bennington', 'Phoenix', 41, b'1', 'amerykański muzyk, wokalista zespołów Linkin Park, Dead by Sunrise i Stone Temple Pilots.', 18, NULL),
(15, 'Rob', 'Bourdon', 'Calabasas', 38, b'1', 'amerykański muzyk, perkusista w zespole Linkin Park. Obecnie mieszka w Los Angeles (Kalifornia). Jest jedynakiem, ma dziewczynę o imieniu Erika. Jest wyznawcą judaizmu. W zespole nie ma żadnego pseudonimu.', 18, NULL),
(16, 'Dexter', 'Holland', 'Garden Grove', 50, b'1', 'amerykański wokalista i gitarzysta, jeden z założycieli punkowego zespołu The Offspring, właściciel niezależnej wytwórni płytowej Nitro Records, z wykształcenia biolog.', 19, NULL),
(17, 'Gregory', 'Kriesel', 'Glendale', 52, b'1', 'basista i współzałożyciel zespołu The Offspring; śpiewa w chórkach.', 19, NULL),
(18, 'Artur', 'Rojek', 'Mysłowice', 45, b'1', 'polski muzyk, wokalista, autor tekstów i piosenek. Były członek zespołów Myslovitz i Lenny Valentino. Pomysłodawca i dyrektor artystyczny Off Festivalu. Członek Akademii Fonograficznej ZPAV.', 20, NULL),
(19, 'Thom', 'Yorke', 'Wellingborough', 49, b'1', 'wokalista i lider brytyjskiego zespołu Radiohead. Autor tekstów, w zespole gra na gitarze, perkusji i pianinie.', 16, 3),
(20, 'Serj', 'Tankian', 'Bejrut', 50, b'1', 'amerykański muzyk, instrumentalista i wokalista pochodzenia ormiańskiego. Członek grupy muzycznej System of a Down.', 17, NULL),
(21, 'Daron', 'Malakian', 'Los Angeles', 42, b'1', 'amerykański gitarzysta pochodzenia ormiańskiego, współzałożyciel System Of A Down.', 17, NULL),
(22, 'Chester', 'Bennington', 'Phoenix', 41, b'1', 'amerykański muzyk, wokalista zespołów Linkin Park, Dead by Sunrise i Stone Temple Pilots.', 18, NULL),
(23, 'Rob', 'Bourdon', 'Calabasas', 38, b'1', 'amerykański muzyk, perkusista w zespole Linkin Park. Obecnie mieszka w Los Angeles (Kalifornia). Jest jedynakiem, ma dziewczynę o imieniu Erika. Jest wyznawcą judaizmu. W zespole nie ma żadnego pseudonimu.', 18, NULL),
(24, 'Dexter', 'Holland', 'Garden Grove', 50, b'1', 'amerykański wokalista i gitarzysta, jeden z założycieli punkowego zespołu The Offspring, właściciel niezależnej wytwórni płytowej Nitro Records, z wykształcenia biolog.', 19, NULL),
(25, 'Gregory', 'Kriesel', 'Glendale', 52, b'1', 'basista i współzałożyciel zespołu The Offspring; śpiewa w chórkach.', 19, NULL),
(26, 'Artur', 'Rojek', 'Mysłowice', 45, b'1', 'polski muzyk, wokalista, autor tekstów i piosenek. Były członek zespołów Myslovitz i Lenny Valentino. Pomysłodawca i dyrektor artystyczny Off Festivalu. Członek Akademii Fonograficznej ZPAV.', 20, NULL),
(27, 'Wojciech', 'Powaga', 'Mysłowice', 45, b'1', 'polski muzyk, kompozytor, autor tekstów i instrumentalista. Współzałożyciel zespołu rockowego Myslovitz. Członek Akademii Fonograficznej ZPAV. Ukończył Wydział Transportu na Politechnice Śląskiej, a tematem jego pracy magisterskiej było \"Badanie wypadkowości na drodze krajowej nr 1', 20, NULL),
(28, 'Florence', 'Welch', 'Londyn', 30, b'1', 'angielska wokalistka, autorka tekstów i muzyki znana jako wokalistka zespołu Florence and the Machine reprezentującego muzykę z gatunku indie rock.', 21, NULL),
(29, 'Isabella ', 'Summers', 'Londyn', 37, b'1', 'is an English musician, songwriter, producer, remixer and member of English indie rock band Florence and the Machine.', 21, NULL),
(30, 'Romy', 'Crotf', 'Honduras', 25, b'1', 'muzyk, założyciel zespołu The XX', 22, NULL),
(31, 'Alex', 'Turner', 'Sheffield', 31, b'1', 'English musician. He is the lead vocalist, guitarist, and principal songwriter of the English indie band Arctic Monkeys.', 23, NULL),
(32, 'Jamie', 'Cook', 'Sheffield', 31, b'1', 'English guitarist and songwriter. He is best known as the lead guitarist and a founding member of the indie rock band Arctic Monkeys, with whom he has recorded five studio albums.', 23, NULL),
(33, 'Gerard', 'Way', 'Sheffield', 31, b'1', 'założyciel, lider i wokalista nieistniejącej od 22 marca 2013 roku amerykańskiej grupy rockowej My Chemical Romance. Jest starszym bratem basisty zespołu, Mikeyego, mężem Lyn-Z i ojcem Bandit Lee Way.', 24, NULL),
(34, 'Ray', 'Toro', 'Kearny', 42, b'1', 'główny gitarzysta zespołu My Chemical Romance, tworzył również jego śpiew towarzyszący..', 24, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `artysta_has_plyta`
--

CREATE TABLE `artysta_has_plyta` (
  `artysta_idartysta` int(11) NOT NULL,
  `plyta_idplyta` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatuneki_enum`
--

CREATE TABLE `gatuneki_enum` (
  `idgatunek` int(11) NOT NULL,
  `nazwa` varchar(45) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `gatuneki_enum`
--

INSERT INTO `gatuneki_enum` (`idgatunek`, `nazwa`) VALUES
(34, 'disco'),
(41, 'folk'),
(39, 'indie rock'),
(40, 'metal');

--
-- Wyzwalacze `gatuneki_enum`
--
DELIMITER $$
CREATE TRIGGER `after_delete_trigger_test` AFTER DELETE ON `gatuneki_enum` FOR EACH ROW BEGIN
 
        DELETE FROM bendomin_paluch7.trigger_test where nazwa_gatunku = OLD.nazwa;
 
    END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_insert_trigger_test` AFTER INSERT ON `gatuneki_enum` FOR EACH ROW BEGIN
            set @nazwa_gatunku = new.nazwa;
 
        INSERT INTO bendomin_paluch7.trigger_test (
                        nazwa_gatunku) VALUES (
                        @nazwa_gatunku);
 
    END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `jakie_latka`
-- (See below for the actual view)
--
CREATE TABLE `jakie_latka` (
`nazwisko` varchar(45)
,`wiek` int(11)
);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kolaboracja`
--

CREATE TABLE `kolaboracja` (
  `idkolaboracja` int(11) NOT NULL,
  `nazwa` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `data_zalozenia` year(4) NOT NULL,
  `kolaboracja_plyta_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `kolaboracja`
--

INSERT INTO `kolaboracja` (`idkolaboracja`, `nazwa`, `data_zalozenia`, `kolaboracja_plyta_FK`) VALUES
(3, 'Atoms For Peace', 2009, NULL),
(4, 'U2 & Green Day', 2006, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plyta`
--

CREATE TABLE `plyta` (
  `idplyta` int(11) NOT NULL,
  `nazwa` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `data_wydania` year(4) NOT NULL,
  `plyta_wytwornia_FK` int(11) NOT NULL,
  `zespol_idzespol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `plyta`
--

INSERT INTO `plyta` (`idplyta`, `nazwa`, `data_wydania`, `plyta_wytwornia_FK`, `zespol_idzespol`) VALUES
(96, '39/Smooth', 1990, 1, 13),
(97, 'Kerplunk!', 1992, 1, 13),
(98, 'Dookie', 1994, 2, 13),
(99, 'Insomniac', 1995, 2, 13),
(100, 'Nimrod', 1997, 2, 13),
(101, 'Warning', 2000, 2, 13),
(102, 'American Idiot', 2004, 2, 13),
(103, '21st Century Breakdown', 2009, 2, 13),
(104, '¡Uno!', 2012, 2, 13),
(105, '¡Dos!', 2012, 2, 13),
(106, '¡Tré!', 2012, 2, 13),
(107, 'Revolution Radio', 2016, 2, 13),
(108, 'Boy', 1980, 3, 14),
(109, 'October', 1981, 3, 14),
(110, 'War', 1983, 3, 14),
(111, 'The Unforgettable Fire', 1984, 3, 14),
(112, 'The Joshua Tree', 1987, 3, 14),
(113, 'Rattle and Hum', 1988, 3, 14),
(114, 'Achtung Baby', 1991, 3, 14),
(115, 'Zooropa', 1993, 3, 14),
(116, 'Original Soundtracks 1', 1995, 4, 14),
(117, 'Pop', 1997, 3, 14),
(118, 'All That You Cant Leave Behind', 2000, 5, 14),
(119, 'How to Dismantle an Atomic Bomb', 2004, 5, 14),
(120, 'No Line on the Horizon', 2009, 3, 14),
(121, 'Songs of Innocence', 2014, 3, 14),
(122, 'The Red Hot Chili Peppers', 1984, 6, 15),
(123, 'Freaky Styley', 1985, 6, 15),
(124, 'The Uplift Mofo Party Plan', 1987, 6, 15),
(125, 'Mothers Milk', 1989, 6, 15),
(126, 'Blood Sugar Sex Magik', 1991, 7, 15),
(127, 'One Hot Minute', 1995, 7, 15),
(128, 'Californication', 1999, 7, 15),
(129, 'By the Way', 2002, 7, 15),
(130, 'Stadium Arcadium', 2006, 7, 15),
(131, 'Im with You', 2011, 7, 15),
(132, 'The Getaway', 2016, 7, 15),
(133, 'System of a Down', 1998, 8, 17),
(134, 'Toxicity', 2001, 8, 17),
(135, 'Steal This Album!', 2002, 8, 17),
(136, 'Mezmerize', 2005, 8, 17),
(137, 'Hypnotize', 2005, 8, 17),
(138, 'Hybrid Theory', 2000, 7, 18),
(139, 'Meteora', 2003, 7, 18),
(140, 'Minutes to Midnight', 2007, 7, 18),
(141, 'A Thousand Suns', 2010, 7, 18),
(142, 'Living Things', 2012, 7, 18),
(143, 'Hunting Party', 2014, 7, 18),
(144, 'The Offspring', 1989, 9, 19),
(145, 'Ignition', 1992, 10, 19),
(146, 'Smash', 1994, 10, 19),
(147, 'Ixnay on the Hombre', 1997, 11, 19),
(148, 'Americana', 1998, 11, 19),
(149, 'Conspiracy of One', 2000, 11, 19),
(150, 'Splinter', 2003, 11, 19),
(151, 'Rise and Fall', 2008, 7, 19),
(152, 'Rage and Grace', 2008, 11, 19),
(153, 'Myslovitz', 1995, 12, 20),
(154, 'Sun Machine', 1996, 13, 20),
(155, 'Z rozmyślań przy śniadaniu', 1997, 13, 20),
(156, 'Miłość w czasach popkultury', 1999, 13, 20),
(157, 'Korova Milky Bar', 2002, 13, 20),
(158, 'Skalary mieczyki neonki,', 2004, 14, 20),
(159, 'Happiness Is Easy', 2006, 14, 20),
(160, 'Nieważne jak wysoko jesteśmy...', 2011, 15, 20),
(161, '1.577', 2013, 15, 20),
(162, 'Lungs', 2009, 3, 21),
(163, 'Ceremonials', 2011, 3, 21),
(164, 'How Big How Blue How Beautiful', 2015, 3, 21),
(165, '„xx”', 2009, 16, 22),
(166, 'Coexist', 2012, 16, 22),
(167, 'I See You', 2017, 16, 22),
(168, 'Whatever People Say I Am Thats What Im Not', 2006, 17, 23),
(169, 'Favourite Worst Nightmare', 2007, 17, 23),
(170, 'Humbug', 2009, 17, 23),
(171, 'Suck It and See', 2011, 17, 23),
(172, 'AM', 2013, 17, 23),
(173, 'I Brought You My Bullets You Brought Me Your Love', 2002, 7, 24),
(174, 'Three Cheers for Sweet Revenge', 2004, 7, 24),
(175, 'The Black Parade', 2006, 7, 24),
(176, 'Danger Days: The True Lives of the Fabulous Killjoys', 2010, 7, 24),
(177, 'Pablo Honey', 2010, 7, 16),
(178, 'The Bends', 2010, 7, 16),
(179, 'OK Computer', 2010, 7, 16),
(180, 'Kid A', 2010, 7, 16),
(181, 'Amnesiac', 2010, 7, 16),
(182, 'Hail to the Thief', 2010, 7, 16),
(183, 'In Rainbows', 2010, 7, 16),
(184, 'The King of Limbs', 2010, 7, 16),
(185, 'A Moon Shaped Pool', 2010, 7, 16);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plyta_has_gatuneki_enum`
--

CREATE TABLE `plyta_has_gatuneki_enum` (
  `idplyta` int(11) NOT NULL,
  `idgatuenk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `trigger_test`
--

CREATE TABLE `trigger_test` (
  `idtest` int(11) NOT NULL,
  `nazwa_gatunku` varchar(45) COLLATE utf8_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `trigger_test`
--

INSERT INTO `trigger_test` (`idtest`, `nazwa_gatunku`) VALUES
(24, 'folk'),
(17, 'disco'),
(22, 'indie rock'),
(23, 'metal');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wytwornia`
--

CREATE TABLE `wytwornia` (
  `idwytwornia` int(11) NOT NULL,
  `nazwa` varchar(60) COLLATE utf8_polish_ci NOT NULL,
  `budzet` varchar(10) COLLATE utf8_polish_ci DEFAULT NULL,
  `siedziba` varchar(45) COLLATE utf8_polish_ci DEFAULT NULL,
  `pochodzenie` varchar(3) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `wytwornia`
--

INSERT INTO `wytwornia` (`idwytwornia`, `nazwa`, `budzet`, `siedziba`, `pochodzenie`) VALUES
(1, 'Lookout! Records', '300000', 'Laytonville', 'Kal'),
(2, 'Reprise Records', '5000000', 'Las Vegas', 'Nev'),
(3, 'Island Records', '1000000', 'Wielka Brytania', 'Jam'),
(4, 'Mercury Music Entertainment', '3000000', 'USA', 'Jam'),
(5, 'Interscope Records', '4000000', 'Santa Monica', 'Kal'),
(6, 'EMI', '500000', 'Londyn', 'Wie'),
(7, 'Warner Bros.', '50000000', 'Burbank', 'Kal'),
(8, 'American Recordings', '5000000', 'USA', 'USA'),
(9, 'Nemesis Records', '5200000', 'Long Beach', 'Kal'),
(10, 'Epitaph Records', '6000000', 'Los Angeles', 'Kal'),
(11, 'Columbia Records', '60000000', 'Kolumbia', 'USA'),
(12, 'MJM Music', '600000', 'Warszawa', 'Pol'),
(13, 'Sony Music Entertainment Poland', '6000000', 'Warszawa', 'Now'),
(14, 'Capitol Records', '60000000', 'Los Angeles', 'Kal'),
(15, 'EMI Music Poland', '50000000', 'Warszawa', 'Wie'),
(16, 'Young Turks', '50000000', 'Londyn', 'Wie'),
(17, 'Domino', '50000000', 'Londyn', 'Wie'),
(18, 'Lookout! Records', '300000', 'Laytonville', 'Kal'),
(19, 'Reprise Records', '5000000', 'Las Vegas', 'Nev'),
(20, 'Island Records', '1000000', 'Wielka Brytania', 'Jam'),
(21, 'Mercury Music Entertainment', '3000000', 'USA', 'Jam'),
(22, 'Interscope Records', '4000000', 'Santa Monica', 'Kal'),
(23, 'EMI', '500000', 'Londyn', 'Wie'),
(24, 'Warner Bros.', '50000000', 'Burbank', 'Kal'),
(25, 'American Recordings', '5000000', 'USA', 'USA'),
(26, 'Nemesis Records', '5200000', 'Long Beach', 'Kal'),
(27, 'Epitaph Records', '6000000', 'Los Angeles', 'Kal'),
(28, 'Columbia Records', '60000000', 'Kolumbia', 'USA'),
(29, 'MJM Music', '600000', 'Warszawa', 'Pol'),
(30, 'Sony Music Entertainment Poland', '6000000', 'Warszawa', 'Now'),
(31, 'Capitol Records', '60000000', 'Los Angeles', 'Kal'),
(32, 'EMI Music Poland', '50000000', 'Warszawa', 'Wie'),
(33, 'Young Turks', '50000000', 'Londyn', 'Wie'),
(34, 'Domino', '50000000', 'Londyn', 'Wie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zespol`
--

CREATE TABLE `zespol` (
  `idzespol` int(11) NOT NULL,
  `nazwa` varchar(45) COLLATE utf8_polish_ci NOT NULL,
  `data_zalozenia` year(4) NOT NULL,
  `strona_internetowa` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `pochodzenie` varchar(45) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `zespol`
--

INSERT INTO `zespol` (`idzespol`, `nazwa`, `data_zalozenia`, `strona_internetowa`, `pochodzenie`) VALUES
(13, 'Green Day', 1987, 'www.greenday.com', 'Kalifornia'),
(14, 'U2', 1978, 'www.u2.com', 'Dublin'),
(15, 'Red Hot Chili Peppers', 1983, 'www.redhotchilipeppers.com', 'Kalifornia'),
(16, 'Radiohead', 1986, 'www.radiohead.com', 'Wielka Brytania'),
(17, 'System of a Down', 1994, 'www.systemofadown.com', 'Kalifornia'),
(18, 'Linkin Park', 1996, 'www.linkinpark.com', 'Los Angeles'),
(19, 'The Offspring', 1984, 'www.offspring.com', 'Kalifornia'),
(20, 'Myslovitz', 1992, 'www.myslovitz.pl', 'Mysłowice'),
(21, 'Florence and the Machine', 2007, 'www.florenceandthemachine.net', 'Wielka Brytania'),
(22, 'The XX', 2005, 'www.thexx.info', 'Londyn'),
(23, 'Arctic Monkeys', 2002, 'www.arcticmonkeys.com', 'Sheffield '),
(24, 'My Chemical Romance', 2002, 'www.mychemicalromance.com', 'New Jersey ');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zespol_has_gatuneki_enum`
--

CREATE TABLE `zespol_has_gatuneki_enum` (
  `idzespol` int(11) NOT NULL,
  `idgatunek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

-- --------------------------------------------------------

--
-- Struktura widoku `jakie_latka`
--
DROP TABLE IF EXISTS `jakie_latka`;

CREATE ALGORITHM=UNDEFINED DEFINER=`bendomin_paluch7`@`localhost` SQL SECURITY DEFINER VIEW `jakie_latka`  AS  select `artysta`.`nazwisko` AS `nazwisko`,`artysta`.`wiek` AS `wiek` from `artysta` ;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `artysta`
--
ALTER TABLE `artysta`
  ADD PRIMARY KEY (`idartysta`),
  ADD KEY `artysta_zespol_FK` (`artysta_zespol_FK`),
  ADD KEY `artysta_kolaboracja_FK` (`artysta_kolaboracja_FK`);

--
-- Indexes for table `artysta_has_plyta`
--
ALTER TABLE `artysta_has_plyta`
  ADD PRIMARY KEY (`artysta_idartysta`,`plyta_idplyta`),
  ADD KEY `fk_artysta_has_plyta_plyta1_idx` (`plyta_idplyta`),
  ADD KEY `fk_artysta_has_plyta_artysta1_idx` (`artysta_idartysta`);

--
-- Indexes for table `gatuneki_enum`
--
ALTER TABLE `gatuneki_enum`
  ADD PRIMARY KEY (`idgatunek`),
  ADD UNIQUE KEY `nazwa` (`nazwa`);

--
-- Indexes for table `kolaboracja`
--
ALTER TABLE `kolaboracja`
  ADD PRIMARY KEY (`idkolaboracja`),
  ADD KEY `kolaboracja_plyta_FK` (`kolaboracja_plyta_FK`);

--
-- Indexes for table `plyta`
--
ALTER TABLE `plyta`
  ADD PRIMARY KEY (`idplyta`),
  ADD KEY `plyta_wytwornia_FK` (`plyta_wytwornia_FK`),
  ADD KEY `fk_plyta_zespol1_idx` (`zespol_idzespol`);

--
-- Indexes for table `plyta_has_gatuneki_enum`
--
ALTER TABLE `plyta_has_gatuneki_enum`
  ADD PRIMARY KEY (`idplyta`,`idgatuenk`),
  ADD KEY `fk_płyta_has_gatuneki_enum_gatuneki_enum1_idx` (`idgatuenk`),
  ADD KEY `fk_płyta_has_gatuneki_enum_płyta1_idx` (`idplyta`);

--
-- Indexes for table `trigger_test`
--
ALTER TABLE `trigger_test`
  ADD PRIMARY KEY (`idtest`);

--
-- Indexes for table `wytwornia`
--
ALTER TABLE `wytwornia`
  ADD PRIMARY KEY (`idwytwornia`);

--
-- Indexes for table `zespol`
--
ALTER TABLE `zespol`
  ADD PRIMARY KEY (`idzespol`),
  ADD UNIQUE KEY `nazwa_UNIQUE` (`nazwa`);

--
-- Indexes for table `zespol_has_gatuneki_enum`
--
ALTER TABLE `zespol_has_gatuneki_enum`
  ADD PRIMARY KEY (`idzespol`,`idgatunek`),
  ADD KEY `fk_zespol_has_gatuneki_enum_gatuneki_enum1_idx` (`idgatunek`),
  ADD KEY `fk_zespol_has_gatuneki_enum_zespol1_idx` (`idzespol`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `artysta`
--
ALTER TABLE `artysta`
  MODIFY `idartysta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT dla tabeli `gatuneki_enum`
--
ALTER TABLE `gatuneki_enum`
  MODIFY `idgatunek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT dla tabeli `kolaboracja`
--
ALTER TABLE `kolaboracja`
  MODIFY `idkolaboracja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `plyta`
--
ALTER TABLE `plyta`
  MODIFY `idplyta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;
--
-- AUTO_INCREMENT dla tabeli `trigger_test`
--
ALTER TABLE `trigger_test`
  MODIFY `idtest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT dla tabeli `wytwornia`
--
ALTER TABLE `wytwornia`
  MODIFY `idwytwornia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT dla tabeli `zespol`
--
ALTER TABLE `zespol`
  MODIFY `idzespol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `artysta`
--
ALTER TABLE `artysta`
  ADD CONSTRAINT `artysta_zespol_FK` FOREIGN KEY (`artysta_zespol_FK`) REFERENCES `zespol` (`idzespol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `artysta_kolaboracja_FK` FOREIGN KEY (`artysta_kolaboracja_FK`) REFERENCES `kolaboracja` (`idkolaboracja`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `artysta_has_plyta`
--
ALTER TABLE `artysta_has_plyta`
  ADD CONSTRAINT `fk_artysta_has_plyta_artysta1` FOREIGN KEY (`artysta_idartysta`) REFERENCES `artysta` (`idartysta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_artysta_has_plyta_plyta1` FOREIGN KEY (`plyta_idplyta`) REFERENCES `plyta` (`idplyta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `kolaboracja`
--
ALTER TABLE `kolaboracja`
  ADD CONSTRAINT `kolaboracja_plyta_FK` FOREIGN KEY (`kolaboracja_plyta_FK`) REFERENCES `plyta` (`idplyta`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `plyta`
--
ALTER TABLE `plyta`
  ADD CONSTRAINT `fk_plyta_zespol1` FOREIGN KEY (`zespol_idzespol`) REFERENCES `zespol` (`idzespol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `plyta_wytwornia_FK` FOREIGN KEY (`plyta_wytwornia_FK`) REFERENCES `wytwornia` (`idwytwornia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `plyta_has_gatuneki_enum`
--
ALTER TABLE `plyta_has_gatuneki_enum`
  ADD CONSTRAINT `fk_płyta_has_gatuneki_enum_płyta1` FOREIGN KEY (`idplyta`) REFERENCES `plyta` (`idplyta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_płyta_has_gatuneki_enum_gatuneki_enum1` FOREIGN KEY (`idgatuenk`) REFERENCES `gatuneki_enum` (`idgatunek`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `zespol_has_gatuneki_enum`
--
ALTER TABLE `zespol_has_gatuneki_enum`
  ADD CONSTRAINT `fk_zespol_has_gatuneki_enum_zespol1` FOREIGN KEY (`idzespol`) REFERENCES `zespol` (`idzespol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_zespol_has_gatuneki_enum_gatuneki_enum1` FOREIGN KEY (`idgatunek`) REFERENCES `gatuneki_enum` (`idgatunek`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
