-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 28 déc. 2024 à 22:33
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sae303`
--

-- --------------------------------------------------------

--
-- Structure de la table `caracteristique`
--

CREATE TABLE `caracteristique` (
  `Id_Caracteristique` int(11) NOT NULL,
  `Autres_caracteristiques` text DEFAULT NULL,
  `Stade_application` varchar(255) DEFAULT NULL,
  `RDD_OAD` varchar(255) DEFAULT NULL,
  `Nombre_application` int(11) DEFAULT NULL,
  `Dose_application` decimal(10,2) DEFAULT NULL,
  `Filiere` varchar(255) DEFAULT NULL,
  `Cultures` varchar(255) DEFAULT NULL,
  `Pleine_terre_abri` tinyint(1) DEFAULT NULL,
  `Periode_experimentation` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `caracteristique`
--

INSERT INTO `caracteristique` (`Id_Caracteristique`, `Autres_caracteristiques`, `Stade_application`, `RDD_OAD`, `Nombre_application`, `Dose_application`, `Filiere`, `Cultures`, `Pleine_terre_abri`, `Periode_experimentation`) VALUES
(1, NULL, 'En cas de pression modérée', NULL, NULL, NULL, 'Légumes', 'Laitue', 1, '2013-2018'),
(2, NULL, 'En cas de pression modérée', NULL, NULL, NULL, 'Légumes', 'Laitue', 1, '2013-2018'),
(3, NULL, NULL, NULL, NULL, NULL, 'Légumes', 'Tomate', 1, '2013-2018'),
(4, NULL, 'Application répétées', NULL, NULL, NULL, 'Légumes', 'Tomate', 1, '2013-2018'),
(5, NULL, NULL, NULL, NULL, NULL, 'Légumes', 'Toutes cultures leg', 1, '2013-2018');

-- --------------------------------------------------------

--
-- Structure de la table `cible`
--

CREATE TABLE `cible` (
  `Id_Cible` int(11) NOT NULL,
  `Groupe_cible` varchar(255) DEFAULT NULL,
  `Cible_principale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cible`
--

INSERT INTO `cible` (`Id_Cible`, `Groupe_cible`, `Cible_principale`) VALUES
(1, 'Ascomycètes', 'Botrytis cinerea'),
(2, 'Ascomycètes', 'Sclérotinia'),
(3, 'Lépidoptères', 'Mineuses'),
(4, 'Hémiptères', 'Aleurodes'),
(5, 'Lépidoptères', 'Noctuelles');

-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

CREATE TABLE `famille` (
  `Id_Famille` int(11) NOT NULL,
  `Nom_famille` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `famille`
--

INSERT INTO `famille` (`Id_Famille`, `Nom_famille`) VALUES
(1, 'Micro-organismes');

-- --------------------------------------------------------

--
-- Structure de la table `methode`
--

CREATE TABLE `methode` (
  `Id_Methode` int(11) NOT NULL,
  `Nom_methode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `methode`
--

INSERT INTO `methode` (`Id_Methode`, `Nom_methode`) VALUES
(1, 'Bacillus subtilis'),
(2, 'Bacillus subtilis'),
(3, 'Bacillus thuringiensis'),
(4, 'Lecanicillium muscarium'),
(5, 'Bacillus thuringiensis');

-- --------------------------------------------------------

--
-- Structure de la table `methode_caracteristique`
--

