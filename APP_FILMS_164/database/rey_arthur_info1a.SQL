-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: rey_arthur_info1a

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS rey_arthur_info1a;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS rey_arthur_info1a;

-- Utilisation de cette base de donnée

USE rey_arthur_info1a;
-- --------------------------------------------------------
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
DROP DATABASE IF EXISTS `rey_arthur_info1a`;
CREATE DATABASE IF NOT EXISTS `rey_arthur_info1a`;
USE `rey_arthur_info1a`;

-- Export de la structure de la table rey_arthur_info1a. t_materiel
DROP TABLE IF EXISTS `t_materiel`;
CREATE TABLE IF NOT EXISTS `t_materiel` (
  `id_materiel` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `marque` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_materiel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Export de données de la table rey_arthur_info1a.t_materiel : ~1 rows (environ)
/*!40000 ALTER TABLE `t_materiel` DISABLE KEYS */;
INSERT INTO `t_materiel` (`id_materiel`, `nom`, `type`, `marque`) VALUES
	(1, 'T908322\r\n', 'PC', NULL);
/*!40000 ALTER TABLE `t_materiel` ENABLE KEYS */;

-- Export de la structure de la table rey_arthur_info1a. t_personnes
DROP TABLE IF EXISTS `t_personnes`;
CREATE TABLE IF NOT EXISTS `t_personnes` (
  `id_personnes` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL DEFAULT '0',
  `prenom` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_personnes`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Export de données de la table rey_arthur_info1a.t_personnes : ~1 rows (environ)
/*!40000 ALTER TABLE `t_personnes` DISABLE KEYS */;
INSERT INTO `t_personnes` (`id_personnes`, `nom`, `prenom`) VALUES
	(1, 'Gertrude', 'michel');
/*!40000 ALTER TABLE `t_personnes` ENABLE KEYS */;

-- Export de la structure de la table rey_arthur_info1a. t_personne_avoir_matériel
DROP TABLE IF EXISTS `t_personne_avoir_matériel`;
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
DROP TABLE IF EXISTS `t_preter`;
CREATE TABLE IF NOT EXISTS `t_preter` (
  `id_preter` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `marque` varchar(50) DEFAULT NULL,
  `a qui` varchar(50) DEFAULT NULL,
  `par qui` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_preter`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Export de données de la table rey_arthur_info1a.t_preter : ~1 rows (environ)
/*!40000 ALTER TABLE `t_preter` DISABLE KEYS */;
INSERT INTO `t_preter` (`id_preter`, `nom`, `type`, `marque`, `a qui`, `par qui`, `date`) VALUES
	(1, 'T933333', 'ordinateur', 'Dell', 'gèrard ', 'Michel', '2023-03-15 10:06:05');
/*!40000 ALTER TABLE `t_preter` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
