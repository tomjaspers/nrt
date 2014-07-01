-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Machine: 127.0.0.1
-- Genereertijd: 01 jul 2014 om 06:43
-- Serverversie: 5.5.27
-- PHP-versie: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databank: `bigsister`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `device_id` int(10) NOT NULL,
  `password` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_id` (`device_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Gegevens worden uitgevoerd voor tabel `account`
--

INSERT INTO `account` (`id`, `username`, `device_id`, `password`) VALUES
(1, 'hackiothon', 1, 'bd0e672e7fdc73bd614d6d3a68e0903bb5c425d0');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account_id` int(10) NOT NULL,
  `value` float NOT NULL,
  `timestamp` int(11) NOT NULL,
  `type_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1696 ;

--
-- Gegevens worden uitgevoerd voor tabel `event`
--

INSERT INTO `event` (`id`, `account_id`, `value`, `timestamp`, `type_id`) VALUES
(3, 1, 15.1069, 1404165943, 1),
(4, 1, 16.1377, 1404165951, 1),
(8, 1, 16.0461, 1404166005, 1),
(11, 1, 15.4052, 1404166031, 1),
(13, 1, 15.3849, 1404166050, 1),
(24, 1, 16.1173, 1404166458, 1),
(27, 1, 19.6337, 1404166496, 1),
(31, 1, 17.355, 1404166532, 1),
(37, 1, 15.6562, 1404166588, 1),
(44, 1, 15.1034, 1404166696, 1),
(55, 1, 13.7591, 1404167040, 2),
(56, 1, 23.4009, 1404167103, 1),
(58, 1, 4.05859, 1404167141, 2),
(59, 1, 6.17839, 1404167142, 2),
(60, 1, 8.32422, 1404167143, 2),
(62, 1, 6.44661, 1404167144, 2),
(63, 1, 8.92708, 1404167145, 2),
(64, 1, 4.42839, 1404167146, 2),
(65, 1, 9.29167, 1404167147, 2),
(66, 1, 10.5469, 1404167148, 2),
(68, 1, 3.70052, 1404167173, 2),
(69, 1, 4.48958, 1404167173, 2),
(70, 1, 5.32552, 1404167175, 2),
(71, 1, 5.14974, 1404167176, 2),
(72, 1, 3.90104, 1404167176, 2),
(74, 1, 4.23438, 1404167182, 2),
(75, 1, 16.6904, 1404167189, 1),
(76, 1, 3.38151, 1404167204, 2),
(77, 1, 3.32292, 1404167204, 2),
(78, 1, 16.3581, 1404167206, 1),
(79, 1, 3.59375, 1404167208, 2),
(80, 1, 4.4388, 1404167235, 2),
(81, 1, 5.84766, 1404167237, 2),
(82, 1, 8.99089, 1404167238, 2),
(83, 1, 9.3125, 1404167240, 2),
(84, 1, 7.58203, 1404167241, 2),
(85, 1, 5.625, 1404167242, 2),
(86, 1, 8.28516, 1404167242, 2),
(87, 1, 4.59896, 1404167243, 2),
(88, 1, 4.35938, 1404167244, 2),
(89, 1, 3.80078, 1404167244, 2),
(90, 1, 16.2157, 1404167245, 1),
(93, 1, 38.1713, 1404167274, 1),
(99, 1, 17.199, 1404167329, 1),
(100, 1, 3.74609, 1404167352, 2),
(101, 1, 3.52734, 1404167352, 2),
(102, 1, 3.64974, 1404167353, 2),
(103, 1, 3.64453, 1404167354, 2),
(105, 1, 3.67578, 1404167355, 2),
(107, 1, 17.2024, 1404167373, 1),
(109, 1, 15.1374, 1404167391, 1),
(110, 1, 3.90365, 1404167432, 2),
(111, 1, 3.86589, 1404167435, 2),
(112, 1, 3.86979, 1404167436, 2),
(113, 1, 8.08203, 1404167437, 2),
(114, 1, 8.61589, 1404167439, 2),
(115, 1, 9.23568, 1404167441, 2),
(116, 1, 10.6719, 1404167443, 2),
(117, 1, 29.4388, 1404167447, 2),
(118, 1, 24.2553, 1404167447, 1),
(119, 1, 57.0117, 1404167450, 2),
(120, 1, 61.2708, 1404167454, 2),
(121, 1, 67.474, 1404167457, 2),
(122, 1, 60.9583, 1404167460, 2),
(123, 1, 57.8307, 1404167464, 2),
(124, 1, 53.0898, 1404167466, 2),
(125, 1, 54.2943, 1404167468, 2),
(126, 1, 50.6628, 1404167471, 2),
(127, 1, 49.6549, 1404167473, 2),
(128, 1, 46.4414, 1404167475, 2),
(129, 1, 33.5078, 1404167477, 2),
(130, 1, 27.8555, 1404167478, 2),
(131, 1, 19.9974, 1404167479, 2),
(132, 1, 9.46875, 1404167481, 2),
(133, 1, 8.83203, 1404167481, 2),
(134, 1, 3.23958, 1404167482, 2),
(135, 1, 22.309, 1404167484, 1),
(136, 1, 23.3907, 1404167493, 1),
(144, 1, 31.366, 1404167567, 1),
(145, 1, 15.1034, 1404167576, 1),
(147, 1, 10.0846, 1404167599, 2),
(148, 1, 47.9206, 1404167599, 2),
(150, 1, 3.48438, 1404167640, 2),
(151, 1, 14.6732, 1404167642, 2),
(152, 1, 7.76432, 1404167644, 2),
(153, 1, 23.8828, 1404167645, 2),
(154, 1, 8.91276, 1404167646, 2),
(155, 1, 6.2513, 1404167647, 2),
(156, 1, 5.86589, 1404167649, 2),
(157, 1, 5.8776, 1404167651, 2),
(158, 1, 5.53776, 1404167653, 2),
(159, 1, 36.6489, 1404167653, 1),
(160, 1, 5.27604, 1404167655, 2),
(161, 1, 5.21615, 1404167656, 2),
(162, 1, 5.08333, 1404167657, 2),
(163, 1, 5.05599, 1404167658, 2),
(164, 1, 4.26823, 1404167660, 2),
(165, 1, 3.45052, 1404167660, 2),
(166, 1, 3.37109, 1404167661, 2),
(169, 1, 99.4744, 1404167687, 1),
(208, 1, 15.7104, 1404168043, 1),
(244, 1, 18.1688, 1404168372, 1),
(251, 1, 3.58984, 1404168448, 2),
(252, 1, 3.53776, 1404168449, 2),
(253, 1, 3.55729, 1404168451, 2),
(254, 1, 3.77865, 1404168452, 2),
(255, 1, 5.00781, 1404168453, 2),
(256, 1, 6.62891, 1404168454, 2),
(257, 1, 5.64193, 1404168455, 2),
(258, 1, 6.11198, 1404168455, 2),
(263, 1, 15.0866, 1404168497, 1),
(269, 1, 31.488, 1404168551, 1),
(271, 1, 7.1875, 1404168576, 2),
(272, 1, 20.4401, 1404168577, 2),
(273, 1, 29.0299, 1404168579, 2),
(274, 1, 26.9596, 1404168580, 2),
(275, 1, 31.5195, 1404168580, 2),
(276, 1, 19.7552, 1404168582, 2),
(281, 1, 3.26432, 1404168640, 2),
(282, 1, 8.95052, 1404168643, 2),
(283, 1, 18.6979, 1404168645, 2),
(284, 1, 25.9427, 1404168646, 2),
(285, 1, 28.099, 1404168648, 2),
(286, 1, 8.05469, 1404168649, 2),
(287, 1, 4.53385, 1404168652, 2),
(288, 1, 9.54948, 1404168652, 2),
(289, 1, 6.0625, 1404168653, 2),
(290, 1, 5.39714, 1404168653, 2),
(291, 1, 4.30729, 1404168654, 2),
(292, 1, 31.0439, 1404168655, 1),
(293, 1, 49.5612, 1404168664, 1),
(299, 1, 18.3316, 1404168722, 1),
(300, 1, 15.2594, 1404168731, 1),
(317, 1, 22.2853, 1404168886, 1),
(326, 1, 25.0319, 1404168968, 1),
(328, 1, 16.7108, 1404168986, 1),
(338, 1, 17.3788, 1404170951, 1),
(342, 1, 3.80469, 1404171011, 2),
(343, 1, 4.95573, 1404171012, 2),
(344, 1, 5.5612, 1404171015, 2),
(345, 1, 6.64062, 1404171018, 2),
(346, 1, 8.29036, 1404171019, 2),
(347, 1, 8.88542, 1404171021, 2),
(348, 1, 4.11068, 1404171023, 2),
(349, 1, 4.21875, 1404171025, 2),
(350, 1, 4.70443, 1404171026, 2),
(351, 1, 5.89583, 1404171030, 2),
(352, 1, 4.88672, 1404171030, 2),
(353, 1, 4.8099, 1404171032, 2),
(354, 1, 4.80339, 1404171033, 2),
(355, 1, 4.85677, 1404171034, 2),
(356, 1, 4.82292, 1404171034, 2),
(357, 1, 15.49, 1404171038, 1),
(358, 1, 3.76823, 1404171041, 2),
(359, 1, 5.0599, 1404171043, 2),
(360, 1, 5.27474, 1404171044, 2),
(367, 1, 15.2426, 1404171103, 1),
(369, 1, 15.0831, 1404171118, 1),
(370, 1, 15.1442, 1404171127, 1),
(373, 1, 16.3784, 1404171152, 1),
(374, 1, 15.5748, 1404171159, 1),
(379, 1, 3.64714, 1404171237, 2),
(380, 1, 5.36068, 1404171240, 2),
(381, 1, 5.59766, 1404171242, 2),
(382, 1, 5.14974, 1404171244, 2),
(383, 1, 5.4388, 1404171244, 2),
(384, 1, 5.72396, 1404171246, 2),
(385, 1, 5.54427, 1404171250, 2),
(386, 1, 5.28906, 1404171252, 2),
(388, 1, 4.71745, 1404171256, 2),
(389, 1, 4.18099, 1404171259, 2),
(390, 1, 7.40365, 1404171268, 2),
(391, 1, 6.71224, 1404171270, 2),
(392, 1, 11.2982, 1404171275, 2),
(393, 1, 10.3177, 1404171277, 2),
(394, 1, 7.36458, 1404171281, 2),
(395, 1, 9.20573, 1404171284, 2),
(396, 1, 9.19922, 1404171286, 2),
(397, 1, 8.54818, 1404171290, 2),
(398, 1, 7.88672, 1404171294, 2),
(399, 1, 7.75521, 1404171296, 2),
(400, 1, 7.85286, 1404171299, 2),
(401, 1, 6.26432, 1404171301, 2),
(402, 1, 3.58984, 1404171305, 2),
(403, 1, 3.89323, 1404171307, 2),
(404, 1, 31.9909, 1404171314, 2),
(405, 1, 11.2161, 1404171319, 2),
(406, 1, 26.2526, 1404171322, 2),
(407, 1, 26.931, 1404171326, 2),
(408, 1, 26.7695, 1404171327, 2),
(409, 1, 26.6341, 1404171332, 2),
(410, 1, 26.569, 1404171336, 2),
(411, 1, 26.6706, 1404171338, 2),
(412, 1, 26.3724, 1404171340, 2),
(413, 1, 26.4076, 1404171343, 2),
(414, 1, 24.9102, 1404171345, 2),
(415, 1, 19.5078, 1404171349, 2),
(416, 1, 15.4528, 1404171348, 1),
(417, 1, 19.4453, 1404171352, 2),
(418, 1, 10.9609, 1404171356, 2),
(419, 1, 47.9141, 1404171360, 2),
(420, 1, 39.7552, 1404171362, 2),
(421, 1, 42.6419, 1404171367, 2),
(422, 1, 44.7956, 1404171369, 2),
(423, 1, 37.944, 1404171373, 2),
(424, 1, 37.8581, 1404171377, 2),
(425, 1, 37.5417, 1404171380, 2),
(426, 1, 37.4414, 1404171383, 2),
(427, 1, 37.3099, 1404171387, 2),
(428, 1, 37.388, 1404171389, 2),
(429, 1, 35.793, 1404171391, 2),
(430, 1, 18.513, 1404171395, 2),
(431, 1, 5.34115, 1404171400, 2),
(432, 1, 5.75781, 1404171401, 2),
(433, 1, 5.6862, 1404171402, 2),
(434, 1, 5.5612, 1404171404, 2),
(435, 1, 5.375, 1404171405, 2),
(436, 1, 5.28125, 1404171406, 2),
(437, 1, 5.25521, 1404171408, 2),
(438, 1, 5.27474, 1404171409, 2),
(439, 1, 5.26693, 1404171409, 2),
(440, 1, 5.27474, 1404171410, 2),
(441, 1, 3.7474, 1404171411, 2),
(447, 1, 18.5656, 1404171453, 1),
(450, 1, 16.6192, 1404171476, 1),
(459, 1, 15.6189, 1404171544, 1),
(468, 1, 19.1352, 1404171613, 1),
(473, 1, 15.0051, 1404171651, 1),
(485, 1, 16.0428, 1404171742, 1),
(488, 1, 17.2466, 1404171765, 1),
(489, 1, 18.3044, 1404171772, 1),
(494, 1, 16.7853, 1404171810, 1),
(499, 1, 15.2188, 1404171848, 1),
(510, 1, 15.4561, 1404171932, 1),
(511, 1, 16.5683, 1404171940, 1),
(512, 1, 15.7579, 1404171947, 1),
(513, 1, 18.0197, 1404171955, 1),
(514, 1, 15.2764, 1404171962, 1),
(515, 1, 15.9546, 1404171970, 1),
(516, 1, 19.3861, 1404171978, 1),
(517, 1, 15.4867, 1404171985, 1),
(519, 1, 15.6019, 1404172000, 1),
(524, 1, 16.9108, 1404172038, 1),
(529, 1, 15.6121, 1404172076, 1),
(530, 1, 16.1276, 1404172084, 1),
(532, 1, 15.0018, 1404172099, 1),
(533, 1, 20.8476, 1404172107, 1),
(534, 1, 15.2697, 1404172114, 1),
(541, 1, 15.5409, 1404172167, 1),
(546, 1, 26.4628, 1404172205, 1),
(548, 1, 19.6167, 1404172220, 1),
(550, 1, 15.4832, 1404172236, 1),
(554, 1, 17.1889, 1404172266, 1),
(555, 1, 19.3217, 1404172274, 1),
(557, 1, 16.3513, 1404172289, 1),
(558, 1, 45.7194, 1404172296, 1),
(561, 1, 27.4664, 1404172327, 1),
(563, 1, 16.8328, 1404172342, 1),
(564, 1, 15.7714, 1404172349, 1),
(565, 1, 23.523, 1404172357, 1),
(566, 1, 27.0766, 1404172365, 1),
(567, 1, 20.5322, 1404172372, 1),
(568, 1, 20.1457, 1404172380, 1),
(569, 1, 16.2836, 1404172387, 1),
(572, 1, 21.4714, 1404172410, 1),
(573, 1, 21.8953, 1404172418, 1),
(576, 1, 15.3477, 1404172441, 1),
(577, 1, 25.2557, 1404172448, 1),
(588, 1, 16.0597, 1404172532, 1),
(589, 1, 18.3418, 1404172539, 1),
(590, 1, 17.7619, 1404172547, 1),
(592, 1, 22.4718, 1404172562, 1),
(593, 1, 15.49, 1404172570, 1),
(596, 1, 18.5757, 1404172593, 1),
(598, 1, 17.8772, 1404172608, 1),
(599, 1, 15.3816, 1404172615, 1),
(601, 1, 17.5652, 1404172631, 1),
(602, 1, 16.3954, 1404172638, 1),
(603, 1, 17.2499, 1404172646, 1),
(605, 1, 28.8262, 1404172661, 1),
(606, 1, 16.3887, 1404172669, 1),
(608, 1, 15.2323, 1404172684, 1),
(609, 1, 16.8701, 1404172691, 1),
(613, 1, 17.3449, 1404172722, 1),
(614, 1, 16.5344, 1404172729, 1),
(618, 1, 16.392, 1404172759, 1),
(619, 1, 16.3649, 1404172767, 1),
(623, 1, 15.3273, 1404172797, 1),
(624, 1, 15.0662, 1404172805, 1),
(627, 1, 17.4907, 1404172828, 1),
(628, 1, 17.3856, 1404172835, 1),
(632, 1, 24.5741, 1404172866, 1),
(636, 1, 21.7529, 1404172896, 1),
(642, 1, 17.3008, 1404172942, 1),
(643, 1, 15.3748, 1404172949, 1),
(644, 1, 17.9213, 1404172957, 1),
(648, 1, 17.121, 1404172989, 1),
(649, 1, 21.1867, 1404172997, 1),
(650, 1, 4.0013, 1404173050, 2),
(651, 1, 4.89062, 1404173050, 2),
(652, 1, 6.47266, 1404173053, 2),
(653, 1, 7.26172, 1404173055, 2),
(654, 1, 9.2487, 1404173056, 2),
(655, 1, 11.7565, 1404173058, 2),
(656, 1, 14.7135, 1404173065, 2),
(657, 1, 12.8997, 1404173065, 2),
(658, 1, 12.7943, 1404173070, 2),
(659, 1, 10.9557, 1404173074, 2),
(660, 1, 11.25, 1404173077, 2),
(661, 1, 10.4779, 1404173079, 2),
(662, 1, 10.3672, 1404173083, 2),
(663, 1, 12.6615, 1404173085, 2),
(664, 1, 8.95182, 1404173089, 2),
(665, 1, 4.63021, 1404173092, 2),
(666, 1, 3.57161, 1404173095, 2),
(667, 1, 4.27865, 1404173098, 2),
(668, 1, 4.1237, 1404173101, 2),
(669, 1, 3.3138, 1404173105, 2),
(670, 1, 3.63021, 1404173106, 2),
(671, 1, 3.22266, 1404173108, 2),
(672, 1, 3.48047, 1404173110, 2),
(673, 1, 3.29297, 1404173113, 2),
(674, 1, 3.49609, 1404173117, 2),
(675, 1, 13.7083, 1404173121, 2),
(676, 1, 6.44661, 1404173126, 2),
(677, 1, 11.4297, 1404173126, 2),
(678, 1, 12.9401, 1404173128, 2),
(679, 1, 12.7904, 1404173130, 2),
(680, 1, 13.3685, 1404173131, 2),
(681, 1, 9.85026, 1404173132, 2),
(682, 1, 10.4193, 1404173133, 2),
(683, 1, 8.46875, 1404173135, 2),
(684, 1, 8.78516, 1404173135, 2),
(685, 1, 8.61719, 1404173136, 2),
(686, 1, 9.30208, 1404173136, 2),
(687, 1, 5.92318, 1404173155, 2),
(688, 1, 8.1276, 1404173155, 2),
(689, 1, 8.10286, 1404173156, 2),
(690, 1, 8.15365, 1404173157, 2),
(691, 1, 6.08984, 1404173158, 2),
(692, 1, 15.802, 1404173159, 1),
(695, 1, 3.38932, 1404173211, 2),
(696, 1, 4.89193, 1404173212, 2),
(697, 1, 6.20052, 1404173214, 2),
(698, 1, 7.04427, 1404173217, 2),
(699, 1, 8.36849, 1404173221, 2),
(700, 1, 6.83203, 1404173225, 2),
(701, 1, 8.42318, 1404173225, 2),
(702, 1, 5.89714, 1404173228, 2),
(703, 1, 5.78646, 1404173230, 2),
(704, 1, 5.80599, 1404173233, 2),
(705, 1, 5.79297, 1404173235, 2),
(706, 1, 5.76172, 1404173237, 2),
(707, 1, 5.75781, 1404173239, 2),
(708, 1, 4.61068, 1404173241, 2),
(709, 1, 17.0803, 1404173249, 1),
(710, 1, 45.0312, 1404173255, 2),
(711, 1, 41.3398, 1404173257, 2),
(712, 1, 20.3841, 1404173259, 2),
(713, 1, 19.8893, 1404173261, 2),
(714, 1, 19.5911, 1404173262, 2),
(715, 1, 15.2422, 1404173263, 2),
(716, 1, 15.1523, 1404173265, 2),
(717, 1, 15.0964, 1404173266, 2),
(718, 1, 15.1029, 1404173267, 2),
(719, 1, 14.9596, 1404173268, 2),
(720, 1, 14.1016, 1404173268, 2),
(722, 1, 6.07682, 1404173289, 2),
(723, 1, 5.92188, 1404173290, 2),
(724, 1, 5.36719, 1404173291, 2),
(725, 1, 5.16146, 1404173291, 2),
(726, 1, 3.67188, 1404173292, 2),
(727, 1, 25.5133, 1404173293, 1),
(729, 1, 20.1083, 1404173311, 1),
(732, 1, 17.3211, 1404173340, 1),
(733, 1, 15.0119, 1404173348, 1),
(737, 1, 17.4059, 1404173384, 1),
(739, 1, 50, 1400977827, 1),
(741, 1, 13.7591, 1404175329, 2),
(742, 1, 17.8908, 1404175377, 1),
(743, 1, 6.37891, 1404175410, 2),
(744, 1, 7.17839, 1404175411, 2),
(745, 1, 8.00651, 1404175412, 2),
(746, 1, 8.45182, 1404175412, 2),
(747, 1, 8.88411, 1404175413, 2),
(748, 1, 8.34505, 1404175413, 2),
(749, 1, 9.88932, 1404175413, 2),
(750, 1, 8.25651, 1404175414, 2),
(751, 1, 21.5698, 1404175413, 1),
(752, 1, 7.38802, 1404175414, 2),
(753, 1, 14.7812, 1404175414, 2),
(754, 1, 19.1657, 1404175425, 1),
(755, 1, 15.585, 1404175435, 1),
(756, 1, 30.976, 1404175446, 1),
(757, 1, 19.0301, 1404175455, 1),
(758, 1, 15.5308, 1404175484, 1),
(759, 1, 4.69401, 1404175490, 2),
(760, 1, 10.8581, 1404175491, 2),
(761, 1, 13.8112, 1404175492, 2),
(762, 1, 17.0677, 1404175494, 2),
(763, 1, 19.8971, 1404175495, 2),
(764, 1, 61.6016, 1404175498, 2),
(765, 1, 70.888, 1404175500, 2),
(766, 1, 92.3203, 1404175501, 2),
(767, 1, 4.60677, 1404175510, 2),
(768, 1, 15.4701, 1404175510, 2),
(769, 1, 85.3177, 1404175511, 2),
(770, 1, 85.75, 1404175512, 2),
(771, 1, 81.0755, 1404175512, 2),
(772, 1, 17.5856, 1404175512, 1),
(779, 1, 15.5308, 1404175576, 1),
(781, 1, 6.36719, 1404175647, 2),
(782, 1, 8.13281, 1404175648, 2),
(783, 1, 6.34245, 1404175648, 2),
(784, 1, 7.53776, 1404175650, 2),
(785, 1, 8.25651, 1404175650, 2),
(786, 1, 13.1042, 1404175651, 2),
(787, 1, 11.8464, 1404175653, 2),
(789, 1, 4.66536, 1404175668, 2),
(790, 1, 99.4531, 1404175669, 2),
(791, 1, 42.2174, 1404175671, 2),
(792, 1, 94.0326, 1404175674, 2),
(794, 1, 29.2682, 1404175684, 2),
(795, 1, 51.7227, 1404175684, 2),
(796, 1, 96.4466, 1404175685, 2),
(797, 1, 84.9727, 1404175686, 2),
(798, 1, 96.7669, 1404175687, 2),
(799, 1, 92.0911, 1404175687, 2),
(800, 1, 18.3451, 1404175689, 1),
(801, 1, 16.114, 1404175698, 1),
(802, 1, 15.8054, 1404175742, 1),
(803, 1, 34.0026, 1404175757, 2),
(804, 1, 54.5091, 1404175759, 2),
(805, 1, 56.4453, 1404175761, 2),
(806, 1, 45.2708, 1404175762, 2),
(807, 1, 73.5534, 1404175764, 2),
(808, 1, 86.3438, 1404175765, 2),
(809, 1, 98.5664, 1404175767, 2),
(810, 1, 69.3763, 1404175769, 2),
(811, 1, 89.2682, 1404175770, 2),
(812, 1, 93.8945, 1404175771, 2),
(813, 1, 18.0027, 1404175778, 1),
(814, 1, 36.9115, 1404175787, 2),
(815, 1, 20.8737, 1404175789, 2),
(816, 1, 8.90234, 1404175797, 2),
(817, 1, 45.7656, 1404175798, 2),
(818, 1, 73.2695, 1404175799, 2),
(819, 1, 87.8424, 1404175800, 2),
(820, 1, 97.4688, 1404175800, 2),
(822, 1, 19.3284, 1404175812, 1),
(823, 1, 17.0091, 1404175835, 1),
(824, 1, 4.8776, 1404175839, 2),
(825, 1, 9.85156, 1404175840, 2),
(826, 1, 34.8867, 1404175841, 2),
(827, 1, 68.099, 1404175843, 2),
(828, 1, 91.9245, 1404175844, 2),
(829, 1, 91.3398, 1404175845, 2),
(830, 1, 4.07031, 1404175850, 2),
(831, 1, 16.5107, 1404175852, 1),
(832, 1, 17.8569, 1404175862, 1),
(833, 1, 18.552, 1404175870, 1),
(834, 1, 20.4136, 1404175879, 1),
(835, 1, 15.2188, 1404175887, 1),
(836, 1, 21.1121, 1404175896, 1),
(837, 1, 21.7529, 1404175907, 1),
(838, 1, 17.8806, 1404175916, 1),
(839, 1, 27.9039, 1404175926, 1),
(840, 1, 19.5963, 1404175936, 1),
(841, 1, 3.73698, 1404175975, 2),
(842, 1, 4.41536, 1404175975, 2),
(843, 1, 4.41276, 1404175976, 2),
(844, 1, 4.41276, 1404175978, 2),
(845, 1, 4.38802, 1404175979, 2),
(846, 1, 4.26302, 1404175981, 2),
(847, 1, 4.25521, 1404175982, 2),
(848, 1, 17.3312, 1404175981, 1),
(849, 1, 4.25521, 1404175984, 2),
(850, 1, 4.25781, 1404175984, 2),
(851, 1, 4.25781, 1404175985, 2),
(852, 1, 4.15365, 1404175986, 2),
(853, 1, 4.13542, 1404175989, 2),
(854, 1, 38.2426, 1404175994, 1),
(855, 1, 19.1182, 1404176003, 1),
(856, 1, 4.15104, 1404176022, 2),
(857, 1, 4.1849, 1404176023, 2),
(858, 1, 4.10938, 1404176023, 2),
(859, 1, 3.94661, 1404176024, 2),
(861, 1, 26.4018, 1404176034, 1),
(866, 1, 60, 1400977830, 1),
(871, 1, 15.7308, 1404176117, 1),
(872, 1, 15.0459, 1404176126, 1),
(873, 1, 19.3183, 1404176135, 1),
(874, 1, 15.7817, 1404176143, 1),
(876, 1, 3.86719, 1404176183, 2),
(877, 1, 4.00781, 1404176186, 2),
(878, 1, 4.01042, 1404176187, 2),
(879, 1, 3.94141, 1404176188, 2),
(880, 1, 3.88151, 1404176188, 2),
(881, 1, 3.93229, 1404176189, 2),
(882, 1, 3.92188, 1404176190, 2),
(883, 1, 3.875, 1404176190, 2),
(884, 1, 3.85938, 1404176191, 2),
(885, 1, 3.85417, 1404176192, 2),
(887, 1, 15.7376, 1404176203, 1),
(888, 1, 18.6503, 1404176212, 1),
(890, 1, 17.8534, 1404176235, 1),
(891, 1, 17.4771, 1404176245, 1),
(892, 1, 17.7042, 1404176254, 1),
(893, 1, 18.6808, 1404176263, 1),
(894, 1, 20.9527, 1404176273, 1),
(895, 1, 20.9968, 1404176282, 1),
(896, 1, 18.0197, 1404176292, 1),
(897, 1, 20.3898, 1404176302, 1),
(900, 1, 16.6158, 1404176328, 1),
(901, 1, 15.6596, 1404176337, 1),
(902, 1, 15.7884, 1404176346, 1),
(903, 1, 15.2256, 1404176354, 1),
(904, 1, 22.6956, 1404176363, 1),
(905, 1, 18.5418, 1404176372, 1),
(907, 1, 15.056, 1404176389, 1),
(909, 1, 15.863, 1404176406, 1),
(910, 1, 16.3107, 1404176416, 1),
(911, 1, 19.1284, 1404176426, 1),
(914, 1, 32.3047, 1404176456, 2),
(915, 1, 33.3307, 1404176457, 2),
(916, 1, 11.6276, 1404176458, 2),
(917, 1, 49.6979, 1404176488, 2),
(918, 1, 50.67, 1404176486, 1),
(919, 1, 69.0573, 1404176490, 2),
(920, 1, 80.7565, 1404176495, 2),
(921, 1, 75.5508, 1404176498, 2),
(922, 1, 90.7578, 1404176502, 2),
(923, 1, 77.5573, 1404176505, 2),
(924, 1, 74.888, 1404176508, 2),
(925, 1, 69.9167, 1404176510, 2),
(926, 1, 73.0169, 1404176513, 2),
(927, 1, 75.9362, 1404176514, 2),
(928, 1, 74.431, 1404176517, 2),
(929, 1, 57.2539, 1404176518, 2),
(930, 1, 22.0169, 1404176520, 2),
(931, 1, 19.3359, 1404176522, 2),
(932, 1, 9.90885, 1404176523, 2),
(933, 1, 9.47396, 1404176525, 2),
(934, 1, 21.1697, 1404176538, 1),
(935, 1, 4.17318, 1404176552, 2),
(936, 1, 4.73177, 1404176558, 2),
(937, 1, 3.46094, 1404176563, 2),
(938, 1, 3.40365, 1404176566, 2),
(939, 1, 3.29036, 1404176569, 2),
(940, 1, 3.28906, 1404176575, 2),
(941, 1, 3.26562, 1404176577, 2),
(942, 1, 3.23177, 1404176581, 2),
(943, 1, 3.23438, 1404176585, 2),
(944, 1, 3.66667, 1404176587, 2),
(945, 1, 10.7786, 1404176594, 2),
(946, 1, 11.0117, 1404176597, 2),
(947, 1, 9.16536, 1404176602, 2),
(948, 1, 10.099, 1404176603, 2),
(949, 1, 11.8932, 1404176607, 2),
(950, 1, 7.28385, 1404176610, 2),
(951, 1, 9.13542, 1404176611, 2),
(952, 1, 7.65625, 1404176616, 2),
(953, 1, 7.49479, 1404176619, 2),
(954, 1, 18.2942, 1404176618, 1),
(955, 1, 7.54427, 1404176624, 2),
(956, 1, 17.2214, 1404176626, 2),
(957, 1, 4.03385, 1404176629, 2),
(958, 1, 3.71094, 1404176634, 2),
(959, 1, 3.33333, 1404176644, 2),
(960, 1, 6.29818, 1404176647, 2),
(961, 1, 6.01693, 1404176650, 2),
(962, 1, 6.1263, 1404176653, 2),
(963, 1, 6.25781, 1404176656, 2),
(964, 1, 6.54297, 1404176659, 2),
(965, 1, 6.83333, 1404176661, 2),
(966, 1, 4.91406, 1404176664, 2),
(967, 1, 4.39193, 1404176666, 2),
(968, 1, 3.74349, 1404176667, 2),
(969, 1, 4.0651, 1404176668, 2),
(970, 1, 3.5013, 1404176670, 2),
(971, 1, 9.40365, 1404176672, 2),
(972, 1, 4.20312, 1404176674, 2),
(973, 1, 3.82161, 1404176675, 2),
(974, 1, 3.8099, 1404176676, 2),
(975, 1, 7.61719, 1404176676, 2),
(976, 1, 15.073, 1404177907, 1),
(980, 1, 17.6907, 1404177942, 1),
(981, 1, 18.1146, 1404177951, 1),
(982, 1, 33.7192, 1404177959, 1),
(986, 1, 25.7779, 1404177994, 1),
(988, 1, 16.5954, 1404178011, 1),
(991, 1, 15.3917, 1404178037, 1),
(997, 1, 16.4462, 1404178090, 1),
(1002, 1, 17.9586, 1404178133, 1),
(1004, 1, 15.7104, 1404178151, 1),
(1006, 1, 18.3147, 1404178168, 1),
(1007, 1, 18.0264, 1404178177, 1),
(1011, 1, 22.2073, 1404178212, 1),
(1012, 1, 15.6663, 1404178221, 1),
(1015, 1, 22.9804, 1404178253, 1),
(1016, 1, 15.6302, 1404178279, 2),
(1017, 1, 48.2617, 1404178281, 2),
(1018, 1, 60.4635, 1404178283, 2),
(1019, 1, 65.8138, 1404178285, 2),
(1020, 1, 72.9102, 1404178288, 2),
(1021, 1, 80.207, 1404178290, 2),
(1022, 1, 3.60677, 1404178291, 2),
(1023, 1, 3.90625, 1404178292, 2),
(1024, 1, 3.5599, 1404178294, 2),
(1025, 1, 3.70703, 1404178294, 2),
(1026, 1, 3.55859, 1404178295, 2),
(1027, 1, 3.69792, 1404178296, 2),
(1028, 1, 3.66016, 1404178297, 2),
(1029, 1, 19.5794, 1404178299, 1),
(1030, 1, 18.5079, 1404178308, 1),
(1031, 1, 15.0763, 1404178316, 1),
(1032, 1, 16.9176, 1404178326, 1),
(1033, 1, 19.6099, 1404178335, 1),
(1034, 1, 15.7376, 1404178343, 1),
(1035, 1, 20.0812, 1404178352, 1),
(1038, 1, 15.7376, 1404178378, 1),
(1039, 1, 17.45, 1404178387, 1),
(1042, 1, 18.8774, 1404178413, 1),
(1043, 1, 15.1272, 1404178422, 1),
(1044, 1, 15.7647, 1404178430, 1),
(1048, 1, 16.331, 1404178465, 1),
(1050, 1, 14.1914, 1404179020, 2),
(1051, 1, 29.5039, 1404179020, 2),
(1052, 1, 34.8997, 1404179021, 2),
(1053, 1, 40.8034, 1404179022, 2),
(1054, 1, 65.8997, 1404179023, 2),
(1055, 1, 71.4818, 1404179024, 2),
(1056, 1, 15.0967, 1404179027, 1),
(1058, 1, 32.7698, 1404179046, 1),
(1060, 1, 15.8122, 1404179066, 1),
(1061, 1, 17.2499, 1404179075, 1),
(1063, 1, 15.4189, 1404179092, 1),
(1067, 1, 11.4049, 1404179148, 2),
(1068, 1, 17.4831, 1404179150, 2),
(1069, 1, 24.1888, 1404179151, 2),
(1070, 1, 28.2786, 1404179153, 2),
(1071, 1, 63.0534, 1404179154, 2),
(1072, 1, 78.599, 1404179156, 2),
(1073, 1, 71.3021, 1404179158, 2),
(1074, 1, 81.0716, 1404179158, 2),
(1075, 1, 70.3034, 1404179160, 2),
(1076, 1, 87.3724, 1404179161, 2),
(1077, 1, 67.6484, 1404179161, 2),
(1078, 1, 24.8453, 1404179164, 1),
(1084, 1, 15.8732, 1404179218, 1),
(1085, 1, 17.8501, 1404179227, 1),
(1086, 1, 17.9789, 1404179236, 1),
(1087, 1, 21.6546, 1404179245, 1),
(1088, 1, 15.1239, 1404179253, 1),
(1089, 1, 20.4813, 1404179262, 1),
(1090, 1, 15.6053, 1404179271, 1),
(1091, 1, 16.7412, 1404179279, 1),
(1092, 1, 16.331, 1404179288, 1),
(1094, 1, 15.6901, 1404179305, 1),
(1096, 1, 21.5359, 1404179323, 1),
(1098, 1, 17.6636, 1404179342, 1),
(1110, 1, 15.4663, 1404179446, 1),
(1117, 1, 25.8083, 1404179507, 1),
(1121, 1, 20.4203, 1404179542, 1),
(1126, 1, 15.2697, 1404179585, 1),
(1137, 1, 15.0357, 1404179680, 1),
(1153, 1, 15.5308, 1404179819, 1),
(1156, 1, 18.6164, 1404179845, 1),
(1157, 1, 21.4071, 1404179854, 1),
(1159, 1, 15.2323, 1404179871, 1),
(1160, 1, 17.7009, 1404179880, 1),
(1168, 1, 15.3951, 1404179950, 1),
(1169, 1, 4.72005, 1404180028, 2),
(1170, 1, 4.91797, 1404180038, 2),
(1171, 1, 5.47005, 1404180041, 2),
(1173, 1, 6.07943, 1404180044, 2),
(1174, 1, 6.23698, 1404180046, 2),
(1175, 1, 4.59505, 1404180049, 2),
(1176, 1, 4.40495, 1404180052, 2),
(1177, 1, 5.29297, 1404180060, 2),
(1178, 1, 30.0794, 1404180062, 2),
(1179, 1, 8.61068, 1404180065, 2),
(1180, 1, 6.88672, 1404180067, 2),
(1181, 1, 6.8763, 1404180068, 2),
(1182, 1, 6.88281, 1404180069, 2),
(1183, 1, 6.875, 1404180071, 2),
(1184, 1, 6.87109, 1404180072, 2),
(1185, 1, 6.88021, 1404180073, 2),
(1186, 1, 6.89062, 1404180074, 2),
(1187, 1, 6.72917, 1404180075, 2),
(1188, 1, 3.21745, 1404180075, 2),
(1189, 1, 15.6392, 1404180078, 1),
(1193, 1, 15.5612, 1404180118, 1),
(1196, 1, 15.3273, 1404180144, 1),
(1198, 1, 16.1648, 1404180162, 1),
(1202, 1, 16.4497, 1404180196, 1),
(1203, 1, 21.4987, 1404180205, 1),
(1204, 1, 15.7987, 1404180214, 1),
(1212, 1, 15.7002, 1404180284, 1),
(1213, 1, 15.3713, 1404180293, 1),
(1214, 1, 15.6934, 1404180301, 1),
(1215, 1, 34.4279, 1404180310, 1),
(1216, 1, 19.42, 1404180319, 1),
(1218, 1, 15.4358, 1404180336, 1),
(1219, 1, 16.5073, 1404180345, 1),
(1222, 1, 19.1894, 1404180371, 1),
(1224, 1, 16.2836, 1404180389, 1),
(1225, 1, 18.2197, 1404180397, 1),
(1226, 1, 18.2129, 1404180406, 1),
(1227, 1, 17.9823, 1404180415, 1),
(1228, 1, 21.953, 1404180423, 1),
(1230, 1, 18.006, 1404180441, 1),
(1231, 1, 18.4231, 1404180450, 1),
(1232, 1, 20.6747, 1404180845, 1),
(1233, 1, 21.302, 1404180855, 1),
(1236, 1, 18.0501, 1404180881, 1),
(1237, 1, 18.006, 1404180889, 1),
(1238, 1, 15.6562, 1404180898, 1),
(1240, 1, 18.0536, 1404180915, 1),
(1246, 1, 32.0238, 1404180968, 1),
(1247, 1, 25.2862, 1404180976, 1),
(1250, 1, 16.8633, 1404181005, 1),
(1255, 1, 15.785, 1404181055, 1),
(1256, 1, 27.0596, 1404181065, 1),
(1258, 1, 19.9964, 1404181085, 1),
(1261, 1, 23.6009, 1404181115, 1),
(1262, 1, 26.1474, 1404181125, 1),
(1267, 1, 16.3649, 1404181175, 1),
(1273, 1, 19.342, 1404181235, 1),
(1276, 1, 17.7822, 1404181265, 1),
(1278, 1, 15.7817, 1404181285, 1),
(1279, 1, 16.2191, 1404181295, 1),
(1280, 1, 15.2018, 1404181305, 1),
(1281, 1, 15.2426, 1404181315, 1),
(1283, 1, 17.3821, 1404181335, 1),
(1287, 1, 19.4132, 1404181375, 1),
(1288, 1, 15.3646, 1404181385, 1),
(1295, 1, 17.3652, 1404181455, 1),
(1296, 1, 16.1716, 1404181465, 1),
(1297, 1, 17.6161, 1404181475, 1),
(1300, 1, 15.1307, 1404181505, 1),
(1301, 1, 25.0116, 1404181515, 1),
(1303, 1, 16.2259, 1404181535, 1),
(1306, 1, 26.7273, 1404181565, 1),
(1308, 1, 17.5178, 1404181585, 1),
(1309, 1, 15.6291, 1404181595, 1),
(1311, 1, 15.4257, 1404181615, 1),
(1316, 1, 16.114, 1404181665, 1),
(1335, 1, 17.155, 1404181855, 1),
(1336, 1, 24.7979, 1404181865, 1),
(1337, 1, 17.8433, 1404181875, 1),
(1338, 1, 16.8904, 1404181885, 1),
(1339, 1, 17.711, 1404181895, 1),
(1340, 1, 15.8258, 1404181905, 1),
(1342, 1, 17.9144, 1404181925, 1),
(1344, 1, 16.5649, 1404181946, 1),
(1345, 1, 20.7424, 1404181956, 1),
(1346, 1, 3.90755, 1404181967, 2),
(1347, 1, 3.82422, 1404181967, 2),
(1348, 1, 19.3658, 1404181970, 1),
(1350, 1, 4.38802, 1404182014, 2),
(1351, 1, 4.76172, 1404182021, 2),
(1352, 1, 4.74349, 1404182023, 2),
(1353, 1, 4.60026, 1404182026, 2),
(1354, 1, 8.57161, 1404182027, 2),
(1355, 1, 8.26302, 1404182029, 2),
(1356, 1, 9.31771, 1404182032, 2),
(1357, 1, 12.0299, 1404182035, 2),
(1358, 1, 11.9909, 1404182037, 2),
(1359, 1, 11.5625, 1404182041, 2),
(1361, 1, 7.57552, 1404182046, 2),
(1362, 1, 49.151, 1404182055, 2),
(1363, 1, 25.8424, 1404182060, 2),
(1364, 1, 39.457, 1404182063, 2),
(1365, 1, 35.8229, 1404182065, 2),
(1366, 1, 8.49219, 1404182068, 2),
(1367, 1, 8.33984, 1404182070, 2),
(1368, 1, 7.48047, 1404182073, 2),
(1369, 1, 5.7487, 1404182074, 2),
(1370, 1, 5.60807, 1404182075, 2),
(1371, 1, 5.5612, 1404182077, 2),
(1372, 1, 5.52474, 1404182079, 2),
(1373, 1, 5.51432, 1404182081, 2),
(1374, 1, 5.51953, 1404182081, 2),
(1375, 1, 5.5, 1404182082, 2),
(1376, 1, 4.17057, 1404182082, 2),
(1379, 1, 16.8633, 1404182105, 1),
(1380, 1, 15.1374, 1404182115, 1),
(1381, 1, 17.1278, 1404182125, 1),
(1383, 1, 15.429, 1404182152, 1),
(1384, 1, 16.4158, 1404182160, 1),
(1400, 1, 15.6562, 1404182301, 1),
(1402, 1, 16.2631, 1404182318, 1),
(1404, 1, 15.0187, 1404182335, 1),
(1407, 1, 16.904, 1404182361, 1),
(1409, 1, 15.1646, 1404182379, 1),
(1412, 1, 16.1038, 1404182405, 1),
(1413, 1, 16.4836, 1404182413, 1),
(1420, 1, 17.1244, 1404182474, 1),
(1421, 1, 15.1001, 1404182483, 1),
(1423, 1, 17.6636, 1404182500, 1),
(1425, 1, 15.8223, 1404182517, 1),
(1427, 1, 16.0292, 1404182535, 1),
(1434, 1, 15.9342, 1404182597, 1),
(1435, 1, 15.646, 1404182605, 1),
(1438, 1, 16.9617, 1404182631, 1),
(1440, 1, 16.2971, 1404182649, 1),
(1441, 1, 16.5344, 1404182657, 1),
(1446, 1, 15.7817, 1404182701, 1),
(1448, 1, 20.99, 1404182718, 1),
(1449, 1, 18.9182, 1404182727, 1),
(1451, 1, 15.5511, 1404182744, 1),
(1452, 1, 15.2561, 1404182753, 1),
(1453, 1, 16.6769, 1404182761, 1),
(1454, 1, 15.0289, 1404182770, 1),
(1458, 1, 16.3072, 1404182805, 1),
(1460, 1, 24.7267, 1404182823, 1),
(1461, 1, 17.043, 1404182831, 1),
(1462, 1, 16.7718, 1404182840, 1),
(1463, 1, 16.4191, 1404182849, 1),
(1466, 1, 15.7478, 1404182892, 1),
(1468, 1, 15.6766, 1404182910, 1),
(1473, 1, 16.0461, 1404182963, 1),
(1474, 1, 18.5961, 1404182972, 1),
(1475, 1, 15.9613, 1404182981, 1),
(1477, 1, 18.4401, 1404182998, 1),
(1478, 1, 16.9684, 1404183007, 1),
(1479, 1, 15.3341, 1404183033, 1),
(1480, 1, 15.0254, 1404183042, 1),
(1481, 1, 15.897, 1404183051, 1),
(1482, 1, 16.8668, 1404183059, 1),
(1483, 1, 18.6333, 1404183068, 1),
(1484, 1, 17.2804, 1404183077, 1),
(1485, 1, 16.3208, 1404183085, 1),
(1486, 1, 16.8362, 1404183094, 1),
(1488, 1, 15.8223, 1404183111, 1),
(1490, 1, 16.5174, 1404183129, 1),
(1491, 1, 19.6234, 1404183137, 1),
(1492, 1, 16.8769, 1404183155, 1),
(1493, 1, 18.5418, 1404183163, 1),
(1494, 1, 18.6232, 1404183172, 1),
(1495, 1, 15.3036, 1404183181, 1),
(1497, 1, 17.06, 1404183199, 1),
(1500, 1, 16.6158, 1404183224, 1),
(1501, 1, 21.363, 1404183233, 1),
(1502, 1, 18.7961, 1404183242, 1),
(1504, 1, 15.7613, 1404183259, 1),
(1507, 1, 15.8088, 1404183285, 1),
(1508, 1, 16.2869, 1404183294, 1),
(1511, 1, 17.8908, 1404183320, 1),
(1512, 1, 16.4191, 1404183329, 1),
(1513, 1, 16.4598, 1404183337, 1),
(1514, 1, 15.195, 1404183346, 1),
(1516, 1, 16.3717, 1404183363, 1),
(1517, 1, 17.8637, 1404183372, 1),
(1518, 1, 19.7252, 1404183381, 1),
(1519, 1, 16.8023, 1404183389, 1),
(1520, 1, 20.6644, 1404183398, 1),
(1521, 1, 18.3654, 1404183407, 1),
(1522, 1, 18.0264, 1404183415, 1),
(1523, 1, 16.7447, 1404183424, 1),
(1524, 1, 18.4537, 1404183432, 1),
(1525, 1, 19.3692, 1404183441, 1),
(1526, 1, 36.6421, 1404183450, 1),
(1527, 1, 18.9758, 1404183458, 1),
(1528, 1, 21.2308, 1404183467, 1),
(1529, 1, 15.3273, 1404183476, 1),
(1530, 1, 16.8294, 1404183484, 1),
(1531, 1, 19.3013, 1404183493, 1),
(1532, 1, 19.4167, 1404183502, 1),
(1533, 1, 18.2739, 1404183510, 1),
(1536, 1, 19.0911, 1404183536, 1),
(1537, 1, 15.6053, 1404183545, 1),
(1538, 1, 15.0866, 1404183554, 1),
(1539, 1, 15.5273, 1404183562, 1),
(1541, 1, 19.515, 1404183580, 1),
(1542, 1, 17.1889, 1404183588, 1),
(1543, 1, 16.3614, 1404183597, 1),
(1545, 1, 17.2431, 1404183614, 1),
(1546, 1, 15.2391, 1404183623, 1),
(1547, 1, 19.0572, 1404183631, 1),
(1548, 1, 15.9478, 1404183640, 1),
(1549, 1, 15.7511, 1404183649, 1),
(1550, 1, 16.2801, 1404183657, 1),
(1551, 1, 16.4497, 1404183666, 1),
(1552, 1, 15.1713, 1404183675, 1),
(1553, 1, 15.9512, 1404183683, 1),
(1554, 1, 21.6478, 1404183692, 1),
(1556, 1, 15.3137, 1404183709, 1),
(1558, 1, 17.5246, 1404183726, 1),
(1559, 1, 18.8707, 1404183735, 1),
(1560, 1, 16.0563, 1404183744, 1),
(1561, 1, 16.3513, 1404183752, 1),
(1562, 1, 18.0264, 1404183761, 1),
(1563, 1, 15.0086, 1404183770, 1),
(1564, 1, 15.2052, 1404183778, 1),
(1567, 1, 18.9487, 1404183804, 1),
(1568, 1, 15.0221, 1404183813, 1),
(1569, 1, 15.5308, 1404183822, 1),
(1570, 1, 27.8958, 1404183857, 2),
(1571, 1, 80.7201, 1404183861, 2),
(1572, 1, 80.2305, 1404183862, 2),
(1573, 1, 81.3385, 1404183864, 2),
(1574, 1, 91.7526, 1404183867, 2),
(1575, 1, 63.6458, 1404183869, 2),
(1576, 1, 17.7009, 1404183879, 1),
(1577, 1, 26.9596, 1404183883, 2),
(1578, 1, 48.0755, 1404183887, 2),
(1579, 1, 48.6654, 1404183890, 2),
(1580, 1, 48.112, 1404183895, 2),
(1581, 1, 12.7448, 1404183898, 2),
(1582, 1, 46.0052, 1404183903, 2),
(1583, 1, 14.543, 1404183908, 2),
(1584, 1, 13.1198, 1404183910, 2),
(1585, 1, 16.4701, 1404183914, 2),
(1586, 1, 15.9323, 1404183917, 2),
(1587, 1, 19.5443, 1404183921, 2),
(1588, 1, 7.28125, 1404183924, 2),
(1589, 1, 11.9049, 1404183927, 2),
(1590, 1, 8.66146, 1404183929, 2),
(1591, 1, 10.1068, 1404183932, 2),
(1592, 1, 10.9036, 1404183936, 2),
(1593, 1, 9.07943, 1404183940, 2),
(1594, 1, 4.58333, 1404183942, 2),
(1595, 1, 4.63672, 1404183944, 2),
(1596, 1, 7.81901, 1404183947, 2),
(1597, 1, 8.0026, 1404183948, 2),
(1598, 1, 7.0638, 1404183953, 2),
(1599, 1, 8.80339, 1404183955, 2),
(1600, 1, 7.82292, 1404183957, 2),
(1601, 1, 4.15625, 1404183959, 2),
(1602, 1, 4.29036, 1404183961, 2),
(1603, 1, 28.2124, 1404183961, 1),
(1604, 1, 3.75911, 1404183964, 2),
(1605, 1, 8.40234, 1404183971, 2),
(1606, 1, 16.1354, 1404183973, 2),
(1607, 1, 16.2461, 1404183974, 2),
(1608, 1, 16.1354, 1404183975, 2),
(1609, 1, 5.57422, 1404183977, 2),
(1610, 1, 21.7422, 1404183978, 2),
(1611, 1, 3.90885, 1404183983, 2),
(1612, 1, 3.53125, 1404183984, 2),
(1613, 1, 99.9966, 1404183988, 1),
(1614, 1, 3.71224, 1404183989, 2),
(1615, 1, 3.48438, 1404184035, 2),
(1616, 1, 4.11849, 1404184036, 2),
(1617, 1, 5.23307, 1404184037, 2),
(1618, 1, 6.29557, 1404184038, 2),
(1619, 1, 7.27083, 1404184040, 2),
(1620, 1, 13.1042, 1404184043, 2),
(1621, 1, 25.1654, 1404184046, 2),
(1622, 1, 89.7597, 1404184044, 1),
(1623, 1, 18.1693, 1404184047, 2),
(1624, 1, 14.5755, 1404184049, 2),
(1625, 1, 14.0716, 1404184052, 2),
(1626, 1, 13.9206, 1404184053, 2),
(1627, 1, 13.7526, 1404184054, 2),
(1628, 1, 13.7604, 1404184056, 2),
(1629, 1, 13.6589, 1404184057, 2),
(1630, 1, 13.5638, 1404184058, 2),
(1631, 1, 13.4102, 1404184059, 2),
(1632, 1, 13.1641, 1404184060, 2),
(1633, 1, 17.2601, 1404184064, 1),
(1634, 1, 43.8477, 1404184072, 1),
(1635, 1, 25.9067, 1404184084, 1),
(1638, 1, 17.6534, 1404184110, 1),
(1639, 1, 15.9987, 1404184465, 1),
(1640, 1, 49.134, 1404184472, 1),
(1641, 1, 55.3919, 1404184483, 2),
(1642, 1, 49.3516, 1404184483, 2),
(1643, 1, 15.5156, 1404184483, 2),
(1644, 1, 15.0866, 1404184487, 1),
(1647, 1, 16.8972, 1404184507, 1),
(1653, 1, 15.568, 1404184551, 1),
(1656, 1, 18.4434, 1404184572, 1),
(1660, 1, 15.8223, 1404184599, 1),
(1661, 1, 19.5251, 1404184606, 1),
(1662, 1, 16.9854, 1404184613, 1),
(1666, 1, 19.0166, 1404184641, 1),
(1668, 1, 3.84766, 1404184685, 2),
(1669, 1, 6.48438, 1404184687, 2),
(1670, 1, 11.7708, 1404184690, 2),
(1671, 1, 14.9401, 1404184692, 2),
(1672, 1, 23.3828, 1404184694, 2),
(1673, 1, 74.9154, 1404184697, 2),
(1674, 1, 59.9583, 1404184702, 2),
(1675, 1, 63.7474, 1404184705, 2),
(1677, 1, 64.875, 1404184710, 2),
(1678, 1, 64.8685, 1404184714, 2),
(1679, 1, 83.556, 1404184719, 2),
(1680, 1, 79.9453, 1404184722, 2),
(1681, 1, 68.3451, 1404184726, 2),
(1682, 1, 66.332, 1404184729, 2),
(1683, 1, 58.7839, 1404184732, 2),
(1684, 1, 28.8763, 1404184735, 2),
(1685, 1, 25.5352, 1404184738, 2),
(1686, 1, 24.1771, 1404184740, 2),
(1687, 1, 22.9414, 1404184742, 2),
(1688, 1, 10.4479, 1404184744, 2),
(1689, 1, 9.80339, 1404184745, 2),
(1690, 1, 7.61849, 1404184746, 2),
(1691, 1, 7.02083, 1404184746, 2),
(1692, 1, 6.76693, 1404184747, 2),
(1693, 1, 6.63021, 1404184749, 2),
(1694, 1, 5.36849, 1404184749, 2),
(1695, 1, 14.1914, 1404186938, 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `event_type`
--

CREATE TABLE IF NOT EXISTS `event_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(52) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Gegevens worden uitgevoerd voor tabel `event_type`
--

INSERT INTO `event_type` (`id`, `name`) VALUES
(1, 'audio'),
(2, 'video');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `snapshot`
--

CREATE TABLE IF NOT EXISTS `snapshot` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `account_id` int(10) NOT NULL,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;