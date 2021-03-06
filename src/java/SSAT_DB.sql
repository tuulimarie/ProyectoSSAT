-- MySQL Script generated by MySQL Workbench
-- Sat Apr 25 09:51:49 2015
-- Model: New Model    Version: 1.0
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema SSAT
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SSAT` DEFAULT CHARACTER SET utf8 ;
USE `SSAT` ;


-- -----------------------------------------------------
-- Table `SSAT`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SSAT`.`Usuario` (
  `idUsuario` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `apellidos` VARCHAR(45) NULL DEFAULT NULL,
  `nacionalidad` INT(11) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `password` VARCHAR(64) NULL DEFAULT NULL,
  `degree` VARCHAR(45) NULL DEFAULT NULL,
  `date` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idUsuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SSAT`.`Calificacion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SSAT`.`Calificacion` (
  `idPuntoInteres` INT(11) NOT NULL,
  `idUsuario` INT(11) NOT NULL,
  `puntos` INT(11) NULL DEFAULT NULL,
  `fecha` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idPuntoInteres`, `idUsuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SSAT`.`Categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SSAT`.`Categoria` (
  `idCategoria` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SSAT`.`Discusion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SSAT`.`Discusion` (
  `idDiscusion` INT(11) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(90) NULL,
  `contenido` TEXT NULL,
  `fecha` DATETIME NULL DEFAULT NULL,
  `idUsuario` INT(11) NULL DEFAULT NULL,
  `categoria` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idDiscusion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SSAT`.`Nacionalidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SSAT`.`Nacionalidad` (
  `idNacionalidad` INT(11) NOT NULL AUTO_INCREMENT,
  `pais` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idNacionalidad`))
ENGINE = InnoDB
AUTO_INCREMENT = 243
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SSAT`.`PuntoInteres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SSAT`.`PuntoInteres` (
  `idPuntoInteres` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `paginaWeb` VARCHAR(45) NULL DEFAULT NULL,
  `telefono` VARCHAR(10) NULL DEFAULT NULL,
  `categoria` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idPuntoInteres`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `SSAT`.`Respuesta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SSAT`.`Respuesta` (
  `idRespuesta` INT(11) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(90) NULL DEFAULT NULL,
  `contenido` TEXT NULL,
  `fecha` DATETIME NULL DEFAULT NULL,
  `idDiscusion` INT(11) NULL DEFAULT NULL,
  `idUsuario` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idRespuesta`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (1, 'United States');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (2, 'Canada');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (3, 'Afghanistan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (4, 'Albania');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (5, 'Algeria');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (6, 'American Samoa');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (7, 'Andorra');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (8, 'Angola');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (9, 'Anguilla');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (10, 'Antarctica');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (11, 'Antigua and/or Barbuda');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (12, 'Argentina');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (13, 'Armenia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (14, 'Aruba');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (15, 'Australia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (16, 'Austria');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (17, 'Azerbaijan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (18, 'Bahamas');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (19, 'Bahrain');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (20, 'Bangladesh');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (21, 'Barbados');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (22, 'Belarus');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (23, 'Belgium');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (24, 'Belize');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (25, 'Benin');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (26, 'Bermuda');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (27, 'Bhutan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (28, 'Bolivia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (29, 'Bosnia and Herzegovina');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (30, 'Botswana');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (31, 'Bouvet Island');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (32, 'Brazil');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (33, 'British lndian Ocean Territory');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (34, 'Brunei Darussalam');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (35, 'Bulgaria');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (36, 'Burkina Faso');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (37, 'Burundi');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (38, 'Cambodia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (39, 'Cameroon');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (40, 'Cape Verde');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (41, 'Cayman Islands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (42, 'Central African Republic');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (43, 'Chad');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (44, 'Chile');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (45, 'China');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (46, 'Christmas Island');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (47, 'Cocos (Keeling) Islands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (48, 'Colombia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (49, 'Comoros');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (50, 'Congo');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (51, 'Cook Islands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (52, 'Costa Rica');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (53, 'Croatia (Hrvatska)');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (54, 'Cuba');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (55, 'Cyprus');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (56, 'Czech Republic');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (57, 'Denmark');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (58, 'Djibouti');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (59, 'Dominica');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (60, 'Dominican Republic');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (61, 'East Timor');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (62, 'Ecuador');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (63, 'Egypt');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (64, 'El Salvador');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (65, 'Equatorial Guinea');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (66, 'Eritrea');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (67, 'Estonia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (68, 'Ethiopia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (69, 'Falkland Islands (Malvinas)');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (70, 'Faroe Islands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (71, 'Fiji');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (72, 'Finland');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (73, 'France');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (74, 'France, Metropolitan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (75, 'French Guiana');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (76, 'French Polynesia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (77, 'French Southern Territories');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (78, 'Gabon');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (79, 'Gambia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (80, 'Georgia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (81, 'Germany');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (82, 'Ghana');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (83, 'Gibraltar');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (84, 'Greece');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (85, 'Greenland');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (86, 'Grenada');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (87, 'Guadeloupe');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (88, 'Guam');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (89, 'Guatemala');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (90, 'Guinea');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (91, 'Guinea-Bissau');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (92, 'Guyana');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (93, 'Haiti');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (94, 'Heard and Mc Donald Islands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (95, 'Honduras');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (96, 'Hong Kong');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (97, 'Hungary');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (98, 'Iceland');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (99, 'India');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (100, 'Indonesia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (101, 'Iran (Islamic Republic of)');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (102, 'Iraq');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (103, 'Ireland');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (104, 'Israel');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (105, 'Italy');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (106, 'Ivory Coast');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (107, 'Jamaica');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (108, 'Japan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (109, 'Jordan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (110, 'Kazakhstan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (111, 'Kenya');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (112, 'Kiribati');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (113, 'Korea, Democratic People''s Republic of');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (114, 'Korea, Republic of');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (115, 'Kosovo');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (116, 'Kuwait');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (117, 'Kyrgyzstan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (118, 'Lao People''s Democratic Republic');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (119, 'Latvia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (120, 'Lebanon');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (121, 'Lesotho');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (122, 'Liberia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (123, 'Libyan Arab Jamahiriya');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (124, 'Liechtenstein');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (125, 'Lithuania');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (126, 'Luxembourg');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (127, 'Macau');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (128, 'Macedonia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (129, 'Madagascar');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (130, 'Malawi');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (131, 'Malaysia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (132, 'Maldives');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (133, 'Mali');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (134, 'Malta');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (135, 'Marshall Islands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (136, 'Martinique');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (137, 'Mauritania');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (138, 'Mauritius');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (139, 'Mayotte');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (140, 'Mexico');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (141, 'Micronesia, Federated States of');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (142, 'Moldova, Republic of');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (143, 'Monaco');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (144, 'Mongolia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (145, 'Montenegro');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (146, 'Montserrat');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (147, 'Morocco');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (148, 'Mozambique');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (149, 'Myanmar');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (150, 'Namibia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (151, 'Nauru');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (152, 'Nepal');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (153, 'Netherlands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (154, 'Netherlands Antilles');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (155, 'New Caledonia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (156, 'New Zealand');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (157, 'Nicaragua');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (158, 'Niger');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (159, 'Nigeria');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (160, 'Niue');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (161, 'Norfork Island');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (162, 'Northern Mariana Islands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (163, 'Norway');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (164, 'Oman');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (165, 'Pakistan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (166, 'Palau');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (167, 'Panama');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (168, 'Papua New Guinea');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (169, 'Paraguay');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (170, 'Peru');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (171, 'Philippines');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (172, 'Pitcairn');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (173, 'Poland');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (174, 'Portugal');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (175, 'Puerto Rico');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (176, 'Qatar');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (177, 'Reunion');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (178, 'Romania');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (179, 'Russian Federation');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (180, 'Rwanda');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (181, 'Saint Kitts and Nevis');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (182, 'Saint Lucia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (183, 'Saint Vincent and the Grenadines');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (184, 'Samoa');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (185, 'San Marino');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (186, 'Sao Tome and Principe');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (187, 'Saudi Arabia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (188, 'Senegal');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (189, 'Serbia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (190, 'Seychelles');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (191, 'Sierra Leone');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (192, 'Singapore');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (193, 'Slovakia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (194, 'Slovenia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (195, 'Solomon Islands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (196, 'Somalia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (197, 'South Africa');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (198, 'South Georgia South Sandwich Islands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (199, 'Spain');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (200, 'Sri Lanka');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (201, 'St. Helena');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (202, 'St. Pierre and Miquelon');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (203, 'Sudan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (204, 'Suriname');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (205, 'Svalbarn and Jan Mayen Islands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (206, 'Swaziland');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (207, 'Sweden');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (208, 'Switzerland');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (209, 'Syrian Arab Republic');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (210, 'Taiwan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (211, 'Tajikistan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (212, 'Tanzania, United Republic of');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (213, 'Thailand');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (214, 'Togo');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (215, 'Tokelau');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (216, 'Tonga');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (217, 'Trinidad and Tobago');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (218, 'Tunisia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (219, 'Turkey');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (220, 'Turkmenistan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (221, 'Turks and Caicos Islands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (222, 'Tuvalu');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (223, 'Uganda');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (224, 'Ukraine');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (225, 'United Arab Emirates');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (226, 'United Kingdom');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (227, 'United States minor outlying islands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (228, 'Uruguay');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (229, 'Uzbekistan');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (230, 'Vanuatu');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (231, 'Vatican City State');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (232, 'Venezuela');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (233, 'Vietnam');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (234, 'Virgin Islands (British)');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (235, 'Virgin Islands (U.S.)');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (236, 'Wallis and Futuna Islands');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (237, 'Western Sahara');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (238, 'Yemen');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (239, 'Yugoslavia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (240, 'Zaire');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (241, 'Zambia');
INSERT INTO `nacionalidad` (idNacionalidad, pais)VALUES (242, 'Zimbabwe');


INSERT INTO `categoria` (idCategoria, nombre)VALUES (100, 'Restaurant');
INSERT INTO `categoria` (idCategoria, nombre)VALUES (101, 'Bar');
INSERT INTO `categoria` (idCategoria, nombre)VALUES (102, 'Night Club');
INSERT INTO `categoria` (idCategoria, nombre)VALUES (103, 'Parks & Ecotourism');
INSERT INTO `categoria` (idCategoria, nombre)VALUES (104, 'Museum');
INSERT INTO `categoria` (idCategoria, nombre)VALUES (105, 'Other');

INSERT INTO `categoria` (idCategoria, nombre)VALUES (0, 'Cuernavaca');
INSERT INTO `categoria` (idCategoria, nombre)VALUES (1, 'Tec de Monterrey');
INSERT INTO `categoria` (idCategoria, nombre)VALUES (2, 'Local Transportation');
INSERT INTO `categoria` (idCategoria, nombre)VALUES (3, 'Security');
INSERT INTO `categoria` (idCategoria, nombre)VALUES (4, 'Holidays');
INSERT INTO `categoria` (idCategoria, nombre)VALUES (5, 'Other');
