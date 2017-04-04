/*
Navicat MySQL Data Transfer

Source Server         : localhost @ root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : proyecto

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-04-03 22:22:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `Canton`
-- ----------------------------
DROP TABLE IF EXISTS `Canton`;
CREATE TABLE `Canton` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProvinciaId` int(10) unsigned NOT NULL,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Area` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Poblacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `canton_` (`ProvinciaId`),
  CONSTRAINT `canton_` FOREIGN KEY (`ProvinciaId`) REFERENCES `Provincia` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=707 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of Canton
-- ----------------------------
INSERT INTO `Canton` VALUES ('101', '1', 'San José', '44.62', '352366');
INSERT INTO `Canton` VALUES ('102', '1', 'Escazú', '34.49', '60201');
INSERT INTO `Canton` VALUES ('103', '1', 'Desamparados', '118.26', '221346');
INSERT INTO `Canton` VALUES ('104', '1', 'Puriscal', '553.66', '32767');
INSERT INTO `Canton` VALUES ('105', '1', 'Tarrazú', '297.5', '16419');
INSERT INTO `Canton` VALUES ('106', '1', 'Aserrí', '167.1', '56422');
INSERT INTO `Canton` VALUES ('107', '1', 'Mora', '162.04', '24333');
INSERT INTO `Canton` VALUES ('108', '1', 'Goicoechea', '31.5', '131529');
INSERT INTO `Canton` VALUES ('109', '1', 'Santa Ana', '61.42', '39905');
INSERT INTO `Canton` VALUES ('110', '1', 'Alajuelita', '21.17', '81721');
INSERT INTO `Canton` VALUES ('111', '1', 'Vázquez de Coronado', '222.2', '63098');
INSERT INTO `Canton` VALUES ('112', '1', 'Acosta', '342.24', '20906');
INSERT INTO `Canton` VALUES ('113', '1', 'Tibás', '8.15', '81478');
INSERT INTO `Canton` VALUES ('114', '1', 'Moravia', '28.62', '55895');
INSERT INTO `Canton` VALUES ('115', '1', 'Montes de Oca', '15.16', '55814');
INSERT INTO `Canton` VALUES ('116', '1', 'Turrubares', '415.29', '5482');
INSERT INTO `Canton` VALUES ('117', '1', 'Dota', '400.22', '7465');
INSERT INTO `Canton` VALUES ('118', '1', 'Curridabat', '15.95', '69474');
INSERT INTO `Canton` VALUES ('119', '1', 'Pérez Zeledón', '1905.51', '140872');
INSERT INTO `Canton` VALUES ('120', '1', 'León Cortés Castro', '120.8', '13288');
INSERT INTO `Canton` VALUES ('201', '2', 'Alajuela', '388.43', '255598');
INSERT INTO `Canton` VALUES ('202', '2', 'San Ramón', '1018.64', '77380');
INSERT INTO `Canton` VALUES ('203', '2', 'Grecia', '395.72', '74860');
INSERT INTO `Canton` VALUES ('204', '2', 'San Mateo', '125.9', '5904');
INSERT INTO `Canton` VALUES ('205', '2', 'Atenas', '127.19', '25033');
INSERT INTO `Canton` VALUES ('206', '2', 'Naranjo', '126.62', '42637');
INSERT INTO `Canton` VALUES ('207', '2', 'Palmares', '38.06', '33401');
INSERT INTO `Canton` VALUES ('208', '2', 'Poás', '73.84', '28469');
INSERT INTO `Canton` VALUES ('209', '2', 'Orotina', '141.92', '17866');
INSERT INTO `Canton` VALUES ('210', '2', 'San Carlos', '3347.98', '151322');
INSERT INTO `Canton` VALUES ('211', '2', 'Zarcero', '155.13', '12368');
INSERT INTO `Canton` VALUES ('212', '2', 'Valverde Vega', '120.25', '18407');
INSERT INTO `Canton` VALUES ('213', '2', 'Upala', '1580.67', '44556');
INSERT INTO `Canton` VALUES ('214', '2', 'Los Chiles', '1358.86', '23902');
INSERT INTO `Canton` VALUES ('215', '2', 'Guatuso', '758.32', '15068');
INSERT INTO `Canton` VALUES ('301', '3', 'Cartago', '287.77', '149657');
INSERT INTO `Canton` VALUES ('302', '3', 'Paraíso', '411.91', '60005');
INSERT INTO `Canton` VALUES ('303', '3', 'La Unión', '44.83', '91090');
INSERT INTO `Canton` VALUES ('304', '3', 'Jiménez', '286.43', '15859');
INSERT INTO `Canton` VALUES ('305', '3', 'Turrialba', '1642.67', '78217');
INSERT INTO `Canton` VALUES ('306', '3', 'Alvarado', '81.06', '13862');
INSERT INTO `Canton` VALUES ('307', '3', 'Oreamuno', '202.31', '44403');
INSERT INTO `Canton` VALUES ('308', '3', 'El Guarco', '167.69', '39223');
INSERT INTO `Canton` VALUES ('401', '4', 'Heredia', '282.6', '118872');
INSERT INTO `Canton` VALUES ('402', '4', 'Barva', '53.8', '37041');
INSERT INTO `Canton` VALUES ('403', '4', 'Santo Domingo', '24.84', '38959');
INSERT INTO `Canton` VALUES ('404', '4', 'Santa Bárbara', '53.21', '33334');
INSERT INTO `Canton` VALUES ('405', '4', 'San Rafael', '48.39', '42398');
INSERT INTO `Canton` VALUES ('406', '4', 'San Isidro', '26.96', '18028');
INSERT INTO `Canton` VALUES ('407', '4', 'Belén', '12.15', '22400');
INSERT INTO `Canton` VALUES ('408', '4', 'Flores', '6.96', '17298');
INSERT INTO `Canton` VALUES ('409', '4', 'San Pablo', '7.53', '23370');
INSERT INTO `Canton` VALUES ('410', '4', 'Sarapiquí', '2140.54', '54537');
INSERT INTO `Canton` VALUES ('501', '5', 'Liberia', '1436.47', '55921');
INSERT INTO `Canton` VALUES ('502', '5', 'Nicoya', '1333.68', '47823');
INSERT INTO `Canton` VALUES ('503', '5', 'Santa Cruz', '1312.27', '46460');
INSERT INTO `Canton` VALUES ('504', '5', 'Bagaces', '1273.49', '18368');
INSERT INTO `Canton` VALUES ('505', '5', 'Carrillo', '577.54', '32168');
INSERT INTO `Canton` VALUES ('506', '5', 'Cañas', '682.2', '27970');
INSERT INTO `Canton` VALUES ('507', '5', 'Abangares', '675.76', '18319');
INSERT INTO `Canton` VALUES ('508', '5', 'Tilarán', '638.39', '20337');
INSERT INTO `Canton` VALUES ('509', '5', 'Nandayure', '565.59', '11185');
INSERT INTO `Canton` VALUES ('510', '5', 'La Cruz', '1383.9', '19978');
INSERT INTO `Canton` VALUES ('511', '5', 'Hojancha', '261.42', '7289');
INSERT INTO `Canton` VALUES ('601', '6', 'Puntarenas', '1842.33', '118928');
INSERT INTO `Canton` VALUES ('602', '6', 'Esparza', '216.8', '27199');
INSERT INTO `Canton` VALUES ('603', '6', 'Buenos Aires', '2384.22', '47576');
INSERT INTO `Canton` VALUES ('604', '6', 'Montes de Oro', '244.76', '12495');
INSERT INTO `Canton` VALUES ('605', '6', 'Osa', '1930.24', '29547');
INSERT INTO `Canton` VALUES ('606', '6', 'Quepos', '543.77', '23915');
INSERT INTO `Canton` VALUES ('607', '6', 'Golfito', '1753.96', '39699');
INSERT INTO `Canton` VALUES ('608', '6', 'Coto Brus', '933.91', '47247');
INSERT INTO `Canton` VALUES ('609', '6', 'Parrita', '478.79', '13940');
INSERT INTO `Canton` VALUES ('610', '6', 'Corredores', '620.6', '44180');
INSERT INTO `Canton` VALUES ('611', '6', 'Garabito', '316.31', '13165');
INSERT INTO `Canton` VALUES ('701', '7', 'Limón', '1765.79', '106356');
INSERT INTO `Canton` VALUES ('702', '7', 'Pococí', '2403.49', '121735');
INSERT INTO `Canton` VALUES ('703', '7', 'Siquirres', '860.19', '60881');
INSERT INTO `Canton` VALUES ('704', '7', 'Talamanca', '2809.93', '32158');
INSERT INTO `Canton` VALUES ('705', '7', 'Matina', '772.64', '39961');
INSERT INTO `Canton` VALUES ('706', '7', 'Guácimo', '576.48', '41082');

-- ----------------------------
-- Table structure for `Distrito`
-- ----------------------------
DROP TABLE IF EXISTS `Distrito`;
CREATE TABLE `Distrito` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CantonId` int(10) unsigned NOT NULL,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `distrito_CantonId` (`CantonId`),
  CONSTRAINT `distrito_CantonId` FOREIGN KEY (`CantonId`) REFERENCES `Canton` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=70606 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of Distrito
-- ----------------------------
INSERT INTO `Distrito` VALUES ('10101', '101', 'Carmen');
INSERT INTO `Distrito` VALUES ('10102', '101', 'Merced');
INSERT INTO `Distrito` VALUES ('10103', '101', 'Hospital');
INSERT INTO `Distrito` VALUES ('10104', '101', 'Catedral');
INSERT INTO `Distrito` VALUES ('10105', '101', 'Zapote');
INSERT INTO `Distrito` VALUES ('10106', '101', 'San Francisco de Dos Ríos');
INSERT INTO `Distrito` VALUES ('10107', '101', 'Uruca');
INSERT INTO `Distrito` VALUES ('10108', '101', 'Mata Redonda');
INSERT INTO `Distrito` VALUES ('10109', '101', 'Pavas');
INSERT INTO `Distrito` VALUES ('10110', '101', 'Hatillo');
INSERT INTO `Distrito` VALUES ('10111', '101', 'San Sebastián');
INSERT INTO `Distrito` VALUES ('10201', '102', 'Escazú');
INSERT INTO `Distrito` VALUES ('10202', '102', 'San Antonio');
INSERT INTO `Distrito` VALUES ('10203', '102', 'San Rafael');
INSERT INTO `Distrito` VALUES ('10301', '103', 'Desamparados');
INSERT INTO `Distrito` VALUES ('10302', '103', 'San Miguel');
INSERT INTO `Distrito` VALUES ('10303', '103', 'San Juan de Dios');
INSERT INTO `Distrito` VALUES ('10304', '103', 'San Rafael Arriba');
INSERT INTO `Distrito` VALUES ('10305', '103', 'San Antonio');
INSERT INTO `Distrito` VALUES ('10306', '103', 'Frailes');
INSERT INTO `Distrito` VALUES ('10307', '103', 'Patarrá');
INSERT INTO `Distrito` VALUES ('10308', '103', 'San Cristóbal');
INSERT INTO `Distrito` VALUES ('10309', '103', 'Rosario');
INSERT INTO `Distrito` VALUES ('10310', '103', 'Damas');
INSERT INTO `Distrito` VALUES ('10311', '103', 'San Rafael Abajo');
INSERT INTO `Distrito` VALUES ('10312', '103', 'Gravilias');
INSERT INTO `Distrito` VALUES ('10313', '103', 'Los Guido');
INSERT INTO `Distrito` VALUES ('10401', '104', 'Santiago');
INSERT INTO `Distrito` VALUES ('10402', '104', 'Mercedes Sur');
INSERT INTO `Distrito` VALUES ('10403', '104', 'Barbacoas');
INSERT INTO `Distrito` VALUES ('10404', '104', 'Grifo Alto');
INSERT INTO `Distrito` VALUES ('10405', '104', 'San Rafael');
INSERT INTO `Distrito` VALUES ('10406', '104', 'Candelarita');
INSERT INTO `Distrito` VALUES ('10407', '104', 'Desamparaditos');
INSERT INTO `Distrito` VALUES ('10408', '104', 'San Antonio');
INSERT INTO `Distrito` VALUES ('10409', '104', 'Chires');
INSERT INTO `Distrito` VALUES ('10501', '105', 'San Marcos');
INSERT INTO `Distrito` VALUES ('10502', '105', 'San Lorenzo');
INSERT INTO `Distrito` VALUES ('10503', '105', 'San Carlos');
INSERT INTO `Distrito` VALUES ('10601', '106', 'Aserrí');
INSERT INTO `Distrito` VALUES ('10602', '106', 'Tarbaca');
INSERT INTO `Distrito` VALUES ('10603', '106', 'Vuelta de Jorco');
INSERT INTO `Distrito` VALUES ('10604', '106', 'San Gabriel');
INSERT INTO `Distrito` VALUES ('10605', '106', 'Legua');
INSERT INTO `Distrito` VALUES ('10606', '106', 'Monterrey');
INSERT INTO `Distrito` VALUES ('10607', '106', 'Salitrillos');
INSERT INTO `Distrito` VALUES ('10701', '107', 'Colón');
INSERT INTO `Distrito` VALUES ('10702', '107', 'Guayabo');
INSERT INTO `Distrito` VALUES ('10703', '107', 'Tabarcia');
INSERT INTO `Distrito` VALUES ('10704', '107', 'Piedras Negras');
INSERT INTO `Distrito` VALUES ('10705', '107', 'Picagres');
INSERT INTO `Distrito` VALUES ('10706', '107', 'Jaris');
INSERT INTO `Distrito` VALUES ('10801', '108', 'Guadalupe');
INSERT INTO `Distrito` VALUES ('10802', '108', 'San Francisco');
INSERT INTO `Distrito` VALUES ('10803', '108', 'Calle Blancos');
INSERT INTO `Distrito` VALUES ('10804', '108', 'Mata de Plátano');
INSERT INTO `Distrito` VALUES ('10805', '108', 'Ipís');
INSERT INTO `Distrito` VALUES ('10806', '108', 'Rancho Redondo');
INSERT INTO `Distrito` VALUES ('10807', '108', 'Purral');
INSERT INTO `Distrito` VALUES ('10901', '109', 'Santa Ana');
INSERT INTO `Distrito` VALUES ('10902', '109', 'Salitral');
INSERT INTO `Distrito` VALUES ('10903', '109', 'Pozos');
INSERT INTO `Distrito` VALUES ('10904', '109', 'Uruca');
INSERT INTO `Distrito` VALUES ('10905', '109', 'Piedades');
INSERT INTO `Distrito` VALUES ('10906', '109', 'Brasil');
INSERT INTO `Distrito` VALUES ('11001', '110', 'Alajuelita');
INSERT INTO `Distrito` VALUES ('11002', '110', 'San Josecito');
INSERT INTO `Distrito` VALUES ('11003', '110', 'San Antonio');
INSERT INTO `Distrito` VALUES ('11004', '110', 'Concepción');
INSERT INTO `Distrito` VALUES ('11005', '110', 'San Felipe');
INSERT INTO `Distrito` VALUES ('11101', '111', 'San Isidro');
INSERT INTO `Distrito` VALUES ('11102', '111', 'San Rafael');
INSERT INTO `Distrito` VALUES ('11103', '111', 'Dulce Nombre de Jesús');
INSERT INTO `Distrito` VALUES ('11104', '111', 'Patalillo');
INSERT INTO `Distrito` VALUES ('11105', '111', 'Cascajal');
INSERT INTO `Distrito` VALUES ('11201', '112', 'San Ignacio');
INSERT INTO `Distrito` VALUES ('11202', '112', 'Guaitil');
INSERT INTO `Distrito` VALUES ('11203', '112', 'Palmichal');
INSERT INTO `Distrito` VALUES ('11204', '112', 'Cangrejal');
INSERT INTO `Distrito` VALUES ('11205', '112', 'Sabanillas');
INSERT INTO `Distrito` VALUES ('11301', '113', 'San Juan');
INSERT INTO `Distrito` VALUES ('11302', '113', 'Cinco Esquinas');
INSERT INTO `Distrito` VALUES ('11303', '113', 'Anselmo Llorente');
INSERT INTO `Distrito` VALUES ('11304', '113', 'León XIII');
INSERT INTO `Distrito` VALUES ('11305', '113', 'Colima');
INSERT INTO `Distrito` VALUES ('11401', '114', 'San Vicente');
INSERT INTO `Distrito` VALUES ('11402', '114', 'San Jerónimo');
INSERT INTO `Distrito` VALUES ('11403', '114', 'La Trinidad');
INSERT INTO `Distrito` VALUES ('11501', '115', 'San Pedro');
INSERT INTO `Distrito` VALUES ('11502', '115', 'Sabanilla');
INSERT INTO `Distrito` VALUES ('11503', '115', 'Mercedes');
INSERT INTO `Distrito` VALUES ('11504', '115', 'San Rafael');
INSERT INTO `Distrito` VALUES ('11601', '116', 'San Pablo');
INSERT INTO `Distrito` VALUES ('11602', '116', 'San Pedro');
INSERT INTO `Distrito` VALUES ('11603', '116', 'San Juan de Mata');
INSERT INTO `Distrito` VALUES ('11604', '116', 'San Luis');
INSERT INTO `Distrito` VALUES ('11605', '116', 'Carara');
INSERT INTO `Distrito` VALUES ('11701', '117', 'Santa María');
INSERT INTO `Distrito` VALUES ('11702', '117', 'Jardín');
INSERT INTO `Distrito` VALUES ('11703', '117', 'Copey');
INSERT INTO `Distrito` VALUES ('11801', '118', 'Curridabat');
INSERT INTO `Distrito` VALUES ('11802', '118', 'Granadilla');
INSERT INTO `Distrito` VALUES ('11803', '118', 'Sánchez');
INSERT INTO `Distrito` VALUES ('11804', '118', 'Tirrases');
INSERT INTO `Distrito` VALUES ('11901', '119', 'San Isidro de El General');
INSERT INTO `Distrito` VALUES ('11902', '119', 'General');
INSERT INTO `Distrito` VALUES ('11903', '119', 'Daniel Flores');
INSERT INTO `Distrito` VALUES ('11904', '119', 'Rivas');
INSERT INTO `Distrito` VALUES ('11905', '119', 'San Pedro');
INSERT INTO `Distrito` VALUES ('11906', '119', 'Platanares');
INSERT INTO `Distrito` VALUES ('11907', '119', 'Pejibaye');
INSERT INTO `Distrito` VALUES ('11908', '119', 'Cajón');
INSERT INTO `Distrito` VALUES ('11909', '119', 'Barú');
INSERT INTO `Distrito` VALUES ('11910', '119', 'Río Nuevo');
INSERT INTO `Distrito` VALUES ('11911', '119', 'Páramo');
INSERT INTO `Distrito` VALUES ('12001', '120', 'San Pablo');
INSERT INTO `Distrito` VALUES ('12002', '120', 'San Andrés');
INSERT INTO `Distrito` VALUES ('12003', '120', 'Llano Bonito');
INSERT INTO `Distrito` VALUES ('12004', '120', 'San Isidro');
INSERT INTO `Distrito` VALUES ('12005', '120', 'Santa Cruz');
INSERT INTO `Distrito` VALUES ('12006', '120', 'San Antonio');
INSERT INTO `Distrito` VALUES ('20101', '201', 'Alajuela');
INSERT INTO `Distrito` VALUES ('20102', '201', 'San José');
INSERT INTO `Distrito` VALUES ('20103', '201', 'Carrizal');
INSERT INTO `Distrito` VALUES ('20104', '201', 'San Antonio');
INSERT INTO `Distrito` VALUES ('20105', '201', 'Guácima');
INSERT INTO `Distrito` VALUES ('20106', '201', 'San Isidro');
INSERT INTO `Distrito` VALUES ('20107', '201', 'Sabanilla');
INSERT INTO `Distrito` VALUES ('20108', '201', 'San Rafael');
INSERT INTO `Distrito` VALUES ('20109', '201', 'Río Segundo');
INSERT INTO `Distrito` VALUES ('20110', '201', 'Desamparados');
INSERT INTO `Distrito` VALUES ('20111', '201', 'Turrúcares');
INSERT INTO `Distrito` VALUES ('20112', '201', 'Tambor');
INSERT INTO `Distrito` VALUES ('20113', '201', 'Garita');
INSERT INTO `Distrito` VALUES ('20114', '201', 'Sarapiquí');
INSERT INTO `Distrito` VALUES ('20201', '202', 'San Ramón');
INSERT INTO `Distrito` VALUES ('20202', '202', 'Santiago');
INSERT INTO `Distrito` VALUES ('20203', '202', 'San Juan');
INSERT INTO `Distrito` VALUES ('20204', '202', 'Piedades Norte');
INSERT INTO `Distrito` VALUES ('20205', '202', 'Piedades Sur');
INSERT INTO `Distrito` VALUES ('20206', '202', 'San Rafael');
INSERT INTO `Distrito` VALUES ('20207', '202', 'San Isidro');
INSERT INTO `Distrito` VALUES ('20208', '202', 'Los Ángeles');
INSERT INTO `Distrito` VALUES ('20209', '202', 'Alfaro');
INSERT INTO `Distrito` VALUES ('20210', '202', 'Volio');
INSERT INTO `Distrito` VALUES ('20211', '202', 'Concepción');
INSERT INTO `Distrito` VALUES ('20212', '202', 'Zapotal');
INSERT INTO `Distrito` VALUES ('20213', '202', 'Peñas Blancas');
INSERT INTO `Distrito` VALUES ('20301', '203', 'Grecia');
INSERT INTO `Distrito` VALUES ('20302', '203', 'San Isidro');
INSERT INTO `Distrito` VALUES ('20303', '203', 'San José');
INSERT INTO `Distrito` VALUES ('20304', '203', 'San Roque');
INSERT INTO `Distrito` VALUES ('20305', '203', 'Tacares');
INSERT INTO `Distrito` VALUES ('20306', '203', 'Río Cuarto');
INSERT INTO `Distrito` VALUES ('20307', '203', 'Puente de Piedra');
INSERT INTO `Distrito` VALUES ('20308', '203', 'Bolívar');
INSERT INTO `Distrito` VALUES ('20401', '204', 'San Mateo');
INSERT INTO `Distrito` VALUES ('20402', '204', 'Desmonte');
INSERT INTO `Distrito` VALUES ('20403', '204', 'Jesús María');
INSERT INTO `Distrito` VALUES ('20501', '205', 'Atenas');
INSERT INTO `Distrito` VALUES ('20502', '205', 'Jesús');
INSERT INTO `Distrito` VALUES ('20503', '205', 'Mercedes');
INSERT INTO `Distrito` VALUES ('20504', '205', 'San Isidro');
INSERT INTO `Distrito` VALUES ('20505', '205', 'Concepción');
INSERT INTO `Distrito` VALUES ('20506', '205', 'San José');
INSERT INTO `Distrito` VALUES ('20507', '205', 'Santa Eulalia');
INSERT INTO `Distrito` VALUES ('20508', '205', 'Escobal');
INSERT INTO `Distrito` VALUES ('20601', '206', 'Naranjo');
INSERT INTO `Distrito` VALUES ('20602', '206', 'San Miguel');
INSERT INTO `Distrito` VALUES ('20603', '206', 'San José');
INSERT INTO `Distrito` VALUES ('20604', '206', 'Cirrí Sur');
INSERT INTO `Distrito` VALUES ('20605', '206', 'San Jerónimo');
INSERT INTO `Distrito` VALUES ('20606', '206', 'San Juan');
INSERT INTO `Distrito` VALUES ('20607', '206', 'El Rosario');
INSERT INTO `Distrito` VALUES ('20608', '206', 'Palmitos');
INSERT INTO `Distrito` VALUES ('20701', '207', 'Palmares');
INSERT INTO `Distrito` VALUES ('20702', '207', 'Zaragoza');
INSERT INTO `Distrito` VALUES ('20703', '207', 'Buenos Aires');
INSERT INTO `Distrito` VALUES ('20704', '207', 'Santiago');
INSERT INTO `Distrito` VALUES ('20705', '207', 'Candelaria');
INSERT INTO `Distrito` VALUES ('20706', '207', 'Esquipulas');
INSERT INTO `Distrito` VALUES ('20707', '207', 'La Granja');
INSERT INTO `Distrito` VALUES ('20801', '208', 'San Pedro');
INSERT INTO `Distrito` VALUES ('20802', '208', 'San Juan');
INSERT INTO `Distrito` VALUES ('20803', '208', 'San Rafael');
INSERT INTO `Distrito` VALUES ('20804', '208', 'Carrillos');
INSERT INTO `Distrito` VALUES ('20805', '208', 'Sabana Redonda');
INSERT INTO `Distrito` VALUES ('20901', '209', 'Orotina');
INSERT INTO `Distrito` VALUES ('20902', '209', 'El Mastate');
INSERT INTO `Distrito` VALUES ('20903', '209', 'Hacienda Vieja');
INSERT INTO `Distrito` VALUES ('20904', '209', 'Coyolar');
INSERT INTO `Distrito` VALUES ('20905', '209', 'La Ceiba');
INSERT INTO `Distrito` VALUES ('21001', '210', 'Quesada');
INSERT INTO `Distrito` VALUES ('21002', '210', 'Florencia');
INSERT INTO `Distrito` VALUES ('21003', '210', 'Buenavista');
INSERT INTO `Distrito` VALUES ('21004', '210', 'Aguas Zarcas');
INSERT INTO `Distrito` VALUES ('21005', '210', 'Venecia');
INSERT INTO `Distrito` VALUES ('21006', '210', 'Pital');
INSERT INTO `Distrito` VALUES ('21007', '210', 'La Fortuna');
INSERT INTO `Distrito` VALUES ('21008', '210', 'La Tigra');
INSERT INTO `Distrito` VALUES ('21009', '210', 'La Palmera');
INSERT INTO `Distrito` VALUES ('21010', '210', 'Venado');
INSERT INTO `Distrito` VALUES ('21011', '210', 'Cutris');
INSERT INTO `Distrito` VALUES ('21012', '210', 'Monterrey');
INSERT INTO `Distrito` VALUES ('21013', '210', 'Pocosol');
INSERT INTO `Distrito` VALUES ('21101', '211', 'Zarcero');
INSERT INTO `Distrito` VALUES ('21102', '211', 'Laguna');
INSERT INTO `Distrito` VALUES ('21103', '211', 'Tapesco');
INSERT INTO `Distrito` VALUES ('21104', '211', 'Guadalupe');
INSERT INTO `Distrito` VALUES ('21105', '211', 'Palmira');
INSERT INTO `Distrito` VALUES ('21106', '211', 'Zapote');
INSERT INTO `Distrito` VALUES ('21107', '211', 'Brisas');
INSERT INTO `Distrito` VALUES ('21201', '212', 'Sarchí Norte');
INSERT INTO `Distrito` VALUES ('21202', '212', 'Sarchí Sur');
INSERT INTO `Distrito` VALUES ('21203', '212', 'Toro Amarillo');
INSERT INTO `Distrito` VALUES ('21204', '212', 'San Pedro');
INSERT INTO `Distrito` VALUES ('21205', '212', 'Rodríguez');
INSERT INTO `Distrito` VALUES ('21301', '213', 'Upala');
INSERT INTO `Distrito` VALUES ('21302', '213', 'Aguas Claras');
INSERT INTO `Distrito` VALUES ('21303', '213', 'San José (Pizote)');
INSERT INTO `Distrito` VALUES ('21304', '213', 'Bijagua');
INSERT INTO `Distrito` VALUES ('21305', '213', 'Delicias');
INSERT INTO `Distrito` VALUES ('21306', '213', 'Dos Ríos');
INSERT INTO `Distrito` VALUES ('21307', '213', 'Yoliyllal');
INSERT INTO `Distrito` VALUES ('21401', '214', 'Los Chiles');
INSERT INTO `Distrito` VALUES ('21402', '214', 'Caño Negro');
INSERT INTO `Distrito` VALUES ('21403', '214', 'El Amparo');
INSERT INTO `Distrito` VALUES ('21404', '214', 'San Jorge');
INSERT INTO `Distrito` VALUES ('21501', '215', 'San Rafael');
INSERT INTO `Distrito` VALUES ('21502', '215', 'Buenavista');
INSERT INTO `Distrito` VALUES ('21503', '215', 'Cote');
INSERT INTO `Distrito` VALUES ('21504', '215', 'Katira');
INSERT INTO `Distrito` VALUES ('30101', '301', 'Oriental');
INSERT INTO `Distrito` VALUES ('30102', '301', 'Occidental');
INSERT INTO `Distrito` VALUES ('30103', '301', 'Carmen');
INSERT INTO `Distrito` VALUES ('30104', '301', 'San Nicolás');
INSERT INTO `Distrito` VALUES ('30105', '301', 'Aguacaliente (San Francisco)');
INSERT INTO `Distrito` VALUES ('30106', '301', 'Guadalupe (Arenilla)');
INSERT INTO `Distrito` VALUES ('30107', '301', 'Corralillo');
INSERT INTO `Distrito` VALUES ('30108', '301', 'Tierra Blanca');
INSERT INTO `Distrito` VALUES ('30109', '301', 'Dulce Nombre');
INSERT INTO `Distrito` VALUES ('30110', '301', 'Llano Grande');
INSERT INTO `Distrito` VALUES ('30111', '301', 'Quebradilla');
INSERT INTO `Distrito` VALUES ('30201', '302', 'Paraíso');
INSERT INTO `Distrito` VALUES ('30202', '302', 'Santiago');
INSERT INTO `Distrito` VALUES ('30203', '302', 'Orosi');
INSERT INTO `Distrito` VALUES ('30204', '302', 'Cachí');
INSERT INTO `Distrito` VALUES ('30205', '302', 'Llanos de Santa Lucía');
INSERT INTO `Distrito` VALUES ('30301', '303', 'Tres Ríos');
INSERT INTO `Distrito` VALUES ('30302', '303', 'San Diego');
INSERT INTO `Distrito` VALUES ('30303', '303', 'San Juan');
INSERT INTO `Distrito` VALUES ('30304', '303', 'San Rafael');
INSERT INTO `Distrito` VALUES ('30305', '303', 'Concepción');
INSERT INTO `Distrito` VALUES ('30306', '303', 'Dulce Nombre');
INSERT INTO `Distrito` VALUES ('30307', '303', 'San Ramón');
INSERT INTO `Distrito` VALUES ('30308', '303', 'Río Azul');
INSERT INTO `Distrito` VALUES ('30401', '304', 'Juan Viñas');
INSERT INTO `Distrito` VALUES ('30402', '304', 'Tucurrique');
INSERT INTO `Distrito` VALUES ('30403', '304', 'Pejibaye');
INSERT INTO `Distrito` VALUES ('30501', '305', 'Turrialba');
INSERT INTO `Distrito` VALUES ('30502', '305', 'La Suiza');
INSERT INTO `Distrito` VALUES ('30503', '305', 'Peralta');
INSERT INTO `Distrito` VALUES ('30504', '305', 'Santa Cruz');
INSERT INTO `Distrito` VALUES ('30505', '305', 'Santa Teresita');
INSERT INTO `Distrito` VALUES ('30506', '305', 'Pavones');
INSERT INTO `Distrito` VALUES ('30507', '305', 'Tuis');
INSERT INTO `Distrito` VALUES ('30508', '305', 'Tayutic');
INSERT INTO `Distrito` VALUES ('30509', '305', 'Santa Rosa');
INSERT INTO `Distrito` VALUES ('30510', '305', 'Tres Equis');
INSERT INTO `Distrito` VALUES ('30511', '305', 'La Isabel');
INSERT INTO `Distrito` VALUES ('30512', '305', 'Chirripó');
INSERT INTO `Distrito` VALUES ('30601', '306', 'Pacayas');
INSERT INTO `Distrito` VALUES ('30602', '306', 'Cervantes');
INSERT INTO `Distrito` VALUES ('30603', '306', 'Capellades');
INSERT INTO `Distrito` VALUES ('30701', '307', 'San Rafael');
INSERT INTO `Distrito` VALUES ('30702', '307', 'Cot');
INSERT INTO `Distrito` VALUES ('30703', '307', 'Potrero Cerrado');
INSERT INTO `Distrito` VALUES ('30704', '307', 'Cipreses');
INSERT INTO `Distrito` VALUES ('30705', '307', 'Santa Rosa');
INSERT INTO `Distrito` VALUES ('30801', '308', 'El Tejar');
INSERT INTO `Distrito` VALUES ('30802', '308', 'San Isidro');
INSERT INTO `Distrito` VALUES ('30803', '308', 'Tobosi');
INSERT INTO `Distrito` VALUES ('30804', '308', 'Patio de Agua');
INSERT INTO `Distrito` VALUES ('40101', '401', 'Heredia');
INSERT INTO `Distrito` VALUES ('40102', '401', 'Mercedes');
INSERT INTO `Distrito` VALUES ('40103', '401', 'San Francisco');
INSERT INTO `Distrito` VALUES ('40104', '401', 'Ulloa');
INSERT INTO `Distrito` VALUES ('40105', '401', 'Varablanca');
INSERT INTO `Distrito` VALUES ('40201', '402', 'Barva');
INSERT INTO `Distrito` VALUES ('40202', '402', 'San Pedro');
INSERT INTO `Distrito` VALUES ('40203', '402', 'San Pablo');
INSERT INTO `Distrito` VALUES ('40204', '402', 'San Roque');
INSERT INTO `Distrito` VALUES ('40205', '402', 'Santa Lucía');
INSERT INTO `Distrito` VALUES ('40206', '402', 'San José de la Montaña');
INSERT INTO `Distrito` VALUES ('40301', '403', 'Santo Domingo');
INSERT INTO `Distrito` VALUES ('40302', '403', 'San Vicente');
INSERT INTO `Distrito` VALUES ('40303', '403', 'San Miguel');
INSERT INTO `Distrito` VALUES ('40304', '403', 'Paracito');
INSERT INTO `Distrito` VALUES ('40305', '403', 'Santo Tomás');
INSERT INTO `Distrito` VALUES ('40306', '403', 'Santa Rosa');
INSERT INTO `Distrito` VALUES ('40307', '403', 'Tures');
INSERT INTO `Distrito` VALUES ('40308', '403', 'Para');
INSERT INTO `Distrito` VALUES ('40401', '404', 'Santa Bárbara');
INSERT INTO `Distrito` VALUES ('40402', '404', 'San Pedro');
INSERT INTO `Distrito` VALUES ('40403', '404', 'San Juan');
INSERT INTO `Distrito` VALUES ('40404', '404', 'Jesús');
INSERT INTO `Distrito` VALUES ('40405', '404', 'Santo Domingo');
INSERT INTO `Distrito` VALUES ('40406', '404', 'Puraba');
INSERT INTO `Distrito` VALUES ('40501', '405', 'San Rafael');
INSERT INTO `Distrito` VALUES ('40502', '405', 'San Josécito');
INSERT INTO `Distrito` VALUES ('40503', '405', 'Santiago');
INSERT INTO `Distrito` VALUES ('40504', '405', 'Los Ángeles');
INSERT INTO `Distrito` VALUES ('40505', '405', 'Concepción');
INSERT INTO `Distrito` VALUES ('40601', '406', 'San Isidro');
INSERT INTO `Distrito` VALUES ('40602', '406', 'San José');
INSERT INTO `Distrito` VALUES ('40603', '406', 'Concepción');
INSERT INTO `Distrito` VALUES ('40604', '406', 'San Francisco');
INSERT INTO `Distrito` VALUES ('40701', '407', 'San Antonio');
INSERT INTO `Distrito` VALUES ('40702', '407', 'La Ribera');
INSERT INTO `Distrito` VALUES ('40703', '407', 'La Asunción');
INSERT INTO `Distrito` VALUES ('40801', '408', 'San Joaquín de Flores');
INSERT INTO `Distrito` VALUES ('40802', '408', 'Barrantes');
INSERT INTO `Distrito` VALUES ('40803', '408', 'Llorente');
INSERT INTO `Distrito` VALUES ('40901', '409', 'San Pablo');
INSERT INTO `Distrito` VALUES ('40902', '409', 'Rincón de Sabanilla');
INSERT INTO `Distrito` VALUES ('41001', '410', 'Puerto Viejo');
INSERT INTO `Distrito` VALUES ('41002', '410', 'La Virgen');
INSERT INTO `Distrito` VALUES ('41003', '410', 'Horquetas');
INSERT INTO `Distrito` VALUES ('41004', '410', 'Llanuras del Gaspar');
INSERT INTO `Distrito` VALUES ('41005', '410', 'Cureña');
INSERT INTO `Distrito` VALUES ('50101', '501', 'Liberia');
INSERT INTO `Distrito` VALUES ('50102', '501', 'Cañas Dulces');
INSERT INTO `Distrito` VALUES ('50103', '501', 'Mayorga');
INSERT INTO `Distrito` VALUES ('50104', '501', 'Nacascolo');
INSERT INTO `Distrito` VALUES ('50105', '501', 'Curubande');
INSERT INTO `Distrito` VALUES ('50201', '502', 'Nicoya');
INSERT INTO `Distrito` VALUES ('50202', '502', 'Mansion');
INSERT INTO `Distrito` VALUES ('50203', '502', 'San Antonio');
INSERT INTO `Distrito` VALUES ('50204', '502', 'Quebrada Honda');
INSERT INTO `Distrito` VALUES ('50205', '502', 'Samara');
INSERT INTO `Distrito` VALUES ('50206', '502', 'Nosara');
INSERT INTO `Distrito` VALUES ('50207', '502', 'Belén de Nosarita');
INSERT INTO `Distrito` VALUES ('50301', '503', 'Santa Cruz');
INSERT INTO `Distrito` VALUES ('50302', '503', 'Bolson');
INSERT INTO `Distrito` VALUES ('50303', '503', 'Veintisiete de Abril');
INSERT INTO `Distrito` VALUES ('50304', '503', 'Tempate');
INSERT INTO `Distrito` VALUES ('50305', '503', 'Cartagena');
INSERT INTO `Distrito` VALUES ('50306', '503', 'Cuajiniquil');
INSERT INTO `Distrito` VALUES ('50307', '503', 'Diria');
INSERT INTO `Distrito` VALUES ('50308', '503', 'Cabo Velas');
INSERT INTO `Distrito` VALUES ('50309', '503', 'Tamarindo');
INSERT INTO `Distrito` VALUES ('50401', '504', 'Bagaces');
INSERT INTO `Distrito` VALUES ('50402', '504', 'Fortuna');
INSERT INTO `Distrito` VALUES ('50403', '504', 'Mogote');
INSERT INTO `Distrito` VALUES ('50404', '504', 'Río Naranjo');
INSERT INTO `Distrito` VALUES ('50501', '505', 'Filadelfia');
INSERT INTO `Distrito` VALUES ('50502', '505', 'Palmira');
INSERT INTO `Distrito` VALUES ('50503', '505', 'Sardinal');
INSERT INTO `Distrito` VALUES ('50504', '505', 'Belén');
INSERT INTO `Distrito` VALUES ('50601', '506', 'Cañas');
INSERT INTO `Distrito` VALUES ('50602', '506', 'Palmira');
INSERT INTO `Distrito` VALUES ('50603', '506', 'San Miguel');
INSERT INTO `Distrito` VALUES ('50604', '506', 'Bebedero');
INSERT INTO `Distrito` VALUES ('50605', '506', 'Porozal');
INSERT INTO `Distrito` VALUES ('50701', '507', 'Juntas');
INSERT INTO `Distrito` VALUES ('50702', '507', 'Sierra');
INSERT INTO `Distrito` VALUES ('50703', '507', 'San Juan');
INSERT INTO `Distrito` VALUES ('50704', '507', 'Colorado');
INSERT INTO `Distrito` VALUES ('50801', '508', 'Tilarán');
INSERT INTO `Distrito` VALUES ('50802', '508', 'Quebrada Grande');
INSERT INTO `Distrito` VALUES ('50803', '508', 'Tronadora');
INSERT INTO `Distrito` VALUES ('50804', '508', 'Santa Rosa');
INSERT INTO `Distrito` VALUES ('50805', '508', 'Líbano');
INSERT INTO `Distrito` VALUES ('50806', '508', 'Tierras Morenas');
INSERT INTO `Distrito` VALUES ('50807', '508', 'Arenal');
INSERT INTO `Distrito` VALUES ('50901', '509', 'Carmona');
INSERT INTO `Distrito` VALUES ('50902', '509', 'Santa Rita');
INSERT INTO `Distrito` VALUES ('50903', '509', 'Zapotal');
INSERT INTO `Distrito` VALUES ('50904', '509', 'San Pablo');
INSERT INTO `Distrito` VALUES ('50905', '509', 'Porvenir');
INSERT INTO `Distrito` VALUES ('50906', '509', 'Bejuco');
INSERT INTO `Distrito` VALUES ('51001', '510', 'La Cruz');
INSERT INTO `Distrito` VALUES ('51002', '510', 'Santa Cecilia');
INSERT INTO `Distrito` VALUES ('51003', '510', 'Garita');
INSERT INTO `Distrito` VALUES ('51004', '510', 'Santa Elena');
INSERT INTO `Distrito` VALUES ('51101', '511', 'Hojancha');
INSERT INTO `Distrito` VALUES ('51102', '511', 'Monte Romo');
INSERT INTO `Distrito` VALUES ('51103', '511', 'Puerto Carrillo');
INSERT INTO `Distrito` VALUES ('51104', '511', 'Huacas');
INSERT INTO `Distrito` VALUES ('60101', '601', 'Puntarenas');
INSERT INTO `Distrito` VALUES ('60102', '601', 'Pitahaya');
INSERT INTO `Distrito` VALUES ('60103', '601', 'Chomes');
INSERT INTO `Distrito` VALUES ('60104', '601', 'Lepanto');
INSERT INTO `Distrito` VALUES ('60105', '601', 'Paquera');
INSERT INTO `Distrito` VALUES ('60106', '601', 'Manzanillo');
INSERT INTO `Distrito` VALUES ('60107', '601', 'Guacimal');
INSERT INTO `Distrito` VALUES ('60108', '601', 'Barranca');
INSERT INTO `Distrito` VALUES ('60109', '601', 'Monte Verde');
INSERT INTO `Distrito` VALUES ('60110', '601', 'Isla del Coco');
INSERT INTO `Distrito` VALUES ('60111', '601', 'Cobano');
INSERT INTO `Distrito` VALUES ('60112', '601', 'Chacarita');
INSERT INTO `Distrito` VALUES ('60113', '601', 'Chira');
INSERT INTO `Distrito` VALUES ('60114', '601', 'Acapulco');
INSERT INTO `Distrito` VALUES ('60115', '601', 'El Roble');
INSERT INTO `Distrito` VALUES ('60116', '601', 'Arancibia');
INSERT INTO `Distrito` VALUES ('60201', '602', 'Espiritu Santo');
INSERT INTO `Distrito` VALUES ('60202', '602', 'San Juan Grande');
INSERT INTO `Distrito` VALUES ('60203', '602', 'Macacona');
INSERT INTO `Distrito` VALUES ('60204', '602', 'San Rafael');
INSERT INTO `Distrito` VALUES ('60205', '602', 'San Jerónimo');
INSERT INTO `Distrito` VALUES ('60301', '603', 'Buenos Aires');
INSERT INTO `Distrito` VALUES ('60302', '603', 'Volcan');
INSERT INTO `Distrito` VALUES ('60303', '603', 'Potrero Grande');
INSERT INTO `Distrito` VALUES ('60304', '603', 'Boruca');
INSERT INTO `Distrito` VALUES ('60305', '603', 'Pilas');
INSERT INTO `Distrito` VALUES ('60306', '603', 'Colinas');
INSERT INTO `Distrito` VALUES ('60307', '603', 'Changena');
INSERT INTO `Distrito` VALUES ('60308', '603', 'Briolley');
INSERT INTO `Distrito` VALUES ('60309', '603', 'Brunka');
INSERT INTO `Distrito` VALUES ('60401', '604', 'Miramar');
INSERT INTO `Distrito` VALUES ('60402', '604', 'La Unión');
INSERT INTO `Distrito` VALUES ('60403', '604', 'San Isidro');
INSERT INTO `Distrito` VALUES ('60501', '605', 'Puerto Cortes');
INSERT INTO `Distrito` VALUES ('60502', '605', 'Palmar');
INSERT INTO `Distrito` VALUES ('60503', '605', 'Sierpe');
INSERT INTO `Distrito` VALUES ('60504', '605', 'Bahia Ballena');
INSERT INTO `Distrito` VALUES ('60505', '605', 'Piedras Blancas');
INSERT INTO `Distrito` VALUES ('60601', '606', 'Quepos');
INSERT INTO `Distrito` VALUES ('60602', '606', 'Savegre');
INSERT INTO `Distrito` VALUES ('60603', '606', 'Naranjito');
INSERT INTO `Distrito` VALUES ('60701', '607', 'Golfito');
INSERT INTO `Distrito` VALUES ('60702', '607', 'Puerto Jiménez');
INSERT INTO `Distrito` VALUES ('60703', '607', 'Guaycara');
INSERT INTO `Distrito` VALUES ('60704', '607', 'Pavon');
INSERT INTO `Distrito` VALUES ('60801', '608', 'San Vito');
INSERT INTO `Distrito` VALUES ('60802', '608', 'Sabalito');
INSERT INTO `Distrito` VALUES ('60803', '608', 'Aguabuena');
INSERT INTO `Distrito` VALUES ('60804', '608', 'Limóncito');
INSERT INTO `Distrito` VALUES ('60805', '608', 'Pittier');
INSERT INTO `Distrito` VALUES ('60901', '609', 'Parrita');
INSERT INTO `Distrito` VALUES ('61001', '610', 'Corredor');
INSERT INTO `Distrito` VALUES ('61002', '610', 'La Cuesta');
INSERT INTO `Distrito` VALUES ('61003', '610', 'Canoas');
INSERT INTO `Distrito` VALUES ('61004', '610', 'Laurel');
INSERT INTO `Distrito` VALUES ('61101', '611', 'Jacó');
INSERT INTO `Distrito` VALUES ('61102', '611', 'Tarcoles');
INSERT INTO `Distrito` VALUES ('70101', '701', 'Limón');
INSERT INTO `Distrito` VALUES ('70102', '701', 'Valle La Estrella');
INSERT INTO `Distrito` VALUES ('70103', '701', 'Río Blanco');
INSERT INTO `Distrito` VALUES ('70104', '701', 'Matama');
INSERT INTO `Distrito` VALUES ('70201', '702', 'Guapiles');
INSERT INTO `Distrito` VALUES ('70202', '702', 'Jiménez');
INSERT INTO `Distrito` VALUES ('70203', '702', 'Rita');
INSERT INTO `Distrito` VALUES ('70204', '702', 'Roxana');
INSERT INTO `Distrito` VALUES ('70205', '702', 'Cariari');
INSERT INTO `Distrito` VALUES ('70206', '702', 'Colorado');
INSERT INTO `Distrito` VALUES ('70301', '703', 'Siquirres');
INSERT INTO `Distrito` VALUES ('70302', '703', 'Pacuarito');
INSERT INTO `Distrito` VALUES ('70303', '703', 'Florida');
INSERT INTO `Distrito` VALUES ('70304', '703', 'Germania');
INSERT INTO `Distrito` VALUES ('70305', '703', 'Cairo');
INSERT INTO `Distrito` VALUES ('70306', '703', 'Alegria');
INSERT INTO `Distrito` VALUES ('70401', '704', 'Bratsi');
INSERT INTO `Distrito` VALUES ('70402', '704', 'Sixaola');
INSERT INTO `Distrito` VALUES ('70403', '704', 'Cahuita');
INSERT INTO `Distrito` VALUES ('70404', '704', 'Telire');
INSERT INTO `Distrito` VALUES ('70501', '705', 'Matina');
INSERT INTO `Distrito` VALUES ('70502', '705', 'Battan');
INSERT INTO `Distrito` VALUES ('70503', '705', 'Carrandi');
INSERT INTO `Distrito` VALUES ('70601', '706', 'Guácimo');
INSERT INTO `Distrito` VALUES ('70602', '706', 'Mercedes');
INSERT INTO `Distrito` VALUES ('70603', '706', 'Pocora');
INSERT INTO `Distrito` VALUES ('70604', '706', 'Río Jiménez');
INSERT INTO `Distrito` VALUES ('70605', '706', 'Duacari');

-- ----------------------------
-- Table structure for `Especie`
-- ----------------------------
DROP TABLE IF EXISTS `Especie`;
CREATE TABLE `Especie` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of Especie
-- ----------------------------

-- ----------------------------
-- Table structure for `Familia`
-- ----------------------------
DROP TABLE IF EXISTS `Familia`;
CREATE TABLE `Familia` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of Familia
-- ----------------------------

-- ----------------------------
-- Table structure for `FamiliaEspecie`
-- ----------------------------
DROP TABLE IF EXISTS `FamiliaEspecie`;
CREATE TABLE `FamiliaEspecie` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FamiliaId` int(11) unsigned NOT NULL,
  `EspecieId` int(11) unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `familiaespecie_FamiliaId` (`FamiliaId`),
  KEY `familiaespecie_EspecieId` (`EspecieId`),
  CONSTRAINT `familiaespecie_EspecieId` FOREIGN KEY (`EspecieId`) REFERENCES `Especie` (`Id`),
  CONSTRAINT `familiaespecie_FamiliaId` FOREIGN KEY (`FamiliaId`) REFERENCES `Familia` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of FamiliaEspecie
-- ----------------------------

-- ----------------------------
-- Table structure for `FamiliaGenero`
-- ----------------------------
DROP TABLE IF EXISTS `FamiliaGenero`;
CREATE TABLE `FamiliaGenero` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FamiliaId` int(11) unsigned NOT NULL,
  `GeneroId` int(11) unsigned NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `familiagenero_FamiliaId` (`FamiliaId`),
  KEY `familiagenero_GeneroId` (`GeneroId`),
  CONSTRAINT `familiagenero_FamiliaId` FOREIGN KEY (`FamiliaId`) REFERENCES `Familia` (`Id`),
  CONSTRAINT `familiagenero_GeneroId` FOREIGN KEY (`GeneroId`) REFERENCES `Genero` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of FamiliaGenero
-- ----------------------------

-- ----------------------------
-- Table structure for `Ficha`
-- ----------------------------
DROP TABLE IF EXISTS `Ficha`;
CREATE TABLE `Ficha` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProvinciaId` int(11) unsigned NOT NULL,
  `CantonId` int(11) unsigned NOT NULL,
  `DistritoId` int(11) unsigned NOT NULL,
  `Localidad` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Latitud` int(11) NOT NULL,
  `Longitud` int(11) NOT NULL,
  `Altitud` int(11) NOT NULL,
  `DeterminadorId` int(11) unsigned NOT NULL,
  `FechaIngreso` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `FechaColecto` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `ficha_provinciaId` (`ProvinciaId`),
  KEY `ficha_cantonId` (`CantonId`),
  KEY `ficha_distritoId` (`DistritoId`),
  KEY `ficha_detId` (`DeterminadorId`),
  CONSTRAINT `ficha_cantonId` FOREIGN KEY (`CantonId`) REFERENCES `Canton` (`Id`),
  CONSTRAINT `ficha_detId` FOREIGN KEY (`DeterminadorId`) REFERENCES `Usuario` (`Id`),
  CONSTRAINT `ficha_distritoId` FOREIGN KEY (`DistritoId`) REFERENCES `Distrito` (`Id`),
  CONSTRAINT `ficha_provinciaId` FOREIGN KEY (`ProvinciaId`) REFERENCES `Provincia` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of Ficha
-- ----------------------------

-- ----------------------------
-- Table structure for `Ficha_Historial`
-- ----------------------------
DROP TABLE IF EXISTS `Ficha_Historial`;
CREATE TABLE `Ficha_Historial` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProvinciaId` int(11) NOT NULL,
  `CantonId` int(11) NOT NULL,
  `DistritoId` int(11) NOT NULL,
  `Localidad` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Latitud` int(11) NOT NULL,
  `Longitud` int(11) NOT NULL,
  `Altitud` int(11) NOT NULL,
  `DeterminadorId` int(11) NOT NULL,
  `FechaIngreso` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `FechaColecto` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of Ficha_Historial
-- ----------------------------

-- ----------------------------
-- Table structure for `Genero`
-- ----------------------------
DROP TABLE IF EXISTS `Genero`;
CREATE TABLE `Genero` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of Genero
-- ----------------------------

-- ----------------------------
-- Table structure for `Provincia`
-- ----------------------------
DROP TABLE IF EXISTS `Provincia`;
CREATE TABLE `Provincia` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of Provincia
-- ----------------------------
INSERT INTO `Provincia` VALUES ('1', 'San José');
INSERT INTO `Provincia` VALUES ('2', 'Alajuela');
INSERT INTO `Provincia` VALUES ('3', 'Cartago');
INSERT INTO `Provincia` VALUES ('4', 'Heredia');
INSERT INTO `Provincia` VALUES ('5', 'Guancaste');
INSERT INTO `Provincia` VALUES ('6', 'Puntarenas');
INSERT INTO `Provincia` VALUES ('7', 'Limón');

-- ----------------------------
-- Table structure for `Usuario`
-- ----------------------------
DROP TABLE IF EXISTS `Usuario`;
CREATE TABLE `Usuario` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Clave` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  `Rol` varchar(126) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of Usuario
-- ----------------------------
INSERT INTO `Usuario` VALUES ('1', 'test@test.com', 'test', 'Cuenta de Prueba', 'admin');
INSERT INTO `Usuario` VALUES ('2', 'tavogm@gmail.com', '123456', 'Gustavo Granados', 'admin');

-- ----------------------------
-- Procedure structure for `cantones`
-- ----------------------------
DROP PROCEDURE IF EXISTS `cantones`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cantones`(IN `pId` int)
BEGIN

	select * from Canton c where c.ProvinciaId = pId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `distritos`
-- ----------------------------
DROP PROCEDURE IF EXISTS `distritos`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `distritos`(IN `pId` int)
BEGIN

	select * from Distrito d where d.CantonId = pId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `provincias`
-- ----------------------------
DROP PROCEDURE IF EXISTS `provincias`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `provincias`()
BEGIN

	select * from Provincia;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `usuario`
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuario`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuario`(IN `pUser` varchar(32))
BEGIN

	select * from Usuario u where u.Usuario = pUser;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `usuarioById`
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuarioById`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuarioById`(IN `pId` int)
BEGIN

	select * from Usuario u where u.Id = pId;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `usuarios`
-- ----------------------------
DROP PROCEDURE IF EXISTS `usuarios`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuarios`()
BEGIN
	
	select * from Usuario;

END
;;
DELIMITER ;
