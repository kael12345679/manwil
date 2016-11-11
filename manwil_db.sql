-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 11-11-2016 a las 17:25:54
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `manwil_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `antecedentes`
--

CREATE TABLE IF NOT EXISTS `antecedentes` (
  `id` varchar(20) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `accion` varchar(100) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  `hora` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `antecedentes`
--

INSERT INTO `antecedentes` (`id`, `usuario`, `accion`, `fecha`, `hora`) VALUES
('1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `nombre_empresa` varchar(255) DEFAULT NULL,
  `razon_social` varchar(255) DEFAULT NULL,
  `nit` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `id_empleado` varchar(20) NOT NULL,
  `nombre_empleado` varchar(150) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=159 ;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `nombre_empresa`, `razon_social`, `nit`, `celular`, `observacion`, `id_empleado`, `nombre_empleado`, `direccion`) VALUES
(1, 'Manolos', '', 'CAFE MANOLOS', 'MANOLOS RESTAURANT SRL', '196328023', '2355271', '', '1', 'Hernando Gutierrez', 'Av. Camacho Edificio Club La Paz  # 1248'),
(2, 'Dork Inversiones', '', 'OLIVER', 'DORK INVERSIONES SRL.', '225948023', '2120764', '', '1', 'Hernando Gutierrez', 'C/ Murillo casi esq. Cochabamba Z. Central'),
(3, 'Fridolin SA.', '', 'FRIDOLIN', 'FRIDOLIN SA.', '1030967020', '2153188 - 69720704', '', '1', 'Hernando Gutierrez', 'Av. 6 de Agosto casi C/ Pedro Salazar Z. Central'),
(4, 'Maria', 'Calderon', 'MAIN COFFEE', 'MAMANI', '447126013', '2225795', '', '1', 'Hernando Gutierrez', 'Av. Saavedra esq. Villa Lobos Edif. Mesanine Z. Miraflores'),
(6, 'Ned Inversiones', '', 'STEAK HOUSE', 'NED INVERSIONES SRL.', '193092027', '2148864', '', '1', 'Hernando Gutierrez', 'Esq. Murillo C/ Cochabamba Z. Central'),
(7, 'PIZZA SEGUIOS', '', '', 'CUETO', '196761018', '2443986', '', '1', 'Hernando Gutierrez', 'Av. 6 de Agosto C/ JJ Perez y Aspiazu Z. Central'),
(8, 'Vania', 'Soto Ledezma', 'PAPAYA EXPRESS', 'VANIA SOTO LEDEZMA', '5276183010', '74072284', '', '1', 'Hernando Gutierrez', 'Ceja c/ Jorge Carrasco La Jungla Patio de Comidas'),
(9, '', 'Abrego', 'PATIO DE COMIDAS', 'ABREGO', '6775672010', '73009325', '', '1', 'Hernando Gutierrez', 'Av. Montes Z. Central'),
(10, 'Fernando', 'Bellot', 'RICO PAN RICO', 'FERNANDO BELLOT', '584762016', '2231953 - 2229558', '', '1', 'Hernando Gutierrez', 'Av. 6 de Agosto c/ Pedro Salazar Z. Central'),
(11, '', 'De Rave', 'SOL Y LUNA', 'DE RAVE', '1019459023', '2115323', '', '1', 'Hernando Gutierrez', 'c/ Murillo esq. Cochabamba Z. Central'),
(12, 'Entrestur', '', 'SIL - PANCHO', 'ENTRESTUR SRL.', '268024027', '75264284', '', '1', 'Hernando Gutierrez', 'Ceja c/ 2  Av. 6 de Marzo Edif. Illimani Patio de Comida'),
(13, 'Olive Tree', '', 'OLIVE TREE', 'THE OLIVE THEE SRL', '1002695026', '2431552 - 72091466', '', '1', 'Hernando Gutierrez', 'Av. 6 de Agosto y Campos Z. Central'),
(14, 'Vanesa', '', '', '', '', '2455927', '', '1', 'Hernando Gutierrez', 'Terminal de Buses La Paz dentro del Patio de Comidas'),
(15, 'Heber', 'Quispe Do Nascimento', 'CARIBE', 'HEBER QUISPE DO NASCIMENTO', '3478927019', '76513300', '', '1', 'Hernando Gutierrez', 'Av. Camacho y Calle Bueno Z. Central'),
(16, '', 'Vargas', 'ESPIGA DE ORO', 'VARGAS INVERSIONES SRL.', '163968027', '2811022', '', '1', 'Hernando Gutierrez', 'Av. Satelite # 698 Frente Hospital Holandes'),
(17, '', 'Ocampo', 'COMA Y PUNTO', 'OCAMPO', '2699233014', '2148304', '', '1', 'Hernando Gutierrez', 'Av. Mariscal Santa Cruz # 1351 entre c/ Loayza y Colon Edif. Litoral'),
(18, '', 'Quisbert', 'BUEN GUSTO', 'QUISBERT', '3314567017', '71921100', '', '1', 'Hernando Gutierrez', 'Av. Del Policia cerca al Semaforo'),
(19, 'The Melting Pot', '& Rock s.r.l.', 'THE MELTING POT & ROCK SRL.', 'THE MELTING POT & ROCK SRL.', '282374020', '', '', '1', 'Hernando Gutierrez', 'Frente Sol y Luna subir Gradas'),
(20, '', 'Menacho', 'COMERCIO "MEGA 1"', 'MENACHO', '5606135014', '2409222', '', '1', 'Hernando Gutierrez', 'C/ Comercio esq. Genaro Sanjines # 914'),
(21, 'Ivoni', 'Miranda Miranda', 'VILLAZON "MEGA 2"', 'IVONI MIRANDA MIRANDA', '4976350013', '2311646', '', '1', 'Hernando Gutierrez', 'Villazon frente al Monoblock de la UMSA'),
(22, 'Elvis', 'Miranda Miranda', 'MIRAFLORES "MEGA 3"', 'ELVIS MIRANDA MIRANDA', '6180524016', '2914040', '', '1', 'Hernando Gutierrez', 'Av. Buch esq. Villa Romero # 1899 Z. Miraflores'),
(23, 'Elvis', 'Miranda Miranda', 'CAMACHO "MEGA 4"', 'ELVIS MIRANDA MIRANDA', '6180524016', '2313100', '', '1', 'Hernando Gutierrez', 'Av. Camacho y la Bueno # 159'),
(24, '', 'Miranda', 'UYUNI "MEGA 5"', 'MIRANDA', '3441708015', '2248582', '', '1', 'Hernando Gutierrez', 'Plaza Uyuni Z. Miraflores'),
(25, 'Elvis', 'Miranda Miranda', '"MEGA 6"', 'ELVIS MIRANDA MIRANDA', '6180524016', '2441433', '', '1', 'Hernando Gutierrez', 'Av. 6 de Agosto frente a Super andi'),
(26, 'Elvis', 'Miranda Miranda', '"MEGA 7"', 'ELVIS MIRANDA MIRANDA', '6180524016', '2820440', '', '1', 'Hernando Gutierrez', 'El Alto Edif. Illimani Piso 4 Local 2'),
(27, 'VICTORIA', '', '', '', '', '', '', '5', 'Juan Apaza', ''),
(28, 'VERONICA', 'APAZA', '', '', '', '', '', '5', 'Juan Apaza', ''),
(29, 'CONCEPCCION', 'ALANOCA', '', '', '', '', '', '5', 'Juan Apaza', ''),
(30, 'LUIS', 'MAMANI', '', '', '', '', '', '5', 'Juan Apaza', ''),
(31, 'MAXIMA', 'QUISBERT', '', '', '', '', '', '5', 'Juan Apaza', ''),
(32, 'TOMASA', '', '', '', '', '', '', '5', 'Juan Apaza', ''),
(33, 'ANA MARIA', '', '', '', '', '', '', '5', 'Juan Apaza', ''),
(34, 'ALICIA', '', '', '', '', '', '', '5', 'Juan Apaza', ''),
(35, 'BEATRIZ', 'MAMANI', '', '', '', '', '', '5', 'Juan Apaza', ''),
(36, 'JULIA', 'LLIPE', '', '', '', '', '', '5', 'Juan Apaza', ''),
(37, 'MARIANELA', '', '', '', '', '', '', '5', 'Juan Apaza', ''),
(38, 'MAXIMA', '', '', '', '', '', '', '5', 'Juan Apaza', ''),
(39, 'ROSA', 'VARGAS', '', '', '', '', '', '5', 'Juan Apaza', ''),
(40, 'NIEVEZ', '', '', '', '', '', '', '5', 'Juan Apaza', ''),
(41, 'CHAPACO', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(42, 'ALANOCA', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(43, 'CHARITO', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(44, 'JULIA', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(45, 'CELIA', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(46, 'LEONOR', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(47, 'MARCELA', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(48, 'BETTY', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(49, 'MARIA', 'SALGADO', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(50, 'EVA', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(51, 'POLY', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(52, 'DIONICIA', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(53, 'DAYANA', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(54, 'GUSTAVO', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(55, 'MANUEL', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(56, 'BLANCA', 'FLORES', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(57, 'ELVIRA', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(58, 'YENNI', 'YAPU', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(59, 'CARMEN', 'ASPI', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(60, 'LOURDES', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(61, 'PAMELA', 'MAYTA', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(62, 'YOLANDA', '', '', '', '', '', '', '6', 'Julio Aranda', ''),
(63, 'ANGELICA', '', '', '', '', '', '', '6', 'Julio Aranda', ''),
(64, 'MARIA', 'QUISBERT', '', '', '', '', '', '6', 'Julio Aranda', ''),
(65, 'JUANA', 'PATZI', '', '', '', '', '', '6', 'Julio Aranda', ''),
(66, 'HILDA', '', '', '', '', '', '', '6', 'Julio Aranda', ''),
(67, 'ELENA', '', '', '', '', '', '', '6', 'Julio Aranda', ''),
(68, 'JOSE LUIS', 'CASAS', '', '', '', '', '', '6', 'Julio Aranda', ''),
(69, 'ANASTACIA', '', '', '', '', '', '', '6', 'Julio Aranda', ''),
(70, 'DELMA', '', '', '', '', '', '', '6', 'Julio Aranda', ''),
(71, 'PEDRO', 'LAURA', '', '', '', '', '', '6', 'Julio Aranda', ''),
(72, 'JAIME', '', '', '', '', '', '', '6', 'Julio Aranda', ''),
(73, 'MARINA', 'PAIRO', '', '', '', '', '', '6', 'Julio Aranda', ''),
(74, 'FRIAL', 'IMBA', '', '', '', '', '', '6', 'Julio Aranda', ''),
(75, 'MARINA', 'LOPEZ', '', '', '', '', '', '6', 'Julio Aranda', ''),
(76, 'FLORA', 'QUIÃ‘ONES', '', '', '', '', '', '6', 'Julio Aranda', ''),
(77, 'PACOSILLO', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(78, 'NANCY', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(79, 'MARIA', 'QUISPE', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(80, 'AMERICA', '', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(81, 'RIBER', 'RODRIGUEZ', '', '', '', '', '', '2', 'Diego Tarifa', ''),
(82, 'DAYANA', '', '', '', '', '', '', '6', 'Julio Aranda', ''),
(83, 'MAGDALENA', '', '', '', '', '', '', '6', 'Julio Aranda', ''),
(84, 'ROCIO', '', '', '', '', '', '', '6', 'Julio Aranda', ''),
(85, 'PASCUALA', '', '', '', '', '', '', '6', 'Julio Aranda', ''),
(86, 'TEODORA', '', '', '', '', '', '', '6', 'Julio Aranda', ''),
(87, 'JULIA', 'PALABRA', '', '', '', '', '', '6', 'Julio Aranda', ''),
(88, 'JUAN', 'PATZI', '', '', '', '', '', '6', 'Julio Aranda', ''),
(89, 'HILDA', 'CONDORI', '', '', '', '', '', '6', 'Julio Aranda', ''),
(90, 'LOS AZULEJOS DE HUANCANE', '', '', 'TRISTAN', '2445229017', '76500239', '', '1', 'Hernando Gutierrez', 'CALLE HAITI ENTRE AV. BUCH'),
(91, 'EL RINCON DE PLACIDO', '', '', 'LOPEZ', '4849649014', '2286253 - 79122833', '', '1', 'Hernando Gutierrez', 'TERMINAL DE BUSES LA PAZ - INTERIOR'),
(92, 'LA COCINA DE MAMA', '', '', 'C.E.M. SRL', '297792023', '70119613', '', '1', 'Hernando Gutierrez', 'AV. JORGE CARRASCO C/ 5y4 PATIO DE COMIDAS'),
(93, 'BUFFALO AND RIBS', '', '', 'URIA', '4768768018', '76510113', '', '1', 'Hernando Gutierrez', 'AV. JORGE CARRASCO C/ 5y4 PATIO DE COMIDAS'),
(94, '6 DE AGOSTO', '', '', 'MONTAÃ‘O', '3786865018', '72513336', '', '1', 'Hernando Gutierrez', 'AV. 6 DE AGOSTO ESQ. CAMPOS'),
(95, 'LA CABAÃ‘A CENTRAL - 0', '', 'LA CABAÃ‘A', 'ESPEJO', '4270509017', '2821677', '', '1', 'Hernando Gutierrez', 'C/ JORGE CARRASCO ESQ. CALLE 2'),
(96, 'LA CABAÃ‘A SUCURSAL - 1', '', 'LA CABAÃ‘A', 'SAAVEDRA', '3428441018', '2820248', '', '1', 'Hernando Gutierrez', 'FINAL TIHUANACU ESQ. 6 DE MARZO (CUARTEL INGAVI)'),
(97, 'LA CABAÃ‘A SUCURSAL - 2', '', 'LA CABAÃ‘A', 'SAAVEDRA', '3428441018', '2810352', '', '1', 'Hernando Gutierrez', 'AV. ANTOFAGASTA EST. TELEFERICO AMARILLO'),
(98, 'LA CABAÃ‘A SUCURSAL - 3', '', 'LA CABAÃ‘A', 'SAAVEDRA', '3428441018', '65179698', '', '1', 'Hernando Gutierrez', 'AV. 6 DE MARZO EX TRANCA DE SENKATA'),
(99, 'GIROS MAROK', '', '', 'QUISPE', '3462055014', '75220760', '', '1', 'Hernando Gutierrez', 'AV. BUCH ESQ. PANAMA'),
(100, 'LA PAZCANA', '', '', 'FABIOLA QUINTANA', '8301088012', '', '', '1', 'Hernando Gutierrez', 'PLAZA DE COMIDAS CEIBO'),
(101, 'YOGGUIS', '', '', 'HUMEREZ', '5763605015', '70549101', '', '1', 'Hernando Gutierrez', 'AV. PERU'),
(102, 'DON  PEREJIL', '', '', 'AGUIRRE', '5952734010', '2432554 - 72088517', '', '1', 'Hernando Gutierrez', 'PEDRO SALAZAR ESQ. AV. 6 DE AGOSTO'),
(103, 'LE PETIT  II', '', '', 'OCHOA', '467982016', '73053193', '', '1', 'Hernando Gutierrez', 'AV. 6 DE MARZO'),
(104, 'THE DUBLINER', '', '', 'THE DUBLINER SRL', '180962023', '2121211', '', '1', 'Hernando Gutierrez', 'IRPAVI EDIFICIO MEGA CENTER'),
(105, 'DO BRASIL', '', '', 'BALTAZAR', '2392227013', '2245030 - 74008223', '', '1', 'Hernando Gutierrez', 'AV. BUCH ESQ. VILLALOBOS'),
(106, 'LA LLAJTA', '', '', 'CARLOS ZEGARRA', '6813504', '76263106', '', '1', 'Hernando Gutierrez', 'AV. PERU'),
(107, 'TRIANGULAR', '', '', '', '', '65644690', '', '1', 'Hernando Gutierrez', 'PLAZA TRIANGULAR'),
(108, 'CAFETERIA ZULMA', '', '', '', '', '74023974 - 76526046', '', '1', 'Hernando Gutierrez', 'TERMINAL DE BUSES LA PAZ CASETA B-1'),
(109, 'SNACK LILI', '', '', '', '', '77252825', '', '1', 'Hernando Gutierrez', 'TERMINAL DE BUSES LA PAZ CASETA A-4'),
(110, 'SNACK NELY', '', '', '', '', '79522232', '', '1', 'Hernando Gutierrez', 'TERMINAL DE BUSES LA PAZ CASETA A-5'),
(111, 'LOS PESCADITOS', '', '', '', '', '2720449', '', '1', 'Hernando Gutierrez', 'AV. SANCHEZ CALLE 11 IRPAVI'),
(112, 'GOLIAT', '', '', '', '', '67181080', '', '1', 'Hernando Gutierrez', 'AV. QUINTANILLA  CALLE LENZ'),
(113, 'DON SEJO', '', '', '', '', '76770722', '', '1', 'Hernando Gutierrez', 'PLAZA DE COMIDAS EL CEIBO'),
(114, 'POLLO EXPRESS', '', '', 'ENTRESTUR', '268024027', '75264284', '', '1', 'Hernando Gutierrez', 'CALLE 2 PATIO DE COMIDAS EDIF. ILLIMANI'),
(115, 'MADAGASCAR', '', '', 'JESUS ERNESTO CAMARGO ALEGRE', '', '2825107 - 79686350', '', '1', 'Hernando Gutierrez', 'AV. RAUL SALMON DE BARRA'),
(116, 'CAFE KARAOKE ARAWY', '', '', 'CARLOS ALANOCA', '', '60108649', '', '1', 'Hernando Gutierrez', 'CALLE 2 # 777 ENTRE AV. ANTOFAGASTA'),
(117, '', '', NULL, NULL, NULL, NULL, NULL, '', '', NULL),
(118, '', '', NULL, NULL, NULL, NULL, NULL, '', '', NULL),
(119, '', '', NULL, NULL, NULL, NULL, NULL, '', '', NULL),
(120, '', '', NULL, NULL, NULL, NULL, NULL, '', '', NULL),
(121, '', '', NULL, NULL, NULL, NULL, NULL, '', '', NULL),
(122, '', '', NULL, NULL, NULL, NULL, NULL, '', '', NULL),
(123, '', '', NULL, NULL, NULL, NULL, NULL, '', '', NULL),
(124, '', '', NULL, NULL, NULL, NULL, NULL, '', '', NULL),
(125, '', '', '', '', '', '', '', '1', 'Hernando Gutierrez', ''),
(126, 'OSCAR', '', NULL, NULL, NULL, NULL, NULL, '2', 'Diego Tarifa', NULL),
(127, 'DOMINGA', '', NULL, NULL, NULL, NULL, NULL, '2', 'Diego Tarifa', NULL),
(128, 'MARINA', '', NULL, NULL, NULL, NULL, NULL, '', '', NULL),
(129, 'alicia', '', NULL, NULL, NULL, NULL, NULL, '2', 'Diego Tarifa', NULL),
(130, 'rosa', 'linda', NULL, NULL, NULL, NULL, NULL, '2', 'Diego Tarifa', NULL),
(131, 'elvira', '', NULL, NULL, NULL, NULL, NULL, '2', 'Diego Tarifa', NULL),
(132, 'meche', '', NULL, NULL, NULL, NULL, NULL, '2', 'Diego Tarifa', NULL),
(133, 'FATIMA', '', NULL, NULL, NULL, NULL, NULL, '2', 'Diego Tarifa', NULL),
(134, 'NEYSA', '', NULL, NULL, NULL, NULL, NULL, '2', 'Diego Tarifa', NULL),
(135, 'NELSON', '', NULL, NULL, NULL, NULL, NULL, '2', 'Diego Tarifa', NULL),
(136, 'JUANA', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(137, 'OSCAR', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(138, 'PRIMITIVA', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(139, 'MARY', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(140, 'LUISA', 'TINTA', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(141, 'MARINA', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(142, 'ADELA', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(143, 'COSME', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(144, 'SOFIA', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(145, 'LIDIA', 'I.', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(146, 'JULIA', 'NINA', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(147, 'JUANA', 'QUISPE', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(148, 'RUTH', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(149, 'MARTHA', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(150, 'ANGELA', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(151, 'JUSTINA', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(152, 'BERTHA', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(153, 'MIRIAM', 'BARRA', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(154, 'FRANKLIN', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(155, 'GREGORIA', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(156, 'CHACON', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(157, 'NANCY', '', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL),
(158, 'VICKY', 'CONDE', NULL, NULL, NULL, NULL, NULL, '6', 'Julio Aranda', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE IF NOT EXISTS `empleado` (
  `id_empleado` int(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) DEFAULT NULL,
  `apellido` varchar(150) DEFAULT NULL,
  `fecha_nacimiento` varchar(150) DEFAULT NULL,
  `ci` varchar(100) DEFAULT NULL,
  `tel_Cel` varchar(100) DEFAULT NULL,
  `fecha_ingreso` varchar(150) DEFAULT NULL,
  `fecha_retiro` varchar(150) DEFAULT NULL,
  `horario` varchar(100) DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `garante` varchar(100) DEFAULT NULL,
  `hoja_vida` varchar(100) DEFAULT NULL,
  `observacion` varchar(150) DEFAULT NULL,
  `sexo` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`id_empleado`, `nombre`, `apellido`, `fecha_nacimiento`, `ci`, `tel_Cel`, `fecha_ingreso`, `fecha_retiro`, `horario`, `cargo`, `garante`, `hoja_vida`, `observacion`, `sexo`, `direccion`) VALUES
(1, 'Hernando', 'Gutierrez', '25/02/1981', '4745061LP', '71987456', '19/09/2016', '19/12/2016', '08:00 - 17:00', 'Vendedor', 'si', 'si', 'moreno de estatura media', 'M', 'Z. Nuevos Horizontes'),
(2, 'Diego', 'Tarifa', '08/05/1988', '6548745LP', '2354687', '01/01/2014', '', '07:00 - 18:00', 'Vendedor', 'si', 'si', '', 'M', 'Z. Franca Calle 2'),
(3, 'Jasinto', 'Robles', '18/08/1970', '4445148', '65487841', '12/02/2000', '', '08:00 - 18:00', 'Portero', 'si', 'si', '', 'M', 'z. Inca Chaca'),
(4, 'Cinthya', 'Pusari Fernandez', '12/10/1994', '9211146LP', '71965487', '19/09/2016', '18/12/2016', '08:30 -17:00', 'Auxiliar Contable', 'no', 'si', '', 'F', 'Rio seco'),
(5, 'Juan', 'Apaza', '08/12/1978', '456789lp', '78945612', '01/03/2016', '', 'no definido', 'vendedor', 'si', 'si', '', 'M', 'santa isabel'),
(6, 'Julio', 'Aranda', '29/03/1985', '1124145lp', '60145787', '09/04/2014', '', 'no definido', 'Vendedor', 'si', 'si', '', 'M', 'senkata'),
(7, 'Maria', 'Copa', '', '6058218LP', '', '', '', '', 'Gerente General', '', '', '', 'F', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
  `id_nota` int(20) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(150) DEFAULT NULL,
  `empresa` varchar(150) DEFAULT NULL,
  `autorizado` varchar(100) DEFAULT NULL,
  `vendedor` varchar(100) DEFAULT NULL,
  `monto` varchar(100) DEFAULT NULL,
  `baja` varchar(100) DEFAULT NULL,
  `tc` varchar(100) DEFAULT NULL,
  `deposito` varchar(150) DEFAULT NULL,
  `id_cliente` varchar(150) DEFAULT NULL,
  `id_usuario` varchar(100) DEFAULT NULL,
  `id_empleado` varchar(150) DEFAULT NULL,
  `forma_pago` varchar(150) DEFAULT NULL,
  `nota_unica` varchar(150) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id_nota`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`id_nota`, `cliente`, `empresa`, `autorizado`, `vendedor`, `monto`, `baja`, `tc`, `deposito`, `id_cliente`, `id_usuario`, `id_empleado`, `forma_pago`, `nota_unica`, `fecha_creacion`) VALUES
