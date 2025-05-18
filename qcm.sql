-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 17 avr. 2025 à 13:50
-- Version du serveur : 5.7.40
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `qcm`
--

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `idq` int(3) NOT NULL AUTO_INCREMENT,
  `libelleQ` varchar(255) NOT NULL,
  `niveau` int(11) NOT NULL,
  PRIMARY KEY (`idq`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`idq`, `libelleQ`, `niveau`) VALUES
(2, 'Quelle est la veritable identite du Titan Cuirasse ?', 0),
(1, 'Qui est le veritable chef de l\'organisation secrete qui dirige les evenements dans le monde de Shingeki no Kyojin ?', 1),
(3, 'Quel est le nom du pere d\'Eren Yeager, qui est aussi a l\'origine du pouvoir des Titans ?', 0),
(4, 'Qui est le chef de l\'unite speciale d\'exploration, chargee de decouvrir les secrets des Titans et de l\'histoire de l\'humanite ?', 1),
(5, 'Quel est le veritable nom du Capitaine Barbe Blanche ?', 0),
(6, 'Dans quelle mesure l\'amiral de la Marine, Fujitora, est-il lie a l\'equipage de Luffy ?', 1),
(7, 'Quel est le nom de la prime initiale de Luffy, lorsque son equipage est apparu pour la premiere fois a la fin de l\'arc d\'East Blue ?', 0),
(8, 'Qui est le createur du projet \"Pacifista\", qui sont des cyborgs construits a partir de Kuma Bartholomew ?', 1),
(9, 'Qui est le pere de Luffy du manga One Piece ?', 0),
(10, 'Quel est le nom du frere aine de Ron Weasley ?', 1),
(11, 'Qui est le directeur de l\'ecole de sorcellerie de Poudlard lorsque Harry Potter y est inscrit ?', 0),
(12, 'Qui est le proprietaire original du Journal de Tom Jedusor (le journal intime) ?', 0),
(13, 'Quel est le sortilege qui permet a Harry de communiquer avec le serpent dans \"Harry Potter et la Chambre des Secrets\" ?', 1),
(14, 'Qui est le directeur de l\'ecole de Durmstrang, ou Viktor Krum etudie avant de participer au Tournoi des Trois Sorciers dans \"Harry Potter et la Coupe de Feu\" ?', 0),
(15, 'Quelle est la marque de la voiture que conduit Walter White ?', 1),
(16, 'Comment s\'appelle le laboratoire clandestin ou Walter et Jesse cuisinent de la methamphetamine ?', 1),
(17, 'Qui est le chimiste associe a Walter White pour fabriquer de la methamphetamine ?', 0),
(18, 'Quel est le nom du restaurant fast-food ou travaille initialement Walter White ?', 0),
(19, 'Comment se nomme le personnage principal du manga Death Note ?', 1),
(20, 'Quelle actrice incarne le role de Eleven, une jeune fille aux pouvoirs psychiques ?', 0),
(21, 'Dans quelle prison Michael Scofield est-il emprisonne initialement ?', 0),
(22, 'Quelle entreprise a ete fondee par Elon Musk en 2002, qui est devenue l\'une des plus importantes entreprises de l\'industrie spatiale ?', 0),
(23, 'En plus de SpaceX, Elon Musk est egalement PDG d\'une autre entreprise de transport revolutionnaire. Laquelle ?', 1),
(24, 'Quel projet vise a connecter le cerveau humain directement a un ordinateur via une interface cerveau-machine, et est dirige par Elon Musk ?', 0),
(25, 'Quelle est la nationalite d\'Elon Musk ?', 1),
(26, 'Quelle est la plus grande ile du monde en superficie ?', 0),
(27, 'Quelle est la capitale du Canada ?', 0),
(28, 'Lequel de ces jeux videos de simulation n\'existe pas ?', 0),
(29, 'Qui est le personnage principal du manga Dr. Stone ?', 0),
(30, 'Lequel de ces joueurs ne fait pas partie de l\'equipe francaise d\'Overwatch ?', 0),
(31, 'Quel est le titre du premier film de la saga \"Harry Potter\" ?', 0),
(32, 'Combien de tomes compte la serie de livres Harry Potter ?', 0),
(33, 'Laquelle de ces consoles a ete la moins vendue ?', 0),
(34, 'Quand faut-il mettre les pates dans l\'eau ?', 0),
(35, 'Quel est le meilleur ami de l\'homme ?', 0),
(36, 'Qui a remporte l\'Oscar de la meilleure actrice pour son role dans \"La La Land\" en 2017 ?', 1),
(37, 'Avec quelle serie le jeu Bloons a-t-il collabore ?', 0),
(38, 'Qui a realise le film \"Fight Club\" ?', 1),
(39, 'Quel est le premier film de la trilogie \"Le Seigneur des Anneaux\" ?', 0),
(40, 'Quel film a remporte l\'Oscar du meilleur film en 2020 ?', 0),
(41, 'Quel acteur a remporte l\'Oscar du meilleur acteur en 2024 pour son role dans un film de science-fiction ?', 1),
(42, 'Qui a realiser la serie a succes \"The Time Traveler\'s Wife\" en 2024, adaptee du roman du meme nom ?', 1),
(43, 'Quelle actrice a ete recompensee du Golden Globe de la meilleure actrice dans une serie dramatique en 2024 pour son role dans \"The Crown\" ?', 1),
(44, 'Qui a remporte le prix du meilleur realisateur aux Oscars en 2024 pour son film dramatique sur la crise climatique, \"The Green Revolution\" ?', 1);

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

