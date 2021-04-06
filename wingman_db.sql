-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-04-2021 a las 21:40:08
-- Versión del servidor: 10.4.10-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wingman_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `nombreCompleto` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `password` varchar(85) NOT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `fecha_registro` date NOT NULL,
  `puesto_id` int(11) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `sucursal_id` int(11) DEFAULT NULL,
  `departamento_id` int(11) DEFAULT NULL,
  `municipio_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `nombreCompleto`, `correo`, `password`, `estado_id`, `fecha_registro`, `puesto_id`, `telefono`, `sucursal_id`, `departamento_id`, `municipio_id`) VALUES
(1, 'Administrador del Sistemae', 'admin@erus.com', '123', 26, '2020-12-02', 1, '6441111111', 3, 3, 1890),
(3, 'Juan Garcia', 'jan7albero@gmail.com', '123', 26, '2021-02-24', 1, '6424584546', 5, 2, 1940),
(7, 'prueba', 'prueba@gmail.com', '123', 26, '2021-03-16', 1, '123213', 3, 3, 23);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_permisos`
--

CREATE TABLE `admin_permisos` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `permiso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `admin_permisos`
--

INSERT INTO `admin_permisos` (`id`, `admin_id`, `permiso_id`) VALUES
(26, 1, 3),
(28, 3, 2),
(29, 3, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aplicaciones_estados`
--