(1, 'Manolos ', 'CAFE MANOLOS', 'Juan Callisaya', 'Hernando Gutierrez', '256', 'CANCELADO', '', '', '1', '6897356LP', '1', 'credito', NULL, '2016-09-01'),
(2, ' ', '', 'ivan pro', 'Hernando Gutierrez', '0', 'CANCELADO', '6.97', '', '33', '888862LP', '1', 'contado', NULL, '2016-10-03'),
(3, ' ', '', 'ivan pro', 'Hernando Gutierrez', '0', 'CANCELADO', '6.97', '', '33', '888862LP', '1', 'contado', NULL, '2016-10-05'),
(4, ' ', '', 'ivan pro', 'Diego Tarifa', '0', 'CANCELADO', '', '', '28', '888862LP', '2', 'contado', NULL, '2016-10-01'),
(5, ' ', '', 'ivan pro', 'Hernando Gutierrez', '0', 'CANCELADO', '', '', '33', '888862LP', '1', 'contado', NULL, '2016-09-26'),
(6, ' ', '', 'ivan pro', 'Hernando Gutierrez', '0', 'DEBE', '', '', '33', '888862LP', '1', 'contado', NULL, '2016-10-08'),
(7, ' ', '', 'ivan pro', 'Hernando Gutierrez', '0', 'CANCELADO', '', '', '33', '888862LP', '1', 'contado', NULL, '2016-10-10'),
(8, ' ', '', 'ivan pro', 'Hernando Gutierrez', '0', 'CANCELADO', '', '', '33', '888862LP', '1', 'contado', NULL, '2016-10-12'),
(9, ' ', '', 'ivan pro', 'Hernando Gutierrez', '0', 'CANCELADO', '', '', '33', '888862LP', '1', 'contado', NULL, '2016-10-15'),
(10, ' ', '', 'ivan pro', 'Diego Tarifa', '0', 'DEBE', '', '', '28', '888862LP', '2', 'contado', NULL, '2016-10-17'),
(11, ' ', '', 'ivan pro', 'Hernando Gutierrez', '0', 'CANCELADO', '', '', '33', '888862LP', '1', 'contado', NULL, '2016-10-25'),
(12, ' ', '', 'ivan pro', 'Hernando Gutierrez', '0', 'DEBE', '', '', '33', '888862LP', '1', 'credito', NULL, '2016-10-30'),
(13, ' ', '', 'Rebeca Quispe', 'Hernando Gutierrez', '0', 'CANCELADO', '', '', '33', '6066719LP', '1', 'contado', NULL, '2016-10-29'),
(14, ' ', '', 'Maria Copa', 'Diego Tarifa', '0', 'DEBE', '', '', '28', '6058218LP', '2', 'contado', NULL, '2016-11-03'),
(15, ' ', '', 'Maria Copa', 'Hernando Gutierrez', '0', 'DEBE', '', '', '33', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(16, ' Cueto', 'PIZZA SEGUIOS', 'Maria Copa', 'Hernando Gutierrez', '49', 'DEBE', '6.97', '', '7', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(17, ' Cueto', 'PIZZA SEGUIOS', 'Maria Copa', 'Hernando Gutierrez', '29', 'DEBE', '6.97', '', '7', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(18, 'Manolos ', 'CAFE MANOLOS', 'Maria Copa', 'Hernando Gutierrez', '315', 'DEBE', '6.97', '', '1', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(19, 'Vanesa ', 'VANESA', 'Maria Copa', 'Hernando Gutierrez', '64', 'DEBE', '6.97', '', '14', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(20, ' Menacho', 'COMERCIO "MEGA 1"', 'Maria Copa', 'Hernando Gutierrez', '739', 'DEBE', '6.97', '', '20', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(21, 'Ivoni Miranda Miranda', 'VILLAZON "MEGA 2"', 'Maria Copa', 'Hernando Gutierrez', '573', 'DEBE', '6.97', '', '21', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(22, 'Elvis Miranda Miranda', 'MIRAFLORES "MEGA 3"', 'Maria Copa', 'Hernando Gutierrez', '556', 'DEBE', '6.97', '', '22', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(23, 'Elvis Miranda Miranda', 'CAMACHO "MEGA 4"', 'Maria Copa', 'Hernando Gutierrez', '800', 'DEBE', '6.97', '', '23', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(24, ' Miranda', 'UYUNI "MEGA 5"', 'Maria Copa', 'Hernando Gutierrez', '0', 'DEBE', '6.97', '', '24', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(25, ' Miranda', 'UYUNI "MEGA 5"', 'Maria Copa', 'Hernando Gutierrez', '300', 'DEBE', '6.97', '', '24', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(26, 'Elvis Miranda Miranda', '"MEGA 6"', 'Maria Copa', 'Hernando Gutierrez', '212', 'DEBE', '6.97', '', '25', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(27, ' Miranda', 'UYUNI "MEGA 5"', 'Maria Copa', 'Hernando Gutierrez', '300', 'DEBE', '6.97', '', '24', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(28, 'Vania Soto Ledezma', 'PAPAYA EXPRESS', 'Maria Copa', 'Hernando Gutierrez', '163', 'DEBE', '', '', '8', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(29, ' Menacho', 'COMERCIO "MEGA 1"', 'Maria Copa', 'Hernando Gutierrez', '108', 'DEBE', '6.97', '', '20', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(30, 'Maria Calderon', 'MY COFFI', 'Maria Copa', 'Hernando Gutierrez', '98', 'DEBE', '6.97', '', '4', '6058218LP', '1', 'contado', NULL, '2016-11-04'),
(35, ' Ocampo', 'COMA Y PUNTO', 'Rebeca Quispe', 'Hernando Gutierrez', '147', 'DEBE', '', '', '17', '6066719LP', '1', 'contado', NULL, '2016-11-09'),
(36, 'LOS PESCADITOS ', '', 'Juan Callisaya', 'Hernando Gutierrez', '112', 'DEBE', '', '', '111', '6897356LP', '1', 'contado', NULL, '2016-11-09'),
(37, ' Menacho', 'COMERCIO "MEGA 1"', 'Maria Copa', 'Hernando Gutierrez', '1993', 'DEBE', '', '', '20', '6058218LP', '1', 'contado', NULL, '2016-11-05'),
(38, 'Elvis Miranda Miranda', 'MIRAFLORES "MEGA 3"', 'Maria Copa', 'Hernando Gutierrez', '1494', 'DEBE', '', '', '22', '6058218LP', '1', 'contado', NULL, '2016-11-05'),
(39, 'Elvis Miranda Miranda', 'CAMACHO "MEGA 4"', 'Maria Copa', 'Hernando Gutierrez', '1704', 'DEBE', '', '', '23', '6058218LP', '1', 'contado', NULL, '2016-11-05'),
(40, ' Miranda', 'UYUNI "MEGA 5"', 'Maria Copa', 'Hernando Gutierrez', '996', 'DEBE', '', '', '24', '6058218LP', '1', 'contado', NULL, '2016-11-05'),
(41, 'Elvis Miranda Miranda', '"MEGA 6"', 'Maria Copa', 'Hernando Gutierrez', '587', 'DEBE', '', '', '25', '6058218LP', '1', 'contado', NULL, '2016-11-05'),
(42, 'Ivoni Miranda Miranda', 'VILLAZON "MEGA 2"', 'Rebeca Quispe', 'Hernando Gutierrez', '830', 'DEBE', '', '', '21', '6066719LP', '1', 'contado', NULL, '2016-11-05'),
(43, ' Menacho', 'COMERCIO "MEGA 1"', 'Maria Copa', 'Hernando Gutierrez', '135', 'DEBE', '', '', '20', '6058218LP', '1', 'contado', NULL, '2016-11-05'),
(44, 'Vanesa ', '', 'Maria Copa', 'Hernando Gutierrez', '64', 'DEBE', '', '', '14', '6058218LP', '1', 'contado', NULL, '2016-11-05'),
(45, 'Vania Soto Ledezma', 'PAPAYA EXPRESS', 'Maria Copa', 'Hernando Gutierrez', '128', 'DEBE', '', '', '8', '6058218LP', '1', 'contado', NULL, '2016-11-05'),
(46, '6 DE AGOSTO ', 'Restaurant', 'Rebeca Quispe', 'Hernando Gutierrez', '210', 'DEBE', '', '', '94', '6066719LP', '1', 'contado', NULL, '2016-11-05'),
(47, '', '', 'Maria Copa', '', '0', 'DEBE', '', '', '', '6058218LP', '', 'contado', NULL, '2016-11-05'),
(48, '', '', 'Maria Copa', '', '0', 'DEBE', '', '', '', '6058218LP', '', 'contado', NULL, '2016-11-05'),
(49, '', '', 'Maria Copa', '', '0', 'DEBE', '', '', '', '6058218LP', '', 'contado', NULL, '2016-11-05'),
(50, '', '', 'Maria Copa', '', '0', 'DEBE', '', '', '', '6058218LP', '', 'contado', NULL, '2016-11-05'),
(51, '', '', 'Maria Copa', '', '0', 'DEBE', '', '', '', '6058218LP', '', 'contado', NULL, '2016-11-05'),
(52, '', '', 'Maria Copa', '', '0', 'DEBE', '', '', '', '6058218LP', '', 'contado', NULL, '2016-11-05'),
(53, '', '', 'Maria Copa', '', '0', 'DEBE', '', '', '', '6058218LP', '', '', NULL, '2016-11-05'),
(54, 'Manolos ', 'CAFE MANOLOS', 'Maria Copa', 'Hernando Gutierrez', '28', 'DEBE', '', '', '1', '6058218LP', '1', 'contado', NULL, '2016-11-05'),
(55, ' Menacho', 'COMERCIO "MEGA 1"', 'Maria Copa', 'Hernando Gutierrez', '750', 'DEBE', '', '', '20', '6058218LP', '1', 'contado', NULL, '2016-11-07'),
(56, ' Menacho', 'COMERCIO "MEGA 1"', 'Maria Copa', 'Hernando Gutierrez', '750', 'DEBE', '', '', '20', '6058218LP', '1', 'contado', NULL, '2016-11-07'),
(57, 'Manolos ', 'CAFE MANOLOS', 'Maria Copa', 'Hernando Gutierrez', '0', 'DEBE', '', '', '1', '6058218LP', '1', 'contado', NULL, '2016-11-07'),
(58, 'CHAPACO ', 'Preventista', 'Maria Copa', 'Diego Tarifa', '477', 'DEBE', '', '', '41', '6058218LP', '2', 'contado', NULL, '2016-11-08'),
(59, 'CHARITO ', 'Preventista', 'Maria Copa', 'Diego Tarifa', '230', 'DEBE', '', '', '43', '6058218LP', '2', 'contado', NULL, '2016-11-08'),
(60, 'Vania Soto Ledezma', 'PAPAYA EXPRESS', 'Rebeca Quispe', 'Hernando Gutierrez', '163', 'DEBE', '', '', '8', '6066719LP', '1', 'contado', NULL, '2016-11-08'),
(61, 'LA CABAÃ‘A SUCURSAL - 2 ', 'LA CABAÃ‘A', 'Juan Callisaya', 'Hernando Gutierrez', '150', 'DEBE', '', '', '97', '6897356LP', '1', 'contado', NULL, '2016-11-08'),
(62, ' Menacho', 'COMERCIO "MEGA 1"', 'Rebeca Quispe', 'Hernando Gutierrez', '588', 'DEBE', '', '', '20', '6066719LP', '1', 'contado', NULL, '2016-11-09'),
(63, ' Menacho', 'COMERCIO "MEGA 1"', 'Rebeca Quispe', 'Hernando Gutierrez', '105.3', 'DEBE', '', '', '20', '6066719LP', '1', 'contado', NULL, '2016-11-09'),
(64, 'Elvis Miranda Miranda', 'CAMACHO "MEGA 4"', 'Rebeca Quispe', 'Hernando Gutierrez', '725', 'DEBE', '', '', '23', '6066719LP', '1', 'contado', NULL, '2016-11-09'),
(65, ' Miranda', 'UYUNI "MEGA 5"', 'Rebeca Quispe', 'Hernando Gutierrez', '316', 'DEBE', '', '', '24', '6066719LP', '1', 'contado', NULL, '2016-11-09'),
(66, 'Ivoni Miranda Miranda', 'VILLAZON "MEGA 2"', 'Juan Callisaya', 'Hernando Gutierrez', '180', 'DEBE', '', '', '21', '6897356LP', '1', 'contado', NULL, '2016-11-09'),
(67, 'Elvis Miranda Miranda', 'MIRAFLORES "MEGA 3"', 'Cinthia Pusari', 'Hernando Gutierrez', '453', 'DEBE', '', '', '22', '9211146LP', '1', 'contado', NULL, '2016-11-09'),
(68, 'Elvis Miranda Miranda', '"MEGA 6"', 'Cinthia Pusari', 'Hernando Gutierrez', '242', 'DEBE', '', '', '25', '9211146LP', '1', 'contado', NULL, '2016-11-09'),
(69, 'THE DUBLINER ', '', 'Cinthia Pusari', 'Hernando Gutierrez', '245', 'DEBE', '', '', '104', '9211146LP', '1', 'contado', NULL, '2016-11-09'),
(70, 'ALANOCA ', '', 'Maria Copa', 'Diego Tarifa', '0', 'DEBE', '', '', '42', '6058218LP', '2', 'credito', NULL, '2016-11-09'),
(71, 'GUSTAVO ', '', 'Maria Copa', 'Diego Tarifa', '115', 'DEBE', '', '', '54', '6058218LP', '2', 'contado', NULL, '2016-11-10'),
(72, ' Menacho', 'COMERCIO "MEGA 1"', 'Cinthia Pusari', 'Hernando Gutierrez', '694', 'DEBE', '', '', '20', '9211146LP', '1', 'contado', NULL, '2016-11-10'),
(73, 'alicia ', '', 'Maria Copa', 'Diego Tarifa', '69', 'DEBE', '', '', '129', '6058218LP', '2', 'contado', NULL, '2016-11-10'),
(74, 'alicia ', '', 'Maria Copa', 'Diego Tarifa', '69', 'DEBE', '', '', '129', '6058218LP', '2', 'contado', NULL, '2016-11-10'),
(75, 'YENNI YAPU', '', 'Maria Copa', 'Diego Tarifa', '138', 'DEBE', '', '', '58', '6058218LP', '2', 'contado', NULL, '2016-11-10'),
(76, ' Menacho', 'COMERCIO "MEGA 1"', 'Cinthia Pusari', 'Hernando Gutierrez', '135', 'DEBE', '', '', '20', '9211146LP', '1', 'contado', NULL, '2016-11-10'),
(77, 'rosa linda', '', 'Maria Copa', 'Diego Tarifa', '69', 'DEBE', '', '', '130', '6058218LP', '2', 'contado', NULL, '2016-11-10'),
(78, 'Ivoni Miranda Miranda', 'VILLAZON "MEGA 2"', 'Cinthia Pusari', 'Hernando Gutierrez', '587', 'DEBE', '', '', '21', '9211146LP', '1', 'contado', NULL, '2016-11-10'),
(79, 'ELVIRA ', '', 'Maria Copa', 'Diego Tarifa', '115', 'DEBE', '', '', '57', '6058218LP', '2', 'contado', NULL, '2016-11-10'),
(80, 'Elvis Miranda Miranda', 'MIRAFLORES "MEGA 3"', 'Cinthia Pusari', 'Hernando Gutierrez', '405', 'DEBE', '', '', '22', '9211146LP', '1', 'contado', NULL, '2016-11-10'),
(81, 'meche ', '', 'Maria Copa', 'Diego Tarifa', '115', 'DEBE', '', '', '132', '6058218LP', '2', 'contado', NULL, '2016-11-10'),
(82, 'CHARITO ', '', 'Maria Copa', 'Diego Tarifa', '230', 'DEBE', '', '', '43', '6058218LP', '2', 'contado', NULL, '2016-11-10'),
(83, 'Elvis Miranda Miranda', 'CAMACHO "MEGA 4"', 'Cinthia Pusari', 'Hernando Gutierrez', '618', 'DEBE', '', '', '23', '9211146LP', '1', 'contado', NULL, '2016-11-10'),
(84, 'CELIA ', '', 'Maria Copa', 'Diego Tarifa', '115', 'DEBE', '', '', '45', '6058218LP', '2', 'contado', NULL, '2016-11-10'),
(85, 'FATIMA ', '', 'Maria Copa', 'Diego Tarifa', '115', 'DEBE', '', '', '133', '6058218LP', '2', 'contado', NULL, '2016-11-10'),
(86, 'NEYSA ', '', 'Maria Copa', 'Diego Tarifa', '105', 'DEBE', '', '', '134', '6058218LP', '2', 'contado', NULL, '2016-11-10'),
(87, ' Miranda', 'UYUNI "MEGA 5"', 'Cinthia Pusari', 'Hernando Gutierrez', '406', 'DEBE', '', '', '24', '9211146LP', '1', 'contado', NULL, '2016-11-10'),
(88, 'LA CABAÃ‘A SUCURSAL - 2 ', 'LA CABAÃ‘A', 'Juan Callisaya', 'Hernando Gutierrez', '184', 'DEBE', '', '', '97', '6897356LP', '1', 'contado', NULL, '2016-11-11'),
(89, 'NELSON ', '', 'Maria Copa', 'Diego Tarifa', '230', 'DEBE', '', '', '135', '6058218LP', '2', 'contado', NULL, '2016-11-10'),
(90, ' De Rave', 'SOL Y LUNA', 'Juan Callisaya', 'Hernando Gutierrez', '196', 'DEBE', '', '', '11', '6897356LP', '1', 'contado', NULL, '2016-11-11'),
(91, ' Menacho', 'COMERCIO "MEGA 1"', 'Juan Callisaya', 'Hernando Gutierrez', '617', 'DEBE', '', '', '20', '6897356LP', '1', 'contado', NULL, '2016-11-11'),
(92, 'Elvis Miranda Miranda', '"MEGA 6"', 'Juan Callisaya', 'Hernando Gutierrez', '271', 'DEBE', '', '', '25', '6897356LP', '1', 'contado', NULL, '2016-11-10'),
(93, 'Vanesa ', '', 'Juan Callisaya', 'Hernando Gutierrez', '93', 'DEBE', '', '', '14', '6897356LP', '1', 'contado', NULL, '2016-11-10'),
(94, ' Cueto', 'PIZZA SEGUIOS', 'Juan Callisaya', 'Hernando Gutierrez', '98', 'DEBE', '', '', '7', '6897356LP', '1', 'contado', NULL, '2016-11-10'),
(95, ' Menacho', 'COMERCIO "MEGA 1"', 'Juan Callisaya', 'Hernando Gutierrez', '135', 'DEBE', '', '', '20', '6897356LP', '1', 'contado', NULL, '2016-11-11'),
(96, 'Elvis Miranda Miranda', 'MIRAFLORES "MEGA 3"', 'Maria Copa', 'Hernando Gutierrez', '466', 'DEBE', '', '', '22', '6058218LP', '1', 'contado', NULL, '2016-11-11'),
(97, 'Elvis Miranda Miranda', 'CAMACHO "MEGA 4"', 'Maria Copa', 'Hernando Gutierrez', '859', 'DEBE', '', '', '23', '6058218LP', '1', 'contado', NULL, '2016-11-11'),
(98, ' Miranda', 'UYUNI "MEGA 5"', 'Maria Copa', 'Hernando Gutierrez', '302', 'DEBE', '', '', '24', '6058218LP', '1', 'contado', NULL, '2016-11-11'),
(99, 'Elvis Miranda Miranda', '"MEGA 6"', 'Maria Copa', 'Hernando Gutierrez', '346', 'DEBE', '', '', '25', '6058218LP', '1', 'contado', NULL, '2016-11-11'),
(100, 'Manolos ', 'CAFE MANOLOS', 'Rebeca Quispe', 'Hernando Gutierrez', '308', 'DEBE', '', '', '1', '6066719LP', '1', 'contado', NULL, '2016-11-11'),
(101, 'Ivoni Miranda Miranda', 'VILLAZON "MEGA 2"', 'Juan Callisaya', 'Hernando Gutierrez', '377', 'DEBE', '', '', '21', '6897356LP', '1', 'contado', NULL, '2016-11-11'),
(102, 'Olive Tree ', 'OLIVE TREE', 'Juan Callisaya', 'Hernando Gutierrez', '399', 'DEBE', '', '', '13', '6897356LP', '1', 'contado', NULL, '2016-11-11'),
(103, 'Vania Soto Ledezma', 'PAPAYA EXPRESS', 'Juan Callisaya', 'Hernando Gutierrez', '131', 'DEBE', '', '', '8', '6897356LP', '1', 'contado', NULL, '2016-11-11'),
(104, 'JUANA PATZI', '', 'Juan Callisaya', 'Julio Aranda', '330', 'DEBE', '', '', '65', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(105, 'PEDRO LAURA', '', 'Juan Callisaya', 'Julio Aranda', '460', 'DEBE', '', '', '71', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(106, 'OSCAR ', '', 'Juan Callisaya', 'Julio Aranda', '205', 'DEBE', '', '', '137', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(107, 'PRIMITIVA ', '', 'Juan Callisaya', 'Julio Aranda', '205', 'DEBE', '', '', '138', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(108, 'JAIME ', '', 'Juan Callisaya', 'Julio Aranda', '205', 'DEBE', '', '', '72', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(109, 'MARY ', '', 'Juan Callisaya', 'Julio Aranda', '285', 'DEBE', '', '', '139', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(110, 'LUISA TINTA', '', 'Juan Callisaya', 'Julio Aranda', '330', 'DEBE', '', '', '140', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(111, 'TEODORA ', '', 'Juan Callisaya', 'Julio Aranda', '0', 'DEBE', '', '', '86', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(112, 'PASCUALA ', '', 'Juan Callisaya', 'Julio Aranda', '125', 'DEBE', '', '', '85', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(113, 'MARINA ', '', 'Juan Callisaya', 'Julio Aranda', '229', 'DEBE', '', '', '141', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(114, 'ADELA ', '', 'Juan Callisaya', 'Julio Aranda', '250', 'DEBE', '', '', '142', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(115, 'COSME ', '', 'Juan Callisaya', 'Julio Aranda', '332.5', 'DEBE', '', '', '143', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(116, 'ANGELICA ', '', 'Juan Callisaya', 'Julio Aranda', '450', 'DEBE', '', '', '63', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(117, 'YOLANDA ', '', 'Juan Callisaya', 'Julio Aranda', '590', 'DEBE', '', '', '62', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(118, 'SOFIA ', '', 'Juan Callisaya', 'Julio Aranda', '125', 'DEBE', '', '', '144', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(119, 'LIDIA I.', '', 'Juan Callisaya', 'Julio Aranda', '205', 'DEBE', '', '', '145', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(120, 'JULIA NINA', '', 'Juan Callisaya', 'Julio Aranda', '330', 'DEBE', '', '', '146', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(121, 'JUANA QUISPE', '', 'Juan Callisaya', 'Julio Aranda', '205', 'DEBE', '', '', '147', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(122, 'RUTH ', '', 'Juan Callisaya', 'Julio Aranda', '505', 'DEBE', '', '', '148', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(123, 'ROCIO ', '', 'Juan Callisaya', 'Julio Aranda', '75', 'DEBE', '', '', '84', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(124, 'MARTHA ', '', 'Juan Callisaya', 'Julio Aranda', '75', 'DEBE', '', '', '149', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(125, 'ANGELA ', '', 'Juan Callisaya', 'Julio Aranda', '75', 'DEBE', '', '', '150', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(126, 'JUSTINA ', '', 'Juan Callisaya', 'Julio Aranda', '69', 'DEBE', '', '', '151', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(127, 'BERTHA ', '', 'Juan Callisaya', 'Julio Aranda', '194', 'DEBE', '', '', '152', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(128, 'JOSE LUIS CASAS', '', 'Juan Callisaya', 'Julio Aranda', '300', 'DEBE', '', '', '68', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(129, 'MIRIAM BARRA', '', 'Juan Callisaya', 'Julio Aranda', '160', 'DEBE', '', '', '153', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(130, 'FRANKLIN ', '', 'Juan Callisaya', 'Julio Aranda', '320', 'DEBE', '', '', '154', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(131, 'GREGORIA ', '', 'Juan Callisaya', 'Julio Aranda', '220', 'DEBE', '', '', '155', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(132, 'CHACON ', '', 'Juan Callisaya', 'Julio Aranda', '48', 'DEBE', '', '', '156', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(133, 'NANCY ', '', 'Juan Callisaya', 'Julio Aranda', '114', 'DEBE', '', '', '157', '6897356LP', '6', 'contado', NULL, '2016-11-11'),
(134, 'VICKY CONDE', '', 'Juan Callisaya', 'Julio Aranda', '80', 'DEBE', '', '', '158', '6897356LP', '6', 'contado', NULL, '2016-11-11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_pedido`
--

CREATE TABLE IF NOT EXISTS `nota_pedido` (
  `id_nota` varchar(150) DEFAULT NULL,
  `id_producto` varchar(150) DEFAULT NULL,
  `cantidad` varchar(150) DEFAULT NULL,
  `entregado` varchar(150) DEFAULT NULL,
  `masa` varchar(150) DEFAULT NULL,
  `precio` varchar(150) DEFAULT NULL,
  `subtotal` varchar(150) DEFAULT NULL,
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=403 ;

--
-- Volcado de datos para la tabla `nota_pedido`
--

INSERT INTO `nota_pedido` (`id_nota`, `id_producto`, `cantidad`, `entregado`, `masa`, `precio`, `subtotal`, `codigo`, `nombre`) VALUES
('002', '', '0', '0', '0', '0', '0', 7, '00'),
('002', '', '0', '0', '0', '0', '0', 8, '00'),
('002', '00', '0', '0', '0', '0', '0', 9, '00'),
('002', '1', '1', '1', '1', '1', '1', 10, '1'),
('002', '2', '2', '2', '2', '2', '2', 11, '2'),
('002', '3', '3', '3', '3', '3', '3', 12, '3'),
('002', '3', '3', '3', '3', '3', '3', 13, '3'),
('002', '4', '4', '4', '4', '4', '4', 14, '4'),
('002', '5', '5', '5', '5', '5', '55', 15, '5'),
('002', '11', '11', '11', '11', '11', '1', 16, '11'),
('003', '1', '1', '1', '1', '1', '1', 17, '1'),
('003', '2', '2', '2', '2', '2', '2', 18, '2'),
('003', '3', '3', '3', '3', '3', '3', 19, '3'),
('004', '3', '3', '3', '3', '3', '3', 20, '3'),
('004', '1', '1', '1', '1', '1', '1', 21, '1'),
('004', '14', '5', '5', '5', '5', '5', 22, '5'),
('004', '14', '23', '23', '23', '23', '234', 23, '323'),
('004', '33333', '3', '3', '3', '3', '3', 24, '3'),
('004', '12', '1', '1', '1', '1', '1', 25, '1'),
('004', '3', '3', '3', '3', '3', '3', 26, '3'),
('0010', 'PPI-021', '2', '2', 'gramos', '38', '76', 27, 'Peperoni'),
('0011', 'PPI-021', '6', '6', 'kilos', '34', '204', 28, 'Peperoni'),
('0011', 'TOC-022', '1', '1', 'gramos', '43', '43', 29, 'Tocino'),
('0011', 'TOC-022', '1.3', '1.3', 'gramos', '43', '55.9', 30, 'Tocino'),
('0012', 'PPI-021', '2', '2', 'kilos', '38', '76', 31, 'Peperoni'),
('0012', 'QCH-019', '3', '3', 'kilos', '30', '90', 32, 'Queso de Chancho'),
('0013', 'SME-020', '5', '5', 'kilos', '38', '190', 33, 'Salame'),
('0014', 'PPI-021', '5', '5', 'kilos', '38', '190', 34, 'Peperoni'),
('0014', 'SME-020', '6', '6', 'kilos', '34', '204', 35, 'Salame'),
('0014', 'QCH-019', '8', '8', 'kilos', '30', '240', 36, 'Queso de Chancho'),
('0014', 'PPI-021', '8', '6', 'kilos', '1000', '8000', 37, 'Peperoni'),
('0015', 'PPI-021', '5', '5', 'kilos', '38', '190', 38, 'Peperoni'),
('0015', 'QCH-019', '23', '23', 'kilos', '28', '644', 39, 'Queso de Chancho'),
('0016', 'PPI-021', '2', '2', 'kilos', '34', '68', 40, 'Peperoni'),
('0016', 'QCH-019', '8', '8', 'kilos', '25', '200', 41, 'Queso de Chancho'),
('0017', 'PPI-021', '6', '6', 'kilos', '38', '228', 42, 'Peperoni'),
('0017', 'JDA-017', '8', '8', 'kilos', '26', '208', 43, 'Jamonada'),
('0017', 'QCH-019', '8', '8', 'kilos', '28', '224', 44, 'Queso de Chancho'),
('', 'MCA-011', '2', '2', 'kilos', '25', '50', 53, 'Mortadela Cazador'),
('0001', 'PPI-021', '3', '3', 'kilos', '38', '114', 55, 'Peperoni'),
('0001', 'SME-020', '4', '4', 'kilos', '38', '152', 56, 'Salame'),
('0002', 'PPI-021', '3', '3', 'kilos', '38', '114', 57, 'Peperoni'),
('0002', 'QCH-019', '4', '4', 'kilos', '6', '24', 58, 'Queso de Chancho'),
('0003', 'PPI-021', '2', '2', 'kilos', '38', '76', 59, 'Peperoni'),
('0004', 'PPI-021', '5', '5', 'kilos', '34', '170', 60, 'Peperoni'),
('0004', 'QCH-019', '6', '6', 'kilos', '30', '180', 61, 'Queso de Chancho'),
('0005', 'PPI-021', '8', '8', 'kilos', '38', '304', 62, 'Peperoni'),
('0005', 'QCH-019', '4', '4', 'kilos', '30', '120', 63, 'Queso de Chancho'),
('0004', 'PPI-021', '2', '2', 'kilos', '34', '68', 64, 'Peperoni'),
('0004', 'QCH-019', '2', '2', 'kilos', '26', '52', 65, 'Queso de Chancho'),
('0004', 'MPI-014', '5', '5', 'kilos', '28', '140', 66, 'Mortadela Picante'),
('0007', 'PPI-021', '5', '5', 'kilos', '38', '190', 67, 'Peperoni'),
('0007', 'QCH-019', '5', '5', 'kilos', '5', '25', 68, 'Queso de Chancho'),
('0008', 'PPI-021', '5', '5', 'kilos', '43', '215', 69, 'Peperoni'),
('0008', 'QCH-019', '3', '3', 'kilos', '28', '84', 70, 'Queso de Chancho'),
('0007', 'MCA-011', '5', '5', 'kilos', '28', '140', 71, 'Mortadela Cazador'),
('0007', 'SPA-006', '3', '3', 'kilos', '32', '96', 72, 'Salchicha Paquete'),
('0007', 'MFI-010', '2', '2', '', '28', '56', 73, 'Mortadela Fileteada'),
('0007', 'MFI-010', '2', '0', 'kilos', '28', '56', 74, 'Mortadela Fileteada'),
('0007', 'JSA-018', '2', '2', 'kilos', '35', '70', 75, 'Jamon Sanguchero'),
('0007', 'MPR-012', '2', '2', 'kiloa ', '28', '56', 76, 'Mortadela Primavera'),
('0007', 'CHP-007', '3', '3', 'kilos', '36', '108', 77, 'Chorizo Precocido'),
('0007', 'CHF-008', '5', '5', 'kilos', '35', '175', 78, 'Chorizo Fresco'),
('0007', 'SVI-001', '2', '2', 'kilos', '29', '58', 79, 'Salchicha Viena'),
('0007', 'SPA-006', '4', '4', 'kilos', '32', '128', 80, 'Salchicha Paquete'),
('0007', 'SES-002', '0.7', '0.7', 'gramos', '22', '15.399999999999999', 81, 'Salchicha Especial'),
('0007', 'QCH-019', '0.6', '0.6', 'kilos', '28', '16.8', 82, 'Queso de Chancho'),
('0009', 'CHP-007', '0.5', '0.5', 'gramos', '32', '16', 84, 'Chorizo Precocido'),
('0009', 'SES-002', '5', '5', '', '22', '110', 85, 'Salchicha Especial'),
('0009', 'PPI-021', '4', '4', 'kilos', '34', '136', 86, 'Peperoni'),
('00011', 'PPI-021', '12', '12', 'kilos', '38', '456', 88, 'Peperoni'),
('00010', 'QCH-019', '4', '4', 'Kg.', '30', '120', 89, 'Queso de Chancho'),
('00020', 'CHP-007', '3', '3', 'Kg.', '36', '108', 95, 'Chorizo Precocido'),
('00020', 'SCO-003', '2', '2', 'Kg.', '18', '36', 96, 'Salchicha Corriente'),
('000010', 'PPI-021', '23', '23', 'Kg.', '38', '874', 97, 'Peperoni'),
('000010', 'TBA-023', '56', '56', 'Kg.', '49', '2744', 98, 'Tocino en Barra'),
('000001', 'PPI-021', '12', '12', 'Kg.', '34', '408', 101, 'Peperoni'),
('000001', 'SCO-003', '13', '13', 'Kg.', '18', '234', 102, 'Salchicha Corriente'),
('000001', 'MPI-014', '98', '98', 'Kg.', '28', '2744', 103, 'Mortadela Picante'),
('', 'PPI-021', '3', '3', 'Kg.', '38', '114', 108, 'Peperoni'),
('17', 'SPA-006', '1', '1', 'Kg.', '29', '29', 140, 'Salchicha Paquete'),
('18', 'JSA-018', '9.00', '9.00', 'Kg.', '35', '315', 141, 'Jamon Sanguchero'),
('19', 'JSA-018', '2', '2', 'Kg.', '32', '64', 142, 'Jamon Sanguchero'),
('20', 'SPA-006', '18', '18', 'Kg.', '30', '540', 143, 'Salchicha Paquete'),
('20', 'JSA-018', '5', '5', 'Kg.', '31', '155', 144, 'Jamon Sanguchero'),
('20', 'TOC-022', '1', '1', 'Kg.', '44', '44', 145, 'Tocino'),
('21', 'SPA-006', '16', '16', 'Kg.', '30', '480', 146, 'Salchicha Paquete'),
('21', 'JSA-018', '3', '3', 'Kg.', '31', '93', 147, 'Jamon Sanguchero'),
('22', 'SPA-006', '15', '15', 'Kg.', '30', '450', 150, 'Salchicha Paquete'),
('22', 'JSA-018', '2', '2', 'Kg.', '31', '62', 151, 'Jamon Sanguchero'),
('22', 'TOC-022', '1', '1', 'Kg.', '44', '44', 152, 'Tocino'),
('23', 'SPA-006', '19', '19', 'Kg.', '30', '570', 153, 'Salchicha Paquete'),
('23', 'JSA-018', '6', '6', 'Kg.', '31', '186', 154, 'Jamon Sanguchero'),
('23', 'TOC-022', '1', '1', 'Kg.', '44', '44', 155, 'Tocino'),
('25', 'SPA-006', '10', '10', 'Kg.', '30', '300', 156, 'Salchicha Paquete'),
('26', 'SPA-006', '5', '5', 'Kg.', '30', '150', 157, 'Salchicha Paquete'),
('26', 'JSA-018', '2', '2', 'Kg.', '31', '62', 158, 'Jamon Sanguchero'),
('27', 'SPA-006', '10', '10', 'Kg.', '30', '300', 159, 'Salchicha Paquete'),
('16', 'TOC-022', '1', '1', 'Kg.', '49', '49', 160, 'Tocino'),
('28', 'SPA-006', '4', '4', 'Kg.', '32', '128', 161, 'Salchicha Paquete'),
('28', 'JSA-018', '1', '1', 'Kg.', '35', '35', 162, 'Jamon Sanguchero'),
('29', 'JDA-017', '4', '4', 'Kg.', '27', '108', 164, 'Jamonada'),
('30', 'TOC-022', '2', '2', 'Kg.', '49', '98', 165, 'Tocino'),
('1', 'CHC-032', '2', '2', 'Kg.', '11', '22', 192, 'Chorizo Criollo'),
('1', 'JDA-017', '3', '3', 'Kg.', '30', '90', 193, 'Jamonada'),
('37', 'SPA-006', '48', '48', 'Kg.', '30', '1440', 197, 'Salchicha Paquete'),
('37', 'JSA-018', '15', '15', 'Kg.', '31', '465', 200, 'Jamon Sanguchero'),
('37', 'TOC-022', '2', '2', 'Kg.', '44', '88', 201, 'Tocino'),
('38', 'SPA-006', '38', '38', 'Kg.', '30', '1140', 202, 'Salchicha Paquete'),
('38', 'JSA-018', '10', '10', 'Kg.', '31', '310', 203, 'Jamon Sanguchero'),
('38', 'TOC-022', '1', '1', 'Kg.', '44', '44', 204, 'Tocino'),
('39', 'SPA-006', '40', '40', 'Kg.', '30', '1200', 206, 'Salchicha Paquete'),
('39', 'JSA-018', '12', '12', 'Kg.', '31', '372', 207, 'Jamon Sanguchero'),
('39', 'TOC-022', '3', '3', 'Kg.', '44', '132', 208, 'Tocino'),
('40', 'SPA-006', '27', '27', 'Kg.', '30', '810', 209, 'Salchicha Paquete'),
('40', 'JSA-018', '6', '6', 'Kg.', '31', '186', 210, 'Jamon Sanguchero'),
('41', 'SPA-006', '15', '15', 'Kg.', '30', '450', 211, 'Salchicha Paquete'),
('41', 'JSA-018', '3', '3', 'Kg.', '31', '93', 212, 'Jamon Sanguchero'),
('41', 'TOC-022', '1', '1', 'Kg.', '44', '44', 213, 'Tocino'),
('42', 'SPA-006', '20', '20', 'Kg.', '30', '600', 214, 'Salchicha Paquete'),
('42', 'TOC-022', '1', '1', 'Kg.', '44', '44', 216, 'Tocino'),
('42', 'JSA-018', '6', '6', 'Kg.', '31', '186', 217, 'Jamon Sanguchero'),
('43', 'SVI-001', '5', '5', 'Kg.', '27', '135', 218, 'Salchicha Viena'),
('44', 'JSA-018', '2', '2', 'Kg.', '32', '64', 219, 'Jamon Sanguchero'),
('45', 'SPA-006', '4', '4', 'Kg.', '32', '128', 220, 'Salchicha Paquete'),
('54', 'MPC-015', '1', '1', 'Kg.', '28', '28', 221, 'M. Pastel de Cabeza'),
('55', 'SPA-006', '25', '25', 'Kg.', '30', '750', 222, 'Salchicha Paquete'),
('56', 'SPA-006', '25', '25', 'Kg.', '30', '750', 223, 'Salchicha Paquete'),
('46', 'SVI-001', '5', '5', 'Kg.', '29', '145', 224, 'Salchicha Viena'),
('46', 'JDA-017', '1', '1', 'Kg.', '30', '30', 226, 'Jamonada'),
('46', 'JSA-018', '1', '1', 'Kg.', '35', '35', 227, 'Jamon Sanguchero'),
('58', 'SVI-001', '5', '5', 'Kg.', '25', '125', 228, 'Salchicha Viena'),
('58', 'SES-002', '8', '8', 'Kg.', '22', '176', 229, 'Salchicha Especial'),
('58', 'SES-002', '8', '8', 'Kg.', '22', '176', 230, 'Salchicha Especial'),
('59', 'SVI-001', '10', '10', 'Kg..', '23', '230', 231, 'Salchicha Viena'),
('1', 'CHC-032', '12', '12', 'Kg.', '12', '144', 240, 'Chorizo Criollo'),
('60', 'SPA-006', '4', '4', 'Kg.', '32', '128', 248, 'Salchicha Paquete'),
('60', 'JSA-018', '1', '1', 'Kg.', '35', '35', 252, 'Jamon Sanguchero'),
('61', 'SPA-006', '5', '5', 'Kg.', '30', '150', 254, 'Salchicha Paquete'),
('62', 'JSA-018', '4', '4', 'Kg.', '31', '124', 259, 'Jamon Sanguchero'),
('62', 'TOC-022', '1', '1', 'Kg.', '44', '44', 260, 'Tocino'),
('63', 'JDA-017', '3.9', '3.9', 'Kg.', '27', '105.3', 263, 'Jamonada'),
('64', 'SPA-006', '19', '19', 'Kg.', '30', '570', 264, 'Salchicha Paquete'),
('64', 'JSA-018', '5', '5', 'Kg.', '31', '155', 265, 'Jamon Sanguchero'),
('65', 'JSA-018', '2', '2', 'Kg.', '31', '62', 266, 'Jamon Sanguchero'),
('65', 'SPA-006', '7', '7', 'Kg.', '30', '210', 267, 'Salchicha Paquete'),
('65', 'TOC-022', '1', '1', 'Kg.', '44', '44', 268, 'Tocino'),
('66', 'SPA-006', '6', '6', 'Kg.', '30', '180', 269, 'Salchicha Paquete'),
('67', 'SPA-006', '12', '12', 'Kg.', '30', '360', 270, 'Salchicha Paquete'),
('67', 'JSA-018', '3', '3', 'Kg.', '31', '93', 271, 'Jamon Sanguchero'),
('36', 'SSE-005', '4', '4', 'Kg.', '28', '112', 272, 'Salchicha Super Especial'),
('68', 'SPA-006', '6', '6', 'Kg.', '30', '180', 273, 'Salchicha Paquete'),
('35', 'TOC-022', '3', '3', 'Kg.', '49', '147', 275, 'Tocino'),
('62', 'SPA-006', '14', '14', 'Kg.', '30', '420', 276, 'Salchicha Paquete'),
('69', 'TOC-022', '5', '5', 'Kg.', '49', '245', 277, 'Tocino'),
('68', 'JSA-018', '2', '2', 'Kg.', '31', '62', 278, 'Jamon Sanguchero'),
('71', 'SVI-001', '5', '5', 'Kg.', '23', '115', 279, 'Salchicha Viena'),
('72', 'SPA-006', '19', '19', 'Kg.', '30', '570', 280, 'Salchicha Paquete'),
('72', 'JSA-018', '4', '4', 'Kg.', '31', '124', 281, 'Jamon Sanguchero'),
('73', 'SVI-001', '23', '23', 'Kg.', '3', '69', 282, 'Salchicha Viena'),
('74', 'SVI-001', '23', '23', 'Kg.', '3', '69', 283, 'Salchicha Viena'),
('75', 'SVI-001', '23', '23', 'Kg.', '6', '138', 284, 'Salchicha Viena'),
('76', 'SVI-001', '5', '5', 'Kg.', '27', '135', 285, 'Salchicha Viena'),
('77', 'SVI-001', '23', '23', 'Kg.', '3', '69', 286, 'Salchicha Viena'),
('78', 'SPA-006', '15', '15', 'Kg.', '30', '450', 287, 'Salchicha Paquete'),
('78', 'JSA-018', '3', '3', 'Kg.', '31', '93', 288, 'Jamon Sanguchero'),
('78', 'TOC-022', '1', '1', 'Kg.', '44', '44', 289, 'Tocino'),
('79', 'SVI-001', '23', '23', 'Kg.', '5', '115', 290, 'Salchicha Viena'),
('80', 'SPA-006', '11', '11', 'Kg.', '30', '330', 291, 'Salchicha Paquete'),
('80', 'JSA-018', '1', '1', 'Kg.', '31', '31', 292, 'Jamon Sanguchero'),
('80', 'TOC-022', '1', '1', 'Kg.', '44', '44', 293, 'Tocino'),
('81', 'SVI-001', '23', '23', 'Kg.', '5', '115', 294, 'Salchicha Viena'),
('82', 'SVI-001', '23', '23', 'Kg.', '10', '230', 295, 'Salchicha Viena'),
('83', 'SPA-006', '15', '15', 'Kg.', '30', '450', 296, 'Salchicha Paquete'),
('84', 'SVI-001', '23', '23', 'Kg.', '5', '115', 297, 'Salchicha Viena'),
('83', 'JSA-018', '4', '4', 'Kg.', '31', '124', 298, 'Jamon Sanguchero'),
('83', 'TOC-022', '1', '1', 'Kg.', '44', '44', 299, 'Tocino'),
('85', 'SVI-001', '23', '23', 'Kg.', '5', '115', 300, 'Salchicha Viena'),
('86', 'SES-002', '21', '21', 'Kg.', '5', '105', 301, 'Salchicha Especial'),
('87', 'SPA-006', '10', '10', 'Kg.', '30', '300', 302, 'Salchicha Paquete'),
('87', 'JSA-018', '2', '2', 'Kg.', '31', '62', 303, 'Jamon Sanguchero'),
('87', 'TOC-022', '1', '1', 'Kg.', '44', '44', 304, 'Tocino'),
('89', 'MPC-015', '25', '25', 'Kg.', '9.2', '229.99999999999997', 305, 'M. Pastel de Cabeza'),
('92', 'SPA-006', '8', '8', 'Kg.', '30', '240', 306, 'Salchicha Paquete'),
('92', 'JSA-018', '1', '1', 'Kg.', '31', '31', 307, 'Jamon Sanguchero'),
('93', 'SPA-006', '1', '1', 'Kg.', '29', '29', 308, 'Salchicha Paquete'),
('93', 'JSA-018', '2', '2', 'Kg.', '32', '64', 309, 'Jamon Sanguchero'),
('94', 'TOC-022', '2', '2', 'Kg.', '49', '98', 310, 'Tocino'),
('96', 'SPA-006', '12', '12', 'Kg.', '30', '360', 312, 'Salchicha Paquete'),
('96', 'JSA-018', '2', '2', 'Kg.', '31', '62', 313, 'Jamon Sanguchero'),
('96', 'TAH-024', '1', '1', 'Kg.', '44', '44', 314, 'Tocino Ahumado'),
('97', 'SPA-006', '22', '22', 'Kg.', '30', '660', 315, 'Salchicha Paquete'),
('97', 'JSA-018', '5', '5', 'Kg.', '31', '155', 316, 'Jamon Sanguchero'),
('97', 'TAH-024', '1', '1', 'Kg.', '44', '44', 317, 'Tocino Ahumado'),
('98', 'SPA-006', '8', '8', 'Kg.', '30', '240', 318, 'Salchicha Paquete'),
('98', 'JSA-018', '2', '2', 'Kg.', '31', '62', 319, 'Jamon Sanguchero'),
('88', 'SPA-006', '4', '4', 'Kg.', '30', '120', 320, 'Salchicha Paquete'),
('99', 'SPA-006', '8', '8', 'Kg.', '30', '240', 321, 'Salchicha Paquete'),
('99', 'JSA-018', '2', '2', 'Kg.', '31', '62', 322, 'Jamon Sanguchero'),
('99', 'TAH-024', '1', '1', 'Kg.', '44', '44', 323, 'Tocino Ahumado'),
('90', 'TAH-024', '4', '4', 'Kg.', '49', '196', 325, 'Tocino Ahumado'),
('91', 'SPA-006', '16', '16', 'Kg.', '30', '480', 328, 'Salchicha Paquete'),
('91', 'TAH-024', '1', '1', 'Kg.', '44', '44', 330, 'Tocino Ahumado'),
('91', 'JSA-018', '3', '3', 'Kg.', '31', '93', 332, 'Jamon Sanguchero'),
('95', 'SVI-001', '5', '5', 'Kg.', '27', '135', 333, 'Salchicha Viena'),
('88', 'JSA-018', '2', '2', 'Kg.', '32', '64', 334, 'Jamon Sanguchero'),
('101', 'SPA-006', '8', '8', 'Kg.', '30', '240', 335, 'Salchicha Paquete'),
('101', 'JSA-018', '3', '3', 'Kg.', '31', '93', 336, 'Jamon Sanguchero'),
('101', 'TAH-024', '1', '1', 'Kg.', '44', '44', 337, 'Tocino Ahumado'),
('102', 'JSA-018', '3', '3', 'Kg.', '35', '105', 338, 'Jamon Sanguchero'),
('102', 'TOC-022', '6', '6', 'Kg.', '49', '294', 339, 'Tocino'),
('103', 'SPA-006', '3', '3', 'Kg.', '32', '96', 340, 'Salchicha Paquete'),
('103', 'JSA-018', '1', '1', 'Kg.', '35', '35', 341, 'Jamon Sanguchero'),
('104', 'SVI-001', '10', '10', 'Kg.', '25', '250', 342, 'Salchicha Viena'),
('104', 'CHP-036', '5', '5', 'Kg.', '16', '80', 343, 'Chorizo Precocido 1/2 kg.'),
('105', 'SVI-001', '10', '10', 'Kg.', '25', '250', 344, 'Salchicha Viena'),
('105', 'CHP-036', '5', '5', 'Kg.', '16', '80', 345, 'Chorizo Precocido 1/2 kg.'),
('105', 'QCH-019', '2', '2', 'Kg.', '26', '52', 346, 'Queso de Chancho'),
('106', 'SVI-001', '5', '5', 'Kg.', '25', '125', 347, 'Salchicha Viena'),
('106', 'CHP-036', '5', '5', 'Kg.', '16', '80', 348, 'Chorizo Precocido 1/2 kg.'),
('105', 'JDA-017', '3', '3', 'Kg.', '26', '78', 349, 'Jamonada'),
('107', 'SVI-001', '5', '5', 'Kg.', '25', '125', 350, 'Salchicha Viena'),
('107', 'CHP-036', '5', '5', 'Kg.', '16', '80', 351, 'Chorizo Precocido 1/2 kg.'),
('108', 'SVI-001', '5', '5', 'Kg.', '25', '125', 352, 'Salchicha Viena'),
('108', 'CHP-036', '5', '5', 'Kg.', '16', '80', 353, 'Chorizo Precocido 1/2 kg.'),
('109', 'SVI-001', '5', '5', 'Kg.', '25', '125', 354, 'Salchicha Viena'),
('109', 'CHP-036', '10', '10', 'Kg.', '16', '160', 355, 'Chorizo Precocido 1/2 kg.'),
('110', 'SVI-001', '10', '10', 'Kg.', '25', '250', 356, 'Salchicha Viena'),
('110', 'CHP-036', '5', '5', 'Kg.', '16', '80', 357, 'Chorizo Precocido 1/2 kg.'),
('111', 'SVI-001', '10', '10', 'Kg.', '25', '250', 358, 'Salchicha Viena'),
('112', 'SVI-001', '5', '5', 'Kg.', '25', '125', 359, 'Salchicha Viena'),
('113', 'SVI-001', '5', '5', 'Kg.', '25', '125', 360, 'Salchicha Viena'),
('113', 'QCH-019', '2', '2', 'Kg.', '26', '52', 361, 'Queso de Chancho'),
('113', 'JDA-017', '2', '2', 'Kg.', '26', '52', 362, 'Jamonada'),
('114', 'SVI-001', '10', '10', 'Kg.', '25', '250', 363, 'Salchicha Viena'),
('115', 'SVI-001', '5', '5', 'Kg.', '25', '125', 364, 'Salchicha Viena'),
('115', 'QCH-019', '4.1', '4.1', 'Kg.', '25', '102.49999999999999', 365, 'Queso de Chancho'),
('115', 'JDA-017', '4.2', '4.2', 'Kg.', '25', '105', 366, 'Jamonada'),
('116', 'SVI-001', '10', '10', 'Kg.', '25', '250', 367, 'Salchicha Viena'),
('116', 'QCH-019', '4.3', '4.3', 'Kg.', '25', '107.5', 368, 'Queso de Chancho'),
('116', 'JDA-017', '3.7', '3.7', 'Kg.', '25', '92.5', 369, 'Jamonada'),
('117', 'SVI-001', '5', '5', 'Kg.', '25', '125', 370, 'Salchicha Viena'),
('117', 'CHP-036', '5', '5', 'Kg.', '16', '80', 371, 'Chorizo Precocido 1/2 kg.'),
('117', 'QCH-019', '8.1', '8.1', 'Kg.', '25', '202.5', 372, 'Queso de Chancho'),
('117', 'MCA-011', '3.1', '3.1', 'Kg.', '25', '77.5', 373, 'Mortadela Cazador'),
('117', 'JDA-017', '4.2', '4.2', 'Kg.', '25', '105', 374, 'Jamonada'),
('118', 'SVI-001', '5', '5', 'Kg.', '25', '125', 375, 'Salchicha Viena'),
('119', 'SVI-001', '5', '5', 'Kg.', '25', '125', 376, 'Salchicha Viena'),
('119', 'CHP-036', '5', '5', 'Kg.', '16', '80', 377, 'Chorizo Precocido 1/2 kg.'),
('120', 'SVI-001', '10', '10', 'Kg.', '25', '250', 378, 'Salchicha Viena'),
('120', 'CHP-036', '5', '5', 'Kg.', '16', '80', 379, 'Chorizo Precocido 1/2 kg.'),
('121', 'SVI-001', '5', '5', 'Kg.', '25', '125', 380, 'Salchicha Viena'),
('121', 'CHP-036', '5', '5', 'Kg.', '16', '80', 381, 'Chorizo Precocido 1/2 kg.'),
('122', 'SVI-001', '5', '5', 'Kg.', '25', '125', 382, 'Salchicha Viena'),
('122', 'SES-002', '10', '10', 'Kg.', '22', '220', 383, 'Salchicha Especial'),
('122', 'CHP-036', '10', '10', 'Kg.', '16', '160', 384, 'Chorizo Precocido 1/2 kg.'),
('123', 'SVI-001', '3', '3', 'Kg.', '25', '75', 385, 'Salchicha Viena'),
('124', 'SVI-001', '3', '3', 'Kg.', '25', '75', 386, 'Salchicha Viena'),
('125', 'SVI-001', '3', '3', 'Kg.', '25', '75', 387, 'Salchicha Viena'),
('126', 'SVI-001', '3', '3', 'Kg.', '23', '69', 388, 'Salchicha Viena'),
('127', 'SES-002', '5', '5', 'Kg.', '22', '110', 389, 'Salchicha Especial'),
('127', 'CHF-008', '3', '3', 'Kg.', '28', '84', 390, 'Chorizo Fresco a granel'),
('128', 'CHF-008', '5', '5', 'Kg.', '28', '140', 391, 'Chorizo Fresco a granel'),
('128', 'CHP-036', '10', '10', 'Kg.', '16', '160', 392, 'Chorizo Precocido 1/2 kg.'),
('129', 'CHP-036', '10', '10', 'Kg.', '16', '160', 393, 'Chorizo Precocido 1/2 kg.'),
('130', 'CHP-036', '20', '20', 'Kg.', '16', '320', 394, 'Chorizo Precocido 1/2 kg.'),
('131', 'CHF-008', '5', '5', 'Kg.', '28', '140', 395, 'Chorizo Fresco a granel'),
('131', 'CHP-036', '5', '5', 'Kg.', '16', '80', 396, 'Chorizo Precocido 1/2 kg.'),
('132', 'CHP-036', '3', '3', 'Kg.', '16', '48', 397, 'Chorizo Precocido 1/2 kg.'),
('133', 'SES-002', '3', '3', 'Kg.', '22', '66', 398, 'Salchicha Especial'),
('133', 'CHP-036', '3', '3', 'Kg.', '16', '48', 399, 'Chorizo Precocido 1/2 kg.'),
('134', 'CHP-036', '5', '5', 'Kg.', '16', '80', 400, 'Chorizo Precocido 1/2 kg.'),
('100', 'JSA-018', '8.8', '8.8', 'Kg.', '35', '308', 402, 'Jamon Sanguchero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `id_pedido` varchar(20) NOT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `cantidad` varchar(255) DEFAULT NULL,
  `id_producto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedido`
--

INSERT INTO `pedido` (`id_pedido`, `subtotal`, `cantidad`, `id_producto`) VALUES
('100001', '', '5', '2'),
('100002', '', '3', '6'),
('100003', '', '6', '1'),
('100004', '', '2', '11'),
('100005', '', '2', '13'),
('100006', '', '5', '4'),
('100007', '', '3', '3'),
('100008', '', '6', '6'),
('100009', '', '2', '9'),
('100010', '', '1', '13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE IF NOT EXISTS `producto` (
  `id_producto` varchar(20) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `precio_fabrica` varchar(255) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `precio_sinFactura` varchar(250) DEFAULT NULL,
  `precio_preventista` varchar(250) DEFAULT NULL,
  `precio_megas` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `precio_fabrica`, `observacion`, `precio_sinFactura`, `precio_preventista`, `precio_megas`) VALUES
('CHC-009', 'Chorizo Coctelero 1/2', '18', 'Paquete', '16', '16', ''),
('CHC-032', 'Chorizo Criollo', '', '', '', '', ''),
('CHE-030', 'Chorizo EspaÃ±ol', '35', 'no real', '31', '', ''),
('CHF-008', 'Chorizo Fresco a granel', '35', '', '31', '28', ''),
('CHP-007', 'Chorizo Precocido a granel', '36', '', '32', '', ''),
('CHP-031', 'Chorizo Parrillero', '', '', '', '', ''),
('CHP-036', 'Chorizo Precocido 1/2 kg.', '18', '', '16', '', ''),
('JAH-028', 'Jamon Ahumado', '', '', '', '', ''),
('JDA-017', 'Jamonada', '30', '', '28', '26', ''),
('JIN-027', 'Jamon Ingles', '', '', '', '', ''),
('JPA-029', 'Jamon del Pais', '', '', '', '', ''),
('JSA-018', 'Jamon Sanguchero', '35', '', '32', '30', '31'),
('MCA-011', 'Mortadela Cazador', '28', '', '25', '', ''),
('MFI-010', 'Mortadela Fileteada', '28', '', '25', '', ''),
('MLI-013', 'Mortadela Lionesa', '28', '', '25', '', ''),
('MPC-015', 'M. Pastel de Cabeza', '28', '', '25', '', ''),
('MPI-014', 'Mortadela Picante', '28', '', '25', '', ''),
('MPO-016', 'Mortadela de Pollo', '28', '', '25', '', ''),
('MPR-012', 'Mortadela Primavera', '28', '', '25', '', ''),
('PHI-033', 'Pate de Higado', '', '', '', '', ''),
('PPI-021', 'Peperoni', '38', '', '34', '', ''),
('QCH-019', 'Queso de Chancho', '30', '', '28', '26', ''),
('SCO-003', 'Salchicha Corriente', '18', '', '18', '18', ''),
('SCO-026', 'Salchicha Coctel 1/2 Kg', '', '', '', '', '0'),
('SCP-004', 'Salchicha Corriente Pintado', '18', '', '18', '18', '0'),
('SES-002', 'Salchicha Especial', '25', '', '22', '22', '0'),
('SME-020', 'Salame', '38', '', '34', '', '0'),
('SME-036', 'Salame 100 (1/10 kg)', '', '', '', '', '0'),
('SPA-006', 'Salchicha Paquete', '32', '', '29', '29', '30'),
('SSE-005', 'Salchicha Super Especial', '31', '', '28', '28', '0'),
('SSP-025', 'Salchicha Viena Sin Piel', '32', '', '29', '29', '0'),
('SSP-034', 'Salchicha Viena Sin Piel 1/2 Kg', '16', '', '14.50', '', '0'),
('SVI-001', 'Salchicha Viena', '29', '', '26', '25', '0'),
('TAH-024', 'Tocino Ahumado', '', '', NULL, NULL, '0'),
('TBA-023', 'Tocino en Barra', '49', '', '45', '45', '0'),
('TOC-022', 'Tocino', '49', '', '45', '45', '44'),
('TOC-037', 'Tocino 100 (1/10 kg)', '', '', '', '', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `test_table`
--

CREATE TABLE IF NOT EXISTS `test_table` (
  `id` varchar(20) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `edad` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `test_table`
--

INSERT INTO `test_table` (`id`, `nombre`, `edad`) VALUES
('1', 'jhon smith', 28),
('2', 'rebe', 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` varchar(20) NOT NULL,
  `id_empleado` varchar(255) NOT NULL,
  `nombre` varchar(250) DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `correo` varchar(250) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_empleado`, `nombre`, `rol`, `imagen`, `observacion`, `password`, `correo`) VALUES
('4745061LP', '1', 'Hernando Gutierrez', 'otros', '', '', 'yacaeras', 'hernan@gmail.com'),
('6058218LP', '7', 'Maria Copa', 'administrador', '', '', 'arthur1+', 'maritia123@gmail.com'),
('6066719LP', 'rebeca6066719', 'Rebeca Quispe', 'administrador', 's', 'as', 'r3b3c4', 'rebes.rebe9@gmail.com'),
('6597356 LP', '102', 'Diego Tarifa', 'otros', 'qw', 'qw', 'qw', 'qw'),
('6897356LP', 'caj220888', 'Juan Callisaya', 'administrador', '23sd', '', '123', 'kael123456789.2014@gmail.com'),
('888862LP', '106', 'ivan pro', 'otros', '', '', '12345', '2@a'),
('9211146LP', '4', 'Cinthia Pusari', 'otros', '', '', 'cv123', 'shalom30alejem@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendedor`
--

CREATE TABLE IF NOT EXISTS `vendedor` (
  `id_vendedor` varchar(20) NOT NULL,
  `id_empleado` varchar(255) NOT NULL,
  `ruta` varchar(255) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vendedor`
--

INSERT INTO `vendedor` (`id_vendedor`, `id_empleado`, `ruta`, `observacion`) VALUES
('1', '101', 'senkata', NULL),
('2', '102', 'miraflores', NULL),
('3', '103', 'ceja', NULL),
('4', '104', 'CEJA, CALLE 3 LA JUNGLA', NULL),
('5', '101', 'VILLA ADELA', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
