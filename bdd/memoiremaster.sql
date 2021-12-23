-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 29 oct. 2021 à 02:46
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `memoiremaster`
--

-- --------------------------------------------------------

--
-- Structure de la table `disponibilite`
--

DROP TABLE IF EXISTS `disponibilite`;
CREATE TABLE IF NOT EXISTS `disponibilite` (
  `id_disp` int(11) NOT NULL AUTO_INCREMENT,
  `disponibilite` varchar(30) NOT NULL,
  `annee_uni` varchar(9) NOT NULL,
  `semestre` varchar(20) NOT NULL,
  `id_prof` int(11) NOT NULL,
  PRIMARY KEY (`id_disp`),
  KEY `FK_disponibilite_prof` (`id_prof`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `disponibilite`
--

INSERT INTO `disponibilite` (`id_disp`, `disponibilite`, `annee_uni`, `semestre`, `id_prof`) VALUES
(2, 'Samedi 9:30 - 11:00', '2019-2020', 'S1', 1),
(3, 'Samedi 11:20 - 12:50', '2019-2020', 'S1', 1),
(4, 'Samedi 13:00 - 14-30', '2019-2020', 'S1', 1),
(5, 'Samedi 14-40 - 16:10', '2019-2020', 'S1', 1),
(6, 'Samedi 16:20 - 17:50', '2019-2020', 'S1', 1),
(7, 'Dimanche 8:00 - 9:30', '2019-2020', 'S1', 1),
(8, 'Dimanche 9:30 - 11:00', '2019-2020', 'S1', 1),
(9, 'Dimanche 13:00 - 14-30', '2019-2020', 'S1', 1),
(10, 'Dimanche 14-40 - 16:10', '2019-2020', 'S1', 1),
(11, 'Dimanche 16:20 - 17:50', '2019-2020', 'S1', 1),
(12, 'Lundi 8:00 - 9:30', '2019-2020', 'S1', 1),
(13, 'Lundi 9:30 - 11:00', '2019-2020', 'S1', 1),
(14, 'Lundi 11:20 - 12:50', '2019-2020', 'S1', 1),
(15, 'Lundi 13:00 - 14-30', '2019-2020', 'S1', 1),
(16, 'Lundi 14-40 - 16:10', '2019-2020', 'S1', 1),
(17, 'Lundi 16:20 - 17:50', '2019-2020', 'S1', 1),
(18, 'Mardi 8:00 - 9:30', '2019-2020', 'S1', 1),
(19, 'Mardi 9:30 - 11:00', '2019-2020', 'S1', 1),
(20, 'Mardi 11:20 - 12:50', '2019-2020', 'S1', 1),
(21, 'Mardi 13:00 - 14-30', '2019-2020', 'S1', 1),
(22, 'Mardi 14-40 - 16:10', '2019-2020', 'S1', 1),
(23, 'Mercredi 8:00 - 9:30', '2019-2020', 'S1', 1),
(26, 'Mercredi 13:00 - 14-30', '2019-2020', 'S1', 1),
(27, 'Mercredi 16:20 - 17:50', '2019-2020', 'S1', 1),
(28, 'Jeudi 8:00 - 9:30', '2019-2020', 'S1', 1),
(29, 'Jeudi 9:30 - 11:00', '2019-2020', 'S1', 1),
(30, 'Jeudi 11:20 - 12:50', '2019-2020', 'S1', 1),
(31, 'Jeudi 13:00 - 14-30', '2019-2020', 'S1', 1),
(32, 'Jeudi 14-40 - 16:10', '2019-2020', 'S1', 1);

-- --------------------------------------------------------

--
-- Structure de la table `enseignement`
--

DROP TABLE IF EXISTS `enseignement`;
CREATE TABLE IF NOT EXISTS `enseignement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_prof` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `id_semestre` int(11) NOT NULL,
  `id_formation` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_enseigne_formation` (`id_formation`),
  KEY `FK_enseigne_module` (`id_module`),
  KEY `FK_enseigne_prof` (`id_prof`),
  KEY `FK_enseigne_semestre` (`id_semestre`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `enseignement`
--

INSERT INTO `enseignement` (`id`, `id_prof`, `id_module`, `id_semestre`, `id_formation`) VALUES
(3, 3, 2, 1, 1),
(4, 3, 3, 1, 1),
(5, 5, 3, 1, 1),
(9, 9, 2, 1, 1),
(11, 11, 3, 1, 1),
(13, 15, 3, 1, 1),
(15, 19, 2, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id_formation` int(11) NOT NULL AUTO_INCREMENT,
  `nom_formation` varchar(50) NOT NULL,
  `cycle` varchar(10) NOT NULL,
  `nbre_semestre` int(5) NOT NULL,
  PRIMARY KEY (`id_formation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `formation`
--

INSERT INTO `formation` (`id_formation`, `nom_formation`, `cycle`, `nbre_semestre`) VALUES
(1, 'gÃ©nie logiciel', 'Master', 3),
(2, 'ASR', 'Master', 4),
(3, 'IA', 'Master', 3);

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

DROP TABLE IF EXISTS `groupe`;
CREATE TABLE IF NOT EXISTS `groupe` (
  `id_groupe` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_groupe` varchar(15) DEFAULT NULL,
  `id_formation` int(11) DEFAULT NULL,
  `id_semestre` int(11) DEFAULT NULL,
  `id_section` int(11) NOT NULL,
  PRIMARY KEY (`id_groupe`),
  KEY `FK_groupe_formation` (`id_formation`),
  KEY `FK_groupe_gestion_section` (`id_section`),
  KEY `FK_groupe_semestre` (`id_semestre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id_groupe`, `libelle_groupe`, `id_formation`, `id_semestre`, `id_section`) VALUES
(1, 'groupe1', 1, 1, 1),
(2, 'groupe2', 1, 1, 1),
(3, 'groupe1', 2, 1, 2),
(4, 'groupe4', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(30) NOT NULL,
  `passe` varchar(30) NOT NULL,
  `statut` varchar(15) NOT NULL,
  `Num` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pseudo` (`pseudo`),
  UNIQUE KEY `UniqueNum` (`Num`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`id`, `pseudo`, `passe`, `statut`, `Num`) VALUES
(1, 'admin', 'admin', 'Admin', 2),
(2, 'wizza', 'wizza', 'Admin', 4),
(3, 'massi', 'massi', 'Etudiant', 6),
(4, 'liza', 'liza', 'Etudiant', 8),
(5, 'achour', 'achour', 'prof', 1),
(6, 'badrina', 'badrina', 'prof', 3),
(7, 'slimani', 'slimani', 'prof', 5),
(8, 'boukerram', 'boukerram', 'prof', 7),
(9, 'sider', 'sider', 'prof', 9),
(10, 'touazi', 'touazi', 'prof', 11),
(11, 'mir', 'mir', 'prof', 13),
(12, 'kamal', 'kamal', 'prof', 15),
(13, 'allem', 'allem', 'prof', 17),
(14, 'louiza', 'louiza', 'prof', 19);

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE IF NOT EXISTS `module` (
  `id_module` int(11) NOT NULL AUTO_INCREMENT,
  `id_formation` int(11) NOT NULL,
  `libelle_module` varchar(50) NOT NULL,
  `volume_horaire` int(5) NOT NULL,
  `id_semestre` int(11) NOT NULL,
  PRIMARY KEY (`id_module`),
  KEY `FK_module_formation` (`id_formation`),
  KEY `FK_module_semestre` (`id_semestre`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `module`
--

INSERT INTO `module` (`id_module`, `id_formation`, `libelle_module`, `volume_horaire`, `id_semestre`) VALUES
(2, 1, 'services web', 17, 1),
(3, 1, 'reseaux', 24, 1);

-- --------------------------------------------------------

--
-- Structure de la table `prof`
--

DROP TABLE IF EXISTS `prof`;
CREATE TABLE IF NOT EXISTS `prof` (
  `id_prof` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` varchar(5) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `tel` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_prof`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `prof`
--

INSERT INTO `prof` (`id_prof`, `civilite`, `nom`, `prenom`, `tel`, `email`) VALUES
(1, 'M', 'ACHROUFENE', 'Achour', 666551212, 'achour@gmail.com'),
(3, 'Me', 'GASMI', 'Badrina', 666551212, 'badrina@gmail.com'),
(5, 'M', 'SLIMANI', 'Hachem', 666551212, 'slimani@gmail.com'),
(7, 'M', 'BOUKERRAM', 'Pr. Abdellah', 612551212, 'aze@gmail.com'),
(9, 'M', 'SIDER', 'Abderrahman', 612551212, 'sider@gmail.com'),
(11, 'M', 'TOUAZI', 'Djoudi', 666551212, 'aaff@gmail.com'),
(13, 'M', 'MIR', 'Foudil', 666551212, 'mir@gmail.com'),
(15, 'M', 'MEHAOUED', 'Kamal', 560691345, 'kamal@gmail.com'),
(17, 'M', 'ALLEM', 'Khaled ', 560691345, 'allem@gmail.com'),
(19, 'Me', 'BOUALLOUCHE', 'Pr. Louiza', 666551212, 'louiza@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

DROP TABLE IF EXISTS `salle`;
CREATE TABLE IF NOT EXISTS `salle` (
  `id_salle` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_salle` varchar(15) NOT NULL,
  `type` varchar(15) NOT NULL,
  `bloc` varchar(15) NOT NULL,
  `capacite` int(5) NOT NULL,
  PRIMARY KEY (`id_salle`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id_salle`, `libelle_salle`, `type`, `bloc`, `capacite`) VALUES
(4, 'S121', 'TD', 'B5', 30),
(5, 'amphi 13', 'Cours', 'campus', 120),
(10, 'tp1', 'TP', 'B1', 15);

-- --------------------------------------------------------

--
-- Structure de la table `seance`
--

DROP TABLE IF EXISTS `seance`;
CREATE TABLE IF NOT EXISTS `seance` (
  `id_for` int(11) NOT NULL,
  `id_sem` int(11) NOT NULL,
  `id_gr` int(11) NOT NULL,
  `id_pr` int(11) NOT NULL,
  `id_mod` int(11) NOT NULL,
  `id_sal` int(11) NOT NULL,
  `id_sec` int(11) NOT NULL,
  `type` varchar(5) NOT NULL,
  `heure` varchar(15) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jour` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_seance_formation` (`id_for`),
  KEY `FK_seance_gestion_section` (`id_sec`),
  KEY `FK_seance_groupe` (`id_gr`),
  KEY `FK_seance_module` (`id_mod`),
  KEY `FK_seance_prof` (`id_pr`),
  KEY `FK_seance_salle` (`id_sal`),
  KEY `FK_seance_semestre` (`id_sem`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `seance`
--

INSERT INTO `seance` (`id_for`, `id_sem`, `id_gr`, `id_pr`, `id_mod`, `id_sal`, `id_sec`, `type`, `heure`, `id`, `jour`) VALUES
(1, 1, 1, 11, 3, 5, 1, 'Cours', '13:00-14-30', 42, 'Dimanche'),
(1, 1, 2, 11, 3, 5, 1, 'Cours', '13:00-14-30', 43, 'Dimanche'),
(1, 1, 4, 11, 3, 5, 1, 'Cours', '13:00-14-30', 44, 'Dimanche'),
(1, 1, 1, 3, 2, 5, 1, 'Cours', '09:40-11:10', 57, 'Dimanche'),
(1, 1, 2, 3, 2, 5, 1, 'Cours', '09:40-11:10', 58, 'Dimanche'),
(1, 1, 4, 3, 2, 5, 1, 'Cours', '09:40-11:10', 59, 'Dimanche');

-- --------------------------------------------------------

--
-- Structure de la table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `id_section` int(11) NOT NULL AUTO_INCREMENT,
  `lib_section` varchar(20) DEFAULT NULL,
  `id_formation` int(11) DEFAULT NULL,
  `id_semestre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_section`),
  KEY `FK_gestion_section_formation` (`id_formation`),
  KEY `FK_gestion_section_semestre` (`id_semestre`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `section`
--

INSERT INTO `section` (`id_section`, `lib_section`, `id_formation`, `id_semestre`) VALUES
(1, 'section A', 1, 1),
(2, 'section B', 2, 2),
(3, 'section A', 2, 2),
(4, 'section C', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `semestre`
--

DROP TABLE IF EXISTS `semestre`;
CREATE TABLE IF NOT EXISTS `semestre` (
  `id_semestre` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(30) NOT NULL,
  `libelle_semestre` varchar(20) DEFAULT NULL,
  `date_debut_sem` date DEFAULT NULL,
  `date_fin_sem` date DEFAULT NULL,
  `id_formation` int(11) NOT NULL,
  PRIMARY KEY (`id_semestre`),
  KEY `FK_semestre_formation` (`id_formation`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `semestre`
--

INSERT INTO `semestre` (`id_semestre`, `session`, `libelle_semestre`, `date_debut_sem`, `date_fin_sem`, `id_formation`) VALUES
(1, 'sept2024', 'S1', '2020-12-09', '2020-12-18', 1),
(2, 'sept2021', 'S1', '2020-09-16', '2021-02-11', 2),
(3, 'sept2021', 's3', '2020-11-10', '2021-01-13', 3),
(4, 'sept2021', 'S2', '2021-07-01', '2021-07-22', 2);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `civilite` varchar(5) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `tel` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_user`, `civilite`, `nom`, `prenom`, `tel`, `email`) VALUES
(2, 'M', 'admin', 'admin', 555697645, 'sadjaout18@gmail.com'),
(4, 'Mlle', 'wizza', 'wizza', 666551212, 'wizza.adj@hotmail.fr'),
(6, 'M', 'tigrine', 'massinissa', 666121212, 'massi@gmail.com'),
(8, 'Mlle', 'Maouche', 'lisa', 560691345, 'liza@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
