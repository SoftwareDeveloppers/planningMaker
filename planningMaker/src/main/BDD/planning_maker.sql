-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Sam 10 Mars 2018 à 19:12
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
(1, 'Agent', 'Mohammed', '123'),
(2, 'Admin', 'abd', '123');

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

CREATE TABLE `contient` (
  `id` int(11) NOT NULL,
  `id_FicheDeVoeux` int(11) NOT NULL
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
  `mdp` varchar(30) NOT NULL,
  `id_Etudiant` int(11) DEFAULT NULL,
  `id_Sujet` int(11) DEFAULT NULL,
  `id_Soutenance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `enseignant`
--

INSERT INTO `enseignant` (`id`, `nom`, `prenom`, `grade`, `specialite`, `email`, `mdp`, `id_Etudiant`, `id_Sujet`, `id_Soutenance`) VALUES
(11, 'MAHFOUD', 'Badr', 'Maître Assistant A', 'RSD', 'mail@gmail.com', '2018', NULL, NULL, NULL),
(12, 'BENMAMAR', 'Abdelhak', 'Maître de conférences A', 'GL', 'azerty@gmail.com', '2018', NULL, NULL, NULL),
(13, 'MESSABIHI', 'Mohammed', 'Maître Assistant A', 'GL', 'abc@gmail.com', '2018', NULL, NULL, NULL),
(14, 'ETCHIALI', 'Mohammed', 'Maître de conférences A', 'MID', 'abc@gmail.com', 'azerty13', NULL, NULL, NULL),
(15, 'CHOUITI', 'Badr', 'Maître de conférences B', 'GL', 'azerty@gmail.com', 'azerty', NULL, NULL, NULL),
(16, 'AMRAOUI', 'Mohammed', 'Maître Assistant A', 'MID', 'abc@gmail.com', 'azerty13', NULL, NULL, NULL),
(17, 'MAHFOUD', 'Badr', 'Professeur', 'RSD', 'azerty@gmail.com', 'azerty13', NULL, NULL, NULL),
(18, 'MESSABIHI', 'Badr', 'Maître de conférences B', 'GL', 'abc@gmail.com', 'azerty', NULL, NULL, NULL),
(19, 'MAHFOUD', 'Badr', 'Maître Assistant B', 'MID', 'azerty@gmail.com', 'azerty', NULL, NULL, NULL),
(20, 'AMRAOUI', 'Badr', 'Professeur', 'GL', 'abc@gmail.com', '2018', NULL, NULL, NULL),
(21, 'CHOUITI', 'Badr', 'Maître de conférences B', 'MID', 'mail@gmail.com', 'azerty', NULL, NULL, NULL),
(22, 'CHOUITI', 'Mohammed', 'Maître de conférences A', 'RSD', 'abc@gmail.com', 'azerty', NULL, NULL, NULL),
(23, 'MESSABIHI', 'Mohammed', 'Maître de conférences B', 'MID', 'abc@gmail.com', 'azerty', NULL, NULL, NULL),
(24, 'BANAMAR', 'Asma', 'Maître de conférences B', 'RSD', 'abc@gmail.com', '2018', NULL, NULL, NULL),
(25, 'CHOUITI', 'Abdelhak', 'Maître Assistant B', 'RSD', 'mail@gmail.com', 'azerty13', NULL, NULL, NULL),
(26, 'CHOUITI', 'Mohammed', 'Professeur', 'MID', 'abc@gmail.com', 'azerty13', NULL, NULL, NULL),
(27, 'BENAISSA', 'Houari', 'Maître de conférences A', 'GL', 'abc@gmail.com', '2018', NULL, NULL, NULL),
(28, 'BANAMAR', 'Abdelhak', 'Maître Assistant B', 'GL', 'abc@gmail.com', 'azerty13', NULL, NULL, NULL),
(29, 'ETCHIALI', 'Badr', 'Professeur', 'GL', 'abc@gmail.com', 'azerty13', NULL, NULL, NULL),
(30, 'ETCHIALI', 'Mohammed', 'Maître de conférences A', 'RSD', 'abc@gmail.com', 'azerty', NULL, NULL, NULL);

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
  `taux` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`id`, `email`, `mdp`, `nom`, `prenom`, `dateNaissance`, `specialite`, `moyenne`, `promotion`, `taux`) VALUES
(1, 'abc@gmail.com', '123', 'MERABET', 'Salim', '1996-10-31', 'MID', 16, '2013', 0),
(2, 'abc@gmail.com', 'azerty', 'BALI', 'Rihem', '1993-12-29', 'GL', 16, '2005', 0),
(3, 'mail@gmail.com', 'azerty', 'MEKHEZZEM', 'Reda', '1995-11-25', 'GL', 15, '2014', 0),
(4, '123@gmail.com', 'abc', 'BENMANSOUR', 'Chaib', '1993-06-08', 'MID', 14, '2013', 0),
(5, 'mail@gmail.com', 'abc', 'ZENAGUI', 'Nedjlaa', '1995-10-10', 'MID', 13, '2013', 0),
(6, 'abc@gmail.com', 'abc', 'BEREKSI', 'Lilya', '1990-05-29', 'MID', 9, '2012', 0),
(7, 'abc@gmail.com', '123', 'MEKHEZZEM', 'Abdelhak', '1993-07-01', 'SIC', 12, '2013', 0),
(8, 'mail@gmail.com', '123', 'RAHMOUN', 'Nedjlaa', '1994-07-23', 'GL', 16, '2013', 0),
(9, '123@gmail.com', '123', 'FASLA', 'Hichem', '1995-02-02', 'RSD', 11, '2014', 0),
(10, 'mail@gmail.com', 'abc', 'TABET', 'Chaib', '1990-12-03', 'SIC', 12, '2012', 0),
(11, '123@gmail.com', '123', 'MERIAH', 'Anas', '1991-11-24', 'SIC', 9, '2013', 0),
(12, 'abc@gmail.com', '123', 'TABET AOUL', 'Abderahmen', '1996-07-14', 'SIC', 13, '2014', 0),
(13, '123@gmail.com', '123', 'FASLA', 'Abderahmen', '1994-06-03', 'GL', 15, '2012', 0),
(14, 'mail@gmail.com', 'azerty', 'ZENAGUI', 'Salim', '1992-05-22', 'MID', 13, '2014', 0),
(15, '123@gmail.com', '123', 'SARI', 'Abdelhak', '1993-11-19', 'RSD', 10, '2012', 0),
(16, 'abc@gmail.com', '123', 'RAHMOUN', 'Reda', '1991-01-23', 'MID', 14, '2012', 0),
(17, '123@gmail.com', 'abc', 'SEKKAL', 'Amine', '1992-09-22', 'SIC', 10, '2013', 0),
(18, 'abc@gmail.com', 'azerty', 'MALTI', 'Riad', '1991-12-24', 'SIC', 16, '2012', 0),
(19, '123@gmail.com', 'azerty', 'SEKKAL', 'Amine', '1993-10-22', 'SIC', 13, '2013', 0),
(20, '123@gmail.com', 'abc', 'SARI', 'Abdelhak', '1991-03-19', 'RSD', 15, '', 0),
(21, 'mail@gmail.com', 'abc', 'AZZOUNI', 'Ines', '1996-10-05', 'MID', 12, '2012', 0),
(22, 'abc@gmail.com', 'abc', 'TABET AOUL', 'Salim', '1991-01-19', 'MID', 14, '2012', 0),
(23, '123@gmail.com', 'azerty', 'MERIAH', 'Ibrahim', '1990-05-03', 'RSD', 15, '2014', 0),
(24, 'abc@gmail.com', 'abc', 'SEGHIRI', 'Salim', '1991-10-29', 'SIC', 16, '2014', 0),
(25, 'abc@gmail.com', '123', 'MERIAH', 'Lilya', '1993-02-11', 'RSD', 9, '', 0),
(26, 'abc@gmail.com', 'azerty', 'TABET AOUL', 'Lilya', '1993-02-07', 'MID', 12, '2014', 0),
(27, '123@gmail.com', 'abc', 'BALI', 'Hichem', '1995-04-20', 'MID', 9, '2012', 0),
(28, 'mail@gmail.com', 'azerty', 'SEGHIRI', 'Yasemine', '1996-01-23', 'MID', 13, '2014', 0),
(29, '123@gmail.com', 'abc', 'ZENAGUI', 'Ines', '1990-12-22', 'MID', 12, '2014', 0),
(30, 'mail@gmail.com', 'azerty', 'BENMANSOUR', 'Nesrine', '1990-07-15', 'MID', 10, '2014', 0),
(31, '123@gmail.com', 'azerty', 'BEREKSI', 'Riad', '1995-03-18', 'SIC', 13, '2013', 0),
(32, '123@gmail.com', 'abc', 'SEGHIRI', 'Anas', '1994-07-14', 'RSD', 8, '2013', 0),
(33, '123@gmail.com', '123', 'RAHMOUN', 'Ibrahim', '1990-01-29', 'SIC', 13, '2012', 0),
(34, 'mail@gmail.com', 'abc', 'BALI', 'Abderahmen', '1994-02-23', 'SIC', 12, '2014', 0),
(35, 'mail@gmail.com', '123', 'BENDIMRED', 'Amine', '1992-01-01', 'MID', 13, '2012', 0),
(36, '123@gmail.com', 'azerty', 'TABET AOUL', 'Nedjlaa', '1994-06-22', 'RSD', 16, '', 0),
(37, 'mail@gmail.com', 'abc', 'ZENAGUI', 'Amine', '1994-09-17', 'SIC', 12, '2013', 0),
(38, 'abc@gmail.com', 'azerty', 'MESROUA', 'Chaib', '1994-12-19', 'GL', 15, '2014', 0),
(39, 'abc@gmail.com', 'abc', 'MALTI', 'Selma', '1992-01-25', 'GL', 16, '2012', 0),
(40, 'mail@gmail.com', 'azerty', 'SEKKAL', 'Rihem', '1990-02-25', 'SIC', 9, '2014', 0),
(45, 'mail@gmail.com', 'abc', 'TABET AOUL', 'Abderahmen', '1993-06-08', 'SIC', 13, '2014', 0),
(46, 'abc@gmail.com', 'abc', 'SEGHIRI', 'Hichem', '1995-06-12', 'MID', 12, '2012', 0),
(47, 'mail@gmail.com', '123', 'MERIAH', 'Abderahmen', '1990-07-05', 'GL', 8, '2012', 0),
(48, 'mail@gmail.com', 'abc', 'TABET AOUL', 'Riad', '1996-10-05', 'MID', 14, '2012', 0),
(49, 'abc@gmail.com', '123', 'SARI', 'Ines', '1993-10-08', 'GL', 14, '2013', 0),
(50, '123@gmail.com', '123', 'MERIAH', 'Riad', '1990-11-16', 'RSD', 14, '2014', 0),
(51, '123@gmail.com', 'abc', 'ZENAGUI', 'Ibrahim', '1995-01-16', 'GL', 15, '2012', 0),
(52, '123@gmail.com', 'azerty', 'ZENAGUI', 'Chaib', '1990-01-03', 'MID', 14, '2013', 0),
(53, '123@gmail.com', 'azerty', 'MEKHEZZEM', 'Lilya', '1991-12-03', 'GL', 11, '2014', 0),
(54, 'abc@gmail.com', 'abc', 'BENMANSOUR', 'Rihem', '1994-01-11', 'SIC', 16, '2012', 0),
(55, 'abc@gmail.com', '123', 'MERABET', 'Djihene', '1994-06-21', 'MID', 12, '2014', 0),
(56, 'mail@gmail.com', 'azerty', 'MALTI', 'Ibrahim', '1996-08-01', 'SIC', 11, '2013', 0),
(58, 'abc@gmail.com', 'abc', 'MERABET', 'Riad', '1993-07-29', 'RSD', 11, '2014', 0),
(59, 'mail@gmail.com', 'abc', 'MERIAH', 'Djihene', '1993-07-15', 'GL', 13, '2013', 0),
(60, '123@gmail.com', 'azerty', 'MESROUA', 'Nesrine', '1994-11-23', 'RSD', 12, '2014', 0),
(61, '123@gmail.com', 'azerty', 'BENDIMRED', 'Amine', '1992-01-06', 'RSD', 14, '2012', 0),
(62, 'abc@gmail.com', '123', 'KALFAT', 'Abderahmen', '1996-03-07', 'GL', 12, '2012', 0),
(63, 'abc@gmail.com', 'azerty', 'BEREKSI', 'Lilya', '1995-04-17', 'GL', 13, '2013', 0),
(64, '123@gmail.com', '123', 'ZENAGUI', 'Nedjlaa', '1991-02-21', 'MID', 15, '2013', 0),
(65, 'abc@gmail.com', 'abc', 'KALFAT', 'Salim', '1991-09-17', 'GL', 12, '2014', 0),
(66, 'mail@gmail.com', '123', 'KALFAT', 'Hichem', '1990-10-10', 'SIC', 12, '2012', 0),
(67, 'mail@gmail.com', '123', 'BEREKSI', 'Yasemine', '1995-05-23', 'RSD', 15, '2014', 0),
(68, 'mail@gmail.com', 'azerty', 'SARI', 'Ibrahim', '1995-03-13', 'MID', 9, '2014', 0),
(69, '123@gmail.com', 'abc', 'AZZOUNI', 'Nesrine', '1993-07-15', 'MID', 13, '2013', 0),
(70, 'mail@gmail.com', '123', 'MALTI', 'Amine', '1996-03-02', 'GL', 10, '2013', 0),
(71, 'abc@gmail.com', 'azerty', 'BALI', 'Ines', '1992-05-26', 'GL', 13, '2013', 0),
(72, 'mail@gmail.com', '123', 'TABET AOUL', 'Lilya', '1995-10-25', 'SIC', 15, '2012', 0),
(73, '123@gmail.com', '123', 'BENMANSOUR', 'Riad', '1991-11-18', 'SIC', 11, '2012', 0),
(74, 'abc@gmail.com', 'abc', 'MERIAH', 'Rihem', '1992-02-04', 'RSD', 11, '2014', 0),
(75, 'mail@gmail.com', '123', 'TABET', 'Ibrahim', '1996-07-23', 'GL', 10, '2014', 0),
(76, '123@gmail.com', 'abc', 'RAHMOUN', 'Abderahmen', '1996-11-12', 'GL', 13, '2012', 0),
(77, '123@gmail.com', 'abc', 'AZZOUNI', 'Nedjlaa', '1993-07-27', 'SIC', 8, '2013', 0),
(78, 'mail@gmail.com', 'abc', 'TABET', 'Hichem', '1994-11-07', 'SIC', 8, '2012', 0),
(79, '123@gmail.com', '123', 'RAHMOUN', 'Yasemine', '1995-10-18', 'SIC', 10, '2013', 0),
(80, 'mail@gmail.com', '123', 'MERABET', 'Salim', '1991-03-28', 'MID', 9, '2010', 0),
(81, 'abc@gmail.com', '123', 'TABET AOUL', 'Abdelhak', '1992-10-23', 'MID', 14, '2011', 0),
(82, '123@gmail.com', '123', 'MEKHEZZEM', 'Hichem', '1993-08-04', 'GL', 10, '2013', 0),
(83, '123@gmail.com', 'abc', 'BEREKSI', 'Lilya', '1992-09-06', 'RSD', 11, '2013', 0),
(84, 'abc@gmail.com', 'azerty', 'MEKHEZZEM', 'Reda', '1996-12-13', 'MID', 15, '2014', 0),
(85, 'mail@gmail.com', '123', 'ZENAGUI', 'Reda', '1992-05-11', 'MID', 13, '2010', 0),
(86, '123@gmail.com', 'azerty', 'RAHMOUN', 'Rihem', '1994-09-23', 'SIC', 13, '2012', 0),
(87, 'abc@gmail.com', '123', 'BENMANSOUR', 'Nedjlaa', '1994-10-03', 'SIC', 11, '2011', 0),
(88, 'abc@gmail.com', 'abc', 'BEREKSI', 'Amine', '1993-07-13', 'RSD', 10, '2013', 0),
(90, 'mail@gmail.com', '123', 'TABET AOUL', 'Nesrine', '1993-07-14', 'SIC', 12, '2000', 0),
(91, 'mail@gmail.com', 'abc', 'MALTI', 'Ibrahim', '1991-08-13', 'GL', 9, '2012', 0),
(92, 'abc@gmail.com', '123', 'BALI', 'Ibrahim', '1992-02-25', 'GL', 9, '2012', 0),
(94, '123@gmail.com', 'abc', 'SEKKAL', 'Lilya', '1992-05-12', 'SIC', 8, '2013', 0),
(95, 'abc@gmail.com', 'azerty', 'SOUR', 'Abderahmen', '1994-08-06', 'MID', 12, '2013', 0),
(96, 'mail@gmail.com', 'azerty', 'AZZOUNI', 'Reda', '1995-02-16', 'SIC', 16, '2013', 0),
(97, 'abc@gmail.com', 'abc', 'MESROUA', 'Nedjlaa', '1991-01-08', 'SIC', 16, '2004', 0),
(98, '123@gmail.com', '123', 'BALI', 'Nesrine', '1996-12-30', 'MID', 16, '2014', 0),
(99, 'abc@gmail.com', 'azerty', 'SARI', 'Hichem', '1996-02-16', 'GL', 8, '2011', 0),
(100, '123@gmail.com', '123', 'BEREKSI', 'Abdelhak', '1996-02-19', 'SIC', 9, '2012', 0);

-- --------------------------------------------------------

--
-- Structure de la table `fichedevoeux`
--

CREATE TABLE `fichedevoeux` (
  `id` int(11) NOT NULL,
  `specialite` varchar(25) NOT NULL,
  `id_Etudiant` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL,
  `etat` tinyint(1) NOT NULL,
  `id_Soutenance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `salle`
--

INSERT INTO `salle` (`id`, `etat`, `id_Soutenance`) VALUES
(1, 1, 28),
(2, 0, 37),
(3, 1, 38),
(4, 1, 33),
(5, 0, 42),
(6, 1, 29);

-- --------------------------------------------------------

--
-- Structure de la table `soutenance`
--

CREATE TABLE `soutenance` (
  `id` int(11) NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL,
  `id_Enseignant` int(11) DEFAULT NULL,
  `id_AgentAdmin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `soutenance`
--

INSERT INTO `soutenance` (`id`, `dateDebut`, `dateFin`, `id_Enseignant`, `id_AgentAdmin`) VALUES
(28, '2018-06-15', '2018-06-28', NULL, NULL),
(29, '2018-06-10', '2018-06-16', NULL, NULL),
(30, '2018-05-23', '2018-06-10', NULL, NULL),
(31, '2018-06-10', '2018-06-22', NULL, NULL),
(32, '2018-05-23', '2018-06-24', NULL, NULL),
(33, '2018-06-14', '2018-06-27', NULL, NULL),
(34, '2018-05-28', '2018-06-16', NULL, NULL),
(35, '2018-06-07', '2018-06-17', NULL, NULL),
(36, '2018-05-27', '2018-06-07', NULL, NULL),
(37, '2018-05-29', '2018-06-19', NULL, NULL),
(38, '2018-05-31', '2018-06-07', NULL, NULL),
(39, '2018-05-20', '2018-06-12', NULL, NULL),
(40, '2018-06-10', '2018-06-15', NULL, NULL),
(41, '2018-06-10', '2018-06-27', NULL, NULL),
(42, '2018-06-03', '2018-06-22', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sujet`
--

CREATE TABLE `sujet` (
  `id` int(11) NOT NULL,
  `contenu` varchar(255) NOT NULL,
  `creation` date NOT NULL,
  `titre` varchar(50) NOT NULL,
  `specialite` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sujet`
--

INSERT INTO `sujet` (`id`, `contenu`, `creation`, `titre`, `specialite`) VALUES
(11, 'elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris', '2018-01-17', 'vel arcu. Curabitur', 'GL'),
(12, 'Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien,', '2018-01-13', 'lectus pede, ultrices', 'GL'),
(13, 'et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna', '2018-01-18', 'nulla at', 'GL'),
(14, 'sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in', '2018-01-11', 'molestie orci tincidunt adipiscing.', 'SIC'),
(15, 'natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque', '2018-01-11', 'felis, adipiscing fringilla,', 'RSD'),
(16, 'Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam', '2018-01-25', 'ac turpis egestas.', 'MID'),
(17, 'lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede.', '2018-01-30', 'dictum magna. Ut', 'MID'),
(18, 'id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor', '2018-01-22', 'feugiat nec,', 'GL'),
(19, 'nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis', '2018-01-11', 'eu enim.', 'MID'),
(20, 'gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin', '2018-01-02', 'cursus purus. Nullam scelerisque', 'RSD'),
(21, 'dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus', '2018-01-11', 'mi, ac', 'MID'),
(22, 'felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac,', '2018-01-25', 'sed tortor. Integer aliquam', 'RSD'),
(23, 'at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa', '2018-01-05', 'sed pede. Cum', 'GL'),
(24, 'pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris', '2018-01-07', 'augue id ante', 'GL'),
(25, 'at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean', '2018-01-16', 'ligula. Donec', 'SIC'),
(26, 'ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem', '2018-01-26', 'In nec orci.', 'RSD'),
(27, 'magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor.', '2018-01-20', 'consectetuer adipiscing elit.', 'SIC'),
(28, 'venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis', '2018-01-23', 'quis, pede. Praesent', 'RSD'),
(29, 'auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat', '2018-01-15', 'odio semper cursus. Integer', 'GL'),
(30, 'dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam', '2018-01-09', 'mattis semper, dui', 'SIC'),
(31, 'mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at,', '2018-01-27', 'Sed malesuada augue', 'MID'),
(32, 'senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus', '2018-01-26', 'volutpat. Nulla facilisis. Suspendisse', 'SIC'),
(33, 'bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat', '2018-01-19', 'elit. Etiam', 'SIC'),
(34, 'lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur', '2018-01-24', 'aliquet magna a neque.', 'SIC'),
(35, 'lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum', '2018-01-18', 'ac nulla.', 'SIC'),
(36, 'habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi', '2018-01-21', 'sed pede. Cum', 'RSD'),
(37, 'Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in', '2018-01-02', 'amet lorem semper', 'MID'),
(38, 'eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus', '2018-01-03', 'et, magna. Praesent interdum', 'SIC'),
(39, 'bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec', '2018-01-26', 'Proin ultrices.', 'RSD'),
(40, 'facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis', '2018-01-12', 'in molestie tortor', 'SIC');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `agentadmin`
--
ALTER TABLE `agentadmin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `contient`
--
ALTER TABLE `contient`
  ADD PRIMARY KEY (`id`,`id_FicheDeVoeux`),
  ADD KEY `FK_contient_id_FicheDeVoeux` (`id_FicheDeVoeux`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Enseignant_id_Etudiant` (`id_Etudiant`),
  ADD KEY `FK_Enseignant_id_Sujet` (`id_Sujet`),
  ADD KEY `FK_Enseignant_id_Soutenance` (`id_Soutenance`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `fichedevoeux`
--
ALTER TABLE `fichedevoeux`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_FicheDeVoeux_id_Etudiant` (`id_Etudiant`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Salle_id_Soutenance` (`id_Soutenance`);

--
-- Index pour la table `soutenance`
--
ALTER TABLE `soutenance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Soutenance_id_Enseignant` (`id_Enseignant`),
  ADD KEY `FK_Soutenance_id_AgentAdmin` (`id_AgentAdmin`);

--
-- Index pour la table `sujet`
--
ALTER TABLE `sujet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `agentadmin`
--
ALTER TABLE `agentadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `enseignant`
--
ALTER TABLE `enseignant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `fichedevoeux`
--
ALTER TABLE `fichedevoeux`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `soutenance`
--
ALTER TABLE `soutenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT pour la table `sujet`
--
ALTER TABLE `sujet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `FK_contient_id` FOREIGN KEY (`id`) REFERENCES `sujet` (`id`),
  ADD CONSTRAINT `FK_contient_id_FicheDeVoeux` FOREIGN KEY (`id_FicheDeVoeux`) REFERENCES `fichedevoeux` (`id`);

--
-- Contraintes pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD CONSTRAINT `FK_Enseignant_id_Etudiant` FOREIGN KEY (`id_Etudiant`) REFERENCES `etudiant` (`id`),
  ADD CONSTRAINT `FK_Enseignant_id_Soutenance` FOREIGN KEY (`id_Soutenance`) REFERENCES `soutenance` (`id`),
  ADD CONSTRAINT `FK_Enseignant_id_Sujet` FOREIGN KEY (`id_Sujet`) REFERENCES `sujet` (`id`);

--
-- Contraintes pour la table `fichedevoeux`
--
ALTER TABLE `fichedevoeux`
  ADD CONSTRAINT `FK_FicheDeVoeux_id_Etudiant` FOREIGN KEY (`id_Etudiant`) REFERENCES `etudiant` (`id`);

--
-- Contraintes pour la table `salle`
--
ALTER TABLE `salle`
  ADD CONSTRAINT `FK_Salle_id_Soutenance` FOREIGN KEY (`id_Soutenance`) REFERENCES `soutenance` (`id`);

--
-- Contraintes pour la table `soutenance`
--
ALTER TABLE `soutenance`
  ADD CONSTRAINT `FK_Soutenance_id_AgentAdmin` FOREIGN KEY (`id_AgentAdmin`) REFERENCES `agentadmin` (`id`),
  ADD CONSTRAINT `FK_Soutenance_id_Enseignant` FOREIGN KEY (`id_Enseignant`) REFERENCES `enseignant` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
