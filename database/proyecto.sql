/*
Navicat MySQL Data Transfer

Source Server         : Localhost @ root
Source Server Version : 50635
Source Host           : localhost:3306
Source Database       : proyecto

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-06-01 15:57:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for canton
-- ----------------------------
DROP TABLE IF EXISTS `canton`;
CREATE TABLE `canton` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProvinciaId` int(10) unsigned NOT NULL,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Area` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Poblacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `canton_` (`ProvinciaId`),
  CONSTRAINT `canton_` FOREIGN KEY (`ProvinciaId`) REFERENCES `provincia` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=708 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of canton
-- ----------------------------
INSERT INTO `canton` VALUES ('101', '1', 'San José', '44.62', '352366');
INSERT INTO `canton` VALUES ('102', '1', 'Escazú', '34.49', '60201');
INSERT INTO `canton` VALUES ('103', '1', 'Desamparados', '118.26', '221346');
INSERT INTO `canton` VALUES ('104', '1', 'Puriscal', '553.66', '32767');
INSERT INTO `canton` VALUES ('105', '1', 'Tarrazú', '297.5', '16419');
INSERT INTO `canton` VALUES ('106', '1', 'Aserrí', '167.1', '56422');
INSERT INTO `canton` VALUES ('107', '1', 'Mora', '162.04', '24333');
INSERT INTO `canton` VALUES ('108', '1', 'Goicoechea', '31.5', '131529');
INSERT INTO `canton` VALUES ('109', '1', 'Santa Ana', '61.42', '39905');
INSERT INTO `canton` VALUES ('110', '1', 'Alajuelita', '21.17', '81721');
INSERT INTO `canton` VALUES ('111', '1', 'Vázquez de Coronado', '222.2', '63098');
INSERT INTO `canton` VALUES ('112', '1', 'Acosta', '342.24', '20906');
INSERT INTO `canton` VALUES ('113', '1', 'Tibás', '8.15', '81478');
INSERT INTO `canton` VALUES ('114', '1', 'Moravia', '28.62', '55895');
INSERT INTO `canton` VALUES ('115', '1', 'Montes de Oca', '15.16', '55814');
INSERT INTO `canton` VALUES ('116', '1', 'Turrubares', '415.29', '5482');
INSERT INTO `canton` VALUES ('117', '1', 'Dota', '400.22', '7465');
INSERT INTO `canton` VALUES ('118', '1', 'Curridabat', '15.95', '69474');
INSERT INTO `canton` VALUES ('119', '1', 'Pérez Zeledón', '1905.51', '140872');
INSERT INTO `canton` VALUES ('120', '1', 'León Cortés Castro', '120.8', '13288');
INSERT INTO `canton` VALUES ('201', '2', 'Alajuela', '388.43', '255598');
INSERT INTO `canton` VALUES ('202', '2', 'San Ramón', '1018.64', '77380');
INSERT INTO `canton` VALUES ('203', '2', 'Grecia', '395.72', '74860');
INSERT INTO `canton` VALUES ('204', '2', 'San Mateo', '125.9', '5904');
INSERT INTO `canton` VALUES ('205', '2', 'Atenas', '127.19', '25033');
INSERT INTO `canton` VALUES ('206', '2', 'Naranjo', '126.62', '42637');
INSERT INTO `canton` VALUES ('207', '2', 'Palmares', '38.06', '33401');
INSERT INTO `canton` VALUES ('208', '2', 'Poás', '73.84', '28469');
INSERT INTO `canton` VALUES ('209', '2', 'Orotina', '141.92', '17866');
INSERT INTO `canton` VALUES ('210', '2', 'San Carlos', '3347.98', '151322');
INSERT INTO `canton` VALUES ('211', '2', 'Zarcero', '155.13', '12368');
INSERT INTO `canton` VALUES ('212', '2', 'Valverde Vega', '120.25', '18407');
INSERT INTO `canton` VALUES ('213', '2', 'Upala', '1580.67', '44556');
INSERT INTO `canton` VALUES ('214', '2', 'Los Chiles', '1358.86', '23902');
INSERT INTO `canton` VALUES ('215', '2', 'Guatuso', '758.32', '15068');
INSERT INTO `canton` VALUES ('301', '3', 'Cartago', '287.77', '149657');
INSERT INTO `canton` VALUES ('302', '3', 'Paraíso', '411.91', '60005');
INSERT INTO `canton` VALUES ('303', '3', 'La Unión', '44.83', '91090');
INSERT INTO `canton` VALUES ('304', '3', 'Jiménez', '286.43', '15859');
INSERT INTO `canton` VALUES ('305', '3', 'Turrialba', '1642.67', '78217');
INSERT INTO `canton` VALUES ('306', '3', 'Alvarado', '81.06', '13862');
INSERT INTO `canton` VALUES ('307', '3', 'Oreamuno', '202.31', '44403');
INSERT INTO `canton` VALUES ('308', '3', 'El Guarco', '167.69', '39223');
INSERT INTO `canton` VALUES ('401', '4', 'Heredia', '282.6', '118872');
INSERT INTO `canton` VALUES ('402', '4', 'Barva', '53.8', '37041');
INSERT INTO `canton` VALUES ('403', '4', 'Santo Domingo', '24.84', '38959');
INSERT INTO `canton` VALUES ('404', '4', 'Santa Bárbara', '53.21', '33334');
INSERT INTO `canton` VALUES ('405', '4', 'San Rafael', '48.39', '42398');
INSERT INTO `canton` VALUES ('406', '4', 'San Isidro', '26.96', '18028');
INSERT INTO `canton` VALUES ('407', '4', 'Belén', '12.15', '22400');
INSERT INTO `canton` VALUES ('408', '4', 'Flores', '6.96', '17298');
INSERT INTO `canton` VALUES ('409', '4', 'San Pablo', '7.53', '23370');
INSERT INTO `canton` VALUES ('410', '4', 'Sarapiquí', '2140.54', '54537');
INSERT INTO `canton` VALUES ('501', '5', 'Liberia', '1436.47', '55921');
INSERT INTO `canton` VALUES ('502', '5', 'Nicoya', '1333.68', '47823');
INSERT INTO `canton` VALUES ('503', '5', 'Santa Cruz', '1312.27', '46460');
INSERT INTO `canton` VALUES ('504', '5', 'Bagaces', '1273.49', '18368');
INSERT INTO `canton` VALUES ('505', '5', 'Carrillo', '577.54', '32168');
INSERT INTO `canton` VALUES ('506', '5', 'Cañas', '682.2', '27970');
INSERT INTO `canton` VALUES ('507', '5', 'Abangares', '675.76', '18319');
INSERT INTO `canton` VALUES ('508', '5', 'Tilarán', '638.39', '20337');
INSERT INTO `canton` VALUES ('509', '5', 'Nandayure', '565.59', '11185');
INSERT INTO `canton` VALUES ('510', '5', 'La Cruz', '1383.9', '19978');
INSERT INTO `canton` VALUES ('511', '5', 'Hojancha', '261.42', '7289');
INSERT INTO `canton` VALUES ('601', '6', 'Puntarenas', '1842.33', '118928');
INSERT INTO `canton` VALUES ('602', '6', 'Esparza', '216.8', '27199');
INSERT INTO `canton` VALUES ('603', '6', 'Buenos Aires', '2384.22', '47576');
INSERT INTO `canton` VALUES ('604', '6', 'Montes de Oro', '244.76', '12495');
INSERT INTO `canton` VALUES ('605', '6', 'Osa', '1930.24', '29547');
INSERT INTO `canton` VALUES ('606', '6', 'Quepos', '543.77', '23915');
INSERT INTO `canton` VALUES ('607', '6', 'Golfito', '1753.96', '39699');
INSERT INTO `canton` VALUES ('608', '6', 'Coto Brus', '933.91', '47247');
INSERT INTO `canton` VALUES ('609', '6', 'Parrita', '478.79', '13940');
INSERT INTO `canton` VALUES ('610', '6', 'Corredores', '620.6', '44180');
INSERT INTO `canton` VALUES ('611', '6', 'Garabito', '316.31', '13165');
INSERT INTO `canton` VALUES ('701', '7', 'Limón', '1765.79', '106356');
INSERT INTO `canton` VALUES ('702', '7', 'Pococí', '2403.49', '121735');
INSERT INTO `canton` VALUES ('703', '7', 'Siquirres', '860.19', '60881');
INSERT INTO `canton` VALUES ('704', '7', 'Talamanca', '2809.93', '32158');
INSERT INTO `canton` VALUES ('705', '7', 'Matina', '772.64', '39961');
INSERT INTO `canton` VALUES ('706', '7', 'Guácimo', '576.48', '41082');

-- ----------------------------
-- Table structure for colector
-- ----------------------------
DROP TABLE IF EXISTS `colector`;
CREATE TABLE `colector` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Enabled` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of colector
-- ----------------------------
INSERT INTO `colector` VALUES ('1', 'Crisia Piedra Chaves', '');
INSERT INTO `colector` VALUES ('2', 'Gustavo Granados', '\0');
INSERT INTO `colector` VALUES ('3', 'Gerardo Rojas', '');
INSERT INTO `colector` VALUES ('4', 'Nuevo Colector', '');
INSERT INTO `colector` VALUES ('5', 'Crisia Piedra Chaves', '');
INSERT INTO `colector` VALUES ('6', '3333', '');

-- ----------------------------
-- Table structure for distrito
-- ----------------------------
DROP TABLE IF EXISTS `distrito`;
CREATE TABLE `distrito` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CantonId` int(10) unsigned NOT NULL,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `distrito_CantonId` (`CantonId`),
  CONSTRAINT `distrito_CantonId` FOREIGN KEY (`CantonId`) REFERENCES `canton` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=70607 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of distrito
-- ----------------------------
INSERT INTO `distrito` VALUES ('10101', '101', 'Carmen');
INSERT INTO `distrito` VALUES ('10102', '101', 'Merced');
INSERT INTO `distrito` VALUES ('10103', '101', 'Hospital');
INSERT INTO `distrito` VALUES ('10104', '101', 'Catedral');
INSERT INTO `distrito` VALUES ('10105', '101', 'Zapote');
INSERT INTO `distrito` VALUES ('10106', '101', 'San Francisco de Dos Ríos');
INSERT INTO `distrito` VALUES ('10107', '101', 'Uruca');
INSERT INTO `distrito` VALUES ('10108', '101', 'Mata Redonda');
INSERT INTO `distrito` VALUES ('10109', '101', 'Pavas');
INSERT INTO `distrito` VALUES ('10110', '101', 'Hatillo');
INSERT INTO `distrito` VALUES ('10111', '101', 'San Sebastián');
INSERT INTO `distrito` VALUES ('10201', '102', 'Escazú');
INSERT INTO `distrito` VALUES ('10202', '102', 'San Antonio');
INSERT INTO `distrito` VALUES ('10203', '102', 'San Rafael');
INSERT INTO `distrito` VALUES ('10301', '103', 'Desamparados');
INSERT INTO `distrito` VALUES ('10302', '103', 'San Miguel');
INSERT INTO `distrito` VALUES ('10303', '103', 'San Juan de Dios');
INSERT INTO `distrito` VALUES ('10304', '103', 'San Rafael Arriba');
INSERT INTO `distrito` VALUES ('10305', '103', 'San Antonio');
INSERT INTO `distrito` VALUES ('10306', '103', 'Frailes');
INSERT INTO `distrito` VALUES ('10307', '103', 'Patarrá');
INSERT INTO `distrito` VALUES ('10308', '103', 'San Cristóbal');
INSERT INTO `distrito` VALUES ('10309', '103', 'Rosario');
INSERT INTO `distrito` VALUES ('10310', '103', 'Damas');
INSERT INTO `distrito` VALUES ('10311', '103', 'San Rafael Abajo');
INSERT INTO `distrito` VALUES ('10312', '103', 'Gravilias');
INSERT INTO `distrito` VALUES ('10313', '103', 'Los Guido');
INSERT INTO `distrito` VALUES ('10401', '104', 'Santiago');
INSERT INTO `distrito` VALUES ('10402', '104', 'Mercedes Sur');
INSERT INTO `distrito` VALUES ('10403', '104', 'Barbacoas');
INSERT INTO `distrito` VALUES ('10404', '104', 'Grifo Alto');
INSERT INTO `distrito` VALUES ('10405', '104', 'San Rafael');
INSERT INTO `distrito` VALUES ('10406', '104', 'Candelarita');
INSERT INTO `distrito` VALUES ('10407', '104', 'Desamparaditos');
INSERT INTO `distrito` VALUES ('10408', '104', 'San Antonio');
INSERT INTO `distrito` VALUES ('10409', '104', 'Chires');
INSERT INTO `distrito` VALUES ('10501', '105', 'San Marcos');
INSERT INTO `distrito` VALUES ('10502', '105', 'San Lorenzo');
INSERT INTO `distrito` VALUES ('10503', '105', 'San Carlos');
INSERT INTO `distrito` VALUES ('10601', '106', 'Aserrí');
INSERT INTO `distrito` VALUES ('10602', '106', 'Tarbaca');
INSERT INTO `distrito` VALUES ('10603', '106', 'Vuelta de Jorco');
INSERT INTO `distrito` VALUES ('10604', '106', 'San Gabriel');
INSERT INTO `distrito` VALUES ('10605', '106', 'Legua');
INSERT INTO `distrito` VALUES ('10606', '106', 'Monterrey');
INSERT INTO `distrito` VALUES ('10607', '106', 'Salitrillos');
INSERT INTO `distrito` VALUES ('10701', '107', 'Colón');
INSERT INTO `distrito` VALUES ('10702', '107', 'Guayabo');
INSERT INTO `distrito` VALUES ('10703', '107', 'Tabarcia');
INSERT INTO `distrito` VALUES ('10704', '107', 'Piedras Negras');
INSERT INTO `distrito` VALUES ('10705', '107', 'Picagres');
INSERT INTO `distrito` VALUES ('10706', '107', 'Jaris');
INSERT INTO `distrito` VALUES ('10801', '108', 'Guadalupe');
INSERT INTO `distrito` VALUES ('10802', '108', 'San Francisco');
INSERT INTO `distrito` VALUES ('10803', '108', 'Calle Blancos');
INSERT INTO `distrito` VALUES ('10804', '108', 'Mata de Plátano');
INSERT INTO `distrito` VALUES ('10805', '108', 'Ipís');
INSERT INTO `distrito` VALUES ('10806', '108', 'Rancho Redondo');
INSERT INTO `distrito` VALUES ('10807', '108', 'Purral');
INSERT INTO `distrito` VALUES ('10901', '109', 'Santa Ana');
INSERT INTO `distrito` VALUES ('10902', '109', 'Salitral');
INSERT INTO `distrito` VALUES ('10903', '109', 'Pozos');
INSERT INTO `distrito` VALUES ('10904', '109', 'Uruca');
INSERT INTO `distrito` VALUES ('10905', '109', 'Piedades');
INSERT INTO `distrito` VALUES ('10906', '109', 'Brasil');
INSERT INTO `distrito` VALUES ('11001', '110', 'Alajuelita');
INSERT INTO `distrito` VALUES ('11002', '110', 'San Josecito');
INSERT INTO `distrito` VALUES ('11003', '110', 'San Antonio');
INSERT INTO `distrito` VALUES ('11004', '110', 'Concepción');
INSERT INTO `distrito` VALUES ('11005', '110', 'San Felipe');
INSERT INTO `distrito` VALUES ('11101', '111', 'San Isidro');
INSERT INTO `distrito` VALUES ('11102', '111', 'San Rafael');
INSERT INTO `distrito` VALUES ('11103', '111', 'Dulce Nombre de Jesús');
INSERT INTO `distrito` VALUES ('11104', '111', 'Patalillo');
INSERT INTO `distrito` VALUES ('11105', '111', 'Cascajal');
INSERT INTO `distrito` VALUES ('11201', '112', 'San Ignacio');
INSERT INTO `distrito` VALUES ('11202', '112', 'Guaitil');
INSERT INTO `distrito` VALUES ('11203', '112', 'Palmichal');
INSERT INTO `distrito` VALUES ('11204', '112', 'Cangrejal');
INSERT INTO `distrito` VALUES ('11205', '112', 'Sabanillas');
INSERT INTO `distrito` VALUES ('11301', '113', 'San Juan');
INSERT INTO `distrito` VALUES ('11302', '113', 'Cinco Esquinas');
INSERT INTO `distrito` VALUES ('11303', '113', 'Anselmo Llorente');
INSERT INTO `distrito` VALUES ('11304', '113', 'León XIII');
INSERT INTO `distrito` VALUES ('11305', '113', 'Colima');
INSERT INTO `distrito` VALUES ('11401', '114', 'San Vicente');
INSERT INTO `distrito` VALUES ('11402', '114', 'San Jerónimo');
INSERT INTO `distrito` VALUES ('11403', '114', 'La Trinidad');
INSERT INTO `distrito` VALUES ('11501', '115', 'San Pedro');
INSERT INTO `distrito` VALUES ('11502', '115', 'Sabanilla');
INSERT INTO `distrito` VALUES ('11503', '115', 'Mercedes');
INSERT INTO `distrito` VALUES ('11504', '115', 'San Rafael');
INSERT INTO `distrito` VALUES ('11601', '116', 'San Pablo');
INSERT INTO `distrito` VALUES ('11602', '116', 'San Pedro');
INSERT INTO `distrito` VALUES ('11603', '116', 'San Juan de Mata');
INSERT INTO `distrito` VALUES ('11604', '116', 'San Luis');
INSERT INTO `distrito` VALUES ('11605', '116', 'Carara');
INSERT INTO `distrito` VALUES ('11701', '117', 'Santa María');
INSERT INTO `distrito` VALUES ('11702', '117', 'Jardín');
INSERT INTO `distrito` VALUES ('11703', '117', 'Copey');
INSERT INTO `distrito` VALUES ('11801', '118', 'Curridabat');
INSERT INTO `distrito` VALUES ('11802', '118', 'Granadilla');
INSERT INTO `distrito` VALUES ('11803', '118', 'Sánchez');
INSERT INTO `distrito` VALUES ('11804', '118', 'Tirrases');
INSERT INTO `distrito` VALUES ('11901', '119', 'San Isidro de El General');
INSERT INTO `distrito` VALUES ('11902', '119', 'General');
INSERT INTO `distrito` VALUES ('11903', '119', 'Daniel Flores');
INSERT INTO `distrito` VALUES ('11904', '119', 'Rivas');
INSERT INTO `distrito` VALUES ('11905', '119', 'San Pedro');
INSERT INTO `distrito` VALUES ('11906', '119', 'Platanares');
INSERT INTO `distrito` VALUES ('11907', '119', 'Pejibaye');
INSERT INTO `distrito` VALUES ('11908', '119', 'Cajón');
INSERT INTO `distrito` VALUES ('11909', '119', 'Barú');
INSERT INTO `distrito` VALUES ('11910', '119', 'Río Nuevo');
INSERT INTO `distrito` VALUES ('11911', '119', 'Páramo');
INSERT INTO `distrito` VALUES ('12001', '120', 'San Pablo');
INSERT INTO `distrito` VALUES ('12002', '120', 'San Andrés');
INSERT INTO `distrito` VALUES ('12003', '120', 'Llano Bonito');
INSERT INTO `distrito` VALUES ('12004', '120', 'San Isidro');
INSERT INTO `distrito` VALUES ('12005', '120', 'Santa Cruz');
INSERT INTO `distrito` VALUES ('12006', '120', 'San Antonio');
INSERT INTO `distrito` VALUES ('20101', '201', 'Alajuela');
INSERT INTO `distrito` VALUES ('20102', '201', 'San José');
INSERT INTO `distrito` VALUES ('20103', '201', 'Carrizal');
INSERT INTO `distrito` VALUES ('20104', '201', 'San Antonio');
INSERT INTO `distrito` VALUES ('20105', '201', 'Guácima');
INSERT INTO `distrito` VALUES ('20106', '201', 'San Isidro');
INSERT INTO `distrito` VALUES ('20107', '201', 'Sabanilla');
INSERT INTO `distrito` VALUES ('20108', '201', 'San Rafael');
INSERT INTO `distrito` VALUES ('20109', '201', 'Río Segundo');
INSERT INTO `distrito` VALUES ('20110', '201', 'Desamparados');
INSERT INTO `distrito` VALUES ('20111', '201', 'Turrúcares');
INSERT INTO `distrito` VALUES ('20112', '201', 'Tambor');
INSERT INTO `distrito` VALUES ('20113', '201', 'Garita');
INSERT INTO `distrito` VALUES ('20114', '201', 'Sarapiquí');
INSERT INTO `distrito` VALUES ('20201', '202', 'San Ramón');
INSERT INTO `distrito` VALUES ('20202', '202', 'Santiago');
INSERT INTO `distrito` VALUES ('20203', '202', 'San Juan');
INSERT INTO `distrito` VALUES ('20204', '202', 'Piedades Norte');
INSERT INTO `distrito` VALUES ('20205', '202', 'Piedades Sur');
INSERT INTO `distrito` VALUES ('20206', '202', 'San Rafael');
INSERT INTO `distrito` VALUES ('20207', '202', 'San Isidro');
INSERT INTO `distrito` VALUES ('20208', '202', 'Los Ángeles');
INSERT INTO `distrito` VALUES ('20209', '202', 'Alfaro');
INSERT INTO `distrito` VALUES ('20210', '202', 'Volio');
INSERT INTO `distrito` VALUES ('20211', '202', 'Concepción');
INSERT INTO `distrito` VALUES ('20212', '202', 'Zapotal');
INSERT INTO `distrito` VALUES ('20213', '202', 'Peñas Blancas');
INSERT INTO `distrito` VALUES ('20301', '203', 'Grecia');
INSERT INTO `distrito` VALUES ('20302', '203', 'San Isidro');
INSERT INTO `distrito` VALUES ('20303', '203', 'San José');
INSERT INTO `distrito` VALUES ('20304', '203', 'San Roque');
INSERT INTO `distrito` VALUES ('20305', '203', 'Tacares');
INSERT INTO `distrito` VALUES ('20306', '203', 'Río Cuarto');
INSERT INTO `distrito` VALUES ('20307', '203', 'Puente de Piedra');
INSERT INTO `distrito` VALUES ('20308', '203', 'Bolívar');
INSERT INTO `distrito` VALUES ('20401', '204', 'San Mateo');
INSERT INTO `distrito` VALUES ('20402', '204', 'Desmonte');
INSERT INTO `distrito` VALUES ('20403', '204', 'Jesús María');
INSERT INTO `distrito` VALUES ('20501', '205', 'Atenas');
INSERT INTO `distrito` VALUES ('20502', '205', 'Jesús');
INSERT INTO `distrito` VALUES ('20503', '205', 'Mercedes');
INSERT INTO `distrito` VALUES ('20504', '205', 'San Isidro');
INSERT INTO `distrito` VALUES ('20505', '205', 'Concepción');
INSERT INTO `distrito` VALUES ('20506', '205', 'San José');
INSERT INTO `distrito` VALUES ('20507', '205', 'Santa Eulalia');
INSERT INTO `distrito` VALUES ('20508', '205', 'Escobal');
INSERT INTO `distrito` VALUES ('20601', '206', 'Naranjo');
INSERT INTO `distrito` VALUES ('20602', '206', 'San Miguel');
INSERT INTO `distrito` VALUES ('20603', '206', 'San José');
INSERT INTO `distrito` VALUES ('20604', '206', 'Cirrí Sur');
INSERT INTO `distrito` VALUES ('20605', '206', 'San Jerónimo');
INSERT INTO `distrito` VALUES ('20606', '206', 'San Juan');
INSERT INTO `distrito` VALUES ('20607', '206', 'El Rosario');
INSERT INTO `distrito` VALUES ('20608', '206', 'Palmitos');
INSERT INTO `distrito` VALUES ('20701', '207', 'Palmares');
INSERT INTO `distrito` VALUES ('20702', '207', 'Zaragoza');
INSERT INTO `distrito` VALUES ('20703', '207', 'Buenos Aires');
INSERT INTO `distrito` VALUES ('20704', '207', 'Santiago');
INSERT INTO `distrito` VALUES ('20705', '207', 'Candelaria');
INSERT INTO `distrito` VALUES ('20706', '207', 'Esquipulas');
INSERT INTO `distrito` VALUES ('20707', '207', 'La Granja');
INSERT INTO `distrito` VALUES ('20801', '208', 'San Pedro');
INSERT INTO `distrito` VALUES ('20802', '208', 'San Juan');
INSERT INTO `distrito` VALUES ('20803', '208', 'San Rafael');
INSERT INTO `distrito` VALUES ('20804', '208', 'Carrillos');
INSERT INTO `distrito` VALUES ('20805', '208', 'Sabana Redonda');
INSERT INTO `distrito` VALUES ('20901', '209', 'Orotina');
INSERT INTO `distrito` VALUES ('20902', '209', 'El Mastate');
INSERT INTO `distrito` VALUES ('20903', '209', 'Hacienda Vieja');
INSERT INTO `distrito` VALUES ('20904', '209', 'Coyolar');
INSERT INTO `distrito` VALUES ('20905', '209', 'La Ceiba');
INSERT INTO `distrito` VALUES ('21001', '210', 'Quesada');
INSERT INTO `distrito` VALUES ('21002', '210', 'Florencia');
INSERT INTO `distrito` VALUES ('21003', '210', 'Buenavista');
INSERT INTO `distrito` VALUES ('21004', '210', 'Aguas Zarcas');
INSERT INTO `distrito` VALUES ('21005', '210', 'Venecia');
INSERT INTO `distrito` VALUES ('21006', '210', 'Pital');
INSERT INTO `distrito` VALUES ('21007', '210', 'La Fortuna');
INSERT INTO `distrito` VALUES ('21008', '210', 'La Tigra');
INSERT INTO `distrito` VALUES ('21009', '210', 'La Palmera');
INSERT INTO `distrito` VALUES ('21010', '210', 'Venado');
INSERT INTO `distrito` VALUES ('21011', '210', 'Cutris');
INSERT INTO `distrito` VALUES ('21012', '210', 'Monterrey');
INSERT INTO `distrito` VALUES ('21013', '210', 'Pocosol');
INSERT INTO `distrito` VALUES ('21101', '211', 'Zarcero');
INSERT INTO `distrito` VALUES ('21102', '211', 'Laguna');
INSERT INTO `distrito` VALUES ('21103', '211', 'Tapesco');
INSERT INTO `distrito` VALUES ('21104', '211', 'Guadalupe');
INSERT INTO `distrito` VALUES ('21105', '211', 'Palmira');
INSERT INTO `distrito` VALUES ('21106', '211', 'Zapote');
INSERT INTO `distrito` VALUES ('21107', '211', 'Brisas');
INSERT INTO `distrito` VALUES ('21201', '212', 'Sarchí Norte');
INSERT INTO `distrito` VALUES ('21202', '212', 'Sarchí Sur');
INSERT INTO `distrito` VALUES ('21203', '212', 'Toro Amarillo');
INSERT INTO `distrito` VALUES ('21204', '212', 'San Pedro');
INSERT INTO `distrito` VALUES ('21205', '212', 'Rodríguez');
INSERT INTO `distrito` VALUES ('21301', '213', 'Upala');
INSERT INTO `distrito` VALUES ('21302', '213', 'Aguas Claras');
INSERT INTO `distrito` VALUES ('21303', '213', 'San José (Pizote)');
INSERT INTO `distrito` VALUES ('21304', '213', 'Bijagua');
INSERT INTO `distrito` VALUES ('21305', '213', 'Delicias');
INSERT INTO `distrito` VALUES ('21306', '213', 'Dos Ríos');
INSERT INTO `distrito` VALUES ('21307', '213', 'Yoliyllal');
INSERT INTO `distrito` VALUES ('21401', '214', 'Los Chiles');
INSERT INTO `distrito` VALUES ('21402', '214', 'Caño Negro');
INSERT INTO `distrito` VALUES ('21403', '214', 'El Amparo');
INSERT INTO `distrito` VALUES ('21404', '214', 'San Jorge');
INSERT INTO `distrito` VALUES ('21501', '215', 'San Rafael');
INSERT INTO `distrito` VALUES ('21502', '215', 'Buenavista');
INSERT INTO `distrito` VALUES ('21503', '215', 'Cote');
INSERT INTO `distrito` VALUES ('21504', '215', 'Katira');
INSERT INTO `distrito` VALUES ('30101', '301', 'Oriental');
INSERT INTO `distrito` VALUES ('30102', '301', 'Occidental');
INSERT INTO `distrito` VALUES ('30103', '301', 'Carmen');
INSERT INTO `distrito` VALUES ('30104', '301', 'San Nicolás');
INSERT INTO `distrito` VALUES ('30105', '301', 'Aguacaliente (San Francisco)');
INSERT INTO `distrito` VALUES ('30106', '301', 'Guadalupe (Arenilla)');
INSERT INTO `distrito` VALUES ('30107', '301', 'Corralillo');
INSERT INTO `distrito` VALUES ('30108', '301', 'Tierra Blanca');
INSERT INTO `distrito` VALUES ('30109', '301', 'Dulce Nombre');
INSERT INTO `distrito` VALUES ('30110', '301', 'Llano Grande');
INSERT INTO `distrito` VALUES ('30111', '301', 'Quebradilla');
INSERT INTO `distrito` VALUES ('30201', '302', 'Paraíso');
INSERT INTO `distrito` VALUES ('30202', '302', 'Santiago');
INSERT INTO `distrito` VALUES ('30203', '302', 'Orosi');
INSERT INTO `distrito` VALUES ('30204', '302', 'Cachí');
INSERT INTO `distrito` VALUES ('30205', '302', 'Llanos de Santa Lucía');
INSERT INTO `distrito` VALUES ('30301', '303', 'Tres Ríos');
INSERT INTO `distrito` VALUES ('30302', '303', 'San Diego');
INSERT INTO `distrito` VALUES ('30303', '303', 'San Juan');
INSERT INTO `distrito` VALUES ('30304', '303', 'San Rafael');
INSERT INTO `distrito` VALUES ('30305', '303', 'Concepción');
INSERT INTO `distrito` VALUES ('30306', '303', 'Dulce Nombre');
INSERT INTO `distrito` VALUES ('30307', '303', 'San Ramón');
INSERT INTO `distrito` VALUES ('30308', '303', 'Río Azul');
INSERT INTO `distrito` VALUES ('30401', '304', 'Juan Viñas');
INSERT INTO `distrito` VALUES ('30402', '304', 'Tucurrique');
INSERT INTO `distrito` VALUES ('30403', '304', 'Pejibaye');
INSERT INTO `distrito` VALUES ('30501', '305', 'Turrialba');
INSERT INTO `distrito` VALUES ('30502', '305', 'La Suiza');
INSERT INTO `distrito` VALUES ('30503', '305', 'Peralta');
INSERT INTO `distrito` VALUES ('30504', '305', 'Santa Cruz');
INSERT INTO `distrito` VALUES ('30505', '305', 'Santa Teresita');
INSERT INTO `distrito` VALUES ('30506', '305', 'Pavones');
INSERT INTO `distrito` VALUES ('30507', '305', 'Tuis');
INSERT INTO `distrito` VALUES ('30508', '305', 'Tayutic');
INSERT INTO `distrito` VALUES ('30509', '305', 'Santa Rosa');
INSERT INTO `distrito` VALUES ('30510', '305', 'Tres Equis');
INSERT INTO `distrito` VALUES ('30511', '305', 'La Isabel');
INSERT INTO `distrito` VALUES ('30512', '305', 'Chirripó');
INSERT INTO `distrito` VALUES ('30601', '306', 'Pacayas');
INSERT INTO `distrito` VALUES ('30602', '306', 'Cervantes');
INSERT INTO `distrito` VALUES ('30603', '306', 'Capellades');
INSERT INTO `distrito` VALUES ('30701', '307', 'San Rafael');
INSERT INTO `distrito` VALUES ('30702', '307', 'Cot');
INSERT INTO `distrito` VALUES ('30703', '307', 'Potrero Cerrado');
INSERT INTO `distrito` VALUES ('30704', '307', 'Cipreses');
INSERT INTO `distrito` VALUES ('30705', '307', 'Santa Rosa');
INSERT INTO `distrito` VALUES ('30801', '308', 'El Tejar');
INSERT INTO `distrito` VALUES ('30802', '308', 'San Isidro');
INSERT INTO `distrito` VALUES ('30803', '308', 'Tobosi');
INSERT INTO `distrito` VALUES ('30804', '308', 'Patio de Agua');
INSERT INTO `distrito` VALUES ('40101', '401', 'Heredia');
INSERT INTO `distrito` VALUES ('40102', '401', 'Mercedes');
INSERT INTO `distrito` VALUES ('40103', '401', 'San Francisco');
INSERT INTO `distrito` VALUES ('40104', '401', 'Ulloa');
INSERT INTO `distrito` VALUES ('40105', '401', 'Varablanca');
INSERT INTO `distrito` VALUES ('40201', '402', 'Barva');
INSERT INTO `distrito` VALUES ('40202', '402', 'San Pedro');
INSERT INTO `distrito` VALUES ('40203', '402', 'San Pablo');
INSERT INTO `distrito` VALUES ('40204', '402', 'San Roque');
INSERT INTO `distrito` VALUES ('40205', '402', 'Santa Lucía');
INSERT INTO `distrito` VALUES ('40206', '402', 'San José de la Montaña');
INSERT INTO `distrito` VALUES ('40301', '403', 'Santo Domingo');
INSERT INTO `distrito` VALUES ('40302', '403', 'San Vicente');
INSERT INTO `distrito` VALUES ('40303', '403', 'San Miguel');
INSERT INTO `distrito` VALUES ('40304', '403', 'Paracito');
INSERT INTO `distrito` VALUES ('40305', '403', 'Santo Tomás');
INSERT INTO `distrito` VALUES ('40306', '403', 'Santa Rosa');
INSERT INTO `distrito` VALUES ('40307', '403', 'Tures');
INSERT INTO `distrito` VALUES ('40308', '403', 'Para');
INSERT INTO `distrito` VALUES ('40401', '404', 'Santa Bárbara');
INSERT INTO `distrito` VALUES ('40402', '404', 'San Pedro');
INSERT INTO `distrito` VALUES ('40403', '404', 'San Juan');
INSERT INTO `distrito` VALUES ('40404', '404', 'Jesús');
INSERT INTO `distrito` VALUES ('40405', '404', 'Santo Domingo');
INSERT INTO `distrito` VALUES ('40406', '404', 'Puraba');
INSERT INTO `distrito` VALUES ('40501', '405', 'San Rafael');
INSERT INTO `distrito` VALUES ('40502', '405', 'San Josécito');
INSERT INTO `distrito` VALUES ('40503', '405', 'Santiago');
INSERT INTO `distrito` VALUES ('40504', '405', 'Los Ángeles');
INSERT INTO `distrito` VALUES ('40505', '405', 'Concepción');
INSERT INTO `distrito` VALUES ('40601', '406', 'San Isidro');
INSERT INTO `distrito` VALUES ('40602', '406', 'San José');
INSERT INTO `distrito` VALUES ('40603', '406', 'Concepción');
INSERT INTO `distrito` VALUES ('40604', '406', 'San Francisco');
INSERT INTO `distrito` VALUES ('40701', '407', 'San Antonio');
INSERT INTO `distrito` VALUES ('40702', '407', 'La Ribera');
INSERT INTO `distrito` VALUES ('40703', '407', 'La Asunción');
INSERT INTO `distrito` VALUES ('40801', '408', 'San Joaquín de Flores');
INSERT INTO `distrito` VALUES ('40802', '408', 'Barrantes');
INSERT INTO `distrito` VALUES ('40803', '408', 'Llorente');
INSERT INTO `distrito` VALUES ('40901', '409', 'San Pablo');
INSERT INTO `distrito` VALUES ('40902', '409', 'Rincón de Sabanilla');
INSERT INTO `distrito` VALUES ('41001', '410', 'Puerto Viejo');
INSERT INTO `distrito` VALUES ('41002', '410', 'La Virgen');
INSERT INTO `distrito` VALUES ('41003', '410', 'Horquetas');
INSERT INTO `distrito` VALUES ('41004', '410', 'Llanuras del Gaspar');
INSERT INTO `distrito` VALUES ('41005', '410', 'Cureña');
INSERT INTO `distrito` VALUES ('50101', '501', 'Liberia');
INSERT INTO `distrito` VALUES ('50102', '501', 'Cañas Dulces');
INSERT INTO `distrito` VALUES ('50103', '501', 'Mayorga');
INSERT INTO `distrito` VALUES ('50104', '501', 'Nacascolo');
INSERT INTO `distrito` VALUES ('50105', '501', 'Curubande');
INSERT INTO `distrito` VALUES ('50201', '502', 'Nicoya');
INSERT INTO `distrito` VALUES ('50202', '502', 'Mansion');
INSERT INTO `distrito` VALUES ('50203', '502', 'San Antonio');
INSERT INTO `distrito` VALUES ('50204', '502', 'Quebrada Honda');
INSERT INTO `distrito` VALUES ('50205', '502', 'Samara');
INSERT INTO `distrito` VALUES ('50206', '502', 'Nosara');
INSERT INTO `distrito` VALUES ('50207', '502', 'Belén de Nosarita');
INSERT INTO `distrito` VALUES ('50301', '503', 'Santa Cruz');
INSERT INTO `distrito` VALUES ('50302', '503', 'Bolson');
INSERT INTO `distrito` VALUES ('50303', '503', 'Veintisiete de Abril');
INSERT INTO `distrito` VALUES ('50304', '503', 'Tempate');
INSERT INTO `distrito` VALUES ('50305', '503', 'Cartagena');
INSERT INTO `distrito` VALUES ('50306', '503', 'Cuajiniquil');
INSERT INTO `distrito` VALUES ('50307', '503', 'Diria');
INSERT INTO `distrito` VALUES ('50308', '503', 'Cabo Velas');
INSERT INTO `distrito` VALUES ('50309', '503', 'Tamarindo');
INSERT INTO `distrito` VALUES ('50401', '504', 'Bagaces');
INSERT INTO `distrito` VALUES ('50402', '504', 'Fortuna');
INSERT INTO `distrito` VALUES ('50403', '504', 'Mogote');
INSERT INTO `distrito` VALUES ('50404', '504', 'Río Naranjo');
INSERT INTO `distrito` VALUES ('50501', '505', 'Filadelfia');
INSERT INTO `distrito` VALUES ('50502', '505', 'Palmira');
INSERT INTO `distrito` VALUES ('50503', '505', 'Sardinal');
INSERT INTO `distrito` VALUES ('50504', '505', 'Belén');
INSERT INTO `distrito` VALUES ('50601', '506', 'Cañas');
INSERT INTO `distrito` VALUES ('50602', '506', 'Palmira');
INSERT INTO `distrito` VALUES ('50603', '506', 'San Miguel');
INSERT INTO `distrito` VALUES ('50604', '506', 'Bebedero');
INSERT INTO `distrito` VALUES ('50605', '506', 'Porozal');
INSERT INTO `distrito` VALUES ('50701', '507', 'Juntas');
INSERT INTO `distrito` VALUES ('50702', '507', 'Sierra');
INSERT INTO `distrito` VALUES ('50703', '507', 'San Juan');
INSERT INTO `distrito` VALUES ('50704', '507', 'Colorado');
INSERT INTO `distrito` VALUES ('50801', '508', 'Tilarán');
INSERT INTO `distrito` VALUES ('50802', '508', 'Quebrada Grande');
INSERT INTO `distrito` VALUES ('50803', '508', 'Tronadora');
INSERT INTO `distrito` VALUES ('50804', '508', 'Santa Rosa');
INSERT INTO `distrito` VALUES ('50805', '508', 'Líbano');
INSERT INTO `distrito` VALUES ('50806', '508', 'Tierras Morenas');
INSERT INTO `distrito` VALUES ('50807', '508', 'Arenal');
INSERT INTO `distrito` VALUES ('50901', '509', 'Carmona');
INSERT INTO `distrito` VALUES ('50902', '509', 'Santa Rita');
INSERT INTO `distrito` VALUES ('50903', '509', 'Zapotal');
INSERT INTO `distrito` VALUES ('50904', '509', 'San Pablo');
INSERT INTO `distrito` VALUES ('50905', '509', 'Porvenir');
INSERT INTO `distrito` VALUES ('50906', '509', 'Bejuco');
INSERT INTO `distrito` VALUES ('51001', '510', 'La Cruz');
INSERT INTO `distrito` VALUES ('51002', '510', 'Santa Cecilia');
INSERT INTO `distrito` VALUES ('51003', '510', 'Garita');
INSERT INTO `distrito` VALUES ('51004', '510', 'Santa Elena');
INSERT INTO `distrito` VALUES ('51101', '511', 'Hojancha');
INSERT INTO `distrito` VALUES ('51102', '511', 'Monte Romo');
INSERT INTO `distrito` VALUES ('51103', '511', 'Puerto Carrillo');
INSERT INTO `distrito` VALUES ('51104', '511', 'Huacas');
INSERT INTO `distrito` VALUES ('60101', '601', 'Puntarenas');
INSERT INTO `distrito` VALUES ('60102', '601', 'Pitahaya');
INSERT INTO `distrito` VALUES ('60103', '601', 'Chomes');
INSERT INTO `distrito` VALUES ('60104', '601', 'Lepanto');
INSERT INTO `distrito` VALUES ('60105', '601', 'Paquera');
INSERT INTO `distrito` VALUES ('60106', '601', 'Manzanillo');
INSERT INTO `distrito` VALUES ('60107', '601', 'Guacimal');
INSERT INTO `distrito` VALUES ('60108', '601', 'Barranca');
INSERT INTO `distrito` VALUES ('60109', '601', 'Monte Verde');
INSERT INTO `distrito` VALUES ('60110', '601', 'Isla del Coco');
INSERT INTO `distrito` VALUES ('60111', '601', 'Cobano');
INSERT INTO `distrito` VALUES ('60112', '601', 'Chacarita');
INSERT INTO `distrito` VALUES ('60113', '601', 'Chira');
INSERT INTO `distrito` VALUES ('60114', '601', 'Acapulco');
INSERT INTO `distrito` VALUES ('60115', '601', 'El Roble');
INSERT INTO `distrito` VALUES ('60116', '601', 'Arancibia');
INSERT INTO `distrito` VALUES ('60201', '602', 'Espiritu Santo');
INSERT INTO `distrito` VALUES ('60202', '602', 'San Juan Grande');
INSERT INTO `distrito` VALUES ('60203', '602', 'Macacona');
INSERT INTO `distrito` VALUES ('60204', '602', 'San Rafael');
INSERT INTO `distrito` VALUES ('60205', '602', 'San Jerónimo');
INSERT INTO `distrito` VALUES ('60301', '603', 'Buenos Aires');
INSERT INTO `distrito` VALUES ('60302', '603', 'Volcan');
INSERT INTO `distrito` VALUES ('60303', '603', 'Potrero Grande');
INSERT INTO `distrito` VALUES ('60304', '603', 'Boruca');
INSERT INTO `distrito` VALUES ('60305', '603', 'Pilas');
INSERT INTO `distrito` VALUES ('60306', '603', 'Colinas');
INSERT INTO `distrito` VALUES ('60307', '603', 'Changena');
INSERT INTO `distrito` VALUES ('60308', '603', 'Briolley');
INSERT INTO `distrito` VALUES ('60309', '603', 'Brunka');
INSERT INTO `distrito` VALUES ('60401', '604', 'Miramar');
INSERT INTO `distrito` VALUES ('60402', '604', 'La Unión');
INSERT INTO `distrito` VALUES ('60403', '604', 'San Isidro');
INSERT INTO `distrito` VALUES ('60501', '605', 'Puerto Cortes');
INSERT INTO `distrito` VALUES ('60502', '605', 'Palmar');
INSERT INTO `distrito` VALUES ('60503', '605', 'Sierpe');
INSERT INTO `distrito` VALUES ('60504', '605', 'Bahia Ballena');
INSERT INTO `distrito` VALUES ('60505', '605', 'Piedras Blancas');
INSERT INTO `distrito` VALUES ('60601', '606', 'Quepos');
INSERT INTO `distrito` VALUES ('60602', '606', 'Savegre');
INSERT INTO `distrito` VALUES ('60603', '606', 'Naranjito');
INSERT INTO `distrito` VALUES ('60701', '607', 'Golfito');
INSERT INTO `distrito` VALUES ('60702', '607', 'Puerto Jiménez');
INSERT INTO `distrito` VALUES ('60703', '607', 'Guaycara');
INSERT INTO `distrito` VALUES ('60704', '607', 'Pavon');
INSERT INTO `distrito` VALUES ('60801', '608', 'San Vito');
INSERT INTO `distrito` VALUES ('60802', '608', 'Sabalito');
INSERT INTO `distrito` VALUES ('60803', '608', 'Aguabuena');
INSERT INTO `distrito` VALUES ('60804', '608', 'Limóncito');
INSERT INTO `distrito` VALUES ('60805', '608', 'Pittier');
INSERT INTO `distrito` VALUES ('60901', '609', 'Parrita');
INSERT INTO `distrito` VALUES ('61001', '610', 'Corredor');
INSERT INTO `distrito` VALUES ('61002', '610', 'La Cuesta');
INSERT INTO `distrito` VALUES ('61003', '610', 'Canoas');
INSERT INTO `distrito` VALUES ('61004', '610', 'Laurel');
INSERT INTO `distrito` VALUES ('61101', '611', 'Jacó');
INSERT INTO `distrito` VALUES ('61102', '611', 'Tarcoles');
INSERT INTO `distrito` VALUES ('70101', '701', 'Limón');
INSERT INTO `distrito` VALUES ('70102', '701', 'Valle La Estrella');
INSERT INTO `distrito` VALUES ('70103', '701', 'Río Blanco');
INSERT INTO `distrito` VALUES ('70104', '701', 'Matama');
INSERT INTO `distrito` VALUES ('70201', '702', 'Guapiles');
INSERT INTO `distrito` VALUES ('70202', '702', 'Jiménez');
INSERT INTO `distrito` VALUES ('70203', '702', 'Rita');
INSERT INTO `distrito` VALUES ('70204', '702', 'Roxana');
INSERT INTO `distrito` VALUES ('70205', '702', 'Cariari');
INSERT INTO `distrito` VALUES ('70206', '702', 'Colorado');
INSERT INTO `distrito` VALUES ('70301', '703', 'Siquirres');
INSERT INTO `distrito` VALUES ('70302', '703', 'Pacuarito');
INSERT INTO `distrito` VALUES ('70303', '703', 'Florida');
INSERT INTO `distrito` VALUES ('70304', '703', 'Germania');
INSERT INTO `distrito` VALUES ('70305', '703', 'Cairo');
INSERT INTO `distrito` VALUES ('70306', '703', 'Alegria');
INSERT INTO `distrito` VALUES ('70401', '704', 'Bratsi');
INSERT INTO `distrito` VALUES ('70402', '704', 'Sixaola');
INSERT INTO `distrito` VALUES ('70403', '704', 'Cahuita');
INSERT INTO `distrito` VALUES ('70404', '704', 'Telire');
INSERT INTO `distrito` VALUES ('70501', '705', 'Matina');
INSERT INTO `distrito` VALUES ('70502', '705', 'Battan');
INSERT INTO `distrito` VALUES ('70503', '705', 'Carrandi');
INSERT INTO `distrito` VALUES ('70601', '706', 'Guácimo');
INSERT INTO `distrito` VALUES ('70602', '706', 'Mercedes');
INSERT INTO `distrito` VALUES ('70603', '706', 'Pocora');
INSERT INTO `distrito` VALUES ('70604', '706', 'Río Jiménez');
INSERT INTO `distrito` VALUES ('70605', '706', 'Duacari');

-- ----------------------------
-- Table structure for especie
-- ----------------------------
DROP TABLE IF EXISTS `especie`;
CREATE TABLE `especie` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of especie
-- ----------------------------
INSERT INTO `especie` VALUES ('1', 'Endivia');
INSERT INTO `especie` VALUES ('2', 'Intybus');
INSERT INTO `especie` VALUES ('3', 'Cardunculus');
INSERT INTO `especie` VALUES ('4', 'Scolymus');
INSERT INTO `especie` VALUES ('5', 'Lactuca sativa L');
INSERT INTO `especie` VALUES ('6', 'Scorzonera hispanica L');
INSERT INTO `especie` VALUES ('7', 'Tragopogon porrifolius L');
INSERT INTO `especie` VALUES ('8', 'Endivia');
INSERT INTO `especie` VALUES ('9', 'Intybus');
INSERT INTO `especie` VALUES ('10', 'Cardunculus');
INSERT INTO `especie` VALUES ('11', 'Scolymus');
INSERT INTO `especie` VALUES ('12', 'Lactuca sativa L');
INSERT INTO `especie` VALUES ('13', 'Scorzonera hispanica L');
INSERT INTO `especie` VALUES ('14', 'Tragopogon porrifolius L');

-- ----------------------------
-- Table structure for especieXgenero
-- ----------------------------
DROP TABLE IF EXISTS `especieXgenero`;
CREATE TABLE `especieXgenero` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdEspecie` int(10) unsigned NOT NULL,
  `IdFamiliaXgenero` int(10) unsigned NOT NULL,
  `Autoria` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Sinonimias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_especieXgenero_especie1_idx` (`IdEspecie`),
  KEY `fk_especieXgenero_familiaXgenero1_idx` (`IdFamiliaXgenero`),
  CONSTRAINT `fk_especieXgenero_especie1` FOREIGN KEY (`IdEspecie`) REFERENCES `especie` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_especieXgenero_familiaXgenero1` FOREIGN KEY (`IdFamiliaXgenero`) REFERENCES `familiaXgenero` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of especieXgenero
-- ----------------------------
INSERT INTO `especieXgenero` VALUES ('1', '1', '1', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('2', '2', '1', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('3', '3', '2', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('4', '4', '2', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('5', '5', '3', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('6', '6', '4', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('7', '7', '5', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('8', '1', '1', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('9', '2', '1', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('10', '3', '2', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('11', '4', '2', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('12', '5', '3', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('13', '6', '4', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('14', '7', '5', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('15', '8', '17', 'Autoria', 'Sinonimias');
INSERT INTO `especieXgenero` VALUES ('16', '4', '2', 'Autoria', 'Sinonimias');

-- ----------------------------
-- Table structure for familia
-- ----------------------------
DROP TABLE IF EXISTS `familia`;
CREATE TABLE `familia` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Enabled` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of familia
-- ----------------------------
INSERT INTO `familia` VALUES ('1', 'Asteraceae', '');
INSERT INTO `familia` VALUES ('2', 'Acanthaceae', '');
INSERT INTO `familia` VALUES ('3', 'Aizoaceae', '');
INSERT INTO `familia` VALUES ('4', 'Alliaceae', '');
INSERT INTO `familia` VALUES ('5', 'Amaranthaceae', '');
INSERT INTO `familia` VALUES ('6', 'Amaryllidaceae', '');
INSERT INTO `familia` VALUES ('7', 'Asteraceae', '');
INSERT INTO `familia` VALUES ('8', 'Acanthaceae', '');
INSERT INTO `familia` VALUES ('9', 'Aizoaceae', '');
INSERT INTO `familia` VALUES ('10', 'Alliaceae', '');
INSERT INTO `familia` VALUES ('11', 'Amaranthaceae', '');
INSERT INTO `familia` VALUES ('12', 'Amaryllidaceae', '');
INSERT INTO `familia` VALUES ('13', 'cricri', '');

-- ----------------------------
-- Table structure for familiaXgenero
-- ----------------------------
DROP TABLE IF EXISTS `familiaXgenero`;
CREATE TABLE `familiaXgenero` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IdGenero` int(10) unsigned NOT NULL,
  `IdFamilia` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_familiaXgenero_genero1_idx` (`IdGenero`),
  KEY `fk_familiaXgenero_familia1_idx` (`IdFamilia`),
  CONSTRAINT `fk_familiaXgenero_familia1` FOREIGN KEY (`IdFamilia`) REFERENCES `familia` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_familiaXgenero_genero1` FOREIGN KEY (`IdGenero`) REFERENCES `genero` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of familiaXgenero
-- ----------------------------
INSERT INTO `familiaXgenero` VALUES ('1', '1', '1');
INSERT INTO `familiaXgenero` VALUES ('2', '2', '1');
INSERT INTO `familiaXgenero` VALUES ('3', '3', '1');
INSERT INTO `familiaXgenero` VALUES ('4', '4', '1');
INSERT INTO `familiaXgenero` VALUES ('5', '5', '5');
INSERT INTO `familiaXgenero` VALUES ('6', '1', '1');
INSERT INTO `familiaXgenero` VALUES ('7', '2', '1');
INSERT INTO `familiaXgenero` VALUES ('8', '3', '1');
INSERT INTO `familiaXgenero` VALUES ('9', '4', '1');
INSERT INTO `familiaXgenero` VALUES ('10', '5', '1');
INSERT INTO `familiaXgenero` VALUES ('11', '1', '7');
INSERT INTO `familiaXgenero` VALUES ('12', '2', '7');
INSERT INTO `familiaXgenero` VALUES ('13', '3', '7');
INSERT INTO `familiaXgenero` VALUES ('14', '4', '7');
INSERT INTO `familiaXgenero` VALUES ('15', '5', '7');
INSERT INTO `familiaXgenero` VALUES ('16', '6', '2');
INSERT INTO `familiaXgenero` VALUES ('17', '6', '8');

-- ----------------------------
-- Table structure for fertilidad
-- ----------------------------
DROP TABLE IF EXISTS `fertilidad`;
CREATE TABLE `fertilidad` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Enabled` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fertilidad
-- ----------------------------

-- ----------------------------
-- Table structure for fertilidadXmuestra
-- ----------------------------
DROP TABLE IF EXISTS `fertilidadXmuestra`;
CREATE TABLE `fertilidadXmuestra` (
  `IdMuestra` int(10) unsigned NOT NULL,
  `IdFertilidad` int(11) NOT NULL,
  KEY `fk_fertilidadXmuestra_muestra1_idx` (`IdMuestra`),
  KEY `fk_fertilidadXmuestra_Fertilidad1_idx` (`IdFertilidad`),
  CONSTRAINT `fk_fertilidadXmuestra_Fertilidad1` FOREIGN KEY (`IdFertilidad`) REFERENCES `fertilidad` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fertilidadXmuestra_muestra1` FOREIGN KEY (`IdMuestra`) REFERENCES `muestra` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of fertilidadXmuestra
-- ----------------------------

-- ----------------------------
-- Table structure for ficha_historial
-- ----------------------------
DROP TABLE IF EXISTS `ficha_historial`;
CREATE TABLE `ficha_historial` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProvinciaId` int(11) NOT NULL,
  `CantonId` int(11) NOT NULL,
  `DistritoId` int(11) NOT NULL,
  `Localidad` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Latitud` int(11) NOT NULL,
  `Longitud` int(11) NOT NULL,
  `Altitud` int(11) NOT NULL,
  `DeterminadorId` int(11) NOT NULL,
  `FechaIngreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FechaColecto` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ficha_historial
-- ----------------------------

-- ----------------------------
-- Table structure for genero
-- ----------------------------
DROP TABLE IF EXISTS `genero`;
CREATE TABLE `genero` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of genero
-- ----------------------------
INSERT INTO `genero` VALUES ('1', 'Cichorium');
INSERT INTO `genero` VALUES ('2', 'Cynara');
INSERT INTO `genero` VALUES ('3', 'Lactuca');
INSERT INTO `genero` VALUES ('4', 'Scorzonera');
INSERT INTO `genero` VALUES ('5', 'Tragopogon');
INSERT INTO `genero` VALUES ('6', 'Cichorium');
INSERT INTO `genero` VALUES ('7', 'Cynara');
INSERT INTO `genero` VALUES ('8', 'Lactuca');
INSERT INTO `genero` VALUES ('9', 'Scorzonera');
INSERT INTO `genero` VALUES ('10', 'Tragopogon');
INSERT INTO `genero` VALUES ('11', 'Criss');

-- ----------------------------
-- Table structure for Imagen
-- ----------------------------
DROP TABLE IF EXISTS `Imagen`;
CREATE TABLE `Imagen` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdMuestra` int(10) unsigned NOT NULL,
  `Nombre` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `Url` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_Imagen_muestra1_idx` (`IdMuestra`),
  CONSTRAINT `fk_Imagen_muestra1` FOREIGN KEY (`IdMuestra`) REFERENCES `muestra` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of Imagen
-- ----------------------------

-- ----------------------------
-- Table structure for muestra
-- ----------------------------
DROP TABLE IF EXISTS `muestra`;
CREATE TABLE `muestra` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `IdDistrito` int(10) unsigned NOT NULL,
  `IdColector` int(11) NOT NULL,
  `IdValidador` int(11) NOT NULL,
  `IdEspecieXgenero` int(11) NOT NULL,
  `Localidad` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Latitud` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Longitud` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Altitud` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FechaIngreso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `FechaColecto` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nota` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Pendiente` tinyint(1) NOT NULL DEFAULT '1',
  `codigo` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_muestra_distrito1_idx` (`IdDistrito`),
  KEY `fk_muestra_colector1_idx` (`IdColector`),
  KEY `fk_muestra_validador1_idx` (`IdValidador`),
  KEY `fk_muestra_especieXgenero1_idx` (`IdEspecieXgenero`),
  CONSTRAINT `fk_muestra_colector1` FOREIGN KEY (`IdColector`) REFERENCES `colector` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestra_distrito1` FOREIGN KEY (`IdDistrito`) REFERENCES `distrito` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestra_especieXgenero1` FOREIGN KEY (`IdEspecieXgenero`) REFERENCES `especieXgenero` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_muestra_validador1` FOREIGN KEY (`IdValidador`) REFERENCES `validador` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of muestra
-- ----------------------------
INSERT INTO `muestra` VALUES ('4', '30801', '1', '1', '5', 'localidad de prueba', '12', '12', '12', '2017-05-14 13:19:38', '2017-05-14 13:19:38', 'nota para el registro primero', '0', null);
INSERT INTO `muestra` VALUES ('5', '30802', '2', '2', '7', 'probando nuevo campo', '12', '12', '12', '2017-05-14 13:51:23', '2017-05-14 13:51:23', 'otra nota para el ultimo registro', '1', null);
INSERT INTO `muestra` VALUES ('6', '11103', '2', '1', '1', 'test', '11', '11', '11', '2017-06-01 15:51:39', '2002-10-10 00:00:00', 'test', '0', null);

-- ----------------------------
-- Table structure for provincia
-- ----------------------------
DROP TABLE IF EXISTS `provincia`;
CREATE TABLE `provincia` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of provincia
-- ----------------------------
INSERT INTO `provincia` VALUES ('1', 'San José');
INSERT INTO `provincia` VALUES ('2', 'Alajuela');
INSERT INTO `provincia` VALUES ('3', 'Cartago');
INSERT INTO `provincia` VALUES ('4', 'Heredia');
INSERT INTO `provincia` VALUES ('5', 'Guancaste');
INSERT INTO `provincia` VALUES ('6', 'Puntarenas');
INSERT INTO `provincia` VALUES ('7', 'Limón');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Clave` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Rol` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('1', 'tavo@gmail.com', 'test', 'Gustavo Granados', 'admin');
INSERT INTO `usuario` VALUES ('2', 'test@yahoo.com', '123', 'Paola Solia', 'validador');
INSERT INTO `usuario` VALUES ('3', 'yatest@test.com', 'sdsfs', 'Pedro Quesada', 'colector');
INSERT INTO `usuario` VALUES ('4', 'mike@test.com', '23232323', 'Pepe Figueres', 'colector');
INSERT INTO `usuario` VALUES ('5', 'felipe_granados@hotmail.com', '241079241079', 'Felipe Granados Vargas', 'validador');
INSERT INTO `usuario` VALUES ('6', 'santiago@gmail.com', 'asdfasdfasf', 'Santi Granados Vargas', 'admin');
INSERT INTO `usuario` VALUES ('7', 'test@test.com', 'dfasdf', 'Test Test', 'validador');
INSERT INTO `usuario` VALUES ('8', 'tavo@gmail.com222', 'test222', '2222222', 'admin');

-- ----------------------------
-- Table structure for validador
-- ----------------------------
DROP TABLE IF EXISTS `validador`;
CREATE TABLE `validador` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Enabled` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of validador
-- ----------------------------
INSERT INTO `validador` VALUES ('1', 'Yulian Ulloa Porras', '');
INSERT INTO `validador` VALUES ('2', 'Paola Solis', '');
INSERT INTO `validador` VALUES ('3', 'Yulian Ulloa Porras', '');
INSERT INTO `validador` VALUES ('4', 'sdfaf', '');

-- ----------------------------
-- Procedure structure for borrarFamilia
-- ----------------------------
DROP PROCEDURE IF EXISTS `borrarFamilia`;
DELIMITER ;;
CREATE PROCEDURE `borrarFamilia`(pNombre varchar(100))
begin
    declare id_familia int;
    declare Nombre varchar(100) default "" ;
    select id from familia f where (f.Nombre = pNombre) INTO id_familia;
    if (id_familia is not null)  then
        delete from familia where id=id_familia;
        set Nombre = pNombre;
    end if;
    select Nombre;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for borrarFamiliaGenero
-- ----------------------------
DROP PROCEDURE IF EXISTS `borrarFamiliaGenero`;
DELIMITER ;;
CREATE PROCEDURE `borrarFamiliaGenero`(pNombre varchar(100))
begin
    declare id_genero int;
    declare id_familiaxgenero int;
    declare Nombre varchar(100) default "" ;
    select g.id from genero g where (g.Nombre = pNombre) INTO id_genero;
    if (id_genero is not null)  then
        -- delete from especiexgenero where id=id_genero;
        -- delete from familiaxgenero where id=id_genero;
        delete from genero where id=id_genero;
        set Nombre = pNombre;
    end if;
    select Nombre;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for borrarFamiliaGeneroEspecie
-- ----------------------------
DROP PROCEDURE IF EXISTS `borrarFamiliaGeneroEspecie`;
DELIMITER ;;
CREATE PROCEDURE `borrarFamiliaGeneroEspecie`(pNombre varchar(100))
begin
    declare id_especie int;
    declare id_familiaxgenero int;
    declare Nombre varchar(100) default "" ;
    select e.id from especie e where (e.Nombre = pNombre) INTO id_especie;
    if (id_especie is not null)  then
        -- delete from especiexgenero where id=id_genero;
        -- delete from familiaxgenero where id=id_genero;
        delete from especie where id=id_especie;
        set Nombre = pNombre;
    end if;
    select Nombre;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for buscarFamilia
-- ----------------------------
DROP PROCEDURE IF EXISTS `buscarFamilia`;
DELIMITER ;;
CREATE PROCEDURE `buscarFamilia`()
begin
	select Nombre from familia ;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for buscarFamilia_Genero
-- ----------------------------
DROP PROCEDURE IF EXISTS `buscarFamilia_Genero`;
DELIMITER ;;
CREATE PROCEDURE `buscarFamilia_Genero`(nombreFamilia varchar(126))
begin
	select ge.Nombre from genero ge
	inner join familiaXgenero fxg on fxg.IdGenero = ge.Id
	inner join familia fa on fa.Id = fxg.IdFamilia
	where  fa.Nombre = nombreFamilia;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for buscarFamilia_Genero_Especie
-- ----------------------------
DROP PROCEDURE IF EXISTS `buscarFamilia_Genero_Especie`;
DELIMITER ;;
CREATE PROCEDURE `buscarFamilia_Genero_Especie`(nombreFamilia varchar(126),nombreGenero varchar(126))
begin
	select es.Nombre from especie es
	inner join especieXgenero exg on exg.IdEspecie=es.Id
	inner join familiaXgenero fxg on fxg.Id=exg.IdFamiliaXgenero
	inner join familia fa on fa.Id= fxg.IdFamilia
	inner join genero ge on ge.Id = fxg.IdGenero
	where ge.Nombre=nombreGenero and fa.Nombre=nombreFamilia;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for buscarFamilia_Genero_Especie_Codigo
-- ----------------------------
DROP PROCEDURE IF EXISTS `buscarFamilia_Genero_Especie_Codigo`;
DELIMITER ;;
CREATE PROCEDURE `buscarFamilia_Genero_Especie_Codigo`(nombreFamilia varchar(126),nombreGenero varchar(126),nombreEspecie varchar(126))
begin
	select mu.codigo from muestra mu
	inner join especieXgenero exg on exg.Id=mu.IdEspecieXgenero
	inner join familiaXgenero fxg on fxg.Id= exg.IdFamiliaXgenero
	inner join familia fa on fa.Id= fxg.IdFamilia
	inner join especie es on es.Id=exg.IdEspecie
	inner join genero ge on ge.Id = fxg.IdGenero
	where fa.Nombre=nombreFamilia  and ge.Nombre=nombreGenero  and es.Nombre=nombreEspecie;

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for cantones
-- ----------------------------
DROP PROCEDURE IF EXISTS `cantones`;
DELIMITER ;;
CREATE PROCEDURE `cantones`(nombre varchar(50))
BEGIN

	select c.nombre from canton c
	inner join provincia p On p.Id=c.provinciaId
    where p.Nombre = Nombre;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for colectores
-- ----------------------------
DROP PROCEDURE IF EXISTS `colectores`;
DELIMITER ;;
CREATE PROCEDURE `colectores`()
BEGIN

	select * from colector;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for colector_validate
-- ----------------------------
DROP PROCEDURE IF EXISTS `colector_validate`;
DELIMITER ;;
CREATE PROCEDURE `colector_validate`(IN pId INT, IN pName VARCHAR(100), IN pStatus tinyint)
BEGIN

	if (pId is null or pId = 0) then

		insert into colector(Nombre,Enabled) values(pName, pStatus);
		set pId = LAST_INSERT_ID();

	else

		update colector c set
		c.Nombre = pName,
		c.Enabled = pStatus
		where c.Id = pId;

	end if;

	select * from colector c where c.Id = pId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for distritos
-- ----------------------------
DROP PROCEDURE IF EXISTS `distritos`;
DELIMITER ;;
CREATE PROCEDURE `distritos`(nombreP varchar(50), nombreC varchar(50))
BEGIN

	select d.Nombre from distrito d
	inner join canton c On c.Id=d.CantonId
	inner join provincia p On p.Id=c.provinciaId
    where p.Nombre = nombreP and c.Nombre=nombreC;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for families
-- ----------------------------
DROP PROCEDURE IF EXISTS `families`;
DELIMITER ;;
CREATE PROCEDURE `families`()
BEGIN

	select * from familia;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for fertilidad
-- ----------------------------
DROP PROCEDURE IF EXISTS `fertilidad`;
DELIMITER ;;
CREATE PROCEDURE `fertilidad`()
BEGIN

	select Nombre from fertilidad ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for genres
-- ----------------------------
DROP PROCEDURE IF EXISTS `genres`;
DELIMITER ;;
CREATE PROCEDURE `genres`()
BEGIN

	select * from genero;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for getFamilias
-- ----------------------------
DROP PROCEDURE IF EXISTS `getFamilias`;
DELIMITER ;;
CREATE PROCEDURE `getFamilias`()
BEGIN

	select * from familia;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for guardarFamilia
-- ----------------------------
DROP PROCEDURE IF EXISTS `guardarFamilia`;
DELIMITER ;;
CREATE PROCEDURE `guardarFamilia`(FamiliaNue varchar(100),FamiliaAnt varchar(100))
begin
    declare id_familia int;
    declare id_familiaAnt int;
    declare Nombre varchar(100) default "" ;
    set Nombre = "";
    select id  from familia f where (f.Nombre = FamiliaNue) INTO id_familia;
    if (id_familia is null)  then
        if (FamiliaAnt != "") then
            select id from familia f where (f.Nombre = FamiliaAnt) INTO id_familiaAnt;
            if (id_familiaAnt is not null)  then
                UPDATE familia SET nombre = FamiliaNue where (id = id_familiaAnt);
                set Nombre = FamiliaNue;
            end if;
        else
            insert into familia (nombre) values (FamiliaNue);
            set Nombre = FamiliaNue;
        end if;
    end if;
    select Nombre;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for guardarFamiliaGenero
-- ----------------------------
DROP PROCEDURE IF EXISTS `guardarFamiliaGenero`;
DELIMITER ;;
CREATE PROCEDURE `guardarFamiliaGenero`(generoNue varchar(100),generoAnt varchar(100),familia varchar(100))
begin
    declare id_familia int;
    declare id_genero int;
    declare id_generoAnt int;
    declare Nombre varchar(100) default "" ;
    select g.id from familia f
        inner join familiaxgenero fxg on fxg.idfamilia = f.id
        inner join genero g on fxg.idgenero = g.id
        where (g.Nombre = generoNue) and (f.Nombre = familia) INTO id_genero;
    if (id_genero is null)  then
        select f.id  from familia f where (f.Nombre = familia) INTO id_familia;
        if (id_familia is not null) then
            select g.id from genero g where (g.Nombre = generoNue) INTO id_genero;
            if (generoAnt != "") then
                select g.id from familia f
                    inner join familiaxgenero fxg on fxg.idfamilia = f.id
                    inner join genero g on fxg.idgenero = g.id
                    where (g.Nombre = generoAnt) INTO id_generoAnt;

                if (id_generoAnt is not null)  then
                    if (id_genero is null) then
                        insert into genero (nombre) values (generoNue);
                        SELECT @@identity AS id into id_genero;
                    end if;
                    -- actualizar id_genero especies por genero
                    insert into familiaxgenero (IdFamilia, IdGenero) values (id_familia,id_genero);
                    set Nombre = generoNue;
                end if;
            else
                if (id_genero is null) then
                    insert into genero (nombre) values (generoNue);
                    SELECT @@identity AS id into id_genero;
                end if;
                insert into familiaxgenero (IdFamilia, IdGenero) values (id_familia,id_genero);
                set Nombre = generoNue;
            end if;
        end if;
    end if;
    select Nombre as "Nombre";
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for guardarFamiliaGeneroEspecie
-- ----------------------------
DROP PROCEDURE IF EXISTS `guardarFamiliaGeneroEspecie`;
DELIMITER ;;
CREATE PROCEDURE `guardarFamiliaGeneroEspecie`(especieNue varchar(100),especieAnt varchar(100),familia varchar(100), genero varchar(100))
begin
    declare id_familia int;
    declare id_genero int;
    declare id_especie int;
    declare id_especieAnt int;
    declare Nombre varchar(100) default "" ;
    select e.id from familia f
        inner join familiaxgenero fxg on fxg.idfamilia = f.id
        inner join genero g on fxg.idgenero = g.id
        inner join especiexgenero exg on exg.idfamiliaxgenero = fxg.id
        inner join especie e on exg.idespecie = e.id
        where (g.Nombre = genero) and (f.Nombre = familia) and (e.Nombre = especieNue) INTO id_genero;
    if (id_especie is null)  then
        select fxg.id from familia f
                inner join familiaxgenero fxg on fxg.idfamilia = f.id
                inner join genero g on fxg.idgenero = g.id
                where (g.Nombre = genero) and (f.Nombre = familia) INTO id_familia;
        select g.id  from genero g where (g.Nombre = genero) INTO id_genero;
        if ((id_familia is not null) and (id_genero is not null)) then
            select e.id from especie e where (e.Nombre = especieNue) INTO id_especie;
            if (especieAnt != "") then
                select e.id from familia f
                    inner join familiaxgenero fxg on fxg.idfamilia = f.id
                    inner join genero g on fxg.idgenero = g.id
                    inner join especiexgenero exg on exg.idfamiliaxgenero = fxg.id
                    inner join especie e on exg.idespecie = e.id
                    where (g.Nombre = genero) and (f.Nombre = familia) and (e.Nombre = especieAnt) INTO id_especieAnt;

                if (id_especieAnt is not null)  then
                    if (id_especie is null) then
                        insert into especie (nombre) values (especieNue);
                        SELECT @@identity AS id into id_especie;
                    end if;
                    insert into especiexgenero (idfamiliaxgenero, IdEspecie,Autoria,Sinonimias) values (id_familia,id_especie,"","");
                    set Nombre = especieNue;
                end if;
            else
                if (id_especie is null) then
                    insert into especie (Nombre) values (especieNue);
                    SELECT @@identity AS id into id_especie;
                end if;
                insert into especiexgenero (idfamiliaxgenero, IdEspecie,Autoria,Sinonimias) values (id_familia,id_especie,"","");
                set Nombre = especieNue;
            end if;
        end if;
    end if;
    select Nombre as "Nombre";
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for ingresarMuestra
-- ----------------------------
DROP PROCEDURE IF EXISTS `ingresarMuestra`;
DELIMITER ;;
CREATE PROCEDURE `ingresarMuestra`(nombreFamilia varchar(126) ,nombreGenero varchar(126),
	nombreEspecie varchar(126), nombreValidador varchar(100), nombreColector varchar(100),
	nombreProvincia varchar(126),nombreCanton varchar(126), nombreDistrito varchar(126),
	pLocalidad varchar(500), pLatitud varchar(50), pLongitud varchar(50), pAltitud varchar(50), pNota varchar(500), pFecha datetime)
begin
	declare idDistrito int;
	declare idColector int;
	declare idValidador int;
	declare idEspecieXgenero int;


	select di.Id from distrito di
	inner join canton ca on ca.Id = di.CantonId
	inner join provincia pr on pr.Id=ca.ProvinciaId
	where pr.Nombre = nombreProvincia COLLATE utf8_unicode_ci and ca.Nombre=nombreCanton COLLATE utf8_unicode_ci and di.Nombre=nombreDistrito COLLATE utf8_unicode_ci limit 1 into idDistrito ;


	select Id from colector where Nombre = nombreColector COLLATE utf8_unicode_ci limit 1 into idColector;
	select Id from validador where Nombre = nombreValidador COLLATE utf8_unicode_ci limit 1 into idValidador;

	select exg.Id from especieXgenero exg
	inner join especie es on es.Id=exg.IdEspecie
	inner join familiaXgenero fxg on fxg.Id=exg.IdFamiliaXgenero
	inner join familia fa on fa.Id=fxg.IdFamilia
	inner join genero ge on ge.Id = fxg.IdGenero
	where fa.Nombre=nombreFamilia COLLATE utf8_unicode_ci and ge.Nombre=nombreGenero COLLATE utf8_unicode_ci and es.Nombre=nombreEspecie COLLATE utf8_unicode_ci limit 1 into idEspecieXgenero;

	select idDistrito, idColector, idValidador, idEspecieXgenero;
	IF (idDistrito is not null) and (idColector is not null) and (idValidador is not null) and (idEspecieXgenero is not null)
	Then
		insert into muestra(IdDistrito,IdColector,IdValidador,IdEspecieXgenero,Localidad,Latitud,Longitud,Altitud,FechaIngreso,
		FechaColecto,nota) values(idDistrito,idColector,idValidador,idEspecieXgenero,pLocalidad,pLatitud,pLongitud,pAltitud,
		CURRENT_TIMESTAMP,pFecha,pNota);
		Select 1 as resultado;

    end IF;


end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for mostrarMuestra
-- ----------------------------
DROP PROCEDURE IF EXISTS `mostrarMuestra`;
DELIMITER ;;
CREATE PROCEDURE `mostrarMuestra`(nombreFamilia varchar(126),nombreGenero varchar(126), nombreEspecie varchar(126), codigo varchar(45))
begin
	select  mu.codigo, fa.Nombre as "Familia", ge.Nombre as "Genero", es.Nombre as "Especie", pr.Nombre as "Provincia",ca.Nombre as "Canton", di.Nombre as "Distrito",mu.Localidad, mu.Nota,mu.Longitud,mu.Latitud,mu.Altitud,im.Url from muestra mu
	inner join especieXgenero exg on exg.Id=mu.IdEspecieXgenero
	inner join familiaXgenero fxg on fxg.Id= exg.IdFamiliaXgenero
	inner join familia fa on fa.Id= fxg.IdFamilia
	inner join especie es on es.Id=exg.IdEspecie
	inner join genero ge on ge.Id = fxg.IdGenero
	inner join imagen im on im.IdMuestra = mu.Id
	inner join distrito di on di.Id= mu.IdDistrito
	inner join canton ca on  ca.Id = di.CantonId
	inner join provincia pr on pr.Id= ca.ProvinciaId
	where fa.Nombre=nombreFamilia  and ge.Nombre=nombreGenero  and es.Nombre=nombreEspecie and mu.codigo=codigo;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for obtenerColector
-- ----------------------------
DROP PROCEDURE IF EXISTS `obtenerColector`;
DELIMITER ;;
CREATE PROCEDURE `obtenerColector`()
BEGIN

	select Nombre from colector ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for obtenerValidador
-- ----------------------------
DROP PROCEDURE IF EXISTS `obtenerValidador`;
DELIMITER ;;
CREATE PROCEDURE `obtenerValidador`()
BEGIN

	select Nombre from validador ;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pending
-- ----------------------------
DROP PROCEDURE IF EXISTS `pending`;
DELIMITER ;;
CREATE PROCEDURE `pending`()
BEGIN

	select m.*,
	f.Nombre Familia,g.Nombre Genero, e.Nombre Especie,
	f.Id IdFamilia,g.Id IdGenero, e.Id IdEspecie,
	c.Nombre Colector, v.Nombre Validador, concat(p.Nombre,", ",ca.Nombre,", ",d.Nombre) Direccion
	from muestra m
	inner join colector c on c.Id = m.IdColector
	inner join validador v on v.Id = m.IdValidador
	inner join distrito d on d.Id = m.IdDistrito
	inner join canton ca on ca.Id = d.CantonId
	inner join provincia p on p.Id = ca.ProvinciaId
	inner join especieXgenero eg on eg.Id = m.IdEspecieXgenero
	inner join especie e on e.Id = eg.IdEspecie
	inner join familiaXgenero fg on fg.Id = eg.IdFamiliaXgenero
	inner join genero g on g.Id = fg.IdGenero
	inner join familia f on f.Id = fg.IdFamilia
	where m.Pendiente = 1
	;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for provincias
-- ----------------------------
DROP PROCEDURE IF EXISTS `provincias`;
DELIMITER ;;
CREATE PROCEDURE `provincias`()
BEGIN

	select * from provincia;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for search
-- ----------------------------
DROP PROCEDURE IF EXISTS `search`;
DELIMITER ;;
CREATE PROCEDURE `search`()
BEGIN

	select m.*,
	f.Nombre Familia,g.Nombre Genero, e.Nombre Especie,
	f.Id IdFamilia,g.Id IdGenero, e.Id IdEspecie,
	c.Nombre Colector, v.Nombre Validador, concat(p.Nombre,", ",ca.Nombre,", ",d.Nombre) Direccion
	from muestra m
	inner join colector c on c.Id = m.IdColector
	inner join validador v on v.Id = m.IdValidador
	inner join distrito d on d.Id = m.IdDistrito
	inner join canton ca on ca.Id = d.CantonId
	inner join provincia p on p.Id = ca.ProvinciaId
	inner join especieXgenero eg on eg.Id = m.IdEspecieXgenero
	inner join especie e on e.Id = eg.IdEspecie
	inner join familiaXgenero fg on fg.Id = eg.IdFamiliaXgenero
	inner join genero g on g.Id = fg.IdGenero
	inner join familia f on f.Id = fg.IdFamilia
	;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for species
-- ----------------------------
DROP PROCEDURE IF EXISTS `species`;
DELIMITER ;;
CREATE PROCEDURE `species`()
BEGIN

	select * from especie;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for user_validate
-- ----------------------------
DROP PROCEDURE IF EXISTS `user_validate`;
DELIMITER ;;
CREATE PROCEDURE `user_validate`(IN pId INT, IN pUser VARCHAR(100), IN pPass VARCHAR(100) , IN pName VARCHAR(100), IN pRole VARCHAR(100))
BEGIN

	if (pId is null or pId = 0) then

		insert into usuario(Usuario,Clave,Nombre,Rol) values(pUser, pPass, pName, pRole);
		set pId = LAST_INSERT_ID();

	else

		update usuario u set
		u.Usuario = pUser,
		u.Clave = pPass,
		u.Nombre = pName,
		u.Rol = pRole
		where u.Id = pId;

	end if;

	select * from usuario u where u.Id = pId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usuario
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuario`;
DELIMITER ;;
CREATE PROCEDURE `usuario`(IN `pUser` varchar(32))
BEGIN

	select * from usuario u where u.Usuario = pUser;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usuarioById
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuarioById`;
DELIMITER ;;
CREATE PROCEDURE `usuarioById`(IN `pId` int)
BEGIN

	select * from usuario u where u.Id = pId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for usuarios
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuarios`;
DELIMITER ;;
CREATE PROCEDURE `usuarios`()
BEGIN

	select * from usuario;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for validadores
-- ----------------------------
DROP PROCEDURE IF EXISTS `validadores`;
DELIMITER ;;
CREATE PROCEDURE `validadores`()
BEGIN

	select * from validador;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for validador_validate
-- ----------------------------
DROP PROCEDURE IF EXISTS `validador_validate`;
DELIMITER ;;
CREATE PROCEDURE `validador_validate`(IN pId INT, IN pName VARCHAR(100), IN pStatus tinyint)
BEGIN

	if (pId is null or pId = 0) then

		insert into validador(Nombre,Enabled) values(pName, pStatus);
		set pId = LAST_INSERT_ID();

	else

		update validador c set
		c.Nombre = pName,
		c.Enabled = pStatus
		where c.Id = pId;

	end if;

	select * from validador c where c.Id = pId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for validate
-- ----------------------------
DROP PROCEDURE IF EXISTS `validate`;
DELIMITER ;;
CREATE PROCEDURE `validate`(IN pId INT, IN pFamilyId INT, IN pGenreId INT, IN pSpeciesId INT, IN pLocation VARCHAR(100), IN pNotes VARCHAR(100))
BEGIN

	declare vId int;

	select eg.Id into vId
	from familiaXgenero fg
	inner join especieXgenero eg on eg.IdFamiliaXgenero = fg.Id
	where fg.IdFamilia = pFamilyId
	and fg.IdGenero = pGenreId
	and eg.IdEspecie = pSpeciesId
	limit 1
	;

	if (vId > 0) then

		update muestra m set
		m.IdEspecieXgenero = vId,
		m.Localidad = pLocation,
		m.nota = pNotes,
		m.Pendiente = 0
		where m.Id = pId;

	end if;

	select * from muestra m where m.Id = pId;
END
;;
DELIMITER ;
