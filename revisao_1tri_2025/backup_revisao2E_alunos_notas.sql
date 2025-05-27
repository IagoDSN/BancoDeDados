-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.2.0 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para revisioninfoe
DROP DATABASE IF EXISTS `revisioninfoe`;
CREATE DATABASE IF NOT EXISTS `revisioninfoe` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `revisioninfoe`;

-- Copiando estrutura para tabela revisioninfoe.alunos
DROP TABLE IF EXISTS `alunos`;
CREATE TABLE IF NOT EXISTS `alunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela revisioninfoe.alunos: ~0 rows (aproximadamente)
INSERT INTO `alunos` (`id`, `nome`) VALUES
	(1, 'Karla Silva'),
	(2, 'André Telles'),
	(3, 'Roseli Pereira'),
	(4, 'Márcio Teixeira');

-- Copiando estrutura para tabela revisioninfoe.notas
DROP TABLE IF EXISTS `notas`;
CREATE TABLE IF NOT EXISTS `notas` (
  `codNotas` int NOT NULL AUTO_INCREMENT,
  `alunos_id` int NOT NULL,
  `nota` decimal(3,1) NOT NULL,
  PRIMARY KEY (`codNotas`,`alunos_id`),
  KEY `fk_notas_alunos_idx` (`alunos_id`),
  CONSTRAINT `fk_notas_alunos` FOREIGN KEY (`alunos_id`) REFERENCES `alunos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela revisioninfoe.notas: ~3 rows (aproximadamente)
INSERT INTO `notas` (`codNotas`, `alunos_id`, `nota`) VALUES
	(1, 1, 8.0),
	(2, 2, 6.5),
	(3, 3, 10.0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
