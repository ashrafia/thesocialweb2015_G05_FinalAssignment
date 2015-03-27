-- phpMyAdmin SQL Dump
-- version 4.0.4.2
-- http://www.phpmyadmin.net
--
-- Machine: localhost
-- Genereertijd: 18 mrt 2015 om 14:45
-- Serverversie: 5.6.13
-- PHP-versie: 5.4.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `facebook`
--
CREATE DATABASE IF NOT EXISTS `facebook` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `facebook`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `school`
--

CREATE TABLE IF NOT EXISTS `school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) DEFAULT NULL,
  `lat` varchar(10) DEFAULT NULL,
  `lng` varchar(9) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Gegevens worden uitgevoerd voor tabel `school`
--

INSERT INTO `school` (`id`, `name`, `lat`, `lng`, `description`) VALUES
(2, 'Amsterdam Dance Centre', '52.309125', '4.822465', 'This is the best school of the them all.'),
(3, 'Amsterdam School of the Arts', '52.374436', '4.897996', 'Contact: info@asa.nl'),
(4, 'Global Dance Centre', '52.326059', '4.945618', ''),
(5, 'New Dance Studios', '52.370036', '4.861567', ''),
(6, 'Henny Jurriens Foundation', '52.370040', '4.861570', ''),
(7, 'Amsterdamse Balletschool', '52.374929', '4.903825', ''),
(8, 'Balletstudio Marieke van der Heijden', '52.365875', '4.879108', ''),
(9, 'Dansschool Kluver', '52.352000', '4.866243', ''),
(10, 'Jacob Maris', '52.365711', '4.855276', ''),
(11, 'Salsa Caliente', '52.367720', '4.897451', ''),
(12, 'Lijfwijs', '52.369696', '4.913272', ''),
(13, 'Extremos', '52.362270', '4.886126', ''),
(14, 'Motion Dance Studio', '52.323731', '4.97696', ''),
(15, 'SalsAmsterdam', '52.367241', '4.864558', '');

-- --------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
