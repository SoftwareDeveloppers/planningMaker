-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2018 at 10:45 AM
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
-- Database: `planning_maker`
--

-- --------------------------------------------------------

--
-- Table structure for table `affectation`
--

CREATE TABLE `affectation` (
  `id` int(11) NOT NULL,
  `id_Etudiant` int(11) NOT NULL,
  `id_Sujet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `agentadmin`
--

CREATE TABLE `agentadmin` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mdp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agentadmin`
--

INSERT INTO `agentadmin` (`id`, `nom`, `prenom`, `email`, `mdp`) VALUES
(1, 'Agent', 'admin', 'admin@gmail.com', 'azerty13'),
(2, 'Employer', 'Devante', '', 'abcd13'),
(3, 'Admin', 'Gabe', '', 'azerty13'),
(4, 'Admin', 'Waldo', '', 'azerty13');

-- --------------------------------------------------------

--
-- Table structure for table `assiste`
--

CREATE TABLE `assiste` (
  `id` int(11) NOT NULL,
  `id_Enseignant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `configuration`
--

CREATE TABLE `configuration` (
  `id` int(10) NOT NULL,
  `nbrChoix` int(10) NOT NULL,
  `nbrSujetPropose` int(10) NOT NULL,
  `nbrJuree` int(10) NOT NULL,
  `taux` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `configuration`
--

INSERT INTO `configuration` (`id`, `nbrChoix`, `nbrSujetPropose`, `nbrJuree`, `taux`) VALUES
(1, 3, 3, 4, 100);

-- --------------------------------------------------------

--
-- Table structure for table `enseignant`
--

CREATE TABLE `enseignant` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `dateN` date NOT NULL,
  `adresse` varchar(40) NOT NULL DEFAULT 'email@gmail.com',
  `email` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `specialite` varchar(25) NOT NULL,
  `grade` varchar(25) NOT NULL,
  `telephone` varchar(20) NOT NULL DEFAULT '0774586000',
  `sexe` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enseignant`
--

INSERT INTO `enseignant` (`id`, `nom`, `prenom`, `dateN`, `adresse`, `email`, `mdp`, `specialite`, `grade`, `telephone`, `sexe`) VALUES
(1, 'Cortez', 'Rice', '2017-05-05', 'email@gmail.com', 'bert.gaylord@hotmail.com', 'azerty', 'SIC', 'Maître Assistant A', '774586000', 'homme'),
(2, 'Stephon', 'Metz', '2017-05-05', 'email@gmail.com', 'jerrold.wiegand@yahoo.com', 'azerty', 'SIC', 'Maître de conférences B', '774586000', 'homme'),
(3, 'Khalid', 'Abbott', '2017-05-05', 'email@gmail.com', 'cassie.monahan@gmail.com', '123', 'MID', 'Professeur', '774586000', 'homme'),
(4, 'Lance', 'Lowe', '2017-05-05', 'email@gmail.com', 'prosacco.luigi@hotmail.com', 'azerty', 'RSD', 'Maître de conférences A', '774586000', 'homme'),
(5, 'Eliezer', 'Blanda', '2017-05-05', 'email@gmail.com', 'cheyanne04@gmail.com', '123', 'RSD', 'Maître de conférences B', '774586000', 'homme'),
(6, 'Virginia', 'Armstrong', '2017-05-05', 'email@gmail.com', 'pfeffer.marjolaine@gmail.com', 'azerty', 'RSD', 'Professeur', '774586000', 'homme'),
(7, 'Yasmin', 'Grimes', '2017-05-05', 'email@gmail.com', 'destiny.turner@hotmail.com', '123', 'GL', 'Professeur', '774586000', 'homme'),
(8, 'Natalia', 'Dietrich', '2017-05-05', 'email@gmail.com', 'elody.ortiz@yahoo.com', '123', 'MID', 'Maître de conférences A', '774586000', 'homme'),
(9, 'Forest', 'Keeling', '2017-05-05', 'email@gmail.com', 'pansy69@hotmail.com', '123', 'GL', 'Professeur', '774586000', 'homme'),
(10, 'Jaycee', 'Kuvalis', '2017-05-05', 'email@gmail.com', 'hand.reilly@yahoo.com', 'azerty', 'MID', 'Professeur', '774586000', 'homme'),
(11, 'Danyka', 'McGlynn', '2017-05-05', 'email@gmail.com', 'mstamm@yahoo.com', '123', 'RSD', 'Maître de conférences B', '774586000', 'homme'),
(12, 'Brendan', 'Bergnaum', '2017-05-05', 'email@gmail.com', 'otto.borer@hotmail.com', '123', 'RSD', 'Maître de conférences A', '774586000', 'homme'),
(13, 'Bennett', 'Purdy', '2017-05-05', 'email@gmail.com', 'nmarquardt@yahoo.com', '123', 'SIC', 'Maître de conférences A', '774586000', 'homme'),
(14, 'Lawrence', 'Nitzsche', '2017-05-05', 'email@gmail.com', 'vivienne.prosacco@hotmail.com', 'azerty', 'SIC', 'Maître Assistant A', '774586000', 'homme'),
(15, 'Dangelo', 'Padberg', '2017-05-05', 'email@gmail.com', 'jboehm@hotmail.com', '123', 'GL', 'Professeur', '774586000', 'homme'),
(16, 'Schuyler', 'Yundt', '2017-05-05', 'email@gmail.com', 'arvid71@gmail.com', 'azerty', 'MID', 'Maître de conférences B', '774586000', 'homme'),
(17, 'Matilde', 'Mraz', '2017-05-05', 'email@gmail.com', 'pbayer@gmail.com', 'azerty', 'RSD', 'Maître de conférences B', '774586000', 'homme'),
(18, 'Raoul', 'Huels', '2017-05-05', 'email@gmail.com', 'candace.weissnat@yahoo.com', 'azerty', 'MID', 'Professeur', '774586000', 'homme'),
(19, 'Sadye', 'Bins', '2017-05-05', 'email@gmail.com', 'kihn.kaci@gmail.com', 'azerty', 'GL', 'Professeur', '774586000', 'homme'),
(20, 'Germaine', 'Turcotte', '2017-05-05', 'email@gmail.com', 'piper71@gmail.com', 'azerty', 'RSD', 'Maître de conférences B', '774586000', 'homme'),
(21, 'Lurline', 'Collins', '2017-05-05', 'email@gmail.com', 'kihn.teresa@yahoo.com', '123', 'RSD', 'Maître de conférences B', '774586000', 'homme'),
(22, 'Camren', 'Wuckert', '2017-05-05', 'email@gmail.com', 'letitia.marks@yahoo.com', 'azerty', 'SIC', 'Maître de conférences B', '774586000', 'homme'),
(23, 'Junius', 'Will', '2017-05-05', 'email@gmail.com', 'uryan@hotmail.com', '123', 'SIC', 'Maître de conférences B', '774586000', 'homme'),
(24, 'Charley', 'Larson', '2017-05-05', 'email@gmail.com', 'mara69@gmail.com', 'azerty', 'RSD', 'Maître Assistant B', '774586000', 'homme'),
(25, 'Shanie', 'Murphy', '2017-05-05', 'email@gmail.com', 'kim.reilly@hotmail.com', '123', 'GL', 'Maître Assistant B', '774586000', 'homme'),
(26, 'Jermaine', 'Murazik', '2017-05-05', 'email@gmail.com', 'pupton@yahoo.com', '123', 'MID', 'Maître Assistant A', '774586000', 'homme'),
(27, 'Isac', 'Harber', '2017-05-05', 'email@gmail.com', 'bradly.ebert@gmail.com', '123', 'MID', 'Maître de conférences A', '774586000', 'homme'),
(28, 'Norbert', 'Reynolds', '2017-05-05', 'email@gmail.com', 'crooks.claudie@gmail.com', '123', 'MID', 'Maître de conférences B', '774586000', 'homme'),
(29, 'Chad', 'Gulgowski', '2017-05-05', 'email@gmail.com', 'madeline75@hotmail.com', '123', 'GL', 'Maître de conférences B', '774586000', 'homme'),
(30, 'Zoey', 'Gusikowski', '2017-05-05', 'email@gmail.com', 'xgleason@gmail.com', '123', 'GL', 'Maître Assistant B', '774586000', 'homme'),
(31, 'Messabihi', 'Mohammed', '2017-05-05', 'Imama', 'messabihi.mohammed@gmail.com', 'mes1', 'GL', 'professeur', '558963000', 'homme'),
(32, 'ccccc', 'azeaze', '2017-05-05', 'vvvvvvvvv', 'adilos-rahmoun07@outlook.fr', 'cc1', 'GL', 'azezae', '775490000', 'homme'),
(33, 'zzzzzz', 'zzz', '2017-05-05', 'Imama', 'zzz@gmail.com', 'zz1', 'GL', 'fds', '0558963214', 'homme'),
(34, 'zzzzzz', 'zzz', '2017-05-05', 'aezzae', 'messabihi.1mohammed@gmail.com', '2', 'GL', 'azezae', '0558963214', 'homme'),
(35, 'zzzzzz', 'zzz', '2017-05-05', 'aezzae', 'mess2abihi.1mohammed@gmail.com', '1', 'GL', 'azezae', '0558963214', 'homme');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `dateNaissance` date NOT NULL,
  `specialite` varchar(25) NOT NULL,
  `promotion` varchar(25) NOT NULL,
  `moyenne` float NOT NULL,
  `taux` float NOT NULL DEFAULT '0',
  `id_FicheDeVoeux` int(11) DEFAULT NULL,
  `id_Enseignant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`, `prenom`, `email`, `mdp`, `dateNaissance`, `specialite`, `promotion`, `moyenne`, `taux`, `id_FicheDeVoeux`, `id_Enseignant`) VALUES
(1, 'Benmansour', 'Hichem', 'cartwright.coleman@gmail.com', '123456', '1995-10-05', 'SIC', '2014', 13, 50, 1, 9),
(2, 'Sour', 'Salim', 'hahn.jared@hotmail.com', '123456', '1996-02-08', 'RSD', '2013', 11, 100, 2, 18),
(3, 'Azzouni', 'Hind', 'kristina03@hotmail.com', '123456', '1996-02-03', 'SIC', '2011', 16, 0, 3, 16),
(4, 'Tabet Aoul', 'Mounia', 'gfay@hotmail.com', 'azerty13', '1994-12-22', 'RSD', '2011', 10, 0, NULL, NULL),
(5, 'Tabet Aoul', 'Chaib', 'boyer.lizeth@yahoo.com', '123456', '1995-03-07', 'SIC', '2012', 15, 100, 5, 8),
(6, 'Sour', 'Yassine', 'umurphy@yahoo.com', 'azerty13', '1993-12-16', 'GL', '2014', 12, 100, 6, 29),
(7, 'Kazi Aoul', 'Reda', 'raynor.alba@gmail.com', 'azerty13', '1992-11-21', 'SIC', '2013', 13, 0, NULL, NULL),
(8, 'Soulimane', 'Hind', 'esteban.turner@gmail.com', 'azerty13', '1992-09-20', 'GL', '2014', 20, 100, 8, 12),
(9, 'Bereksi', 'Ines', 'haley.keebler@gmail.com', '123456', '1995-06-09', 'RSD', '2012', 15, 0, NULL, NULL),
(10, 'Sekkal', 'Hind', 'milan94@hotmail.com', '123456', '1995-08-29', 'SIC', '2014', 11, 0, NULL, NULL),
(11, 'Tabet', 'Hind', 'conroy.osborne@yahoo.com', '123456', '1995-04-15', 'RSD', '2012', 9, 0, NULL, NULL),
(12, 'Kalfat', 'Chaib', 'jaiden02@yahoo.com', '123456', '1992-10-08', 'GL', '2014', 16, 100, 12, 4),
(13, 'Hamza Cherif', 'Abdelhak', 'mayra05@gmail.com', 'azerty13', '1993-02-16', 'SIC', '2014', 11, 0, NULL, NULL),
(14, 'Kazi Aoul', 'Toufik', 'simone43@hotmail.com', '123456', '1994-05-18', 'RSD', '2012', 9, 0, NULL, NULL),
(15, 'Soulimane', 'Sidou', 'garry14@gmail.com', 'azerty13', '1992-07-05', 'SIC', '2014', 12, 100, 15, 12),
(16, 'Bendimred', 'Mohammed', 'elang@hotmail.com', '123456', '1995-11-27', 'GL', '2014', 18, 100, 16, 12),
(17, 'Tabet', 'Karim', 'msanford@hotmail.com', 'azerty13', '1994-10-10', 'RSD', '2011', 14, 0, NULL, NULL),
(18, 'Seghiri', 'Abdelhak', 'aylin.king@yahoo.com', 'azerty13', '1994-10-30', 'SIC', '2012', 10, 0, NULL, NULL),
(19, 'Seghiri', 'Nesrine', 'herman.retta@yahoo.com', '123456', '1993-10-08', 'RSD', '2012', 10, 0, NULL, NULL),
(20, 'Hamzaoui', 'Hichem', 'stroman.leora@hotmail.com', '123456', '1992-12-10', 'GL', '2012', 19, 0, 20, 4),
(21, 'Rahmoun', 'Chiheb', 'taylor.bechtelar@yahoo.com', '123456', '1992-10-19', 'SIC', '2013', 14, 0, 21, NULL),
(22, 'Meriah', 'Salim', 'euna62@yahoo.com', 'azerty13', '1995-08-09', 'RSD', '2012', 13, 0, 22, NULL),
(23, 'Hamza Cherif', 'Mounia', 'kayden48@yahoo.com', 'azerty13', '1993-11-29', 'RSD', '2014', 15, 100, 23, 26),
(24, 'Belkhodja', 'Abderahmen', 'murphy.edwina@yahoo.com', 'azerty13', '1994-04-08', 'SIC', '2014', 14, 0, NULL, NULL),
(25, 'Rahmoun', 'Nihel', 'frederic64@hotmail.com', 'azerty13', '1993-10-03', 'RSD', '2013', 15, 0, NULL, NULL),
(26, 'Mekhezzem', 'Yasmine', 'seffertz@gmail.com', 'azerty13', '1993-01-04', 'RSD', '2014', 13, 0, NULL, NULL),
(27, 'Fasla', 'Linda', 'cruickshank.rubye@yahoo.com', '123456', '1992-09-04', 'RSD', '2013', 14, 0, NULL, NULL),
(28, 'Hamza Cherif', 'Chaib', 'kunze.jennie@hotmail.com', '123456', '1994-03-24', 'GL', '2011', 14, 15, 28, 9),
(29, 'Benmansour', 'Rihem', 'vpowlowski@yahoo.com', '123456', '1995-07-06', 'SIC', '2013', 10, 0, NULL, NULL),
(30, 'Bendimred', 'Nesrine', 'mckenzie51@yahoo.com', 'azerty13', '1994-11-03', 'RSD', '2012', 8, 0, NULL, NULL),
(34, 'Mesroua', 'Abdelhak', 'kelli.schamberger@hotmail.com', 'azerty13', '1994-04-21', 'RSD', '2011', 12, 0, NULL, NULL),
(35, 'Sekkal', 'Djihene', 'jamir.emard@yahoo.com', '123456', '1993-06-10', 'RSD', '2014', 11, 0, NULL, NULL),
(37, 'Mesroua', 'Mohammed', 'wschmeler@gmail.com', 'azerty13', '1993-06-16', 'RSD', '2014', 13, 0, NULL, NULL),
(38, 'Malti', 'Abdelhak', 'chauncey19@gmail.com', '123456', '1993-12-28', 'SIC', '2013', 12, 0, NULL, NULL),
(39, 'Sour', 'Mohammed', 'laurie.kirlin@yahoo.com', '123456', '1994-08-09', 'SIC', '2014', 9, 0, NULL, NULL),
(40, 'Hamzaoui', 'Amine', 'clara17@hotmail.com', '123456', '1993-03-31', 'RSD', '2013', 15, 0, NULL, NULL),
(41, 'Soulimane', 'Hichem', 'keyon.reinger@yahoo.com', '123456', '1992-11-04', 'RSD', '2012', 15, 0, NULL, NULL),
(42, 'Bereksi', 'Hazar', 'kreiger.bria@gmail.com', '123456', '1995-11-09', 'SIC', '2013', 12, 0, NULL, NULL),
(43, 'Soulimane', 'Yasmine', 'stacey.langworth@hotmail.com', 'azerty13', '1995-11-26', 'SIC', '2012', 12, 0, NULL, NULL),
(45, 'Malti', 'Toufik', 'hoeger.litzy@gmail.com', 'azerty13', '1992-06-10', 'RSD', '2012', 13, 0, NULL, NULL),
(47, 'Kazi Aoul', 'Abdelhak', 'jedediah.huel@hotmail.com', 'azerty13', '1995-12-26', 'SIC', '2011', 9, 0, NULL, NULL),
(48, 'Bereksi', 'Riad', 'ortiz.garrison@gmail.com', 'azerty13', '1993-04-04', 'SIC', '2013', 14, 0, NULL, NULL),
(49, 'Sekkal', 'Mohammed', 'barton.murl@hotmail.com', 'azerty13', '1992-08-30', 'RSD', '2014', 11, 0, NULL, NULL),
(50, 'Sour', 'Linda', 'carter.everett@gmail.com', 'azerty13', '1994-05-28', 'SIC', '2014', 9, 0, NULL, NULL),
(51, 'Rahmoun', 'Nihel', 'zdach@yahoo.com', '123456', '1995-08-07', 'SIC', '2011', 16, 0, NULL, NULL),
(53, 'Merabet', 'Chiheb', 'zkirlin@hotmail.com', 'azerty13', '1996-05-17', 'SIC', '2013', 12, 0, NULL, NULL),
(54, 'Mesroua', 'Hichem', 'bdenesik@hotmail.com', '123456', '1994-03-25', 'SIC', '2013', 8, 0, NULL, NULL),
(55, 'Bendimred', 'Abderahmen', 'tsenger@hotmail.com', '123456', '1995-04-19', 'RSD', '2011', 12, 0, NULL, NULL),
(56, 'Bereksi', 'Ines', 'alba69@yahoo.com', 'azerty13', '1996-02-28', 'RSD', '2011', 9, 0, NULL, NULL),
(58, 'Meriah', 'Nadir', 'jeromy.dickinson@yahoo.com', 'azerty13', '1995-06-18', 'SIC', '2012', 16, 0, NULL, NULL),
(60, 'Soulimane', 'Nadir', 'ronaldo.moen@gmail.com', '123456', '1996-05-20', 'SIC', '2012', 9, 0, NULL, NULL),
(61, 'Azzouni', 'Ines', 'paolo.kohler@yahoo.com', 'azerty13', '1995-11-23', 'RSD', '2012', 12, 0, NULL, NULL),
(62, 'Rahmoun', 'Nihel', 'colten.monahan@yahoo.com', 'azerty13', '1996-05-15', 'RSD', '2011', 12, 0, NULL, NULL),
(63, 'Sour', 'Chaib', 'emelia38@yahoo.com', 'azerty13', '1993-05-21', 'SIC', '2013', 15, 0, NULL, NULL),
(65, 'Kazi Aoul', 'Hichem', 'bhagenes@gmail.com', 'azerty13', '1993-04-28', 'SIC', '2013', 10, 0, NULL, NULL),
(66, 'Benmansour', 'Mohammed', 'klarkin@hotmail.com', 'azerty13', '1995-04-22', 'RSD', '2011', 15, 0, NULL, NULL),
(67, 'Mesroua', 'Chaib', 'carli.parisian@gmail.com', '123456', '1994-12-31', 'RSD', '2012', 13, 0, NULL, NULL),
(68, 'Rahmoun', 'Amine', 'narciso.kuvalis@gmail.com', '123456', '1995-02-18', 'RSD', '2011', 12, 0, NULL, NULL),
(70, 'Meriah', 'Amine', 'mosciski.wilton@gmail.com', 'azerty13', '1994-11-04', 'SIC', '2014', 11, 0, NULL, NULL),
(71, 'Mesroua', 'Amine', 'glenda82@gmail.com', '123456', '1994-10-05', 'RSD', '2012', 14, 0, NULL, NULL),
(74, 'Benmansour', 'Amine', 'kaelyn36@gmail.com', 'azerty13', '1992-05-12', 'RSD', '2012', 15, 0, NULL, NULL),
(76, 'Malti', 'Nedjlaa', 'medhurst.dorothy@yahoo.com', '123456', '1993-08-18', 'SIC', '2013', 8, 0, NULL, NULL),
(77, 'Meriah', 'Ines', 'ratke.kiara@yahoo.com', '123456', '1994-02-14', 'SIC', '2014', 14, 0, NULL, NULL),
(79, 'Azzouni', 'Hind', 'qhansen@gmail.com', 'azerty13', '1992-11-04', 'SIC', '2012', 10, 0, NULL, NULL),
(80, 'Seghiri', 'Imene', 'suzanne.bailey@hotmail.com', '123456', '1993-09-04', 'RSD', '2014', 10, 0, NULL, NULL),
(81, 'Seghiri', 'Chaib', 'fnader@hotmail.com', 'azerty13', '1992-09-07', 'RSD', '2014', 12, 0, NULL, NULL),
(83, 'Meriah', 'Amine', 'daugherty.ivory@gmail.com', '123456', '1994-09-08', 'SIC', '2014', 15, 0, NULL, NULL),
(84, 'Malti', 'Abdelhak', 'garfield.boyer@hotmail.com', '123456', '1995-09-18', 'RSD', '2012', 16, 0, NULL, NULL),
(85, 'Kazi Aoul', 'Hichem', 'hayes.kevin@yahoo.com', '123456', '1992-09-29', 'RSD', '2013', 8, 0, NULL, NULL),
(86, 'Azzouniiii', 'Chiheb', 'kmarks@gmail.com', '123456', '1992-04-04', 'RSD', '2014', 17, 0, NULL, NULL),
(87, 'Merabet', 'Karim', 'josue41@hotmail.com', '123456', '1995-02-09', 'SIC', '2011', 11, 0, NULL, NULL),
(88, 'Zenagui', 'Djihene', 'nels.runolfsson@hotmail.com', 'azerty13', '1995-04-02', 'RSD', '2014', 10, 0, NULL, NULL),
(89, 'Fasla', 'Nihel', 'cwillms@yahoo.com', '123456', '1993-11-12', 'SIC', '2013', 14, 0, NULL, NULL),
(90, 'Seghiri', 'Mohammed', 'ghand@gmail.com', 'azerty13', '1993-08-29', 'SIC', '2012', 10, 0, NULL, NULL),
(92, 'Kazi Aoul', 'Nesrine', 'fay.berniece@yahoo.com', '123456', '1994-05-01', 'SIC', '2011', 16, 0, NULL, NULL),
(93, 'Seghiri', 'Ibrahim', 'joaquin72@gmail.com', 'azerty13', '1992-07-14', 'SIC', '2014', 16, 0, NULL, NULL),
(94, 'Kazi Aoul', 'Mounia', 'deshaun62@gmail.com', '123456', '1994-07-07', 'RSD', '2014', 12, 0, NULL, NULL),
(95, 'Bereksi', 'Ibrahim', 'turner.bernard@hotmail.com', '123456', '1995-05-24', 'RSD', '2014', 15, 0, NULL, NULL),
(96, 'Sekkal', 'Mustapha', 'gbernier@hotmail.com', 'azerty13', '1992-10-04', 'RSD', '2014', 8, 0, NULL, NULL),
(98, 'Seghiri', 'Nesrine', 'forrest.hermann@hotmail.com', '123456', '1993-05-12', 'SIC', '2014', 12, 0, NULL, NULL),
(99, 'Seghiri', 'Mustapha', 'wade20@hotmail.com', 'azerty13', '1993-11-18', 'SIC', '2013', 11, 0, NULL, NULL),
(100, 'Sari', 'Yasser', 'nikolaus.euna@yahoo.com', '123456', '1994-01-30', 'RSD', '2014', 14, 0, NULL, NULL),
(102, 'Hamzaoui', 'Rihem', 'schuyler.reynolds@gmail.com', 'azerty13', '1992-09-13', 'SIC', '2012', 12, 0, NULL, NULL),
(105, 'Bereksi', 'Salim', 'selmer07@hotmail.com', 'azerty13', '1992-09-12', 'SIC', '2012', 11, 0, NULL, NULL),
(106, 'Hamzaoui', 'Mounia', 'maribel.grant@yahoo.com', '123456', '1996-01-16', 'SIC', '2012', 9, 0, NULL, NULL),
(107, 'Seghiri', 'Hind', 'nschaefer@yahoo.com', 'azerty13', '1995-06-09', 'RSD', '2014', 15, 0, NULL, NULL),
(108, 'Tabet', 'Nadir', 'carolyne67@yahoo.com', '123456', '1992-09-19', 'RSD', '2012', 11, 0, NULL, NULL),
(109, 'Bendimred', 'Yasser', 'stokes.olin@yahoo.com', 'azerty13', '1994-11-05', 'RSD', '2013', 9, 0, NULL, NULL),
(111, 'Rahmoun', 'Nihel', 'lindsay.cummerata@hotmail.com', '123456', '1996-03-17', 'SIC', '2013', 12, 0, NULL, NULL),
(112, 'Sari', 'Mustapha', 'qkassulke@gmail.com', '123456', '1992-09-07', 'SIC', '2013', 13, 0, NULL, NULL),
(113, 'Kalfat', 'Chiheb', 'lschaden@gmail.com', '123456', '1993-08-28', 'RSD', '2013', 16, 0, NULL, NULL),
(115, 'Kalfat', 'Karim', 'uhegmann@yahoo.com', '123456', '1992-05-01', 'SIC', '2014', 10, 0, NULL, NULL),
(116, 'Kalfat', 'Ines', 'doyle.bethel@hotmail.com', 'azerty13', '1994-01-27', 'SIC', '2011', 9, 0, NULL, NULL),
(117, 'Sekkal', 'Mounia', 'peggie21@yahoo.com', '123456', '1995-04-01', 'SIC', '2012', 15, 0, NULL, NULL),
(118, 'Sari', 'Ines', 'isaias19@gmail.com', '123456', '1993-08-30', 'SIC', '2013', 14, 52, 118, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fichedevoeux`
--

CREATE TABLE `fichedevoeux` (
  `id` int(11) NOT NULL,
  `id_Sujet` int(11) NOT NULL,
  `ordre` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fichedevoeux`
--

INSERT INTO `fichedevoeux` (`id`, `id_Sujet`, `ordre`) VALUES
(1, 188, 1),
(1, 189, 2),
(1, 195, 3),
(1, 228, 4),
(1, 229, 5),
(2, 181, 5),
(2, 192, 1),
(2, 209, 4),
(2, 234, 3),
(2, 237, 2),
(3, 191, 5),
(3, 200, 3),
(3, 211, 1),
(3, 219, 4),
(3, 227, 2),
(5, 223, 4),
(5, 224, 3),
(5, 230, 2),
(5, 231, 5),
(5, 243, 1),
(6, 182, 2),
(6, 188, 1),
(6, 220, 5),
(6, 224, 3),
(6, 228, 4),
(8, 197, 4),
(8, 201, 3),
(8, 222, 2),
(8, 230, 5),
(8, 244, 1),
(12, 189, 2),
(12, 216, 1),
(12, 222, 4),
(12, 228, 5),
(12, 231, 3),
(15, 194, 2),
(15, 208, 1),
(15, 212, 4),
(15, 217, 3),
(15, 221, 5),
(16, 187, 4),
(16, 197, 1),
(16, 216, 3),
(16, 220, 2),
(16, 231, 5),
(20, 182, 4),
(20, 197, 2),
(20, 216, 5),
(20, 224, 3),
(20, 244, 1),
(21, 184, 2),
(21, 186, 3),
(21, 190, 4),
(21, 219, 5),
(21, 240, 1),
(22, 198, 3),
(22, 209, 1),
(22, 218, 2),
(23, 196, 1),
(23, 218, 5),
(23, 234, 3),
(23, 236, 2),
(23, 238, 4),
(28, 189, 5),
(28, 197, 3),
(28, 201, 4),
(28, 222, 2),
(28, 230, 1),
(118, 183, 2),
(118, 184, 1),
(118, 186, 3),
(118, 194, 4),
(118, 219, 5);

-- --------------------------------------------------------

--
-- Table structure for table `remarque`
--

CREATE TABLE `remarque` (
  `id` int(11) NOT NULL,
  `id_Etudiant` int(11) NOT NULL,
  `titre` varchar(20) NOT NULL,
  `contenu` varchar(150) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remarque`
--

INSERT INTO `remarque` (`id`, `id_Etudiant`, `titre`, `contenu`, `date`) VALUES
(1, 1, 'rvrqebv', 'brtab', '2018-05-20'),
(2, 107, 'abc', 'afezrgreqbtb', '2018-05-21'),
(3, 1, 'remarque1', ' ehrvrelahgiuaerhgiu heraigheariuhgiuaerhiguhaeiughaieruhgiuraehogihaerg', '2018-05-21'),
(4, 1, 'remarque2', 'regfrukguauhaerlgjherajghmhajregh liurhguhraelgheag', '2018-05-21'),
(5, 1, 'abcdef', '6 kjhezrugfiuh aerg6 trbtrhjahtih', '2018-05-21'),
(6, 1, 'coucouu', 'hjgkjhkhkhkhmhgghghjghgh', '2018-05-22'),
(7, 5, '', '100 / 100 bravo fini !!! conard le barbar', '2018-11-12'),
(8, 8, 'rem1', 'brgfhgfjjy', '2018-11-12'),
(9, 8, 'rem2', 'hfhyghghfhgfgfgdgfdfd', '2018-11-12');

-- --------------------------------------------------------

--
-- Table structure for table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL,
  `etat` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salle`
--

INSERT INTO `salle` (`id`, `etat`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `soutenance`
--

CREATE TABLE `soutenance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `heure` time NOT NULL,
  `id_Salle` int(11) DEFAULT NULL,
  `id_Etudiant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sujet`
--

CREATE TABLE `sujet` (
  `id` int(11) NOT NULL,
  `titre` varchar(25) NOT NULL,
  `contenu` varchar(255) NOT NULL,
  `specialite` varchar(25) NOT NULL,
  `date_creation` date NOT NULL,
  `id_Enseignant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sujet`
--

INSERT INTO `sujet` (`id`, `titre`, `contenu`, `specialite`, `date_creation`, `id_Enseignant`) VALUES
(181, 'Id voluptatem sed.', 'I could shut up like telescopes: this time she heard a little irritated at the house, and have.', 'RSD', '2017-12-16', 23),
(182, 'Laborum optio eveniet vol', 'I chose,\' the Duchess said to herself; \'the March Hare interrupted in a low voice, \'Your Majesty.', 'GL', '2017-07-05', 24),
(183, 'Numquam et assumenda.', 'Hatter. \'I told you that.\' \'If I\'d been the whiting,\' said Alice, who felt ready to make herself.', 'SIC', '2017-04-26', 10),
(184, 'Qui voluptatibus accusamu', 'VERY deeply with a smile. There was certainly not becoming. \'And that\'s the queerest thing about.', 'SIC', '2017-04-24', 2),
(185, 'Molestias consequuntur es', 'This is the same words as before, \'It\'s all about as she left her, leaning her head struck against.', 'RSD', '2018-01-11', 30),
(186, 'Qui eveniet dolore.', 'Queen, in a helpless sort of idea that they must be shutting up like a star-fish,\' thought Alice..', 'SIC', '2017-08-20', 9),
(187, 'Dolores aut sunt consequu', 'Let me see: I\'ll give them a railway station.) However, she got used to do:-- \'How doth the little.', 'GL', '2017-08-19', 9),
(188, 'Necessitatibus velit prov', 'March Hare said in a low voice, \'Your Majesty must cross-examine the next moment a shower of.', 'GL', '2017-10-17', 29),
(189, 'Iusto ab totam qui totam.', 'Dodo in an offended tone, and she sat down again very sadly and quietly, and looked very.', 'GL', '2017-04-03', 9),
(190, 'Dignissimos dicta quaerat', 'I can\'t get out of the garden, where Alice could speak again. In a minute or two, and the game was.', 'SIC', '2017-10-31', 23),
(191, 'Voluptas sequi.', 'Will you, won\'t you, will you, won\'t you, will you, won\'t you join the dance. Would not, could not.', 'SIC', '2017-11-12', 24),
(192, 'Nihil maxime tempora qui ', 'Alice, as she could, for the Dormouse,\' thought Alice; \'I daresay it\'s a very curious sensation,.', 'RSD', '2017-04-12', 18),
(193, 'Voluptates ipsum sit.', 'HERE.\' \'But then,\' thought Alice, \'or perhaps they won\'t walk the way out of the trees behind him..', 'GL', '2017-05-28', 18),
(194, 'Molestias voluptas quia h', 'Normans--\" How are you getting on now, my dear?\' it continued, turning to Alice with one eye; \'I.', 'SIC', '2017-11-23', 19),
(195, 'Quia officia.', 'HIS time of life. The King\'s argument was, that she did not at all for any of them. However, on.', 'GL', '2017-06-05', 8),
(196, 'Iure maiores repudiandae ', 'WHAT?\' thought Alice; \'I might as well as I used--and I don\'t like them!\' When the sands are all.', 'RSD', '2017-09-07', 26),
(197, 'Eaque quam eos.', 'March Hare: she thought to herself what such an extraordinary ways of living would be like, \'--for.', 'GL', '2017-05-11', 4),
(198, 'Quam distinctio minima.', 'THEIR eyes bright and eager with many a strange tale, perhaps even with the tea,\' the Hatter said,.', 'RSD', '2017-06-15', 25),
(199, 'Facilis iusto ipsum.', 'King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said to herself, as.', 'SIC', '2017-06-24', 26),
(200, 'Harum enim aut voluptate.', 'And she squeezed herself up closer to Alice\'s great surprise, the Duchess\'s cook. She carried the.', 'SIC', '2017-12-30', 17),
(201, 'Non saepe fugiat eum quas', 'Alice went timidly up to her in such a tiny golden key, and when she looked down at her own mind.', 'GL', '2017-09-04', 24),
(202, 'Dignissimos quia eveniet.', 'AND WASHING--extra.\"\' \'You couldn\'t have wanted it much,\' said Alice, surprised at her as she had.', 'RSD', '2017-06-02', 1),
(203, 'Sed vel voluptatem.', 'Alice again, in a loud, indignant voice, but she saw them, they set to work throwing everything.', 'RSD', '2017-10-08', 12),
(204, 'Ducimus debitis ad.', 'I\'d only been the whiting,\' said the March Hare said in a very pretty dance,\' said Alice in a.', 'RSD', '2017-03-16', 5),
(205, 'Itaque velit sed aut.', 'Miss, we\'re doing our best, afore she comes, to--\' At this moment the King, looking round the.', 'RSD', '2017-04-28', 26),
(206, 'Rerum voluptate saepe.', 'GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be the right size to do it! Oh dear! I\'d nearly.', 'RSD', '2017-08-20', 20),
(207, 'Ea aut consequatur.', 'Dodo solemnly, rising to its feet, \'I move that the poor little thing grunted in reply (it had.', 'RSD', '2017-12-27', 5),
(208, 'Neque aut illum.', 'And will talk in contemptuous tones of the evening, beautiful Soup! Soup of the singers in the.', 'SIC', '2017-12-01', 12),
(209, 'Aliquam veritatis in nece', 'Five. \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I can\'t see.', 'RSD', '2017-08-25', 5),
(210, 'Perspiciatis velit ab rep', 'Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the court. (As that is rather a.', 'SIC', '2017-12-03', 10),
(211, 'Molestiae qui blanditiis ', 'Cheshire Cat,\' said Alice: \'allow me to him: She gave me a good many voices all talking together:.', 'SIC', '2017-04-30', 16),
(212, 'Quasi labore fugiat labor', 'The Hatter looked at it, and burning with curiosity, she ran off at once crowded round her once.', 'SIC', '2017-12-29', 28),
(213, 'Voluptatum voluptatem.', 'Then it got down off the mushroom, and crawled away in the same thing a bit!\' said the Lory.', 'GL', '2017-08-06', 4),
(214, 'Sunt dignissimos voluptas', 'Everything is so out-of-the-way down here, that I should understand that better,\' Alice said very.', 'SIC', '2017-04-24', 25),
(215, 'Quo labore et.', 'THERE again!\' said Alice sadly. \'Hand it over here,\' said the Cat, and vanished again. Alice.', 'GL', '2017-09-24', 29),
(216, 'Et beatae autem rerum.', 'They are waiting on the floor, as it didn\'t sound at all a proper way of expressing yourself.\' The.', 'GL', '2017-12-29', 4),
(217, 'Quas maiores placeat quo.', 'King said to the jury. \'Not yet, not yet!\' the Rabbit hastily interrupted. \'There\'s a great hurry.', 'SIC', '2017-11-16', 4),
(218, 'Sint tempora at sed.', 'I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, \'and those twelve.', 'RSD', '2017-10-06', 8),
(219, 'Cumque delectus quibusdam', 'I\'m going to happen next. \'It\'s--it\'s a very good advice, (though she very good-naturedly began.', 'SIC', '2017-09-13', 2),
(220, 'Ut quia vel.', 'I wish you would seem to put down yet, before the trial\'s over!\' thought Alice. \'I\'m glad they\'ve.', 'GL', '2017-06-06', 12),
(221, 'Asperiores sequi eum.', 'First, because I\'m on the ground near the door with his tea spoon at the mouth with strings: into.', 'SIC', '2017-08-11', 1),
(222, 'Nulla repellat sint repel', 'So she tucked it away under her arm, with its mouth open, gazing up into hers--she could hear him.', 'GL', '2017-12-19', 26),
(223, 'Est nesciunt quia autem.', 'March Hare had just begun \'Well, of all this grand procession, came THE KING AND QUEEN OF HEARTS..', 'GL', '2017-04-18', 29),
(224, 'Molestiae omnis ipsam.', 'English, who wanted leaders, and had to fall upon Alice, as she could. \'No,\' said Alice. \'Nothing.', 'GL', '2017-10-07', 18),
(225, 'Quia harum.', 'Rabbit just under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you haven\'t found it so.', 'RSD', '2017-08-25', 15),
(226, 'Incidunt animi perferendi', 'The Gryphon sat up and rubbed its eyes: then it watched the Queen had only one who had spoken.', 'SIC', '2017-11-22', 7),
(227, 'Repudiandae veniam occaec', 'However, she got to do,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, who was.', 'SIC', '2017-12-12', 14),
(228, 'Quo est laborum.', 'His voice has a timid voice at her hands, and began:-- \'You are all dry, he is gay as a partner!\'.', 'GL', '2017-09-19', 18),
(229, 'Eveniet dignissimos ea.', 'Bill\'s place for a minute, nurse! But I\'ve got to do,\' said Alice sharply, for she was ever to get.', 'GL', '2017-11-14', 1),
(230, 'Distinctio suscipit sapie', 'Majesty must cross-examine THIS witness.\' \'Well, if I like being that person, I\'ll come up: if.', 'GL', '2017-10-02', 9),
(231, 'Nobis consequatur ut et.', 'Alice had learnt several things of this rope--Will the roof of the jury eagerly wrote down on one.', 'GL', '2018-01-01', 5),
(232, 'Possimus praesentium et m', 'ARE a simpleton.\' Alice did not like the tone of delight, which changed into alarm in another.', 'GL', '2017-03-26', 25),
(233, 'Autem nulla.', 'Caterpillar. Alice said to the King, and he hurried off. Alice thought to herself. \'Shy, they seem.', 'GL', '2017-10-08', 10),
(234, 'In repellat quia.', 'Duchess was sitting between them, fast asleep, and the soldiers had to leave the court; but on the.', 'RSD', '2018-01-11', 16),
(235, 'Ipsam incidunt quas conse', 'Rabbit whispered in reply, \'for fear they should forget them before the trial\'s begun.\' \'They\'re.', 'GL', '2017-04-19', 29),
(236, 'Magnam quo quia.', 'Bill\'s place for a long way. So she set to work very diligently to write with one of the deepest.', 'RSD', '2017-04-23', 6),
(237, 'In officia est molestias.', 'Alice watched the White Rabbit, trotting slowly back again, and we won\'t talk about her and to.', 'RSD', '2017-05-03', 6),
(238, 'Et quia molestiae.', 'Mouse. \'Of course,\' the Mock Turtle. So she sat still and said nothing. \'Perhaps it hasn\'t one,\'.', 'RSD', '2017-07-16', 3),
(239, 'Rerum ratione corrupti.', 'I can guess that,\' she added in a great hurry. An enormous puppy was looking about for some time.', 'GL', '2017-06-02', 18),
(240, 'Quam tempora officia.', 'Dodo, \'the best way to explain the mistake it had a pencil that squeaked. This of course, to begin.', 'SIC', '2017-09-29', 10),
(241, 'nouveau sujet', 'hjgjhgjhghgggggggggggggggggggg858', 'GL', '2018-03-28', 1),
(242, 'nouveau sujet', 'hjgjhgjhghgggggggggggggggggggg858', 'GL', '2018-03-28', 1),
(243, 'google', 'google infrastructure', 'GL', '2018-11-12', 8),
(244, 'gestion des souris', 'blqblqblq', 'GL', '2018-11-12', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `affectation`
--
ALTER TABLE `affectation`
  ADD PRIMARY KEY (`id`,`id_Etudiant`,`id_Sujet`),
  ADD KEY `FK_affectation_id_Etudiant` (`id_Etudiant`),
  ADD KEY `FK_affectation_id_Sujet` (`id_Sujet`);

--
-- Indexes for table `agentadmin`
--
ALTER TABLE `agentadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assiste`
--
ALTER TABLE `assiste`
  ADD PRIMARY KEY (`id`,`id_Enseignant`),
  ADD KEY `FK_assiste_id_Enseignant` (`id_Enseignant`);

--
-- Indexes for table `configuration`
--
ALTER TABLE `configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Etudiant_id_FicheDeVoeux` (`id_FicheDeVoeux`),
  ADD KEY `FK_Etudiant_id_Enseignant` (`id_Enseignant`);

--
-- Indexes for table `fichedevoeux`
--
ALTER TABLE `fichedevoeux`
  ADD PRIMARY KEY (`id`,`id_Sujet`,`ordre`) USING BTREE,
  ADD KEY `FK_FicheDeVoeux_id_Sujet` (`id_Sujet`);

--
-- Indexes for table `remarque`
--
ALTER TABLE `remarque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soutenance`
--
ALTER TABLE `soutenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Soutenance_id_Salle` (`id_Salle`),
  ADD KEY `id_Etudiant` (`id_Etudiant`);

--
-- Indexes for table `sujet`
--
ALTER TABLE `sujet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Sujet_id_Enseignant` (`id_Enseignant`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agentadmin`
--
ALTER TABLE `agentadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `configuration`
--
ALTER TABLE `configuration`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `fichedevoeux`
--
ALTER TABLE `fichedevoeux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `remarque`
--
ALTER TABLE `remarque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `soutenance`
--
ALTER TABLE `soutenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sujet`
--
ALTER TABLE `sujet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `affectation`
--
ALTER TABLE `affectation`
  ADD CONSTRAINT `affectation_ibfk_1` FOREIGN KEY (`id`) REFERENCES `enseignant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `affectation_ibfk_2` FOREIGN KEY (`id_Etudiant`) REFERENCES `etudiant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `affectation_ibfk_3` FOREIGN KEY (`id_Sujet`) REFERENCES `sujet` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `assiste`
--
ALTER TABLE `assiste`
  ADD CONSTRAINT `assiste_ibfk_2` FOREIGN KEY (`id`) REFERENCES `soutenance` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assiste_ibfk_3` FOREIGN KEY (`id_Enseignant`) REFERENCES `enseignant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`id_Enseignant`) REFERENCES `enseignant` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `etudiant_ibfk_2` FOREIGN KEY (`id_FicheDeVoeux`) REFERENCES `fichedevoeux` (`id`) ON DELETE CASCADE ON UPDATE SET NULL;

--
-- Constraints for table `fichedevoeux`
--
ALTER TABLE `fichedevoeux`
  ADD CONSTRAINT `fichedevoeux_ibfk_1` FOREIGN KEY (`id_Sujet`) REFERENCES `sujet` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `soutenance`
--
ALTER TABLE `soutenance`
  ADD CONSTRAINT `soutenance_ibfk_3` FOREIGN KEY (`id_Salle`) REFERENCES `salle` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `soutenance_ibfk_4` FOREIGN KEY (`id_Etudiant`) REFERENCES `etudiant` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sujet`
--
ALTER TABLE `sujet`
  ADD CONSTRAINT `sujet_ibfk_2` FOREIGN KEY (`id_Enseignant`) REFERENCES `enseignant` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
