-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 11 fév. 2021 à 16:24
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `nowaste`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taille` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `couleur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `nom`, `taille`, `couleur`, `stock`, `categorie`, `image`, `prix`) VALUES
(7, 'Clou', '10cm', 'gris', 25, 'quinquaillerie', 'telechargement-60253ed0a3669.jpg', 2),
(8, 'vis', '5cm', 'gris', 15, 'quinquaillerie', 'telechargement-5-60253f03ddd1c.jpg', 3),
(9, 'écrou', '15cm', 'gris', 27, 'quinquaillerie', 'telechargement-6-60253f865f3c7.jpg', 4),
(10, 'gazon', '20  m²', 'vert', 3, 'jardin', 'telechargement-1-60254010e674e.jpg', 40),
(11, 'Carrelage', '50 cm²', 'blanc', 14, 'matériaux', 'telechargement-4-602540adb06b0.jpg', 25),
(13, 'évier', '150cm', 'noir', 1, 'cuisine', 'telechargement-7-6025431db9c75.jpg', 50),
(14, 'robinet', '30cm', 'gris', 3, 'cuisine', 'telechargement-3-60254356da6f4.jpg', 15),
(15, 'terreau', '40L', 'marron', 27, 'jardin', 'telechargement-2-6025445567d6b.jpg', 20),
(16, 'ciment', '25kg', 'gris', 50, 'matériaux', 'telechargement-8-602545634c65a.jpg', 24),
(17, 'béton', '25kg', 'gris', 56, 'matériaux', 'telechargement-9-60254593a6721.jpg', 26),
(18, 'joint', '200g', 'blanc', 34, 'matériaux', 'telechargement-10-602545f2935f7.jpg', 10),
(19, 'planche', '2m', 'bois', 46, 'matériaux', 'telechargement-11-60254622d72c3.jpg', 14),
(20, 'perceuse', '60cm', 'noir / vert', 2, 'Outillages', 'telechargement-12-602548fbc42c2.jpg', 65);

-- --------------------------------------------------------

--
-- Structure de la table `article_mots_cles`
--

CREATE TABLE `article_mots_cles` (
  `article_id` int(11) NOT NULL,
  `mots_cles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `contenu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `actif` tinyint(1) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rgpd` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210111151129', '2021-01-11 16:11:51', 115),
('DoctrineMigrations\\Version20210111152257', '2021-01-11 16:26:45', 164),
('DoctrineMigrations\\Version20210111153641', '2021-01-11 16:39:19', 142),
('DoctrineMigrations\\Version20210111161010', '2021-01-11 17:10:17', 142),
('DoctrineMigrations\\Version20210119134324', '2021-01-19 14:43:43', 772),
('DoctrineMigrations\\Version20210119134810', '2021-01-19 14:48:15', 161),
('DoctrineMigrations\\Version20210121132322', '2021-01-21 14:23:41', 108),
('DoctrineMigrations\\Version20210121133054', '2021-01-21 14:31:01', 58),
('DoctrineMigrations\\Version20210121133134', '2021-01-21 14:31:39', 49),
('DoctrineMigrations\\Version20210121145752', '2021-01-21 15:58:00', 52),
('DoctrineMigrations\\Version20210121154027', '2021-01-21 16:40:38', 137),
('DoctrineMigrations\\Version20210121163142', '2021-01-21 17:31:56', 84),
('DoctrineMigrations\\Version20210121163413', '2021-01-21 17:34:21', 56),
('DoctrineMigrations\\Version20210121172056', '2021-01-21 18:21:13', 49),
('DoctrineMigrations\\Version20210124180116', '2021-01-24 19:01:35', 259),
('DoctrineMigrations\\Version20210124180625', '2021-01-24 19:06:33', 81),
('DoctrineMigrations\\Version20210125143859', '2021-01-25 15:39:12', 321);

-- --------------------------------------------------------

--
-- Structure de la table `mots_cles`
--

CREATE TABLE `mots_cles` (
  `id` int(11) NOT NULL,
  `mot_cle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `roles`, `password`, `username`) VALUES
(3, 'admin@admin.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Si5uUjZzWGV6VWVCbnB5VA$ZrbU3CmWuJb+VRW01JOBsSpFmJ/EzfPzm4rNBra2fOE', 'admin'),
(4, 'benjamin.chancerel@ynov.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$aVF0cmszRmtxNC8wYmI3cw$U0kkpqljME4p5P+eRf3PQrQetgoDOaB7IC2mmINnvKE', 'Jaminator');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `article_mots_cles`
--
ALTER TABLE `article_mots_cles`
  ADD PRIMARY KEY (`article_id`,`mots_cles_id`),
  ADD KEY `IDX_ED196EE7294869C` (`article_id`),
  ADD KEY `IDX_ED196EEC0BE80DB` (`mots_cles_id`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D9BEC0C47294869C` (`article_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `mots_cles`
--
ALTER TABLE `mots_cles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_1483A5E9E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `mots_cles`
--
ALTER TABLE `mots_cles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article_mots_cles`
--
ALTER TABLE `article_mots_cles`
  ADD CONSTRAINT `FK_ED196EE7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_ED196EEC0BE80DB` FOREIGN KEY (`mots_cles_id`) REFERENCES `mots_cles` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `FK_D9BEC0C47294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
