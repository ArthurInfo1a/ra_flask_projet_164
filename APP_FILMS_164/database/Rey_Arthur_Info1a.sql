-- --------------------------------------------------------
-- Hôte:                         localhost
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour rey_arthur_info1a
CREATE DATABASE IF NOT EXISTS `rey_arthur_info1a` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rey_arthur_info1a`;

-- Listage de la structure de table rey_arthur_info1a. t_materiel
CREATE TABLE IF NOT EXISTS `t_materiel` (
  `id_materiel` int NOT NULL AUTO_INCREMENT,
  `nom_materiel` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `marque` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_materiel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table rey_arthur_info1a.t_materiel : ~3 rows (environ)
INSERT INTO `t_materiel` (`id_materiel`, `nom_materiel`, `type`, `marque`) VALUES
	(1, 'T908322\r\n', 'PC', NULL),
	(2, 'hlgkfjsdkfjdkfjdkfjdkfjdkfjdkfjdkfjdkfj', NULL, NULL),
	(3, 'T933682', NULL, NULL),
	(4, 'M32794', NULL, NULL);

-- Listage de la structure de table rey_arthur_info1a. t_personnes
CREATE TABLE IF NOT EXISTS `t_personnes` (
  `id_personnes` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL DEFAULT '0',
  `prenom` varchar(50) NOT NULL DEFAULT '0',
  `date_dajout` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_personnes`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table rey_arthur_info1a.t_personnes : ~5 rows (environ)
INSERT INTO `t_personnes` (`id_personnes`, `nom`, `prenom`, `date_dajout`) VALUES
	(1, 'Gertrude', 'michel', '2023-04-26 10:39:06'),
	(2, 'rey', '0', '2023-04-26 10:39:06'),
	(4, 'george', '0', '2023-05-17 10:14:20'),
	(5, 'testss', '0', '2023-05-17 20:30:51'),
	(7, 'mike', '0', '2023-06-11 15:25:12'),
	(8, 'jean', '0', '2023-06-11 15:25:18');

-- Listage de la structure de table rey_arthur_info1a. t_personne_avoir_matériel
CREATE TABLE IF NOT EXISTS `t_personne_avoir_matériel` (
  `id_personne_avoir_mail` int NOT NULL AUTO_INCREMENT,
  `fk_materiel` int DEFAULT NULL,
  `fk_personne` int DEFAULT NULL,
  PRIMARY KEY (`id_personne_avoir_mail`),
  KEY `FK_t_personne_avoir_matériel_t_personnes` (`fk_personne`),
  KEY `FK_t_personne_avoir_matériel_t_materiel` (`fk_materiel`),
  CONSTRAINT `FK_t_personne_avoir_matériel_t_materiel` FOREIGN KEY (`fk_materiel`) REFERENCES `t_materiel` (`id_materiel`),
  CONSTRAINT `FK_t_personne_avoir_matériel_t_personnes` FOREIGN KEY (`fk_personne`) REFERENCES `t_personnes` (`id_personnes`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table rey_arthur_info1a.t_personne_avoir_matériel : ~0 rows (environ)
INSERT INTO `t_personne_avoir_matériel` (`id_personne_avoir_mail`, `fk_materiel`, `fk_personne`) VALUES
	(3, 1, 1),
	(4, 1, 5);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
