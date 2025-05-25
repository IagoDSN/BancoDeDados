-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.42 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para revisao2e
DROP DATABASE IF EXISTS `revisao2e`;
CREATE DATABASE IF NOT EXISTS `revisao2e` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `revisao2e`;

-- Copiando estrutura para tabela revisao2e.alunos
DROP TABLE IF EXISTS `alunos`;
CREATE TABLE IF NOT EXISTS `alunos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revisao2e.alunos: ~7 rows (aproximadamente)
INSERT INTO `alunos` (`id`, `nome`) VALUES
	(1, 'Luiz Inacio da Silva'),
	(2, 'Dilma Souza'),
	(3, 'Laércio Bolsonaro'),
	(4, 'Geraldo Nunes'),
	(5, 'MikaMoto yuji'),
	(6, 'Juju Alvez'),
	(7, 'Albert Bolsonaro');

-- Copiando estrutura para tabela revisao2e.notas
DROP TABLE IF EXISTS `notas`;
CREATE TABLE IF NOT EXISTS `notas` (
  `idAluno` int DEFAULT NULL,
  `nota` decimal(3,1) DEFAULT NULL,
  KEY `ligacaoAluno` (`idAluno`),
  CONSTRAINT `ligacaoAluno` FOREIGN KEY (`idAluno`) REFERENCES `alunos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela revisao2e.notas: ~6 rows (aproximadamente)
INSERT INTO `notas` (`idAluno`, `nota`) VALUES
	(1, 13.0),
	(2, 6.5),
	(3, 4.0),
	(4, 9.5),
	(5, 10.0),
	(6, 7.8);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