CREATE TABLE `aplicaciones_estados` (
  `estado_id` int(11) NOT NULL,
  `nombre` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `aplicaciones_estados`
--

INSERT INTO `aplicaciones_estados` (`estado_id`, `nombre`) VALUES
(1, 'PROPUESTA ENVIADA'),
(2, 'PENDIENTE DE APROBACIÓN'),
(1, 'PROPUESTA ENVIADA'),
(2, 'PENDIENTE DE APROBACIÓN'),
(1, 'PROPUESTA ENVIADA'),
(2, 'PENDIENTE DE APROBACIÓN'),
(1, 'PROPUESTA ENVIADA'),
(2, 'PENDIENTE DE APROBACIÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(85) NOT NULL,
  `especialidad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id`, `nombre`, `especialidad_id`) VALUES
(1, 'SQL', 1),
(2, 'PHP', 1),
(3, 'Javascript', 1),
(4, 'Java', 1),
(5, 'Modelado 3D', 4),
(6, 'Animacion', 4),
(7, 'Diseno', 4),
(8, 'Edicion', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencias`
--

CREATE TABLE `competencias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `competencias`
--

INSERT INTO `competencias` (`id`, `nombre`) VALUES
(1, 'TECNICO'),
(2, 'PLOMERO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concepto`
--

CREATE TABLE `concepto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `concepto`
--

INSERT INTO `concepto` (`id`, `nombre`) VALUES
(1, 'Alquiler de equipo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversaciones_archivos`
--

CREATE TABLE `conversaciones_archivos` (
  `id` int(11) NOT NULL,
  `conversacion_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `filesize` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `id` int(11) NOT NULL,
  `alias` varchar(85) NOT NULL,
  `cuenta` varchar(85) NOT NULL,
  `banco` varchar(85) NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`id`, `alias`, `cuenta`, `banco`, `saldo`) VALUES
(1, 'CUENTA DE CHEQUES DE PRUEBA', '478238491013451', 'MEEPSY INC', 204803);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamentos`
--

CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamentos`
--

INSERT INTO `departamentos` (`id`, `nombre`) VALUES
(2, 'Marketing'),
(3, 'Ventas'),
(4, 'Contaduría'),
(5, 'Tesorería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `egresos`
--

CREATE TABLE `egresos` (
  `id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `folio` varchar(20) NOT NULL,
  `sucursal_id` int(11) DEFAULT NULL,
  `fecha_aplicacion` datetime NOT NULL,
  `proveedor_id` int(11) DEFAULT NULL,
  `cuenta_id` int(11) DEFAULT NULL,
  `monto` int(11) NOT NULL,
  `tipo_gasto` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `observaciones` varchar(2000) DEFAULT NULL,
  `departamento_id` int(11) DEFAULT NULL,
  `moneda_id` int(11) DEFAULT NULL,
  `forma_pago` int(11) DEFAULT NULL,
  `concepto_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `egresos`
--

INSERT INTO `egresos` (`id`, `fecha`, `folio`, `sucursal_id`, `fecha_aplicacion`, `proveedor_id`, `cuenta_id`, `monto`, `tipo_gasto`, `estado`, `estado_id`, `observaciones`, `departamento_id`, `moneda_id`, `forma_pago`, `concepto_id`) VALUES
(8, '2021-03-13 19:00:00', 'AH702645', 5, '2021-03-20 19:00:00', 3, 1, 122, 1, 2, 26, 'pruebas', 2, 1, 2, 1),
(10, '2021-03-13 04:00:00', 'MA102389', 3, '2021-03-14 04:00:00', 2, 1, 12, 2, 1, 3, '', 3, 3, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`) VALUES
(1, 'Programacion y Tecnologia'),
(4, 'Diseno y Multimedia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas`
--

CREATE TABLE `estadisticas` (
  `id` int(11) NOT NULL,
  `visitors` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estadisticas`
--

INSERT INTO `estadisticas` (`id`, `visitors`) VALUES
(1, 124);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id`, `estado`) VALUES
(1, 'Aguascalientes'),
(2, 'Baja California'),
(3, 'Baja California Sur'),
(4, 'Campeche'),
(5, 'Coahuila de Zaragoza'),
(6, 'Colima'),
(7, 'Chiapas'),
(8, 'Chihuahua'),
(9, 'Distrito Federal'),
(10, 'Durango'),
(11, 'Guanajuato'),
(12, 'Guerrero'),
(13, 'Hidalgo'),
(14, 'Jalisco'),
(15, 'México'),
(16, 'Michoacán de Ocampo'),
(17, 'Morelos'),
(18, 'Nayarit'),
(19, 'Nuevo León'),
(20, 'Oaxaca de Juárez'),
(21, 'Puebla'),
(22, 'Querétaro'),
(23, 'Quintana Roo'),
(24, 'San Luis Potosí'),
(25, 'Sinaloa'),
(26, 'Sonora'),
(27, 'Tabasco'),
(28, 'Tamaulipas'),
(29, 'Tlaxcala'),
(30, 'Veracruz de Ignacio de la Llave'),
(31, 'Yucatán'),
(32, 'Zacatecas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados_municipios`
--

CREATE TABLE `estados_municipios` (
  `id` int(11) NOT NULL,
  `estados_id` int(11) NOT NULL,
  `municipios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estados_municipios`
--

INSERT INTO `estados_municipios` (`id`, `estados_id`, `municipios_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 3, 17),
(18, 3, 18),
(19, 3, 19),
(20, 3, 20),
(21, 3, 21),
(22, 4, 22),
(23, 4, 23),
(24, 4, 24),
(25, 4, 25),
(26, 4, 26),
(27, 4, 27),
(28, 4, 28),
(29, 4, 29),
(30, 4, 30),
(31, 4, 31),
(32, 4, 32),
(33, 5, 33),
(34, 5, 34),
(35, 5, 35),
(36, 5, 36),
(37, 5, 37),
(38, 5, 38),
(39, 5, 39),
(40, 5, 40),
(41, 5, 41),
(42, 5, 42),
(43, 5, 43),
(44, 5, 44),
(45, 5, 45),
(46, 5, 46),
(47, 5, 47),
(48, 5, 48),
(49, 5, 49),
(50, 5, 50),
(51, 5, 51),
(52, 5, 52),
(53, 5, 53),
(54, 5, 54),
(55, 5, 55),
(56, 5, 56),
(57, 5, 57),
(58, 5, 58),
(59, 5, 59),
(60, 5, 60),
(61, 5, 61),
(62, 5, 62),
(63, 5, 63),
(64, 5, 64),
(65, 5, 65),
(66, 5, 66),
(67, 5, 67),
(68, 5, 68),
(69, 5, 69),
(70, 5, 70),
(71, 6, 71),
(72, 6, 72),
(73, 6, 73),
(74, 6, 74),
(75, 6, 75),
(76, 6, 76),
(77, 6, 77),
(78, 6, 78),
(79, 6, 79),
(80, 6, 80),
(81, 7, 81),
(82, 7, 82),
(83, 7, 83),
(84, 7, 84),
(85, 7, 85),
(86, 7, 86),
(87, 7, 87),
(88, 7, 88),
(89, 7, 89),
(90, 7, 90),
(91, 7, 91),
(92, 7, 92),
(93, 7, 93),
(94, 7, 94),
(95, 7, 95),
(96, 7, 96),
(97, 7, 97),
(98, 7, 98),
(99, 7, 99),
(100, 7, 100),
(101, 7, 101),
(102, 7, 102),
(103, 7, 103),
(104, 7, 104),
(105, 7, 105),
(106, 7, 106),
(107, 7, 107),
(108, 7, 108),
(109, 7, 109),
(110, 7, 110),
(111, 7, 111),
(112, 7, 112),
(113, 7, 113),
(114, 7, 114),
(115, 7, 115),
(116, 7, 116),
(117, 7, 117),
(118, 7, 118),
(119, 7, 119),
(120, 7, 120),
(121, 7, 121),
(122, 7, 122),
(123, 7, 123),
(124, 7, 124),
(125, 7, 125),
(126, 7, 126),
(127, 7, 127),
(128, 7, 128),
(129, 7, 129),
(130, 7, 130),
(131, 7, 131),
(132, 7, 132),
(133, 7, 133),
(134, 7, 134),
(135, 7, 135),
(136, 7, 136),
(137, 7, 137),
(138, 7, 138),
(139, 7, 139),
(140, 7, 140),
(141, 7, 141),
(142, 7, 142),
(143, 7, 143),
(144, 7, 144),
(145, 7, 145),
(146, 7, 146),
(147, 7, 147),
(148, 7, 148),
(149, 7, 149),
(150, 7, 150),
(151, 7, 151),
(152, 7, 152),
(153, 7, 153),
(154, 7, 154),
(155, 7, 155),
(156, 7, 156),
(157, 7, 157),
(158, 7, 158),
(159, 7, 159),
(160, 7, 160),
(161, 7, 161),
(162, 7, 162),
(163, 7, 163),
(164, 7, 164),
(165, 7, 165),
(166, 7, 166),
(167, 7, 167),
(168, 7, 168),
(169, 7, 169),
(170, 7, 170),
(171, 7, 171),
(172, 7, 172),
(173, 7, 173),
(174, 7, 174),
(175, 7, 175),
(176, 7, 176),
(177, 7, 177),
(178, 7, 178),
(179, 7, 179),
(180, 7, 180),
(181, 7, 181),
(182, 7, 182),
(183, 7, 183),
(184, 7, 184),
(185, 7, 185),
(186, 7, 186),
(187, 7, 187),
(188, 7, 188),
(189, 7, 189),
(190, 7, 190),
(191, 7, 191),
(192, 7, 192),
(193, 7, 193),
(194, 7, 194),
(195, 7, 195),
(196, 7, 196),
(197, 7, 197),
(198, 7, 198),
(199, 8, 199),
(200, 8, 200),
(201, 8, 201),
(202, 8, 202),
(203, 8, 203),
(204, 8, 204),
(205, 8, 205),
(206, 8, 206),
(207, 8, 207),
(208, 8, 208),
(209, 8, 209),
(210, 8, 210),
(211, 8, 211),
(212, 8, 212),
(213, 8, 213),
(214, 8, 214),
(215, 8, 215),
(216, 8, 216),
(217, 8, 217),
(218, 8, 218),
(219, 8, 219),
(220, 8, 220),
(221, 8, 221),
(222, 8, 222),
(223, 8, 223),
(224, 8, 224),
(225, 8, 225),
(226, 8, 226),
(227, 8, 227),
(228, 8, 228),
(229, 8, 229),
(230, 8, 230),
(231, 8, 231),
(232, 8, 232),
(233, 8, 233),
(234, 8, 234),
(235, 8, 235),
(236, 8, 236),
(237, 8, 237),
(238, 8, 238),
(239, 8, 239),
(240, 8, 240),
(241, 8, 241),
(242, 8, 242),
(243, 8, 243),
(244, 8, 244),
(245, 8, 245),
(246, 8, 246),
(247, 8, 247),
(248, 8, 248),
(249, 8, 249),
(250, 8, 250),
(251, 8, 251),
(252, 8, 252),
(253, 8, 253),
(254, 8, 254),
(255, 8, 255),
(256, 8, 256),
(257, 8, 257),
(258, 8, 258),
(259, 8, 259),
(260, 8, 260),
(261, 8, 261),
(262, 8, 262),
(263, 8, 263),
(264, 8, 264),
(265, 8, 265),
(266, 9, 266),
(267, 9, 267),
(268, 9, 268),
(269, 9, 269),
(270, 9, 270),
(271, 9, 271),
(272, 9, 272),
(273, 9, 273),
(274, 9, 274),
(275, 9, 275),
(276, 9, 276),
(277, 9, 277),
(278, 9, 278),
(279, 9, 279),
(280, 9, 280),
(281, 9, 281),
(282, 10, 282),
(283, 10, 283),
(284, 10, 284),
(285, 10, 285),
(286, 10, 286),
(287, 10, 287),
(288, 10, 288),
(289, 10, 289),
(290, 10, 290),
(291, 10, 291),
(292, 10, 292),
(293, 10, 293),
(294, 10, 294),
(295, 10, 295),
(296, 10, 296),
(297, 10, 297),
(298, 10, 298),
(299, 10, 299),
(300, 10, 300),
(301, 10, 301),
(302, 10, 302),
(303, 10, 303),
(304, 10, 304),
(305, 10, 305),
(306, 10, 306),
(307, 10, 307),
(308, 10, 308),
(309, 10, 309),
(310, 10, 310),
(311, 10, 311),
(312, 10, 312),
(313, 10, 313),
(314, 10, 314),
(315, 10, 315),
(316, 10, 316),
(317, 10, 317),
(318, 10, 318),
(319, 10, 319),
(320, 10, 320),
(321, 11, 321),
(322, 11, 322),
(323, 11, 323),
(324, 11, 324),
(325, 11, 325),
(326, 11, 326),
(327, 11, 327),
(328, 11, 328),
(329, 11, 329),
(330, 11, 330),
(331, 11, 331),
(332, 11, 332),
(333, 11, 333),
(334, 11, 334),
(335, 11, 335),
(336, 11, 336),
(337, 11, 337),
(338, 11, 338),
(339, 11, 339),
(340, 11, 340),
(341, 11, 341),
(342, 11, 342),
(343, 11, 343),
(344, 11, 344),
(345, 11, 345),
(346, 11, 346),
(347, 11, 347),
(348, 11, 348),
(349, 11, 349),
(350, 11, 350),
(351, 11, 351),
(352, 11, 352),
(353, 11, 353),
(354, 11, 354),
(355, 11, 355),
(356, 11, 356),
(357, 11, 357),
(358, 11, 358),
(359, 11, 359),
(360, 11, 360),
(361, 11, 361),
(362, 11, 362),
(363, 11, 363),
(364, 11, 364),
(365, 11, 365),
(366, 11, 366),
(367, 12, 367),
(368, 12, 368),
(369, 12, 369),
(370, 12, 370),
(371, 12, 371),
(372, 12, 372),
(373, 12, 373),
(374, 12, 374),
(375, 12, 375),
(376, 12, 376),
(377, 12, 377),
(378, 12, 378),
(379, 12, 379),
(380, 12, 380),
(381, 12, 381),
(382, 12, 382),
(383, 12, 383),
(384, 12, 384),
(385, 12, 385),
(386, 12, 386),
(387, 12, 387),
(388, 12, 388),
(389, 12, 389),
(390, 12, 390),
(391, 12, 391),
(392, 12, 392),
(393, 12, 393),
(394, 12, 394),
(395, 12, 395),
(396, 12, 396),
(397, 12, 397),
(398, 12, 398),
(399, 12, 399),
(400, 12, 400),
(401, 12, 401),
(402, 12, 402),
(403, 12, 403),
(404, 12, 404),
(405, 12, 405),
(406, 12, 406),
(407, 12, 407),
(408, 12, 408),
(409, 12, 409),
(410, 12, 410),
(411, 12, 411),
(412, 12, 412),
(413, 12, 413),
(414, 12, 414),
(415, 12, 415),
(416, 12, 416),
(417, 12, 417),
(418, 12, 418),
(419, 12, 419),
(420, 12, 420),
(421, 12, 421),
(422, 12, 422),
(423, 12, 423),
(424, 12, 424),
(425, 12, 425),
(426, 12, 426),
(427, 12, 427),
(428, 12, 428),
(429, 12, 429),
(430, 12, 430),
(431, 12, 431),
(432, 12, 432),
(433, 12, 433),
(434, 12, 434),
(435, 12, 435),
(436, 12, 436),
(437, 12, 437),
(438, 12, 438),
(439, 12, 439),
(440, 12, 440),
(441, 12, 441),
(442, 12, 442),
(443, 12, 443),
(444, 12, 444),
(445, 12, 445),
(446, 12, 446),
(447, 12, 447),
(448, 13, 448),
(449, 13, 449),
(450, 13, 450),
(451, 13, 451),
(452, 13, 452),
(453, 13, 453),
(454, 13, 454),
(455, 13, 455),
(456, 13, 456),
(457, 13, 457),
(458, 13, 458),
(459, 13, 459),
(460, 13, 460),
(461, 13, 461),
(462, 13, 462),
(463, 13, 463),
(464, 13, 464),
(465, 13, 465),
(466, 13, 466),
(467, 13, 467),
(468, 13, 468),
(469, 13, 469),
(470, 13, 470),
(471, 13, 471),
(472, 13, 472),
(473, 13, 473),
(474, 13, 474),
(475, 13, 475),
(476, 13, 476),
(477, 13, 477),
(478, 13, 478),
(479, 13, 479),
(480, 13, 480),
(481, 13, 481),
(482, 13, 482),
(483, 13, 483),
(484, 13, 484),
(485, 13, 485),
(486, 13, 486),
(487, 13, 487),
(488, 13, 488),
(489, 13, 489),
(490, 13, 490),
(491, 13, 491),
(492, 13, 492),
(493, 13, 493),
(494, 13, 494),
(495, 13, 495),
(496, 13, 496),
(497, 13, 497),
(498, 13, 498),
(499, 13, 499),
(500, 13, 500),
(501, 13, 501),
(502, 13, 502),
(503, 13, 503),
(504, 13, 504),
(505, 13, 505),
(506, 13, 506),
(507, 13, 507),
(508, 13, 508),
(509, 13, 509),
(510, 13, 510),
(511, 13, 511),
(512, 13, 512),
(513, 13, 513),
(514, 13, 514),
(515, 13, 515),
(516, 13, 516),
(517, 13, 517),
(518, 13, 518),
(519, 13, 519),
(520, 13, 520),
(521, 13, 521),
(522, 13, 522),
(523, 13, 523),
(524, 13, 524),
(525, 13, 525),
(526, 13, 526),
(527, 13, 527),
(528, 13, 528),
(529, 13, 529),
(530, 13, 530),
(531, 13, 531),
(532, 14, 532),
(533, 14, 533),
(534, 14, 534),
(535, 14, 535),
(536, 14, 536),
(537, 14, 537),
(538, 14, 538),
(539, 14, 539),
(540, 14, 540),
(541, 14, 541),
(542, 14, 542),
(543, 14, 543),
(544, 14, 544),
(545, 14, 545),
(546, 14, 546),
(547, 14, 547),
(548, 14, 548),
(549, 14, 549),
(550, 14, 550),
(551, 14, 551),
(552, 14, 552),
(553, 14, 553),
(554, 14, 554),
(555, 14, 555),
(556, 14, 556),
(557, 14, 557),
(558, 14, 558),
(559, 14, 559),
(560, 14, 560),
(561, 14, 561),
(562, 14, 562),
(563, 14, 563),
(564, 14, 564),
(565, 14, 565),
(566, 14, 566),
(567, 14, 567),
(568, 14, 568),
(569, 14, 569),
(570, 14, 570),
(571, 14, 571),
(572, 14, 572),
(573, 14, 573),
(574, 14, 574),
(575, 14, 575),
(576, 14, 576),
(577, 14, 577),
(578, 14, 578),
(579, 14, 579),
(580, 14, 580),
(581, 14, 581),
(582, 14, 582),
(583, 14, 583),
(584, 14, 584),
(585, 14, 585),
(586, 14, 586),
(587, 14, 587),
(588, 14, 588),
(589, 14, 589),
(590, 14, 590),
(591, 14, 591),
(592, 14, 592),
(593, 14, 593),
(594, 14, 594),
(595, 14, 595),
(596, 14, 596),
(597, 14, 597),
(598, 14, 598),
(599, 14, 599),
(600, 14, 600),
(601, 14, 601),
(602, 14, 602),
(603, 14, 603),
(604, 14, 604),
(605, 14, 605),
(606, 14, 606),
(607, 14, 607),
(608, 14, 608),
(609, 14, 609),
(610, 14, 610),
(611, 14, 611),
(612, 14, 612),
(613, 14, 613),
(614, 14, 614),
(615, 14, 615),
(616, 14, 616),
(617, 14, 617),
(618, 14, 618),
(619, 14, 619),
(620, 14, 620),
(621, 14, 621),
(622, 14, 622),
(623, 14, 623),
(624, 14, 624),
(625, 14, 625),
(626, 14, 626),
(627, 14, 627),
(628, 14, 628),
(629, 14, 629),
(630, 14, 630),
(631, 14, 631),
(632, 14, 632),
(633, 14, 633),
(634, 14, 634),
(635, 14, 635),
(636, 14, 636),
(637, 14, 637),
(638, 14, 638),
(639, 14, 639),
(640, 14, 640),
(641, 14, 641),
(642, 14, 642),
(643, 14, 643),
(644, 14, 644),
(645, 14, 645),
(646, 14, 646),
(647, 14, 647),
(648, 14, 648),
(649, 14, 649),
(650, 14, 650),
(651, 14, 651),
(652, 14, 652),
(653, 14, 653),
(654, 14, 654),
(655, 14, 655),
(656, 14, 656),
(657, 15, 657),
(658, 15, 658),
(659, 15, 659),
(660, 15, 660),
(661, 15, 661),
(662, 15, 662),
(663, 15, 663),
(664, 15, 664),
(665, 15, 665),
(666, 15, 666),
(667, 15, 667),
(668, 15, 668),
(669, 15, 669),
(670, 15, 670),
(671, 15, 671),
(672, 15, 672),
(673, 15, 673),
(674, 15, 674),
(675, 15, 675),
(676, 15, 676),
(677, 15, 677),
(678, 15, 678),
(679, 15, 679),
(680, 15, 680),
(681, 15, 681),
(682, 15, 682),
(683, 15, 683),
(684, 15, 684),
(685, 15, 685),
(686, 15, 686),
(687, 15, 687),
(688, 15, 688),
(689, 15, 689),
(690, 15, 690),
(691, 15, 691),
(692, 15, 692),
(693, 15, 693),
(694, 15, 694),
(695, 15, 695),
(696, 15, 696),
(697, 15, 697),
(698, 15, 698),
(699, 15, 699),
(700, 15, 700),
(701, 15, 701),
(702, 15, 702),
(703, 15, 703),
(704, 15, 704),
(705, 15, 705),
(706, 15, 706),
(707, 15, 707),
(708, 15, 708),
(709, 15, 709),
(710, 15, 710),
(711, 15, 711),
(712, 15, 712),
(713, 15, 713),
(714, 15, 714),
(715, 15, 715),
(716, 15, 716),
(717, 15, 717),
(718, 15, 718),
(719, 15, 719),
(720, 15, 720),
(721, 15, 721),
(722, 15, 722),
(723, 15, 723),
(724, 15, 724),
(725, 15, 725),
(726, 15, 726),
(727, 15, 727),
(728, 15, 728),
(729, 15, 729),
(730, 15, 730),
(731, 15, 731),
(732, 15, 732),
(733, 15, 733),
(734, 15, 734),
(735, 15, 735),
(736, 15, 736),
(737, 15, 737),
(738, 15, 738),
(739, 15, 739),
(740, 15, 740),
(741, 15, 741),
(742, 15, 742),
(743, 15, 743),
(744, 15, 744),
(745, 15, 745),
(746, 15, 746),
(747, 15, 747),
(748, 15, 748),
(749, 15, 749),
(750, 15, 750),
(751, 15, 751),
(752, 15, 752),
(753, 15, 753),
(754, 15, 754),
(755, 15, 755),
(756, 15, 756),
(757, 15, 757),
(758, 15, 758),
(759, 15, 759),
(760, 15, 760),
(761, 15, 761),
(762, 15, 762),
(763, 15, 763),
(764, 15, 764),
(765, 15, 765),
(766, 15, 766),
(767, 15, 767),
(768, 15, 768),
(769, 15, 769),
(770, 15, 770),
(771, 15, 771),
(772, 15, 772),
(773, 15, 773),
(774, 15, 774),
(775, 15, 775),
(776, 15, 776),
(777, 15, 777),
(778, 15, 778),
(779, 15, 779),
(780, 15, 780),
(781, 15, 781),
(782, 16, 782),
(783, 16, 783),
(784, 16, 784),
(785, 16, 785),
(786, 16, 786),
(787, 16, 787),
(788, 16, 788),
(789, 16, 789),
(790, 16, 790),
(791, 16, 791),
(792, 16, 792),
(793, 16, 793),
(794, 16, 794),
(795, 16, 795),
(796, 16, 796),
(797, 16, 797),
(798, 16, 798),
(799, 16, 799),
(800, 16, 800),
(801, 16, 801),
(802, 16, 802),
(803, 16, 803),
(804, 16, 804),
(805, 16, 805),
(806, 16, 806),
(807, 16, 807),
(808, 16, 808),
(809, 16, 809),
(810, 16, 810),
(811, 16, 811),
(812, 16, 812),
(813, 16, 813),
(814, 16, 814),
(815, 16, 815),
(816, 16, 816),
(817, 16, 817),
(818, 16, 818),
(819, 16, 819),
(820, 16, 820),
(821, 16, 821),
(822, 16, 822),
(823, 16, 823),
(824, 16, 824),
(825, 16, 825),
(826, 16, 826),
(827, 16, 827),
(828, 16, 828),
(829, 16, 829),
(830, 16, 830),
(831, 16, 831),
(832, 16, 832),
(833, 16, 833),
(834, 16, 834),
(835, 16, 835),
(836, 16, 836),
(837, 16, 837),
(838, 16, 838),
(839, 16, 839),
(840, 16, 840),
(841, 16, 841),
(842, 16, 842),
(843, 16, 843),
(844, 16, 844),
(845, 16, 845),
(846, 16, 846),
(847, 16, 847),
(848, 16, 848),
(849, 16, 849),
(850, 16, 850),
(851, 16, 851),
(852, 16, 852),
(853, 16, 853),
(854, 16, 854),
(855, 16, 855),
(856, 16, 856),
(857, 16, 857),
(858, 16, 858),
(859, 16, 859),
(860, 16, 860),
(861, 16, 861),
(862, 16, 862),
(863, 16, 863),
(864, 16, 864),
(865, 16, 865),
(866, 16, 866),
(867, 16, 867),
(868, 16, 868),
(869, 16, 869),
(870, 16, 870),
(871, 16, 871),
(872, 16, 872),
(873, 16, 873),
(874, 16, 874),
(875, 16, 875),
(876, 16, 876),
(877, 16, 877),
(878, 16, 878),
(879, 16, 879),
(880, 16, 880),
(881, 16, 881),
(882, 16, 882),
(883, 16, 883),
(884, 16, 884),
(885, 16, 885),
(886, 16, 886),
(887, 16, 887),
(888, 16, 888),
(889, 16, 889),
(890, 16, 890),
(891, 16, 891),
(892, 16, 892),
(893, 16, 893),
(894, 16, 894),
(895, 17, 895),
(896, 17, 896),
(897, 17, 897),
(898, 17, 898),
(899, 17, 899),
(900, 17, 900),
(901, 17, 901),
(902, 17, 902),
(903, 17, 903),
(904, 17, 904),
(905, 17, 905),
(906, 17, 906),
(907, 17, 907),
(908, 17, 908),
(909, 17, 909),
(910, 17, 910),
(911, 17, 911),
(912, 17, 912),
(913, 17, 913),
(914, 17, 914),
(915, 17, 915),
(916, 17, 916),
(917, 17, 917),
(918, 17, 918),
(919, 17, 919),
(920, 17, 920),
(921, 17, 921),
(922, 17, 922),
(923, 17, 923),
(924, 17, 924),
(925, 17, 925),
(926, 17, 926),
(927, 17, 927),
(928, 18, 928),
(929, 18, 929),
(930, 18, 930),
(931, 18, 931),
(932, 18, 932),
(933, 18, 933),
(934, 18, 934),
(935, 18, 935),
(936, 18, 936),
(937, 18, 937),
(938, 18, 938),
(939, 18, 939),
(940, 18, 940),
(941, 18, 941),
(942, 18, 942),
(943, 18, 943),
(944, 18, 944),
(945, 18, 945),
(946, 18, 946),
(947, 18, 947),
(948, 19, 948),
(949, 19, 949),
(950, 19, 950),
(951, 19, 951),
(952, 19, 952),
(953, 19, 953),
(954, 19, 954),
(955, 19, 955),
(956, 19, 956),
(957, 19, 957),
(958, 19, 958),
(959, 19, 959),
(960, 19, 960),
(961, 19, 961),
(962, 19, 962),
(963, 19, 963),
(964, 19, 964),
(965, 19, 965),
(966, 19, 966),
(967, 19, 967),
(968, 19, 968),
(969, 19, 969),
(970, 19, 970),
(971, 19, 971),
(972, 19, 972),
(973, 19, 973),
(974, 19, 974),
(975, 19, 975),
(976, 19, 976),
(977, 19, 977),
(978, 19, 978),
(979, 19, 979),
(980, 19, 980),
(981, 19, 981),
(982, 19, 982),
(983, 19, 983),
(984, 19, 984),
(985, 19, 985),
(986, 19, 986),
(987, 19, 987),
(988, 19, 988),
(989, 19, 989),
(990, 19, 990),
(991, 19, 991),
(992, 19, 992),
(993, 19, 993),
(994, 19, 994),
(995, 19, 995),
(996, 19, 996),
(997, 19, 997),
(998, 19, 998),
(999, 20, 999),
(1000, 20, 1000),
(1001, 20, 1001),
(1002, 20, 1002),
(1003, 20, 1003),
(1004, 20, 1004),
(1005, 20, 1005),
(1006, 20, 1006),
(1007, 20, 1007),
(1008, 20, 1008),
(1009, 20, 1009),
(1010, 20, 1010),
(1011, 20, 1011),
(1012, 20, 1012),
(1013, 20, 1013),
(1014, 20, 1014),
(1015, 20, 1015),
(1016, 20, 1016),
(1017, 20, 1017),
(1018, 20, 1018),
(1019, 20, 1019),
(1020, 20, 1020),
(1021, 20, 1021),
(1022, 20, 1022),
(1023, 20, 1023),
(1024, 20, 1024),
(1025, 20, 1025),
(1026, 20, 1026),
(1027, 20, 1027),
(1028, 20, 1028),
(1029, 20, 1029),
(1030, 20, 1030),
(1031, 20, 1031),
(1032, 20, 1032),
(1033, 20, 1033),
(1034, 20, 1034),
(1035, 20, 1035),
(1036, 20, 1036),
(1037, 20, 1037),
(1038, 20, 1038),
(1039, 20, 1039),
(1040, 20, 1040),
(1041, 20, 1041),
(1042, 20, 1042),
(1043, 20, 1043),
(1044, 20, 1044),
(1045, 20, 1045),
(1046, 20, 1046),
(1047, 20, 1047),
(1048, 20, 1048),
(1049, 20, 1049),
(1050, 20, 1050),
(1051, 20, 1051),
(1052, 20, 1052),
(1053, 20, 1053),
(1054, 20, 1054),
(1055, 20, 1055),
(1056, 20, 1056),
(1057, 20, 1057),
(1058, 20, 1058),
(1059, 20, 1059),
(1060, 20, 1060),
(1061, 20, 1061),
(1062, 20, 1062),
(1063, 20, 1063),
(1064, 20, 1064),
(1065, 20, 1065),
(1066, 20, 1066),
(1067, 20, 1067),
(1068, 20, 1068),
(1069, 20, 1069),
(1070, 20, 1070),
(1071, 20, 1071),
(1072, 20, 1072),
(1073, 20, 1073),
(1074, 20, 1074),
(1075, 20, 1075),
(1076, 20, 1076),
(1077, 20, 1077),
(1078, 20, 1078),
(1079, 20, 1079),
(1080, 20, 1080),
(1081, 20, 1081),
(1082, 20, 1082),
(1083, 20, 1083),
(1084, 20, 1084),
(1085, 20, 1085),
(1086, 20, 1086),
(1087, 20, 1087),
(1088, 20, 1088),
(1089, 20, 1089),
(1090, 20, 1090),
(1091, 20, 1091),
(1092, 20, 1092),
(1093, 20, 1093),
(1094, 20, 1094),
(1095, 20, 1095),
(1096, 20, 1096),
(1097, 20, 1097),
(1098, 20, 1098),
(1099, 20, 1099),
(1100, 20, 1100),
(1101, 20, 1101),
(1102, 20, 1102),
(1103, 20, 1103),
(1104, 20, 1104),
(1105, 20, 1105),
(1106, 20, 1106),
(1107, 20, 1107),
(1108, 20, 1108),
(1109, 20, 1109),
(1110, 20, 1110),
(1111, 20, 1111),
(1112, 20, 1112),
(1113, 20, 1113),
(1114, 20, 1114),
(1115, 20, 1115),
(1116, 20, 1116),
(1117, 20, 1117),
(1118, 20, 1118),
(1119, 20, 1119),
(1120, 20, 1120),
(1121, 20, 1121),
(1122, 20, 1122),
(1123, 20, 1123),
(1124, 20, 1124),
(1125, 20, 1125),
(1126, 20, 1126),
(1127, 20, 1127),
(1128, 20, 1128),
(1129, 20, 1129),
(1130, 20, 1130),
(1131, 20, 1131),
(1132, 20, 1132),
(1133, 20, 1133),
(1134, 20, 1134),
(1135, 20, 1135),
(1136, 20, 1136),
(1137, 20, 1137),
(1138, 20, 1138),
(1139, 20, 1139),
(1140, 20, 1140),
(1141, 20, 1141),
(1142, 20, 1142),
(1143, 20, 1143),
(1144, 20, 1144),
(1145, 20, 1145),
(1146, 20, 1146),
(1147, 20, 1147),
(1148, 20, 1148),
(1149, 20, 1149),
(1150, 20, 1150),
(1151, 20, 1151),
(1152, 20, 1152),
(1153, 20, 1153),
(1154, 20, 1154),
(1155, 20, 1155),
(1156, 20, 1156),
(1157, 20, 1157),
(1158, 20, 1158),
(1159, 20, 1159),
(1160, 20, 1160),
(1161, 20, 1161),
(1162, 20, 1162),
(1163, 20, 1163),
(1164, 20, 1164),
(1165, 20, 1165),
(1166, 20, 1166),
(1167, 20, 1167),
(1168, 20, 1168),
(1169, 20, 1169),
(1170, 20, 1170),
(1171, 20, 1171),
(1172, 20, 1172),
(1173, 20, 1173),
(1174, 20, 1174),
(1175, 20, 1175),
(1176, 20, 1176),
(1177, 20, 1177),
(1178, 20, 1178),
(1179, 20, 1179),
(1180, 20, 1180),
(1181, 20, 1181),
(1182, 20, 1182),
(1183, 20, 1183),
(1184, 20, 1184),
(1185, 20, 1185),
(1186, 20, 1186),
(1187, 20, 1187),
(1188, 20, 1188),
(1189, 20, 1189),
(1190, 20, 1190),
(1191, 20, 1191),
(1192, 20, 1192),
(1193, 20, 1193),
(1194, 20, 1194),
(1195, 20, 1195),
(1196, 20, 1196),
(1197, 20, 1197),
(1198, 20, 1198),
(1199, 20, 1199),
(1200, 20, 1200),
(1201, 20, 1201),
(1202, 20, 1202),
(1203, 20, 1203),
(1204, 20, 1204),
(1205, 20, 1205),
(1206, 20, 1206),
(1207, 20, 1207),
(1208, 20, 1208),
(1209, 20, 1209),
(1210, 20, 1210),
(1211, 20, 1211),
(1212, 20, 1212),
(1213, 20, 1213),
(1214, 20, 1214),
(1215, 20, 1215),
(1216, 20, 1216),
(1217, 20, 1217),
(1218, 20, 1218),
(1219, 20, 1219),
(1220, 20, 1220),
(1221, 20, 1221),
(1222, 20, 1222),
(1223, 20, 1223),
(1224, 20, 1224),
(1225, 20, 1225),
(1226, 20, 1226),
(1227, 20, 1227),
(1228, 20, 1228),
(1229, 20, 1229),
(1230, 20, 1230),
(1231, 20, 1231),
(1232, 20, 1232),
(1233, 20, 1233),
(1234, 20, 1234),
(1235, 20, 1235),
(1236, 20, 1236),
(1237, 20, 1237),
(1238, 20, 1238),
(1239, 20, 1239),
(1240, 20, 1240),
(1241, 20, 1241),
(1242, 20, 1242),
(1243, 20, 1243),
(1244, 20, 1244),
(1245, 20, 1245),
(1246, 20, 1246),
(1247, 20, 1247),
(1248, 20, 1248),
(1249, 20, 1249),
(1250, 20, 1250),
(1251, 20, 1251),
(1252, 20, 1252),
(1253, 20, 1253),
(1254, 20, 1254),
(1255, 20, 1255),
(1256, 20, 1256),
(1257, 20, 1257),
(1258, 20, 1258),
(1259, 20, 1259),
(1260, 20, 1260),
(1261, 20, 1261),
(1262, 20, 1262),
(1263, 20, 1263),
(1264, 20, 1264),
(1265, 20, 1265),
(1266, 20, 1266),
(1267, 20, 1267),
(1268, 20, 1268),
(1269, 20, 1269),
(1270, 20, 1270),
(1271, 20, 1271),
(1272, 20, 1272),
(1273, 20, 1273),
(1274, 20, 1274),
(1275, 20, 1275),
(1276, 20, 1276),
(1277, 20, 1277),
(1278, 20, 1278),
(1279, 20, 1279),
(1280, 20, 1280),
(1281, 20, 1281),
(1282, 20, 1282),
(1283, 20, 1283),
(1284, 20, 1284),
(1285, 20, 1285),
(1286, 20, 1286),
(1287, 20, 1287),
(1288, 20, 1288),
(1289, 20, 1289),
(1290, 20, 1290),
(1291, 20, 1291),
(1292, 20, 1292),
(1293, 20, 1293),
(1294, 20, 1294),
(1295, 20, 1295),
(1296, 20, 1296),
(1297, 20, 1297),
(1298, 20, 1298),
(1299, 20, 1299),
(1300, 20, 1300),
(1301, 20, 1301),
(1302, 20, 1302),
(1303, 20, 1303),
(1304, 20, 1304),
(1305, 20, 1305),
(1306, 20, 1306),
(1307, 20, 1307),
(1308, 20, 1308),
(1309, 20, 1309),
(1310, 20, 1310),
(1311, 20, 1311),
(1312, 20, 1312),
(1313, 20, 1313),
(1314, 20, 1314),
(1315, 20, 1315),
(1316, 20, 1316),
(1317, 20, 1317),
(1318, 20, 1318),
(1319, 20, 1319),
(1320, 20, 1320),
(1321, 20, 1321),
(1322, 20, 1322),
(1323, 20, 1323),
(1324, 20, 1324),
(1325, 20, 1325),
(1326, 20, 1326),
(1327, 20, 1327),
(1328, 20, 1328),
(1329, 20, 1329),
(1330, 20, 1330),
(1331, 20, 1331),
(1332, 20, 1332),
(1333, 20, 1333),
(1334, 20, 1334),
(1335, 20, 1335),
(1336, 20, 1336),
(1337, 20, 1337),
(1338, 20, 1338),
(1339, 20, 1339),
(1340, 20, 1340),
(1341, 20, 1341),
(1342, 20, 1342),
(1343, 20, 1343),
(1344, 20, 1344),
(1345, 20, 1345),
(1346, 20, 1346),
(1347, 20, 1347),
(1348, 20, 1348),
(1349, 20, 1349),
(1350, 20, 1350),
(1351, 20, 1351),
(1352, 20, 1352),
(1353, 20, 1353),
(1354, 20, 1354),
(1355, 20, 1355),
(1356, 20, 1356),
(1357, 20, 1357),
(1358, 20, 1358),
(1359, 20, 1359),
(1360, 20, 1360),
(1361, 20, 1361),
(1362, 20, 1362),
(1363, 20, 1363),
(1364, 20, 1364),
(1365, 20, 1365),
(1366, 20, 1366),
(1367, 20, 1367),
(1368, 20, 1368),
(1369, 20, 1369),
(1370, 20, 1370),
(1371, 20, 1371),
(1372, 20, 1372),
(1373, 20, 1373),
(1374, 20, 1374),
(1375, 20, 1375),
(1376, 20, 1376),
(1377, 20, 1377),
(1378, 20, 1378),
(1379, 20, 1379),
(1380, 20, 1380),
(1381, 20, 1381),
(1382, 20, 1382),
(1383, 20, 1383),
(1384, 20, 1384),
(1385, 20, 1385),
(1386, 20, 1386),
(1387, 20, 1387),
(1388, 20, 1388),
(1389, 20, 1389),
(1390, 20, 1390),
(1391, 20, 1391),
(1392, 20, 1392),
(1393, 20, 1393),
(1394, 20, 1394),
(1395, 20, 1395),
(1396, 20, 1396),
(1397, 20, 1397),
(1398, 20, 1398),
(1399, 20, 1399),
(1400, 20, 1400),
(1401, 20, 1401),
(1402, 20, 1402),
(1403, 20, 1403),
(1404, 20, 1404),
(1405, 20, 1405),
(1406, 20, 1406),
(1407, 20, 1407),
(1408, 20, 1408),
(1409, 20, 1409),
(1410, 20, 1410),
(1411, 20, 1411),
(1412, 20, 1412),
(1413, 20, 1413),
(1414, 20, 1414),
(1415, 20, 1415),
(1416, 20, 1416),
(1417, 20, 1417),
(1418, 20, 1418),
(1419, 20, 1419),
(1420, 20, 1420),
(1421, 20, 1421),
(1422, 20, 1422),
(1423, 20, 1423),
(1424, 20, 1424),
(1425, 20, 1425),
(1426, 20, 1426),
(1427, 20, 1427),
(1428, 20, 1428),
(1429, 20, 1429),
(1430, 20, 1430),
(1431, 20, 1431),
(1432, 20, 1432),
(1433, 20, 1433),
(1434, 20, 1434),
(1435, 20, 1435),
(1436, 20, 1436),
(1437, 20, 1437),
(1438, 20, 1438),
(1439, 20, 1439),
(1440, 20, 1440),
(1441, 20, 1441),
(1442, 20, 1442),
(1443, 20, 1443),
(1444, 20, 1444),
(1445, 20, 1445),
(1446, 20, 1446),
(1447, 20, 1447),
(1448, 20, 1448),
(1449, 20, 1449),
(1450, 20, 1450),
(1451, 20, 1451),
(1452, 20, 1452),
(1453, 20, 1453),
(1454, 20, 1454),
(1455, 20, 1455),
(1456, 20, 1456),
(1457, 20, 1457),
(1458, 20, 1458),
(1459, 20, 1459),
(1460, 20, 1460),
(1461, 20, 1461),
(1462, 20, 1462),
(1463, 20, 1463),
(1464, 20, 1464),
(1465, 20, 1465),
(1466, 20, 1466),
(1467, 20, 1467),
(1468, 20, 1468),
(1469, 20, 1469),
(1470, 20, 1470),
(1471, 20, 1471),
(1472, 20, 1472),
(1473, 20, 1473),
(1474, 20, 1474),
(1475, 20, 1475),
(1476, 20, 1476),
(1477, 20, 1477),
(1478, 20, 1478),
(1479, 20, 1479),
(1480, 20, 1480),
(1481, 20, 1481),
(1482, 20, 1482),
(1483, 20, 1483),
(1484, 20, 1484),
(1485, 20, 1485),
(1486, 20, 1486),
(1487, 20, 1487),
(1488, 20, 1488),
(1489, 20, 1489),
(1490, 20, 1490),
(1491, 20, 1491),
(1492, 20, 1492),
(1493, 20, 1493),
(1494, 20, 1494),
(1495, 20, 1495),
(1496, 20, 1496),
(1497, 20, 1497),
(1498, 20, 1498),
(1499, 20, 1499),
(1500, 20, 1500),
(1501, 20, 1501),
(1502, 20, 1502),
(1503, 20, 1503),
(1504, 20, 1504),
(1505, 20, 1505),
(1506, 20, 1506),
(1507, 20, 1507),
(1508, 20, 1508),
(1509, 20, 1509),
(1510, 20, 1510),
(1511, 20, 1511),
(1512, 20, 1512),
(1513, 20, 1513),
(1514, 20, 1514),
(1515, 20, 1515),
(1516, 20, 1516),
(1517, 20, 1517),
(1518, 20, 1518),
(1519, 20, 1519),
(1520, 20, 1520),
(1521, 20, 1521),
(1522, 20, 1522),
(1523, 20, 1523),
(1524, 20, 1524),
(1525, 20, 1525),
(1526, 20, 1526),
(1527, 20, 1527),
(1528, 20, 1528),
(1529, 20, 1529),
(1530, 20, 1530),
(1531, 20, 1531),
(1532, 20, 1532),
(1533, 20, 1533),
(1534, 20, 1534),
(1535, 20, 1535),
(1536, 20, 1536),
(1537, 20, 1537),
(1538, 20, 1538),
(1539, 20, 1539),
(1540, 20, 1540),
(1541, 20, 1541),
(1542, 20, 1542),
(1543, 20, 1543),
(1544, 20, 1544),
(1545, 20, 1545),
(1546, 20, 1546),
(1547, 20, 1547),
(1548, 20, 1548),
(1549, 20, 1549),
(1550, 20, 1550),
(1551, 20, 1551),
(1552, 20, 1552),
(1553, 20, 1553),
(1554, 20, 1554),
(1555, 20, 1555),
(1556, 20, 1556),
(1557, 20, 1557),
(1558, 20, 1558),
(1559, 20, 1559),
(1560, 20, 1560),
(1561, 20, 1561),
(1562, 20, 1562),
(1563, 20, 1563),
(1564, 20, 1564),
(1565, 20, 1565),
(1566, 20, 1566),
(1567, 20, 1567),
(1568, 20, 1568),
(1569, 21, 1569),
(1570, 21, 1570),
(1571, 21, 1571),
(1572, 21, 1572),
(1573, 21, 1573),
(1574, 21, 1574),
(1575, 21, 1575),
(1576, 21, 1576),
(1577, 21, 1577),
(1578, 21, 1578),
(1579, 21, 1579),
(1580, 21, 1580),
(1581, 21, 1581),
(1582, 21, 1582),
(1583, 21, 1583),
(1584, 21, 1584),
(1585, 21, 1585),
(1586, 21, 1586),
(1587, 21, 1587),
(1588, 21, 1588),
(1589, 21, 1589),
(1590, 21, 1590),
(1591, 21, 1591),
(1592, 21, 1592),
(1593, 21, 1593),
(1594, 21, 1594),
(1595, 21, 1595),
(1596, 21, 1596),
(1597, 21, 1597),
(1598, 21, 1598),
(1599, 21, 1599),
(1600, 21, 1600),
(1601, 21, 1601),
(1602, 21, 1602),
(1603, 21, 1603),
(1604, 21, 1604),
(1605, 21, 1605),
(1606, 21, 1606),
(1607, 21, 1607),
(1608, 21, 1608),
(1609, 21, 1609),
(1610, 21, 1610),
(1611, 21, 1611),
(1612, 21, 1612),
(1613, 21, 1613),
(1614, 21, 1614),
(1615, 21, 1615),
(1616, 21, 1616),
(1617, 21, 1617),
(1618, 21, 1618),
(1619, 21, 1619),
(1620, 21, 1620),
(1621, 21, 1621),
(1622, 21, 1622),
(1623, 21, 1623),
(1624, 21, 1624),
(1625, 21, 1625),
(1626, 21, 1626),
(1627, 21, 1627),
(1628, 21, 1628),
(1629, 21, 1629),
(1630, 21, 1630),
(1631, 21, 1631),
(1632, 21, 1632),
(1633, 21, 1633),
(1634, 21, 1634),
(1635, 21, 1635),
(1636, 21, 1636),
(1637, 21, 1637),
(1638, 21, 1638),
(1639, 21, 1639),
(1640, 21, 1640),
(1641, 21, 1641),
(1642, 21, 1642),
(1643, 21, 1643),
(1644, 21, 1644),
(1645, 21, 1645),
(1646, 21, 1646),
(1647, 21, 1647),
(1648, 21, 1648),
(1649, 21, 1649),
(1650, 21, 1650),
(1651, 21, 1651),
(1652, 21, 1652),
(1653, 21, 1653),
(1654, 21, 1654),
(1655, 21, 1655),
(1656, 21, 1656),
(1657, 21, 1657),
(1658, 21, 1658),
(1659, 21, 1659),
(1660, 21, 1660),
(1661, 21, 1661),
(1662, 21, 1662),
(1663, 21, 1663),
(1664, 21, 1664),
(1665, 21, 1665),
(1666, 21, 1666),
(1667, 21, 1667),
(1668, 21, 1668),
(1669, 21, 1669),
(1670, 21, 1670),
(1671, 21, 1671),
(1672, 21, 1672),
(1673, 21, 1673),
(1674, 21, 1674),
(1675, 21, 1675),
(1676, 21, 1676),
(1677, 21, 1677),
(1678, 21, 1678),
(1679, 21, 1679),
(1680, 21, 1680),
(1681, 21, 1681),
(1682, 21, 1682),
(1683, 21, 1683),
(1684, 21, 1684),
(1685, 21, 1685),
(1686, 21, 1686),
(1687, 21, 1687),
(1688, 21, 1688),
(1689, 21, 1689),
(1690, 21, 1690),
(1691, 21, 1691),
(1692, 21, 1692),
(1693, 21, 1693),
(1694, 21, 1694),
(1695, 21, 1695),
(1696, 21, 1696),
(1697, 21, 1697),
(1698, 21, 1698),
(1699, 21, 1699),
(1700, 21, 1700),
(1701, 21, 1701),
(1702, 21, 1702),
(1703, 21, 1703),
(1704, 21, 1704),
(1705, 21, 1705),
(1706, 21, 1706),
(1707, 21, 1707),
(1708, 21, 1708),
(1709, 21, 1709),
(1710, 21, 1710),
(1711, 21, 1711),
(1712, 21, 1712),
(1713, 21, 1713),
(1714, 21, 1714),
(1715, 21, 1715),
(1716, 21, 1716),
(1717, 21, 1717),
(1718, 21, 1718),
(1719, 21, 1719),
(1720, 21, 1720),
(1721, 21, 1721),
(1722, 21, 1722),
(1723, 21, 1723),
(1724, 21, 1724),
(1725, 21, 1725),
(1726, 21, 1726),
(1727, 21, 1727),
(1728, 21, 1728),
(1729, 21, 1729),
(1730, 21, 1730),
(1731, 21, 1731),
(1732, 21, 1732),
(1733, 21, 1733),
(1734, 21, 1734),
(1735, 21, 1735),
(1736, 21, 1736),
(1737, 21, 1737),
(1738, 21, 1738),
(1739, 21, 1739),
(1740, 21, 1740),
(1741, 21, 1741),
(1742, 21, 1742),
(1743, 21, 1743),
(1744, 21, 1744),
(1745, 21, 1745),
(1746, 21, 1746),
(1747, 21, 1747),
(1748, 21, 1748),
(1749, 21, 1749),
(1750, 21, 1750),
(1751, 21, 1751),
(1752, 21, 1752),
(1753, 21, 1753),
(1754, 21, 1754),
(1755, 21, 1755),
(1756, 21, 1756),
(1757, 21, 1757),
(1758, 21, 1758),
(1759, 21, 1759),
(1760, 21, 1760),
(1761, 21, 1761),
(1762, 21, 1762),
(1763, 21, 1763),
(1764, 21, 1764),
(1765, 21, 1765),
(1766, 21, 1766),
(1767, 21, 1767),
(1768, 21, 1768),
(1769, 21, 1769),
(1770, 21, 1770),
(1771, 21, 1771),
(1772, 21, 1772),
(1773, 21, 1773),
(1774, 21, 1774),
(1775, 21, 1775),
(1776, 21, 1776),
(1777, 21, 1777),
(1778, 21, 1778),
(1779, 21, 1779),
(1780, 21, 1780),
(1781, 21, 1781),
(1782, 21, 1782),
(1783, 21, 1783),
(1784, 21, 1784),
(1785, 21, 1785),
(1786, 22, 1786),
(1787, 22, 1787),
(1788, 22, 1788),
(1789, 22, 1789),
(1790, 22, 1790),
(1791, 22, 1791),
(1792, 22, 1792),
(1793, 22, 1793),
(1794, 22, 1794),
(1795, 22, 1795),
(1796, 22, 1796),
(1797, 22, 1797),
(1798, 22, 1798),
(1799, 22, 1799),
(1800, 22, 1800),
(1801, 22, 1801),
(1802, 22, 1802),
(1803, 22, 1803),
(1804, 23, 1804),
(1805, 23, 1805),
(1806, 23, 1806),
(1807, 23, 1807),
(1808, 23, 1808),
(1809, 23, 1809),
(1810, 23, 1810),
(1811, 23, 1811),
(1812, 23, 1812),
(1813, 23, 1813),
(1814, 24, 1814),
(1815, 24, 1815),
(1816, 24, 1816),
(1817, 24, 1817),
(1818, 24, 1818),
(1819, 24, 1819),
(1820, 24, 1820),
(1821, 24, 1821),
(1822, 24, 1822),
(1823, 24, 1823),
(1824, 24, 1824),
(1825, 24, 1825),
(1826, 24, 1826),
(1827, 24, 1827),
(1828, 24, 1828),
(1829, 24, 1829),
(1830, 24, 1830),
(1831, 24, 1831),
(1832, 24, 1832),
(1833, 24, 1833),
(1834, 24, 1834),
(1835, 24, 1835),
(1836, 24, 1836),
(1837, 24, 1837),
(1838, 24, 1838),
(1839, 24, 1839),
(1840, 24, 1840),
(1841, 24, 1841),
(1842, 24, 1842),
(1843, 24, 1843),
(1844, 24, 1844),
(1845, 24, 1845),
(1846, 24, 1846),
(1847, 24, 1847),
(1848, 24, 1848),
(1849, 24, 1849),
(1850, 24, 1850),
(1851, 24, 1851),
(1852, 24, 1852),
(1853, 24, 1853),
(1854, 24, 1854),
(1855, 24, 1855),
(1856, 24, 1856),
(1857, 24, 1857),
(1858, 24, 1858),
(1859, 24, 1859),
(1860, 24, 1860),
(1861, 24, 1861),
(1862, 24, 1862),
(1863, 24, 1863),
(1864, 24, 1864),
(1865, 24, 1865),
(1866, 24, 1866),
(1867, 24, 1867),
(1868, 24, 1868),
(1869, 24, 1869),
(1870, 24, 1870),
(1871, 24, 1871),
(1872, 25, 1872),
(1873, 25, 1873),
(1874, 25, 1874),
(1875, 25, 1875),
(1876, 25, 1876),
(1877, 25, 1877),
(1878, 25, 1878),
(1879, 25, 1879),
(1880, 25, 1880),
(1881, 25, 1881),
(1882, 25, 1882),
(1883, 25, 1883),
(1884, 25, 1884),
(1885, 25, 1885),
(1886, 25, 1886),
(1887, 25, 1887),
(1888, 25, 1888),
(1889, 25, 1889),
(1890, 26, 1890),
(1891, 26, 1891),
(1892, 26, 1892),
(1893, 26, 1893),
(1894, 26, 1894),
(1895, 26, 1895),
(1896, 26, 1896),
(1897, 26, 1897),
(1898, 26, 1898),
(1899, 26, 1899),
(1900, 26, 1900),
(1901, 26, 1901),
(1902, 26, 1902),
(1903, 26, 1903),
(1904, 26, 1904),
(1905, 26, 1905),
(1906, 26, 1906),
(1907, 26, 1907),
(1908, 26, 1908),
(1909, 26, 1909),
(1910, 26, 1910),
(1911, 26, 1911),
(1912, 26, 1912),
(1913, 26, 1913),
(1914, 26, 1914),
(1915, 26, 1915),
(1916, 26, 1916),
(1917, 26, 1917),
(1918, 26, 1918),
(1919, 26, 1919),
(1920, 26, 1920),
(1921, 26, 1921),
(1922, 26, 1922),
(1923, 26, 1923),
(1924, 26, 1924),
(1925, 26, 1925),
(1926, 26, 1926),
(1927, 26, 1927),
(1928, 26, 1928),
(1929, 26, 1929),
(1930, 26, 1930),
(1931, 26, 1931),
(1932, 26, 1932),
(1933, 26, 1933),
(1934, 26, 1934),
(1935, 26, 1935),
(1936, 26, 1936),
(1937, 26, 1937),
(1938, 26, 1938),
(1939, 26, 1939),
(1940, 26, 1940),
(1941, 26, 1941),
(1942, 26, 1942),
(1943, 26, 1943),
(1944, 26, 1944),
(1945, 26, 1945),
(1946, 26, 1946),
(1947, 26, 1947),
(1948, 26, 1948),
(1949, 26, 1949),
(1950, 26, 1950),
(1951, 26, 1951),
(1952, 26, 1952),
(1953, 26, 1953),
(1954, 26, 1954),
(1955, 26, 1955),
(1956, 26, 1956),
(1957, 26, 1957),
(1958, 26, 1958),
(1959, 26, 1959),
(1960, 26, 1960),
(1961, 26, 1961),
(1962, 27, 1962),
(1963, 27, 1963),
(1964, 27, 1964),
(1965, 27, 1965),
(1966, 27, 1966),
(1967, 27, 1967),
(1968, 27, 1968),
(1969, 27, 1969),
(1970, 27, 1970),
(1971, 27, 1971),
(1972, 27, 1972),
(1973, 27, 1973),
(1974, 27, 1974),
(1975, 27, 1975),
(1976, 27, 1976),
(1977, 27, 1977),
(1978, 27, 1978),
(1979, 28, 1979),
(1980, 28, 1980),
(1981, 28, 1981),
(1982, 28, 1982),
(1983, 28, 1983),
(1984, 28, 1984),
(1985, 28, 1985),
(1986, 28, 1986),
(1987, 28, 1987),
(1988, 28, 1988),
(1989, 28, 1989),
(1990, 28, 1990),
(1991, 28, 1991),
(1992, 28, 1992),
(1993, 28, 1993),
(1994, 28, 1994),
(1995, 28, 1995),
(1996, 28, 1996),
(1997, 28, 1997),
(1998, 28, 1998),
(1999, 28, 1999),
(2000, 28, 2000),
(2001, 28, 2001),
(2002, 28, 2002),
(2003, 28, 2003),
(2004, 28, 2004),
(2005, 28, 2005),
(2006, 28, 2006),
(2007, 28, 2007),
(2008, 28, 2008),
(2009, 28, 2009),
(2010, 28, 2010),
(2011, 28, 2011),
(2012, 28, 2012),
(2013, 28, 2013),
(2014, 28, 2014),
(2015, 28, 2015),
(2016, 28, 2016),
(2017, 28, 2017),
(2018, 28, 2018),
(2019, 28, 2019),
(2020, 28, 2020),
(2021, 28, 2021),
(2022, 29, 2022),
(2023, 29, 2023),
(2024, 29, 2024),
(2025, 29, 2025),
(2026, 29, 2026),
(2027, 29, 2027),
(2028, 29, 2028),
(2029, 29, 2029),
(2030, 29, 2030),
(2031, 29, 2031),
(2032, 29, 2032),
(2033, 29, 2033),
(2034, 29, 2034),
(2035, 29, 2035),
(2036, 29, 2036),
(2037, 29, 2037),
(2038, 29, 2038),
(2039, 29, 2039),
(2040, 29, 2040),
(2041, 29, 2041),
(2042, 29, 2042),
(2043, 29, 2043),
(2044, 29, 2044),
(2045, 29, 2045),
(2046, 29, 2046),
(2047, 29, 2047),
(2048, 29, 2048),
(2049, 29, 2049),
(2050, 29, 2050),
(2051, 29, 2051),
(2052, 29, 2052),
(2053, 29, 2053),
(2054, 29, 2054),
(2055, 29, 2055),
(2056, 29, 2056),
(2057, 29, 2057),
(2058, 29, 2058),
(2059, 29, 2059),
(2060, 29, 2060),
(2061, 29, 2061),
(2062, 29, 2062),
(2063, 29, 2063),
(2064, 29, 2064),
(2065, 29, 2065),
(2066, 29, 2066),
(2067, 29, 2067),
(2068, 29, 2068),
(2069, 29, 2069),
(2070, 29, 2070),
(2071, 29, 2071),
(2072, 29, 2072),
(2073, 29, 2073),
(2074, 29, 2074),
(2075, 29, 2075),
(2076, 29, 2076),
(2077, 29, 2077),
(2078, 29, 2078),
(2079, 29, 2079),
(2080, 29, 2080),
(2081, 29, 2081),
(2082, 30, 2082),
(2083, 30, 2083),
(2084, 30, 2084),
(2085, 30, 2085),
(2086, 30, 2086),
(2087, 30, 2087),
(2088, 30, 2088),
(2089, 30, 2089),
(2090, 30, 2090),
(2091, 30, 2091),
(2092, 30, 2092),
(2093, 30, 2093),
(2094, 30, 2094),
(2095, 30, 2095),
(2096, 30, 2096),
(2097, 30, 2097),
(2098, 30, 2098),
(2099, 30, 2099),
(2100, 30, 2100),
(2101, 30, 2101),
(2102, 30, 2102),
(2103, 30, 2103),
(2104, 30, 2104),
(2105, 30, 2105),
(2106, 30, 2106),
(2107, 30, 2107),
(2108, 30, 2108),
(2109, 30, 2109),
(2110, 30, 2110),
(2111, 30, 2111),
(2112, 30, 2112),
(2113, 30, 2113),
(2114, 30, 2114),
(2115, 30, 2115),
(2116, 30, 2116),
(2117, 30, 2117),
(2118, 30, 2118),
(2119, 30, 2119),
(2120, 30, 2120),
(2121, 30, 2121),
(2122, 30, 2122),
(2123, 30, 2123),
(2124, 30, 2124),
(2125, 30, 2125),
(2126, 30, 2126),
(2127, 30, 2127),
(2128, 30, 2128),
(2129, 30, 2129),
(2130, 30, 2130),
(2131, 30, 2131),
(2132, 30, 2132),
(2133, 30, 2133),
(2134, 30, 2134),
(2135, 30, 2135),
(2136, 30, 2136),
(2137, 30, 2137),
(2138, 30, 2138),
(2139, 30, 2139),
(2140, 30, 2140),
(2141, 30, 2141),
(2142, 30, 2142),
(2143, 30, 2143),
(2144, 30, 2144),
(2145, 30, 2145),
(2146, 30, 2146),
(2147, 30, 2147),
(2148, 30, 2148),
(2149, 30, 2149),
(2150, 30, 2150),
(2151, 30, 2151),
(2152, 30, 2152),
(2153, 30, 2153),
(2154, 30, 2154),
(2155, 30, 2155),
(2156, 30, 2156),
(2157, 30, 2157),
(2158, 30, 2158),
(2159, 30, 2159),
(2160, 30, 2160),
(2161, 30, 2161),
(2162, 30, 2162),
(2163, 30, 2163),
(2164, 30, 2164),
(2165, 30, 2165),
(2166, 30, 2166),
(2167, 30, 2167),
(2168, 30, 2168),
(2169, 30, 2169),
(2170, 30, 2170),
(2171, 30, 2171),
(2172, 30, 2172),
(2173, 30, 2173),
(2174, 30, 2174),
(2175, 30, 2175),
(2176, 30, 2176),
(2177, 30, 2177),
(2178, 30, 2178),
(2179, 30, 2179),
(2180, 30, 2180),
(2181, 30, 2181),
(2182, 30, 2182),
(2183, 30, 2183),
(2184, 30, 2184),
(2185, 30, 2185),
(2186, 30, 2186),
(2187, 30, 2187),
(2188, 30, 2188),
(2189, 30, 2189),
(2190, 30, 2190),
(2191, 30, 2191),
(2192, 30, 2192),
(2193, 30, 2193),
(2194, 30, 2194),
(2195, 30, 2195),
(2196, 30, 2196),
(2197, 30, 2197),
(2198, 30, 2198),
(2199, 30, 2199),
(2200, 30, 2200),
(2201, 30, 2201),
(2202, 30, 2202),
(2203, 30, 2203),
(2204, 30, 2204),
(2205, 30, 2205),
(2206, 30, 2206),
(2207, 30, 2207),
(2208, 30, 2208),
(2209, 30, 2209),
(2210, 30, 2210),
(2211, 30, 2211),
(2212, 30, 2212),
(2213, 30, 2213),
(2214, 30, 2214),
(2215, 30, 2215),
(2216, 30, 2216),
(2217, 30, 2217),
(2218, 30, 2218),
(2219, 30, 2219),
(2220, 30, 2220),
(2221, 30, 2221),
(2222, 30, 2222),
(2223, 30, 2223),
(2224, 30, 2224),
(2225, 30, 2225),
(2226, 30, 2226),
(2227, 30, 2227),
(2228, 30, 2228),
(2229, 30, 2229),
(2230, 30, 2230),
(2231, 30, 2231),
(2232, 30, 2232),
(2233, 30, 2233),
(2234, 30, 2234),
(2235, 30, 2235),
(2236, 30, 2236),
(2237, 30, 2237),
(2238, 30, 2238),
(2239, 30, 2239),
(2240, 30, 2240),
(2241, 30, 2241),
(2242, 30, 2242),
(2243, 30, 2243),
(2244, 30, 2244),
(2245, 30, 2245),
(2246, 30, 2246),
(2247, 30, 2247),
(2248, 30, 2248),
(2249, 30, 2249),
(2250, 30, 2250),
(2251, 30, 2251),
(2252, 30, 2252),
(2253, 30, 2253),
(2254, 30, 2254),
(2255, 30, 2255),
(2256, 30, 2256),
(2257, 30, 2257),
(2258, 30, 2258),
(2259, 30, 2259),
(2260, 30, 2260),
(2261, 30, 2261),
(2262, 30, 2262),
(2263, 30, 2263),
(2264, 30, 2264),
(2265, 30, 2265),
(2266, 30, 2266),
(2267, 30, 2267),
(2268, 30, 2268),
(2269, 30, 2269),
(2270, 30, 2270),
(2271, 30, 2271),
(2272, 30, 2272),
(2273, 30, 2273),
(2274, 30, 2274),
(2275, 30, 2275),
(2276, 30, 2276),
(2277, 30, 2277),
(2278, 30, 2278),
(2279, 30, 2279),
(2280, 30, 2280),
(2281, 30, 2281),
(2282, 30, 2282),
(2283, 30, 2283),
(2284, 30, 2284),
(2285, 30, 2285),
(2286, 30, 2286),
(2287, 30, 2287),
(2288, 30, 2288),
(2289, 30, 2289),
(2290, 30, 2290),
(2291, 30, 2291),
(2292, 30, 2292),
(2293, 30, 2293),
(2294, 31, 2294),
(2295, 31, 2295),
(2296, 31, 2296),
(2297, 31, 2297),
(2298, 31, 2298),
(2299, 31, 2299),
(2300, 31, 2300),
(2301, 31, 2301),
(2302, 31, 2302),
(2303, 31, 2303),
(2304, 31, 2304),
(2305, 31, 2305),
(2306, 31, 2306),
(2307, 31, 2307),
(2308, 31, 2308),
(2309, 31, 2309),
(2310, 31, 2310),
(2311, 31, 2311),
(2312, 31, 2312),
(2313, 31, 2313),
(2314, 31, 2314),
(2315, 31, 2315),
(2316, 31, 2316),
(2317, 31, 2317),
(2318, 31, 2318),
(2319, 31, 2319),
(2320, 31, 2320),
(2321, 31, 2321),
(2322, 31, 2322),
(2323, 31, 2323),
(2324, 31, 2324),
(2325, 31, 2325),
(2326, 31, 2326),
(2327, 31, 2327),
(2328, 31, 2328),
(2329, 31, 2329),
(2330, 31, 2330),
(2331, 31, 2331),
(2332, 31, 2332),
(2333, 31, 2333),
(2334, 31, 2334),
(2335, 31, 2335),
(2336, 31, 2336),
(2337, 31, 2337),
(2338, 31, 2338),
(2339, 31, 2339),
(2340, 31, 2340),
(2341, 31, 2341),
(2342, 31, 2342),
(2343, 31, 2343),
(2344, 31, 2344),
(2345, 31, 2345),
(2346, 31, 2346),
(2347, 31, 2347),
(2348, 31, 2348),
(2349, 31, 2349),
(2350, 31, 2350),
(2351, 31, 2351),
(2352, 31, 2352),
(2353, 31, 2353),
(2354, 31, 2354),
(2355, 31, 2355),
(2356, 31, 2356),
(2357, 31, 2357),
(2358, 31, 2358),
(2359, 31, 2359),
(2360, 31, 2360),
(2361, 31, 2361),
(2362, 31, 2362),
(2363, 31, 2363),
(2364, 31, 2364),
(2365, 31, 2365),
(2366, 31, 2366),
(2367, 31, 2367),
(2368, 31, 2368),
(2369, 31, 2369),
(2370, 31, 2370),
(2371, 31, 2371),
(2372, 31, 2372),
(2373, 31, 2373),
(2374, 31, 2374),
(2375, 31, 2375),
(2376, 31, 2376),
(2377, 31, 2377),
(2378, 31, 2378),
(2379, 31, 2379),
(2380, 31, 2380),
(2381, 31, 2381),
(2382, 31, 2382),
(2383, 31, 2383),
(2384, 31, 2384),
(2385, 31, 2385),
(2386, 31, 2386),
(2387, 31, 2387),
(2388, 31, 2388),
(2389, 31, 2389),
(2390, 31, 2390),
(2391, 31, 2391),
(2392, 31, 2392),
(2393, 31, 2393),
(2394, 31, 2394),
(2395, 31, 2395),
(2396, 31, 2396),
(2397, 31, 2397),
(2398, 31, 2398),
(2399, 31, 2399),
(2400, 32, 2400),
(2401, 32, 2401),
(2402, 32, 2402),
(2403, 32, 2403),
(2404, 32, 2404),
(2405, 32, 2405),
(2406, 32, 2406),
(2407, 32, 2407),
(2408, 32, 2408),
(2409, 32, 2409),
(2410, 32, 2410),
(2411, 32, 2411),
(2412, 32, 2412),
(2413, 32, 2413),
(2414, 32, 2414),
(2415, 32, 2415),
(2416, 32, 2416),
(2417, 32, 2417),
(2418, 32, 2418),
(2419, 32, 2419),
(2420, 32, 2420),
(2421, 32, 2421),
(2422, 32, 2422),
(2423, 32, 2423),
(2424, 32, 2424),
(2425, 32, 2425),
(2426, 32, 2426),
(2427, 32, 2427),
(2428, 32, 2428),
(2429, 32, 2429),
(2430, 32, 2430),
(2431, 32, 2431),
(2432, 32, 2432),
(2433, 32, 2433),
(2434, 32, 2434),
(2435, 32, 2435),
(2436, 32, 2436),
(2437, 32, 2437),
(2438, 32, 2438),
(2439, 32, 2439),
(2440, 32, 2440),
(2441, 32, 2441),
(2442, 32, 2442),
(2443, 32, 2443),
(2444, 32, 2444),
(2445, 32, 2445),
(2446, 32, 2446),
(2447, 32, 2447),
(2448, 32, 2448),
(2449, 32, 2449),
(2450, 32, 2450),
(2451, 32, 2451),
(2452, 32, 2452),
(2453, 32, 2453),
(2454, 32, 2454),
(2455, 32, 2455),
(2456, 32, 2456),
(2457, 32, 2457);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_pago`
--

CREATE TABLE `forma_pago` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `forma_pago`
--

INSERT INTO `forma_pago` (`id`, `nombre`) VALUES
(1, 'PayPal'),
(2, 'Openpay');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `giro_empresa`
--

CREATE TABLE `giro_empresa` (
  `id` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `giro_empresa`
--

INSERT INTO `giro_empresa` (`id`, `titulo`, `descripcion`) VALUES
(1, 'Minería', 'Una empresa minera es un ejemplo de empresa extractiva, que invierte en maquinaria y personal para sacar del interior de la tierra los recursos minerales y metálicos que demanda la industria. Así operan las empresas mineras de carbón, de cobre, de oro, etc.'),
(3, 'Construcción', 'Las empresas constructoras son aquellas que, como indica su nombre, hacen edificios, casas o todo tipo de edificaciones, a solicitud y contrato de un particular o también como una forma de inversión, pues en muchos casos la misma empresa constructora es la que pone a la venta el inmueble terminado.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habilidades`
--

CREATE TABLE `habilidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `habilidades`
--

INSERT INTO `habilidades` (`id`, `nombre`) VALUES
(1, 'Pro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_transacciones`
--

CREATE TABLE `historial_transacciones` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `tipo_movimiento` int(11) NOT NULL,
  `monto` float NOT NULL,
  `status` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `folio` varchar(10) NOT NULL,
  `proyecto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias`
--

CREATE TABLE `incidencias` (
  `id` int(11) NOT NULL,
  `problema` varchar(255) DEFAULT NULL,
  `descripcion` varchar(2000) DEFAULT NULL,
  `proyecto_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `type_user` int(11) NOT NULL DEFAULT 0,
  `resolucion` int(11) NOT NULL DEFAULT 0,
  `usuario_id` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  `creador` int(11) NOT NULL,
  `folio` varchar(20) NOT NULL DEFAULT 'IN01',
  `estado` int(11) DEFAULT NULL,
  `agente_id` int(11) DEFAULT NULL,
  `pais_id` int(11) NOT NULL DEFAULT 146,
  `problema_id` int(11) DEFAULT NULL,
  `fecha_resolucion` date DEFAULT NULL,
  `tiempo_resolucion` float DEFAULT NULL,
  `visto` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias_archivos`
--

CREATE TABLE `incidencias_archivos` (
  `id` int(11) NOT NULL,
  `incidencia_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `filesize` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencias_problemas`
--

CREATE TABLE `incidencias_problemas` (
  `id` int(11) NOT NULL,
  `problema` varchar(255) NOT NULL,
  `numero_incidencias` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `incidencias_problemas`
--

INSERT INTO `incidencias_problemas` (`id`, `problema`, `numero_incidencias`, `type`) VALUES
(1, 'Demora en tiempos de entrega.', 0, 1),
(2, 'No es lo que pedí. Proyecto Incompleto.', 0, 1),
(3, 'Tengo conflicto con mi proveedor.', 0, 1),
(4, 'Proveedor no contesta.', 0, 1),
(5, 'Problemas con interface de Wingman.', 0, 1),
(6, 'Problemas con el pago.', 0, 1),
(7, 'Tengo un problema con el usuario', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `message` varchar(2000) NOT NULL,
  `conversation` varchar(20) NOT NULL,
  `fromu` varchar(20) NOT NULL,
  `date` double DEFAULT 1603763755,
  `_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `id` int(11) NOT NULL,
  `municipio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`id`, `municipio`) VALUES
(1, 'Aguascalientes'),
(2, 'San Francisco de los Romo'),
(3, 'El Llano'),
(4, 'Rincón de Romos'),
(5, 'Cosío'),
(6, 'San José de Gracia'),
(7, 'Tepezalá'),
(8, 'Pabellón de Arteaga'),
(9, 'Asientos'),
(10, 'Calvillo'),
(11, 'Jesús María'),
(12, 'Mexicali'),
(13, 'Tecate'),
(14, 'Tijuana'),
(15, 'Playas de Rosarito'),
(16, 'Ensenada'),
(17, 'La Paz'),
(18, 'Los Cabos'),
(19, 'Comondú'),
(20, 'Loreto'),
(21, 'Mulegé'),
(22, 'Campeche'),
(23, 'Carmen'),
(24, 'Palizada'),
(25, 'Candelaria'),
(26, 'Escárcega'),
(27, 'Champotón'),
(28, 'Hopelchén'),
(29, 'Calakmul'),
(30, 'Tenabo'),
(31, 'Hecelchakán'),
(32, 'Calkiní'),
(33, 'Saltillo'),
(34, 'Arteaga'),
(35, 'Juárez'),
(36, 'Progreso'),
(37, 'Escobedo'),
(38, 'San Buenaventura'),
(39, 'Abasolo'),
(40, 'Candela'),
(41, 'Frontera'),
(42, 'Monclova'),
(43, 'Castaños'),
(44, 'Ramos Arizpe'),
(45, 'General Cepeda'),
(46, 'Piedras Negras'),
(47, 'Nava'),
(48, 'Acuña'),
(49, 'Múzquiz'),
(50, 'Jiménez'),
(51, 'Zaragoza'),
(52, 'Morelos'),
(53, 'Allende'),
(54, 'Villa Unión'),
(55, 'Guerrero'),
(56, 'Hidalgo'),
(57, 'Sabinas'),
(58, 'San Juan de Sabinas'),
(59, 'Torreón'),
(60, 'Matamoros'),
(61, 'Viesca'),
(62, 'Ocampo'),
(63, 'Nadadores'),
(64, 'Sierra Mojada'),
(65, 'Cuatro Ciénegas'),
(66, 'Lamadrid'),
(67, 'Sacramento'),
(68, 'San Pedro'),
(69, 'Francisco I. Madero'),
(70, 'Parras'),
(71, 'Colima'),
(72, 'Tecomán'),
(73, 'Manzanillo'),
(74, 'Armería'),
(75, 'Coquimatlán'),
(76, 'Comala'),
(77, 'Cuauhtémoc'),
(78, 'Ixtlahuacán'),
(79, 'Minatitlán'),
(80, 'Villa de Álvarez'),
(81, 'Tuxtla Gutiérrez'),
(82, 'San Fernando'),
(83, 'Berriozábal'),
(84, 'Ocozocoautla de Espinosa'),
(85, 'Suchiapa'),
(86, 'Chiapa de Corzo'),
(87, 'Osumacinta'),
(88, 'San Cristóbal de las Casas'),
(89, 'Chamula'),
(90, 'Ixtapa'),
(91, 'Zinacantán'),
(92, 'Acala'),
(93, 'Chiapilla'),
(94, 'San Lucas'),
(95, 'Teopisca'),
(96, 'Amatenango del Valle'),
(97, 'Chanal'),
(98, 'Oxchuc'),
(99, 'Huixtán'),
(100, 'Tenejapa'),
(101, 'Mitontic'),
(102, 'Reforma'),
(103, 'Juárez'),
(104, 'Pichucalco'),
(105, 'Sunuapa'),
(106, 'Ostuacán'),
(107, 'Francisco León'),
(108, 'Ixtacomitán'),
(109, 'Solosuchiapa'),
(110, 'Ixtapangajoya'),
(111, 'Tecpatán'),
(112, 'Copainalá'),
(113, 'Chicoasén'),
(114, 'Coapilla'),
(115, 'Pantepec'),
(116, 'Tapalapa'),
(117, 'Ocotepec'),
(118, 'Chapultenango'),
(119, 'Amatán'),
(120, 'Huitiupán'),
(121, 'Ixhuatán'),
(122, 'Tapilula'),
(123, 'Rayón'),
(124, 'Pueblo Nuevo Solistahuacán'),
(125, 'Jitotol'),
(126, 'Bochil'),
(127, 'Soyaló'),
(128, 'San Juan Cancuc'),
(129, 'Sabanilla'),
(130, 'Simojovel'),
(131, 'San Andrés Duraznal'),
(132, 'El Bosque'),
(133, 'Chalchihuitán'),
(134, 'Larráinzar'),
(135, 'Santiago el Pinar'),
(136, 'Chenalhó'),
(137, 'Aldama'),
(138, 'Pantelhó'),
(139, 'Sitalá'),
(140, 'Salto de Agua'),
(141, 'Tila'),
(142, 'Tumbalá'),
(143, 'Yajalón'),
(144, 'Ocosingo'),
(145, 'Chilón'),
(146, 'Benemérito de las Américas'),
(147, 'Marqués de Comillas'),
(148, 'Palenque'),
(149, 'La Libertad'),
(150, 'Catazajá'),
(151, 'Comitán de Domínguez'),
(152, 'Tzimol'),
(153, 'Chicomuselo'),
(154, 'Bella Vista'),
(155, 'Frontera Comalapa'),
(156, 'La Trinitaria'),
(157, 'La Independencia'),
(158, 'Maravilla Tenejapa'),
(159, 'Las Margaritas'),
(160, 'Altamirano'),
(161, 'Venustiano Carranza'),
(162, 'Totolapa'),
(163, 'Nicolás Ruíz'),
(164, 'Las Rosas'),
(165, 'La Concordia'),
(166, 'Angel Albino Corzo'),
(167, 'Montecristo de Guerrero'),
(168, 'Socoltenango'),
(169, 'Cintalapa'),
(170, 'Jiquipilas'),
(171, 'Arriaga'),
(172, 'Villaflores'),
(173, 'Tonalá'),
(174, 'Villa Corzo'),
(175, 'Pijijiapan'),
(176, 'Mapastepec'),
(177, 'Acapetahua'),
(178, 'Acacoyagua'),
(179, 'Escuintla'),
(180, 'Villa Comaltitlán'),
(181, 'Huixtla'),
(182, 'Mazatán'),
(183, 'Huehuetán'),
(184, 'Tuzantán'),
(185, 'Tapachula'),
(186, 'Suchiate'),
(187, 'Frontera Hidalgo'),
(188, 'Metapa'),
(189, 'Tuxtla Chico'),
(190, 'Unión Juárez'),
(191, 'Cacahoatán'),
(192, 'Motozintla'),
(193, 'Mazapa de Madero'),
(194, 'Amatenango de la Frontera'),
(195, 'Bejucal de Ocampo'),
(196, 'La Grandeza'),
(197, 'El Porvenir'),
(198, 'Siltepec'),
(199, 'Chihuahua'),
(200, 'Cuauhtémoc'),
(201, 'Riva Palacio'),
(202, 'Aquiles Serdán'),
(203, 'Bachíniva'),
(204, 'Guerrero'),
(205, 'Nuevo Casas Grandes'),
(206, 'Ascensión'),
(207, 'Janos'),
(208, 'Casas Grandes'),
(209, 'Galeana'),
(210, 'Buenaventura'),
(211, 'Gómez Farías'),
(212, 'Ignacio Zaragoza'),
(213, 'Madera'),
(214, 'Namiquipa'),
(215, 'Temósachic'),
(216, 'Matachí'),
(217, 'Juárez'),
(218, 'Guadalupe'),
(219, 'Praxedis G. Guerrero'),
(220, 'Ahumada'),
(221, 'Coyame del Sotol'),
(222, 'Ojinaga'),
(223, 'Aldama'),
(224, 'Julimes'),
(225, 'Manuel Benavides'),
(226, 'Delicias'),
(227, 'Rosales'),
(228, 'Meoqui'),
(229, 'Dr. Belisario Domínguez'),
(230, 'Satevó'),
(231, 'San Francisco de Borja'),
(232, 'Nonoava'),
(233, 'Guachochi'),
(234, 'Bocoyna'),
(235, 'Cusihuiriachi'),
(236, 'Gran Morelos'),
(237, 'Santa Isabel'),
(238, 'Carichí'),
(239, 'Uruachi'),
(240, 'Ocampo'),
(241, 'Moris'),
(242, 'Chínipas'),
(243, 'Maguarichi'),
(244, 'Guazapares'),
(245, 'Batopilas'),
(246, 'Urique'),
(247, 'Morelos'),
(248, 'Guadalupe y Calvo'),
(249, 'San Francisco del Oro'),
(250, 'Rosario'),
(251, 'Huejotitán'),
(252, 'El Tule'),
(253, 'Balleza'),
(254, 'Santa Bárbara'),
(255, 'Camargo'),
(256, 'Saucillo'),
(257, 'Valle de Zaragoza'),
(258, 'La Cruz'),
(259, 'San Francisco de Conchos'),
(260, 'Hidalgo del Parral'),
(261, 'Allende'),
(262, 'López'),
(263, 'Matamoros'),
(264, 'Jiménez'),
(265, 'Coronado'),
(266, 'Álvaro Obregón'),
(267, 'Azcapotzalco'),
(268, 'Benito Juárez'),
(269, 'Coyoacán'),
(270, 'Cuajimalpa de Morelos'),
(271, 'Cuauhtémoc'),
(272, 'Gustavo A. Madero'),
(273, 'Iztacalco'),
(274, 'Iztapalapa'),
(275, 'La Magdalena Contreras'),
(276, 'Miguel Hidalgo'),
(277, 'Milpa Alta'),
(278, 'Tláhuac'),
(279, 'Tlalpan'),
(280, 'Venustiano Carranza'),
(281, 'Xochimilco'),
(282, 'Durango'),
(283, 'Canatlán'),
(284, 'Nuevo Ideal'),
(285, 'Coneto de Comonfort'),
(286, 'San Juan del Río'),
(287, 'Canelas'),
(288, 'Topia'),
(289, 'Tamazula'),
(290, 'Santiago Papasquiaro'),
(291, 'Otáez'),
(292, 'San Dimas'),
(293, 'Guadalupe Victoria'),
(294, 'Peñón Blanco'),
(295, 'Pánuco de Coronado'),
(296, 'Poanas'),
(297, 'Nombre de Dios'),
(298, 'Vicente Guerrero'),
(299, 'Súchil'),
(300, 'Pueblo Nuevo'),
(301, 'Mezquital'),
(302, 'Gómez Palacio'),
(303, 'Lerdo'),
(304, 'Mapimí'),
(305, 'Tlahualilo'),
(306, 'Hidalgo'),
(307, 'Ocampo'),
(308, 'Guanaceví'),
(309, 'San Bernardo'),
(310, 'Indé'),
(311, 'San Pedro del Gallo'),
(312, 'Tepehuanes'),
(313, 'El Oro'),
(314, 'Nazas'),
(315, 'San Luis del Cordero'),
(316, 'Rodeo'),
(317, 'Cuencamé'),
(318, 'Santa Clara'),
(319, 'San Juan de Guadalupe'),
(320, 'General Simón Bolívar'),
(321, 'Guanajuato'),
(322, 'Silao de la Victoria'),
(323, 'Romita'),
(324, 'San Francisco del Rincón'),
(325, 'Purísima del Rincón'),
(326, 'Manuel Doblado'),
(327, 'Irapuato'),
(328, 'Salamanca'),
(329, 'Pueblo Nuevo'),
(330, 'Pénjamo'),
(331, 'Cuerámaro'),
(332, 'Abasolo'),
(333, 'Huanímaro'),
(334, 'León'),
(335, 'San Felipe'),
(336, 'Ocampo'),
(337, 'San Miguel de Allende'),
(338, 'Dolores Hidalgo Cuna de la Independencia Nacional'),
(339, 'San Diego de la Unión'),
(340, 'San Luis de la Paz'),
(341, 'Victoria'),
(342, 'Xichú'),
(343, 'Atarjea'),
(344, 'Santa Catarina'),
(345, 'Doctor Mora'),
(346, 'Tierra Blanca'),
(347, 'San José Iturbide'),
(348, 'Celaya'),
(349, 'Apaseo el Grande'),
(350, 'Comonfort'),
(351, 'Santa Cruz de Juventino Rosas'),
(352, 'Villagrán'),
(353, 'Cortazar'),
(354, 'Valle de Santiago'),
(355, 'Jaral del Progreso'),
(356, 'Apaseo el Alto'),
(357, 'Jerécuaro'),
(358, 'Coroneo'),
(359, 'Acámbaro'),
(360, 'Tarimoro'),
(361, 'Tarandacuao'),
(362, 'Moroleón'),
(363, 'Salvatierra'),
(364, 'Yuriria'),
(365, 'Santiago Maravatío'),
(366, 'Uriangato'),
(367, 'Chilpancingo de los Bravo'),
(368, 'General Heliodoro Castillo'),
(369, 'Leonardo Bravo'),
(370, 'Tixtla de Guerrero'),
(371, 'Ayutla de los Libres'),
(372, 'Mochitlán'),
(373, 'Quechultenango'),
(374, 'Tecoanapa'),
(375, 'Acapulco de Juárez'),
(376, 'Juan R. Escudero'),
(377, 'San Marcos'),
(378, 'Iguala de la Independencia'),
(379, 'Huitzuco de los Figueroa'),
(380, 'Tepecoacuilco de Trujano'),
(381, 'Eduardo Neri'),
(382, 'Taxco de Alarcón'),
(383, 'Buenavista de Cuéllar'),
(384, 'Tetipac'),
(385, 'Pilcaya'),
(386, 'Teloloapan'),
(387, 'Ixcateopan de Cuauhtémoc'),
(388, 'Pedro Ascencio Alquisiras'),
(389, 'General Canuto A. Neri'),
(390, 'Arcelia'),
(391, 'Apaxtla'),
(392, 'Cuetzala del Progreso'),
(393, 'Cocula'),
(394, 'Tlapehuala'),
(395, 'Cutzamala de Pinzón'),
(396, 'Pungarabato'),
(397, 'Tlalchapa'),
(398, 'Coyuca de Catalán'),
(399, 'Ajuchitlán del Progreso'),
(400, 'Zirándaro'),
(401, 'San Miguel Totolapan'),
(402, 'La Unión de Isidoro Montes de Oca'),
(403, 'Petatlán'),
(404, 'Coahuayutla de José María Izazaga'),
(405, 'Zihuatanejo de Azueta'),
(406, 'Técpan de Galeana'),
(407, 'Atoyac de Álvarez'),
(408, 'Benito Juárez'),
(409, 'Coyuca de Benítez'),
(410, 'Olinalá'),
(411, 'Atenango del Río'),
(412, 'Copalillo'),
(413, 'Cualác'),
(414, 'Chilapa de Álvarez'),
(415, 'José Joaquín de Herrera'),
(416, 'Ahuacuotzingo'),
(417, 'Zitlala'),
(418, 'Mártir de Cuilapan'),
(419, 'Huamuxtitlán'),
(420, 'Xochihuehuetlán'),
(421, 'Alpoyeca'),
(422, 'Tlapa de Comonfort'),
(423, 'Tlalixtaquilla de Maldonado'),
(424, 'Xalpatláhuac'),
(425, 'Zapotitlán Tablas'),
(426, 'Acatepec'),
(427, 'Atlixtac'),
(428, 'Copanatoyac'),
(429, 'Malinaltepec'),
(430, 'Iliatenco'),
(431, 'Tlacoapa'),
(432, 'Atlamajalcingo del Monte'),
(433, 'San Luis Acatlán'),
(434, 'Metlatónoc'),
(435, 'Cochoapa el Grande'),
(436, 'Alcozauca de Guerrero'),
(437, 'Ometepec'),
(438, 'Tlacoachistlahuaca'),
(439, 'Xochistlahuaca'),
(440, 'Florencio Villarreal'),
(441, 'Cuautepec'),
(442, 'Copala'),
(443, 'Azoyú'),
(444, 'Juchitán'),
(445, 'Marquelia'),
(446, 'Cuajinicuilapa'),
(447, 'Igualapa'),
(448, 'Pachuca de Soto'),
(449, 'Mineral del Chico'),
(450, 'Mineral del Monte'),
(451, 'Ajacuba'),
(452, 'San Agustín Tlaxiaca'),
(453, 'Mineral de la Reforma'),
(454, 'Zapotlán de Juárez'),
(455, 'Jacala de Ledezma'),
(456, 'Pisaflores'),
(457, 'Pacula'),
(458, 'La Misión'),
(459, 'Chapulhuacán'),
(460, 'Ixmiquilpan'),
(461, 'Zimapán'),
(462, 'Nicolás Flores'),
(463, 'Cardonal'),
(464, 'Tasquillo'),
(465, 'Alfajayucan'),
(466, 'Huichapan'),
(467, 'Tecozautla'),
(468, 'Nopala de Villagrán'),
(469, 'Actopan'),
(470, 'Santiago de Anaya'),
(471, 'San Salvador'),
(472, 'Francisco I. Madero'),
(473, 'El Arenal'),
(474, 'Mixquiahuala de Juárez'),
(475, 'Progreso de Obregón'),
(476, 'Chilcuautla'),
(477, 'Tezontepec de Aldama'),
(478, 'Tlahuelilpan'),
(479, 'Tula de Allende'),
(480, 'Tepeji del Río de Ocampo'),
(481, 'Chapantongo'),
(482, 'Tepetitlán'),
(483, 'Tetepango'),
(484, 'Tlaxcoapan'),
(485, 'Atitalaquia'),
(486, 'Atotonilco de Tula'),
(487, 'Huejutla de Reyes'),
(488, 'San Felipe Orizatlán'),
(489, 'Jaltocán'),
(490, 'Huautla'),
(491, 'Atlapexco'),
(492, 'Huazalingo'),
(493, 'Yahualica'),
(494, 'Xochiatipan'),
(495, 'Molango de Escamilla'),
(496, 'Tepehuacán de Guerrero'),
(497, 'Lolotla'),
(498, 'Tlanchinol'),
(499, 'Tlahuiltepa'),
(500, 'Juárez Hidalgo'),
(501, 'Zacualtipán de Ángeles'),
(502, 'Calnali'),
(503, 'Xochicoatlán'),
(504, 'Tianguistengo'),
(505, 'Atotonilco el Grande'),
(506, 'Eloxochitlán'),
(507, 'Metztitlán'),
(508, 'San Agustín Metzquititlán'),
(509, 'Metepec'),
(510, 'Huehuetla'),
(511, 'San Bartolo Tutotepec'),
(512, 'Agua Blanca de Iturbide'),
(513, 'Tenango de Doria'),
(514, 'Huasca de Ocampo'),
(515, 'Acatlán'),
(516, 'Omitlán de Juárez'),
(517, 'Epazoyucan'),
(518, 'Tulancingo de Bravo'),
(519, 'Acaxochitlán'),
(520, 'Cuautepec de Hinojosa'),
(521, 'Santiago Tulantepec de Lugo Guerrero'),
(522, 'Singuilucan'),
(523, 'Tizayuca'),
(524, 'Zempoala'),
(525, 'Tolcayuca'),
(526, 'Villa de Tezontepec'),
(527, 'Apan'),
(528, 'Tlanalapa'),
(529, 'Almoloya'),
(530, 'Emiliano Zapata'),
(531, 'Tepeapulco'),
(532, 'Guadalajara'),
(533, 'Zapopan'),
(534, 'San Cristóbal de la Barranca'),
(535, 'Ixtlahuacán del Río'),
(536, 'Tala'),
(537, 'El Arenal'),
(538, 'Amatitán'),
(539, 'Tonalá'),
(540, 'Zapotlanejo'),
(541, 'Acatic'),
(542, 'Cuquío'),
(543, 'San Pedro Tlaquepaque'),
(544, 'Tlajomulco de Zúñiga'),
(545, 'El Salto'),
(546, 'Acatlán de Juárez'),
(547, 'Villa Corona'),
(548, 'Zacoalco de Torres'),
(549, 'Atemajac de Brizuela'),
(550, 'Jocotepec'),
(551, 'Ixtlahuacán de los Membrillos'),
(552, 'Juanacatlán'),
(553, 'Chapala'),
(554, 'Poncitlán'),
(555, 'Zapotlán del Rey'),
(556, 'Huejuquilla el Alto'),
(557, 'Mezquitic'),
(558, 'Villa Guerrero'),
(559, 'Bolaños'),
(560, 'Totatiche'),
(561, 'Colotlán'),
(562, 'Santa María de los Ángeles'),
(563, 'Huejúcar'),
(564, 'Chimaltitán'),
(565, 'San Martín de Bolaños'),
(566, 'Tequila'),
(567, 'Hostotipaquillo'),
(568, 'Magdalena'),
(569, 'Etzatlán'),
(570, 'San Marcos'),
(571, 'San Juanito de Escobedo'),
(572, 'Ameca'),
(573, 'Ahualulco de Mercado'),
(574, 'Teuchitlán'),
(575, 'San Martín Hidalgo'),
(576, 'Guachinango'),
(577, 'Mixtlán'),
(578, 'Mascota'),
(579, 'San Sebastián del Oeste'),
(580, 'San Juan de los Lagos'),
(581, 'Jalostotitlán'),
(582, 'San Miguel el Alto'),
(583, 'San Julián'),
(584, 'Arandas'),
(585, 'San Ignacio Cerro Gordo'),
(586, 'Teocaltiche'),
(587, 'Villa Hidalgo'),
(588, 'Encarnación de Díaz'),
(589, 'Yahualica de González Gallo'),
(590, 'Mexticacán'),
(591, 'Cañadas de Obregón'),
(592, 'Valle de Guadalupe'),
(593, 'Lagos de Moreno'),
(594, 'Ojuelos de Jalisco'),
(595, 'Unión de San Antonio'),
(596, 'San Diego de Alejandría'),
(597, 'Tepatitlán de Morelos'),
(598, 'Tototlán'),
(599, 'Atotonilco el Alto'),
(600, 'Ocotlán'),
(601, 'Jamay'),
(602, 'La Barca'),
(603, 'Ayotlán'),
(604, 'Jesús María'),
(605, 'Degollado'),
(606, 'Unión de Tula'),
(607, 'Ayutla'),
(608, 'Atenguillo'),
(609, 'Cuautla'),
(610, 'Atengo'),
(611, 'Talpa de Allende'),
(612, 'Puerto Vallarta'),
(613, 'Cabo Corrientes'),
(614, 'Tomatlán'),
(615, 'Cocula'),
(616, 'Tecolotlán'),
(617, 'Tenamaxtlán'),
(618, 'Juchitlán'),
(619, 'Chiquilistlán'),
(620, 'Ejutla'),
(621, 'El Limón'),
(622, 'El Grullo'),
(623, 'Tonaya'),
(624, 'Tuxcacuesco'),
(625, 'Villa Purificación'),
(626, 'La Huerta'),
(627, 'Autlán de Navarro'),
(628, 'Casimiro Castillo'),
(629, 'Cuautitlán de García Barragán'),
(630, 'Cihuatlán'),
(631, 'Zapotlán el Grande'),
(632, 'Gómez Farías'),
(633, 'Concepción de Buenos Aires'),
(634, 'Atoyac'),
(635, 'Techaluta de Montenegro'),
(636, 'Teocuitatlán de Corona'),
(637, 'Sayula'),
(638, 'Tapalpa'),
(639, 'Amacueca'),
(640, 'Tizapán el Alto'),
(641, 'Tuxcueca'),
(642, 'La Manzanilla de la Paz'),
(643, 'Mazamitla'),
(644, 'Valle de Juárez'),
(645, 'Quitupan'),
(646, 'Zapotiltic'),
(647, 'Tamazula de Gordiano'),
(648, 'San Gabriel'),
(649, 'Tolimán'),
(650, 'Zapotitlán de Vadillo'),
(651, 'Tuxpan'),
(652, 'Tonila'),
(653, 'Pihuamo'),
(654, 'Tecalitlán'),
(655, 'Jilotlán de los Dolores'),
(656, 'Santa María del Oro'),
(657, 'Toluca'),
(658, 'Acambay de Ruíz Castañeda'),
(659, 'Aculco'),
(660, 'Temascalcingo'),
(661, 'Atlacomulco'),
(662, 'Timilpan'),
(663, 'Morelos'),
(664, 'El Oro'),
(665, 'San Felipe del Progreso'),
(666, 'San José del Rincón'),
(667, 'Jocotitlán'),
(668, 'Ixtlahuaca'),
(669, 'Jiquipilco'),
(670, 'Temoaya'),
(671, 'Almoloya de Juárez'),
(672, 'Villa Victoria'),
(673, 'Villa de Allende'),
(674, 'Donato Guerra'),
(675, 'Ixtapan del Oro'),
(676, 'Santo Tomás'),
(677, 'Otzoloapan'),
(678, 'Zacazonapan'),
(679, 'Valle de Bravo'),
(680, 'Amanalco'),
(681, 'Temascaltepec'),
(682, 'Zinacantepec'),
(683, 'Tejupilco'),
(684, 'Luvianos'),
(685, 'San Simón de Guerrero'),
(686, 'Amatepec'),
(687, 'Tlatlaya'),
(688, 'Sultepec'),
(689, 'Texcaltitlán'),
(690, 'Coatepec Harinas'),
(691, 'Villa Guerrero'),
(692, 'Zacualpan'),
(693, 'Almoloya de Alquisiras'),
(694, 'Ixtapan de la Sal'),
(695, 'Tonatico'),
(696, 'Zumpahuacán'),
(697, 'Lerma'),
(698, 'Xonacatlán'),
(699, 'Otzolotepec'),
(700, 'San Mateo Atenco'),
(701, 'Metepec'),
(702, 'Mexicaltzingo'),
(703, 'Calimaya'),
(704, 'Chapultepec'),
(705, 'San Antonio la Isla'),
(706, 'Tenango del Valle'),
(707, 'Rayón'),
(708, 'Joquicingo'),
(709, 'Tenancingo'),
(710, 'Malinalco'),
(711, 'Ocuilan'),
(712, 'Atizapán'),
(713, 'Almoloya del Río'),
(714, 'Texcalyacac'),
(715, 'Tianguistenco'),
(716, 'Xalatlaco'),
(717, 'Capulhuac'),
(718, 'Ocoyoacac'),
(719, 'Huixquilucan'),
(720, 'Atizapán de Zaragoza'),
(721, 'Naucalpan de Juárez'),
(722, 'Tlalnepantla de Baz'),
(723, 'Polotitlán'),
(724, 'Jilotepec'),
(725, 'Soyaniquilpan de Juárez'),
(726, 'Villa del Carbón'),
(727, 'Chapa de Mota'),
(728, 'Nicolás Romero'),
(729, 'Isidro Fabela'),
(730, 'Jilotzingo'),
(731, 'Tepotzotlán'),
(732, 'Coyotepec'),
(733, 'Huehuetoca'),
(734, 'Cuautitlán Izcalli'),
(735, 'Teoloyucan'),
(736, 'Cuautitlán'),
(737, 'Melchor Ocampo'),
(738, 'Tultitlán'),
(739, 'Tultepec'),
(740, 'Ecatepec de Morelos'),
(741, 'Zumpango'),
(742, 'Tequixquiac'),
(743, 'Apaxco'),
(744, 'Hueypoxtla'),
(745, 'Coacalco de Berriozábal'),
(746, 'Tecámac'),
(747, 'Jaltenco'),
(748, 'Tonanitla'),
(749, 'Nextlalpan'),
(750, 'Teotihuacán'),
(751, 'San Martín de las Pirámides'),
(752, 'Acolman'),
(753, 'Otumba'),
(754, 'Axapusco'),
(755, 'Nopaltepec'),
(756, 'Temascalapa'),
(757, 'Tezoyuca'),
(758, 'Chiautla'),
(759, 'Papalotla'),
(760, 'Tepetlaoxtoc'),
(761, 'Texcoco'),
(762, 'Chiconcuac'),
(763, 'Atenco'),
(764, 'Chimalhuacán'),
(765, 'Chicoloapan'),
(766, 'La Paz'),
(767, 'Ixtapaluca'),
(768, 'Chalco'),
(769, 'Valle de Chalco Solidaridad'),
(770, 'Temamatla'),
(771, 'Cocotitlán'),
(772, 'Tlalmanalco'),
(773, 'Ayapango'),
(774, 'Tenango del Aire'),
(775, 'Ozumba'),
(776, 'Juchitepec'),
(777, 'Tepetlixpa'),
(778, 'Amecameca'),
(779, 'Atlautla'),
(780, 'Ecatzingo'),
(781, 'Nezahualcóyotl'),
(782, 'Morelia'),
(783, 'Huaniqueo'),
(784, 'Coeneo'),
(785, 'Quiroga'),
(786, 'Tzintzuntzan'),
(787, 'Lagunillas'),
(788, 'Acuitzio'),
(789, 'Madero'),
(790, 'Puruándiro'),
(791, 'José Sixto Verduzco'),
(792, 'Angamacutiro'),
(793, 'Panindícuaro'),
(794, 'Zacapu'),
(795, 'Tlazazalca'),
(796, 'Purépero'),
(797, 'Jiménez'),
(798, 'Morelos'),
(799, 'Huandacareo'),
(800, 'Cuitzeo'),
(801, 'Chucándiro'),
(802, 'Copándaro'),
(803, 'Tarímbaro'),
(804, 'Santa Ana Maya'),
(805, 'Álvaro Obregón'),
(806, 'Zinapécuaro'),
(807, 'Indaparapeo'),
(808, 'Queréndaro'),
(809, 'Sahuayo'),
(810, 'Briseñas'),
(811, 'Cojumatlán de Régules'),
(812, 'Venustiano Carranza'),
(813, 'Pajacuarán'),
(814, 'Vista Hermosa'),
(815, 'Tanhuato'),
(816, 'Yurécuaro'),
(817, 'Ixtlán'),
(818, 'La Piedad'),
(819, 'Numarán'),
(820, 'Churintzio'),
(821, 'Zináparo'),
(822, 'Penjamillo'),
(823, 'Marcos Castellanos'),
(824, 'Jiquilpan'),
(825, 'Villamar'),
(826, 'Chavinda'),
(827, 'Zamora'),
(828, 'Ecuandureo'),
(829, 'Tangancícuaro'),
(830, 'Chilchota'),
(831, 'Jacona'),
(832, 'Tangamandapio'),
(833, 'Cotija'),
(834, 'Tocumbo'),
(835, 'Tingüindín'),
(836, 'Uruapan'),
(837, 'Charapan'),
(838, 'Paracho'),
(839, 'Cherán'),
(840, 'Nahuatzen'),
(841, 'Tingambato'),
(842, 'Los Reyes'),
(843, 'Peribán'),
(844, 'Tancítaro'),
(845, 'Nuevo Parangaricutiro'),
(846, 'Buenavista'),
(847, 'Tepalcatepec'),
(848, 'Aguililla'),
(849, 'Apatzingán'),
(850, 'Parácuaro'),
(851, 'Coahuayana'),
(852, 'Chinicuila'),
(853, 'Coalcomán de Vázquez Pallares'),
(854, 'Aquila'),
(855, 'Tumbiscatío'),
(856, 'Arteaga'),
(857, 'Lázaro Cárdenas'),
(858, 'Epitacio Huerta'),
(859, 'Contepec'),
(860, 'Tlalpujahua'),
(861, 'Hidalgo'),
(862, 'Maravatío'),
(863, 'Irimbo'),
(864, 'Senguio'),
(865, 'Charo'),
(866, 'Tzitzio'),
(867, 'Tiquicheo de Nicolás Romero'),
(868, 'Aporo'),
(869, 'Angangueo'),
(870, 'Tuxpan'),
(871, 'Ocampo'),
(872, 'Jungapeo'),
(873, 'Zitácuaro'),
(874, 'Tuzantla'),
(875, 'Juárez'),
(876, 'Susupuato'),
(877, 'Pátzcuaro'),
(878, 'Erongarícuaro'),
(879, 'Huiramba'),
(880, 'Tacámbaro'),
(881, 'Turicato'),
(882, 'Ziracuaretiro'),
(883, 'Taretan'),
(884, 'Gabriel Zamora'),
(885, 'Nuevo Urecho'),
(886, 'Múgica'),
(887, 'Salvador Escalante'),
(888, 'Ario'),
(889, 'La Huacana'),
(890, 'Churumuco'),
(891, 'Nocupétaro'),
(892, 'Carácuaro'),
(893, 'Huetamo'),
(894, 'San Lucas'),
(895, 'Cuernavaca'),
(896, 'Huitzilac'),
(897, 'Tepoztlán'),
(898, 'Tlalnepantla'),
(899, 'Tlayacapan'),
(900, 'Jiutepec'),
(901, 'Temixco'),
(902, 'Miacatlán'),
(903, 'Coatlán del Río'),
(904, 'Tetecala'),
(905, 'Mazatepec'),
(906, 'Amacuzac'),
(907, 'Puente de Ixtla'),
(908, 'Ayala'),
(909, 'Yautepec'),
(910, 'Cuautla'),
(911, 'Emiliano Zapata'),
(912, 'Tlaltizapán de Zapata'),
(913, 'Zacatepec'),
(914, 'Xochitepec'),
(915, 'Tetela del Volcán'),
(916, 'Yecapixtla'),
(917, 'Totolapan'),
(918, 'Atlatlahucan'),
(919, 'Ocuituco'),
(920, 'Temoac'),
(921, 'Zacualpan'),
(922, 'Jojutla'),
(923, 'Tepalcingo'),
(924, 'Jonacatepec'),
(925, 'Axochiapan'),
(926, 'Jantetelco'),
(927, 'Tlaquiltenango'),
(928, 'Tepic'),
(929, 'Tuxpan'),
(930, 'Santiago Ixcuintla'),
(931, 'Acaponeta'),
(932, 'Tecuala'),
(933, 'Huajicori'),
(934, 'Del Nayar'),
(935, 'La Yesca'),
(936, 'Ruíz'),
(937, 'Rosamorada'),
(938, 'Compostela'),
(939, 'Bahía de Banderas'),
(940, 'San Blas'),
(941, 'Xalisco'),
(942, 'San Pedro Lagunillas'),
(943, 'Santa María del Oro'),
(944, 'Jala'),
(945, 'Ahuacatlán'),
(946, 'Ixtlán del Río'),
(947, 'Amatlán de Cañas'),
(948, 'Monterrey'),
(949, 'Anáhuac'),
(950, 'Lampazos de Naranjo'),
(951, 'Mina'),
(952, 'Bustamante'),
(953, 'Sabinas Hidalgo'),
(954, 'Villaldama'),
(955, 'Vallecillo'),
(956, 'Parás'),
(957, 'Salinas Victoria'),
(958, 'Ciénega de Flores'),
(959, 'Hidalgo'),
(960, 'Abasolo'),
(961, 'Higueras'),
(962, 'General Zuazua'),
(963, 'Agualeguas'),
(964, 'General Treviño'),
(965, 'Cerralvo'),
(966, 'Melchor Ocampo'),
(967, 'García'),
(968, 'General Escobedo'),
(969, 'Santa Catarina'),
(970, 'San Pedro Garza García'),
(971, 'San Nicolás de los Garza'),
(972, 'El Carmen'),
(973, 'Apodaca'),
(974, 'Pesquería'),
(975, 'Marín'),
(976, 'Doctor González'),
(977, 'Los Ramones'),
(978, 'Los Herreras'),
(979, 'Los Aldamas'),
(980, 'Doctor Coss'),
(981, 'General Bravo'),
(982, 'China'),
(983, 'Guadalupe'),
(984, 'Juárez'),
(985, 'Santiago'),
(986, 'Allende'),
(987, 'General Terán'),
(988, 'Cadereyta Jiménez'),
(989, 'Montemorelos'),
(990, 'Rayones'),
(991, 'Linares'),
(992, 'Iturbide'),
(993, 'Galeana'),
(994, 'Hualahuises'),
(995, 'Doctor Arroyo'),
(996, 'Aramberri'),
(997, 'General Zaragoza'),
(998, 'Mier y Noriega'),
(999, 'Oaxaca de Juárez'),
(1000, 'Villa de Etla'),
(1001, 'San Juan Bautista Atatlahuca'),
(1002, 'San Jerónimo Sosola'),
(1003, 'San Juan Bautista Jayacatlán'),
(1004, 'San Francisco Telixtlahuaca'),
(1005, 'Santiago Tenango'),
(1006, 'San Pablo Huitzo'),
(1007, 'San Juan del Estado'),
(1008, 'Magdalena Apasco'),
(1009, 'Santiago Suchilquitongo'),
(1010, 'San Juan Bautista Guelache'),
(1011, 'Reyes Etla'),
(1012, 'Nazareno Etla'),
(1013, 'San Andrés Zautla'),
(1014, 'San Agustín Etla'),
(1015, 'Soledad Etla'),
(1016, 'Santo Tomás Mazaltepec'),
(1017, 'Guadalupe Etla'),
(1018, 'San Pablo Etla'),
(1019, 'San Felipe Tejalápam'),
(1020, 'San Lorenzo Cacaotepec'),
(1021, 'Santa María Peñoles'),
(1022, 'Santiago Tlazoyaltepec'),
(1023, 'Tlalixtac de Cabrera'),
(1024, 'San Jacinto Amilpas'),
(1025, 'San Andrés Huayápam'),
(1026, 'San Agustín Yatareni'),
(1027, 'Santo Domingo Tomaltepec'),
(1028, 'Santa María del Tule'),
(1029, 'San Juan Bautista Tuxtepec'),
(1030, 'Loma Bonita'),
(1031, 'San José Independencia'),
(1032, 'Cosolapa'),
(1033, 'Acatlán de Pérez Figueroa'),
(1034, 'San Miguel Soyaltepec'),
(1035, 'Ayotzintepec'),
(1036, 'San Pedro Ixcatlán'),
(1037, 'San José Chiltepec'),
(1038, 'San Felipe Jalapa de Díaz'),
(1039, 'Santa María Jacatepec'),
(1040, 'San Lucas Ojitlán'),
(1041, 'San Juan Bautista Valle Nacional'),
(1042, 'San Felipe Usila'),
(1043, 'Huautla de Jiménez'),
(1044, 'Santa María Chilchotla'),
(1045, 'Santa Ana Ateixtlahuaca'),
(1046, 'San Lorenzo Cuaunecuiltitla'),
(1047, 'San Francisco Huehuetlán'),
(1048, 'San Pedro Ocopetatillo'),
(1049, 'Santa Cruz Acatepec'),
(1050, 'Eloxochitlán de Flores Magón'),
(1051, 'Santiago Texcalcingo'),
(1052, 'Teotitlán de Flores Magón'),
(1053, 'Santa María Teopoxco'),
(1054, 'San Martín Toxpalan'),
(1055, 'San Jerónimo Tecóatl'),
(1056, 'Santa María la Asunción'),
(1057, 'Huautepec'),
(1058, 'San Juan Coatzóspam'),
(1059, 'San Lucas Zoquiápam'),
(1060, 'San Antonio Nanahuatípam'),
(1061, 'San José Tenango'),
(1062, 'San Mateo Yoloxochitlán'),
(1063, 'San Bartolomé Ayautla'),
(1064, 'Mazatlán Villa de Flores'),
(1065, 'San Juan de los Cués'),
(1066, 'Santa María Tecomavaca'),
(1067, 'Santa María Ixcatlán'),
(1068, 'San Juan Bautista Cuicatlán'),
(1069, 'Cuyamecalco Villa de Zaragoza'),
(1070, 'Santa Ana Cuauhtémoc'),
(1071, 'Chiquihuitlán de Benito Juárez'),
(1072, 'San Pedro Teutila'),
(1073, 'San Miguel Santa Flor'),
(1074, 'Santa María Tlalixtac'),
(1075, 'San Andrés Teotilálpam'),
(1076, 'San Francisco Chapulapa'),
(1077, 'Concepción Pápalo'),
(1078, 'Santos Reyes Pápalo'),
(1079, 'San Juan Bautista Tlacoatzintepec'),
(1080, 'Santa María Pápalo'),
(1081, 'San Juan Tepeuxila'),
(1082, 'San Pedro Sochiápam'),
(1083, 'Valerio Trujano'),
(1084, 'San Pedro Jocotipac'),
(1085, 'Santa María Texcatitlán'),
(1086, 'San Pedro Jaltepetongo'),
(1087, 'Santiago Nacaltepec'),
(1088, 'Natividad'),
(1089, 'San Juan Quiotepec'),
(1090, 'San Pedro Yólox'),
(1091, 'Santiago Comaltepec'),
(1092, 'Abejones'),
(1093, 'San Pablo Macuiltianguis'),
(1094, 'Ixtlán de Juárez'),
(1095, 'San Juan Atepec'),
(1096, 'San Pedro Yaneri'),
(1097, 'San Miguel Aloápam'),
(1098, 'Teococuilco de Marcos Pérez'),
(1099, 'Santa Ana Yareni'),
(1100, 'San Juan Evangelista Analco'),
(1101, 'Santa María Jaltianguis'),
(1102, 'San Miguel del Río'),
(1103, 'San Juan Chicomezúchil'),
(1104, 'Capulálpam de Méndez'),
(1105, 'Nuevo Zoquiápam'),
(1106, 'Santiago Xiacuí'),
(1107, 'Guelatao de Juárez'),
(1108, 'Santa Catarina Ixtepeji'),
(1109, 'San Miguel Yotao'),
(1110, 'Santa Catarina Lachatao'),
(1111, 'San Miguel Amatlán'),
(1112, 'Santa María Yavesía'),
(1113, 'Santiago Laxopa'),
(1114, 'San Ildefonso Villa Alta'),
(1115, 'Santiago Camotlán'),
(1116, 'San Juan Yaeé'),
(1117, 'Santiago Lalopa'),
(1118, 'San Juan Yatzona'),
(1119, 'Villa Talea de Castro'),
(1120, 'Tanetze de Zaragoza'),
(1121, 'San Juan Juquila Vijanos'),
(1122, 'San Cristóbal Lachirioag'),
(1123, 'Santa María Temaxcalapa'),
(1124, 'Santo Domingo Roayaga'),
(1125, 'Santa María Yalina'),
(1126, 'San Andrés Solaga'),
(1127, 'San Juan Tabaá'),
(1128, 'San Melchor Betaza'),
(1129, 'San Andrés Yaá'),
(1130, 'San Bartolomé Zoogocho'),
(1131, 'San Baltazar Yatzachi el Bajo'),
(1132, 'Santiago Zoochila'),
(1133, 'Villa Hidalgo'),
(1134, 'San Francisco Cajonos'),
(1135, 'San Mateo Cajonos'),
(1136, 'San Pedro Cajonos'),
(1137, 'Santo Domingo Xagacía'),
(1138, 'San Pablo Yaganiza'),
(1139, 'Santiago Choápam'),
(1140, 'Santiago Jocotepec'),
(1141, 'San Juan Lalana'),
(1142, 'Santiago Yaveo'),
(1143, 'San Juan Petlapa'),
(1144, 'San Juan Comaltepec'),
(1145, 'Heroica Ciudad de Huajuapan de León'),
(1146, 'Santiago Chazumba'),
(1147, 'Cosoltepec'),
(1148, 'San Pedro y San Pablo Tequixtepec'),
(1149, 'San Juan Bautista Suchitepec'),
(1150, 'Santa Catarina Zapoquila'),
(1151, 'Santiago Miltepec'),
(1152, 'San Jerónimo Silacayoapilla'),
(1153, 'Zapotitlán Palmas'),
(1154, 'San Andrés Dinicuiti'),
(1155, 'Santiago Cacaloxtepec'),
(1156, 'Asunción Cuyotepeji'),
(1157, 'Santa María Camotlán'),
(1158, 'Santiago Huajolotitlán'),
(1159, 'Santiago Tamazola'),
(1160, 'San Juan Cieneguilla'),
(1161, 'Zapotitlán Lagunas'),
(1162, 'San Juan Ihualtepec'),
(1163, 'San Nicolás Hidalgo'),
(1164, 'Guadalupe de Ramírez'),
(1165, 'San Andrés Tepetlapa'),
(1166, 'San Miguel Ahuehuetitlán'),
(1167, 'San Mateo Nejápam'),
(1168, 'San Juan Bautista Tlachichilco'),
(1169, 'Tezoatlán de Segura y Luna'),
(1170, 'Fresnillo de Trujano'),
(1171, 'Santiago Ayuquililla'),
(1172, 'San José Ayuquila'),
(1173, 'San Martín Zacatepec'),
(1174, 'San Miguel Amatitlán'),
(1175, 'Mariscala de Juárez'),
(1176, 'Santa Cruz Tacache de Mina'),
(1177, 'San Simón Zahuatlán'),
(1178, 'San Marcos Arteaga'),
(1179, 'San Jorge Nuchita'),
(1180, 'Santos Reyes Yucuná'),
(1181, 'Santo Domingo Tonalá'),
(1182, 'Santo Domingo Yodohino'),
(1183, 'San Juan Bautista Coixtlahuaca'),
(1184, 'Tepelmeme Villa de Morelos'),
(1185, 'Concepción Buenavista'),
(1186, 'Santiago Ihuitlán Plumas'),
(1187, 'Tlacotepec Plumas'),
(1188, 'San Francisco Teopan'),
(1189, 'Santa Magdalena Jicotlán'),
(1190, 'San Mateo Tlapiltepec'),
(1191, 'San Miguel Tequixtepec'),
(1192, 'San Miguel Tulancingo'),
(1193, 'Santiago Tepetlapa'),
(1194, 'San Cristóbal Suchixtlahuaca'),
(1195, 'Santa María Nativitas'),
(1196, 'Silacayoápam'),
(1197, 'Santiago Yucuyachi'),
(1198, 'San Lorenzo Victoria'),
(1199, 'San Agustín Atenango'),
(1200, 'Calihualá'),
(1201, 'Santa Cruz de Bravo'),
(1202, 'Ixpantepec Nieves'),
(1203, 'San Francisco Tlapancingo'),
(1204, 'Santiago del Río'),
(1205, 'San Pedro y San Pablo Teposcolula'),
(1206, 'La Trinidad Vista Hermosa'),
(1207, 'Villa de Tamazulápam del Progreso'),
(1208, 'San Pedro Nopala'),
(1209, 'Teotongo'),
(1210, 'San Antonio Acutla'),
(1211, 'Villa Tejúpam de la Unión'),
(1212, 'Santo Domingo Tonaltepec'),
(1213, 'Villa de Chilapa de Díaz'),
(1214, 'San Antonino Monte Verde'),
(1215, 'San Andrés Lagunas'),
(1216, 'San Pedro Yucunama'),
(1217, 'San Juan Teposcolula'),
(1218, 'San Bartolo Soyaltepec'),
(1219, 'Santiago Yolomécatl'),
(1220, 'San Sebastián Nicananduta'),
(1221, 'Santo Domingo Tlatayápam'),
(1222, 'Santa María Nduayaco'),
(1223, 'San Vicente Nuñú'),
(1224, 'San Pedro Topiltepec'),
(1225, 'Santiago Nejapilla'),
(1226, 'Asunción Nochixtlán'),
(1227, 'San Miguel Huautla'),
(1228, 'San Miguel Chicahua'),
(1229, 'Santa María Apazco'),
(1230, 'Santiago Apoala'),
(1231, 'Santa María Chachoápam'),
(1232, 'San Pedro Coxcaltepec Cántaros'),
(1233, 'Santiago Huauclilla'),
(1234, 'Santo Domingo Yanhuitlán'),
(1235, 'San Andrés Sinaxtla'),
(1236, 'San Juan Yucuita'),
(1237, 'San Juan Sayultepec'),
(1238, 'Santiago Tillo'),
(1239, 'San Francisco Chindúa'),
(1240, 'San Mateo Etlatongo'),
(1241, 'Santa Inés de Zaragoza'),
(1242, 'Santiago Juxtlahuaca'),
(1243, 'San Miguel Tlacotepec'),
(1244, 'San Sebastián Tecomaxtlahuaca'),
(1245, 'Santos Reyes Tepejillo'),
(1246, 'San Juan Mixtepec -Dto. 08 -'),
(1247, 'San Martín Peras'),
(1248, 'Coicoyán de las Flores'),
(1249, 'Heroica Ciudad de Tlaxiaco'),
(1250, 'San Juan Ñumí'),
(1251, 'San Pedro Mártir Yucuxaco'),
(1252, 'San Martín Huamelúlpam'),
(1253, 'Santa Cruz Tayata'),
(1254, 'Santiago Nundiche'),
(1255, 'Santa María del Rosario'),
(1256, 'San Juan Achiutla'),
(1257, 'Santa Catarina Tayata'),
(1258, 'San Cristóbal Amoltepec'),
(1259, 'San Miguel Achiutla'),
(1260, 'San Martín Itunyoso'),
(1261, 'Magdalena Peñasco'),
(1262, 'San Bartolomé Yucuañe'),
(1263, 'Santa Cruz Nundaco'),
(1264, 'San Agustín Tlacotepec'),
(1265, 'Santo Tomás Ocotepec'),
(1266, 'San Antonio Sinicahua'),
(1267, 'San Mateo Peñasco'),
(1268, 'Santa María Tataltepec'),
(1269, 'San Pedro Molinos'),
(1270, 'Santa María Yosoyúa'),
(1271, 'San Juan Teita'),
(1272, 'Magdalena Jaltepec'),
(1273, 'Magdalena Yodocono de Porfirio Díaz'),
(1274, 'San Miguel Tecomatlán'),
(1275, 'Magdalena Zahuatlán'),
(1276, 'San Francisco Nuxaño'),
(1277, 'San Pedro Tidaá'),
(1278, 'San Francisco Jaltepetongo'),
(1279, 'Santiago Tilantongo'),
(1280, 'San Juan Diuxi'),
(1281, 'San Andrés Nuxiño'),
(1282, 'San Juan Tamazola'),
(1283, 'Santo Domingo Nuxaá'),
(1284, 'Yutanduchi de Guerrero'),
(1285, 'San Pedro Teozacoalco'),
(1286, 'San Miguel Piedras'),
(1287, 'San Mateo Sindihui'),
(1288, 'Heroica Ciudad de Juchitán de Zaragoza'),
(1289, 'Ciudad Ixtepec'),
(1290, 'El Espinal'),
(1291, 'Santo Domingo Ingenio'),
(1292, 'Santa María Xadani'),
(1293, 'Santiago Niltepec'),
(1294, 'San Dionisio del Mar'),
(1295, 'Asunción Ixtaltepec'),
(1296, 'San Francisco del Mar'),
(1297, 'Unión Hidalgo'),
(1298, 'San Miguel Chimalapa'),
(1299, 'Santo Domingo Zanatepec'),
(1300, 'Reforma de Pineda'),
(1301, 'San Francisco Ixhuatán'),
(1302, 'San Pedro Tapanatepec'),
(1303, 'Chahuites'),
(1304, 'Santiago Zacatepec'),
(1305, 'Santo Domingo Tepuxtepec'),
(1306, 'San Juan Cotzocón'),
(1307, 'San Juan Mazatlán'),
(1308, 'Totontepec Villa de Morelos'),
(1309, 'Mixistlán de la Reforma'),
(1310, 'Santa María Tlahuitoltepec'),
(1311, 'Santa María Alotepec'),
(1312, 'Santiago Atitlán'),
(1313, 'Tamazulápam del Espíritu Santo'),
(1314, 'San Pedro y San Pablo Ayutla'),
(1315, 'Santa María Tepantlali'),
(1316, 'San Miguel Quetzaltepec'),
(1317, 'Asunción Cacalotepec'),
(1318, 'San Pedro Ocotepec'),
(1319, 'San Lucas Camotlán'),
(1320, 'Santiago Ixcuintepec'),
(1321, 'Matías Romero Avendaño'),
(1322, 'San Juan Guichicovi'),
(1323, 'Santo Domingo Petapa'),
(1324, 'Santa María Chimalapa'),
(1325, 'Santa María Petapa'),
(1326, 'El Barrio de la Soledad'),
(1327, 'Tlacolula de Matamoros'),
(1328, 'San Sebastián Abasolo'),
(1329, 'Villa Díaz Ordaz'),
(1330, 'Santa María Guelacé'),
(1331, 'Teotitlán del Valle'),
(1332, 'San Francisco Lachigoló'),
(1333, 'San Sebastián Teitipac'),
(1334, 'Santa Ana del Valle'),
(1335, 'San Pablo Villa de Mitla'),
(1336, 'Santiago Matatlán'),
(1337, 'Santo Domingo Albarradas'),
(1338, 'Rojas de Cuauhtémoc'),
(1339, 'San Juan Teitipac'),
(1340, 'Santa Cruz Papalutla'),
(1341, 'Magdalena Teitipac'),
(1342, 'San Jerónimo Tlacochahuaya'),
(1343, 'San Juan Guelavía'),
(1344, 'San Lucas Quiaviní'),
(1345, 'San Juan del Río'),
(1346, 'San Bartolomé Quialana'),
(1347, 'San Lorenzo Albarradas'),
(1348, 'San Pedro Totolápam'),
(1349, 'San Pedro Quiatoni'),
(1350, 'Santa María Zoquitlán'),
(1351, 'San Dionisio Ocotepec'),
(1352, 'San Carlos Yautepec'),
(1353, 'San Juan Juquila Mixes'),
(1354, 'Nejapa de Madero'),
(1355, 'Santa Ana Tavela'),
(1356, 'San Juan Lajarcia'),
(1357, 'San Bartolo Yautepec'),
(1358, 'Santa María Ecatepec'),
(1359, 'Asunción Tlacolulita'),
(1360, 'San Pedro Mártir Quiechapa'),
(1361, 'Santa María Quiegolani'),
(1362, 'Santa Catarina Quioquitani'),
(1363, 'Santa Catalina Quierí'),
(1364, 'Salina Cruz'),
(1365, 'Santiago Lachiguiri'),
(1366, 'Santa María Jalapa del Marqués'),
(1367, 'Santa María Totolapilla'),
(1368, 'Santiago Laollaga'),
(1369, 'Guevea de Humboldt'),
(1370, 'Santo Domingo Chihuitán'),
(1371, 'Santa María Guienagati'),
(1372, 'Magdalena Tequisistlán'),
(1373, 'Magdalena Tlacotepec'),
(1374, 'San Pedro Comitancillo'),
(1375, 'Santa María Mixtequilla'),
(1376, 'Santo Domingo Tehuantepec'),
(1377, 'San Pedro Huamelula'),
(1378, 'San Pedro Huilotepec'),
(1379, 'San Mateo del Mar'),
(1380, 'San Blas Atempa'),
(1381, 'Santiago Astata'),
(1382, 'San Miguel Tenango'),
(1383, 'Miahuatlán de Porfirio Díaz'),
(1384, 'San Nicolás'),
(1385, 'San Simón Almolongas'),
(1386, 'San Luis Amatlán'),
(1387, 'San José Lachiguiri'),
(1388, 'Sitio de Xitlapehua'),
(1389, 'San Francisco Logueche'),
(1390, 'Santa Ana'),
(1391, 'Santa Cruz Xitla'),
(1392, 'Monjas'),
(1393, 'San Ildefonso Amatlán'),
(1394, 'Santa Catarina Cuixtla'),
(1395, 'San José del Peñasco'),
(1396, 'San Cristóbal Amatlán'),
(1397, 'San Juan Mixtepec -Dto. 26 -'),
(1398, 'San Pedro Mixtepec -Dto. 26 -'),
(1399, 'Santa Lucía Miahuatlán'),
(1400, 'San Jerónimo Coatlán'),
(1401, 'San Sebastián Coatlán'),
(1402, 'San Pablo Coatlán'),
(1403, 'San Mateo Río Hondo'),
(1404, 'Santo Tomás Tamazulapan'),
(1405, 'San Andrés Paxtlán'),
(1406, 'Santa María Ozolotepec'),
(1407, 'San Miguel Coatlán'),
(1408, 'San Sebastián Río Hondo'),
(1409, 'San Miguel Suchixtepec'),
(1410, 'Santo Domingo Ozolotepec'),
(1411, 'San Francisco Ozolotepec'),
(1412, 'Santiago Xanica'),
(1413, 'San Marcial Ozolotepec'),
(1414, 'San Juan Ozolotepec'),
(1415, 'San Pedro Pochutla'),
(1416, 'Santo Domingo de Morelos'),
(1417, 'Santa Catarina Loxicha'),
(1418, 'San Agustín Loxicha'),
(1419, 'San Baltazar Loxicha'),
(1420, 'Santa María Colotepec'),
(1421, 'San Bartolomé Loxicha'),
(1422, 'Santa María Tonameca'),
(1423, 'Candelaria Loxicha'),
(1424, 'Pluma Hidalgo'),
(1425, 'San Pedro el Alto'),
(1426, 'San Mateo Piñas'),
(1427, 'Santa María Huatulco'),
(1428, 'San Miguel del Puerto'),
(1429, 'Putla Villa de Guerrero'),
(1430, 'Constancia del Rosario'),
(1431, 'Mesones Hidalgo'),
(1432, 'Santa María Zacatepec'),
(1433, 'San Pedro Amuzgos'),
(1434, 'La Reforma'),
(1435, 'Santa María Ipalapa'),
(1436, 'Chalcatongo de Hidalgo'),
(1437, 'Santa María Yucuhiti'),
(1438, 'San Esteban Atatlahuca'),
(1439, 'Santa Catarina Ticuá'),
(1440, 'Santiago Nuyoó'),
(1441, 'Santa Catarina Yosonotú'),
(1442, 'San Miguel el Grande'),
(1443, 'Santo Domingo Ixcatlán'),
(1444, 'San Pablo Tijaltepec'),
(1445, 'Santa Cruz Tacahua'),
(1446, 'Santa Lucía Monteverde'),
(1447, 'San Andrés Cabecera Nueva'),
(1448, 'Santa María Yolotepec'),
(1449, 'Santiago Yosondúa'),
(1450, 'Santa Cruz Itundujia'),
(1451, 'Zimatlán de Álvarez'),
(1452, 'San Bernardo Mixtepec'),
(1453, 'Santa Cruz Mixtepec'),
(1454, 'San Miguel Mixtepec'),
(1455, 'Santa María Atzompa'),
(1456, 'San Andrés Ixtlahuaca'),
(1457, 'Santa Cruz Amilpas'),
(1458, 'Santa Cruz Xoxocotlán'),
(1459, 'Santa Lucía del Camino'),
(1460, 'San Pedro Ixtlahuaca'),
(1461, 'San Antonio de la Cal'),
(1462, 'San Agustín de las Juntas'),
(1463, 'San Pablo Huixtepec'),
(1464, 'Ánimas Trujano'),
(1465, 'San Jacinto Tlacotepec'),
(1466, 'San Raymundo Jalpan'),
(1467, 'Trinidad Zaachila'),
(1468, 'Santa María Coyotepec'),
(1469, 'San Bartolo Coyotepec'),
(1470, 'Santa Inés Yatzeche'),
(1471, 'Ciénega de Zimatlán'),
(1472, 'San Antonio Huitepec'),
(1473, 'Villa de Zaachila'),
(1474, 'San Sebastián Tutla'),
(1475, 'San Miguel Peras'),
(1476, 'San Pablo Cuatro Venados'),
(1477, 'Santa Inés del Monte'),
(1478, 'Santa Gertrudis'),
(1479, 'San Antonino el Alto'),
(1480, 'Magdalena Mixtepec'),
(1481, 'Santa Catarina Quiané'),
(1482, 'Ayoquezco de Aldama'),
(1483, 'Santa Ana Tlapacoyan'),
(1484, 'Santa Cruz Zenzontepec'),
(1485, 'San Francisco Cahuacuá'),
(1486, 'San Mateo Yucutindoo'),
(1487, 'Santiago Textitlán'),
(1488, 'Santiago Amoltepec'),
(1489, 'Santa María Zaniza'),
(1490, 'Santo Domingo Teojomulco'),
(1491, 'Cuilápam de Guerrero'),
(1492, 'Villa Sola de Vega'),
(1493, 'Santa María Lachixío'),
(1494, 'San Vicente Lachixío'),
(1495, 'San Lorenzo Texmelúcan'),
(1496, 'Santa María Sola'),
(1497, 'San Francisco Sola'),
(1498, 'San Ildefonso Sola'),
(1499, 'Santiago Minas'),
(1500, 'Heroica Ciudad de Ejutla de Crespo'),
(1501, 'San Martín Tilcajete'),
(1502, 'Santo Tomás Jalieza'),
(1503, 'San Juan Chilateca'),
(1504, 'Ocotlán de Morelos'),
(1505, 'Santa Ana Zegache'),
(1506, 'Santiago Apóstol'),
(1507, 'San Antonino Castillo Velasco'),
(1508, 'Asunción Ocotlán'),
(1509, 'San Pedro Mártir'),
(1510, 'San Dionisio Ocotlán'),
(1511, 'Magdalena Ocotlán'),
(1512, 'San Miguel Tilquiápam'),
(1513, 'Santa Catarina Minas'),
(1514, 'San Baltazar Chichicápam'),
(1515, 'San Pedro Apóstol'),
(1516, 'Santa Lucía Ocotlán'),
(1517, 'San Jerónimo Taviche'),
(1518, 'San Andrés Zabache'),
(1519, 'San José del Progreso'),
(1520, 'Yaxe'),
(1521, 'San Pedro Taviche'),
(1522, 'San Martín de los Cansecos'),
(1523, 'San Martín Lachilá'),
(1524, 'La Pe'),
(1525, 'La Compañía'),
(1526, 'Coatecas Altas'),
(1527, 'San Juan Lachigalla'),
(1528, 'San Agustín Amatengo'),
(1529, 'Taniche'),
(1530, 'San Miguel Ejutla'),
(1531, 'Yogana'),
(1532, 'San Vicente Coatlán'),
(1533, 'Santiago Pinotepa Nacional'),
(1534, 'San Juan Cacahuatepec'),
(1535, 'San Juan Bautista Lo de Soto'),
(1536, 'Mártires de Tacubaya'),
(1537, 'San Sebastián Ixcapa'),
(1538, 'San Antonio Tepetlapa'),
(1539, 'Santa María Cortijo'),
(1540, 'Santiago Llano Grande'),
(1541, 'San Miguel Tlacamama'),
(1542, 'Santiago Tapextla'),
(1543, 'San José Estancia Grande'),
(1544, 'Santo Domingo Armenta'),
(1545, 'Santiago Jamiltepec'),
(1546, 'San Pedro Atoyac'),
(1547, 'San Juan Colorado'),
(1548, 'Santiago Ixtayutla'),
(1549, 'San Pedro Jicayán'),
(1550, 'Pinotepa de Don Luis'),
(1551, 'San Lorenzo'),
(1552, 'San Agustín Chayuco'),
(1553, 'San Andrés Huaxpaltepec'),
(1554, 'Santa Catarina Mechoacán'),
(1555, 'Santiago Tetepec'),
(1556, 'Santa María Huazolotitlán'),
(1557, 'Villa de Tututepec de Melchor Ocampo'),
(1558, 'Tataltepec de Valdés'),
(1559, 'San Juan Quiahije'),
(1560, 'San Miguel Panixtlahuaca'),
(1561, 'Santa Catarina Juquila'),
(1562, 'San Pedro Juchatengo'),
(1563, 'Santiago Yaitepec'),
(1564, 'San Juan Lachao'),
(1565, 'Santa María Temaxcaltepec'),
(1566, 'Santos Reyes Nopala'),
(1567, 'San Gabriel Mixtepec'),
(1568, 'San Pedro Mixtepec -Dto. 22 -'),
(1569, 'Puebla'),
(1570, 'Tlaltenango'),
(1571, 'San Miguel Xoxtla'),
(1572, 'Juan C. Bonilla'),
(1573, 'Coronango'),
(1574, 'Cuautlancingo'),
(1575, 'San Pedro Cholula'),
(1576, 'San Andrés Cholula'),
(1577, 'Ocoyucan'),
(1578, 'Amozoc'),
(1579, 'Francisco Z. Mena'),
(1580, 'Pantepec'),
(1581, 'Venustiano Carranza'),
(1582, 'Jalpan'),
(1583, 'Tlaxco'),
(1584, 'Tlacuilotepec'),
(1585, 'Xicotepec'),
(1586, 'Pahuatlán'),
(1587, 'Honey'),
(1588, 'Naupan'),
(1589, 'Huauchinango'),
(1590, 'Ahuazotepec'),
(1591, 'Juan Galindo'),
(1592, 'Tlaola'),
(1593, 'Zihuateutla'),
(1594, 'Jopala'),
(1595, 'Tlapacoya'),
(1596, 'Chignahuapan'),
(1597, 'Zacatlán'),
(1598, 'Chiconcuautla'),
(1599, 'Ahuacatlán'),
(1600, 'Tepetzintla'),
(1601, 'San Felipe Tepatlán'),
(1602, 'Amixtlán'),
(1603, 'Tepango de Rodríguez'),
(1604, 'Zongozotla'),
(1605, 'Hermenegildo Galeana'),
(1606, 'Olintla'),
(1607, 'Coatepec'),
(1608, 'Camocuautla'),
(1609, 'Hueytlalpan'),
(1610, 'Zapotitlán de Méndez'),
(1611, 'Huitzilan de Serdán'),
(1612, 'Xochitlán de Vicente Suárez'),
(1613, 'Huehuetla'),
(1614, 'Ixtepec'),
(1615, 'Atlequizayan'),
(1616, 'Tenampulco'),
(1617, 'Tuzamapan de Galeana'),
(1618, 'Caxhuacan'),
(1619, 'Jonotla'),
(1620, 'Zoquiapan'),
(1621, 'Nauzontla'),
(1622, 'Cuetzalan del Progreso'),
(1623, 'Ayotoxco de Guerrero'),
(1624, 'Hueytamalco'),
(1625, 'Acateno'),
(1626, 'Cuautempan'),
(1627, 'Aquixtla'),
(1628, 'Tetela de Ocampo'),
(1629, 'Xochiapulco'),
(1630, 'Zacapoaxtla'),
(1631, 'Zaragoza'),
(1632, 'Ixtacamaxtitlán'),
(1633, 'Zautla'),
(1634, 'Ocotepec'),
(1635, 'Libres'),
(1636, 'Teziutlán'),
(1637, 'Tlatlauquitepec'),
(1638, 'Yaonáhuac'),
(1639, 'Hueyapan'),
(1640, 'Teteles de Avila Castillo'),
(1641, 'Atempan'),
(1642, 'Chignautla'),
(1643, 'Xiutetelco'),
(1644, 'Cuyoaco'),
(1645, 'Tepeyahualco'),
(1646, 'San Martín Texmelucan'),
(1647, 'Tlahuapan'),
(1648, 'San Matías Tlalancaleca'),
(1649, 'San Salvador el Verde'),
(1650, 'San Felipe Teotlalcingo'),
(1651, 'Chiautzingo'),
(1652, 'Huejotzingo'),
(1653, 'Domingo Arenas'),
(1654, 'Calpan'),
(1655, 'San Nicolás de los Ranchos'),
(1656, 'Atlixco'),
(1657, 'Nealtican'),
(1658, 'San Jerónimo Tecuanipan'),
(1659, 'San Gregorio Atzompa'),
(1660, 'Tochimilco'),
(1661, 'Tianguismanalco'),
(1662, 'Santa Isabel Cholula'),
(1663, 'Huaquechula'),
(1664, 'San Diego la Mesa Tochimiltzingo'),
(1665, 'Tepeojuma'),
(1666, 'Izúcar de Matamoros'),
(1667, 'Atzitzihuacán'),
(1668, 'Acteopan'),
(1669, 'Cohuecan'),
(1670, 'Tepemaxalco'),
(1671, 'Tlapanalá'),
(1672, 'Tepexco'),
(1673, 'Tilapa'),
(1674, 'Chietla'),
(1675, 'Atzala'),
(1676, 'Teopantlán'),
(1677, 'San Martín Totoltepec'),
(1678, 'Xochiltepec'),
(1679, 'Epatlán'),
(1680, 'Ahuatlán'),
(1681, 'Coatzingo'),
(1682, 'Santa Catarina Tlaltempan'),
(1683, 'Chigmecatitlán'),
(1684, 'Zacapala'),
(1685, 'Tepexi de Rodríguez'),
(1686, 'Teotlalco'),
(1687, 'Jolalpan'),
(1688, 'Huehuetlán el Chico'),
(1689, 'Chiautla'),
(1690, 'Cohetzala'),
(1691, 'Xicotlán'),
(1692, 'Chila de la Sal'),
(1693, 'Ixcamilpa de Guerrero'),
(1694, 'Albino Zertuche'),
(1695, 'Tulcingo'),
(1696, 'Tehuitzingo'),
(1697, 'Cuayuca de Andrade'),
(1698, 'Santa Inés Ahuatempan'),
(1699, 'Axutla'),
(1700, 'Chinantla'),
(1701, 'Ahuehuetitla'),
(1702, 'San Pablo Anicano'),
(1703, 'Tecomatlán'),
(1704, 'Piaxtla'),
(1705, 'Guadalupe'),
(1706, 'Ixcaquixtla'),
(1707, 'Coyotepec'),
(1708, 'Xayacatlán de Bravo'),
(1709, 'Totoltepec de Guerrero'),
(1710, 'Acatlán'),
(1711, 'San Jerónimo Xayacatlán'),
(1712, 'San Pedro Yeloixtlahuaca'),
(1713, 'Petlalcingo'),
(1714, 'San Miguel Ixitlán'),
(1715, 'Chila'),
(1716, 'Rafael Lara Grajales'),
(1717, 'San José Chiapa'),
(1718, 'Oriental'),
(1719, 'San Nicolás Buenos Aires'),
(1720, 'Guadalupe Victoria'),
(1721, 'Tlachichuca'),
(1722, 'Lafragua'),
(1723, 'Chilchotla'),
(1724, 'Quimixtlán'),
(1725, 'Chichiquila'),
(1726, 'Tepatlaxco de Hidalgo'),
(1727, 'Acajete'),
(1728, 'Nopalucan'),
(1729, 'Mazapiltepec de Juárez'),
(1730, 'Soltepec'),
(1731, 'Acatzingo'),
(1732, 'San Salvador el Seco'),
(1733, 'General Felipe Ángeles'),
(1734, 'Aljojuca'),
(1735, 'San Juan Atenco'),
(1736, 'Tepeaca'),
(1737, 'Cuautinchán'),
(1738, 'Tecali de Herrera'),
(1739, 'Mixtla'),
(1740, 'Santo Tomás Hueyotlipan'),
(1741, 'Tzicatlacoyan'),
(1742, 'Huehuetlán el Grande'),
(1743, 'La Magdalena Tlatlauquitepec'),
(1744, 'San Juan Atzompa'),
(1745, 'Huatlatlauca'),
(1746, 'Los Reyes de Juárez'),
(1747, 'Cuapiaxtla de Madero'),
(1748, 'San Salvador Huixcolotla'),
(1749, 'Quecholac'),
(1750, 'Tecamachalco'),
(1751, 'Palmar de Bravo'),
(1752, 'Chalchicomula de Sesma'),
(1753, 'Atzitzintla'),
(1754, 'Esperanza'),
(1755, 'Cañada Morelos'),
(1756, 'Tlanepantla'),
(1757, 'Tochtepec'),
(1758, 'Atoyatempan'),
(1759, 'Tepeyahualco de Cuauhtémoc'),
(1760, 'Huitziltepec'),
(1761, 'Molcaxac'),
(1762, 'Xochitlán Todos Santos'),
(1763, 'Yehualtepec'),
(1764, 'Tlacotepec de Benito Juárez'),
(1765, 'Juan N. Méndez'),
(1766, 'Tehuacán'),
(1767, 'Tepanco de López'),
(1768, 'Chapulco'),
(1769, 'Santiago Miahuatlán'),
(1770, 'Nicolás Bravo'),
(1771, 'Atexcal'),
(1772, 'San Antonio Cañada'),
(1773, 'Zapotitlán'),
(1774, 'San Gabriel Chilac'),
(1775, 'Caltepec'),
(1776, 'Vicente Guerrero'),
(1777, 'Ajalpan'),
(1778, 'Eloxochitlán'),
(1779, 'Zoquitlán'),
(1780, 'San Sebastián Tlacotepec'),
(1781, 'Altepexi'),
(1782, 'Zinacatepec'),
(1783, 'San José Miahuatlán'),
(1784, 'Coxcatlán'),
(1785, 'Coyomeapan'),
(1786, 'Querétaro'),
(1787, 'El Marqués'),
(1788, 'Colón'),
(1789, 'Pinal de Amoles'),
(1790, 'Jalpan de Serra'),
(1791, 'Landa de Matamoros'),
(1792, 'Arroyo Seco'),
(1793, 'Peñamiller'),
(1794, 'Cadereyta de Montes'),
(1795, 'San Joaquín'),
(1796, 'Tolimán'),
(1797, 'Ezequiel Montes'),
(1798, 'Pedro Escobedo'),
(1799, 'Tequisquiapan'),
(1800, 'San Juan del Río'),
(1801, 'Amealco de Bonfil'),
(1802, 'Corregidora'),
(1803, 'Huimilpan'),
(1804, 'Othón P. Blanco'),
(1805, 'Felipe Carrillo Puerto'),
(1806, 'Lázaro Cárdenas'),
(1807, 'Isla Mujeres'),
(1808, 'Benito Juárez'),
(1809, 'Cozumel'),
(1810, 'Solidaridad'),
(1811, 'Tulum'),
(1812, 'José María Morelos'),
(1813, 'Bacalar'),
(1814, 'San Luis Potosí'),
(1815, 'Soledad de Graciano Sánchez'),
(1816, 'Cerro de San Pedro'),
(1817, 'Ahualulco'),
(1818, 'Mexquitic de Carmona'),
(1819, 'Villa de Arriaga'),
(1820, 'Vanegas'),
(1821, 'Cedral'),
(1822, 'Catorce'),
(1823, 'Charcas'),
(1824, 'Salinas'),
(1825, 'Santo Domingo'),
(1826, 'Villa de Ramos'),
(1827, 'Matehuala'),
(1828, 'Villa de la Paz'),
(1829, 'Villa de Guadalupe'),
(1830, 'Guadalcázar'),
(1831, 'Moctezuma'),
(1832, 'Venado'),
(1833, 'Villa de Arista'),
(1834, 'Villa Hidalgo'),
(1835, 'Armadillo de los Infante'),
(1836, 'Ciudad Valles'),
(1837, 'Ebano'),
(1838, 'Tamuín'),
(1839, 'El Naranjo'),
(1840, 'Ciudad del Maíz'),
(1841, 'Alaquines'),
(1842, 'Cárdenas'),
(1843, 'Cerritos'),
(1844, 'Villa Juárez'),
(1845, 'San Nicolás Tolentino'),
(1846, 'Villa de Reyes'),
(1847, 'Zaragoza'),
(1848, 'Santa María del Río'),
(1849, 'Tierra Nueva'),
(1850, 'Rioverde'),
(1851, 'Ciudad Fernández'),
(1852, 'San Ciro de Acosta'),
(1853, 'Tamasopo'),
(1854, 'Rayón'),
(1855, 'Aquismón'),
(1856, 'Lagunillas'),
(1857, 'Santa Catarina'),
(1858, 'Tancanhuitz'),
(1859, 'Tanlajás'),
(1860, 'San Vicente Tancuayalab'),
(1861, 'San Antonio'),
(1862, 'Tanquián de Escobedo'),
(1863, 'Tampamolón Corona'),
(1864, 'Coxcatlán'),
(1865, 'Huehuetlán'),
(1866, 'Xilitla'),
(1867, 'Axtla de Terrazas'),
(1868, 'Tampacán'),
(1869, 'San Martín Chalchicuautla'),
(1870, 'Tamazunchale'),
(1871, 'Matlapa'),
(1872, 'Culiacán'),
(1873, 'Navolato'),
(1874, 'Badiraguato'),
(1875, 'Cosalá'),
(1876, 'Mocorito'),
(1877, 'Guasave'),
(1878, 'Ahome'),
(1879, 'Salvador Alvarado'),
(1880, 'Angostura'),
(1881, 'Choix'),
(1882, 'El Fuerte'),
(1883, 'Sinaloa'),
(1884, 'Mazatlán'),
(1885, 'Escuinapa'),
(1886, 'Concordia'),
(1887, 'Elota'),
(1888, 'Rosario'),
(1889, 'San Ignacio'),
(1890, 'Hermosillo'),
(1891, 'San Miguel de Horcasitas'),
(1892, 'Carbó'),
(1893, 'San Luis Río Colorado'),
(1894, 'Puerto Peñasco'),
(1895, 'General Plutarco Elías Calles'),
(1896, 'Caborca'),
(1897, 'Altar'),
(1898, 'Tubutama'),
(1899, 'Atil'),
(1900, 'Oquitoa'),
(1901, 'Sáric'),
(1902, 'Benjamín Hill'),
(1903, 'Trincheras'),
(1904, 'Pitiquito'),
(1905, 'Nogales'),
(1906, 'Imuris'),
(1907, 'Santa Cruz'),
(1908, 'Magdalena'),
(1909, 'Naco'),
(1910, 'Agua Prieta'),
(1911, 'Fronteras'),
(1912, 'Nacozari de García'),
(1913, 'Bavispe'),
(1914, 'Bacerac'),
(1915, 'Huachinera'),
(1916, 'Nácori Chico'),
(1917, 'Granados'),
(1918, 'Bacadéhuachi'),
(1919, 'Cumpas'),
(1920, 'Huásabas'),
(1921, 'Moctezuma'),
(1922, 'Villa Hidalgo'),
(1923, 'Santa Ana'),
(1924, 'Cananea'),
(1925, 'Arizpe'),
(1926, 'Cucurpe'),
(1927, 'Bacoachi'),
(1928, 'San Pedro de la Cueva'),
(1929, 'Divisaderos'),
(1930, 'Tepache'),
(1931, 'Villa Pesqueira'),
(1932, 'Opodepe'),
(1933, 'Huépac'),
(1934, 'Banámichi'),
(1935, 'Ures'),
(1936, 'Aconchi'),
(1937, 'Baviácora'),
(1938, 'San Felipe de Jesús'),
(1939, 'Rayón'),
(1940, 'Cajeme'),
(1941, 'Navojoa'),
(1942, 'Huatabampo'),
(1943, 'Bácum'),
(1944, 'Etchojoa'),
(1945, 'Benito Juárez'),
(1946, 'Empalme'),
(1947, 'Guaymas'),
(1948, 'San Ignacio Río Muerto'),
(1949, 'La Colorada'),
(1950, 'Mazatán'),
(1951, 'Suaqui Grande'),
(1952, 'Sahuaripa'),
(1953, 'San Javier'),
(1954, 'Soyopa'),
(1955, 'Bacanora'),
(1956, 'Arivechi'),
(1957, 'Rosario'),
(1958, 'Quiriego'),
(1959, 'Onavas'),
(1960, 'Alamos'),
(1961, 'Yécora'),
(1962, 'Centro'),
(1963, 'Jalpa de Méndez'),
(1964, 'Nacajuca'),
(1965, 'Comalcalco'),
(1966, 'Huimanguillo'),
(1967, 'Cárdenas'),
(1968, 'Paraíso'),
(1969, 'Cunduacán'),
(1970, 'Macuspana'),
(1971, 'Centla'),
(1972, 'Jonuta'),
(1973, 'Teapa'),
(1974, 'Jalapa'),
(1975, 'Tacotalpa'),
(1976, 'Tenosique'),
(1977, 'Balancán'),
(1978, 'Emiliano Zapata'),
(1979, 'Victoria'),
(1980, 'Llera'),
(1981, 'Güémez'),
(1982, 'Casas'),
(1983, 'Matamoros'),
(1984, 'Valle Hermoso'),
(1985, 'San Fernando'),
(1986, 'Cruillas'),
(1987, 'San Nicolás'),
(1988, 'Soto la Marina'),
(1989, 'Jiménez'),
(1990, 'San Carlos'),
(1991, 'Abasolo'),
(1992, 'Padilla'),
(1993, 'Hidalgo'),
(1994, 'Mainero'),
(1995, 'Villagrán'),
(1996, 'Tula'),
(1997, 'Jaumave'),
(1998, 'Miquihuana'),
(1999, 'Bustamante'),
(2000, 'Palmillas'),
(2001, 'Ocampo'),
(2002, 'Nuevo Laredo'),
(2003, 'Miguel Alemán'),
(2004, 'Guerrero'),
(2005, 'Mier'),
(2006, 'Gustavo Díaz Ordaz'),
(2007, 'Camargo'),
(2008, 'Reynosa'),
(2009, 'Río Bravo'),
(2010, 'Méndez'),
(2011, 'Burgos'),
(2012, 'Tampico'),
(2013, 'Ciudad Madero'),
(2014, 'Altamira'),
(2015, 'Aldama'),
(2016, 'González'),
(2017, 'Xicoténcatl'),
(2018, 'Gómez Farías'),
(2019, 'El Mante'),
(2020, 'Antiguo Morelos'),
(2021, 'Nuevo Morelos'),
(2022, 'Tlaxcala'),
(2023, 'Ixtacuixtla de Mariano Matamoros'),
(2024, 'Santa Ana Nopalucan'),
(2025, 'Panotla'),
(2026, 'Totolac'),
(2027, 'Tepeyanco'),
(2028, 'Santa Isabel Xiloxoxtla'),
(2029, 'San Juan Huactzinco'),
(2030, 'Calpulalpan'),
(2031, 'Sanctórum de Lázaro Cárdenas'),
(2032, 'Benito Juárez'),
(2033, 'Hueyotlipan'),
(2034, 'Tlaxco'),
(2035, 'Nanacamilpa de Mariano Arista'),
(2036, 'Españita'),
(2037, 'Apizaco'),
(2038, 'Atlangatepec'),
(2039, 'Muñoz de Domingo Arenas'),
(2040, 'Tetla de la Solidaridad'),
(2041, 'Xaltocan'),
(2042, 'San Lucas Tecopilco'),
(2043, 'Yauhquemehcan'),
(2044, 'Xaloztoc'),
(2045, 'Tocatlán'),
(2046, 'Tzompantepec'),
(2047, 'San José Teacalco'),
(2048, 'Huamantla'),
(2049, 'Terrenate'),
(2050, 'Lázaro Cárdenas'),
(2051, 'Emiliano Zapata'),
(2052, 'Atltzayanca'),
(2053, 'Cuapiaxtla'),
(2054, 'El Carmen Tequexquitla'),
(2055, 'Ixtenco'),
(2056, 'Ziltlaltépec de Trinidad Sánchez Santos'),
(2057, 'Apetatitlán de Antonio Carvajal'),
(2058, 'Amaxac de Guerrero'),
(2059, 'Santa Cruz Tlaxcala'),
(2060, 'Cuaxomulco'),
(2061, 'Contla de Juan Cuamatzi'),
(2062, 'Tepetitla de Lardizábal'),
(2063, 'Natívitas'),
(2064, 'Santa Apolonia Teacalco'),
(2065, 'Tetlatlahuca'),
(2066, 'San Damián Texóloc'),
(2067, 'San Jerónimo Zacualpan'),
(2068, 'Zacatelco'),
(2069, 'San Lorenzo Axocomanitla'),
(2070, 'Santa Catarina Ayometla'),
(2071, 'Xicohtzinco'),
(2072, 'Papalotla de Xicohténcatl'),
(2073, 'Chiautempan'),
(2074, 'La Magdalena Tlaltelulco'),
(2075, 'San Francisco Tetlanohcan'),
(2076, 'Teolocholco'),
(2077, 'Acuamanala de Miguel Hidalgo'),
(2078, 'Santa Cruz Quilehtla'),
(2079, 'Mazatecochco de José María Morelos'),
(2080, 'Tenancingo'),
(2081, 'San Pablo del Monte'),
(2082, 'Xalapa'),
(2083, 'Tlalnelhuayocan'),
(2084, 'Xico'),
(2085, 'Ixhuacán de los Reyes'),
(2086, 'Ayahualulco'),
(2087, 'Perote'),
(2088, 'Banderilla'),
(2089, 'Rafael Lucio'),
(2090, 'Acajete'),
(2091, 'Las Vigas de Ramírez'),
(2092, 'Villa Aldama'),
(2093, 'Tlacolulan'),
(2094, 'Tonayán'),
(2095, 'Coacoatzintla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `mensaje` varchar(2000) NOT NULL,
  `fecha` datetime NOT NULL,
  `leido` int(11) NOT NULL DEFAULT 0,
  `proyecto_id` int(11) DEFAULT NULL,
  `incidencia_id` int(11) DEFAULT NULL,
  `tipo` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id` int(11) NOT NULL,
  `iso` char(2) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id`, `iso`, `nombre`) VALUES
(1, 'AF', 'Afganistán'),
(2, 'AX', 'Islas Gland'),
(3, 'AL', 'Albania'),
(4, 'DE', 'Alemania'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antártida'),
(9, 'AG', 'Antigua y Barbuda'),
(10, 'AN', 'Antillas Holandesas'),
(11, 'SA', 'Arabia Saudí'),
(12, 'DZ', 'Argelia'),
(13, 'AR', 'Argentina'),
(14, 'AM', 'Armenia'),
(15, 'AW', 'Aruba'),
(16, 'AU', 'Australia'),
(17, 'AT', 'Austria'),
(18, 'AZ', 'Azerbaiyán'),
(19, 'BS', 'Bahamas'),
(20, 'BH', 'Bahréin'),
(21, 'BD', 'Bangladesh'),
(22, 'BB', 'Barbados'),
(23, 'BY', 'Bielorrusia'),
(24, 'BE', 'Bélgica'),
(25, 'BZ', 'Belice'),
(26, 'BJ', 'Benin'),
(27, 'BM', 'Bermudas'),
(28, 'BT', 'Bhután'),
(29, 'BO', 'Bolivia'),
(30, 'BA', 'Bosnia y Herzegovina'),
(31, 'BW', 'Botsuana'),
(32, 'BV', 'Isla Bouvet'),
(33, 'BR', 'Brasil'),
(34, 'BN', 'Brunéi'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'CV', 'Cabo Verde'),
(39, 'KY', 'Islas Caimán'),
(40, 'KH', 'Camboya'),
(41, 'CM', 'Camerún'),
(42, 'CA', 'Canadá'),
(43, 'CF', 'República Centroafricana'),
(44, 'TD', 'Chad'),
(45, 'CZ', 'República Checa'),
(46, 'CL', 'Chile'),
(47, 'CN', 'China'),
(48, 'CY', 'Chipre'),
(49, 'CX', 'Isla de Navidad'),
(50, 'VA', 'Ciudad del Vaticano'),
(51, 'CC', 'Islas Cocos'),
(52, 'CO', 'Colombia'),
(53, 'KM', 'Comoras'),
(54, 'CD', 'República Democrática del Congo'),
(55, 'CG', 'Congo'),
(56, 'CK', 'Islas Cook'),
(57, 'KP', 'Corea del Norte'),
(58, 'KR', 'Corea del Sur'),
(59, 'CI', 'Costa de Marfil'),
(60, 'CR', 'Costa Rica'),
(61, 'HR', 'Croacia'),
(62, 'CU', 'Cuba'),
(63, 'DK', 'Dinamarca'),
(64, 'DM', 'Dominica'),
(65, 'DO', 'República Dominicana'),
(66, 'EC', 'Ecuador'),
(67, 'EG', 'Egipto'),
(68, 'SV', 'El Salvador'),
(69, 'AE', 'Emiratos Árabes Unidos'),
(70, 'ER', 'Eritrea'),
(71, 'SK', 'Eslovaquia'),
(72, 'SI', 'Eslovenia'),
(73, 'ES', 'España'),
(74, 'UM', 'Islas ultramarinas de Estados Unidos'),
(75, 'US', 'Estados Unidos'),
(76, 'EE', 'Estonia'),
(77, 'ET', 'Etiopía'),
(78, 'FO', 'Islas Feroe'),
(79, 'PH', 'Filipinas'),
(80, 'FI', 'Finlandia'),
(81, 'FJ', 'Fiyi'),
(82, 'FR', 'Francia'),
(83, 'GA', 'Gabón'),
(84, 'GM', 'Gambia'),
(85, 'GE', 'Georgia'),
(86, 'GS', 'Islas Georgias del Sur y Sandwich del Sur'),
(87, 'GH', 'Ghana'),
(88, 'GI', 'Gibraltar'),
(89, 'GD', 'Granada'),
(90, 'GR', 'Grecia'),
(91, 'GL', 'Groenlandia'),
(92, 'GP', 'Guadalupe'),
(93, 'GU', 'Guam'),
(94, 'GT', 'Guatemala'),
(95, 'GF', 'Guayana Francesa'),
(96, 'GN', 'Guinea'),
(97, 'GQ', 'Guinea Ecuatorial'),
(98, 'GW', 'Guinea-Bissau'),
(99, 'GY', 'Guyana'),
(100, 'HT', 'Haití'),
(101, 'HM', 'Islas Heard y McDonald'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong'),
(104, 'HU', 'Hungría'),
(105, 'IN', 'India'),
(106, 'ID', 'Indonesia'),
(107, 'IR', 'Irán'),
(108, 'IQ', 'Iraq'),
(109, 'IE', 'Irlanda'),
(110, 'IS', 'Islandia'),
(111, 'IL', 'Israel'),
(112, 'IT', 'Italia'),
(113, 'JM', 'Jamaica'),
(114, 'JP', 'Japón'),
(115, 'JO', 'Jordania'),
(116, 'KZ', 'Kazajstán'),
(117, 'KE', 'Kenia'),
(118, 'KG', 'Kirguistán'),
(119, 'KI', 'Kiribati'),
(120, 'KW', 'Kuwait'),
(121, 'LA', 'Laos'),
(122, 'LS', 'Lesotho'),
(123, 'LV', 'Letonia'),
(124, 'LB', 'Líbano'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libia'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lituania'),
(129, 'LU', 'Luxemburgo'),
(130, 'MO', 'Macao'),
(131, 'MK', 'ARY Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MY', 'Malasia'),
(134, 'MW', 'Malawi'),
(135, 'MV', 'Maldivas'),
(136, 'ML', 'Malí'),
(137, 'MT', 'Malta'),
(138, 'FK', 'Islas Malvinas'),
(139, 'MP', 'Islas Marianas del Norte'),
(140, 'MA', 'Marruecos'),
(141, 'MH', 'Islas Marshall'),
(142, 'MQ', 'Martinica'),
(143, 'MU', 'Mauricio'),
(144, 'MR', 'Mauritania'),
(145, 'YT', 'Mayotte'),
(146, 'MX', 'México'),
(147, 'FM', 'Micronesia'),
(148, 'MD', 'Moldavia'),
(149, 'MC', 'Mónaco'),
(150, 'MN', 'Mongolia'),
(151, 'MS', 'Montserrat'),
(152, 'MZ', 'Mozambique'),
(153, 'MM', 'Myanmar'),
(154, 'NA', 'Namibia'),
(155, 'NR', 'Nauru'),
(156, 'NP', 'Nepal'),
(157, 'NI', 'Nicaragua'),
(158, 'NE', 'Níger'),
(159, 'NG', 'Nigeria'),
(160, 'NU', 'Niue'),
(161, 'NF', 'Isla Norfolk'),
(162, 'NO', 'Noruega'),
(163, 'NC', 'Nueva Caledonia'),
(164, 'NZ', 'Nueva Zelanda'),
(165, 'OM', 'Omán'),
(166, 'NL', 'Países Bajos'),
(167, 'PK', 'Pakistán'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestina'),
(170, 'PA', 'Panamá'),
(171, 'PG', 'Papúa Nueva Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Perú'),
(174, 'PN', 'Islas Pitcairn'),
(175, 'PF', 'Polinesia Francesa'),
(176, 'PL', 'Polonia'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'GB', 'Reino Unido'),
(181, 'RE', 'Reunión'),
(182, 'RW', 'Ruanda'),
(183, 'RO', 'Rumania'),
(184, 'RU', 'Rusia'),
(185, 'EH', 'Sahara Occidental'),
(186, 'SB', 'Islas Salomón'),
(187, 'WS', 'Samoa'),
(188, 'AS', 'Samoa Americana'),
(189, 'KN', 'San Cristóbal y Nevis'),
(190, 'SM', 'San Marino'),
(191, 'PM', 'San Pedro y Miquelón'),
(192, 'VC', 'San Vicente y las Granadinas'),
(193, 'SH', 'Santa Helena'),
(194, 'LC', 'Santa Lucía'),
(195, 'ST', 'Santo Tomé y Príncipe'),
(196, 'SN', 'Senegal'),
(197, 'CS', 'Serbia y Montenegro'),
(198, 'SC', 'Seychelles'),
(199, 'SL', 'Sierra Leona'),
(200, 'SG', 'Singapur'),
(201, 'SY', 'Siria'),
(202, 'SO', 'Somalia'),
(203, 'LK', 'Sri Lanka'),
(204, 'SZ', 'Suazilandia'),
(205, 'ZA', 'Sudáfrica'),
(206, 'SD', 'Sudán'),
(207, 'SE', 'Suecia'),
(208, 'CH', 'Suiza'),
(209, 'SR', 'Surinam'),
(210, 'SJ', 'Svalbard y Jan Mayen'),
(211, 'TH', 'Tailandia'),
(212, 'TW', 'Taiwán'),
(213, 'TZ', 'Tanzania'),
(214, 'TJ', 'Tayikistán'),
(215, 'IO', 'Territorio Británico del Océano Índico'),
(216, 'TF', 'Territorios Australes Franceses'),
(217, 'TL', 'Timor Oriental'),
(218, 'TG', 'Togo'),
(219, 'TK', 'Tokelau'),
(220, 'TO', 'Tonga'),
(221, 'TT', 'Trinidad y Tobago'),
(222, 'TN', 'Túnez'),
(223, 'TC', 'Islas Turcas y Caicos'),
(224, 'TM', 'Turkmenistán'),
(225, 'TR', 'Turquía'),
(226, 'TV', 'Tuvalu'),
(227, 'UA', 'Ucrania'),
(228, 'UG', 'Uganda'),
(229, 'UY', 'Uruguay'),
(230, 'UZ', 'Uzbekistán'),
(231, 'VU', 'Vanuatu'),
(232, 'VE', 'Venezuela'),
(233, 'VN', 'Vietnam'),
(234, 'VG', 'Islas Vírgenes Británicas'),
(235, 'VI', 'Islas Vírgenes de los Estados Unidos'),
(236, 'WF', 'Wallis y Futuna'),
(237, 'YE', 'Yemen'),
(238, 'DJ', 'Yibuti'),
(239, 'ZM', 'Zambia'),
(240, 'ZW', 'Zimbabue');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id`, `nombre`) VALUES
(1, 'Director General');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `nombre`) VALUES
(1, 'Credenciales'),
(2, 'Front Office'),
(3, 'Administrador'),
(4, 'Catalogos'),
(5, 'Ventas'),
(6, 'Catalogos'),
(7, 'Ventas'),
(8, 'Administración'),
(9, 'Finanzas'),
(10, 'Tesorería'),
(11, 'Clientes'),
(12, 'Marketing'),
(13, 'Servicio al Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promedios`
--

CREATE TABLE `promedios` (
  `id` int(11) NOT NULL,
  `total_casos` int(11) NOT NULL DEFAULT 0,
  `resoluciones` int(11) NOT NULL DEFAULT 0,
  `escalaciones` int(11) NOT NULL DEFAULT 0,
  `tiempo_resolucion` int(11) NOT NULL DEFAULT 0,
  `en_proceso` int(11) NOT NULL DEFAULT 0,
  `is_incidencia` tinyint(1) NOT NULL DEFAULT 0,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_wingman`
--

CREATE TABLE `proveedores_wingman` (
  `id` int(11) NOT NULL,
  `nombre` varchar(85) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `correo` varchar(85) NOT NULL,
  `giro` varchar(85) NOT NULL,
  `plazo_credito` varchar(85) NOT NULL,
  `linea_credito` varchar(85) NOT NULL,
  `tipo_persona` tinyint(1) NOT NULL DEFAULT 0,
  `razon_social` varchar(85) NOT NULL,
  `rfc` varchar(15) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `colonia` varchar(255) NOT NULL,
  `codigo_postal` varchar(15) NOT NULL,
  `pais_id` int(11) NOT NULL,
  `estado_id` int(11) NOT NULL,
  `municipio_id` int(11) NOT NULL,
  `forma_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores_wingman`
--

INSERT INTO `proveedores_wingman` (`id`, `nombre`, `telefono`, `correo`, `giro`, `plazo_credito`, `linea_credito`, `tipo_persona`, `razon_social`, `rfc`, `direccion`, `colonia`, `codigo_postal`, `pais_id`, `estado_id`, `municipio_id`, `forma_pago`) VALUES
(1, 'Juan', '123', '123', '123', '123', '123', 1, '123', '123', '123', '123', '123', 2, 2, 13, 2),
(2, 'mario', '123123', 'juangarciafierros@gmail.com', '123', '123', '123', 1, 'sdas', '123123123', 'trinidad hernandez', 'Vicente Guerrero (El Portón)', '85216', 146, 26, 1940, 2),
(3, 'luis', '6442511325', 'juangarciafierros@gmail.com', 'nada', '123', '123', 0, '123', '123', 'trinidad hernandez', 'Vicente Guerrero (El Portón)', '85216', 146, 26, 1940, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores_wingman_contactos`
--

CREATE TABLE `proveedores_wingman_contactos` (
  `id` int(11) NOT NULL,
  `proveedor_id` int(11) DEFAULT NULL,
  `nombre` varchar(85) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `correo` varchar(85) NOT NULL,
  `puesto` varchar(85) NOT NULL,
  `observaciones` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores_wingman_contactos`
--

INSERT INTO `proveedores_wingman_contactos` (`id`, `proveedor_id`, `nombre`, `telefono`, `correo`, `puesto`, `observaciones`) VALUES
(1, 3, 'Juan', '2121', 'juan@gmail.com', 'programador', '123'),
(2, 3, 'Luis', '1213', 'luis@gmail.com', 'gerente', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `contexto` mediumtext DEFAULT NULL,
  `alcance` int(11) DEFAULT NULL,
  `presupuesto` int(11) DEFAULT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `fecha_publicacion` datetime DEFAULT NULL,
  `proveedor_id` int(11) DEFAULT NULL,
  `porcentaje_completado` int(11) NOT NULL DEFAULT 0,
  `completado` tinyint(1) NOT NULL DEFAULT 0,
  `aprobado` tinyint(1) NOT NULL DEFAULT 0,
  `pagado` tinyint(1) NOT NULL DEFAULT 0,
  `calificado` tinyint(1) NOT NULL DEFAULT 0,
  `digital` tinyint(1) NOT NULL DEFAULT 1,
  `fecha_pagado` date DEFAULT NULL,
  `aplicacion_ligada` int(11) DEFAULT NULL,
  `servicio_id` int(11) NOT NULL DEFAULT 1,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_entrega` datetime DEFAULT NULL,
  `folio` varchar(20) NOT NULL DEFAULT 'PD01',
  `incidencia_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_aplicaciones`
--

CREATE TABLE `proyectos_aplicaciones` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `costo` float NOT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `estado` int(11) NOT NULL DEFAULT 1,
  `fecha_creacion` datetime NOT NULL,
  `owner` int(11) DEFAULT NULL,
  `invitacion` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_archivos`
--

CREATE TABLE `proyectos_archivos` (
  `id` int(11) NOT NULL,
  `tipo` int(11) NOT NULL DEFAULT 0,
  `link` varchar(2000) DEFAULT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_areas`
--

CREATE TABLE `proyectos_areas` (
  `id` int(11) NOT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `area_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_invitaciones`
--

CREATE TABLE `proyectos_invitaciones` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `proveedor_id` int(11) NOT NULL,
  `mensaje` mediumtext NOT NULL,
  `estado` varchar(85) NOT NULL DEFAULT 'PENDIENTE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_propuestas`
--

CREATE TABLE `proyectos_propuestas` (
  `id` int(11) NOT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `proveedor_id` int(11) NOT NULL,
  `descripcion` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_reclamos`
--

CREATE TABLE `proyectos_reclamos` (
  `id` int(11) NOT NULL,
  `proyecto_id` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_tareas`
--

CREATE TABLE `proyectos_tareas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(2000) DEFAULT NULL,
  `prioridad` varchar(85) DEFAULT NULL,
  `estado` varchar(85) DEFAULT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `fecha_final` datetime DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_usuarios`
--

CREATE TABLE `proyectos_usuarios` (
  `id` int(11) NOT NULL,
  `proyecto_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_habilidades`
--

CREATE TABLE `proyecto_habilidades` (
  `id` int(11) NOT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `habilidad` varchar(2000) NOT NULL,
  `habilidad_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto_preguntas`
--

CREATE TABLE `proyecto_preguntas` (
  `id` int(11) NOT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `pregunta` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos`
--

CREATE TABLE `puestos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `puestos`
--

INSERT INTO `puestos` (`id`, `nombre`) VALUES
(1, 'Director General');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puestos_permisos`
--

CREATE TABLE `puestos_permisos` (
  `id` int(11) NOT NULL,
  `puesto_id` int(11) NOT NULL,
  `permiso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `icon` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `nombre`, `icon`) VALUES
(1, 'Carpintero', 'ico-carpintero'),
(2, 'Plomería', 'ico-plomeria'),
(3, 'Cerrajeria', 'ico-cerrajeria'),
(4, 'Limpieza', 'ico-limpieza'),
(5, 'Electricista', 'ico-electricista'),
(6, 'Jardinería', 'ico-jardineria'),
(7, 'Herrería', 'ico-herreria'),
(8, 'Electrodomesticos', 'ico-electrodomesticos'),
(9, 'Fletes', 'ico-fletes'),
(10, 'Albañileria', 'ico-alba'),
(11, 'Lava Alfombras', 'ico-lavaalfombras'),
(12, 'Lava Sillones', 'ico-lavasillones'),
(13, 'Pintor', 'ico-pintor'),
(14, 'Ventanas', 'ico-ventanas'),
(15, 'Tapiceria', 'ico-tapiceria'),
(16, 'Fumigación', 'ico-fumigacion'),
(17, 'Electro-mecánico', 'ico-electromecanico'),
(18, 'Impermeabilización', 'ico-impermeabilizacion'),
(19, 'Persianas', 'ico-persianas'),
(20, 'Desinfección', 'ico-desinfeccion'),
(21, 'Estética Automotriz', 'ico-estetica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios_digitales`
--

CREATE TABLE `servicios_digitales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `icon` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios_digitales`
--

INSERT INTO `servicios_digitales` (`id`, `nombre`, `icon`) VALUES
(1, 'Graficos y Diseño', NULL),
(2, 'Marketing Digital', NULL),
(9, 'asdf', 'marble-diagram (2).png'),
(10, 'asd', 'marble-diagram (3).png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(85) NOT NULL,
  `direccion` text DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(50) DEFAULT NULL,
  `municipio_id` int(11) DEFAULT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `pais_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `nombre`, `direccion`, `telefono`, `codigo_postal`, `municipio_id`, `estado_id`, `pais_id`) VALUES
(1, 'CDMX', NULL, NULL, '', NULL, NULL, NULL),
(3, 'Erus  obregón', 'trinidad hernandez 1', '6442512566', '85242', 1940, 26, 146),
(5, 'prueba', 'aaaaa', '123123123', '12312', 1940, 26, 146);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `agente_id` int(11) NOT NULL,
  `motivo` varchar(85) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL,
  `canal_contacto` varchar(85) DEFAULT NULL,
  `usuario_id` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 0,
  `estado_id` int(11) NOT NULL,
  `primer_contacto` tinyint(1) NOT NULL DEFAULT 0,
  `folio` varchar(10) DEFAULT NULL,
  `tiempo_resolucion` float DEFAULT NULL,
  `fecha_resolucion` datetime DEFAULT NULL,
  `visto` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets_notas`
--

CREATE TABLE `tickets_notas` (
  `id` int(11) NOT NULL,
  `tickets_id` int(11) DEFAULT NULL,
  `agente_id` int(11) DEFAULT NULL,
  `nota` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_costo`
--

CREATE TABLE `tipo_costo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_costo`
--

INSERT INTO `tipo_costo` (`id`, `nombre`) VALUES
(1, 'Inventario'),
(2, 'Créditos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_egreso`
--

CREATE TABLE `tipo_egreso` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `tipo_costo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_egreso`
--

INSERT INTO `tipo_egreso` (`id`, `nombre`, `tipo_costo`) VALUES
(1, 'Aguinaldos', 2),
(3, 'Prueba', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_gastos`
--

CREATE TABLE `tipo_gastos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(85) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_gastos`
--

INSERT INTO `tipo_gastos` (`id`, `nombre`) VALUES
(1, 'LIMPIEZA'),
(2, 'COMISIÓN'),
(3, 'REPARTIDOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_moneda`
--

CREATE TABLE `tipo_moneda` (
  `id` int(11) NOT NULL,
  `moneda` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_moneda`
--

INSERT INTO `tipo_moneda` (`id`, `moneda`) VALUES
(1, 'MXN'),
(3, 'USD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellidos` varchar(55) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `estado_id` int(11) DEFAULT NULL,
  `verificado` tinyint(1) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `creado` tinyint(1) NOT NULL DEFAULT 0,
  `tipo_profesional` tinyint(1) NOT NULL DEFAULT 0,
  `servicios` mediumtext DEFAULT NULL,
  `contacto` varchar(85) DEFAULT NULL,
  `cv` varchar(255) DEFAULT NULL,
  `resumen_profesional` mediumtext DEFAULT NULL,
  `puesto_laboral` varchar(255) DEFAULT NULL,
  `telefono` varchar(85) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `invitados` int(11) NOT NULL DEFAULT 0,
  `last_login` datetime DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `publico` tinyint(1) NOT NULL DEFAULT 1,
  `calificacion` double NOT NULL DEFAULT 0,
  `proyectos_completados` int(11) NOT NULL DEFAULT 0,
  `horas_trabajadas` int(11) NOT NULL DEFAULT 0,
  `incumplimientos` int(11) NOT NULL DEFAULT 0,
  `calificaciones` int(11) NOT NULL DEFAULT 0,
  `fondos` double NOT NULL DEFAULT 0,
  `municipio_id` int(11) DEFAULT NULL,
  `precio_por_dia` double NOT NULL DEFAULT 0,
  `temp` varchar(10) DEFAULT NULL,
  `pro` tinyint(1) NOT NULL DEFAULT 0,
  `pais_id` int(11) NOT NULL DEFAULT 146,
  `genero` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `nombre_empresa` varchar(85) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `sitio_web` varchar(255) DEFAULT NULL,
  `alerta_aplicaciones` tinyint(1) NOT NULL DEFAULT 1,
  `alerta_preguntas` tinyint(1) NOT NULL DEFAULT 1,
  `nivel` int(11) NOT NULL DEFAULT 0,
  `codigo_postal` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `correo`, `password`, `estado_id`, `verificado`, `type`, `creado`, `tipo_profesional`, `servicios`, `contacto`, `cv`, `resumen_profesional`, `puesto_laboral`, `telefono`, `token`, `invitados`, `last_login`, `fecha_registro`, `publico`, `calificacion`, `proyectos_completados`, `horas_trabajadas`, `incumplimientos`, `calificaciones`, `fondos`, `municipio_id`, `precio_por_dia`, `temp`, `pro`, `pais_id`, `genero`, `edad`, `nombre_empresa`, `direccion`, `sitio_web`, `alerta_aplicaciones`, `alerta_preguntas`, `nivel`, `codigo_postal`) VALUES
(13, 'sadness', '123', 'waxdofus@gmail.com', '123123', 26, 1, 0, 1, 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', '', 'cv.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'Programador', '644221355', 'kasdhjkfsd', 0, '2021-04-06 11:13:09', '2019-05-15', 1, 7, 0, 0, 0, 2, 0, 1940, 0, NULL, 0, 138, 0, 21, NULL, NULL, NULL, 1, 1, 0, '85216'),
(60, 'Desarrollo', 'Web', 'desarrollo7web@gmail.com', 'alberto', 26, 1, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'BOBviY', 0, '2021-04-06 11:18:08', '2021-03-31', 1, 0, 0, 0, 0, 0, 0, 1940, 0, '8u8NPO', 0, 3, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, '85216');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_areas`
--

CREATE TABLE `usuarios_areas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `experiencia` int(11) NOT NULL,
  `area_nombre` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios_areas`
--

INSERT INTO `usuarios_areas` (`id`, `usuario_id`, `area_id`, `experiencia`, `area_nombre`) VALUES
(28, 13, 7, 3, NULL),
(29, 13, 2, 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_calificaciones`
--

CREATE TABLE `usuarios_calificaciones` (
  `id` int(11) NOT NULL,
  `calidad` int(11) NOT NULL DEFAULT 0,
  `experiencia` int(11) NOT NULL DEFAULT 0,
  `costo` int(11) NOT NULL DEFAULT 0,
  `entrega` int(11) NOT NULL DEFAULT 0,
  `comunicacion` int(11) NOT NULL DEFAULT 0,
  `detalles_adicionales` mediumtext DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `proyecto_id` int(11) NOT NULL,
  `proveedor_id` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios_calificaciones`
--

INSERT INTO `usuarios_calificaciones` (`id`, `calidad`, `experiencia`, `costo`, `entrega`, `comunicacion`, `detalles_adicionales`, `file`, `proyecto_id`, `proveedor_id`, `fecha`) VALUES
(18, 5, 5, 5, 5, 5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '', 85, 13, '2021-04-05 13:01:07'),
(19, 4, 4, 4, 4, 4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '', 86, 13, '2021-04-05 13:07:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_certificaciones`
--

CREATE TABLE `usuarios_certificaciones` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `proveedor_id` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `descripcion` varchar(2000) DEFAULT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_competencias`
--

CREATE TABLE `usuarios_competencias` (
  `id` int(11) NOT NULL,
  `competencia_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(85) DEFAULT NULL,
  `nivel` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios_competencias`
--

INSERT INTO `usuarios_competencias` (`id`, `competencia_id`, `usuario_id`, `nombre`, `nivel`) VALUES
(25, 1, 13, NULL, 100),
(27, 0, 13, 'Poeta', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_conversaciones`
--

CREATE TABLE `usuarios_conversaciones` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `leido` int(11) NOT NULL DEFAULT 0,
  `orden` int(11) NOT NULL DEFAULT 0,
  `proyecto_id` int(11) DEFAULT NULL,
  `invitacion_ligada` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_empleos`
--

CREATE TABLE `usuarios_empleos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `puesto_laboral` varchar(255) NOT NULL,
  `empleador` varchar(255) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `descripcion` mediumtext DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios_empleos`
--

INSERT INTO `usuarios_empleos` (`id`, `nombre`, `puesto_laboral`, `empleador`, `fecha_inicio`, `fecha_fin`, `ciudad`, `descripcion`, `usuario_id`) VALUES
(11, 'EMPLEO', 'Programador', 'Somos', '2021-04-05', '2021-04-06', 'Cd Obregon', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_especialidades`
--

CREATE TABLE `usuarios_especialidades` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `especialidad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios_especialidades`
--

INSERT INTO `usuarios_especialidades` (`id`, `usuario_id`, `especialidad_id`) VALUES
(15, 13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_formacion`
--

CREATE TABLE `usuarios_formacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `descripcion` mediumtext DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios_formacion`
--

INSERT INTO `usuarios_formacion` (`id`, `nombre`, `fecha_inicio`, `fecha_fin`, `descripcion`, `usuario_id`) VALUES
(4, 'cbta 197', '2021-04-05', '2021-04-06', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\\\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_portafolio`
--

CREATE TABLE `usuarios_portafolio` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `titulo` varchar(85) NOT NULL,
  `descripcion` mediumtext NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tipo` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios_portafolio`
--

INSERT INTO `usuarios_portafolio` (`id`, `usuario_id`, `titulo`, `descripcion`, `file`, `tipo`) VALUES
(15, 13, 'fsdf', 'sdfsdf', 'capture.png', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_redes`
--

CREATE TABLE `usuarios_redes` (
  `id` int(11) NOT NULL,
  `url` varchar(2000) NOT NULL,
  `red_id` int(11) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios_redes`
--

INSERT INTO `usuarios_redes` (`id`, `url`, `red_id`, `usuario_id`) VALUES
(5, 'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox', NULL, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_referencias`
--

CREATE TABLE `usuarios_referencias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(85) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_transacciones`
--

CREATE TABLE `usuarios_transacciones` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `valor` double DEFAULT NULL,
  `abonado` double DEFAULT NULL,
  `restante` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `proyecto_id` int(11) DEFAULT NULL,
  `monto` double NOT NULL,
  `sender_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_cuentas`
--

CREATE TABLE `usuario_cuentas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `forma_pago` int(11) DEFAULT NULL,
  `referencia` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_cuentas`
--

INSERT INTO `usuario_cuentas` (`id`, `usuario_id`, `forma_pago`, `referencia`) VALUES
(45, 13, 1, 'asdasda'),
(46, 13, 2, 'adasd');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ad_departamento_id` (`departamento_id`),
  ADD KEY `fk_ad_estado_id` (`estado_id`),
  ADD KEY `fk_ad_sucursal_id` (`sucursal_id`),
  ADD KEY `fk_ad_puesto_id` (`puesto_id`),
  ADD KEY `fk_ad_municipio_id` (`municipio_id`);

--
-- Indices de la tabla `admin_permisos`
--
ALTER TABLE `admin_permisos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ap_admin_id` (`admin_id`),
  ADD KEY `fk_ap_permiso_id` (`permiso_id`);

--
-- Indices de la tabla `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `competencias`
--
ALTER TABLE `competencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `concepto`
--
ALTER TABLE `concepto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `conversaciones_archivos`
--
ALTER TABLE `conversaciones_archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `egresos`
--
ALTER TABLE `egresos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_egr_departamento_id` (`departamento_id`),
  ADD KEY `fk_egr_proveedor_id` (`proveedor_id`),
  ADD KEY `fk_egr_estado_id` (`estado_id`),
  ADD KEY `fk_egr_sucursal_id` (`sucursal_id`),
  ADD KEY `fk_egr_cuenta_id` (`cuenta_id`),
  ADD KEY `fk_egr_tipo_gasto` (`tipo_gasto`),
  ADD KEY `fk_egr_moneda_id` (`moneda_id`),
  ADD KEY `fk_egr_forma_pago` (`forma_pago`),
  ADD KEY `fk_egr_concepto_id` (`concepto_id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estados_municipios`
--
ALTER TABLE `estados_municipios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `estados_id` (`estados_id`,`municipios_id`),
  ADD KEY `municipios_id_refs_id_6d8b23ec` (`municipios_id`);

--
-- Indices de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `giro_empresa`
--
ALTER TABLE `giro_empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `historial_transacciones`
--
ALTER TABLE `historial_transacciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_in_agente_id` (`agente_id`);

--
-- Indices de la tabla `incidencias_archivos`
--
ALTER TABLE `incidencias_archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `incidencias_problemas`
--
ALTER TABLE `incidencias_problemas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`_id`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_n_proyecto_id` (`proyecto_id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promedios`
--
ALTER TABLE `promedios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores_wingman`
--
ALTER TABLE `proveedores_wingman`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores_wingman_contactos`
--
ALTER TABLE `proveedores_wingman_contactos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pwc_proveedor_id` (`proveedor_id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `proyectos` ADD FULLTEXT KEY `relevancia` (`titulo`,`descripcion`);

--
-- Indices de la tabla `proyectos_aplicaciones`
--
ALTER TABLE `proyectos_aplicaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pa_proyecto_id` (`proyecto_id`);

--
-- Indices de la tabla `proyectos_archivos`
--
ALTER TABLE `proyectos_archivos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_parchivo_proyecto_id` (`proyecto_id`);

--
-- Indices de la tabla `proyectos_areas`
--
ALTER TABLE `proyectos_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pareas_proyecto_id` (`proyecto_id`);

--
-- Indices de la tabla `proyectos_invitaciones`
--
ALTER TABLE `proyectos_invitaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pinvi_proyecto_id` (`proyecto_id`);

--
-- Indices de la tabla `proyectos_propuestas`
--
ALTER TABLE `proyectos_propuestas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ppropuestas_proyecto_id` (`proyecto_id`);

--
-- Indices de la tabla `proyectos_reclamos`
--
ALTER TABLE `proyectos_reclamos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos_tareas`
--
ALTER TABLE `proyectos_tareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ptareas_proyecto_id` (`proyecto_id`);

--
-- Indices de la tabla `proyecto_habilidades`
--
ALTER TABLE `proyecto_habilidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phabilidades_proyecto_id` (`proyecto_id`);

--
-- Indices de la tabla `proyecto_preguntas`
--
ALTER TABLE `proyecto_preguntas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ppreguntas_proyecto_id` (`proyecto_id`);

--
-- Indices de la tabla `puestos`
--
ALTER TABLE `puestos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puestos_permisos`
--
ALTER TABLE `puestos_permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios_digitales`
--
ALTER TABLE `servicios_digitales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_su_pais_id` (`pais_id`),
  ADD KEY `fk_su_municipio_id` (`municipio_id`),
  ADD KEY `fk_su_estado_id` (`estado_id`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tickets_notas`
--
ALTER TABLE `tickets_notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tickets_notas_tickets_id_idx` (`tickets_id`),
  ADD KEY `fk_tickets_notas_agente_id_idx` (`agente_id`);

--
-- Indices de la tabla `tipo_costo`
--
ALTER TABLE `tipo_costo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_egreso`
--
ALTER TABLE `tipo_egreso`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_te_tipo_costo` (`tipo_costo`);

--
-- Indices de la tabla `tipo_gastos`
--
ALTER TABLE `tipo_gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo_moneda`
--
ALTER TABLE `tipo_moneda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_u_municipio_id` (`municipio_id`),
  ADD KEY `fk_u_estado_id` (`estado_id`);
ALTER TABLE `usuarios` ADD FULLTEXT KEY `relevancia` (`nombre`,`apellidos`);

--
-- Indices de la tabla `usuarios_areas`
--
ALTER TABLE `usuarios_areas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ua_usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios_calificaciones`
--
ALTER TABLE `usuarios_calificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_uc_proveedor_id` (`proveedor_id`);

--
-- Indices de la tabla `usuarios_certificaciones`
--
ALTER TABLE `usuarios_certificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_competencias`
--
ALTER TABLE `usuarios_competencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_conversaciones`
--
ALTER TABLE `usuarios_conversaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_uconversasion_usuario_id` (`usuario_id`),
  ADD KEY `fk_uconversasion_sender_id` (`sender_id`);

--
-- Indices de la tabla `usuarios_empleos`
--
ALTER TABLE `usuarios_empleos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_uempleo_usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios_especialidades`
--
ALTER TABLE `usuarios_especialidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ue_usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios_formacion`
--
ALTER TABLE `usuarios_formacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_uf_usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios_portafolio`
--
ALTER TABLE `usuarios_portafolio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_up_usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios_redes`
--
ALTER TABLE `usuarios_redes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_uredes_usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios_referencias`
--
ALTER TABLE `usuarios_referencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ur_usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios_transacciones`
--
ALTER TABLE `usuarios_transacciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario_cuentas`
--
ALTER TABLE `usuario_cuentas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ucuentas_forma_pago` (`forma_pago`),
  ADD KEY `fk_ucuentas_usuario_id` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `admin_permisos`
--
ALTER TABLE `admin_permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `competencias`
--
ALTER TABLE `competencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `concepto`
--
ALTER TABLE `concepto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `conversaciones_archivos`
--
ALTER TABLE `conversaciones_archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `departamentos`
--
ALTER TABLE `departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `egresos`
--
ALTER TABLE `egresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `estados_municipios`
--
ALTER TABLE `estados_municipios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2458;

--
-- AUTO_INCREMENT de la tabla `forma_pago`
--
ALTER TABLE `forma_pago`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `giro_empresa`
--
ALTER TABLE `giro_empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `habilidades`
--
ALTER TABLE `habilidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `historial_transacciones`
--
ALTER TABLE `historial_transacciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `incidencias`
--
ALTER TABLE `incidencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `incidencias_archivos`
--
ALTER TABLE `incidencias_archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `incidencias_problemas`
--
ALTER TABLE `incidencias_problemas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2458;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `promedios`
--
ALTER TABLE `promedios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proveedores_wingman`
--
ALTER TABLE `proveedores_wingman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `proveedores_wingman_contactos`
--
ALTER TABLE `proveedores_wingman_contactos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `proyectos_aplicaciones`
--
ALTER TABLE `proyectos_aplicaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `proyectos_archivos`
--
ALTER TABLE `proyectos_archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `proyectos_areas`
--
ALTER TABLE `proyectos_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `proyectos_invitaciones`
--
ALTER TABLE `proyectos_invitaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proyectos_propuestas`
--
ALTER TABLE `proyectos_propuestas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyectos_reclamos`
--
ALTER TABLE `proyectos_reclamos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `proyectos_tareas`
--
ALTER TABLE `proyectos_tareas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `proyecto_habilidades`
--
ALTER TABLE `proyecto_habilidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de la tabla `proyecto_preguntas`
--
ALTER TABLE `proyecto_preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `puestos`
--
ALTER TABLE `puestos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `puestos_permisos`
--
ALTER TABLE `puestos_permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `servicios_digitales`
--
ALTER TABLE `servicios_digitales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `tickets_notas`
--
ALTER TABLE `tickets_notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipo_costo`
--
ALTER TABLE `tipo_costo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipo_egreso`
--
ALTER TABLE `tipo_egreso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_gastos`
--
ALTER TABLE `tipo_gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipo_moneda`
--
ALTER TABLE `tipo_moneda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `usuarios_areas`
--
ALTER TABLE `usuarios_areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `usuarios_calificaciones`
--
ALTER TABLE `usuarios_calificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuarios_certificaciones`
--
ALTER TABLE `usuarios_certificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios_competencias`
--
ALTER TABLE `usuarios_competencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `usuarios_conversaciones`
--
ALTER TABLE `usuarios_conversaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `usuarios_empleos`
--
ALTER TABLE `usuarios_empleos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `usuarios_especialidades`
--
ALTER TABLE `usuarios_especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `usuarios_formacion`
--
ALTER TABLE `usuarios_formacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios_portafolio`
--
ALTER TABLE `usuarios_portafolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuarios_redes`
--
ALTER TABLE `usuarios_redes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios_referencias`
--
ALTER TABLE `usuarios_referencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_transacciones`
--
ALTER TABLE `usuarios_transacciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuario_cuentas`
--
ALTER TABLE `usuario_cuentas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD CONSTRAINT `fk_ad_departamento_id` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ad_estado_id` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ad_municipio_id` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ad_puesto_id` FOREIGN KEY (`puesto_id`) REFERENCES `puestos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ad_sucursal_id` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursales` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `admin_permisos`
--
ALTER TABLE `admin_permisos`
  ADD CONSTRAINT `fk_ap_admin_id` FOREIGN KEY (`admin_id`) REFERENCES `administradores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ap_permiso_id` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `egresos`
--
ALTER TABLE `egresos`
  ADD CONSTRAINT `fk_egr_concepto_id` FOREIGN KEY (`concepto_id`) REFERENCES `concepto` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_egr_cuenta_id` FOREIGN KEY (`cuenta_id`) REFERENCES `cuentas` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_egr_departamento_id` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_egr_estado_id` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_egr_forma_pago` FOREIGN KEY (`forma_pago`) REFERENCES `forma_pago` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_egr_moneda_id` FOREIGN KEY (`moneda_id`) REFERENCES `tipo_moneda` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_egr_proveedor_id` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores_wingman` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_egr_sucursal_id` FOREIGN KEY (`sucursal_id`) REFERENCES `sucursales` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_egr_tipo_gasto` FOREIGN KEY (`tipo_gasto`) REFERENCES `tipo_costo` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `incidencias`
--
ALTER TABLE `incidencias`
  ADD CONSTRAINT `fk_in_agente_id` FOREIGN KEY (`agente_id`) REFERENCES `administradores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD CONSTRAINT `fk_n_proyecto_id` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proveedores_wingman_contactos`
--
ALTER TABLE `proveedores_wingman_contactos`
  ADD CONSTRAINT `fk_pwc_proveedor_id` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores_wingman` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proyectos_aplicaciones`
--
ALTER TABLE `proyectos_aplicaciones`
  ADD CONSTRAINT `fk_pa_proyecto_id` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `proyectos_archivos`
--
ALTER TABLE `proyectos_archivos`
  ADD CONSTRAINT `fk_parchivo_proyecto_id` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyectos_areas`
--
ALTER TABLE `proyectos_areas`
  ADD CONSTRAINT `fk_pareas_proyecto_id` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyectos_invitaciones`
--
ALTER TABLE `proyectos_invitaciones`
  ADD CONSTRAINT `fk_pinvi_proyecto_id` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyectos_propuestas`
--
ALTER TABLE `proyectos_propuestas`
  ADD CONSTRAINT `fk_ppropuestas_proyecto_id` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyectos_tareas`
--
ALTER TABLE `proyectos_tareas`
  ADD CONSTRAINT `fk_ptareas_proyecto_id` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyecto_habilidades`
--
ALTER TABLE `proyecto_habilidades`
  ADD CONSTRAINT `fk_phabilidades_proyecto_id` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `proyecto_preguntas`
--
ALTER TABLE `proyecto_preguntas`
  ADD CONSTRAINT `fk_ppreguntas_proyecto_id` FOREIGN KEY (`proyecto_id`) REFERENCES `proyectos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD CONSTRAINT `fk_su_estado_id` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_su_municipio_id` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_su_pais_id` FOREIGN KEY (`pais_id`) REFERENCES `paises` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `tickets_notas`
--
ALTER TABLE `tickets_notas`
  ADD CONSTRAINT `fk_tickets_notas_agente_id` FOREIGN KEY (`agente_id`) REFERENCES `administradores` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tickets_notas_tickets_id` FOREIGN KEY (`tickets_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tipo_egreso`
--
ALTER TABLE `tipo_egreso`
  ADD CONSTRAINT `fk_te_tipo_costo` FOREIGN KEY (`tipo_costo`) REFERENCES `tipo_costo` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_u_estado_id` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_u_municipio_id` FOREIGN KEY (`municipio_id`) REFERENCES `municipios` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_areas`
--
ALTER TABLE `usuarios_areas`
  ADD CONSTRAINT `fk_ua_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_calificaciones`
--
ALTER TABLE `usuarios_calificaciones`
  ADD CONSTRAINT `fk_uc_proveedor_id` FOREIGN KEY (`proveedor_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_conversaciones`
--
ALTER TABLE `usuarios_conversaciones`
  ADD CONSTRAINT `fk_uconversasion_sender_id` FOREIGN KEY (`sender_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_uconversasion_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_empleos`
--
ALTER TABLE `usuarios_empleos`
  ADD CONSTRAINT `fk_uempleo_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_especialidades`
--
ALTER TABLE `usuarios_especialidades`
  ADD CONSTRAINT `fk_ue_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_formacion`
--
ALTER TABLE `usuarios_formacion`
  ADD CONSTRAINT `fk_uf_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_portafolio`
--
ALTER TABLE `usuarios_portafolio`
  ADD CONSTRAINT `fk_up_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_redes`
--
ALTER TABLE `usuarios_redes`
  ADD CONSTRAINT `fk_uredes_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_referencias`
--
ALTER TABLE `usuarios_referencias`
  ADD CONSTRAINT `fk_ur_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario_cuentas`
--
ALTER TABLE `usuario_cuentas`
  ADD CONSTRAINT `fk_ucuentas_forma_pago` FOREIGN KEY (`forma_pago`) REFERENCES `forma_pago` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ucuentas_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
