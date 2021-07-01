-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le : Mar 15 Août 2017 à 13:22
-- Version du serveur: 5.5.16
-- Version de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `base_memoire_fin_etude`
--

-- --------------------------------------------------------

--
-- Structure de la table `disponibilite`
--

CREATE TABLE IF NOT EXISTS `disponibilite` (
  `id_disp` int(11) NOT NULL AUTO_INCREMENT,
  `disponibilite` varchar(30) NOT NULL,
  `annee_uni` varchar(9) NOT NULL,
  `semestre` varchar(10) NOT NULL,
  `id_prof` int(11) NOT NULL,
  PRIMARY KEY (`id_disp`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `disponibilite`
--

INSERT INTO `disponibilite` (`id_disp`, `disponibilite`, `annee_uni`, `semestre`, `id_prof`) VALUES
(1, 'Dimanche 11:20 - 12:50', '2016-2017', 'S1', 72),
(2, 'Dimanche 16:20 - 17:50', '2016-2017', 'S1', 72),
(8, 'Dimanche 8:00 - 9:30', '2016-2017', 'S1', 88),
(9, 'Dimanche 11:20 - 12:50', '2016-2017', 'S1', 88),
(10, 'Dimanche 14-40 - 16:10', '2016-2017', 'S1', 88),
(11, 'Dimanche 16:20 - 17:50', '2016-2017', 'S1', 88),
(12, 'Lundi 13:00 - 14-30', '2016-2017', 'S1', 88),
(13, 'Mercredi 8:00 - 9:30', '2016-2017', 'S1', 88),
(14, 'Mercredi 14-40 - 16:10', '2016-2017', 'S1', 88),
(15, 'Jeudi 11:20 - 12:50', '2016-2017', 'S1', 88);

-- --------------------------------------------------------

--
-- Structure de la table `enseignement`
--

CREATE TABLE IF NOT EXISTS `enseignement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_prof` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `id_semestre` int(11) NOT NULL,
  `id_formation` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=146 ;

--
-- Contenu de la table `enseignement`
--

INSERT INTO `enseignement` (`id`, `id_prof`, `id_module`, `id_semestre`, `id_formation`) VALUES
(136, 85, 114, 55, 31),
(137, 85, 115, 55, 31),
(138, 88, 99, 55, 29),
(140, 72, 109, 55, 30),
(141, 72, 112, 55, 30),
(142, 72, 116, 55, 29),
(143, 89, 101, 55, 29),
(144, 89, 117, 55, 31),
(145, 72, 119, 55, 32);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE IF NOT EXISTS `formation` (
  `id_formation` int(11) NOT NULL AUTO_INCREMENT,
  `nom_formation` varchar(30) NOT NULL,
  `cycle` varchar(15) NOT NULL,
  `nbre_semestre` int(5) NOT NULL,
  PRIMARY KEY (`id_formation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `formation`
--

INSERT INTO `formation` (`id_formation`, `nom_formation`, `cycle`, `nbre_semestre`) VALUES
(29, 'SI', 'Master', 2),
(30, 'RMSE', 'Master', 2),
(31, 'CPI', 'Master', 2),
(32, 'L3', 'licence', 2);

-- --------------------------------------------------------

--
-- Structure de la table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `id_section` int(11) NOT NULL AUTO_INCREMENT,
  `lib_section` varchar(15) DEFAULT NULL,
  `id_formation` int(11) DEFAULT NULL,
  `id_semestre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_section`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Contenu de la table `section`
--

INSERT INTO `section` (`id_section`, `lib_section`, `id_formation`, `id_semestre`) VALUES
(54, 'section 1', 29, 55),
(57, 'section 2', 30, 57),
(63, 'section 3', 31, 59),
(64, 'section 2', 32, 60);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE IF NOT EXISTS `groupe` (
  `id_groupe` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_groupe` varchar(15) DEFAULT NULL,
  `id_formation` int(11) DEFAULT NULL,
  `id_semestre` int(11) DEFAULT NULL,
  `id_section` int(11) NOT NULL,
  PRIMARY KEY (`id_groupe`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Contenu de la table `groupe`
--

INSERT INTO `groupe` (`id_groupe`, `libelle_groupe`, `id_formation`, `id_semestre`, `id_section`) VALUES
(49, 'A1', 30, 55, 57),
(50, 'A2', 30, 55, 57),
(57, 'C1', 31, 55, 63),
(62, 'B1', 29, 55, 54),
(63, 'B2', 29, 55, 54),
(64, 'F1', 32, 55, 64),
(65, 'F2', 32, 55, 64);

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(30) NOT NULL,
  `passe` varchar(30) NOT NULL,
  `statut` varchar(15) NOT NULL,
  `Num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pseudo` (`pseudo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

--
-- Contenu de la table `login`
--

INSERT INTO `login` (`id`, `pseudo`, `passe`, `statut`, `Num`) VALUES
(126, 'karim12', 'karim', 'prof', 85),
(89, 'admin', 'admin', 'Admin', 14),
(120, 'tagine', 'massi', 'prof', 72),
(122, 'massi', 'fff', 'Etudiant', 29),
(131, 'tahir', 'ousama', 'prof', 88),
(141, 'karim', 'youva', 'prof', 89),
(140, '', '', 'Admin', 0);

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id_module` int(11) NOT NULL AUTO_INCREMENT,
  `id_formation` int(11) NOT NULL,
  `libelle_module` varchar(15) NOT NULL,
  `volume_horaire` int(5) NOT NULL,
  `id_semestre` int(11) NOT NULL,
  PRIMARY KEY (`id_module`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=120 ;

--
-- Contenu de la table `module`
--

INSERT INTO `module` (`id_module`, `id_formation`, `libelle_module`, `volume_horaire`, `id_semestre`) VALUES
(99, 29, 'Architecture', 20, 55),
(101, 29, 'Capture', 20, 55),
(109, 30, 'mobilite', 20, 57),
(112, 30, 'VHDL', 12, 57),
(114, 31, 'securite', 20, 59),
(115, 31, 'THL', 20, 59),
(116, 29, 'SE', 14, 55),
(117, 31, 'RNTIC', 20, 59),
(118, 29, 'interprete', 15, 55),
(119, 32, 'C++', 20, 60);

-- --------------------------------------------------------

--
-- Structure de la table `prof`
--

CREATE TABLE IF NOT EXISTS `prof` (
  `id_prof` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` varchar(15) NOT NULL,
  `nom` varchar(15) NOT NULL,
  `prenom` varchar(15) NOT NULL,
  `tel` int(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id_prof`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

--
-- Contenu de la table `prof`
--

INSERT INTO `prof` (`id_prof`, `civilite`, `nom`, `prenom`, `tel`, `email`) VALUES
(72, 'M', 'Mme', 'amirouche', 554667200, 't@yahoo.fr'),
(85, 'Mlle', 'Taouri', 'A', 554667200, 't@yahoo.fr'),
(88, 'M', 'tahir', 'oussama', 554667200, 't@yahoo.fr'),
(89, 'M', 'tighrine', 'youva', 554667200, 't@yahoo.fr');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE IF NOT EXISTS `salle` (
  `id_salle` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_salle` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL,
  `bloc` varchar(15) NOT NULL,
  `capacite` int(10) NOT NULL,
  PRIMARY KEY (`id_salle`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `salle`
--

INSERT INTO `salle` (`id_salle`, `libelle_salle`, `type`, `bloc`, `capacite`) VALUES
(1, 'S1', 'TD', 'A', 30),
(2, 'S2', 'TD', 'A', 30),
(3, 'S3', 'TD', 'A', 30),
(4, 'Amphi', 'Cours', 'A', 150),
(5, 'Labo1', 'TP', 'A', 30),
(6, 'S5', 'TD', 'A', 30),
(7, 'Labo2', 'TP', 'A', 30);

-- --------------------------------------------------------

--
-- Structure de la table `seance`
--

CREATE TABLE IF NOT EXISTS `seance` (
  `id_for` int(11) NOT NULL,
  `id_sem` int(11) NOT NULL,
  `id_gr` int(11) NOT NULL,
  `id_pr` int(11) NOT NULL,
  `id_mod` int(11) NOT NULL,
  `id_sal` int(11) NOT NULL,
  `id_sec` int(11) NOT NULL,
  `type` varchar(5) NOT NULL,
  `heure` varchar(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `seance`
--

INSERT INTO `seance` (`id_for`, `id_sem`, `id_gr`, `id_pr`, `id_mod`, `id_sal`, `id_sec`, `type`, `heure`, `id`, `jour`) VALUES
(29, 55, 63, 88, 99, 1, 54, 'TD', '08:00-09:30', 4, 'Dimanche'),
(29, 55, 62, 88, 101, 4, 54, 'Cours', '13:00-14-30', 5, 'Lundi'),
(29, 55, 63, 88, 101, 4, 54, 'Cours', '13:00-14-30', 6, 'Lundi'),
(29, 55, 62, 88, 99, 1, 54, 'TD', '16:20-17:50', 7, 'Dimanche'),
(30, 55, 49, 72, 109, 2, 57, 'TD', '16:20-17:50', 8, 'Dimanche'),
(31, 55, 57, 85, 114, 2, 63, 'Cours', '08:00-09:30', 9, 'Dimanche'),
(31, 55, 57, 85, 115, 5, 63, 'TP', '09:40-11:10', 10, 'Dimanche'),
(29, 55, 62, 72, 116, 1, 54, 'TD', '11:20-12:50', 11, 'Dimanche'),
(29, 55, 63, 88, 99, 3, 54, 'TD', '11:20-12:50', 12, 'Dimanche'),
(29, 55, 62, 88, 99, 4, 54, 'Cours', '14-40-16:10', 13, 'Dimanche'),
(29, 55, 63, 88, 99, 4, 54, 'Cours', '14-40-16:10', 14, 'Dimanche'),
(31, 55, 57, 85, 114, 1, 63, 'TD', '14-40-16:10', 15, 'Mercredi'),
(31, 55, 57, 85, 115, 1, 63, 'TD', '13:00-14-30', 16, 'Jeudi');

-- --------------------------------------------------------

--
-- Structure de la table `semestre`
--

CREATE TABLE IF NOT EXISTS `semestre` (
  `id_semestre` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(30) NOT NULL,
  `libelle_semestre` varchar(15) DEFAULT NULL,
  `date_debut_sem` date DEFAULT NULL,
  `date_fin_sem` date DEFAULT NULL,
  `id_formation` int(11) NOT NULL,
  PRIMARY KEY (`id_semestre`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Contenu de la table `semestre`
--

INSERT INTO `semestre` (`id_semestre`, `session`, `libelle_semestre`, `date_debut_sem`, `date_fin_sem`, `id_formation`) VALUES
(55, 'sep2014', 'S1', '2017-08-01', '2017-08-31', 29),
(57, 'sep2014', 'S1', '2017-08-07', '2018-08-31', 30),
(59, 'sep2017', 'S1', '2017-08-07', '2017-08-22', 31),
(60, 'sep2017', 'S1', '2017-08-16', '2017-11-23', 32);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` varchar(5) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `tel` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_user`, `civilite`, `nom`, `prenom`, `tel`, `email`) VALUES
(14, 'M', 'admin', 'admin', 554667200, 'admin@gmail.com'),
(29, 'M', 'tigrine', 'juba', 554667200, 'tih@yahoo.fr'),
(30, 'M', 'tigrine', 'massi', 554667200, 'ti@yahoo.fr'),
(31, 'M', 'tigrine', 'massib', 561105418, 'dfg@homail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
