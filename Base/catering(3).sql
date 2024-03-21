-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-04-2023 a las 21:35:51
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catering`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `empId` int(11) NOT NULL,
  `cedula` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `centro costos` varchar(200) DEFAULT NULL,
  `consumos` int(11) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `empId`, `cedula`, `nombre`, `direccion`, `centro costos`, `consumos`, `estado`) VALUES
(1, 1, '17', 'Starman', 'Quito', '22233', 1, '1'),
(2, 1, '17', 'Starman', 'Quito', '22233', 1, '1'),
(3, 1, '1758813792', 'Niño Betancourt Raúl Adolfo', '', '1049479', 1, '1'),
(4, 1, '1760911287', 'Bedoya Restrepo César Augusto', '', '1049601', 1, '1'),
(5, 1, '0604024828', 'Coro Guairacaja Beliza', '', '173294', 1, '1'),
(6, 1, '1718336173', 'Pallares Gonzalez Christian Alexander', '', '1000096', 1, '1'),
(7, 1, '1721218566', 'Hinojosa Llerena Jose Raul', '', '1000206', 1, '1'),
(8, 1, '0103942603', 'Tamariz Velez Juan Sebastian', '', '1000298', 1, '1'),
(9, 1, '1308250370', 'Lourido Jara Edmundo Aurelio', '', '1000310', 1, '1'),
(10, 1, '0106398787', 'Sanchez Deleg Diana Carolina', '', '1001090', 1, '1'),
(11, 1, '1713694477', 'Cevallos Calero Maria Lorena', '', '1001137', 1, '1'),
(12, 1, '1712842572', 'Gomez Jacome Julio Fernando', '', '1001297', 1, '1'),
(13, 1, '1709509184', 'Ortiz De la Roche Cristina Marisol', '', '1001532', 1, '1'),
(14, 1, '1103610760', 'Herrera Vivanco Flavio Augusto', '', '1001533', 1, '1'),
(15, 1, '1713162335', 'Armijo Alvarado Adan Abel', '', '1001767', 1, '1'),
(16, 1, '0201872975', 'Arevalo Pachala Katherine Alexandra', '', '1001772', 1, '1'),
(17, 1, '1717545667', 'Melo Flores Dianna Carolina', '', '1001931', 1, '1'),
(18, 1, '1718052143', 'Jacome Sagñay Maria Gabriela', '', '1002016', 1, '1'),
(19, 1, '1720970555', 'Izurieta Pacheco Daniela Estefania', '', '1002447', 1, '1'),
(20, 1, '0930715248', 'Armas Ramirez Christian Fernando', '', '1002662', 1, '1'),
(21, 1, '0926860560', 'Aguirre Iñiguez Martha Paola', '', '1002791', 1, '1'),
(22, 1, '0919598052', 'Camacho Sarasti Lidia Patricia', '', '1002990', 1, '1'),
(23, 1, '1003418652', 'Cervantes Rivadeneira Andres Eduardo', '', '1002993', 1, '1'),
(24, 1, '0102597457', 'Sarmiento Ullauri Marcelo Vinicio', '', '1003001', 1, '1'),
(25, 1, '1720447208', 'Quito Carrion Marco Vinicio', '', '1003041', 1, '1'),
(26, 1, '0603925462', 'Ojeda Ojeda Gina Alejandra', '', '1003201', 1, '1'),
(27, 1, '1715820468', 'Lopez Zambrano Erick Israel', '', '1003301', 1, '1'),
(28, 1, '1711606358', 'Aleman Garcia Denisse Alexandra', '', '1003408', 1, '1'),
(29, 1, '1721066098', 'Arcentales Perez Carmen Jacqueline', '', '1003535', 1, '1'),
(30, 1, '1104689334', 'Castillo Cuenca Carlos Javier', '', '1003567', 1, '1'),
(31, 1, '1721844098', 'Calvopiña Delgado Katherine Cristina', '', '1003876', 1, '1'),
(32, 1, '1722489612', 'Aguirre Saenz Santiago Patricio', '', '1004079', 1, '1'),
(33, 1, '1714765821', 'Pallo Chango Edgar Fernando', '', '1004228', 1, '1'),
(34, 1, '1724079510', 'Cueva Jimenez Michelle Alejandra', '', '1004318', 1, '1'),
(35, 1, '1714556832', 'Arguello Santiana Carlos Francisco', '', '1004538', 1, '1'),
(36, 1, '0919721639', 'Montes Regato Karla Liliana', '', '1004683', 1, '1'),
(37, 1, '1755029095', 'Tato Gonzalez Beatriz', '', '1004773', 1, '1'),
(38, 1, '1205035791', 'Orellana Sandoval Jose Enrique', '', '1004776', 1, '1'),
(39, 1, '1708279797', 'Cajilema Flores Yadira Leonor', '', '1004791', 1, '1'),
(40, 1, '1711782332', 'Pasquel Quiñonez Rene Mauricio', '', '1005032', 1, '1'),
(41, 1, '0951588532', 'Hidalgo Constante Byron Andres', '', '1005101', 1, '1'),
(42, 1, '1758488702', 'Carvajal Rodriguez Lourdes Pastora Ines', '', '1005226', 1, '1'),
(43, 1, '1718139122', 'Villarreal Noboa Ana Cristina', '', '1005291', 1, '1'),
(44, 1, '1720745817', 'Santander Roman Grace Maricela', '', '1005332', 1, '1'),
(45, 1, '1716274285', 'Viteri Guevara Sandra Paulina', '', '1005376', 1, '1'),
(46, 1, '1718856006', 'Castellano Ordoñez Yanick Alonso', '', '1005768', 1, '1'),
(47, 1, '1721823928', 'Contreras Auz David Sebastian', '', '1005771', 1, '1'),
(48, 1, '1725293227', 'Miño Teran Daniela Alejandra', '', '1005784', 1, '1'),
(49, 1, '1720628427', 'Andrade Velasco Maria Soledad', '', '1005935', 1, '1'),
(50, 1, '1400364962', 'Vasquez Bracho Veronica Dolores', '', '1005960', 1, '1'),
(51, 1, '1713704623', 'Almeida Sanchez Maria Isabel', '', '1006078', 1, '1'),
(52, 1, '0922110325', 'Chanaba Rivera Johanna Estefania', '', '1006299', 1, '1'),
(53, 1, '1716166416', 'Hurtado Parreño Andres Patricio', '', '1006337', 1, '1'),
(54, 1, '0925578064', 'Moreano Diaz Edie Arturo', '', '1006360', 1, '1'),
(55, 1, '1720745270', 'Moreta Ortega Alan Michael', '', '1006603', 1, '1'),
(56, 1, '1724012172', 'Castro Chavez Mauricio Andres', '', '1006613', 1, '1'),
(57, 1, '0924319197', 'Vizuete Escobar Carlos Mauricio', '', '1006780', 1, '1'),
(58, 1, '1721342507', 'Vargas Jaramillo Paul Nicolas', '', '1007073', 1, '1'),
(59, 1, '1720809803', 'Venegas Andrade Juan Andres', '', '1007567', 1, '1'),
(60, 1, '1719735373', 'Lucero Unda Sara Lizeth', '', '1007780', 1, '1'),
(61, 1, '1758492027', 'Marin Mora Jeferson Alfredo', '', '1007917', 1, '1'),
(62, 1, '1716134034', 'Samaniego Saenz Valeria Isabel', '', '1007921', 1, '1'),
(63, 1, '1757736887', 'Dos Ramos Zambrano Andres Jose Alejandro', '', '1008121', 1, '1'),
(64, 1, '1714208376', 'Chavez Vinueza Nelson Xavier', '', '1008122', 1, '1'),
(65, 1, '1722506605', 'Tuquerez Herrera Jessica Andrea', '', '1008310', 1, '1'),
(66, 1, '1105004509', 'Mena Medina Jose Luis', '', '1008331', 1, '1'),
(67, 1, '1003193065', 'Zura Chala Andrea Yomaira', '', '1008336', 1, '1'),
(68, 1, '1722382932', 'Gaona Guerrero Irene Carolina', '', '1008422', 1, '1'),
(69, 1, '0941006744', 'Leon Ruiz Lissette Ashley', '', '1008513', 1, '1'),
(70, 1, '1104601636', 'Maldonado Mendieta Priscila Galina', '', '1008548', 1, '1'),
(71, 1, '0401318530', 'Enriquez Aguilar Genny Elizabeth', '', '1008665', 1, '1'),
(72, 1, '1758700551', 'Obregon Martinez Juan Andres', '', '1008925', 1, '1'),
(73, 1, '1714025135', 'Vallejo Tolagasi Roberto Carlos', '', '1008974', 1, '1'),
(74, 1, '1720210804', 'Fernandez Jimenez Claudia Betzabeth', '', '1009866', 1, '1'),
(75, 1, '0961492030', 'Fernandez Delgado Yosmel', '', '1009885', 1, '1'),
(76, 1, '1725634552', 'Sanchez Arteaga Fredy Vicente', '', '1009930', 1, '1'),
(77, 1, '1758088288', 'Saavedra Talledo Alan Alexander', '', '1009931', 1, '1'),
(78, 1, '0401477310', 'Guerrero Tuz Jonathan Javier', '', '1009932', 1, '1'),
(79, 1, '1725407611', 'Fuentes Fuentes Andres Marcelo', '', '1009934', 1, '1'),
(80, 1, '1725641201', 'Velasco Arias Maria Belen', '', '1009951', 1, '1'),
(81, 1, '1717171456', 'Luzuriaga Montoya Leidy Janeth', '', '1009952', 1, '1'),
(82, 1, '1715643688', 'Cutus Mullo Oscar Danilo', '', '1009953', 1, '1'),
(83, 1, '1718823451', 'Caceres Caceres Sandy Lorena', '', '1009968', 1, '1'),
(84, 1, '1717345787', 'Reinoso Cardenas Gerson Bernardo', '', '1010164', 1, '1'),
(85, 1, '1710885235', 'Velasquez Benitez Roberto Javier', '', '1010180', 1, '1'),
(86, 1, '1726694829', 'Reyes Paz y Miño Martin Nicolas', '', '1010546', 1, '1'),
(87, 1, '0931141436', 'Mejia Navarro Jean Carlos', '', '1010763', 1, '1'),
(88, 1, '1717667727', 'Echeverria Gomez Alvaro Luis', '', '1011084', 1, '1'),
(89, 1, '1722337993', 'Sango Quimbita Karina Mireya', '', '1011201', 1, '1'),
(90, 1, '1717921306', 'Cañaveral Bastidas Dario Javier', '', '1011202', 1, '1'),
(91, 1, '1723481790', 'Rodriguez Cordova Bryan Alexander', '', '1011206', 1, '1'),
(92, 1, '1723726574', 'Muñoz Esparza Alejandro Efrain', '', '1011207', 1, '1'),
(93, 1, '0930061197', 'Bastidas Martinez Leonel Andres', '', '1011210', 1, '1'),
(94, 1, '1714436860', 'Correa Haro Julia Paulina', '', '1011213', 1, '1'),
(95, 1, '1723504013', 'Laverde Paucar Victor Hugo', '', '1011273', 1, '1'),
(96, 1, '0925812810', 'Velez Zambrano Julio Cesar', '', '1011290', 1, '1'),
(97, 1, '1757580897', 'Hernandez Salcedo Hans Alexander', '', '1011392', 1, '1'),
(98, 1, '0703628776', 'Acosta Morales Andrea Mishel', '', '1011404', 1, '1'),
(99, 1, '1713737029', 'Santos Logroño Gustavo Javier', '', '1011432', 1, '1'),
(100, 1, '1721673711', 'Reinoso Rivadeneira Bryan Andres', '', '1011505', 1, '1'),
(101, 1, '0503264830', 'Fonseca Romero Hugo Gabriel', '', '1011507', 1, '1'),
(102, 1, '1757940117', 'Mago Franco Estefania Jose', '', '1011545', 1, '1'),
(103, 1, '0603958539', 'Noboa Silva Andres Alfredo', '', '1011554', 1, '1'),
(104, 1, '1003225859', 'Puerres Alquedan Andrea Estefania', '', '1011581', 1, '1'),
(105, 1, '1724424021', 'Borja Naranjo Cristina Elizabeth', '', '1011585', 1, '1'),
(106, 1, '1719997221', 'Pillajo Bolagay Carlos Andres', '', '1011611', 1, '1'),
(107, 1, '1803124039', 'Flores Bermeo Mario Fernando', '', '1011662', 1, '1'),
(108, 1, '1716965908', 'Ushiña Puco Galo Esteban', '', '1011686', 1, '1'),
(109, 1, '1719006205', 'Andrade Eguez Felipe Mateo', '', '1011896', 1, '1'),
(110, 1, '1308943800', 'Cedeño Macias Winston Gregorio', '', '1012074', 1, '1'),
(111, 1, '1716776941', 'Viteri Veloz Paulo Agusto', '', '1012175', 1, '1'),
(112, 1, '1718175274', 'Ayala Pacheco David Gonzalo', '', '1012314', 1, '1'),
(113, 1, '1721407821', 'Tapia Cabezas Cristian Pablo', '', '1012353', 1, '1'),
(114, 1, '1713331328', 'Proaño Mena Johanna Paulina', '', '1012482', 1, '1'),
(115, 1, '1719110049', 'Guerron Barrera Gabriela Selene', '', '1012550', 1, '1'),
(116, 1, '0909538324', 'Andrade Sarmiento Jorge Xavier', '', '1012868', 1, '1'),
(117, 1, '1722244173', 'LLumiquinga Pazuña Catherine Veronica', '', '1013290', 1, '1'),
(118, 1, '1723580336', 'Maldonado Pillajo Carlos Andres', '', '1013497', 1, '1'),
(119, 1, '1719898858', 'Huilcapi Aleman Oscar Alejandro', '', '1013499', 1, '1'),
(120, 1, '0401378641', 'Taco Flores Teresa Fernanda', '', '1013515', 1, '1'),
(121, 1, '0102606993', 'Siguenza Paz Consuelo Del Cisne', '', '1013518', 1, '1'),
(122, 1, '1718016692', 'Rojas Velasco Mauricio Fernando', '', '1013525', 1, '1'),
(123, 1, '1718816935', 'Cevallos Silva Alexander Raul', '', '1013588', 1, '1'),
(124, 1, '0962537213', 'Vivas Zambrano Marisi', '', '1013608', 1, '1'),
(125, 1, '1716270994', 'Basantes Aguas Fabian Rodrigo', '', '1013621', 1, '1'),
(126, 1, '1752052371', 'Barba Nandar Gabriela Mishell', '', '1013781', 1, '1'),
(127, 1, '1715759278', 'Baquero Jimenez Cristian Ivan', '', '1013898', 1, '1'),
(128, 1, '1757697683', 'Chacon Pinto Jose Luis', '', '1013940', 1, '1'),
(129, 1, '0704714500', 'Maldonado Reyes Cristopher Janpierre', '', '1014491', 1, '1'),
(130, 1, '1758900078', 'Dicenso Medina Naldo Jose', '', '1014720', 1, '1'),
(131, 1, '1726046350', 'Freire Conrado Anthony Bryan', '', '1015083', 1, '1'),
(132, 1, '1751399583', 'Beltran Brito Karen Pamela', '', '1015114', 1, '1'),
(133, 1, '1722641022', 'Martinez Ortega Jorge Washington', '', '1015184', 1, '1'),
(134, 1, '0914809785', 'Teran Garcia Jose Bolivar', '', '1015632', 1, '1'),
(135, 1, '0704650274', 'Curipoma Castro Williams Fernando', '', '1015745', 1, '1'),
(136, 1, '1717194052', 'Baus Logroño Andres Santiago', '', '1015770', 1, '1'),
(137, 1, '1723781074', 'Ango Yanacallo Johny Patricio', '', '1016235', 1, '1'),
(138, 1, '1713144572', 'Salvador Rodriguez Jorge Ignacio', '', '1016577', 1, '1'),
(139, 1, '1716176209', 'Arellano Salazar Karen Samantha', '', '1016588', 1, '1'),
(140, 1, '1717638074', 'Rivera Gomez Denisse Andrea', '', '1016644', 1, '1'),
(141, 1, '1717737629', 'Lara Torres Matilde Pamela', '', '1016723', 1, '1'),
(142, 1, '1721839593', 'Loor Vergara Mayra Indira', '', '1016918', 1, '1'),
(143, 1, '1003471164', 'Morales Taya Blanca Johselyn', '', '1017028', 1, '1'),
(144, 1, '1713068060', 'Chauvin Ojeda Raul Alejandro', '', '1017072', 1, '1'),
(145, 1, '1719888305', 'Caisapanta Larrea Amelia Veronica', '', '1017301', 1, '1'),
(146, 1, '1721819629', 'Paez Martinez Lorena Monserratte', '', '1017352', 1, '1'),
(147, 1, '1715640171', 'Fabara Salazar Santiago Eugenio', '', '1017382', 1, '1'),
(148, 1, '0503374803', 'Pacheco Gavilanez Maria Belen', '', '1017407', 1, '1'),
(149, 1, '1725561045', 'Martinez Cortez Jessica Dayana', '', '1017586', 1, '1'),
(150, 1, '1803028396', 'Barriga Torres Eider Nicole', '', '1017764', 1, '1'),
(151, 1, '1716438328', 'Zurita Ponce Jessica Paola', '', '1018455', 1, '1'),
(152, 1, '1721716445', 'Valdivieso Carrion Diana Alexandra', '', '1018901', 1, '1'),
(153, 1, '1718301540', 'Gualli Ushiña Rene Fernando', '', '1018962', 1, '1'),
(154, 1, '0201825809', 'Gaibor Coloma Jose Alberto', '', '1019038', 1, '1'),
(155, 1, '0916350861', 'Almeida Rivas Francisco Salomon', '', '1019082', 1, '1'),
(156, 1, '1003549373', 'Vega Villegas Carla Thalia', '', '1019191', 1, '1'),
(157, 1, '1723450019', 'Zarria Roldan Brenda Lucia', '', '1019569', 1, '1'),
(158, 1, '1718160490', 'Duran Perez Ricardo Alberto', '', '1019782', 1, '1'),
(159, 1, '1717820136', 'Jurado Calderon Patricia Gabriela', '', '1019785', 1, '1'),
(160, 1, '0926048604', 'Arteaga Yela Kevin Efren', '', '1020185', 1, '1'),
(161, 1, '1717932576', 'Proaño Sotomayor Paulina Elizabeth', '', '1020306', 1, '1'),
(162, 1, '1757657489', 'Gonnet Suarez Bruno Mauricio', '', '1020386', 1, '1'),
(163, 1, '1002428314', 'Ayala Cangas Gustavo Xavier', '', '1021043', 1, '1'),
(164, 1, '0704068907', 'Estrella Amaya Jenny Maria', '', '1021183', 1, '1'),
(165, 1, '1706746979', 'Torres Rites Andres Dean', '', '1021252', 1, '1'),
(166, 1, '1718011578', 'Pinto Ramirez Andrea Patricia', '', '1021779', 1, '1'),
(167, 1, '1104260193', 'Ochoa Camacho Dario Alexander', '', '1022005', 1, '1'),
(168, 1, '1721752929', 'Grajales Cruz Carlos Andres', '', '1022031', 1, '1'),
(169, 1, '1715162911', 'Torres Moreno Gabriel Ubaldino', '', '1022436', 1, '1'),
(170, 1, '1720284403', 'Trujillo Utreras Natalia Carolina', '', '1022528', 1, '1'),
(171, 1, '1711664688', 'Hidalgo Alomoto Wendy Patricia', '', '1022731', 1, '1'),
(172, 1, '1715244875', 'Lara Herrera Luis Miguel', '', '1023052', 1, '1'),
(173, 1, '1716289341', 'Tobar Valdivieso Francisco Jose', '', '1023236', 1, '1'),
(174, 1, '1716603822', 'Cordero Santamaria Raul Francisco', '', '1023302', 1, '1'),
(175, 1, '1713817847', 'Sevillano Carrera Dario Oswaldo', '', '1023362', 1, '1'),
(176, 1, '0926583584', 'Vera Florencia Diana Paola', '', '1023367', 1, '1'),
(177, 1, '1104972706', 'Araujo Morocho Maria Jose', '', '1023370', 1, '1'),
(178, 1, '0603350885', 'Camacho Gaibor Fabian Mauricio', '', '1023374', 1, '1'),
(179, 1, '1756372973', 'Esqueda De Calcaño Jeluz Urania del Valle', '', '1023695', 1, '1'),
(180, 1, '1717921298', 'Raza Raza Ricardo David', '', '1023723', 1, '1'),
(181, 1, '1722440532', 'Navas Mesias Maria Jose', '', '1023762', 1, '1'),
(182, 1, '1725405938', 'Tutillo Celi Sara Andrea', '', '1023879', 1, '1'),
(183, 1, '1714722335', 'Romero Almeida Esteban Oswaldo', '', '1024233', 1, '1'),
(184, 1, '1716814197', 'Campaña Mejia Mario Fernando', '', '1024246', 1, '1'),
(185, 1, '1718949413', 'Montero Torres Mauricio Andres', '', '1024514', 1, '1'),
(186, 1, '0925495491', 'Ponce Orellana Andres Fernando', '', '1024709', 1, '1'),
(187, 1, '0201932159', 'Guerrero Sanchez Charly Efren', '', '1024780', 1, '1'),
(188, 1, '1757754856', 'Saavedra Guevara Hugo Ricardo', '', '1025186', 1, '1'),
(189, 1, '1714262977', 'Burgos Portilla Marian Cristhina', '', '1025187', 1, '1'),
(190, 1, '0926384967', 'Rodriguez Rodriguez David Leonardo', '', '1025502', 1, '1'),
(191, 1, '1719565523', 'Rivadeneira Toro Sebastian Andres', '', '1025605', 1, '1'),
(192, 1, '1759789702', 'Benatuil Valls Luis Alberto', '', '1025700', 1, '1'),
(193, 1, '1712948791', 'Veloz Moya Danilo Jose', '', '1025756', 1, '1'),
(194, 1, '1716139561', 'Matiz Moya Natalia Carolina', '', '1025764', 1, '1'),
(195, 1, '1717527129', 'Medina Teran Carlos Andres', '', '1025816', 1, '1'),
(196, 1, '1719112706', 'Gallegos Correa Carlos Leonardo', '', '1025820', 1, '1'),
(197, 1, '1725353856', 'Sanchez Rosero Monica Fernanda', '', '1025833', 1, '1'),
(198, 1, '1720001492', 'Molina Ramos Luis Steve', '', '1025873', 1, '1'),
(199, 1, '1720039526', 'Hidalgo Vilaña Susana Lizette', '', '1025910', 1, '1'),
(200, 1, '1757285018', 'Hernandez Mudarra Marlon Jose', '', '1025964', 1, '1'),
(201, 1, '1717632564', 'Ibarra Chiriboga Eduardo Esteban', '', '1025969', 1, '1'),
(202, 1, '1714721204', 'Valarezo Varela Christian David', '', '1025986', 1, '1'),
(203, 1, '0803021880', 'Ruales Estupiñan Melani Stefania', '', '1026205', 1, '1'),
(204, 1, '1715828107', 'Ordoñez Niño Andrea', '', '1026303', 1, '1'),
(205, 1, '1003317524', 'Jarrin Suarez Andrea Gabriela', '', '1026320', 1, '1'),
(206, 1, '1713173415', 'Gualle Calahorrano Diego Xavier', '', '1026522', 1, '1'),
(207, 1, '0302432364', 'Aguilar Gallo Jhon Henrry', '', '1026953', 1, '1'),
(208, 1, '1003060256', 'Arguello Negrete Abel Antonio', '', '1027017', 1, '1'),
(209, 1, '1716485626', 'Fajardo Troya Andres Esteban', '', '1027044', 1, '1'),
(210, 1, '0931014161', 'Chavez Aguilar Michelle Anabel', '', '1027118', 1, '1'),
(211, 1, '1717487399', 'Sosa Gomez Andrea Carolina', '', '1027237', 1, '1'),
(212, 1, '0908897465', 'Dirani De la Torre Franco Humberto', '', '1027333', 1, '1'),
(213, 1, '1719470922', 'Lamiña Chanchay Oscar Andres', '', '1027771', 1, '1'),
(214, 1, '1725124919', 'Alvear Sandoval Pablo Andres', '', '1027970', 1, '1'),
(215, 1, '1718240771', 'Caluguillin Yascual Ivan Marcelo', '', '1028554', 1, '1'),
(216, 1, '1720276177', 'Rios Criollo Christian Manuel', '', '1028578', 1, '1'),
(217, 1, '1717653586', 'Arias Mera Luis Fernando', '', '1028579', 1, '1'),
(218, 1, '1714383898', 'Romero Chuquitarco Andres Daniel', '', '1028582', 1, '1'),
(219, 1, '1715232722', 'Carrasco Quelal Christian Hernan', '', '1028622', 1, '1'),
(220, 1, '0923974802', 'Gutierrez Gonzalez Jose Luis', '', '1028646', 1, '1'),
(221, 1, '1718686056', 'Cevallos Romero Paul Ernesto', '', '1028847', 1, '1'),
(222, 1, '1724370471', 'Rubio Jaramillo Pamela Nathali', '', '1028966', 1, '1'),
(223, 1, '0504310210', 'Segovia Gómez Michelle Estefania', '', '1029575', 1, '1'),
(224, 1, '1003150172', 'Suarez Vanegas Gabriela Sonia', '', '1029634', 1, '1'),
(225, 1, '0926388976', 'Caballero Zapata Wendy Narcisa', '', '1029637', 1, '1'),
(226, 1, '0930800156', 'Maldonado Rodriguez Alex Xavier', '', '1029638', 1, '1'),
(227, 1, '1721096384', 'Garzon Muñoz Stefany Carolina', '', '1029711', 1, '1'),
(228, 1, '1713882114', 'Chango Teran German Francisco', '', '1029790', 1, '1'),
(229, 1, '1715218200', 'Jacome Sanchez Alex Paul', '', '1029809', 1, '1'),
(230, 1, '0104565866', 'Rubio Jimenez Juan Diego', '', '1029887', 1, '1'),
(231, 1, '1723341085', 'Garcia Sacan Ricardo David', '', '1030911', 1, '1'),
(232, 1, '1400593511', 'Pasquel Troya Jessica Viviana', '', '1031823', 1, '1'),
(233, 1, '1719155754', 'Chicaiza Garcia Giovanny Patricio', '', '1032116', 1, '1'),
(234, 1, '1712201381', 'Larreta Cisneros Maria Veronica', '', '1032478', 1, '1'),
(235, 1, '0930580519', 'Salinas Monroy Annie Katherine', '', '1034182', 1, '1'),
(236, 1, '0919188748', 'Gomez Cevallos Gabriel Ivan', '', '1034626', 1, '1'),
(237, 1, '1002587879', 'Perez Espinosa Nelly Rocio', '', '1035724', 1, '1'),
(238, 1, '1716217748', 'Hernandez Padilla Jose Miguel', '', '1036285', 1, '1'),
(239, 1, '1721644555', 'Erraes Jumbo Alex Geovanny', '', '1036598', 1, '1'),
(240, 1, '1714042544', 'Lopez Brito Cecilia Cristina', '', '1036936', 1, '1'),
(241, 1, '1721882163', 'Frutos Romero Maritza Andrea', '', '1037033', 1, '1'),
(242, 1, '1717732273', 'Endara Marin Luis Fernando', '', '1037687', 1, '1'),
(243, 1, '0105074827', 'Buestán Ramirez Christian Santiago', '', '1037881', 1, '1'),
(244, 1, '0926015892', 'Guerrero Criollo Jennifer Tatiana', '', '1038141', 1, '1'),
(245, 1, '0922320171', 'Sanchez Saltos Andres Daniel', '', '1038154', 1, '1'),
(246, 1, '0912382512', 'Tamayo Robles Shirley Zulay', '', '1038300', 1, '1'),
(247, 1, '1757957822', 'Mendez Lopez Karen Coromoto', '', '1038458', 1, '1'),
(248, 1, '1724576598', 'Cabrera Yepez Juan Gabriel', '', '1038575', 1, '1'),
(249, 1, '0401095872', 'Vasquez Aldas Fernando Guillermo', '', '1038585', 1, '1'),
(250, 1, '1758977183', 'Delgado Del Valle Edgardo Luis', '', '1038641', 1, '1'),
(251, 1, '1310775919', 'Olmedo Zambrano Javier Daniel', '', '1038703', 1, '1'),
(252, 1, '1724473887', 'Barba Ochoa David Fernando', '', '1038780', 1, '1'),
(253, 1, '1720443934', 'Ortiz Guachamin Byron Andres', '', '1038782', 1, '1'),
(254, 1, '1723567911', 'Estrella Tufiño Caterine Fernanda', '', '1038787', 1, '1'),
(255, 1, '0941570012', 'León Tirado Alex Remigio', '', '1038958', 1, '1'),
(256, 1, '0941459265', 'Proaño Guevara Allison Adriana', '', '1039014', 1, '1'),
(257, 1, '1003231519', 'Reyes Guzmán José Gabriel', '', '1039210', 1, '1'),
(258, 1, '0102242781', 'Segarra Vicuña Sonia Viviana', '', '1039509', 1, '1'),
(259, 1, '1716820095', 'Cevallos Atiencia Dario Ricardo', '', '1039638', 1, '1'),
(260, 1, '1719250969', 'Gordillo Chasipanta Lucia Catalina', '', '1040191', 1, '1'),
(261, 1, '1720698867', 'Revelo Paz Estalin Alberto', '', '1040855', 1, '1'),
(262, 1, '1311851933', 'Delgado Bermello Rolando Gregorio', '', '1041121', 1, '1'),
(263, 1, '1720876505', 'Reinoso Almeida Paul Alejandro', '', '1042908', 1, '1'),
(264, 1, '1719091660', 'Alvarez Sangines Edison Paul', '', '1042977', 1, '1'),
(265, 1, '1312819830', 'Cedeño Veliz Katherine Elena', '', '1043048', 1, '1'),
(266, 1, '1312494840', 'Govea Moreira Maria Lisseth', '', '1043050', 1, '1'),
(267, 1, '0931541239', 'Becerra Lucas Jose Alberto', '', '1043051', 1, '1'),
(268, 1, '1312852500', 'Cedeño Tumbaco Gema Beatriz', '', '1043052', 1, '1'),
(269, 1, '1311517096', 'Galarza Fernandez Leonardo Vicente', '', '1043053', 1, '1'),
(270, 1, '0703932624', 'Aguilar Cabrera Edison Jacinto', '', '1043269', 1, '1'),
(271, 1, '0921684130', 'Villalobos Cruz Francisco Antonio', '', '1044048', 1, '1'),
(272, 1, '1720675717', 'Sangoquiza Caiza Luis Antonio', '', '1044085', 1, '1'),
(273, 1, '1804415378', 'Ortiz Sánchez Roberto Vinicio', '', '1044087', 1, '1'),
(274, 1, '1716492200', 'Espinel Black Francisco David', '', '1044668', 1, '1'),
(275, 1, '0602771982', 'Velastegui Meneses Juan Patricio', '', '1046223', 1, '1'),
(276, 1, '1727361543', 'De La Vega Navarrete Josselyn Paola', '', '1046614', 1, '1'),
(277, 1, '1707019905', 'Parreño Pincay Luis Alfredo', '', '1049121', 1, '1'),
(278, 1, '0503957060', 'Sampedro Velez Jaime Gabriel', '', '1049159', 1, '1'),
(279, 1, '1722705090', 'Arévalo Celi Erika Estefanía', '', '1049263', 1, '1'),
(280, 1, '1716796923', 'Vallejo Herrera Oscar Gabriel', '', '1049355', 1, '1'),
(281, 1, '1725291015', 'Villacis Hidalgo Kevin Abel', '', '1049448', 1, '1'),
(282, 1, '0401739776', 'Carlosama Yépez Wendy Maleny', '', '1049544', 1, '1'),
(283, 1, '1758731630', 'Gómez Caballero Miguel Alejandro', '', '1049596', 1, '1'),
(284, 1, '0922160155', 'Naranjo Saona Francisco Jose', '', '1050219', 1, '1'),
(285, 1, '0918268210', 'Dominguez Cruz Manuel Orlando', '', '1050289', 1, '1'),
(286, 1, '1717946899', 'Travez Nieto David Ramiro', '', '1050479', 1, '1'),
(287, 1, '1723408702', 'Paredes Morales Carla Doménica', '', '1050551', 1, '1'),
(288, 1, '1722463294', 'Almeida Sánchez Sulay Stefania', '', '1051164', 1, '1'),
(289, 1, '1713408985', 'Martinez Velastegui Jason Alexis', '', '1051329', 1, '1'),
(290, 1, '1716122005', 'Rodriguez Vinueza Jose Luis', '', '1051590', 1, '1'),
(291, 1, '0926278169', 'Machado Cevallos Katherine Vanessa', '', '1051592', 1, '1'),
(292, 1, '1717930893', 'Mejía Mesías César Augusto', '', '1052009', 1, '1'),
(293, 1, '1724053903', 'Guerrero Valencia Carolina Estefanía', '', '1052010', 1, '1'),
(294, 1, '1750803585', 'Guerrero Ayala Leidy Milena', '', '1052079', 1, '1'),
(295, 1, '1715895288', 'Santorum Nájera Carla Jaione', '', '1052238', 1, '1'),
(296, 1, '1722315635', 'González Romero Saida Pamela', '', '1052307', 1, '1'),
(297, 1, '0927804088', 'Nuñez Del Arco Fajardo Dalia', '', '1052442', 1, '1'),
(298, 1, '1722862404', 'Estrella Bucheli Ana Isabel', '', '1052471', 1, '1'),
(299, 1, '1720072766', 'Guerra Pabon Diana Estefania', '', '1052590', 1, '1'),
(300, 1, '1715061741', 'Quelal Zumarraga Josue Israel', '', '1053207', 1, '1'),
(301, 1, '1723294086', 'Jara Solórzano Ramiro Leonardo', '', '1053234', 1, '1'),
(302, 1, '1723522932', 'Espinoza Arévalo Eduardo Sebastian', '', '1053243', 1, '1'),
(303, 1, '1718227604', 'Molina Colino Danielly', '', '1053521', 1, '1'),
(304, 1, '1717669731', 'Quilumba Siavichay Daysi Elizabeth', '', '1053554', 1, '1'),
(305, 1, '0104754445', 'López Jaramillo Andrés Salvatore', '', '1053709', 1, '1'),
(306, 1, '1714253828', 'Mendoza Osorio Edison Giovanny', '', '1053710', 1, '1'),
(307, 1, '0103280590', 'Méndez Carpio Adriana Fabiola', '', '1053800', 1, '1'),
(308, 1, '1804546297', 'Jácome Aguiño Joao Sebastián', '', '1054294', 1, '1'),
(309, 1, '1715065254', 'Verdezoto Díaz Ana Valeria', '', '1054662', 1, '1'),
(310, 1, '0926037375', 'Carrera Lescano Ibsen Julissa', '', '1054897', 1, '1'),
(311, 1, '0401144639', 'Usiña Chacón Patricio Rodolfo', '', '1054973', 1, '1'),
(312, 1, '1715061089', 'Aguirre Lozano Claudio Vinicio', '', '1055327', 1, '1'),
(313, 1, '1724627268', 'Espín Benalcázar Geomara Stefanía', '', '1055389', 1, '1'),
(314, 1, '1721747788', 'Quintana Mencias Jefferson André', '', '1055419', 1, '1'),
(315, 1, '1714833561', 'Reinoso Cisneros Pablo Andrés', '', '1055766', 1, '1'),
(316, 1, '1717092819', 'Pérez Silva Hugo Paul', '', '1055794', 1, '1'),
(317, 1, '0927744730', 'Baquerizo Ortiz María de los Ángeles', '', '1055882', 1, '1'),
(318, 1, '1723481493', 'Soria Guerrero Willian Xavier', '', '1056332', 1, '1'),
(319, 1, '1314026632', 'Delgado Mero Ramon Rogelio', '', '1056354', 1, '1'),
(320, 1, '1719925917', 'Velasco Castañeda Alejandro', '', '1056466', 1, '1'),
(321, 1, '0923270631', 'Vega Alderete Styven Antonio', '', '1056675', 1, '1'),
(322, 1, '0928904788', 'Loor Pilay Diana Carolina', '', '1056688', 1, '1'),
(323, 1, '1718436270', 'Viñanzaca Timana Diana Natalia', '', '1056766', 1, '1'),
(324, 1, '0302445846', 'Campos Delgado Francisco Carlos', '', '1056799', 1, '1'),
(325, 1, '1720211760', 'Simbaña Paillacho Danilo Javier', '', '1056813', 1, '1'),
(326, 1, '0950937367', 'Benites Barco Paula Elizabeth', '', '1056814', 1, '1'),
(327, 1, '1717422909', 'Martínez Calvopiña Jorge Luis', '', '1056877', 1, '1'),
(328, 1, '1004481931', 'Rea Aguilar Iván Alexander', '', '1057164', 1, '1'),
(329, 1, '1105025215', 'Navas Poma Maria Soledad', '', '1057166', 1, '1'),
(330, 1, '1726651944', 'Vasconez Mejía Diego Sebastián', '', '1057369', 1, '1'),
(331, 1, '1723253330', 'Reinoso Sulca Katherine Aracely', '', '1057915', 1, '1'),
(332, 1, '1758028540', 'Martinez Montes David Fernando', '', '1057999', 1, '1'),
(333, 1, '1723041172', 'Tipán Chulde Cristian Marcelo', '', '1058041', 1, '1'),
(334, 1, '1721406732', 'Cabrera Quinteros Byron Fernando', '', '1058051', 1, '1'),
(335, 1, '1725694788', 'Loachamin Herrera Mariela Lucía', '', '1058055', 1, '1'),
(336, 1, '1720125416', 'Rodriguez Sabando Karen Jobana', '', '1058866', 1, '1'),
(337, 1, '0925254864', 'Gordillo López Rosa Catherine', '', '1059129', 1, '1'),
(338, 1, '1750378612', 'Rosero Guerrón Walter Sebastián', '', '1059192', 1, '1'),
(339, 1, '0927653212', 'Martinez Pilay Larry Alexander', '', '1059431', 1, '1'),
(340, 1, '1719670141', 'Calvache Peralvo Johanna Lizeth', '', '1059566', 1, '1'),
(341, 1, '1754315198', 'Arboleda Seis Betty Morella', '', '1059577', 1, '1'),
(342, 1, '1722453253', 'Buendia Mora Leslye Estefania', '', '1059621', 1, '1'),
(343, 1, '1727587279', 'Sarauz Escobar Mateo Andrés', '', '1060140', 1, '1'),
(344, 1, '1715816854', 'Naranjo Estrella Andrés Marcelo', '', '1060150', 1, '1'),
(345, 1, '1206331314', 'Mieles Cedeño Cristhian Argenis', '', '1060239', 1, '1'),
(346, 1, '0916368020', 'Cardenas Sánchez Adriana Elizabeth', '', '1060260', 1, '1'),
(347, 1, '0105710255', 'Martínez Zhañay Ana Belén', '', '1060273', 1, '1'),
(348, 1, '1756224570', 'Rodríguez Moreno Emilio José', '', '1060431', 1, '1'),
(349, 1, '0604694224', 'Hidalgo Allauca Tania Lizbeth', '', '1060464', 1, '1'),
(350, 1, '1719736967', 'Lima Guamaní Francisco Javier', '', '1060466', 1, '1'),
(351, 1, '1721100764', 'Recuenco Flores Elisa Verónica', '', '1060487', 1, '1'),
(352, 1, '1724750979', 'Freire Lasso July Lizbeth', '', '1060497', 1, '1'),
(353, 1, '1751246040', 'Rea Flores Diana Aracely', '', '1060498', 1, '1'),
(354, 1, '1803013356', 'LLerena Barona Rolan Wilfrido', '', '1060501', 1, '1'),
(355, 1, '1723510408', 'Purcachi Villamarín Francis Johanna', '', '1060536', 1, '1'),
(356, 1, '1723228662', 'Noboa Egas Juan Camilo', '', '1060537', 1, '1'),
(357, 1, '0401074091', 'Perez Martinez Dayane Cydalia', '', '1061255', 1, '1'),
(358, 1, '0102241361', 'Campos Velasco Jorge Eduardo', '', '1061271', 1, '1'),
(359, 1, '0201958337', 'Salazar Ramirez Diego Andres', '', '1061565', 1, '1'),
(360, 1, '1724867120', 'Betancourt Teran Elizabeth Carolina', '', '1061983', 1, '1'),
(361, 1, '0920014040', 'Illingworth Arias Ernesto José', '', '1062243', 1, '1'),
(362, 1, '1720403185', 'Vargas Martinez Madelyn Mishell', '', '1062378', 1, '1'),
(363, 1, '1719576397', 'Arcos Dávila Maria Leonor', '', '1063559', 1, '1'),
(364, 1, '0103245601', 'Nieto Misle Jorge Iván', '', '1063798', 1, '1'),
(365, 1, '0922561956', 'Pico Caicedo Gladys Carolina', '', '1063814', 1, '1'),
(366, 1, '1720217072', 'Nicolalde Maldonado Jacqueline Natalia', '', '1063859', 1, '1'),
(367, 1, '0925328551', 'Guillen Franco Eduardo Danilo', '', '1063863', 1, '1'),
(368, 1, '0922502919', 'Mallarino Sánchez Jean Carlo', '', '1063884', 1, '1'),
(369, 1, '0930350764', 'Castro Mora Vanessa Mariela', '', '1063886', 1, '1'),
(370, 1, '1716175888', 'Amores Heredia Andrés Esteban', '', '1063889', 1, '1'),
(371, 1, '0926416199', 'Cabrera Cuzco Jorge Emilio', '', '1063919', 1, '1'),
(372, 1, '1724676927', 'Lechón Andrango Brayan Alexis', '', '1063955', 1, '1'),
(373, 1, '1723306096', 'Viscarra Flores Jhoselin Jacqueline', '', '1063958', 1, '1'),
(374, 1, '1003291349', 'Lalama Gomez Bernarda María', '', '1063968', 1, '1'),
(375, 1, '1724533490', 'Cifuentes Silva Tania Fernanda', '', '1064046', 1, '1'),
(376, 1, '1751692342', 'Villalba Mancero Sebastián Alexander', '', '1064169', 1, '1'),
(377, 1, '1724587744', 'Cadena Baldeon Teresa Alexandra', '', '1064177', 1, '1'),
(378, 1, '0704253996', 'Aguilar Aguilar Byron Fabricio', '', '1064182', 1, '1'),
(379, 1, '0927750661', 'Calderón Carrión Liliana Del Cisne', '', '1064187', 1, '1'),
(380, 1, '1715739312', 'Salguero Trujillo Inty Josue', '', '1064222', 1, '1'),
(381, 1, '1105136814', 'Banegas Ochoa Daniela Fernanda', '', '1064233', 1, '1'),
(382, 1, '1712777349', 'Reinoso Cajamarca Jaime René', '', '1064456', 1, '1'),
(383, 1, '0951960475', 'Arias Muentes Bryan Anthony', '', '1064593', 1, '1'),
(384, 1, '0962064077', 'Barreto Gil Oriana Carolina', '', '1064598', 1, '1'),
(385, 1, '1712629490', 'Torres Bohórquez Manuel Alejandro', '', '1064609', 1, '1'),
(386, 1, '1716561392', 'Jaramillo Páez Kevin Vinicio', '', '1065108', 1, '1'),
(387, 1, '1721885604', 'Almeida Delgado Lorena Alexandra', '', '1065170', 1, '1'),
(388, 1, '1718212499', 'Freire Rivera Kevin Fernando', '', '1065266', 1, '1'),
(389, 1, '0962124517', 'Espinoza Mendez Gabriel Alexander', '', '1065288', 1, '1'),
(390, 1, '0926341744', 'Zurita Muñoz Enrique Javier', '', '1065316', 1, '1'),
(391, 1, '1711641421', 'Rodriguez Rivadeneira Natalia Yesenia', '', '1065378', 1, '1'),
(392, 1, '0930143631', 'Cabeza Chacon Ruben Ernesto', '', '1065379', 1, '1'),
(393, 1, '0803063387', 'Lalama Ramírez Joselyn Lissette', '', '1065502', 1, '1'),
(394, 1, '1713927331', 'Bastidas Flores Alexis David', '', '1065505', 1, '1'),
(395, 1, '1721323655', 'Quintana Paredes Eloísa Andreina', '', '1065511', 1, '1'),
(396, 1, '1712351269', 'Mantilla Medina Mario Eduardo', '', '1065545', 1, '1'),
(397, 1, '1720221546', 'Cumbicos Chuquimarca Marcia Victoria', '', '1065607', 1, '1'),
(398, 1, '1714823794', 'Pimentel LLerena Adriana Paola', '', '1065634', 1, '1'),
(399, 1, '0924416027', 'Cortaza Carpio Jorge Gregorio', '', '1066114', 1, '1'),
(400, 1, '1722042940', 'Jaramillo Espinosa Gustavo Giovanny', '', '1066246', 1, '1'),
(401, 1, '1727023770', 'Corella Vasco Samantha Melanie', '', '1066476', 1, '1'),
(402, 1, '1758284853', 'Hamana Falcón Jesús Manuel', '', '1066849', 1, '1'),
(403, 1, '0603463506', 'Cobos Maldonado Marllory Corina', '', '1067020', 1, '1'),
(404, 1, '1718175670', 'Mora Villacís María Gabriela', '', '1067136', 1, '1'),
(405, 1, '0601988868', 'Gallegos Rivera Paul Marcelo', '', '1067363', 1, '1'),
(406, 1, '1713079190', 'Ayala Martínez Jorge Alfredo', '', '1067828', 1, '1'),
(407, 1, '1719271791', 'Cueva Changoluisa Cristian Orlando', '', '1067874', 1, '1'),
(408, 1, '1003561782', 'Obando Acosta Bryan Omar', '', '1068024', 1, '1'),
(409, 1, '1724803174', 'Obando Alarcón Gloria Viviana', '', '1068055', 1, '1'),
(410, 1, '1761096518', 'Carrasco Nuñez Francisco Jesús', '', '1068170', 1, '1'),
(411, 1, '1105162471', 'Trujillo Torres Tatiana Ivannova', '', '1068180', 1, '1'),
(412, 1, '1712460631', 'Peñaherrera Espinosa Karina Vanessa', '', '1068264', 1, '1'),
(413, 1, '0603969874', 'Ortiz Jiménez Mayra Estefanía', '', '1068445', 1, '1'),
(414, 1, '1002223665', 'Ruiz Andrade Pablo Aníbal', '', '1068447', 1, '1'),
(415, 1, '1713339537', 'Ríos Carrillo Luis Fernando', '', '1068451', 1, '1'),
(416, 1, '0924112659', 'Sanaicela Cruz Luis Napoleón', '', '1068490', 1, '1'),
(417, 1, '1722069042', 'Valencia Ramirez Jhonatan Rafael', '', '1068680', 1, '1'),
(418, 1, '1720993185', 'Muñoz Puchi Erick Josue', '', '1068890', 1, '1'),
(419, 1, '0106541659', 'Pérez Jimbo Edisson Santiago', '', '1068892', 1, '1'),
(420, 1, '0104857446', 'Armijos Gómez Maria Fernanda', '', '1068923', 1, '1'),
(421, 1, '0603423377', 'Morales Castillo Paul Fernando', '', '1069102', 1, '1'),
(422, 1, '1712096039', 'Sánchez Robayo Jorge Omar', '', '1069283', 1, '1'),
(423, 1, '1312806530', 'Cedeño Arteaga Juan José', '', '1070128', 1, '1'),
(424, 1, '0104999875', 'Morales Calle Jorge Israel', '', '1070169', 1, '1'),
(425, 1, '0104881701', 'Arpi Majía Diego Marcelo', '', '1070250', 1, '1'),
(426, 1, '0921897195', 'García Davila María Fernanda', '', '1070711', 1, '1'),
(427, 1, '1104798424', 'Campoverde Muñoz María Nathaly', '', '1070897', 1, '1'),
(428, 1, '0923226062', 'Albán Morales Cristian Luis', '', '1070942', 1, '1'),
(429, 1, '0920105731', 'Trujillo Cucalón Daniela María', '', '1070968', 1, '1'),
(430, 1, '1718123084', 'Sosa Vaca Ronny Alejandro', '', '1071233', 1, '1'),
(431, 1, '1723724637', 'Cifuentes Carranza Diana Carolina', '', '1071446', 1, '1'),
(432, 1, '1726014242', 'Perez Ruales Francisco Dennis', '', '1071458', 1, '1'),
(433, 1, '1726864752', 'Lizano Arias Ana Gabriela', '', '1071507', 1, '1'),
(434, 1, '1717414740', 'Naranjo Codena María José', '', '1071565', 1, '1'),
(435, 1, '1313177659', 'Lara Ortiz Deicy Lisseth', '', '1071576', 1, '1'),
(436, 1, '1724693757', 'Toscano Lucero Lisbeth Carolina', '', '1071608', 1, '1'),
(437, 1, '1716533284', 'Granda Vinueza Paola Elizabeth', '', '1071611', 1, '1'),
(438, 1, '1758574105', 'Contreras León Yohanny Yuliet', '', '1072299', 1, '1'),
(439, 1, '1725638116', 'Falcon Solorzano Joselyn Sthefannie', '', '1072303', 1, '1'),
(440, 1, '1716900731', 'Dominguez Pacheco David Esteban', '', '1072305', 1, '1'),
(441, 1, '1720509072', 'Ríos Gómez José Benjamín', '', '1072309', 1, '1'),
(442, 1, '0105214506', 'Lucero Guerrero Alberto Salvador', '', '1072654', 1, '1'),
(443, 1, '1714641261', 'López Molina Evelyn Adriana', '', '1072686', 1, '1'),
(444, 1, '1719936708', 'Ruiz Pacheco Felipe Marcelo', '', '1072703', 1, '1'),
(445, 1, '1715363733', 'Vinueza López Wilma Cristina', '', '1072740', 1, '1'),
(446, 1, '1718720095', 'Benavides Muzo Karina Elizabeth', '', '1073023', 1, '1'),
(447, 1, '1722307467', 'Jácome Báez Erika Alexandra', '', '1073024', 1, '1'),
(448, 1, '1804624557', 'Caluña Tisalema Mauro Darío', '', '1073062', 1, '1'),
(449, 1, '1723431548', 'Rivadeneira Erazo Paola Adelaida', '', '1073065', 1, '1'),
(450, 1, '1717930307', 'Enriquez Jaramillo Fabián Esteban', '', '1073135', 1, '1'),
(451, 1, '1716682115', 'Contero Román Bolívar Fernando', '', '1073258', 1, '1'),
(452, 1, '0802563254', 'Lien Benítez Wanjing Solange', '', '1073466', 1, '1'),
(453, 1, '0401732839', 'Pullas Aguilar Esteban Andrés', '', '1073475', 1, '1'),
(454, 1, '1712998614', 'Ojeda Paz María Rosa', '', '1073655', 1, '1'),
(455, 1, '0103786901', 'Willches Aleman Juan Fernando', '', '1073659', 1, '1'),
(456, 1, '1721079950', 'Criollo Tupiza Luis Fernando', '', '1073665', 1, '1'),
(457, 1, '1316550357', 'Macias Zamora Melanie Yaneira', '', '1073666', 1, '1'),
(458, 1, '1804000162', 'Cando Chango Alex Roberto', '', '1073677', 1, '1'),
(459, 1, '1804529004', 'Jordán Álvarez Patricio Javier', '', '1073933', 1, '1'),
(460, 1, '1719596031', 'Jordan Zamora Kerwin Israel', '', '1073974', 1, '1'),
(461, 1, '1313783399', 'Palma Palma Julio Gabriel', '', '1073985', 1, '1'),
(462, 1, '1720245909', 'López Carrión Diana Carolina', '', '1074207', 1, '1'),
(463, 1, '0802589705', 'Villalobos García Karla Gabriela', '', '1074338', 1, '1'),
(464, 1, '1712414786', 'Lastra Cando Froilán Eduardo', '', '1074347', 1, '1'),
(465, 1, '1308895885', 'Zambrano De La Cruz María Fabiola', '', '1074422', 1, '1'),
(466, 1, '1104746092', 'Palacios Reyes María Gabriela', '', '1074423', 1, '1'),
(467, 1, '1711681237', 'Lamiña Lamiña Mauricio Fernando', '', '1074424', 1, '1'),
(468, 1, '1713639639', 'Amari Méndez Klever Antonio', '', '1074489', 1, '1'),
(469, 1, '1722054127', 'Recalde Carbo Allison Soraya', '', '1074975', 1, '1'),
(470, 1, '1714065545', 'Noboa Muñoz Edison Fernando', '', '1074991', 1, '1'),
(471, 1, '1717217523', 'Verduga Mejía Bexi Bernarda', '', '1074999', 1, '1'),
(472, 1, '0704508290', 'Cruz Ledesma Diana Carolina', '', '1075041', 1, '1'),
(473, 1, '1102910666', 'Jimenez Abad Diego Mauricio', '', '1075059', 1, '1'),
(474, 1, '1717642977', 'Palacios Egas Karla Katerine', '', '1075148', 1, '1'),
(475, 1, '1715852537', 'Tituaña Sosa Sebastián Salomón', '', '1075504', 1, '1'),
(476, 1, '1721122537', 'Bolanos Obando Pablo Cesar', '', '2704', 1, '1'),
(477, 1, '1308016508', 'Cedeno Cedeno Rina Verenice', '', '2707', 1, '1'),
(478, 1, '0918051947', 'Osorio Morales Victor Manuel', '', '2716', 1, '1'),
(479, 1, '0923389688', 'Aldas Romero Ginger Katherine', '', '2722', 1, '1'),
(480, 1, '0602932964', 'Flores Valle Diego Mauricio', '', '2725', 1, '1'),
(481, 1, '1712083805', 'Villacis Zambrano Jose Fernando', '', '2726', 1, '1'),
(482, 1, '1802409373', 'Villacreses Moreno Juan Pablo', '', '2747', 1, '1'),
(483, 1, '1710007095', 'Romero Correa Harry Daniel', '', '2759', 1, '1'),
(484, 1, '1714940937', 'De la Vega Maldonado Monica Ximena', '', '2787', 1, '1'),
(485, 1, '1713784666', 'Cordova Tinta Marcelo Patricio', '', '2791', 1, '1'),
(486, 1, '0910620343', 'Baquerizo Suraty Manuel Fernando', '', '2792', 1, '1'),
(487, 1, '1719406298', 'Vicente Camacho Alicia Maria', '', '2800', 1, '1'),
(488, 1, '1720165313', 'Acosta Fierro Alejandro Gibran', '', '2804', 1, '1'),
(489, 1, '0401113048', 'Ramos Fuertes Edgar Paul', '', '2828', 1, '1'),
(490, 1, '1804164554', 'Nunez Ruiz Rommel Israel', '', '2835', 1, '1'),
(491, 1, '1707373567', 'Bravo Sanchez Ivan Daniel', '', '2840', 1, '1'),
(492, 1, '1803746153', 'Basantes Villegas Francisco Alonso', '', '2843', 1, '1'),
(493, 1, '1711001873', 'Krovina Rueda Santiago', '', '2859', 1, '1'),
(494, 1, '1711685337', 'Jaramillo Albuja Ricardo David', '', '2867', 1, '1'),
(495, 1, '1719651323', 'Tenorio Munoz Juan Sebastian', '', '2868', 1, '1'),
(496, 1, '1709008039', 'Cahuasqui Vela Janina Alexandra', '', '2870', 1, '1'),
(497, 1, '1712442662', 'Granja Requelme Eduardo Reinaldo', '', '2871', 1, '1'),
(498, 1, '1717705444', 'Jacome Cali Teresa Lizeth', '', '2893', 1, '1'),
(499, 1, '1719022509', 'Carrasco Solano Geovanna Alexandra', '', '2894', 1, '1'),
(500, 1, '1715469381', 'Ramirez Chavez Claudia Isabel', '', '2899', 1, '1'),
(501, 1, '0924426588', 'Loor Perez Juan Jose', '', '2909', 1, '1'),
(502, 1, '1714630686', 'Cordovez Leon Ana Lucia', '', '2694', 1, '1'),
(503, 1, '0914774799', 'Luque Herrera Carlos Francisco', '', '2717', 1, '1'),
(504, 1, '1717090557', 'Castillo Pazmino Juan Francisco', '', '2724', 1, '1'),
(505, 1, '1002324133', 'Munoz Del Castillo Orlando Jose', '', '2740', 1, '1'),
(506, 1, '1714577416', 'Latorre Almeida David Andres', '', '2760', 1, '1'),
(507, 1, '1717055253', 'Pasquel Jara Andres Paul', '', '2761', 1, '1'),
(508, 1, '1719887117', 'Cordero Nasevilla Johanna Cristina', '', '2858', 1, '1'),
(509, 1, '0924827934', 'Garcia Acuna Liuva Tamara', '', '2904', 1, '1'),
(510, 1, '1714650700', 'Davila Montenegro Paola Margarita', '', '2911', 1, '1'),
(511, 1, '1715126684', 'Cartagena Hidalgo Eduardo Gustavo', '', '2912', 1, '1'),
(512, 1, '1715855753', 'Parra Encalada Mariuxi Elizabeth', '', '2298', 1, '1'),
(513, 1, '1714501408', 'Urquizo Sola Christian Fernando', '', '2302', 1, '1'),
(514, 1, '1803084753', 'Batioja Caicedo Jorge Fabian', '', '2304', 1, '1'),
(515, 1, '1200633012', 'Plaza Mora Miguel Arturo', '', '2321', 1, '1'),
(516, 1, '1716729536', 'Bautista Robalino Wilson Xavier', '', '2327', 1, '1'),
(517, 1, '1710845239', 'De la Cadena Camargo Andres Mateo', '', '2331', 1, '1'),
(518, 1, '1718313214', 'Gaibor Verdezoto Adriana Elizabeth', '', '2334', 1, '1'),
(519, 1, '1719634311', 'Moya Jimenez Mayra Alejandra', '', '2342', 1, '1'),
(520, 1, '1717209066', 'Narvaez Vera Rolando Javier', '', '2344', 1, '1'),
(521, 1, '1709395980', 'Orrego Brito Alvaro Enrique', '', '2345', 1, '1'),
(522, 1, '0603176249', 'Erazo Rios Edison Ruben', '', '2380', 1, '1'),
(523, 1, '1310902562', 'Moreira Ponce Cinthia Monserrate', '', '2381', 1, '1'),
(524, 1, '1711396695', 'Rios Chamorro Angel Roberto', '', '2394', 1, '1'),
(525, 1, '0927175968', 'Escalante Navarro Leticia', '', '2407', 1, '1'),
(526, 1, '1720232469', 'Cobo Martinez Cynthia Estefania', '', '2419', 1, '1'),
(527, 1, '1714370325', 'Mejia Navarrerte Hugo Roberto', '', '2420', 1, '1'),
(528, 1, '0401143573', 'Laguna Bustos Richard Alfredo', '', '2422', 1, '1'),
(529, 1, '1715417927', 'Ruiz Calderon Maria Fernanda', '', '2435', 1, '1'),
(530, 1, '1714764923', 'Espin Ceron Johanna Catalina', '', '2440', 1, '1'),
(531, 1, '0913164943', 'Quineche Villon Sussan Paula', '', '2474', 1, '1'),
(532, 1, '1717538506', 'Landeta Sandoval Carmen Alexandra', '', '2491', 1, '1'),
(533, 1, '1719138156', 'Vera Trujillo Daniel Alejandro', '', '2493', 1, '1'),
(534, 1, '1708589302', 'Aulestia Cevallos Jimmy Rene', '', '2502', 1, '1'),
(535, 1, '1716608094', 'Castillo Barreto Rodrigo Andres', '', '2518', 1, '1'),
(536, 1, '1716201544', 'Infante Tierra Juan Carlos', '', '2519', 1, '1'),
(537, 1, '1715188239', 'Llumiquinga Logacho Freddy Gonzalo', '', '2523', 1, '1'),
(538, 1, '0103544102', 'Jara Juarez Diego Xavier', '', '2535', 1, '1'),
(539, 1, '1714673538', 'Meneses Jativa Francisco Xavier', '', '2539', 1, '1'),
(540, 1, '1714045174', 'Benavides Luzcando Diana Gabriela', '', '2545', 1, '1'),
(541, 1, '1715480081', 'Carvajal Reinoso Maria Fernanda', '', '2547', 1, '1'),
(542, 1, '0922605829', 'Ramirez Penafiel Gennyfer Ivonne', '', '2550', 1, '1'),
(543, 1, '1716450158', 'Recalde Suarez Daniel Leonardo', '', '2561', 1, '1'),
(544, 1, '1754362901', 'Ederer  Leonardo Ariel', '', '2564', 1, '1'),
(545, 1, '0401133574', 'Burbano Yepez Karola Consuelo', '', '2572', 1, '1'),
(546, 1, '1716894066', 'Suarez Gonzalez Christian Giovanny', '', '2575', 1, '1'),
(547, 1, '0917854564', 'Cruz Granja Ronny Omar', '', '2579', 1, '1'),
(548, 1, '1711956571', 'Herrera Pazmino Silvio Paul', '', '2597', 1, '1'),
(549, 1, '0602991531', 'Silva Jara Santiago Alfonso', '', '2607', 1, '1'),
(550, 1, '1754159117', 'Suarez Napolitano Gerardo Martin', '', '2610', 1, '1'),
(551, 1, '1711374247', 'Lopez Quiroz Vinicio Javier', '', '2639', 1, '1'),
(552, 1, '0703738633', 'Ruilova Maldonado Valeria Emperatriz', '', '2641', 1, '1'),
(553, 1, '1803733508', 'Ruiz Galarza Paul Cesar', '', '2649', 1, '1'),
(554, 1, '1716974975', 'Santacruz Paz David Vladimir', '', '2669', 1, '1'),
(555, 1, '1308917812', 'Intriago Zambrano Yandri Daniel', '', '2670', 1, '1'),
(556, 1, '0502778525', 'Mino Verdesoto Jose Guillermo', '', '1899', 1, '1'),
(557, 1, '0919851899', 'Sanchez Chevez Erika Celeste', '', '1908', 1, '1'),
(558, 1, '0602898124', 'Guerra Marquez Hernan Santiago', '', '1923', 1, '1'),
(559, 1, '1710625433', 'Salazar Morales Roberto Alejandro', '', '1927', 1, '1'),
(560, 1, '1802994077', 'Gaibor Flor Maribel Odile', '', '1930', 1, '1'),
(561, 1, '1714065115', 'Garcia Ron Adriana Carolina', '', '1932', 1, '1'),
(562, 1, '1710532779', 'Freire Araujo Alex Armando', '', '1938', 1, '1'),
(563, 1, '1712788197', 'Salazar Espinoza Libia Vanessa', '', '1947', 1, '1'),
(564, 1, '0104268834', 'Escandon Cobos Juan Carlos', '', '1949', 1, '1'),
(565, 1, '1713005443', 'Espinosa Villarreal Mauro Gonzalo', '', '1950', 1, '1'),
(566, 1, '1714881198', 'Ascazubi Bohorquez Paola Cristina', '', '1953', 1, '1'),
(567, 1, '1714642376', 'Padilla Nájera Alfonso Giusseppe', '', '1957', 1, '1'),
(568, 1, '1712212818', 'Balanzategui Egas Anita Lucia', '', '1970', 1, '1'),
(569, 1, '1716841539', 'Moreano Padilla David Eduardo', '', '1972', 1, '1'),
(570, 1, '0602151532', 'Oleas Castelo Juan Carlos', '', '1983', 1, '1'),
(571, 1, '0502369283', 'Herrera Cárdenas Byron Xavier', '', '1990', 1, '1'),
(572, 1, '0501675938', 'Amores Gutiérrez Marlon Yesid', '', '1991', 1, '1'),
(573, 1, '1710904606', 'Lopez Tamayo Cristian Mauricio', '', '1992', 1, '1'),
(574, 1, '1716118995', 'Cabrera Fajardo Fernando Javier', '', '2000', 1, '1'),
(575, 1, '1202958623', 'Valverde Gonzalez Angel Enrique', '', '2004', 1, '1'),
(576, 1, '1711344380', 'Andrade Cedeno Henrry Guillemo', '', '2006', 1, '1'),
(577, 1, '1707314405', 'Yela Rivera Luis Gerardo', '', '2010', 1, '1'),
(578, 1, '1712610193', 'Camino Jaramillo Daniel Marcelo', '', '2014', 1, '1'),
(579, 1, '1706359237', 'Barsallo Montano Hernan Oswaldo', '', '2017', 1, '1'),
(580, 1, '1716060155', 'Caisapanta Falcon Mauricio Oswaldo', '', '2021', 1, '1'),
(581, 1, '1709253601', 'Castellanos Vega Jorge Fernando', '', '2035', 1, '1'),
(582, 1, '0602935975', 'Rivadeneira Núñez Carlos Patricio', '', '2036', 1, '1'),
(583, 1, '0703116079', 'Rivera Pesantes Galo Esteban', '', '2038', 1, '1'),
(584, 1, '1719326983', 'Guzmán Tapia Franklin Eduardo', '', '2040', 1, '1'),
(585, 1, '1600376337', 'Rodriguez Ulcuango Edison Geovanny', '', '2042', 1, '1'),
(586, 1, '0916437965', 'Espinoza Salas Daniel Fernando', '', '2046', 1, '1'),
(587, 1, '1709207953', 'Reyes Mora Carlos Ivan', '', '2056', 1, '1'),
(588, 1, '0201112653', 'Ribadeneira Sanchez Elvia Corina', '', '2059', 1, '1'),
(589, 1, '0401013933', 'Revelo Hernandez Veronica Elizabeth', '', '2063', 1, '1'),
(590, 1, '0916352503', 'Larrea Yanez Mauro Fernando', '', '2070', 1, '1'),
(591, 1, '1715000483', 'Espinel Espin Marcos Patricio', '', '2075', 1, '1'),
(592, 1, '1717315103', 'De la Torre Ontaneda Juan Carlos', '', '2086', 1, '1'),
(593, 1, '1716510571', 'Diaz Perez Maria Jose', '', '2087', 1, '1'),
(594, 1, '0919917096', 'Santistevan Uvilla Fanny Teresa', '', '2093', 1, '1'),
(595, 1, '0917559338', 'Suarez Rodriguez Fausto Ricardo', '', '2098', 1, '1'),
(596, 1, '0924764574', 'Zuniga Bustos Yanina Lissette', '', '2100', 1, '1'),
(597, 1, '1715031397', 'Morales Jimenez Yesena Veronica', '', '2115', 1, '1'),
(598, 1, '1715361588', 'Lascano Bonilla Mario Francisco', '', '2118', 1, '1'),
(599, 1, '0401401310', 'Cadena Vasconez Karina Fernanda', '', '2122', 1, '1'),
(600, 1, '0103091740', 'Mazza Mogrovejo Ivan', '', '2125', 1, '1'),
(601, 1, '0104435045', 'Zhindon Aguilera Elizabeth Lucia', '', '2127', 1, '1'),
(602, 1, '1712991379', 'Escobar Castelo Ricardo Paul', '', '2135', 1, '1'),
(603, 1, '1713125084', 'Estrella Cruz Victor Patricio', '', '2136', 1, '1'),
(604, 1, '1712649621', 'Fonseca Gordillo Francisco Javier', '', '2137', 1, '1'),
(605, 1, '1718044850', 'Ontaneda Verdezoto Geoconda Karina', '', '2146', 1, '1'),
(606, 1, '1714333158', 'Reyes Velastegui Lucy Alexandra', '', '2152', 1, '1'),
(607, 1, '1712491792', 'Sosa Alvarado Jaime Vinicio', '', '2154', 1, '1'),
(608, 1, '1716628803', 'Delgado Sifaz Nancy Mireya', '', '2163', 1, '1'),
(609, 1, '1711780583', 'Asqui Quillupangui Yesenia Amparo', '', '2167', 1, '1'),
(610, 1, '1712875481', 'Guzman Perugachi Karla Paulina', '', '2169', 1, '1'),
(611, 1, '1717990145', 'Vallejo Zambrano Vilma Rosario', '', '2174', 1, '1'),
(612, 1, '1716339153', 'Camacho Amores Christian Eduardo', '', '2176', 1, '1'),
(613, 1, '1713554291', 'Castillo Jaramillo Silvana de las Mercedes', '', '2178', 1, '1'),
(614, 1, '0502324171', 'Escobar Parra Ana Gabriela', '', '2186', 1, '1'),
(615, 1, '1712602992', 'Arias Jara Edison Enrique', '', '2192', 1, '1'),
(616, 1, '1709553851', 'Navarrete Mora Alex Santiago', '', '2196', 1, '1'),
(617, 1, '1712017787', 'Neira Cevallos Christian Augusto', '', '2211', 1, '1'),
(618, 1, '1708757016', 'Montufar Lalama Carlos Javier', '', '2212', 1, '1'),
(619, 1, '1715919351', 'Rivera Vega Geovanny Francisco', '', '2217', 1, '1'),
(620, 1, '1714854427', 'Espin Carrillo Raul Humberto', '', '2224', 1, '1'),
(621, 1, '1707103717', 'Serrano Cevallos Cristian', '', '2227', 1, '1'),
(622, 1, '1717528465', 'Nunez Suarez Gabriela Fernanda', '', '2231', 1, '1'),
(623, 1, '1712494309', 'Estevez Moreira Jose Luis', '', '2234', 1, '1'),
(624, 1, '1718126913', 'Rodriguez Reina Carla Gabriela', '', '2245', 1, '1'),
(625, 1, '1710370311', 'Arregui Arregui Juan Fernando', '', '2246', 1, '1'),
(626, 1, '1713039087', 'Chamorro Medina Ximena Del Carmen', '', '2251', 1, '1'),
(627, 1, '0703263053', 'Quezada Jara Johann Eduardo', '', '2271', 1, '1'),
(628, 1, '1713597787', 'Ronquillo Parra Luis Humberto', '', '2272', 1, '1'),
(629, 1, '1711402436', 'Diaz Hidalgo Jose Alfredo', '', '2284', 1, '1'),
(630, 1, '1002838694', 'Contreras Vasquez Ambar Estefania', '', '2289', 1, '1'),
(631, 1, '1718346131', 'Ordonez Reyna Vanessa Evelyn', '', '2295', 1, '1'),
(632, 1, '1704432648', 'Calderon Ledesma Diego Fernando', '', '1499', 1, '1'),
(633, 1, '1710108752', 'Almeida Salazar Carlos Gabriel', '', '1502', 1, '1'),
(634, 1, '1710895515', 'Romero Moreira Jorge Marcelo', '', '1506', 1, '1'),
(635, 1, '0101901601', 'Ordonez Castro Hernan Gustavo', '', '1508', 1, '1'),
(636, 1, '1710436591', 'Reinoso Cifuentes Andres Danilo', '', '1513', 1, '1'),
(637, 1, '1706550371', 'Guerra Duran Pablo Xavier', '', '1535', 1, '1'),
(638, 1, '1713699518', 'Ramirez Guerrero Susana Elizabeth', '', '1536', 1, '1'),
(639, 1, '1712618899', 'Viteri Proano Ivan Alexander', '', '1541', 1, '1'),
(640, 1, '0911295608', 'Lema Lopez Edgar Reinaldo', '', '1571', 1, '1'),
(641, 1, '1308250008', 'Andrade Vergara Kenya Viviana', '', '1572', 1, '1'),
(642, 1, '1711605988', 'Lopez Jimenez Mercedes Anita', '', '1573', 1, '1'),
(643, 1, '1719056358', 'Jaramillo Gonzalez Monica Del Pilar', '', '1575', 1, '1'),
(644, 1, '0801629767', 'Estupinan Jimenez Veronica Graciela', '', '1577', 1, '1'),
(645, 1, '1716553142', 'Herrera Maldonado Eduardo David', '', '1584', 1, '1'),
(646, 1, '1001999109', 'Cadena Narvaez Edmundo Javier', '', '1589', 1, '1'),
(647, 1, '1715309462', 'Jalil Albornoz Martha Leonor', '', '1598', 1, '1'),
(648, 1, '1714258777', 'Fierro Auz Andrea Karina', '', '1604', 1, '1');
INSERT INTO `clientes` (`id`, `empId`, `cedula`, `nombre`, `direccion`, `centro costos`, `consumos`, `estado`) VALUES
(649, 1, '1716131394', 'Acosta Lopez Gabriela Soledad', '', '1616', 1, '1'),
(650, 1, '1716397797', 'Villavicencio Landazuri Santiago', '', '1617', 1, '1'),
(651, 1, '1716419898', 'Viteri Arias Christian David', '', '1623', 1, '1'),
(652, 1, '1716156888', 'Túquerres Granja Maria Gabriela', '', '1629', 1, '1'),
(653, 1, '1712332855', 'Basantes Arguello Jose Ramiro', '', '1632', 1, '1'),
(654, 1, '0501587885', 'Mino Mino Ernesto Alejandro', '', '1637', 1, '1'),
(655, 1, '1711156594', 'Bedon Rodriguez Jairo Fabrisio', '', '1654', 1, '1'),
(656, 1, '0103334561', 'Tufino Peralta Cristina Paola', '', '1659', 1, '1'),
(657, 1, '1712964418', 'Guzman Garzon Martha Elizabeth', '', '1662', 1, '1'),
(658, 1, '1713151080', 'Llerena Guerrero Maria Dolores', '', '1665', 1, '1'),
(659, 1, '1713848776', 'Chuqui Chicaiza Washington Leonardo', '', '1670', 1, '1'),
(660, 1, '1711651503', 'Moreno Rivadeneria Christian Eduardo', '', '1676', 1, '1'),
(661, 1, '1001905932', 'Ortiz Recalde Robert Xavier', '', '1681', 1, '1'),
(662, 1, '1706461512', 'Angueta Ramirez Cristian Hernan', '', '1687', 1, '1'),
(663, 1, '1600346413', 'Guato Torres Jose Amable', '', '1689', 1, '1'),
(664, 1, '0102117009', 'Cordova Jerves Freddy Santiago', '', '1703', 1, '1'),
(665, 1, '0906602180', 'Ponce Díaz Henry Richard', '', '1704', 1, '1'),
(666, 1, '1001927316', 'Suarez Quinteros Wilson Vicente', '', '1707', 1, '1'),
(667, 1, '0102605359', 'Cobos Caceres Andrea Dayanara', '', '1714', 1, '1'),
(668, 1, '1716399439', 'Caicedo Mendez Karen Janneth', '', '1715', 1, '1'),
(669, 1, '1712444486', 'Galindo Hidalgo Wilson Javier', '', '1731', 1, '1'),
(670, 1, '1710885508', 'Gomez Ramirez Darwin Fabian', '', '1739', 1, '1'),
(671, 1, '1712204773', 'Maya Davila Carlos Fernando', '', '1745', 1, '1'),
(672, 1, '1707379358', 'Armijos LLerena William Francisco', '', '1746', 1, '1'),
(673, 1, '1704356896', 'Bastidas Coello Franz Viterbo', '', '1751', 1, '1'),
(674, 1, '1712633575', 'Rodriguez Avila Maria Fernanda', '', '1755', 1, '1'),
(675, 1, '0917236192', 'Diez Estelche Almudena', '', '1757', 1, '1'),
(676, 1, '1708235898', 'Reinoso Jacome William Fernando', '', '1762', 1, '1'),
(677, 1, '1714417050', 'Hinojosa Alvear Jaime Gustavo', '', '1766', 1, '1'),
(678, 1, '1714910104', 'Loaiza Lopez Juan Francisco', '', '1769', 1, '1'),
(679, 1, '1711604163', 'Pailiacho Achig Sandra Elizabeth', '', '1772', 1, '1'),
(680, 1, '0920518701', 'Zambrano Lara Luis Xavier', '', '1777', 1, '1'),
(681, 1, '1802407195', 'Llerena Llerena Henry Fernando', '', '1779', 1, '1'),
(682, 1, '1715576177', 'Vidal Espana Hugo Alejandro', '', '1787', 1, '1'),
(683, 1, '1712983731', 'Valladares Ponce Marco Antonio', '', '1811', 1, '1'),
(684, 1, '1715227599', 'Revelo Troya Elena Raquel', '', '1835', 1, '1'),
(685, 1, '1708283286', 'Zurita Manosalvas Karla Paola', '', '1841', 1, '1'),
(686, 1, '1710993070', 'Alban Mogollon Patricia Cristina', '', '1885', 1, '1'),
(687, 1, '1715859706', 'Herrera Arguello Xavier Fernando', '', '1891', 1, '1'),
(688, 1, '1714726088', 'Ramirez Egas Carla Alexandra', '', '1894', 1, '1'),
(689, 1, '0908647035', 'Marcet Alvarez Maria Lorena', '', '1109', 1, '1'),
(690, 1, '0916978950', 'Ugalde Villacres Luis Alfonso', '', '1118', 1, '1'),
(691, 1, '1705055687', 'Hernandez Villacis Teresa Guadalupe', '', '1120', 1, '1'),
(692, 1, '1712798907', 'Salazar Eldredge Maria Belen', '', '1144', 1, '1'),
(693, 1, '1304626524', 'Bravo Ferrin Maria Lorena', '', '1145', 1, '1'),
(694, 1, '1711009223', 'Amores Heredia Rafael German', '', '1174', 1, '1'),
(695, 1, '0916645815', 'Veloz Vaca Veronica Beatriz', '', '1179', 1, '1'),
(696, 1, '0914609045', 'Candel Pazmino Monica Andrea', '', '1189', 1, '1'),
(697, 1, '0501706774', 'Egas Velasco Blanca Isabel', '', '1197', 1, '1'),
(698, 1, '1709507022', 'Salazar Estevez Eddna Soraya', '', '1217', 1, '1'),
(699, 1, '0102184074', 'Coronel Salamea Diego Fernando', '', '1242', 1, '1'),
(700, 1, '0912473600', 'Gonzalez Cardenas Danilo Francisco', '', '1273', 1, '1'),
(701, 1, '0915093785', 'Chumo Delgado Luis Fernando', '', '1283', 1, '1'),
(702, 1, '0102000189', 'Vintimilla Cuesta Maria Jose', '', '1290', 1, '1'),
(703, 1, '1707878771', 'Fernandez Chamorro Maria Sol', '', '1330', 1, '1'),
(704, 1, '1712714268', 'Delgado Galarza Silvia Macarena', '', '1366', 1, '1'),
(705, 1, '0917302242', 'Flores Pastor Rafael Andres', '', '1391', 1, '1'),
(706, 1, '1712237112', 'Reinoso Moreno Diego Paul', '', '1447', 1, '1'),
(707, 1, '1722326392', 'Caballero Soria Jesus', '', '1479', 1, '1'),
(708, 1, '1710016229', 'Trevino Santamaria Edgar Oswaldo', '', '704', 1, '1'),
(709, 1, '1711067056', 'Cifuentes Moreno Mercedes Elisa', '', '768', 1, '1'),
(710, 1, '1705304671', 'Alban Bonastre Alonso Rodrigo', '', '769', 1, '1'),
(711, 1, '1802460392', 'Tamayo Clavijo Carlos Alberto', '', '830', 1, '1'),
(712, 1, '0602544330', 'Arteaga Paspuel Rolando Iskandar', '', '843', 1, '1'),
(713, 1, '0911582195', 'Corozo Madrid Baldomero Francisco', '', '861', 1, '1'),
(714, 1, '0914310727', 'Lopez Valero Alex Enrique', '', '862', 1, '1'),
(715, 1, '1705660718', 'Donoso Echanique Andres Francisco', '', '944', 1, '1'),
(716, 1, '1709332181', 'Sanchez Cartagena Patricio Javier', '', '1044', 1, '1'),
(717, 1, '0914314158', 'Onate Huayamabe Camilo Enrique', '', '1053', 1, '1'),
(718, 1, '1400410872', 'Leon Moncayo Mayra Virginia', '', '1078', 1, '1'),
(719, 1, '1708091721', 'Villacis Cardenas Veronica del Consuelo', '', '169', 1, '1'),
(720, 1, '1711850188', 'Yaguarcota Chanaluisa Marco Eduardo', '', '275', 1, '1'),
(721, 1, '1713041562', 'Herrera Jacome Guillermo Alberto', '', '288', 1, '1'),
(722, 1, '0911304699', 'Robelly Cabrera Tomas Vicente', '', '364', 1, '1'),
(723, 1, '1711499614', 'Leon Alvarez Mirka Lorena', '', '411', 1, '1'),
(724, 1, '0501486625', 'Albarracin Gomez Elena Patricia', '', '466', 1, '1'),
(725, 1, '1600280000', 'Cuzme Andrade Danny Jonathan', '', '472', 1, '1'),
(726, 1, '1708715857', 'Mantilla Herrera Marco Antonio', '', '474', 1, '1'),
(727, 1, '0909567315', 'Vargas Cuero Eduardo Alberto', '', '494', 1, '1'),
(728, 1, '1708525140', 'Flores Cardoso Juan Francisco', '', '499', 1, '1'),
(729, 1, '0916514110', 'Valencia Ugalde Mildred Paola', '', '538', 1, '1'),
(730, 1, '1709074700', 'Paz y Miño Vela Santiago Manuel', '', '556', 1, '1'),
(731, 1, '0914766217', 'Alvarado Mendoza Felix Alfredo', '', '583', 1, '1'),
(732, 1, '0501632467', 'Brazales Herrera Hugo Alfredo', '', '591', 1, '1'),
(733, 1, '0915465637', 'Poveda Zambrano Xavier Enrique', '', '602', 1, '1'),
(734, 1, '1310672835', 'Pulido Andrade Jimmy Tobias', '', '2091', 1, '1'),
(735, 1, '1309375127', 'Bowen Brito Karina Mercedes', '', '2314', 1, '1'),
(736, 1, '0918973264', 'Pincay Vera Heidee Nubia', '', '864', 1, '1'),
(737, 1, '0915532071', 'Camposano Figueroa Daniel Alejandro', '', '1907', 1, '1'),
(738, 1, '1803123577', 'Viteri Bustillos Maria Teresa', '', '2203', 1, '1'),
(739, 1, '1718416769', 'Sagnay Guapi David Efrain', '', '2918', 1, '1'),
(740, 1, '1803599032', 'Lopez Castro Johnny Santiago', '', '2922', 1, '1'),
(741, 1, '0921151692', 'Macancela Torres Jorge Alberto', '', '2937', 1, '1'),
(742, 1, '0917967754', 'Torres Gillade Hugo Ernesto', '', '2946', 1, '1'),
(743, 1, '1309747416', 'Granda Fajardo Carla Andrea', '', '2915', 1, '1'),
(744, 1, '1714046099', 'Lema Ordonez Ramiro Fabricio', '', '2962', 1, '1'),
(745, 1, '1721115820', 'Tupiza Villa Patricio', '', '2964', 1, '1'),
(746, 1, '0704656230', 'Borbor Precilla William Alberto', '', '2983', 1, '1'),
(747, 1, '0914743208', 'Negron Toscano Maria Elena', '', '2975', 1, '1'),
(748, 1, '0916542533', 'Vera Regalado Jaime Andres', '', '2977', 1, '1'),
(749, 1, '1103829576', 'Carrion Leon Geovanny Bolivar', '', '2997', 1, '1'),
(750, 1, '1717054769', 'Andagoya Coyago Henry Oswaldo', '', '2996', 1, '1'),
(751, 1, '1714000930', 'Castillo Changuan Carlos Gustavo', '', '177641', 1, '1'),
(752, 1, '1716021546', 'Quijia Quezada Miguel Angel', '', '177893', 1, '1'),
(753, 1, '1714152426', 'Albornoz Garces Mauricio Xavier', '', '178320', 1, '1'),
(754, 1, '1711723450', 'Perez Vega Hector Ramiro', '', '178324', 1, '1'),
(755, 1, '1312129602', 'Regalado Segovia Juan Wilthon', '', '179051', 1, '1'),
(756, 1, '1726464074', 'Turin Ortiz Carolina del Valle', '', '179879', 1, '1'),
(757, 1, '1716945868', 'Ponce Lara Victoria Leonor', '', '180205', 1, '1'),
(758, 1, '1718543588', 'Cevallos Venegas Daicy Alexandra', '', '180316', 1, '1'),
(759, 1, '1710485671', 'Erazo Fierro Sandra Iliana', '', '181304', 1, '1'),
(760, 1, '1721077178', 'Saá Nieto Karina Elizabeth', '', '181913', 1, '1'),
(761, 1, '1716283286', 'Saenz De la Torre Melvin Rodolfo', '', '182239', 1, '1'),
(762, 1, '1715214928', 'Flores Encalada Eliana Carolina', '', '182497', 1, '1'),
(763, 1, '0703907972', 'Gonzabay Aguirre Javier Andres', '', '183798', 1, '1'),
(764, 1, '1716305071', 'Vilela Cruz Lorena Alexandra', '', '184482', 1, '1'),
(765, 1, '0917973844', 'Pena Alvarez Daniel de Jesus', '', '184753', 1, '1'),
(766, 1, '1715467567', 'Torres Martinez Andres Paul', '', '185335', 1, '1'),
(767, 1, '0923169544', 'Ronquillo Chong qui Alex Javier', '', '185598', 1, '1'),
(768, 1, '1802130599', 'Molina Vasco Paul Sebastian', '', '186435', 1, '1'),
(769, 1, '1714287883', 'Ortiz Lopez Juan Carlos', '', '187390', 1, '1'),
(770, 1, '1716517220', 'Echeverria Calderon Francis Sharian', '', '187393', 1, '1'),
(771, 1, '1715814768', 'Robalino Arellano Damian Alfonso', '', '188650', 1, '1'),
(772, 1, '1716152721', 'Limaico Zurita Diego Armando', '', '188658', 1, '1'),
(773, 1, '0916551450', 'Torres Alvarado Emerson Fernando', '', '400022', 1, '1'),
(774, 1, '0923871438', 'Alava Mendoza Jeniffer Ernestina', '', '400026', 1, '1'),
(775, 1, '0912273851', 'Aviles Alvear Hugo Israel', '', '400028', 1, '1'),
(776, 1, '0926525585', 'Diaz Balladares Mariela Belen', '', '400033', 1, '1'),
(777, 1, '1717096794', 'Gangotena Gomezjurado Juan Esteban', '', '400040', 1, '1'),
(778, 1, '1709723942', 'Ordonez Marquez Renan Fernando', '', '400041', 1, '1'),
(779, 1, '1713108908', 'Vega Sierra Maria Belen', '', '400042', 1, '1'),
(780, 1, '1713937058', 'Carrera Hinnaoui Lorena Patricia', '', '400049', 1, '1'),
(781, 1, '1721136511', 'Mera Gonzalez Jannina Margarita', '', '400126', 1, '1'),
(782, 1, '1715617252', 'Guaman Punina Johanna Birmania', '', '400128', 1, '1'),
(783, 1, '1715000780', 'Navarrete Campaña Edison Patricio', '', '400134', 1, '1'),
(784, 1, '1715641146', 'Aguirre Alomia Jordi Josep', '', '400138', 1, '1'),
(785, 1, '0922511241', 'Mancheno Reyna Maria Gabriela', '', '400156', 1, '1'),
(786, 1, '1718348715', 'Yaguachi Jumbo Willian Giovanny', '', '400157', 1, '1'),
(787, 1, '1718178328', 'Fierro Jacome Daniela Viviana', '', '400160', 1, '1'),
(788, 1, '1721749677', 'Talavera Villamarin Diana Carolina', '', '400171', 1, '1'),
(789, 1, '0603043670', 'Guerra Alban Irene Iliana', '', '400195', 1, '1'),
(790, 1, '0102855368', 'Pozo Aguilar Santiago Patricio', '', '400198', 1, '1'),
(791, 1, '0923321863', 'Castillo Mora Gianella Ailin', '', '2805', 1, '1'),
(792, 1, '1716182207', 'Esparza Ballesteros Andrea Cristina', '', '2829', 1, '1'),
(793, 1, '0602653370', 'Moyota Maldonado Ruben Milton', '', '400228', 1, '1'),
(794, 1, '1718271941', 'German Carpio Gabriela Jacqueline', '', '400229', 1, '1'),
(795, 1, '1802292688', 'Siza Morales Leonardo Patricio', '', '400234', 1, '1'),
(796, 1, '1721199758', 'Chungandro Teran Victoria Carolina', '', '400241', 1, '1'),
(797, 1, '1717271553', 'Cedeño Zambrano Karla Katiuska', '', '400242', 1, '1'),
(798, 1, '1103325005', 'Mendoza Guarnizo Maria Cristina', '', '400249', 1, '1'),
(799, 1, '1716437825', 'Montero Villacres Diego Paul', '', '400283', 1, '1'),
(800, 1, '1718976051', 'Maleza Peñaherrera Jorge Alexander', '', '400301', 1, '1'),
(801, 1, '0103962114', 'Bravo Romero Bertha Cristina', '', '400303', 1, '1'),
(802, 1, '1716709439', 'Lopez Martinez Sergio Ricardo', '', '400307', 1, '1'),
(803, 1, '1719277806', 'Rivadeneira Romero Ximena Alexandra', '', '400309', 1, '1'),
(804, 1, '1718605957', 'Sisa Rodas Diego Fernando', '', '400313', 1, '1'),
(805, 1, '0703906099', 'Novillo Reyes Karina Paola', '', '400316', 1, '1'),
(806, 1, '0104591268', 'Medina Orellana Gabriela Andrea', '', '400324', 1, '1'),
(807, 1, '1714562830', 'Vallejo Rodriguez Carlos Roberto', '', '400328', 1, '1'),
(808, 1, '1718235318', 'Hurtado Recalde Diego Armando', '', '400331', 1, '1'),
(809, 1, '1714738844', 'Correa Balarezo Diego Alejandro', '', '400338', 1, '1'),
(810, 1, '0802376558', 'Ballesteros Torres Santiago Oliver', '', '400343', 1, '1'),
(811, 1, '1717172926', 'Morejon Guerra Daniela Carolina', '', '400357', 1, '1'),
(812, 1, '0103571451', 'Palacios Gil Fernando Jose', '', '400363', 1, '1'),
(813, 1, '1103750335', 'Guaman Granda Angel Fabricio', '', '400370', 1, '1'),
(814, 1, '0503245938', 'Madrid Herrera Milton Javier', '', '400373', 1, '1'),
(815, 1, '1002832515', 'Espin Benavides Herber Saul', '', '400376', 1, '1'),
(816, 1, '1718892076', 'Bracho Benitez Juan Carlos', '', '400392', 1, '1'),
(817, 1, '0920391422', 'Galiano Soto Diana Carolina', '', '400393', 1, '1'),
(818, 1, '1711875201', 'Meza Rodriguez Jaime Giovanni', '', '400402', 1, '1'),
(819, 1, '1713065546', 'Cespedes Carrasco Alex Ramiro', '', '400403', 1, '1'),
(820, 1, '0602985251', 'Salazar Granizo Luis Rodrigo', '', '400404', 1, '1'),
(821, 1, '1716845811', 'Rojas Gomez Geovanna Jacqueline', '', '400413', 1, '1'),
(822, 1, '0920424173', 'Loayza Intriago Andrea Alejandra', '', '400416', 1, '1'),
(823, 1, '0703898924', 'Apolo Echeverria Wilmer Bolivar', '', '400437', 1, '1'),
(824, 1, '1710555150', 'Arteaga Nicolalde Jose Luis', '', '400442', 1, '1'),
(825, 1, '0925573313', 'Triviño Moscoso Jacqueline Paola', '', '400452', 1, '1'),
(826, 1, '1714831441', 'Rodriguez Acosta Gabriela Margarita', '', '400467', 1, '1'),
(827, 1, '1719359562', 'Caviedes Aguirre Jorge Antonio', '', '400476', 1, '1'),
(828, 1, '0926323833', 'Mata Santos Raul Xavier', '', '400479', 1, '1'),
(829, 1, '1721406187', 'Landazuri Velasquez Johana Denisse', '', '400485', 1, '1'),
(830, 1, '1712331162', 'Davila Sandoval Dario Eduardo', '', '400487', 1, '1'),
(831, 1, '0401590088', 'Perez Revelo Danilo Andres', '', '400495', 1, '1'),
(832, 1, '1719813071', 'Ortega Vega Ana Cristina', '', '400502', 1, '1'),
(833, 1, '1714297288', 'Rodriguez Deleg Jose Miguel', '', '400503', 1, '1'),
(834, 1, '1721967972', 'Campos Sangoluisa Carolina Elizabeth', '', '400513', 1, '1'),
(835, 1, '1714275169', 'Paredes Gordillo Cristian Patricio', '', '400514', 1, '1'),
(836, 1, '1710440338', 'Wakao Salvador Alfredo Kenji', '', '400535', 1, '1'),
(837, 1, '0603880907', 'Acosta Barreno Maria Sebastiana', '', '400547', 1, '1'),
(838, 1, '0603022443', 'Guijarro Altamirano Carlos Eduardo', '', '400555', 1, '1'),
(839, 1, '0917649998', 'Reinoso Barroso Mario Alberto', '', '400556', 1, '1'),
(840, 1, '1714130356', 'Gallardo Toledo Erika Sofia', '', '400565', 1, '1'),
(841, 1, '1804153243', 'Gomez Carrera Amanda Maricela', '', '400579', 1, '1'),
(842, 1, '1715965792', 'Naveda Paredes Andres Patricio', '', '400585', 1, '1'),
(843, 1, '1720434057', 'Granda Guizado Santiago David', '', '400605', 1, '1'),
(844, 1, '1002422176', 'Velasco Fernandez Maria Jose', '', '400607', 1, '1'),
(845, 1, '1716777444', 'Davila Aguilar Nancy del Rocio', '', '400608', 1, '1'),
(846, 1, '1719929828', 'Ochoa Ramos Juan Sebastian', '', '400626', 1, '1'),
(847, 1, '1716865330', 'Perez Guzman Michelle Satia', '', '400633', 1, '1'),
(848, 1, '0503635708', 'Rosero De la Vega Daniela Stefania', '', '400634', 1, '1'),
(849, 1, '1713567814', 'Naranjo Maldonado Freddy Patricio', '', '400652', 1, '1'),
(850, 1, '0401541974', 'Ponce Vinueza Darwin Marcelo', '', '400658', 1, '1'),
(851, 1, '0703600361', 'Peñaloza Brito Julia Elizabeth', '', '400675', 1, '1'),
(852, 1, '1718452707', 'Trujillo Castillo Marcelo Antonio', '', '400678', 1, '1'),
(853, 1, '0103768511', 'Brito Coronel Nelio Emanuel', '', '400679', 1, '1'),
(854, 1, '1803884426', 'Aillon Abril Marco Xavier', '', '400683', 1, '1'),
(855, 1, '1716764178', 'Nuñez Herrera Diego Renato', '', '400690', 1, '1'),
(856, 1, '1104859481', 'Puchaicela Guadalima Andrea Cecibel', '', '400695', 1, '1'),
(857, 1, '1716066061', 'Bonilla Ribadeneira Marco David', '', '400697', 1, '1'),
(858, 1, '0904982139', 'Perez Azua Jaime Ismael', '', '400700', 1, '1'),
(859, 1, '0801130014', 'Carrera Bustamante Rafael Alejandro', '', '400709', 1, '1'),
(860, 1, '0401185756', 'Toasa Miño Martha Alexandra', '', '400713', 1, '1'),
(861, 1, '1721748562', 'Solis Andrade Daniela Alejandra', '', '400715', 1, '1'),
(862, 1, '1722373345', 'Llanganate Mediavilla Freddy Javier', '', '400719', 1, '1'),
(863, 1, '1716497928', 'Simbaña Hinojosa Erika Pamela', '', '400720', 1, '1'),
(864, 1, '0502454002', 'Soria Semblantes Mauro Ignacio', '', '400722', 1, '1'),
(865, 1, '1715848352', 'Anchapanta Salazar Andrea Maribel', '', '400745', 1, '1'),
(866, 1, '1716075906', 'Jara Valle Marco Javier', '', '400756', 1, '1'),
(867, 1, '0602417032', 'Costales Vera Giovanny Fabricio', '', '400757', 1, '1'),
(868, 1, '1719199687', 'Mena Velastegui Edison Javier', '', '400758', 1, '1'),
(869, 1, '0919347484', 'Alvarez Macias Luis Fernando', '', '400660', 1, '1'),
(870, 1, '1718854381', 'Freire Balseca Gabriel Alonso', '', '400774', 1, '1'),
(871, 1, '1718384256', 'Aldaz Vergara Patricia Alexandra', '', '400785', 1, '1'),
(872, 1, '1704887684', 'Salazar Gonzalez Marco Oswaldo', '', '400786', 1, '1'),
(873, 1, '1709617763', 'Calero Teran Nelson Francisco', '', '400790', 1, '1'),
(874, 1, '0105221899', 'Arellano Apolo Paola Vanesa', '', '400795', 1, '1'),
(875, 1, '0502657331', 'Molina Bustillos Victoria Natali', '', '400801', 1, '1'),
(876, 1, '1718740408', 'Vallejo Meza Alexander Harney', '', '400804', 1, '1'),
(877, 1, '1719731125', 'Berrutti Gallegos Andrea Cristina', '', '400834', 1, '1'),
(878, 1, '0603450610', 'Diaz Peñafiel Rodrigo Fernando', '', '400817', 1, '1'),
(879, 1, '1723308936', 'Cardenas Benalcazar Stephanie Alejandra', '', '400809', 1, '1'),
(880, 1, '1712403839', 'Guevara Armijos Jofre Enrique', '', '400852', 1, '1'),
(881, 1, '1712359015', 'Obando Ibarra Giovani Francisco', '', '400851', 1, '1'),
(882, 1, '1757913411', 'Benitez Martinez Adriana Marcela', '', '400854', 1, '1'),
(883, 1, '1720144011', 'Pazmiño Murillo Marcela Alexandra', '', '400862', 1, '1'),
(884, 1, '1500583321', 'Meza Cevallos Galo Xavier', '', '400867', 1, '1'),
(885, 1, '1715701064', 'Valdospinos Tabango Rothman Enrique', '', '400864', 1, '1'),
(886, 1, '1718803230', 'Verdugo Espinoza David Israel', '', '400876', 1, '1'),
(887, 1, '0913749107', 'Jaime Galarza Carlos Andres', '', '400879', 1, '1'),
(888, 1, '1719377333', 'Granda Reinoso Jacqueline Esmeralda', '', '400890', 1, '1'),
(889, 1, '1715789218', 'Emme Bedoya Julian Andres', '', '400894', 1, '1'),
(890, 1, '1721409843', 'Carrera Salazar Carlos Andres', '', '400901', 1, '1'),
(891, 1, '1714891221', 'Larrea Guerrero Gabriela Cristina', '', '400907', 1, '1'),
(892, 1, '1718214057', 'Cabezas Avalos Edwin Samuel', '', '400910', 1, '1'),
(893, 1, '0930823711', 'Murillo Carrasco Fernando Patricio', '', '400916', 1, '1'),
(894, 1, '1711650174', 'Triviño Marcillo Maria de Lourdes', '', '400918', 1, '1'),
(895, 1, '1713728127', 'Moromenacho Oña Esteban Javier', '', '400925', 1, '1'),
(896, 1, '1716741713', 'Molina Silva Angel David', '', '400931', 1, '1'),
(897, 1, '1715061774', 'Proaño Martinez Cristobal Eduardo', '', '400938', 1, '1'),
(898, 1, '1717642316', 'Meneses Granja Roberto Carlos', '', '400942', 1, '1'),
(899, 1, '0401544655', 'Enriquez Valenzuela Julio Edison', '', '400945', 1, '1'),
(900, 1, '1715039143', 'Gonzalez Larrea Fernando Francisco', '', '400949', 1, '1'),
(901, 1, '1104489578', 'Luzon Guzman Tania Maribel', '', '400950', 1, '1'),
(902, 1, '1715543227', 'Rivadeneira Andrade Marco Antonio', '', '400952', 1, '1'),
(903, 1, '1716427966', 'Bravo Rosero Luis David', '', '400947', 1, '1'),
(904, 1, '0930157136', 'Parrales Marcillo Ana Karen', '', '400954', 1, '1'),
(905, 1, '1724478647', 'Tello Altamirano Andrea Teresa', '', '400961', 1, '1'),
(906, 1, '1721354908', 'Villalta Villacres Jose German', '', '400967', 1, '1'),
(907, 1, '1104372519', 'Quichimbo Armijos Luis Alfredo', '', '400968', 1, '1'),
(908, 1, '0915933592', 'Lino Panchana Johnny Douglas', '', '400972', 1, '1'),
(909, 1, '1721536934', 'Ramirez Vera John Alexander', '', '400979', 1, '1'),
(910, 1, '1719044628', 'Reinoso Vallejo Christian Gustavo', '', '400987', 1, '1'),
(911, 1, '1717171035', 'Guzman Calle Milton Anibal', '', '400988', 1, '1'),
(912, 1, '1713592275', 'Guzman Jacome Soraya Ibeth', '', '400990', 1, '1'),
(913, 1, '0923970917', 'Sanchez Carlo Karen Elizabeth', '', '400998', 1, '1'),
(914, 1, '1757243595', 'Hernandez Perez Melissa Coromoto', '', '400999', 1, '1'),
(915, 1, '0909651093', 'Romo Leroux Maruri Maria Gabriela', '', '401005', 1, '1'),
(916, 1, '1757259559', 'Peña Pestana Vanessa Katiuska', '', '401032', 1, '1'),
(917, 1, '1723023303', 'Escarcellé Soledispa María José', '', '401036', 1, '1'),
(918, 1, '0603810573', 'Vallejo Villalva Cristhian Alexander', '', '401040', 1, '1'),
(919, 1, '1717363806', 'Chavez Enriquez Carlos Alfredo', '', '401053', 1, '1'),
(920, 1, '0911931186', 'Braun Heredia Eric Laurent', '', '401054', 1, '1'),
(921, 1, '0925597031', 'Olivares Murillo Maria Auxiliadora', '', '401059', 1, '1'),
(922, 1, '1713385605', 'Botto Vallejo Eduardo Xavier', '', '401067', 1, '1'),
(923, 1, '1717646333', 'Miranda Mañay Rommel Andres', '', '401092', 1, '1'),
(924, 1, '1716394273', 'Oleas Trujillo Luis Fabricio', '', '401108', 1, '1'),
(925, 1, '0913075024', 'Jacome Saucedo Henry Aurelio', '', '401102', 1, '1'),
(926, 1, '0103929360', 'Quito Pinos Paul Felipe', '', '401112', 1, '1'),
(927, 1, '0928047877', 'Ortiz Cordero Narcisa de Jesus', '', '401113', 1, '1'),
(928, 1, '0924369911', 'Vivar Cassola Geomayra Maritza', '', '401107', 1, '1'),
(929, 1, '1713105177', 'Merino Ortega Daniela Lucia', '', '401116', 1, '1'),
(930, 1, '0930050547', 'Heredia Murillo Juan Jose', '', '401124', 1, '1'),
(931, 1, '1721800181', 'Chavarria Loor Carlos Javier', '', '401137', 1, '1'),
(932, 1, '1722651344', 'Aguas Durán Daniel Alejandro', '', '401138', 1, '1'),
(933, 2, '1727460683', 'Cabascango Campues Edison Wilmer', '', '1060503', 1, '1'),
(934, 2, '0955719208', 'Guerrero Solórzano Jhannely Nicole', '', '1067500', 1, '1'),
(935, 2, '1750113647', 'Mantilla Bravo Francis Anahí', '', '1067908', 1, '1'),
(936, 2, '1722376918', 'Mera García Diana Monserrate', '', '1068386', 1, '1'),
(937, 2, '1727385526', 'Meneses Zapata Josselyn Margoth', '', '1068590', 1, '1'),
(938, 2, '1724613367', 'Cabrera Nole Karla Lizeth', '', '1068758', 1, '1'),
(939, 2, '1719740365', 'Valdivieso Silva Damian Alexander', '', '1070160', 1, '1'),
(940, 2, '1722505342', 'Moya Calva Jamilet Patricia', '', '1070752', 1, '1'),
(941, 2, '1725944100', 'Alcivar Lugo Alisson Katherine', '', '1070753', 1, '1'),
(942, 2, '1752904043', 'Arcos Alvarado Daniel Andrés', '', '1070921', 1, '1'),
(943, 2, '1753040276', 'Velasco Salgado Juan Francisco', '', '1071744', 1, '1'),
(944, 2, '1720018983', 'Bernys Játiva Miguel Alejandro', '', '1072039', 1, '1'),
(945, 2, '1727348268', 'Galarza Llumigusin Elaine Alejandra', '', '1072041', 1, '1'),
(946, 2, '1718550948', 'Capelo Rubio Aldo Grivaldy', '', '1072188', 1, '1'),
(947, 2, '1726536343', 'LLumiquinga Socasi Jonathan Fabricio', '', '1072192', 1, '1'),
(948, 2, '1004155709', 'Villarruel Cerón Wagner Rodrigo', '', '1072512', 1, '1'),
(949, 2, '1718297847', 'Pillajo Morocho Jose Luis', '', '1072553', 1, '1'),
(950, 2, '1725332975', 'Paredes Jimenez Diego Mauricio', '', '1073741', 1, '1'),
(951, 2, '1715790091', 'Murillo Hurtado Josselin Michelle', '', '1073877', 1, '1'),
(952, 2, '1754785507', 'Trujillo Benalcazar Daniela Abigail', '', '1074457', 1, '1'),
(953, 2, '1721499729', 'Loor Azanza Ana Carolina', '', '1074485', 1, '1'),
(954, 2, '1723461933', 'Fuertes Venegas Lenin Santiago', '', '1075151', 1, '1'),
(955, 2, '1721908604', 'Abarca Vaca Diana Belén', '', '1075317', 1, '1'),
(956, 2, '1728628767', 'Pérez Guerrero Emely Virginia', '', '1075352', 1, '1'),
(957, 2, '1726103862', 'Jiménez Reino Sergio Andrés', '', '1075353', 1, '1'),
(958, 3, '0960125946', 'Martínez Durán Niurka', '', '1008301', 1, '1'),
(959, 3, '1723359798', 'Marin Aleaga Alejandra Michelle', '', '1008671', 1, '1'),
(960, 3, '1803126166', 'Alvarado Llerena Enrique Javier', '', '1019853', 1, '1'),
(961, 3, '1722049788', 'Naranjo Buitrón Ana Daniela', '', '1055449', 1, '1'),
(962, 3, '1713115762', 'Martínez Bravo Maria Cristina', '', '1060420', 1, '1'),
(963, 3, '0921122396', 'Caceres Zavala Juan Antonio', '', '2444', 1, '1'),
(964, 3, '1721880423', 'Valenzuela Urresta Daniela Cristina', '', '7551448', 1, '1'),
(965, 4, '1727385526', 'Meneses Zapata Josselyn Margoth', '', '1068590', 1, '1'),
(966, 4, '1715790091', 'Murillo Hurtado Josselin Michelle', '', '1073877', 1, '1'),
(967, 4, '1721499729', 'Loor Azanza Ana Carolina', '', '1074485', 1, '1'),
(968, 4, '1728628767', 'Pérez Guerrero Emely Virginia', '', '1075352', 1, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consumos`
--

