-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.19 - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para livraria
CREATE DATABASE IF NOT EXISTS `livraria` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `livraria`;

-- Copiando estrutura para tabela livraria.notif
CREATE TABLE IF NOT EXISTS `notif` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notif_msg` text,
  `notif_time` datetime DEFAULT NULL,
  `notif_repeat` int(11) DEFAULT '1' COMMENT 'schedule in minute',
  `notif_loop` int(11) DEFAULT '1',
  `publish_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(13) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela livraria.notif: 7 rows
/*!40000 ALTER TABLE `notif` DISABLE KEYS */;
INSERT INTO `notif` (`id`, `notif_msg`, `notif_time`, `notif_repeat`, `notif_loop`, `publish_date`, `username`) VALUES
	(1, 'teste', '2019-02-01 11:23:09', 1, 1, '2019-02-01 09:22:09', 'donald'),
	(2, '', '2019-02-01 13:04:27', 2, 0, '2019-02-01 11:02:27', 'admin'),
	(3, 'teste', '2019-02-01 13:04:27', 2, 0, '2019-02-01 11:02:27', 'admin'),
	(4, 'teste4', '2019-02-01 11:01:01', 1, 0, '2019-02-01 09:00:01', 'ronaldo'),
	(5, 'Bom dia', '2019-02-01 12:12:46', 1, 0, '2019-02-01 10:11:46', 'admin'),
	(6, 'Bom dia!!!', '2019-02-01 12:03:28', 1, 1, '2019-02-01 10:02:28', 'donald'),
	(7, 'TESTE 5', '2019-02-01 11:30:54', 2, 3, '2019-02-01 09:30:54', 'messi');
/*!40000 ALTER TABLE `notif` ENABLE KEYS */;

-- Copiando estrutura para tabela livraria.user
CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela livraria.user: 4 rows
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`username`, `password`) VALUES
	('admin', '123'),
	('donald', '123'),
	('ronaldo', '123'),
	('messi', '123');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
