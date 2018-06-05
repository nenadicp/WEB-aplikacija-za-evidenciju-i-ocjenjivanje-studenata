-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2018 at 02:34 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zavrsni`
--

-- --------------------------------------------------------

--
-- Table structure for table `predmet`
--

CREATE TABLE `predmet` (
  `id_predmet` int(3) NOT NULL,
  `naziv` char(100) DEFAULT NULL,
  `godina` int(11) NOT NULL,
  `pred_koef` decimal(2,1) DEFAULT NULL,
  `aud_koef` decimal(2,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `predmet`
--

INSERT INTO `predmet` (`id_predmet`, `naziv`, `godina`, `pred_koef`, `aud_koef`) VALUES
(2, 'Arhitektura racunalnih sustava', 2, '0.3', '0.7'),
(3, 'Baze podataka', 2, '0.4', '0.6'),
(4, 'Digitalna elektronika', 2, '0.6', '0.4'),
(5, 'Digitalni komunikacijski sustavi', 2, '0.5', '0.5'),
(6, 'Engleski jezik 1', 1, '0.3', '0.7'),
(7, 'Engleski jezik 2', 1, '0.3', '0.7'),
(8, 'Fizika', 1, '0.4', '0.6'),
(9, 'Informacija i informacijski sustavi', 2, '0.7', '0.3'),
(10, 'Inzenjerska grafika', 1, '0.5', '0.5'),
(11, 'Matematicka statistika', 1, '0.4', '0.6'),
(12, 'Matematika 1', 1, '0.5', '0.5'),
(13, 'Matematika 2', 1, '0.5', '0.5'),
(14, 'Multimedijska tehnika', 3, '0.5', '0.5'),
(15, 'Objektno orijentirano programiranje', 2, '0.3', '0.7'),
(16, 'Operacijski sustavi', 2, '0.8', '0.2'),
(17, 'Osnove digitalnih komunikacija', 3, '0.5', '0.5'),
(18, 'Osnove elektronike', 1, '0.5', '0.5'),
(19, 'Osnove elektrotehnike', 1, '0.5', '0.5'),
(20, 'Osnove primjene racunala', 1, '0.3', '0.7'),
(21, 'Poslovno komuniciranje', 3, '0.8', '0.2'),
(22, 'Programiranje', 1, '0.5', '0.5'),
(23, 'Programski alati u elektroenergetici', 2, '0.5', '0.5'),
(24, 'Projektiranje i odrzavanje programske podrske', 3, '0.7', '0.3'),
(25, 'Racunalne i komunikacijske mreze', 2, '0.7', '0.3'),
(26, 'Strucna praksa i projekt', 3, '0.5', '0.5'),
(27, 'Uvod u diskretnu matematiku', 2, '0.5', '0.5'),
(28, 'Uvod u ekonomiku i management', 2, '0.6', '0.4'),
(29, 'Web programiranje', 3, '0.5', '0.5'),
(30, 'Zavrsni rad', 3, '0.7', '0.3'),
(31, 'Java programiranje', 3, '0.6', '0.4');

-- --------------------------------------------------------

--
-- Table structure for table `profesor`
--

CREATE TABLE `profesor` (
  `id_profesor` int(2) NOT NULL,
  `ime` varchar(100) NOT NULL,
  `prezime` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `ime`, `prezime`, `username`, `password`, `email`) VALUES
(1, 'Kresimir', 'Nenadic', 'knenadic', '31624231854d455648483e16fbaeb582', 'knenadic@ferit.hr'),
(12, 'Tomislav', 'Baric', 'tbaric', '2436adb4d69dee64fba5674a000b36bb', 'tbaric@ferit.hr'),
(13, 'Tomislav', 'Keser', 'tkeser', 'a4d5c8eb0d35208788b9bd5244087ce1', 'tkeser@ferit.hr'),
(15, 'Damir', 'Blazevic', 'dblazevic', '4c46167d7dd5459852c7af8f8d820f52', 'dblazevic@ferit.hr'),
(16, 'Goran', 'Bokun', 'gbokun', '66b833fdee34deed8c70e2e533b41bc7', 'gbokun@ferit.hr'),
(17, 'Dominika', 'Crnjac Milic', 'dcrnjac', '5bd28a1c7bc69b234877addbcb208bf8', 'dcrnjac@ferit.hr'),
(18, 'Ivanka', 'Fercec', 'ifercec', 'c55cc9daa6d92d8e1d3aad12de05f382', 'ifercec@ferit.hr'),
(19, 'Jerko', 'Glavas', 'jglavas', '378f7a05f9d9e84380e4c1fcfdd91def', 'jglavas@ferit.hr'),
(20, 'Kresimir', 'Grgic', 'kgrgic', '836105fcbd54ab991134dfe4faad33e3', 'kgrgic@ferit.hr'),
(21, 'Marijan', 'Herceg', 'mherceg', 'f2c4383a22ed9ac914e3102e3f3697e3', 'mherceg@ferit.hr'),
(22, 'Ivan', 'Hrehorovic', 'ihrehorovic', '4da4f39a09864d029050aa004b81adfa', 'ihrehorovic@ferit.hr'),
(23, 'Zorislav', 'Kraus', 'zkraus', '01c8e8c1e31ef7b593553ebb938a2525', 'zkraus@ferit.hr'),
(24, 'Andjelko', 'Lisnjic', 'alisnjic', '3e5b1452ca34493ef213f6e702b8b9fb', 'alisnjic@ferit.hr'),
(25, 'Vanja', 'Mandric Radivojevic', 'vmandric', '90c867974923609208d11f67a2f9d8d6', 'vmandric@ferit.hr'),
(26, 'Zeljka', 'Miokovic', 'zmiokovic', 'f8a157e98fe4961e1b2f2c01b5159764', 'zmiokovic@ferit.hr'),
(27, 'Tomislav', 'Mrcela', 'tmrcela', '1966083449834ddd940040cbb0d9bc39', 'tmrcela@ferit.hr'),
(28, 'Tomislav', 'Rudec', 'trudec', '0fd963e39d5ce7fe83f517f854a91b2b', 'trudec@ferit.hr'),
(29, 'Ninoslav', 'Slavek', 'nslavek', '860ba6e791cb70037ef3861877b4d18d', 'nslavek@ferit.hr'),
(30, 'Mario', 'Vranjes', 'mvranjes', 'a51c28f341d3354c4a9f8f60a49bc133', 'mvranjes@ferit.hr'),
(31, 'Ivica', 'Lukic', 'ilukic', 'd0414268d5f7e97d814aa8932a869b3d', 'ilukic@ferit.hr'),
(33, 'Mirko', 'Kohler', 'mkohler', '3a0847f68a1c1ec881487d1803c16e0b', 'mkohler@ferit.hr');

-- --------------------------------------------------------

--
-- Table structure for table `profesor_predmet`
--

CREATE TABLE `profesor_predmet` (
  `id_profesor` int(2) NOT NULL,
  `id_predmet` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profesor_predmet`