CREATE TABLE `consumos` (
  `id` int(11) NOT NULL,
  `cliId` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL DEFAULT current_timestamp(),
  `tipo` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `consumos`
--

INSERT INTO `consumos` (`id`, `cliId`, `fecha`, `hora`, `tipo`, `precio`) VALUES
(11, 1, '2023-01-12', '14:44:23', 'Almuerzo', '3.50'),
(12, 1, '2023-01-12', '15:33:28', 'Desayuno', '3.50'),
(13, 1, '2023-01-13', '21:08:22', 'Desayuno', '3.50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ruc` varchar(20) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`id`, `nombre`, `ruc`, `direccion`, `estado`) VALUES
(1, 'OTECEL', NULL, NULL, '1'),
(2, 'PASANTE OTECEL', NULL, NULL, '1'),
(3, 'FUNDACION', NULL, NULL, '1'),
(4, 'FUNDACION PASANTE', NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precioVenta` decimal(5,2) NOT NULL,
  `precioCompra` decimal(5,2) NOT NULL,
  `existencia` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `codigo`, `descripcion`, `precioVenta`, `precioCompra`, `existencia`) VALUES
(1, '1', 'Galletas chokis', '15.00', '10.00', '99.00'),
(2, '2', 'Mermelada de fresa', '80.00', '65.00', '98.00'),
(3, '3', 'Aceite', '20.00', '18.00', '98.00'),
(4, '4', 'Palomitas de maíz', '15.00', '12.00', '99.00'),
(5, '5', 'Doritos', '8.00', '5.00', '99.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_vendidos`
--

CREATE TABLE `productos_vendidos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_producto` bigint(20) UNSIGNED NOT NULL,
  `cantidad` bigint(20) UNSIGNED NOT NULL,
  `id_venta` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos_vendidos`
--

INSERT INTO `productos_vendidos` (`id`, `id_producto`, `cantidad`, `id_venta`) VALUES
(1, 3, 1, 4),
(2, 4, 1, 4),
(7, 2, 1, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `clave` varchar(200) NOT NULL,
  `comedor` varchar(50) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `comedor`, `estado`) VALUES
(1, 'admin', 'admin12345', 'MATRIZ', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_cliente` int(20) NOT NULL,
  `fecha` date NOT NULL,
  `total` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `id_cliente`, `fecha`, `total`) VALUES
(4, 2, '2023-04-13', '35.00'),
(9, 1, '2023-04-14', '80.00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `empId` (`empId`);

--
-- Indices de la tabla `consumos`
--
ALTER TABLE `consumos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliId` (`cliId`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos_vendidos`
--
ALTER TABLE `productos_vendidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=969;

--
-- AUTO_INCREMENT de la tabla `consumos`
--
ALTER TABLE `consumos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos_vendidos`
--
ALTER TABLE `productos_vendidos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`empId`) REFERENCES `empresa` (`id`);

--
-- Filtros para la tabla `consumos`
--
ALTER TABLE `consumos`
  ADD CONSTRAINT `consumos_ibfk_1` FOREIGN KEY (`cliId`) REFERENCES `clientes` (`id`);

--
-- Filtros para la tabla `productos_vendidos`
--
ALTER TABLE `productos_vendidos`
  ADD CONSTRAINT `productos_vendidos_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `productos_vendidos_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