DROP TABLE IF EXISTS `reponses`;
CREATE TABLE IF NOT EXISTS `reponses` (
  `idr` int(3) NOT NULL AUTO_INCREMENT,
  `idq` int(3) NOT NULL,
  `libeller` varchar(255) NOT NULL,
  `verite` tinyint(1) NOT NULL,
  PRIMARY KEY (`idr`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `reponses`
--

INSERT INTO `reponses` (`idr`, `idq`, `libeller`, `verite`) VALUES
(6, 2, 'Connie Springer', 0),
(5, 2, 'Jean Kirstein', 0),
(4, 1, 'Eren Yeager', 0),
(2, 1, 'Zeke Yeager', 1),
(3, 1, 'Kenny Ackerman', 0),
(1, 1, 'Historia Reiss', 0),
(7, 2, 'Bertolt Hoover', 1),
(8, 2, 'Reiner Braun', 0),
(9, 3, 'Grisha Yeager', 1),
(10, 3, 'Erwin Smith', 0),
(11, 3, 'Rod Reiss', 0),
(12, 3, 'Levi Ackerman', 0),
(13, 4, 'Levi Ackerman', 0),
(14, 4, 'Mikasa Ackerman', 0),
(15, 4, 'Armin Arlert', 0),
(16, 4, 'Erwin Smith', 1),
(17, 5, 'Edward Newgate', 1),
(18, 5, 'Gol D. Roger', 0),
(19, 5, 'Monkey D. Dragon', 0),
(20, 5, 'Marshall D. Teach', 0),
(21, 6, 'Il a ete sauve par Luffy lors d\'une bataille', 1),
(22, 6, 'Il est le pere adoptif de Zoro', 0),
(23, 6, 'Il est l\'oncle de Sanji', 0),
(24, 6, 'Il a ete nomme par Luffy lors d\'une reunion de l\'assemblee des capitaines corsaires.', 0),
(25, 7, '50 000 000 de Berry', 0),
(26, 7, '30 000 000 de Berry', 1),
(27, 7, '100 000 000 de Berry', 0),
(28, 7, '10 000 000 de Berry', 0),
(29, 8, 'Dr. Vegapunk', 1),
(30, 8, 'Franky', 0),
(31, 8, 'Kizaru', 0),
(32, 8, 'Vegapunk', 0),
(33, 9, 'Gold Roger', 0),
(34, 9, 'Barbe Blanche', 0),
(35, 9, 'Dragon', 1),
(36, 9, 'Garp', 0),
(37, 10, 'Fred Weasley', 0),
(38, 10, 'George Weasley', 0),
(39, 10, 'Percy Weasley', 0),
(40, 10, 'Bill Weasley', 1),
(41, 11, 'Remus Lupin', 0),
(42, 11, 'Minerva McGonagall', 0),
(43, 11, 'Albus Dumbledore', 1),
(44, 11, 'Severus Rogue', 0),
(45, 12, 'Hermione Granger', 0),
(46, 12, 'Ginny Weasley', 1),
(47, 12, 'Luna Lovegood', 0),
(48, 12, 'Cho Chang', 0),
(49, 13, 'Parseltongue', 1),
(50, 13, 'Serpentasortia', 0),
(51, 13, 'Expecto Patronum', 0),
(52, 13, 'Accio', 0),
(53, 14, 'Barty Croupton Jr', 0),
(54, 14, 'Alastor Maugrey', 0),
(55, 14, 'Igor Karkaroff', 1),
(56, 14, 'Gellert Grindelwald', 0),
(57, 15, 'Chevrolet', 0),
(58, 15, 'Chrysler', 0),
(59, 15, 'Ford', 0),
(60, 15, 'Pontiac', 1),
(61, 16, 'Labo Heisenberg', 0),
(62, 16, 'Super Lab', 1),
(63, 16, 'Laboratoire de Gus', 0),
(64, 16, 'Laboratoire Bleu', 0),
(65, 17, 'Jesse Pinkman', 1),
(66, 17, 'Hank Schrader', 0),
(67, 17, 'Gustavo Fring', 0),
(68, 17, 'Saul Goodman', 0),
(69, 18, 'Burger King', 0),
(70, 18, 'A&W', 0),
(71, 18, 'Pollos Hermanos', 1),
(72, 18, 'Los Pollos Locos', 0),
(73, 19, 'Burger King', 0),
(74, 19, 'Light Yagami', 1),
(75, 19, 'Naruto', 0),
(76, 19, 'Yoshi', 0),
(77, 20, 'Sadie Sink', 0),
(78, 20, 'Natalia Dyer', 0),
(79, 20, 'Winona Ryder', 0),
(80, 20, 'Millie Bobby Brown', 1),
(81, 21, 'Fox River State Penitentiary', 1),
(82, 21, 'San Quentin State Prison', 0),
(83, 21, 'Leavenworth Federal Penitentiary', 0),
(84, 21, 'Alcatraz Federal Penitentiary', 0),
(85, 22, 'SolarCity', 0),
(86, 22, 'SpaceX', 1),
(87, 22, 'Tesla, Inc', 0),
(88, 22, 'Neuralink', 0),
(89, 23, 'Blue Origin', 0),
(90, 23, 'Boeing', 0),
(91, 23, 'Virgin Galactic', 0),
(92, 23, 'The Boring Company', 1),
(93, 24, 'Starlink', 0),
(94, 24, 'Neuralink', 1),
(95, 24, 'OpenAI', 0),
(96, 24, 'Hyperloop', 0),
(97, 25, 'Sud-Africain', 1),
(98, 25, 'Canadien', 0),
(99, 25, 'Australien', 0),
(100, 25, 'Americain', 0),
(101, 26, 'Madagascar', 0),
(102, 26, 'Borneo', 0),
(103, 26, 'Groenland', 1),
(104, 26, 'Nouvelle-Guinee', 0),
(105, 27, 'Vancouver', 0),
(106, 27, 'Ottawa', 1),
(107, 27, 'Montreal', 0),
(108, 27, 'Toronto', 0),
(109, 28, 'Chips simulator', 1),
(110, 28, 'Euro Truck simulator', 0),
(111, 28, 'Farming simulator', 0),
(112, 28, 'Potato simulator', 0),
(113, 29, 'Hyoga', 0),
(114, 29, 'Yuzuriha', 0),
(115, 29, 'Taiju', 0),
(116, 29, 'Senku', 1),
(117, 30, 'Soon', 0),
(118, 30, 'BenBest', 0),
(119, 30, 'Sinatraa', 1),
(120, 30, 'Kruise', 0),
(121, 31, 'Harry Potter et la Chambre des Secrets', 0),
(122, 31, 'Harry Potter a l\'Ecole des Sorciers', 1),
(123, 31, 'Harry Potter et la Coupe de Feu', 0),
(124, 31, 'Harry Potter et le Prisonnier d\'Azkaban', 0),
(125, 32, '4', 0),
(126, 32, '5', 0),
(127, 32, '6', 0),
(128, 32, '7', 1),
(129, 33, 'La switch', 0),
(130, 33, 'La playstation 4', 0),
(131, 33, 'La Xbox One', 0),
(132, 33, 'La Wii U', 1),
(133, 34, 'Jamais. On les mange comme ca.', 0),
(134, 34, 'Lorsque l\'eau fait des bulles', 1),
(135, 34, 'Quand on commence a faire chauffer l\'eau', 0),
(136, 34, 'Lorsque l\'eau est entierement evaporee', 0),
(137, 35, 'Le chien', 1),
(138, 35, 'Les autres hommes', 0),
(139, 35, 'Le chat', 0),
(140, 35, 'La giraffe', 0),
(141, 36, 'Emma Watson', 0),
(142, 36, 'Jennifer Lawrence', 0),
(143, 36, 'Emma Stone', 1),
(144, 36, 'Natalie Portman', 0),
(145, 37, 'Rick et Morty', 0),
(146, 37, 'Adventure Time', 1),
(147, 37, 'Bob l\'eponge', 0),
(148, 37, 'Dora', 0),
(149, 38, 'Christopher Nolan', 0),
(150, 38, 'Martin Scorsese', 0),
(151, 38, 'Quentin Tarantino', 0),
(152, 38, 'David Fincher', 1),
(153, 39, 'La Communaute de l\'Anneau', 1),
(154, 39, 'Le Retour du Roi', 0),
(155, 39, 'Le Hobbit : Un voyage inattendu', 0),
(156, 39, 'Les Deux Tours', 0),
(157, 40, 'Joker', 0),
(158, 40, '1917', 0),
(159, 40, 'La La Land', 0),
(160, 40, 'Parasite', 1),
(161, 41, 'Tom Hanks\r\n', 0),
(162, 41, 'Leonardo DiCaprio', 1),
(163, 41, 'Will Smith', 0),
(164, 41, 'Michael B. Jordan', 0),
(165, 42, 'Steven Spielberg', 0),
(166, 42, 'Christopher Nolan', 0),
(167, 42, 'Ava DuVernay', 1),
(168, 42, 'Denis Villeneuve', 0),
(169, 43, 'Emma Corrin', 1),
(170, 43, 'Elisabeth Moss', 0),
(171, 43, 'Nicole Kidman', 0),
(172, 43, 'Olivia Colman\r\n', 0),
(173, 44, 'Alfonso Cuaron', 0),
(174, 44, 'David Fincher', 0),
(175, 44, 'Guillermo del Toro', 0),
(176, 44, 'Denis Villeneuve', 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id_utl` int(11) NOT NULL AUTO_INCREMENT,
  `Nom d'utilisateur` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Mot_de_passe` varchar(255) NOT NULL,
  `Note` int(11) NOT NULL DEFAULT '0',
  `role` varchar(255) NOT NULL DEFAULT 'utilisateur',
  PRIMARY KEY (`id_utl`),
  UNIQUE KEY `email_UNIQUE` (`Email`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_utl`, `Nom d'utilisateur`, `Email`, `Mot_de_passe`, `Note`, `role`) VALUES
(1, 'Assiaa123', 'assiamkl798@gmail.com', 'Assia123', 12, 'admin'),
(2, 'lamia', 'lalilami12@gmail.com', 'Lamia123', 2, 'utilisateur'),
(3, 'mael', 'mael123@gmail.com', 'mael123', 6, 'utilisateur'),
(4, 'asma', 'asma78@gmail.com', 'Assma123', 0, 'utilisateur'),
(5, 'gfhjklm', 'dfgjh@jghjkmm.com', 'hgjhklk', 0, 'utilisateur');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
