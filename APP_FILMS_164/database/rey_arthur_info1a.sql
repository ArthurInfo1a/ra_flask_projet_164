-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           8.0.31 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Export de la structure de la base pour rey_arthur_info1a
CREATE DATABASE IF NOT EXISTS `rey_arthur_info1a` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rey_arthur_info1a`;

-- Export de la structure de la table rey_arthur_info1a. t_materiel
CREATE TABLE IF NOT EXISTS `t_materiel` (
  `id_materiel` int NOT NULL AUTO_INCREMENT,
  `nom_materiel` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `marque` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_materiel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Export de données de la table rey_arthur_info1a.t_materiel : ~1 rows (environ)
/*!40000 ALTER TABLE `t_materiel` DISABLE KEYS */;
INSERT INTO `t_materiel` (`id_materiel`, `nom_materiel`, `type`, `marque`) VALUES
	(1, 'T908322\r\n', 'PC', NULL);
/*!40000 ALTER TABLE `t_materiel` ENABLE KEYS */;

-- Export de la structure de la table rey_arthur_info1a. t_personnes
CREATE TABLE IF NOT EXISTS `t_personnes` (
  `id_personnes` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL DEFAULT '0',
  `prenom` varchar(50) NOT NULL DEFAULT '0',
  `date_dajout` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_personnes`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Export de données de la table rey_arthur_info1a.t_personnes : ~5 rows (environ)
/*!40000 ALTER TABLE `t_personnes` DISABLE KEYS */;
INSERT INTO `t_personnes` (`id_personnes`, `nom`, `prenom`, `date_dajout`) VALUES
	(1, 'Gertrude', 'michel', '2023-04-26 10:39:06'),
	(2, 'rey', '0', '2023-04-26 10:39:06'),
	(3, 'hh', '0', '2023-05-16 11:20:41'),
	(4, 'george', '0', '2023-05-17 10:14:20'),
	(5, 'testss', '0', '2023-05-17 20:30:51');
/*!40000 ALTER TABLE `t_personnes` ENABLE KEYS */;

-- Export de la structure de la table rey_arthur_info1a. t_personne_avoir_matériel
CREATE TABLE IF NOT EXISTS `t_personne_avoir_matériel` (
  `id_personne_avoir_mail` int NOT NULL AUTO_INCREMENT,
  `fk_materiel` int NOT NULL DEFAULT '0',
  `fk_personne` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_personne_avoir_mail`),
  KEY `FK_t_personne_avoir_matériel_t_personnes` (`fk_personne`),
  KEY `FK_t_personne_avoir_matériel_t_materiel` (`fk_materiel`),
  CONSTRAINT `FK_t_personne_avoir_matériel_t_materiel` FOREIGN KEY (`fk_materiel`) REFERENCES `t_materiel` (`id_materiel`),
  CONSTRAINT `FK_t_personne_avoir_matériel_t_personnes` FOREIGN KEY (`fk_personne`) REFERENCES `t_personnes` (`id_personnes`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Export de données de la table rey_arthur_info1a.t_personne_avoir_matériel : ~1 rows (environ)
/*!40000 ALTER TABLE `t_personne_avoir_matériel` DISABLE KEYS */;
INSERT INTO `t_personne_avoir_matériel` (`id_personne_avoir_mail`, `fk_materiel`, `fk_personne`) VALUES
	(3, 1, 1);
/*!40000 ALTER TABLE `t_personne_avoir_matériel` ENABLE KEYS */;

-- Export de la structure de la table rey_arthur_info1a. t_preter
CREATE TABLE IF NOT EXISTS `t_preter` (
  `id_preter` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `marque` varchar(50) DEFAULT NULL,
  `a_qui` varchar(50) DEFAULT NULL,
  `par_qui` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_preter`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Export de données de la table rey_arthur_info1a.t_preter : ~1 rows (environ)
/*!40000 ALTER TABLE `t_preter` DISABLE KEYS */;
INSERT INTO `t_preter` (`id_preter`, `nom`, `type`, `marque`, `a_qui`, `par_qui`, `date`) VALUES
	(1, 'T933333', 'ordinateur', 'Dell', 'gèrard ', 'Michel', '2023-03-15 10:06:05');
/*!40000 ALTER TABLE `t_preter` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
