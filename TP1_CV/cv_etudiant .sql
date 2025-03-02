-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 02 mars 2025 à 03:44
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
-- Base de données : `cv_etudiant`
--

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

CREATE TABLE `competences` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `competence` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `competences`
--

INSERT INTO `competences` (`id`, `email`, `competence`) VALUES
(27, 'asmae.aboulkacem@etu.uae.ac.ma', 'kkkkkllsllkls'),
(28, 'asmae.aboulkacem@etu.uae.ac.ma', 'kkkkkllsllkls'),
(29, 'asmae.aboulkacem@etu.uae.ac.ma', 'kkkkkllsllkls'),
(30, 'asmae.aboulkacem@etu.uae.ac.ma', 'kkkkkllsllkls'),
(31, 'asmae.aboulkacem@etu.uae.ac.ma', 'kkkkkllsllkls'),
(32, 'asmae.aboulkacem@etu.uae.ac.ma', 'kkkkkllsllkls'),
(33, 'asmae.aboulkacem@etu.uae.ac.ma', 'kkkkkllsllkls'),
(34, 'asmae.aboulkacem@etu.uae.ac.ma', 'kkkkkllsllkls');

-- --------------------------------------------------------

--
-- Structure de la table `etudiants`
--

CREATE TABLE `etudiants` (
  `email` varchar(255) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `adresse` varchar(255) DEFAULT NULL,
  `profile` text DEFAULT NULL,
  `linkedin` varchar(355) NOT NULL,
  `github` varchar(355) NOT NULL,
  `photo` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `etudiants`
--

INSERT INTO `etudiants` (`email`, `nom`, `prenom`, `age`, `telephone`, `adresse`, `profile`, `linkedin`, `github`, `photo`) VALUES
('asmae.aboulkacem@etu.uae.ac.ma', 'Aboulkacem', 'Asmae', 22, '0677768411', 'av tizi ouasli lot mounia mhannech 2  n 190 Tétouan', 'kkkkkllsllkls', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nbr_entreprise` int(30) NOT NULL,
  `entreprise` varchar(255) NOT NULL,
  `poste` varchar(255) NOT NULL,
  `localisation` varchar(255) DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `experiences`
--

INSERT INTO `experiences` (`id`, `email`, `nbr_entreprise`, `entreprise`, `poste`, `localisation`, `date_debut`, `date_fin`, `description`) VALUES
(14, 'asmae.aboulkacem@etu.uae.ac.ma', 0, 'kkkkkllsllkls', 'kkkkkllsllkls', 'kkkkkllsllkls', '2025-02-23', '0000-00-00', '2025-02-05'),
(15, 'asmae.aboulkacem@etu.uae.ac.ma', 1, 'kcmdkmcdkmd', 'kksksks', 'kkkkkllsllkls', '2025-03-14', '0000-00-00', '2025-02-25'),
(16, 'asmae.aboulkacem@etu.uae.ac.ma', 1, 'kkkkkllsllkls', 'kksksks', 'kkkkkllsllkls', '2025-02-25', '2025-03-14', 'kcmdkmcdkmd'),
(17, 'asmae.aboulkacem@etu.uae.ac.ma', 1, 'kkkkkllsllkls', 'kksksks', 'kkkkkllsllkls', '2025-02-25', '2025-03-14', 'kcmdkmcdkmd');

-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE `formations` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `niveau` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `formations`
--

INSERT INTO `formations` (`id`, `email`, `niveau`, `module`) VALUES
(6, 'asmae.aboulkacem@etu.uae.ac.ma', 'niveau_3', 'reseauxAv'),
(7, 'asmae.aboulkacem@etu.uae.ac.ma', 'niveau_3', 'compilation'),
(8, 'asmae.aboulkacem@etu.uae.ac.ma', 'niveau_3', 'compilation'),
(9, 'asmae.aboulkacem@etu.uae.ac.ma', 'niveau_3', 'compilation');

-- --------------------------------------------------------

--
-- Structure de la table `interets`
--

CREATE TABLE `interets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `interet` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `interets`
--

INSERT INTO `interets` (`id`, `email`, `interet`) VALUES
(29, 'asmae.aboulkacem@etu.uae.ac.ma', 'kkkkkllsllkls'),
(30, 'asmae.aboulkacem@etu.uae.ac.ma', 'kkkkkllsllkls'),
(31, 'asmae.aboulkacem@etu.uae.ac.ma', 'oldldld'),
(32, 'asmae.aboulkacem@etu.uae.ac.ma', 'kksksks'),
(33, 'asmae.aboulkacem@etu.uae.ac.ma', 'oldldld'),
(34, 'asmae.aboulkacem@etu.uae.ac.ma', 'kksksks'),
(35, 'asmae.aboulkacem@etu.uae.ac.ma', 'oldldld'),
(36, 'asmae.aboulkacem@etu.uae.ac.ma', 'kksksks');

-- --------------------------------------------------------

--
-- Structure de la table `langues`
--

CREATE TABLE `langues` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `langue` varchar(100) NOT NULL,
  `niveau` enum('debutant','intermediaire','avance') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `langues`
--

INSERT INTO `langues` (`id`, `email`, `langue`, `niveau`) VALUES
(25, 'asmae.aboulkacem@etu.uae.ac.ma', 'kkkkkllsllkls', 'intermediaire'),
(26, 'asmae.aboulkacem@etu.uae.ac.ma', 'kkkkkllsllkls', 'intermediaire'),
(27, 'asmae.aboulkacem@etu.uae.ac.ma', 'kkkkkllsllkls', 'debutant'),
(28, 'asmae.aboulkacem@etu.uae.ac.ma', 'arabe', 'debutant'),
(29, 'asmae.aboulkacem@etu.uae.ac.ma', 'anglais', 'debutant'),
(30, 'asmae.aboulkacem@etu.uae.ac.ma', 'francais', 'debutant'),
(31, 'asmae.aboulkacem@etu.uae.ac.ma', 'arabe', 'debutant'),
(32, 'asmae.aboulkacem@etu.uae.ac.ma', 'anglais', 'debutant'),
(33, 'asmae.aboulkacem@etu.uae.ac.ma', 'francais', 'debutant'),
(34, 'asmae.aboulkacem@etu.uae.ac.ma', 'arabe', 'debutant'),
(35, 'asmae.aboulkacem@etu.uae.ac.ma', 'anglais', 'debutant'),
(36, 'asmae.aboulkacem@etu.uae.ac.ma', 'francais', 'debutant');

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nbr_projet` int(30) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`id`, `email`, `nbr_projet`, `titre`, `date_debut`, `date_fin`, `description`) VALUES
(19, 'asmae.aboulkacem@etu.uae.ac.ma', 1, 'Asmae Aboulkacem', '2025-02-28', '2025-03-02', 'dkdkdkdkdk');

-- --------------------------------------------------------

--
-- Structure de la table `stages`
--

CREATE TABLE `stages` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nbr_stage` int(30) NOT NULL,
  `entreprise` varchar(255) NOT NULL,
  `localisation` varchar(255) DEFAULT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stages`
--

INSERT INTO `stages` (`id`, `email`, `nbr_stage`, `entreprise`, `localisation`, `date_debut`, `date_fin`, `description`) VALUES
(14, 'asmae.aboulkacem@etu.uae.ac.ma', 0, 'kkkkkllsllkls', 'kkkkkllsllkls', '2025-02-03', '2025-03-02', 'kkkkkllsllkls'),
(15, 'asmae.aboulkacem@etu.uae.ac.ma', 1, 'kkkkkllsllkls', 'kkkkkllsllkls', '2025-02-24', '2025-03-15', 'kdkdkdkdk'),
(16, 'asmae.aboulkacem@etu.uae.ac.ma', 1, 'kkkkkllsllkls', 'kkkkkllsllkls', '2025-02-24', '2025-03-15', 'kdkdkdkdk'),
(17, 'asmae.aboulkacem@etu.uae.ac.ma', 1, 'kkkkkllsllkls', 'kkkkkllsllkls', '2025-02-24', '2025-03-15', 'kdkdkdkdk');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `formations`
--
ALTER TABLE `formations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `interets`
--
ALTER TABLE `interets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `langues`
--
ALTER TABLE `langues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `competences`
--
ALTER TABLE `competences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `formations`
--
ALTER TABLE `formations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `interets`
--
ALTER TABLE `interets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `langues`
--
ALTER TABLE `langues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `competences`
--
ALTER TABLE `competences`
  ADD CONSTRAINT `competences_ibfk_1` FOREIGN KEY (`email`) REFERENCES `etudiants` (`email`) ON DELETE CASCADE;

--
-- Contraintes pour la table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_ibfk_1` FOREIGN KEY (`email`) REFERENCES `etudiants` (`email`) ON DELETE CASCADE;

--
-- Contraintes pour la table `formations`
--
ALTER TABLE `formations`
  ADD CONSTRAINT `formations_ibfk_1` FOREIGN KEY (`email`) REFERENCES `etudiants` (`email`) ON DELETE CASCADE;

--
-- Contraintes pour la table `interets`
--
ALTER TABLE `interets`
  ADD CONSTRAINT `interets_ibfk_1` FOREIGN KEY (`email`) REFERENCES `etudiants` (`email`) ON DELETE CASCADE;

--
-- Contraintes pour la table `langues`
--
ALTER TABLE `langues`
  ADD CONSTRAINT `langues_ibfk_1` FOREIGN KEY (`email`) REFERENCES `etudiants` (`email`) ON DELETE CASCADE;

--
-- Contraintes pour la table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `projets_ibfk_1` FOREIGN KEY (`email`) REFERENCES `etudiants` (`email`) ON DELETE CASCADE;

--
-- Contraintes pour la table `stages`
--
ALTER TABLE `stages`
  ADD CONSTRAINT `stages_ibfk_1` FOREIGN KEY (`email`) REFERENCES `etudiants` (`email`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
