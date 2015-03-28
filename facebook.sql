-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2015 at 07:20 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

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
`id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;

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
('101274447716', 'Idiot Club Indonesia (Group)', 21, 51),
('1376508612656565', 'Kuliner Bareng Yuu', 22, 52),
('224281383362', 'PPI Nijmegen', 22, 53),
('1489544554663198', 'Group Ticket NS Pelajar Indonesia di Belanda', 22, 54),
('812463305482939', 'IRMIS 2014', 22, 55),
('1484632468476951', 'IRMIS Group 18', 22, 56),
('454921821215442', 'Duwo Housing Science Park', 22, 57),
('525211560943439', 'UvA BIS 2014-2015', 22, 58),
('658455527569379', 'ISN Amsterdam 2014-2015! Semester 1', 22, 59),
('618542201592088', 'Service Oriented Design Group 11', 22, 60),
('1471158686475881', 'Science Park - 2014/2015', 22, 61),
('12110379221', 'PPI Belanda', 22, 62),
('275457745180', 'PPI Amsterdam and Community', 22, 63),
('505855346216140', 'University of Amsterdam - Master Students 2014-2015', 22, 64),
('227234554140920', 'MMM Deli Serdang - Sumatera Utara - Indonesia', 22, 65),
('1396106240620466', 'Forum Online Shop Indonesia', 22, 66),
('215940221891811', 'WINWIN FASHION SHOP (INVITE 22be42c5 dan 324d65f2)', 22, 67),
('523303951026396', 'Proudly Presents', 22, 68),
('125368480972570', 'KICT 29th Convocation 2013', 22, 69),
('175276292596646', 'Jalan-jalan', 22, 70),
('307650582677786', 'Group EOP plg comel', 22, 71),
('283197715123510', 'HTML 5 Community', 22, 72),
('288754877881103', 'What East Youth Clothing', 22, 73),
('202836913123782', 'SPLASH-K KISSFM Medan', 22, 74),
('274018442631796', 'IIUM Photography Skill', 22, 75),
('179595665398012', 'UMMATIC WEEK & BATIK EXHIBITION 2011', 22, 76),
('21031095518', 'Persatuan Pelajar Indonesia - IIUM', 22, 77),
('111860838873027', 'SuSu Hambar  ::  Suka-Suka Hati Ambil Gambar', 22, 78),
('71994659533', 'MEDAN MOVEMENT', 22, 79),
('38648991997', 'Alumni SMAN 1 Medan', 22, 80),
('57210963888', 'Komunitas Seni " Anak Medan Deviantart"', 22, 81),
('1560915520853727', 'LPDP HOSPITALITY', 23, 82),
('1449603378653857', 'Green Tower Uilenstede 2014/2015', 23, 83),
('551259605004832', 'signal transduction', 23, 84),
('495368223863201', 'BAROKAH MEDICAL JOGJA (BMJ)', 23, 85),
('854718127880068', 'LPDP: Politics and International Relations', 23, 86),
('708645195895392', 'Biomolecular sciences 2014', 23, 87),
('121744964659305', 'SECOND HAND SHOP IN AMSTERDAM', 23, 88),
('1489544554663198', 'Group Ticket NS Pelajar Indonesia di Belanda', 23, 89),
('626408524065438', 'Awardee', 23, 90),
('1536825953199985', 'LPDP Comprehensive Life Sciences', 23, 91),
('275457745180', 'PPI Amsterdam and Community', 23, 92),
('152157478315123', 'Flat Share Amsterdam', 23, 93),
('702616376420205', 'Apartments For Rent Amsterdam The Netherlands', 23, 94),
('301673126641497', 'Msc Biomolecular Sciences 2014-2015', 23, 95),
('8160576868', 'Komunitas Indonesia di Eropa', 23, 96),
('12110379221', 'PPI Belanda', 23, 97),
('210751145651477', 'ESN-VUniverse E-buy', 23, 98),
('124714707565609', 'Uilenstede', 23, 99),
('208276169262413', 'ISN Amsterdam Online Market', 23, 100),
('47889741887', 'Indonesian living in Holland', 23, 101),
('385779784828920', 'Biomolecular Sciences (VU)', 23, 102),
('167650570072801', 'LPDP NL', 23, 103),
('192901857389536', 'Wageningen Student Plaza', 23, 104),
('810275325670636', 'The communists from Uilenstede 48/50 and more', 23, 105),
('837568906276683', 'Uilenstede 50', 23, 106),
('752653828109413', 'PK 14 LPDP 2014', 23, 107),
('212183525635364', 'Cara Cepat Hamil', 23, 108),
('6391461155', 'Simply Networking (NightLife, Events, Artists, Producers, Business, Etc.)', 23, 109),
('516185391777715', 'SmileClub Jogja', 23, 110),
('120743201424208', 'Sukses, Jumawa & Ceria (SJC)', 23, 111),
('470086666368343', 'The Braid', 23, 112),
('296704167101230', 'My business ~ My cosmetics', 23, 113),
('326346390762679', 'Alumni Farmasi Sanata Dharma', 23, 114),
('209653685718486', 'Belgrade Summer School 2012 - Scholarship', 23, 115),
('172255642858316', 'PSPA 23 InDusTRiiii', 23, 116),
('218320534899448', 'Gracia Community', 23, 117),
('103433599762067', 'PSPA Angkatan 23', 23, 118),
('116471545034767', 'Malaysia to Germany STUDY INFO CLUB', 23, 119),
('121787854562562', 'Alumni SMA KOLESE LOYOLA Semarang', 23, 120),
('144354802297332', 'Alumni SMA KOLESE LOYOLA', 23, 121),
('145374002177794', 'Liburan?? hayuuk!!', 23, 122),
('140865675976029', 'Alumni DOMSAV angkatan tahun 2001', 23, 123),
('179221875455041', 'Keluarga Eks Kolese Loyola 2007', 23, 124),
('160340764012356', 'kami berusaha untuk terus belajar (KBUTB)', 23, 125),
('127708547290505', 'TUJUKU skin care', 23, 126),
('122093844520745', 'Zona Chat Farmasi 2007', 23, 127),
('169583596398427', 'FST.jumawa.07.ok~!', 23, 128),
('47889741887', 'Indonesian living in Holland', 24, 129),
('146303384139', 'Forum Ketua-Presidium PPI Kota dan BPH-Kadiv PPI Belanda 14/15', 24, 130),
('105564479479465', 'LL.M. Law and Politics of International Security (VU Amsterdam)', 24, 131),
('267456910114907', 'LPIS', 24, 132),
('123974730992801', 'Indonesia Human Resources Society', 24, 133),
('162514407112630', 'Amsterdam Apartments 4 Rent', 24, 134),
('275457745180', 'PPI Amsterdam and Community', 24, 135),
('182547965445', 'ROOM AVAILABLE IN AMSTERDAM', 24, 136),
('12110379221', 'PPI Belanda', 24, 137),
('72454754794', 'ALUMNI SD CHARITAS yang lulus tahun 2003', 24, 138),
('342911720964', 'IOV INDONESIA YOUTH SECTION', 24, 139),
('435221709899985', 'VANYLA MANGO', 24, 140),
('452052664850194', 'Bireun Seudati UPH', 24, 141),
('302044513229065', 'Jalan Jalan Murah', 24, 142),
('340391872711526', 'Congress of Westphalia-IndonesiaMUN 2012', 24, 143),
('260026480775217', 'Chaelna (Michael Yana) Shop', 24, 144),
('124717340919228', 'HI soccer', 24, 145),
('243359459036044', 'Bireun seudati', 24, 146),
('176613922410852', 'Gonzaga Angkatan 20', 24, 147),
('139616036112169', 'Abbalove YOUTH SOUTH', 24, 148),
('212329292111528', 'Duc in Altum!', 24, 149),
('146710022041391', 'Beritanya IKAGONA Kolese Gonzaga', 24, 150),
('181028428576409', 'House Of Worship (Pondok Indah)', 24, 151),
('113076132038078', 'IndonesiaMUN', 24, 152),
('58300804964', 'Surya Institute', 24, 153),
('13431440585', 'Asosiasi Alumni Yesuit Indonesia', 24, 154),
('412231278920766', 'Free Stuff Amsterdam', 25, 155),
('1376508612656565', 'Kuliner Bareng Yuu', 25, 156),
('665446850230280', 'NS Group-tickets Amsterdam', 25, 157),
('658455527569379', 'ISN Amsterdam 2014-2015! Semester 1', 25, 158),
('580241468753150', 'UvA Artificial Intelligence MSc 2014 - 2016', 25, 159),
('275457745180', 'PPI Amsterdam and Community', 25, 160),
('12110379221', 'PPI Belanda', 25, 161),
('160281607491732', 'Indonesia', 25, 162),
('61350344538', 'ANAK BANJARMASIN', 25, 163),
('152429480824', 'HIMPUNAN ALUMNI UK PETRA', 25, 164),
('263270660441399', 'INFORMATICS ASSISTANTS', 25, 165),
('119663878095001', 'SMAVEN FAMILY', 25, 166),
('215633545162390', 'KSR UK Petra 2011-2012', 25, 167),
('173551779382834', 'Eks Asisten (Gossip Only)', 25, 168),
('167959046606714', 'VOLTAGE (VOLUNTEER OF THE NEW AGE)', 25, 169),
('219970848044550', 'The Official Group for Informatics Department of UK. Petra', 25, 170),
('196733487012956', 'Alumni Mitra Uttama', 25, 171),
('151348314920504', 'HoMe', 25, 172),
('139705119410331', 'ONG.ONLINE', 25, 173),
('162099897143710', 'Our EXISTENTE', 25, 174),
('95656802630', 'Dahlia Centre', 25, 175),
('111576163651', 'KSR UKP', 25, 176),
('72701266633', 'Pendaki Gunung', 25, 177),
('1376508612656565', 'Kuliner Bareng Yuu', 26, 178),
('162514407112630', 'Amsterdam Apartments 4 Rent', 26, 179),
('208276169262413', 'ISN Amsterdam Online Market', 26, 180),
('454921821215442', 'Duwo Housing Science Park', 26, 181),
('525211560943439', 'UvA BIS 2014-2015', 26, 182),
('505855346216140', 'University of Amsterdam - Master Students 2014-2015', 26, 183),
('207816136009099', 'Kelompok tugas e-learning dan totolan', 26, 184),
('505135272858661', '06PGM', 26, 185),
('145001841616', 'I "Light" This (Light Graff Community in Jakarta. Indonesia)', 26, 186),
('105240486295889', '05 PGM E-Business', 26, 187),
('149472478434069', '"Langkah Kaki"', 26, 188),
('250131871728481', '04PEM E-Bis 2014', 26, 189),
('309503732403341', 'KEY ADVENTURE', 26, 190),
('168654703218434', 'Proyek IMK "Dunia Pintar"', 26, 191),
('201968676481020', 'Backpacker Djakarta', 26, 192),
('207758205923201', 'Sistem Informatika Binusian 2014', 26, 193),
('194407360584490', '03PRM Binusian 2014', 26, 194),
('146632172050989', 'Jamiat Kheir', 26, 195),
('149918465049851', '01PJM Binusian 2014', 26, 196),
('175960358860', '24/7 Dubstep Culture', 26, 197),
('101274447716', 'Idiot Club Indonesia (Group)', 26, 198);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE IF NOT EXISTS `school` (
`id` int(11) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `lat` varchar(10) DEFAULT NULL,
  `lng` varchar(9) DEFAULT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

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
`user_id` int(11) NOT NULL,
  `facebook_id` varchar(256) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `location` varchar(25) NOT NULL,
  `height` varchar(25) NOT NULL,
  `style` varchar(50) NOT NULL,
  `time_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `facebook_id`, `gender`, `location`, `height`, `style`, `time_created`) VALUES
(22, '10152971400519270', 'female', 'Amsterdam', '1.51-1.60', 'Waltz,', '2015-03-28 12:55:03'),
(23, '958714990805495', 'female', 'Amsterdam', '1.61-1.70', 'Waltz,', '2015-03-28 15:24:04'),
(24, '10152646209805672', 'female', 'Amsterdam', '1.61-1.70', 'Jive,Waltz,', '2015-03-28 15:27:38'),
(25, '10152915307718020', 'male', 'Amsterdam', '1.61-1.70', 'Jive,Waltz,', '2015-03-28 15:34:24'),
(26, '10206723700559932', 'male', 'Amsterdam', '1.61-1.70', 'Rumba,Waltz,', '2015-03-28 18:09:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `group`
--
ALTER TABLE `group`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