CREATE TABLE `methode_caracteristique` (
  `Id_Methode` int(11) NOT NULL,
  `Id_Caracteristique` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `methode_caracteristique`
--

INSERT INTO `methode_caracteristique` (`Id_Methode`, `Id_Caracteristique`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `methode_cible`
--

CREATE TABLE `methode_cible` (
  `Id_Methode` int(11) NOT NULL,
  `Id_Cible` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `methode_cible`
--

INSERT INTO `methode_cible` (`Id_Methode`, `Id_Cible`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `methode_famille`
--

CREATE TABLE `methode_famille` (
  `Id_Methode` int(11) NOT NULL,
  `Id_Famille` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `methode_famille`
--

INSERT INTO `methode_famille` (`Id_Methode`, `Id_Famille`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `methode_traitement`
--

CREATE TABLE `methode_traitement` (
  `Id_Methode` int(11) NOT NULL,
  `Id_Traitement` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `methode_traitement`
--

INSERT INTO `methode_traitement` (`Id_Methode`, `Id_Traitement`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE `projet` (
  `Id_Projet` int(11) NOT NULL,
  `Nom_projet` varchar(255) DEFAULT NULL,
  `Site_experimental` varchar(255) DEFAULT NULL,
  `Code_postale_site` varchar(10) DEFAULT NULL,
  `Nom_systeme` varchar(255) DEFAULT NULL,
  `Lien_fiche_systeme` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projet`
--

INSERT INTO `projet` (`Id_Projet`, `Nom_projet`, `Site_experimental`, `Code_postale_site`, `Nom_systeme`, `Lien_fiche_systeme`) VALUES
(1, '4SYSLEG', 'Domaine Expérimental Alénya-Roussillon', '66200', 'DivAB', 'https://ecophytopic.fr/sites/default/files/201...'),
(2, '4SYSLEG', 'Domaine Expérimental Alénya-Roussillon', '66200', 'DivAB', 'https://ecophytopic.fr/sites/default/files/201...');

-- --------------------------------------------------------

--
-- Structure de la table `projet_niveau_satisfaction`
--

CREATE TABLE `projet_niveau_satisfaction` (
  `Id_Projet` int(11) NOT NULL,
  `Niveau_satisfaction` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sous_famille`
--

CREATE TABLE `sous_famille` (
  `Id_Sous_famille` int(11) NOT NULL,
  `Nom_sous_famille` varchar(255) DEFAULT NULL,
  `Id_Famille` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sous_famille`
--

INSERT INTO `sous_famille` (`Id_Sous_famille`, `Nom_sous_famille`, `Id_Famille`) VALUES
(1, 'Préparation bactérienne', 1),
(2, 'Préparation bactérienne', 1),
(3, 'Préparation bactérienne', 1),
(4, 'Préparation fongique', 1),
(5, 'Préparation bactérienne', 1);

-- --------------------------------------------------------

--
-- Structure de la table `traitement`
--

CREATE TABLE `traitement` (
  `Id_Traitement` int(11) NOT NULL,
  `Type_traitement` varchar(255) DEFAULT NULL,
  `Partie_trainee` varchar(255) DEFAULT NULL,
  `Mode_action` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `traitement`
--

INSERT INTO `traitement` (`Id_Traitement`, `Type_traitement`, `Partie_trainee`, `Mode_action`) VALUES
(1, 'Fongicides', 'Aérienne', 'Antagonisme et stimulateur de défense des plantes'),
(2, 'Fongicides', 'Aérienne', 'Antagonisme et stimulateur de défense des plantes'),
(3, 'Insecticides', 'Aérienne', 'Ingestion'),
(4, 'Insecticides', 'Aérienne', 'Parasitisme'),
(5, 'Insecticides', 'Aérienne', 'Ingestion');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `caracteristique`
--
ALTER TABLE `caracteristique`
  ADD PRIMARY KEY (`Id_Caracteristique`);

--
-- Index pour la table `cible`
--
ALTER TABLE `cible`
  ADD PRIMARY KEY (`Id_Cible`);

--
-- Index pour la table `famille`
--
ALTER TABLE `famille`
  ADD PRIMARY KEY (`Id_Famille`);

--
-- Index pour la table `methode`
--
ALTER TABLE `methode`
  ADD PRIMARY KEY (`Id_Methode`);

--
-- Index pour la table `methode_caracteristique`
--
ALTER TABLE `methode_caracteristique`
  ADD PRIMARY KEY (`Id_Methode`,`Id_Caracteristique`),
  ADD KEY `Id_Caracteristique` (`Id_Caracteristique`);

--
-- Index pour la table `methode_cible`
--
ALTER TABLE `methode_cible`
  ADD PRIMARY KEY (`Id_Methode`,`Id_Cible`),
  ADD KEY `Id_Cible` (`Id_Cible`);

--
-- Index pour la table `methode_famille`
--
ALTER TABLE `methode_famille`
  ADD PRIMARY KEY (`Id_Methode`,`Id_Famille`),
  ADD KEY `Id_Famille` (`Id_Famille`);

--
-- Index pour la table `methode_traitement`
--
ALTER TABLE `methode_traitement`
  ADD PRIMARY KEY (`Id_Methode`,`Id_Traitement`),
  ADD KEY `Id_Traitement` (`Id_Traitement`);

--
-- Index pour la table `projet`
--
ALTER TABLE `projet`
  ADD PRIMARY KEY (`Id_Projet`);

--
-- Index pour la table `projet_niveau_satisfaction`
--
ALTER TABLE `projet_niveau_satisfaction`
  ADD PRIMARY KEY (`Id_Projet`);

--
-- Index pour la table `sous_famille`
--
ALTER TABLE `sous_famille`
  ADD PRIMARY KEY (`Id_Sous_famille`),
  ADD KEY `Id_Famille` (`Id_Famille`);

--
-- Index pour la table `traitement`
--
ALTER TABLE `traitement`
  ADD PRIMARY KEY (`Id_Traitement`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `methode_caracteristique`
--
ALTER TABLE `methode_caracteristique`
  ADD CONSTRAINT `methode_caracteristique_ibfk_1` FOREIGN KEY (`Id_Methode`) REFERENCES `methode` (`Id_Methode`),
  ADD CONSTRAINT `methode_caracteristique_ibfk_2` FOREIGN KEY (`Id_Caracteristique`) REFERENCES `caracteristique` (`Id_Caracteristique`);

--
-- Contraintes pour la table `methode_cible`
--
ALTER TABLE `methode_cible`
  ADD CONSTRAINT `methode_cible_ibfk_1` FOREIGN KEY (`Id_Methode`) REFERENCES `methode` (`Id_Methode`),
  ADD CONSTRAINT `methode_cible_ibfk_2` FOREIGN KEY (`Id_Cible`) REFERENCES `cible` (`Id_Cible`);

--
-- Contraintes pour la table `methode_famille`
--
ALTER TABLE `methode_famille`
  ADD CONSTRAINT `methode_famille_ibfk_1` FOREIGN KEY (`Id_Methode`) REFERENCES `methode` (`Id_Methode`),
  ADD CONSTRAINT `methode_famille_ibfk_2` FOREIGN KEY (`Id_Famille`) REFERENCES `famille` (`Id_Famille`);

--
-- Contraintes pour la table `methode_traitement`
--
ALTER TABLE `methode_traitement`
  ADD CONSTRAINT `methode_traitement_ibfk_1` FOREIGN KEY (`Id_Methode`) REFERENCES `methode` (`Id_Methode`),
  ADD CONSTRAINT `methode_traitement_ibfk_2` FOREIGN KEY (`Id_Traitement`) REFERENCES `traitement` (`Id_Traitement`);

--
-- Contraintes pour la table `projet_niveau_satisfaction`
--
ALTER TABLE `projet_niveau_satisfaction`
  ADD CONSTRAINT `projet_niveau_satisfaction_ibfk_1` FOREIGN KEY (`Id_Projet`) REFERENCES `projet` (`Id_Projet`);

--
-- Contraintes pour la table `sous_famille`
--
ALTER TABLE `sous_famille`
  ADD CONSTRAINT `sous_famille_ibfk_1` FOREIGN KEY (`Id_Famille`) REFERENCES `famille` (`Id_Famille`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