--

INSERT INTO `profesor_predmet` (`id_profesor`, `id_predmet`) VALUES
(1, 20),
(1, 22),
(12, 19),
(1, 29),
(13, 2),
(13, 4),
(15, 15),
(16, 16),
(17, 11),
(18, 6),
(18, 7),
(19, 21),
(20, 25),
(21, 18),
(22, 12),
(22, 13),
(23, 23),
(24, 9),
(25, 5),
(25, 17),
(26, 8),
(27, 10),
(28, 27),
(29, 24),
(30, 14),
(31, 3),
(33, 31);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id_student` int(2) NOT NULL,
  `ime` varchar(100) NOT NULL,
  `prezime` varchar(100) NOT NULL,
  `godina` int(1) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id_student`, `ime`, `prezime`, `godina`, `username`, `password`, `email`) VALUES
(1, 'Josip', 'Bakovic', 1, 'jbakovic', 'f952219520104ef41f271ed97dd89d66', 'jbakovic@ferit.hr'),
(2, 'Ivana', 'Poljak', 3, 'ipoljak', 'e942a6a46522ae810c3172ecae8710de', 'ipoljak@ferit.hr'),
(3, 'Lucija', 'Bego', 1, 'lbego', '0fdf559df3cea9e4ed37f222cec76909', 'lbego@ferit.hr'),
(4, 'Ivana', 'Blajic', 1, 'iblajic', '560ff3533c597e2cd96cb6f0cd367862', 'iblajic@ferit.hr'),
(5, 'Natko', 'Covic', 1, 'ncovic', '9e0bad2bc35e5f3aa163eac25735ec6a', 'ncovic@ferit.hr'),
(7, 'Dora', 'Erceg', 2, 'derceg', '66ed1c8f81b5b0caffad082928eb84c1', 'derceg@ferit.hr'),
(8, 'Luka', 'Komic', 2, 'lkomic', '04de81718c8b3b1b745b0d13cc0a60d8', 'lkomic@ferit.hr'),
(9, 'Mirela', 'Kekic', 2, 'mkekic', '0fc691240d427df5d036b44c21b4f43f', 'mkekic@ferit.hr'),
(10, 'Domagoj', 'Krzelj', 2, 'dkrezelj', '643537c1bd79f9c7f600b47c678f4ffd', 'dkrzelj@ferit.hr'),
(11, 'Ivan', 'Lozina', 3, 'ilozina', '65051c2346a45c102a93ba6e438717c4', 'ilozina@ferit.hr'),
(12, 'Maja', 'Males', 3, 'mmales', '4a4b799c788a70530833177451be073f', 'mmales@ferit.hr'),
(13, 'Josip', 'Maslac', 3, 'jmaslac', 'f5822e9af27ede230aed4f36a475b19b', 'jmaslac@ferit.hr');

