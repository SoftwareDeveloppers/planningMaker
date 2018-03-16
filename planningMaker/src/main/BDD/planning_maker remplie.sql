-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 16 Mars 2018 à 00:43
-- Version du serveur :  5.7.14
-- Version de PHP :  7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `planning_maker`
--

-- --------------------------------------------------------

--
-- Structure de la table `affectation`
--

CREATE TABLE `affectation` (
  `id` int(11) NOT NULL,
  `id_Etudiant` int(11) NOT NULL,
  `id_Sujet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `agentadmin`
--

CREATE TABLE `agentadmin` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `mdp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `agentadmin`
--

INSERT INTO `agentadmin` (`id`, `nom`, `prenom`, `mdp`) VALUES
(1, 'Agent', 'Mallory', 'azerty13'),
(2, 'Employer', 'Devante', 'abcd13'),
(3, 'Admin', 'Gabe', 'azerty13'),
(4, 'Admin', 'Waldo', 'azerty13');

-- --------------------------------------------------------

--
-- Structure de la table `assiste`
--

CREATE TABLE `assiste` (
  `id` int(11) NOT NULL,
  `id_Enseignant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `grade` varchar(25) NOT NULL,
  `specialite` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `enseignant`
--

INSERT INTO `enseignant` (`id`, `nom`, `prenom`, `grade`, `specialite`, `email`, `mdp`) VALUES
(1, 'Cortez', 'Rice', 'Maître Assistant A', 'SIC', 'bert.gaylord@hotmail.com', 'azerty'),
(2, 'Stephon', 'Metz', 'Maître de conférences B', 'SIC', 'jerrold.wiegand@yahoo.com', 'azerty'),
(3, 'Khalid', 'Abbott', 'Professeur', 'MID', 'cassie.monahan@gmail.com', '123'),
(4, 'Lance', 'Lowe', 'Maître de conférences A', 'RSD', 'prosacco.luigi@hotmail.com', 'azerty'),
(5, 'Eliezer', 'Blanda', 'Maître de conférences B', 'RSD', 'cheyanne04@gmail.com', '123'),
(6, 'Virginia', 'Armstrong', 'Professeur', 'RSD', 'pfeffer.marjolaine@gmail.com', 'azerty'),
(7, 'Yasmin', 'Grimes', 'Professeur', 'GL', 'destiny.turner@hotmail.com', '123'),
(8, 'Natalia', 'Dietrich', 'Maître de conférences A', 'MID', 'elody.ortiz@yahoo.com', '123'),
(9, 'Forest', 'Keeling', 'Professeur', 'GL', 'pansy69@hotmail.com', '123'),
(10, 'Jaycee', 'Kuvalis', 'Professeur', 'MID', 'hand.reilly@yahoo.com', 'azerty'),
(11, 'Danyka', 'McGlynn', 'Maître de conférences B', 'RSD', 'mstamm@yahoo.com', '123'),
(12, 'Brendan', 'Bergnaum', 'Maître de conférences A', 'RSD', 'otto.borer@hotmail.com', '123'),
(13, 'Bennett', 'Purdy', 'Maître de conférences A', 'SIC', 'nmarquardt@yahoo.com', '123'),
(14, 'Lawrence', 'Nitzsche', 'Maître Assistant A', 'SIC', 'vivienne.prosacco@hotmail.com', 'azerty'),
(15, 'Dangelo', 'Padberg', 'Professeur', 'GL', 'jboehm@hotmail.com', '123'),
(16, 'Schuyler', 'Yundt', 'Maître de conférences B', 'MID', 'arvid71@gmail.com', 'azerty'),
(17, 'Matilde', 'Mraz', 'Maître de conférences B', 'RSD', 'pbayer@gmail.com', 'azerty'),
(18, 'Raoul', 'Huels', 'Professeur', 'MID', 'candace.weissnat@yahoo.com', 'azerty'),
(19, 'Sadye', 'Bins', 'Professeur', 'GL', 'kihn.kaci@gmail.com', 'azerty'),
(20, 'Germaine', 'Turcotte', 'Maître de conférences B', 'RSD', 'piper71@gmail.com', 'azerty'),
(21, 'Lurline', 'Collins', 'Maître de conférences B', 'RSD', 'kihn.teresa@yahoo.com', '123'),
(22, 'Camren', 'Wuckert', 'Maître de conférences B', 'SIC', 'letitia.marks@yahoo.com', 'azerty'),
(23, 'Junius', 'Will', 'Maître de conférences B', 'SIC', 'uryan@hotmail.com', '123'),
(24, 'Charley', 'Larson', 'Maître Assistant B', 'RSD', 'mara69@gmail.com', 'azerty'),
(25, 'Shanie', 'Murphy', 'Maître Assistant B', 'GL', 'kim.reilly@hotmail.com', '123'),
(26, 'Jermaine', 'Murazik', 'Maître Assistant A', 'MID', 'pupton@yahoo.com', '123'),
(27, 'Isac', 'Harber', 'Maître de conférences A', 'MID', 'bradly.ebert@gmail.com', '123'),
(28, 'Norbert', 'Reynolds', 'Maître de conférences B', 'MID', 'crooks.claudie@gmail.com', '123'),
(29, 'Chad', 'Gulgowski', 'Maître de conférences B', 'GL', 'madeline75@hotmail.com', '123'),
(30, 'Zoey', 'Gusikowski', 'Maître Assistant B', 'GL', 'xgleason@gmail.com', '123');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `dateNaissance` date NOT NULL,
  `specialite` varchar(25) NOT NULL,
  `moyenne` float NOT NULL,
  `promotion` varchar(25) NOT NULL,
  `taux` float NOT NULL,
  `id_FicheDeVoeux` int(11) DEFAULT NULL,
  `id_Enseignant` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `email`, `mdp`, `nom`, `prenom`, `dateNaissance`, `specialite`, `moyenne`, `promotion`, `taux`, `id_FicheDeVoeux`, `id_Enseignant`) VALUES
(1, 'cartwright.coleman@gmail.com', '123456', 'Benmansour', 'Hichem', '1995-10-05', 'SIC', 13, '2014', 0, NULL, NULL),
(2, 'hahn.jared@hotmail.com', '123456', 'Sour', 'Salim', '1996-02-08', 'RSD', 11, '2013', 0, NULL, NULL),
(3, 'kristina03@hotmail.com', '123456', 'Azzouni', 'Hind', '1996-02-03', 'SIC', 16, '2011', 0, NULL, NULL),
(4, 'gfay@hotmail.com', 'azerty13', 'Tabet Aoul', 'Mounia', '1994-12-22', 'RSD', 10, '2011', 0, NULL, NULL),
(5, 'boyer.lizeth@yahoo.com', '123456', 'Tabet Aoul', 'Chaib', '1995-03-07', 'SIC', 15, '2012', 0, NULL, NULL),
(6, 'umurphy@yahoo.com', 'azerty13', 'Sour', 'Yassine', '1993-12-16', 'GL', 12, '2014', 0, NULL, NULL),
(7, 'raynor.alba@gmail.com', 'azerty13', 'Kazi Aoul', 'Reda', '1992-11-21', 'SIC', 13, '2013', 0, NULL, NULL),
(8, 'esteban.turner@gmail.com', 'azerty13', 'Soulimane', 'Hind', '1992-09-20', 'GL', 9, '2014', 0, NULL, NULL),
(9, 'haley.keebler@gmail.com', '123456', 'Bereksi', 'Ines', '1995-06-09', 'RSD', 15, '2012', 0, NULL, NULL),
(10, 'milan94@hotmail.com', '123456', 'Sekkal', 'Hind', '1995-08-29', 'SIC', 11, '2014', 0, NULL, NULL),
(11, 'conroy.osborne@yahoo.com', '123456', 'Tabet', 'Hind', '1995-04-15', 'RSD', 9, '2012', 0, NULL, NULL),
(12, 'jaiden02@yahoo.com', '123456', 'Kalfat', 'Chaib', '1992-10-08', 'GL', 16, '2014', 0, NULL, NULL),
(13, 'mayra05@gmail.com', 'azerty13', 'Hamza Cherif', 'Abdelhak', '1993-02-16', 'SIC', 11, '2014', 0, NULL, NULL),
(14, 'simone43@hotmail.com', '123456', 'Kazi Aoul', 'Toufik', '1994-05-18', 'RSD', 9, '2012', 0, NULL, NULL),
(15, 'garry14@gmail.com', 'azerty13', 'Soulimane', 'Sidou', '1992-07-05', 'SIC', 12, '2014', 0, NULL, NULL),
(16, 'elang@hotmail.com', '123456', 'Bendimred', 'Mohammed', '1995-11-27', 'GL', 12, '2014', 0, NULL, NULL),
(17, 'msanford@hotmail.com', 'azerty13', 'Tabet', 'Karim', '1994-10-10', 'RSD', 14, '2011', 0, NULL, NULL),
(18, 'aylin.king@yahoo.com', 'azerty13', 'Seghiri', 'Abdelhak', '1994-10-30', 'SIC', 10, '2012', 0, NULL, NULL),
(19, 'herman.retta@yahoo.com', '123456', 'Seghiri', 'Nesrine', '1993-10-08', 'RSD', 10, '2012', 0, NULL, NULL),
(20, 'stroman.leora@hotmail.com', '123456', 'Hamzaoui', 'Hichem', '1992-12-10', 'GL', 9, '2012', 0, NULL, NULL),
(21, 'taylor.bechtelar@yahoo.com', '123456', 'Rahmoun', 'Chiheb', '1992-10-19', 'SIC', 14, '2013', 0, NULL, NULL),
(22, 'euna62@yahoo.com', 'azerty13', 'Meriah', 'Salim', '1995-08-09', 'RSD', 13, '2012', 0, NULL, NULL),
(23, 'kayden48@yahoo.com', 'azerty13', 'Hamza Cherif', 'Mounia', '1993-11-29', 'RSD', 15, '2014', 0, NULL, NULL),
(24, 'murphy.edwina@yahoo.com', 'azerty13', 'Belkhodja', 'Abderahmen', '1994-04-08', 'SIC', 14, '2014', 0, NULL, NULL),
(25, 'frederic64@hotmail.com', 'azerty13', 'Rahmoun', 'Nihel', '1993-10-03', 'RSD', 15, '2013', 0, NULL, NULL),
(26, 'seffertz@gmail.com', 'azerty13', 'Mekhezzem', 'Yasmine', '1993-01-04', 'RSD', 13, '2014', 0, NULL, NULL),
(27, 'cruickshank.rubye@yahoo.com', '123456', 'Fasla', 'Linda', '1992-09-04', 'RSD', 14, '2013', 0, NULL, NULL),
(28, 'kunze.jennie@hotmail.com', '123456', 'Hamza Cherif', 'Chaib', '1994-03-24', 'GL', 14, '2011', 0, NULL, NULL),
(29, 'vpowlowski@yahoo.com', '123456', 'Benmansour', 'Rihem', '1995-07-06', 'SIC', 10, '2013', 0, NULL, NULL),
(30, 'mckenzie51@yahoo.com', 'azerty13', 'Bendimred', 'Nesrine', '1994-11-03', 'RSD', 8, '2012', 0, NULL, NULL),
(31, 'uveum@yahoo.com', '123456', 'Tabet', 'Mustapha', '1992-08-29', 'GL', 15, '2012', 0, NULL, NULL),
(32, 'oren.donnelly@yahoo.com', '123456', 'Hamzaoui', 'Selma', '1994-01-23', 'GL', 11, '2012', 0, NULL, NULL),
(33, 'clair59@yahoo.com', '123456', 'Soulimane', 'Hichem', '1994-02-23', 'GL', 11, '2012', 0, NULL, NULL),
(34, 'kelli.schamberger@hotmail.com', 'azerty13', 'Mesroua', 'Abdelhak', '1994-04-21', 'RSD', 12, '2011', 0, NULL, NULL),
(35, 'jamir.emard@yahoo.com', '123456', 'Sekkal', 'Djihene', '1993-06-10', 'RSD', 11, '2014', 0, NULL, NULL),
(36, 'verlie78@hotmail.com', '123456', 'Mesroua', 'Djihene', '1993-03-03', 'GL', 12, '2014', 0, NULL, NULL),
(37, 'wschmeler@gmail.com', 'azerty13', 'Mesroua', 'Mohammed', '1993-06-16', 'RSD', 13, '2014', 0, NULL, NULL),
(38, 'chauncey19@gmail.com', '123456', 'Malti', 'Abdelhak', '1993-12-28', 'SIC', 12, '2013', 0, NULL, NULL),
(39, 'laurie.kirlin@yahoo.com', '123456', 'Sour', 'Mohammed', '1994-08-09', 'SIC', 9, '2014', 0, NULL, NULL),
(40, 'clara17@hotmail.com', '123456', 'Hamzaoui', 'Amine', '1993-03-31', 'RSD', 15, '2013', 0, NULL, NULL),
(41, 'keyon.reinger@yahoo.com', '123456', 'Soulimane', 'Hichem', '1992-11-04', 'RSD', 15, '2012', 0, NULL, NULL),
(42, 'kreiger.bria@gmail.com', '123456', 'Bereksi', 'Hazar', '1995-11-09', 'SIC', 12, '2013', 0, NULL, NULL),
(43, 'stacey.langworth@hotmail.com', 'azerty13', 'Soulimane', 'Yasmine', '1995-11-26', 'SIC', 12, '2012', 0, NULL, NULL),
(44, 'kreichel@gmail.com', 'azerty13', 'Bendimred', 'Selma', '1993-04-06', 'GL', 15, '2013', 0, NULL, NULL),
(45, 'hoeger.litzy@gmail.com', 'azerty13', 'Malti', 'Toufik', '1992-06-10', 'RSD', 13, '2012', 0, NULL, NULL),
(46, 'mohamed07@hotmail.com', 'azerty13', 'Bendimred', 'Lilya', '1994-07-30', 'GL', 9, '2013', 0, NULL, NULL),
(47, 'jedediah.huel@hotmail.com', 'azerty13', 'Kazi Aoul', 'Abdelhak', '1995-12-26', 'SIC', 9, '2011', 0, NULL, NULL),
(48, 'ortiz.garrison@gmail.com', 'azerty13', 'Bereksi', 'Riad', '1993-04-04', 'SIC', 14, '2013', 0, NULL, NULL),
(49, 'barton.murl@hotmail.com', 'azerty13', 'Sekkal', 'Mohammed', '1992-08-30', 'RSD', 11, '2014', 0, NULL, NULL),
(50, 'carter.everett@gmail.com', 'azerty13', 'Sour', 'Linda', '1994-05-28', 'SIC', 9, '2014', 0, NULL, NULL),
(51, 'zdach@yahoo.com', '123456', 'Rahmoun', 'Nihel', '1995-08-07', 'SIC', 16, '2011', 0, NULL, NULL),
(52, 'imraz@gmail.com', 'azerty13', 'Azzouni', 'Yasser', '1992-11-13', 'GL', 9, '2011', 0, NULL, NULL),
(53, 'zkirlin@hotmail.com', 'azerty13', 'Merabet', 'Chiheb', '1996-05-17', 'SIC', 12, '2013', 0, NULL, NULL),
(54, 'bdenesik@hotmail.com', '123456', 'Mesroua', 'Hichem', '1994-03-25', 'SIC', 8, '2013', 0, NULL, NULL),
(55, 'tsenger@hotmail.com', '123456', 'Bendimred', 'Abderahmen', '1995-04-19', 'RSD', 12, '2011', 0, NULL, NULL),
(56, 'alba69@yahoo.com', 'azerty13', 'Bereksi', 'Ines', '1996-02-28', 'RSD', 9, '2011', 0, NULL, NULL),
(57, 'mcglynn.cora@hotmail.com', '123456', 'Tabet', 'Mounia', '1994-01-09', 'GL', 8, '2014', 0, NULL, NULL),
(58, 'jeromy.dickinson@yahoo.com', 'azerty13', 'Meriah', 'Nadir', '1995-06-18', 'SIC', 16, '2012', 0, NULL, NULL),
(59, 'armand.boyle@gmail.com', '123456', 'Malti', 'Yassine', '1994-12-10', 'GL', 10, '2014', 0, NULL, NULL),
(60, 'ronaldo.moen@gmail.com', '123456', 'Soulimane', 'Nadir', '1996-05-20', 'SIC', 9, '2012', 0, NULL, NULL),
(61, 'paolo.kohler@yahoo.com', 'azerty13', 'Azzouni', 'Ines', '1995-11-23', 'RSD', 12, '2012', 0, NULL, NULL),
(62, 'colten.monahan@yahoo.com', 'azerty13', 'Rahmoun', 'Nihel', '1996-05-15', 'RSD', 12, '2011', 0, NULL, NULL),
(63, 'emelia38@yahoo.com', 'azerty13', 'Sour', 'Chaib', '1993-05-21', 'SIC', 15, '2013', 0, NULL, NULL),
(64, 'fraynor@yahoo.com', '123456', 'Mekhezzem', 'Nesrine', '1995-09-22', 'GL', 9, '2011', 0, NULL, NULL),
(65, 'bhagenes@gmail.com', 'azerty13', 'Kazi Aoul', 'Hichem', '1993-04-28', 'SIC', 10, '2013', 0, NULL, NULL),
(66, 'klarkin@hotmail.com', 'azerty13', 'Benmansour', 'Mohammed', '1995-04-22', 'RSD', 15, '2011', 0, NULL, NULL),
(67, 'carli.parisian@gmail.com', '123456', 'Mesroua', 'Chaib', '1994-12-31', 'RSD', 13, '2012', 0, NULL, NULL),
(68, 'narciso.kuvalis@gmail.com', '123456', 'Rahmoun', 'Amine', '1995-02-18', 'RSD', 12, '2011', 0, NULL, NULL),
(69, 'howell.mayer@yahoo.com', 'azerty13', 'Zenagui', 'Ines', '1994-08-07', 'GL', 16, '2013', 0, NULL, NULL),
(70, 'mosciski.wilton@gmail.com', 'azerty13', 'Meriah', 'Amine', '1994-11-04', 'SIC', 11, '2014', 0, NULL, NULL),
(71, 'glenda82@gmail.com', '123456', 'Mesroua', 'Amine', '1994-10-05', 'RSD', 14, '2012', 0, NULL, NULL),
(72, 'elissa93@gmail.com', '123456', 'Benmansour', 'Nesrine', '1995-02-22', 'GL', 15, '2012', 0, NULL, NULL),
(73, 'jolie.greenholt@hotmail.com', '123456', 'Tabet Aoul', 'Hichem', '1995-11-27', 'GL', 8, '2014', 0, NULL, NULL),
(74, 'kaelyn36@gmail.com', 'azerty13', 'Benmansour', 'Amine', '1992-05-12', 'RSD', 15, '2012', 0, NULL, NULL),
(75, 'kuvalis.emely@yahoo.com', '123456', 'Hamzaoui', 'Hazar', '1994-11-20', 'GL', 13, '2014', 0, NULL, NULL),
(76, 'medhurst.dorothy@yahoo.com', '123456', 'Malti', 'Nedjlaa', '1993-08-18', 'SIC', 8, '2013', 0, NULL, NULL),
(77, 'ratke.kiara@yahoo.com', '123456', 'Meriah', 'Ines', '1994-02-14', 'SIC', 14, '2014', 0, NULL, NULL),
(78, 'damien89@gmail.com', 'azerty13', 'Fasla', 'Djihene', '1993-03-23', 'GL', 16, '2011', 0, NULL, NULL),
(79, 'qhansen@gmail.com', 'azerty13', 'Azzouni', 'Hind', '1992-11-04', 'SIC', 10, '2012', 0, NULL, NULL),
(80, 'suzanne.bailey@hotmail.com', '123456', 'Seghiri', 'Imene', '1993-09-04', 'RSD', 10, '2014', 0, NULL, NULL),
(81, 'fnader@hotmail.com', 'azerty13', 'Seghiri', 'Chaib', '1992-09-07', 'RSD', 12, '2014', 0, NULL, NULL),
(82, 'damian30@gmail.com', '123456', 'Kazi Aoul', 'Nadir', '1994-12-05', 'GL', 12, '2014', 0, NULL, NULL),
(83, 'daugherty.ivory@gmail.com', '123456', 'Meriah', 'Amine', '1994-09-08', 'SIC', 15, '2014', 0, NULL, NULL),
(84, 'garfield.boyer@hotmail.com', '123456', 'Malti', 'Abdelhak', '1995-09-18', 'RSD', 16, '2012', 0, NULL, NULL),
(85, 'hayes.kevin@yahoo.com', '123456', 'Kazi Aoul', 'Hichem', '1992-09-29', 'RSD', 8, '2013', 0, NULL, NULL),
(86, 'kmarks@gmail.com', '123456', 'Azzouni', 'Chiheb', '1992-04-04', 'RSD', 8, '2014', 0, NULL, NULL),
(87, 'josue41@hotmail.com', '123456', 'Merabet', 'Karim', '1995-02-09', 'SIC', 11, '2011', 0, NULL, NULL),
(88, 'nels.runolfsson@hotmail.com', 'azerty13', 'Zenagui', 'Djihene', '1995-04-02', 'RSD', 10, '2014', 0, NULL, NULL),
(89, 'cwillms@yahoo.com', '123456', 'Fasla', 'Nihel', '1993-11-12', 'SIC', 14, '2013', 0, NULL, NULL),
(90, 'ghand@gmail.com', 'azerty13', 'Seghiri', 'Mohammed', '1993-08-29', 'SIC', 10, '2012', 0, NULL, NULL),
(91, 'dauer@yahoo.com', 'azerty13', 'Mekhezzem', 'Hazar', '1995-08-10', 'GL', 13, '2014', 0, NULL, NULL),
(92, 'fay.berniece@yahoo.com', '123456', 'Kazi Aoul', 'Nesrine', '1994-05-01', 'SIC', 16, '2011', 0, NULL, NULL),
(93, 'joaquin72@gmail.com', 'azerty13', 'Seghiri', 'Ibrahim', '1992-07-14', 'SIC', 16, '2014', 0, NULL, NULL),
(94, 'deshaun62@gmail.com', '123456', 'Kazi Aoul', 'Mounia', '1994-07-07', 'RSD', 12, '2014', 0, NULL, NULL),
(95, 'turner.bernard@hotmail.com', '123456', 'Bereksi', 'Ibrahim', '1995-05-24', 'RSD', 15, '2014', 0, NULL, NULL),
(96, 'gbernier@hotmail.com', 'azerty13', 'Sekkal', 'Mustapha', '1992-10-04', 'RSD', 8, '2014', 0, NULL, NULL),
(97, 'koepp.salma@yahoo.com', 'azerty13', 'Merabet', 'Djihene', '1994-03-31', 'GL', 16, '2013', 0, NULL, NULL),
(98, 'forrest.hermann@hotmail.com', '123456', 'Seghiri', 'Nesrine', '1993-05-12', 'SIC', 12, '2014', 0, NULL, NULL),
(99, 'wade20@hotmail.com', 'azerty13', 'Seghiri', 'Mustapha', '1993-11-18', 'SIC', 11, '2013', 0, NULL, NULL),
(100, 'nikolaus.euna@yahoo.com', '123456', 'Sari', 'Yasser', '1994-01-30', 'RSD', 14, '2014', 0, NULL, NULL),
(101, 'andres35@yahoo.com', 'azerty13', 'Kalfat', 'Imene', '1994-04-07', 'GL', 11, '2013', 0, NULL, NULL),
(102, 'schuyler.reynolds@gmail.com', 'azerty13', 'Hamzaoui', 'Rihem', '1992-09-13', 'SIC', 12, '2012', 0, NULL, NULL),
(103, 'beatty.napoleon@gmail.com', 'azerty13', 'Zenagui', 'Yassine', '1996-02-12', 'RSD', 11, '2012', 0, NULL, NULL),
(104, 'jamey.ratke@yahoo.com', '123456', 'Zenagui', 'Selma', '1995-12-30', 'GL', 9, '2014', 0, NULL, NULL),
(105, 'selmer07@hotmail.com', 'azerty13', 'Bereksi', 'Salim', '1992-09-12', 'SIC', 11, '2012', 0, NULL, NULL),
(106, 'maribel.grant@yahoo.com', '123456', 'Hamzaoui', 'Mounia', '1996-01-16', 'SIC', 9, '2012', 0, NULL, NULL),
(107, 'nschaefer@yahoo.com', 'azerty13', 'Seghiri', 'Hind', '1995-06-09', 'RSD', 15, '2014', 0, NULL, NULL),
(108, 'carolyne67@yahoo.com', '123456', 'Tabet', 'Nadir', '1992-09-19', 'RSD', 11, '2012', 0, NULL, NULL),
(109, 'stokes.olin@yahoo.com', 'azerty13', 'Bendimred', 'Yasser', '1994-11-05', 'RSD', 9, '2013', 0, NULL, NULL),
(110, 'paucek.ephraim@yahoo.com', '123456', 'Hamzaoui', 'Chiheb', '1996-04-13', 'GL', 15, '2013', 0, NULL, NULL),
(111, 'lindsay.cummerata@hotmail.com', '123456', 'Rahmoun', 'Nihel', '1996-03-17', 'SIC', 12, '2013', 0, NULL, NULL),
(112, 'qkassulke@gmail.com', '123456', 'Sari', 'Mustapha', '1992-09-07', 'SIC', 13, '2013', 0, NULL, NULL),
(113, 'lschaden@gmail.com', '123456', 'Kalfat', 'Chiheb', '1993-08-28', 'RSD', 16, '2013', 0, NULL, NULL),
(114, 'konopelski.miller@gmail.com', 'azerty13', 'Bendimred', 'Yasmine', '1992-03-27', 'GL', 8, '2012', 0, NULL, NULL),
(115, 'uhegmann@yahoo.com', '123456', 'Kalfat', 'Karim', '1992-05-01', 'SIC', 10, '2014', 0, NULL, NULL),
(116, 'doyle.bethel@hotmail.com', 'azerty13', 'Kalfat', 'Ines', '1994-01-27', 'SIC', 9, '2011', 0, NULL, NULL),
(117, 'peggie21@yahoo.com', '123456', 'Sekkal', 'Mounia', '1995-04-01', 'SIC', 15, '2012', 0, NULL, NULL),
(118, 'isaias19@gmail.com', '123456', 'Sari', 'Ines', '1993-08-30', 'SIC', 14, '2013', 0, NULL, NULL),
(119, 'luettgen.enos@hotmail.com', '123456', 'Tabet', 'Hazar', '1995-11-11', 'GL', 10, '2013', 0, NULL, NULL),
(120, 'lonnie.koepp@yahoo.com', 'azerty13', 'Belkhodja', 'Nesrine', '1994-05-01', 'GL', 8, '2014', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `fichedevoeux`
--

CREATE TABLE `fichedevoeux` (
  `id` int(11) NOT NULL,
  `id_Sujet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL,
  `etat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `salle`
--

INSERT INTO `salle` (`id`, `etat`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 0),
(6, 0),
(7, 1),
(8, 1),
(9, 0),
(10, 1),
(11, 1),
(12, 0),
(13, 0),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 0),
(19, 1),
(20, 1);

-- --------------------------------------------------------

--
-- Structure de la table `soutenance`
--

CREATE TABLE `soutenance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `id_Salle` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `sujet`
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
-- Contenu de la table `sujet`
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
(194, 'Molestias voluptas quia h', 'Normans--" How are you getting on now, my dear?\' it continued, turning to Alice with one eye; \'I.', 'SIC', '2017-11-23', 19),
(195, 'Quia officia.', 'HIS time of life. The King\'s argument was, that she did not at all for any of them. However, on.', 'GL', '2017-06-05', 8),
(196, 'Iure maiores repudiandae ', 'WHAT?\' thought Alice; \'I might as well as I used--and I don\'t like them!\' When the sands are all.', 'RSD', '2017-09-07', 26),
(197, 'Eaque quam eos.', 'March Hare: she thought to herself what such an extraordinary ways of living would be like, \'--for.', 'GL', '2017-05-11', 4),
(198, 'Quam distinctio minima.', 'THEIR eyes bright and eager with many a strange tale, perhaps even with the tea,\' the Hatter said,.', 'RSD', '2017-06-15', 25),
(199, 'Facilis iusto ipsum.', 'King turned pale, and shut his note-book hastily. \'Consider your verdict,\' he said to herself, as.', 'SIC', '2017-06-24', 26),
(200, 'Harum enim aut voluptate.', 'And she squeezed herself up closer to Alice\'s great surprise, the Duchess\'s cook. She carried the.', 'SIC', '2017-12-30', 17),
(201, 'Non saepe fugiat eum quas', 'Alice went timidly up to her in such a tiny golden key, and when she looked down at her own mind.', 'GL', '2017-09-04', 24),
(202, 'Dignissimos quia eveniet.', 'AND WASHING--extra."\' \'You couldn\'t have wanted it much,\' said Alice, surprised at her as she had.', 'RSD', '2017-06-02', 1),
(203, 'Sed vel voluptatem.', 'Alice again, in a loud, indignant voice, but she saw them, they set to work throwing everything.', 'RSD', '2017-10-08', 12),
(204, 'Ducimus debitis ad.', 'I\'d only been the whiting,\' said the March Hare said in a very pretty dance,\' said Alice in a.', 'RSD', '2017-03-16', 5),
(205, 'Itaque velit sed aut.', 'Miss, we\'re doing our best, afore she comes, to--\' At this moment the King, looking round the.', 'RSD', '2017-04-28', 26),
(206, 'Rerum voluptate saepe.', 'GAVE HER ONE, THEY GAVE HIM TWO--" why, that must be the right size to do it! Oh dear! I\'d nearly.', 'RSD', '2017-08-20', 20),
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
(240, 'Quam tempora officia.', 'Dodo, \'the best way to explain the mistake it had a pencil that squeaked. This of course, to begin.', 'SIC', '2017-09-29', 10);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD PRIMARY KEY (`id`,`id_Etudiant`,`id_Sujet`),
  ADD KEY `FK_affectation_id_Etudiant` (`id_Etudiant`),
  ADD KEY `FK_affectation_id_Sujet` (`id_Sujet`);

--
-- Index pour la table `agentadmin`
--
ALTER TABLE `agentadmin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `assiste`
--
ALTER TABLE `assiste`
  ADD PRIMARY KEY (`id`,`id_Enseignant`),
  ADD KEY `FK_assiste_id_Enseignant` (`id_Enseignant`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Etudiant_id_FicheDeVoeux` (`id_FicheDeVoeux`),
  ADD KEY `FK_Etudiant_id_Enseignant` (`id_Enseignant`);

--
-- Index pour la table `fichedevoeux`
--
ALTER TABLE `fichedevoeux`
  ADD PRIMARY KEY (`id`,`id_Sujet`),
  ADD KEY `FK_FicheDeVoeux_id_Sujet` (`id_Sujet`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `soutenance`
--
ALTER TABLE `soutenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Soutenance_id_Salle` (`id_Salle`);

--
-- Index pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Sujet_id_Enseignant` (`id_Enseignant`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `agentadmin`
--
ALTER TABLE `agentadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT pour la table `fichedevoeux`
--
ALTER TABLE `fichedevoeux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `soutenance`
--
ALTER TABLE `soutenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sujet`
--
ALTER TABLE `sujet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `affectation`
--
ALTER TABLE `affectation`
  ADD CONSTRAINT `FK_affectation_id` FOREIGN KEY (`id`) REFERENCES `enseignant` (`id`),
  ADD CONSTRAINT `FK_affectation_id_Etudiant` FOREIGN KEY (`id_Etudiant`) REFERENCES `etudiant` (`id`),
  ADD CONSTRAINT `FK_affectation_id_Sujet` FOREIGN KEY (`id_Sujet`) REFERENCES `sujet` (`id`);

--
-- Contraintes pour la table `assiste`
--
ALTER TABLE `assiste`
  ADD CONSTRAINT `FK_assiste_id` FOREIGN KEY (`id`) REFERENCES `soutenance` (`id`),
  ADD CONSTRAINT `FK_assiste_id_Enseignant` FOREIGN KEY (`id_Enseignant`) REFERENCES `enseignant` (`id`);

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `FK_Etudiant_id_Enseignant` FOREIGN KEY (`id_Enseignant`) REFERENCES `enseignant` (`id`),
  ADD CONSTRAINT `FK_Etudiant_id_FicheDeVoeux` FOREIGN KEY (`id_FicheDeVoeux`) REFERENCES `fichedevoeux` (`id`);

--
-- Contraintes pour la table `fichedevoeux`
--
ALTER TABLE `fichedevoeux`
  ADD CONSTRAINT `FK_FicheDeVoeux_id_Sujet` FOREIGN KEY (`id_Sujet`) REFERENCES `sujet` (`id`);

--
-- Contraintes pour la table `soutenance`
--
ALTER TABLE `soutenance`
  ADD CONSTRAINT `FK_Soutenance_id_Salle` FOREIGN KEY (`id_Salle`) REFERENCES `salle` (`id`);

--
-- Contraintes pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD CONSTRAINT `FK_Sujet_id_Enseignant` FOREIGN KEY (`id_Enseignant`) REFERENCES `enseignant` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
