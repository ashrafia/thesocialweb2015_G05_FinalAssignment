-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2015 at 09:54 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `facebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `group_id` varchar(255) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`group_id`, `group_name`, `user_id`, `id`) VALUES
('1376508612656565', 'Kuliner Bareng Yuu', 20, 1),
('224281383362', 'PPI Nijmegen', 20, 2),
('1489544554663198', 'Group Ticket NS Pelajar Indonesia di Belanda', 20, 3),
('812463305482939', 'IRMIS 2014', 20, 4),
('1484632468476951', 'IRMIS Group 18', 20, 5),
('454921821215442', 'Duwo Housing Science Park', 20, 6),
('525211560943439', 'UvA BIS 2014-2015', 20, 7),
('658455527569379', 'ISN Amsterdam 2014-2015! Semester 1', 20, 8),
('618542201592088', 'Service Oriented Design Group 11', 20, 9),
('1471158686475881', 'Science Park - 2014/2015', 20, 10),
('12110379221', 'PPI Belanda', 20, 11),
('275457745180', 'PPI Amsterdam and Community', 20, 12),
('505855346216140', 'University of Amsterdam - Master Students 2014-2015', 20, 13),
('227234554140920', 'MMM Deli Serdang - Sumatera Utara - Indonesia', 20, 14),
('1396106240620466', 'Forum Online Shop Indonesia', 20, 15),
('215940221891811', 'WINWIN FASHION SHOP (INVITE 22be42c5 dan 324d65f2)', 20, 16),
('523303951026396', 'Proudly Presents', 20, 17),
('125368480972570', 'KICT 29th Convocation 2013', 20, 18),
('175276292596646', 'Jalan-jalan', 20, 19),
('307650582677786', 'Group EOP plg comel', 20, 20),
('283197715123510', 'HTML 5 Community', 20, 21),
('288754877881103', 'What East Youth Clothing', 20, 22),
('202836913123782', 'SPLASH-K KISSFM Medan', 20, 23),
('274018442631796', 'IIUM Photography Skill', 20, 24),
('179595665398012', 'UMMATIC WEEK & BATIK EXHIBITION 2011', 20, 25),
('21031095518', 'Persatuan Pelajar Indonesia - IIUM', 20, 26),
('111860838873027', 'SuSu Hambar  ::  Suka-Suka Hati Ambil Gambar', 20, 27),
('71994659533', 'MEDAN MOVEMENT', 20, 28),
('38648991997', 'Alumni SMAN 1 Medan', 20, 29),
('57210963888', 'Komunitas Seni " Anak Medan Deviantart"', 20, 30),
('1376508612656565', 'Kuliner Bareng Yuu', 21, 31),
('162514407112630', 'Amsterdam Apartments 4 Rent', 21, 32),
('208276169262413', 'ISN Amsterdam Online Market', 21, 33),
('454921821215442', 'Duwo Housing Science Park', 21, 34),
('525211560943439', 'UvA BIS 2014-2015', 21, 35),
('505855346216140', 'University of Amsterdam - Master Students 2014-2015', 21, 36),
('207816136009099', 'Kelompok tugas e-learning dan totolan', 21, 37),
('505135272858661', '06PGM', 21, 38),
('145001841616', 'I "Light" This (Light Graff Community in Jakarta. Indonesia)', 21, 39),
('105240486295889', '05 PGM E-Business', 21, 40),
('149472478434069', '"Langkah Kaki"', 21, 41),
('250131871728481', '04PEM E-Bis 2014', 21, 42),
('309503732403341', 'KEY ADVENTURE', 21, 43),
('168654703218434', 'Proyek IMK "Dunia Pintar"', 21, 44),
('201968676481020', 'Backpacker Djakarta', 21, 45),
('207758205923201', 'Sistem Informatika Binusian 2014', 21, 46),
('194407360584490', '03PRM Binusian 2014', 21, 47),
('146632172050989', 'Jamiat Kheir', 21, 48),
('149918465049851', '01PJM Binusian 2014', 21, 49),
('175960358860', '24/7 Dubstep Culture', 21, 50),
('101274447716', 'Idiot Club Indonesia (Group)', 21, 51);

-- --------------------------------------------------------

--
-- Table structure for table `school`
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
-- Dumping data for table `school`
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

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook_id` varchar(256) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `location` varchar(25) NOT NULL,
  `height` varchar(25) NOT NULL,
  `style` varchar(50) NOT NULL,
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `facebook_id`, `gender`, `location`, `height`, `style`, `time_created`) VALUES
(20, '10152995490939270', '', '', '<1.50', 'Cha Cha,Jive,', '2015-03-26 22:44:08'),
(21, '10206577221218040', '', '', '1.51-1.60', 'Cha Cha,Jive,', '2015-03-26 22:48:47');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
