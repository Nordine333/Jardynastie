-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 17 déc. 2021 à 10:40
-- Version du serveur :  10.3.31-MariaDB-0ubuntu0.20.04.1-log
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `p2008210`
--

-- --------------------------------------------------------

--
-- Structure de la table `ADAPTER`
--

CREATE TABLE `ADAPTER` (
  `nomv` varchar(90) NOT NULL,
  `typesol` varchar(90) NOT NULL,
  `adaptation` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `COUVRIR`
--

CREATE TABLE `COUVRIR` (
  `numrang` varchar(90) NOT NULL,
  `nomplante` varchar(90) NOT NULL,
  `periode` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `JARDIN`
--

CREATE TABLE `JARDIN` (
  `idjardin` varchar(90) NOT NULL,
  `nom` varchar(90) DEFAULT NULL,
  `longueurj` varchar(90) DEFAULT NULL,
  `largeurj` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `MENACE`
--

CREATE TABLE `MENACE` (
  `nummenace` varchar(90) NOT NULL,
  `descriptionm` varchar(90) DEFAULT NULL,
  `solutionm` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `OCCUPER`
--

CREATE TABLE `OCCUPER` (
  `numrang` varchar(90) NOT NULL,
  `nomv` varchar(90) NOT NULL,
  `typemiseenplace` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `ORNEMENTS`
--

CREATE TABLE `ORNEMENTS` (
  `idjardin` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `PARCELLE`
--

CREATE TABLE `PARCELLE` (
  `idParcelle` int(11) NOT NULL,
  `latitudep` varchar(90) DEFAULT NULL,
  `longitudep` varchar(90) DEFAULT NULL,
  `longueurp` varchar(90) DEFAULT NULL,
  `largeurp` varchar(90) DEFAULT NULL,
  `idjardin` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `PLANTE`
--

CREATE TABLE `PLANTE` (
  `nomplante` varchar(90) NOT NULL,
  `nomlatin` varchar(90) DEFAULT NULL,
  `categorie` varchar(90) DEFAULT NULL,
  `typeplante` varchar(90) DEFAULT NULL,
  `soustype` varchar(90) DEFAULT NULL,
  `bonus` varchar(90) DEFAULT NULL,
  `malus` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `POTAGER`
--

CREATE TABLE `POTAGER` (
  `idjardin` varchar(90) NOT NULL,
  `typedesol` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `PRODUIRE`
--

CREATE TABLE `PRODUIRE` (
  `nomsemancier` varchar(90) NOT NULL,
  `nomv` varchar(90) NOT NULL,
  `version` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RANG`
--

CREATE TABLE `RANG` (
  `idParcelle` int(11) NOT NULL,
  `numrang` varchar(90) NOT NULL,
  `latituder` varchar(90) DEFAULT NULL,
  `longituder` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `RECOLTE`
--

CREATE TABLE `RECOLTE` (
  `nomv` varchar(90) NOT NULL,
  `idjardin` varchar(90) NOT NULL,
  `qualité` varchar(90) NOT NULL,
  `quantité` varchar(90) DEFAULT NULL,
  `commentaire` varchar(90) DEFAULT NULL,
  `idParcelle` int(11) NOT NULL,
  `numrang` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `SEMANCIER`
--

CREATE TABLE `SEMANCIER` (
  `nomsemancier` varchar(90) NOT NULL,
  `siteweb` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `SUBIR`
--

CREATE TABLE `SUBIR` (
  `nomplante` varchar(90) NOT NULL,
  `nummenace` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `VARIÉTÉ`
--

CREATE TABLE `VARIÉTÉ` (
  `nomv` varchar(90) CHARACTER SET utf8 NOT NULL,
  `annéev` varchar(90) DEFAULT NULL,
  `précocité` varchar(90) DEFAULT NULL,
  `semis` varchar(90) DEFAULT NULL,
  `plantation` varchar(90) DEFAULT NULL,
  `entretien` varchar(90) DEFAULT NULL,
  `récolte` varchar(90) DEFAULT NULL,
  `nbjourslever` int(90) DEFAULT NULL,
  `périodemiseenplace` varchar(90) DEFAULT NULL,
  `périoderécolte` varchar(90) DEFAULT NULL,
  `commentaire` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `VERGER`
--

CREATE TABLE `VERGER` (
  `idjardin` varchar(90) NOT NULL,
  `hauteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `ADAPTER`
--
ALTER TABLE `ADAPTER`
  ADD PRIMARY KEY (`nomv`),
  ADD KEY `nomv` (`nomv`);

--
-- Index pour la table `COUVRIR`
--
ALTER TABLE `COUVRIR`
  ADD PRIMARY KEY (`numrang`),
  ADD KEY `nomplante` (`nomplante`);

--
-- Index pour la table `JARDIN`
--
ALTER TABLE `JARDIN`
  ADD PRIMARY KEY (`idjardin`);

--
-- Index pour la table `MENACE`
--
ALTER TABLE `MENACE`
  ADD PRIMARY KEY (`nummenace`);

--
-- Index pour la table `OCCUPER`
--
ALTER TABLE `OCCUPER`
  ADD PRIMARY KEY (`numrang`,`nomv`),
  ADD KEY `nomv` (`nomv`);

--
-- Index pour la table `ORNEMENTS`
--
ALTER TABLE `ORNEMENTS`
  ADD PRIMARY KEY (`idjardin`),
  ADD KEY `idjardin` (`idjardin`);

--
-- Index pour la table `PARCELLE`
--
ALTER TABLE `PARCELLE`
  ADD PRIMARY KEY (`idParcelle`,`idjardin`),
  ADD KEY `idjardin` (`idjardin`);

--
-- Index pour la table `PLANTE`
--
ALTER TABLE `PLANTE`
  ADD PRIMARY KEY (`nomplante`);

--
-- Index pour la table `POTAGER`
--
ALTER TABLE `POTAGER`
  ADD PRIMARY KEY (`idjardin`),
  ADD KEY `idjardin` (`idjardin`);

--
-- Index pour la table `PRODUIRE`
--
ALTER TABLE `PRODUIRE`
  ADD PRIMARY KEY (`nomsemancier`,`nomv`),
  ADD UNIQUE KEY `nomv` (`nomv`),
  ADD KEY `nomsemancier` (`nomsemancier`);

--
-- Index pour la table `RANG`
--
ALTER TABLE `RANG`
  ADD PRIMARY KEY (`numrang`,`idParcelle`) USING BTREE,
  ADD KEY `idParcelle` (`idParcelle`);

--
-- Index pour la table `RECOLTE`
--
ALTER TABLE `RECOLTE`
  ADD PRIMARY KEY (`nomv`,`idjardin`,`idParcelle`,`numrang`),
  ADD KEY `nomv` (`nomv`,`idjardin`,`idParcelle`,`numrang`);

--
-- Index pour la table `SEMANCIER`
--
ALTER TABLE `SEMANCIER`
  ADD PRIMARY KEY (`nomsemancier`);

--
-- Index pour la table `SUBIR`
--
ALTER TABLE `SUBIR`
  ADD PRIMARY KEY (`nomplante`,`nummenace`),
  ADD UNIQUE KEY `nomplante` (`nomplante`),
  ADD KEY `nummenace` (`nummenace`);

--
-- Index pour la table `VARIÉTÉ`
--
ALTER TABLE `VARIÉTÉ`
  ADD PRIMARY KEY (`nomv`);

--
-- Index pour la table `VERGER`
--
ALTER TABLE `VERGER`
  ADD PRIMARY KEY (`idjardin`),
  ADD UNIQUE KEY `idjardin` (`idjardin`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `ADAPTER`
--
ALTER TABLE `ADAPTER`
  ADD CONSTRAINT `ADAPTER_ibfk_1` FOREIGN KEY (`nomv`) REFERENCES `VARIÉTÉ` (`nomv`);

--
-- Contraintes pour la table `COUVRIR`
--
ALTER TABLE `COUVRIR`
  ADD CONSTRAINT `COUVRIR_ibfk_1` FOREIGN KEY (`nomplante`) REFERENCES `PLANTE` (`nomplante`),
  ADD CONSTRAINT `COUVRIR_ibfk_2` FOREIGN KEY (`numrang`) REFERENCES `RANG` (`numrang`);

--
-- Contraintes pour la table `OCCUPER`
--
ALTER TABLE `OCCUPER`
  ADD CONSTRAINT `OCCUPER_ibfk_1` FOREIGN KEY (`nomv`) REFERENCES `VARIÉTÉ` (`nomv`),
  ADD CONSTRAINT `OCCUPER_ibfk_2` FOREIGN KEY (`numrang`) REFERENCES `RANG` (`numrang`);

--
-- Contraintes pour la table `POTAGER`
--
ALTER TABLE `POTAGER`
  ADD CONSTRAINT `POTAGER_ibfk_1` FOREIGN KEY (`idjardin`) REFERENCES `JARDIN` (`idjardin`);

--
-- Contraintes pour la table `PRODUIRE`
--
ALTER TABLE `PRODUIRE`
  ADD CONSTRAINT `PRODUIRE_ibfk_1` FOREIGN KEY (`nomv`) REFERENCES `VARIÉTÉ` (`nomv`),
  ADD CONSTRAINT `PRODUIRE_ibfk_2` FOREIGN KEY (`nomsemancier`) REFERENCES `SEMANCIER` (`nomsemancier`);

--
-- Contraintes pour la table `SUBIR`
--
ALTER TABLE `SUBIR`
  ADD CONSTRAINT `SUBIR_ibfk_1` FOREIGN KEY (`nummenace`) REFERENCES `MENACE` (`nummenace`),
  ADD CONSTRAINT `SUBIR_ibfk_2` FOREIGN KEY (`nomplante`) REFERENCES `PLANTE` (`nomplante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
