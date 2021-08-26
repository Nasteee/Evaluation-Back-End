-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Aug 26, 2021 at 02:54 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evaluation`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'Smartphone'),
(2, 'Accessoire');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210826081014', '2021-08-26 08:10:25', 218),
('DoctrineMigrations\\Version20210826084045', '2021-08-26 08:40:52', 157),
('DoctrineMigrations\\Version20210826085346', '2021-08-26 08:53:50', 338),
('DoctrineMigrations\\Version20210826131121', '2021-08-26 13:11:28', 109),
('DoctrineMigrations\\Version20210826135948', '2021-08-26 13:59:53', 139);

-- --------------------------------------------------------

--
-- Table structure for table `marque`
--

CREATE TABLE `marque` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marque`
--

INSERT INTO `marque` (`id`, `nom`) VALUES
(1, 'Samsung'),
(2, 'Apple'),
(3, 'Wiko'),
(4, 'Xiaomi'),
(5, 'Alcatel');

-- --------------------------------------------------------

--
-- Table structure for table `panier`
--

CREATE TABLE `panier` (
  `id` int(11) NOT NULL,
  `commande` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `panier`
--

INSERT INTO `panier` (`id`, `commande`) VALUES
(1, 'a:1:{i:0;O:18:\"App\\Entity\\Product\":9:{s:22:\"\0App\\Entity\\Product\0id\";i:2;s:23:\"\0App\\Entity\\Product\0nom\";s:9:\"Iphone 12\";s:24:\"\0App\\Entity\\Product\0prix\";i:799;s:25:\"\0App\\Entity\\Product\0stock\";i:12;s:25:\"\0App\\Entity\\Product\0image\";s:24:\"image6-612768e7083a1.png\";s:29:\"\0App\\Entity\\Product\0reference\";s:10:\"A486415615\";s:29:\"\0App\\Entity\\Product\0categorie\";O:35:\"Proxies\\__CG__\\App\\Entity\\Categorie\":4:{s:17:\"__isInitialized__\";b:0;s:24:\"\0App\\Entity\\Categorie\0id\";i:1;s:25:\"\0App\\Entity\\Categorie\0nom\";N;s:30:\"\0App\\Entity\\Categorie\0products\";N;}s:31:\"\0App\\Entity\\Product\0description\";s:75:\"Un super iphone de qualité supérieur aux fonctionnalités exceptionnels !\";s:26:\"\0App\\Entity\\Product\0marque\";O:32:\"Proxies\\__CG__\\App\\Entity\\Marque\":4:{s:17:\"__isInitialized__\";b:0;s:21:\"\0App\\Entity\\Marque\0id\";i:2;s:22:\"\0App\\Entity\\Marque\0nom\";N;s:27:\"\0App\\Entity\\Marque\0products\";N;}}}'),
(2, 'a:1:{i:0;O:18:\"App\\Entity\\Product\":9:{s:22:\"\0App\\Entity\\Product\0id\";i:1;s:23:\"\0App\\Entity\\Product\0nom\";s:11:\"Samsung S20\";s:24:\"\0App\\Entity\\Product\0prix\";i:850;s:25:\"\0App\\Entity\\Product\0stock\";i:25;s:25:\"\0App\\Entity\\Product\0image\";s:24:\"image5-612768da17de7.jpg\";s:29:\"\0App\\Entity\\Product\0reference\";s:10:\"S895632845\";s:29:\"\0App\\Entity\\Product\0categorie\";O:35:\"Proxies\\__CG__\\App\\Entity\\Categorie\":4:{s:17:\"__isInitialized__\";b:0;s:24:\"\0App\\Entity\\Categorie\0id\";i:1;s:25:\"\0App\\Entity\\Categorie\0nom\";N;s:30:\"\0App\\Entity\\Categorie\0products\";N;}s:31:\"\0App\\Entity\\Product\0description\";s:76:\"Un super samsung de qualité supérieur aux fonctionnalités exceptionnels !\";s:26:\"\0App\\Entity\\Product\0marque\";O:32:\"Proxies\\__CG__\\App\\Entity\\Marque\":4:{s:17:\"__isInitialized__\";b:0;s:21:\"\0App\\Entity\\Marque\0id\";i:1;s:22:\"\0App\\Entity\\Marque\0nom\";N;s:27:\"\0App\\Entity\\Marque\0products\";N;}}}'),
(3, 'a:1:{i:0;O:18:\"App\\Entity\\Product\":9:{s:22:\"\0App\\Entity\\Product\0id\";i:4;s:23:\"\0App\\Entity\\Product\0nom\";s:11:\"Alcatel A42\";s:24:\"\0App\\Entity\\Product\0prix\";i:250;s:25:\"\0App\\Entity\\Product\0stock\";i:42;s:25:\"\0App\\Entity\\Product\0image\";s:26:\"monimage-61275d7f482f5.jpg\";s:29:\"\0App\\Entity\\Product\0reference\";s:10:\"A852546565\";s:29:\"\0App\\Entity\\Product\0categorie\";O:35:\"Proxies\\__CG__\\App\\Entity\\Categorie\":4:{s:17:\"__isInitialized__\";b:0;s:24:\"\0App\\Entity\\Categorie\0id\";i:1;s:25:\"\0App\\Entity\\Categorie\0nom\";N;s:30:\"\0App\\Entity\\Categorie\0products\";N;}s:31:\"\0App\\Entity\\Product\0description\";s:41:\"Un alcatel tout naz qui tiens la batterie\";s:26:\"\0App\\Entity\\Product\0marque\";O:32:\"Proxies\\__CG__\\App\\Entity\\Marque\":4:{s:17:\"__isInitialized__\";b:0;s:21:\"\0App\\Entity\\Marque\0id\";i:5;s:22:\"\0App\\Entity\\Marque\0nom\";N;s:27:\"\0App\\Entity\\Marque\0products\";N;}}}'),
(4, 'a:1:{i:0;O:18:\"App\\Entity\\Product\":9:{s:22:\"\0App\\Entity\\Product\0id\";i:5;s:23:\"\0App\\Entity\\Product\0nom\";s:9:\"Iphone 10\";s:24:\"\0App\\Entity\\Product\0prix\";i:522;s:25:\"\0App\\Entity\\Product\0stock\";i:20;s:25:\"\0App\\Entity\\Product\0image\";s:24:\"image1-61276c5b39df1.jpg\";s:29:\"\0App\\Entity\\Product\0reference\";s:10:\"F656569856\";s:29:\"\0App\\Entity\\Product\0categorie\";O:35:\"Proxies\\__CG__\\App\\Entity\\Categorie\":4:{s:17:\"__isInitialized__\";b:0;s:24:\"\0App\\Entity\\Categorie\0id\";i:1;s:25:\"\0App\\Entity\\Categorie\0nom\";N;s:30:\"\0App\\Entity\\Categorie\0products\";N;}s:31:\"\0App\\Entity\\Product\0description\";s:26:\"Un Iphone 10 \r\n64GO\r\nBlanc\";s:26:\"\0App\\Entity\\Product\0marque\";O:32:\"Proxies\\__CG__\\App\\Entity\\Marque\":4:{s:17:\"__isInitialized__\";b:0;s:21:\"\0App\\Entity\\Marque\0id\";i:2;s:22:\"\0App\\Entity\\Marque\0nom\";N;s:27:\"\0App\\Entity\\Marque\0products\";N;}}}'),
(5, 'a:1:{i:0;O:18:\"App\\Entity\\Product\":9:{s:22:\"\0App\\Entity\\Product\0id\";i:2;s:23:\"\0App\\Entity\\Product\0nom\";s:9:\"Iphone 12\";s:24:\"\0App\\Entity\\Product\0prix\";i:799;s:25:\"\0App\\Entity\\Product\0stock\";i:12;s:25:\"\0App\\Entity\\Product\0image\";s:24:\"image6-612768e7083a1.png\";s:29:\"\0App\\Entity\\Product\0reference\";s:10:\"A486415615\";s:29:\"\0App\\Entity\\Product\0categorie\";O:35:\"Proxies\\__CG__\\App\\Entity\\Categorie\":4:{s:17:\"__isInitialized__\";b:0;s:24:\"\0App\\Entity\\Categorie\0id\";i:1;s:25:\"\0App\\Entity\\Categorie\0nom\";N;s:30:\"\0App\\Entity\\Categorie\0products\";N;}s:31:\"\0App\\Entity\\Product\0description\";s:75:\"Un super iphone de qualité supérieur aux fonctionnalités exceptionnels !\";s:26:\"\0App\\Entity\\Product\0marque\";O:32:\"Proxies\\__CG__\\App\\Entity\\Marque\":4:{s:17:\"__isInitialized__\";b:0;s:21:\"\0App\\Entity\\Marque\0id\";i:2;s:22:\"\0App\\Entity\\Marque\0nom\";N;s:27:\"\0App\\Entity\\Marque\0products\";N;}}}');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `marque_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `categorie_id`, `nom`, `prix`, `stock`, `image`, `reference`, `description`, `marque_id`) VALUES
(1, 1, 'Samsung S20', 850, 25, 'image5-612768da17de7.jpg', 'S895632845', 'Un super samsung de qualité supérieur aux fonctionnalités exceptionnels !', 1),
(2, 1, 'Iphone 12', 799, 12, 'image6-612768e7083a1.png', 'A486415615', 'Un super iphone de qualité supérieur aux fonctionnalités exceptionnels !', 2),
(3, 1, 'sgdfg', 665, 85, 'image2-612769d1ef707.jpg', 'fsdgsdfgsdfg', 'fsgsfdgsfdg', 1),
(4, 1, 'Alcatel A42', 250, 42, 'image5-6127a5fcd429e.jpg', 'A852546565', 'Un alcatel tout naz qui tiens la batterie', 5),
(5, 1, 'Iphone 10', 522, 20, 'image1-61276c5b39df1.jpg', 'F656569856', 'Un Iphone 10 \r\n64GO\r\nBlanc', 2),
(6, 2, 'Ecouteurs', 120, 12, 'pexels-katja-592077-61276e581311b.jpg', 'A85648648', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. At dicta, earum fugiat in nisi numquam quos temporibus voluptatem. Aperiam autem, eum fugit iusto minima quam repellendus reprehenderit rerum sequi voluptatibus.', 2),
(7, 2, 'Housse d\'iphone', 15, 32, 'MWYQ2-6127a4f3d62b5.jpg', 'd54648489', 'une housse de telephone pour iphone', 2),
(8, 1, 'Iphone 15', 2500, 2, 'image6-6127a62ab6dab.png', 'D48964566', 'Un iphone de plus', 2),
(9, 1, 'Samsung S40', 20, 56, 'image1-6127a6509d9a2.jpg', 'F4815664', 'Un samsung de qualité', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04ADBCF5E72D` (`categorie_id`),
  ADD KEY `IDX_D34A04AD4827B9B2` (`marque_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marque`
--
ALTER TABLE `marque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `panier`
--
ALTER TABLE `panier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD4827B9B2` FOREIGN KEY (`marque_id`) REFERENCES `marque` (`id`),
  ADD CONSTRAINT `FK_D34A04ADBCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