-- --------------------------------------------------------

--
-- Table structure for table `student_predmet`
--

CREATE TABLE `student_predmet` (
  `id_student` int(2) NOT NULL,
  `id_predmet` int(3) NOT NULL,
  `ocjena` int(11) DEFAULT NULL,
  `kolokvij_pred1` int(11) DEFAULT NULL,
  `kolokvij_pred2` int(11) DEFAULT NULL,
  `kolokvij_aud1` int(11) DEFAULT NULL,
  `kolokvij_aud2` int(11) DEFAULT NULL,
  `ispit_predavanja` int(11) DEFAULT NULL,
  `ispit_auditorne` int(11) DEFAULT NULL,
  `ispit_prijava` varchar(100) DEFAULT NULL,
  `potvrda` varchar(3) DEFAULT NULL,
  `prisutnost` int(11) DEFAULT NULL,
  `suma_predavanja` int(11) DEFAULT NULL,
  `suma_auditorne` int(11) DEFAULT NULL,
  `suma_kolokviji` int(11) DEFAULT NULL,
  `ispit_ocjena` int(11) DEFAULT NULL,
  `dat_prijave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_predmet`
--

INSERT INTO `student_predmet` (`id_student`, `id_predmet`, `ocjena`, `kolokvij_pred1`, `kolokvij_pred2`, `kolokvij_aud1`, `kolokvij_aud2`, `ispit_predavanja`, `ispit_auditorne`, `ispit_prijava`, `potvrda`, `prisutnost`, `suma_predavanja`, `suma_auditorne`, `suma_kolokviji`, `ispit_ocjena`, `dat_prijave`) VALUES
(1, 2, NULL, 100, 100, 70, 70, 89, 67, NULL, NULL, 67, 30, 49, 40, 37, ''),
(9, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Predavanja', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(9, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(12, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(5, 29, 3, 78, 51, 85, 67, NULL, NULL, 'Cijeli kolegij', 'DA', 70, 33, 38, 35, 0, ''),
(7, 29, NULL, 43, 30, 60, 56, NULL, NULL, 'Predavanja', 'NE', 80, 30, 31, 30, 0, ''),
(5, 3, NULL, 54, 50, 60, 54, 0, 0, 'Auditorne vjezbe', NULL, 78, 21, 34, 28, 0, ''),
(5, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Cijeli kolegij', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(7, 3, NULL, 23, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(7, 7, NULL, 23, 43, NULL, NULL, NULL, NULL, 'Cijeli kolegij', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(1, 16, NULL, 34, 28, 17, 23, 50, 60, NULL, NULL, NULL, 25, 4, 14, 26, ''),
(5, 31, NULL, 67, 54, 56, 89, 76, 66, NULL, NULL, 70, 37, 29, 33, 36, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(10) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('nenadicp', 'petar123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `predmet`
--
ALTER TABLE `predmet`
  ADD PRIMARY KEY (`id_predmet`),
  ADD KEY `id_predmeta` (`id_predmet`),
  ADD KEY `id_predmeta_2` (`id_predmet`);

--
-- Indexes for table `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id_profesor`);

--
-- Indexes for table `profesor_predmet`
--
ALTER TABLE `profesor_predmet`
  ADD KEY `id_profesor` (`id_profesor`),
  ADD KEY `id_predmet` (`id_predmet`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_student`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `predmet`
--
ALTER TABLE `predmet`
  MODIFY `id_predmet` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id_profesor` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id_student` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `profesor_predmet`
--
ALTER TABLE `profesor_predmet`
  ADD CONSTRAINT `profesor_predmet_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id_profesor`),
  ADD CONSTRAINT `profesor_predmet_ibfk_2` FOREIGN KEY (`id_predmet`) REFERENCES `predmet` (`id_predmet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
