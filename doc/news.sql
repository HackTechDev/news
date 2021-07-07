-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Mer 07 Juillet 2021 à 09:17
-- Version du serveur :  5.7.33-0ubuntu0.18.04.1
-- Version de PHP :  7.3.27-9+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `newshacklab`
--

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `author`, `title`, `summary`, `content`, `link`, `image1`, `image2`, `video1`, `video2`, `tag`, `created_at`) VALUES
(1, 'Samuel', 'Linux Magazine N° 250 du 3 juillet 2021', 'Magazine dédié exclusivement aux experts en programmation sous Linux (concurrent à Microsoft Windows). Premier magazine Linux en France (1998). Conseils, dossiers thématiques, livres, explications.', NULL, 'https://www.journaux.fr/linux-magazine_linux_informatique_85042.html', 'https://images.journaux.fr/articles/1000x1000/L9275.jpg', NULL, NULL, NULL, 'Linux, Magazine', '2021-07-07 00:00:00'),
(2, 'Samuel', 'Linux Pratique Essentiel N° 126 du 6 juillet 2021', 'Magazine dédié exclusivement aux utilisateurs avertis de logiciels libres sous Linux (concurrent à Microsoft Windows). Magazine leader en France sur le segment LINUX. Actualités, découverte, audio/vidéo, outils internet, configuration.', NULL, 'https://www.journaux.fr/linux-pratique-essentiel_linux_informatique_92979.html', 'https://images.journaux.fr/articles/1000x1000/L8864.jpg', NULL, NULL, NULL, 'Linux, Magazine', '2021-07-07 00:00:00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
