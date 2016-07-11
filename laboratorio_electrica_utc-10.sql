-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2016 a las 19:37:11
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `laboratorio_electrica_utc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas`
--

CREATE TABLE IF NOT EXISTS `areas` (
  `id_area` int(40) NOT NULL AUTO_INCREMENT,
  `nombre_area` varchar(40) NOT NULL,
  `ubicacion_area` varchar(50) NOT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `areas`
--

INSERT INTO `areas` (`id_area`, `nombre_area`, `ubicacion_area`) VALUES
(1, 'Oficina', 'A1'),
(2, 'Lab. Electronica', 'A2'),
(3, 'Area de Clases', 'A3'),
(4, 'Lab. Maquinas Electricas 1', 'A4'),
(5, 'Lab. Control Industrial', 'A5'),
(6, 'Lab. Maquinas Electricas 2', 'A6'),
(7, 'Lab. ProteccionesElectricas ', 'A7'),
(8, 'Lab. Instalaciones Electricas ', 'A8'),
(9, 'Lab. Alto Voltaje', 'A9');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE IF NOT EXISTS `carrera` (
  `id_carrera` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_carrera` varchar(50) NOT NULL,
  PRIMARY KEY (`id_carrera`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id_carrera`, `nombre_carrera`) VALUES
(1, 'ING. ELECTRICA'),
(2, 'ING. ELECTROMECANICA'),
(3, 'ING. INDUSTRIAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciclos`
--

CREATE TABLE IF NOT EXISTS `ciclos` (
  `id_ciclos` int(5) NOT NULL DEFAULT '0',
  `Nombre_ciclos` varchar(30) NOT NULL,
  PRIMARY KEY (`id_ciclos`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciclos`
--

INSERT INTO `ciclos` (`id_ciclos`, `Nombre_ciclos`) VALUES
(1, 'PRIMERO'),
(2, 'SEGUNDO'),
(3, 'TERCERO'),
(4, 'CUARTO'),
(5, 'QUINTO'),
(6, 'SEXTO'),
(7, 'SEPTIMO'),
(8, 'OCTAVO'),
(9, 'NOVENO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentes`
--

CREATE TABLE IF NOT EXISTS `docentes` (
  `cod_doce` int(5) NOT NULL AUTO_INCREMENT,
  `nombre_doce` varchar(20) NOT NULL,
  `cargo_doce` varchar(20) NOT NULL,
  PRIMARY KEY (`cod_doce`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `docentes`
--

INSERT INTO `docentes` (`cod_doce`, `nombre_doce`, `cargo_doce`) VALUES
(1, 'Reinoso Raul ', 'Docentes'),
(2, 'Tello Marcelo ', ''),
(3, 'Abril Ernesto', ''),
(4, 'Barbosa Efren', ''),
(5, 'Cevallos Segundo', ''),
(6, 'Espín Javier', ''),
(7, 'Espín Patricio', ''),
(8, 'Freire Paulina', ''),
(9, 'Gallardo Cristian', ''),
(10, 'Granizo Rosa', ''),
(11, 'León Angel', ''),
(12, 'Lucio Miguel', ''),
(13, 'Medina Franklin', ''),
(14, 'Moreano Edwin', ''),
(15, 'Mullo Álvaro', ''),
(16, 'Paredes Jorge', ''),
(17, 'Pino Julio', ''),
(18, 'Plaza Gustavo', ''),
(19, 'Proaño Xavier', ''),
(20, 'Quispe Vicente', ''),
(21, 'Saavedra Carlos', ''),
(22, 'Velasco Paola', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargado`
--

CREATE TABLE IF NOT EXISTS `encargado` (
  `cod_encargado` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `edad` varchar(20) NOT NULL,
  PRIMARY KEY (`cod_encargado`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `encargado`
--

INSERT INTO `encargado` (`cod_encargado`, `nombre`, `edad`) VALUES
(1, 'Andres Tapia', '26'),
(2, 'Eduardo Hinojosa', '30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hojaregistro`
--

CREATE TABLE IF NOT EXISTS `hojaregistro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_act` date NOT NULL,
  `horaingreso` time NOT NULL,
  `HoraSalida` time NOT NULL,
  `tiempo_uso` time NOT NULL,
  `docenteresponsable` varchar(100) NOT NULL,
  `cod_doce` int(5) NOT NULL,
  `ceduladocente` varchar(11) NOT NULL,
  `carrera` varchar(100) NOT NULL,
  `ciclo` varchar(100) NOT NULL,
  `materia` varchar(100) NOT NULL,
  `codigo_materia` varchar(20) NOT NULL,
  `practica` varchar(500) NOT NULL,
  `area` varchar(30) NOT NULL,
  `solicitud` varchar(10) NOT NULL,
  `id_mate` int(5) NOT NULL,
  `observaciones` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contrata` (`cod_doce`),
  KEY `realizan` (`id_mate`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Volcado de datos para la tabla `hojaregistro`
--

INSERT INTO `hojaregistro` (`id`, `fecha_act`, `horaingreso`, `HoraSalida`, `tiempo_uso`, `docenteresponsable`, `cod_doce`, `ceduladocente`, `carrera`, `ciclo`, `materia`, `codigo_materia`, `practica`, `area`, `solicitud`, `id_mate`, `observaciones`) VALUES
(1, '2016-01-01', '08:01:00', '08:05:00', '00:04:00', '5-Cevallos Segundo', 5, '1773747743', '1-ING. ELECTRICA', '1-PRIMERO', '1-ANALISIS MATEMATICO I', 'IELE101', '1-Logaritmos', 'A2', 'NO', 1, 'nada'),
(2, '2016-01-08', '10:00:00', '12:00:00', '00:00:00', '9-Gallardo Cristian', 2, '1777374775', '1-ING. ELECTRICA', '1-PRIMERO', '1-ANALISIS MATEMATICO I', 'IELE101', '2-derivadas', 'A1', 'SI', 1, 'ninguna'),
(3, '2016-01-01', '10:00:00', '13:00:00', '00:00:00', '4-Barbosa Efren', 4, '1733344558', '1-ING. ELECTRICA', '8-OCTAVO', '49-CONSTRUCCION DE REDES', 'IELE801', '3-redes de comunicacion', 'AULA', 'SI', 49, 'ninguno'),
(4, '2016-01-01', '11:00:00', '12:00:00', '00:00:00', '22-Velasco Paola', 22, '1722238384', '1-ING. ELECTRICA', '1-PRIMERO', '1-ANALISIS MATEMATICO I', 'IELE101', '1-Logaritmos', 'A2', 'NO', 1, 'ninguna'),
(5, '2016-01-08', '10:00:00', '13:00:00', '00:00:00', '6-Espín Javier', 6, '1773737374', '3-ING. INDUSTRIAL', '1-PRIMERO', '136-METODOLOGIA DE LA INVESTIGACION', 'IIND101', '9-elementosjfjf', 'AULA', 'SI', 136, 'nada'),
(6, '2016-01-01', '07:00:00', '09:00:00', '00:00:00', '3-Abril Ernesto', 3, '1722838484', '1-ING. ELECTRICA', '8-OCTAVO', '49-CONSTRUCCION DE REDES', 'IELE801', '3-redes de comunicacion', 'AULA', 'SI', 49, 'ninguna'),
(7, '2016-01-01', '10:00:00', '12:00:00', '00:00:00', '7-Espín Patricio', 7, '1788838485', '1-ING. ELECTRICA', '1-PRIMERO', '1-ANALISIS MATEMATICO I', 'IELE101', '2-derivadas', 'A1', 'SI', 1, 'ninguna'),
(8, '2016-01-09', '12:00:00', '14:00:00', '00:00:00', '1-Reinoso Raul ', 1, '173347583', '3-ING. INDUSTRIAL', '1-PRIMERO', '136-METODOLOGIA DE LA INVESTIGACION', 'IIND101', '9-elementosjfjf', 'AULA', 'NO', 136, 'ninguna'),
(9, '2016-01-01', '10:00:00', '12:00:00', '00:00:00', '2-Tello Marcelo ', 2, '1788384939', '2-ING. ELECTROMECANICA', '1-PRIMERO', '67-QUIMICA', 'IELM102', '7-elementos', 'AULA', 'NO', 67, 'ninguna'),
(10, '2016-01-02', '10:00:00', '12:00:00', '00:00:00', '1-Reinoso Raul ', 1, '1733276362', '1-ING. ELECTRICA', '1-PRIMERO', '1-ANALISIS MATEMATICO I', 'IELE101', '1-Logaritmos', 'A2', 'SI', 1, 'ninguna'),
(11, '2016-01-26', '09:00:00', '11:00:00', '00:00:00', '2-Tello Marcelo ', 2, '1722660121', '3-ING. INDUSTRIAL', '3-TERCERO', '150-TALLER MECANICO I', 'IIND301', '18-desarrollo de practica de potenciadores', 'A5', 'SI', 150, 'SIN NOVEDAD'),
(12, '2016-01-08', '01:20:00', '02:30:00', '00:00:00', '3-Abril Ernesto', 3, '0910923', '1-ING. ELECTRICA', '1-PRIMERO', '1-ANALISIS MATEMATICO I', 'IELE101', '19-UNO', 'AULA', 'SI', 1, 'ETADGADGFVA'),
(13, '2016-01-15', '12:00:00', '04:00:00', '00:00:00', '5-Cevallos Segundo', 5, '9234023429', '1-ING. ELECTRICA', '1-PRIMERO', '1-ANALISIS MATEMATICO I', 'IELE101', '19-UNO', 'AULA', 'SI', 1, 'sdgfasdgadf'),
(14, '2016-01-01', '09:01:00', '10:03:00', '00:00:00', '4-Barbosa Efren', 4, '1777373288', '3-ING. INDUSTRIAL', '1-PRIMERO', '136-METODOLOGIA DE LA INVESTIGACION', 'IIND101', '5-capacitadores', 'A3', 'SI', 136, 'ninguna'),
(16, '2016-01-02', '07:00:00', '10:30:00', '03:30:00', '1-Reinoso Raul ', 1, '1722743629', '1-ING. ELECTRICA', '1-PRIMERO', '1-ANALISIS MATEMATICO I', 'IELE101', '2-derivadas', 'A1', 'SI', 1, 'ninguna'),
(17, '2016-01-04', '08:02:00', '13:04:00', '05:02:00', '6-Espín Javier', 6, '1777282823', '1-ING. ELECTRICA', '1-PRIMERO', '1-ANALISIS MATEMATICO I', 'IELE101', '8-w', 'AULA', 'SI', 1, 'nada'),
(18, '2016-01-01', '08:00:00', '11:06:00', '03:06:00', '3-Abril Ernesto', 3, '1772737374', '1-ING. ELECTRICA', '1-PRIMERO', '1-ANALISIS MATEMATICO I', 'IELE101', '6-eeer', 'A4', 'SI', 1, 'ninguno'),
(19, '2016-01-09', '08:01:00', '10:00:00', '01:59:00', '5-Cevallos Segundo', 5, '1722273738', '3-ING. INDUSTRIAL', '1-PRIMERO', '136-METODOLOGIA DE LA INVESTIGACION', 'IIND101', '9-elementosjfjf', 'AULA', 'SI', 136, 'ninguna'),
(20, '2016-01-01', '09:05:00', '16:01:00', '06:56:00', '4-Barbosa Efren', 4, '1772727383', '3-ING. INDUSTRIAL', '1-PRIMERO', '136-METODOLOGIA DE LA INVESTIGACION', 'IIND101', '13-a', 'A5', 'SI', 136, 'ninguna'),
(21, '2016-01-01', '09:01:00', '12:03:00', '03:02:00', '4-Barbosa Efren', 4, '1772727382', '1-ING. ELECTRICA', '1-PRIMERO', '1-ANALISIS MATEMATICO I', 'IELE101', '1-Logaritmos', 'A2', 'SI', 1, 'ninguno'),
(22, '2016-01-01', '08:06:00', '11:04:00', '02:58:00', '3-Abril Ernesto', 3, '1772727383', '1-ING. ELECTRICA', '1-PRIMERO', '1-ANALISIS MATEMATICO I', 'IELE101', '14-qq', 'A3', 'SI', 1, 'ninguna'),
(23, '2016-01-09', '07:02:00', '10:04:00', '03:02:00', '4-Barbosa Efren', 4, '1728282829', '1-ING. ELECTRICA', '1-PRIMERO', '1-ANALISIS MATEMATICO I', 'IELE101', '1-Logaritmos', 'A2', 'SI', 1, 'no'),
(24, '2016-01-01', '09:03:00', '18:02:00', '08:59:00', '3-Abril Ernesto', 3, '1772727383', '3-ING. INDUSTRIAL', '1-PRIMERO', '136-METODOLOGIA DE LA INVESTIGACION', 'IIND101', '13-a', 'A5', 'SI', 136, 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE IF NOT EXISTS `materias` (
  `id_mate` int(5) NOT NULL AUTO_INCREMENT,
  `descripcion_mate` varchar(50) NOT NULL,
  `id_ciclos` int(5) DEFAULT NULL,
  `codigo_materia` varchar(20) NOT NULL,
  `id_carrera` int(30) NOT NULL,
  PRIMARY KEY (`id_mate`),
  KEY `tiene` (`id_ciclos`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=201 ;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id_mate`, `descripcion_mate`, `id_ciclos`, `codigo_materia`, `id_carrera`) VALUES
(1, 'ANALISIS MATEMATICO I', 1, 'IELE101', 1),
(2, 'FISICA ', 1, 'IELE102', 1),
(3, 'METODOLOGIA DE LA INVESTIGACION', 1, 'IELE103', 1),
(4, 'QUIMICA _GENERAL', 1, 'IELE104', 1),
(5, 'COMPUTACION BASICA', 1, 'IELE105', 1),
(6, 'GEOMETRIA PLANA Y ANALITICA', 1, 'IELE106', 1),
(7, 'ANALISIS SOCIO ECONOMICO', 1, 'IELE107', 1),
(8, 'CIRCUITOS ELECTRICOS I', 2, 'IELE201', 1),
(9, 'ANALISIS MATEMATICO II', 2, 'IELE202', 1),
(10, 'FISICA II', 2, 'IELE203', 1),
(11, 'DISEÑO DE PROYECTOS', 2, 'IELE204', 1),
(12, 'ESTADISTICA', 2, 'IELE205', 1),
(13, 'ALGORITMOS Y LENGUAJE DE PROGRAMACION', 2, 'IELE206', 1),
(14, 'PROBLEMAS DEL MUNDO CONTEMPORANEO', 2, 'IELE207', 1),
(15, 'CIRCUITOS ELECTRICOS II', 3, 'IELE301', 1),
(16, 'ELECTRONICA I', 3, 'IELE302', 1),
(17, 'PROGRAMACIÓN', 3, 'IELE303', 1),
(18, 'TEORIA ELECTROMAGNETICA', 3, 'IELE304', 1),
(19, 'ANÁLISIS MATEMÁTICO III', 3, 'IELE305', 1),
(20, 'ANALISIS VECTORIAL', 3, 'IELE306', 1),
(21, 'DESARROLLO LOCAL', 3, 'IELE307', 1),
(22, 'SISTEMAS DIGITALES', 4, 'IELE401', 1),
(23, 'ELECTRONICA II', 4, 'IELE402', 1),
(24, 'INSTRUMENTOS Y EQUIPO ELECTRICO', 4, 'IELE403', 1),
(25, 'MAQUINAS ELECTRICAS I', 4, 'IELE404', 1),
(26, 'CONTABILIDAD GENERAL Y DE COSTOS', 4, 'IELE405', 1),
(27, 'EMPRENDIMIENTO SOCIAL I', 4, 'IELE406', 1),
(28, 'IDENTIDAD CULTURAL', 4, 'IELE407', 1),
(29, 'CONTROL INDUSTRIAL', 5, 'IELE501', 1),
(30, 'SISTEMAS DE  CONTROL', 5, 'IELE502', 1),
(31, 'INSTALACIONES ELECTRICAS', 5, 'IELE503', 1),
(32, 'MAQUINAS ELECTRICAS II', 5, 'IELE504', 1),
(33, 'INGENIERIA ECONOMICA', 5, 'IELE505', 1),
(34, 'EMPRENDIMIEN TO SOCIAL II', 5, 'IELE506', 1),
(35, 'EQUIDAD DE GENERO', 5, 'IELE507', 1),
(36, 'ALTO VOLTAJE', 6, 'IELE601', 1),
(37, 'ELECTRONICA DE POTENCIA', 6, 'IELE602', 1),
(38, 'SISTEMAS ELECTRICOS DE POTENCIA I', 6, 'IELE603', 1),
(39, 'DISTRIBUCION I', 6, 'IELE605', 1),
(40, 'PROYECTO INTEGRADOR I', 6, 'IELEPI1', 1),
(41, 'EDUCACION AMBIENTAL', 6, 'IELE606', 1),
(42, 'DISEÑO DE ALTO DE VOLTAJE', 7, 'IELE701', 1),
(43, 'CALIDAD DE ENERGIA', 7, 'IELE702', 1),
(44, 'SISTEMAS ELECTRICOS DE POTENCIA II', 7, 'IELE703', 1),
(45, 'PROTECCIONES', 7, 'IELE704', 1),
(46, 'DISTRIBUCION II', 7, 'IELE705', 1),
(47, 'INSTALACIONES INDUSTRIALES', 7, 'IELE706', 1),
(48, 'MATLAB Y SIMULINK', 7, 'IELESE1', 1),
(49, 'CONSTRUCCION DE REDES', 8, 'IELE801', 1),
(50, 'OPERACIÓN SEP', 8, 'IELE802', 1),
(51, 'PLANIFICACION SEP', 8, 'IELE803', 1),
(52, 'CONFIABILIDAD SEP', 8, 'IELE804', 1),
(53, 'DINAMICA DE MAQUINAS', 8, 'IELE805', 1),
(54, 'AUTOCAD', 8, 'IELESE2', 1),
(55, 'PROYECTO INTEGRADOR II', 8, 'IELEPI2', 1),
(56, 'ADMINISTRACIÓN DE RR.HH', 8, 'IELEOP1', 1),
(57, 'ADMINISTRACIÓN DE PROYECTOS', 8, 'IELEOP2', 1),
(58, 'OPERACIÓN DE SUBESTACIONES', 9, 'IELE901', 1),
(59, 'TARIFAS Y MEM', 9, 'IELE902', 1),
(60, 'LINEAS DE TRANSMISION', 9, 'IELE903', 1),
(61, 'ENERGIAS ALTERNATIVAS', 9, 'IELE904', 1),
(62, 'SEGURIDAD INDUSTRIAL', 9, 'IELE905', 1),
(63, 'DISEÑO DE ANTEPROYECTO DE TESIS', 9, 'IELE906', 1),
(64, 'INSTALACIONES HOSPITALARIAS', 9, 'IELEOP3', 1),
(65, 'DOMÓTICA', 9, 'IELEOP4', 1),
(66, 'CENTRALES DE GENERACION', 6, 'IELE604', 1),
(67, 'QUIMICA', 1, 'IELM102', 2),
(68, 'ANALISIS MATEMATICO I', 1, 'IELM103', 2),
(69, 'COMPUTACION BASICA', 1, 'IELM104', 2),
(70, 'GEOMETRIA ANALITICA Y PLANA', 1, 'IELM105', 2),
(71, 'FISICA I', 1, 'IELM106', 2),
(72, 'METODOLOGIA DE INVESTIGACION', 1, 'IELM107', 2),
(73, 'ANALISIS SOCIOECONOMICO', 1, 'IELM101', 2),
(74, 'ESTADISTICA', 2, 'IELM202', 2),
(75, 'ANALISIS MATEMATICO II', 2, 'IELM203', 2),
(76, 'PROGRAMACION', 2, 'IELM204', 2),
(77, 'DIBUJO TECNICO', 2, 'IELM205', 2),
(78, 'FISICA II', 2, 'IELM206', 2),
(79, 'DISEÑO DE PROYECTOS', 2, 'IELM207', 2),
(80, 'PROBLEMAS DEL MUNDO CONTEMPORANEO', 2, 'IELM201', 2),
(81, 'TEORIA ELECTROMAGNETICA', 3, 'IELM304', 2),
(82, 'CIRCUITOS ELECTRICOS', 3, 'IELM305', 2),
(83, 'TALLER MECANICO I', 3, 'IELM306', 2),
(84, 'DIBUJO ASISTIDO POR COMPUTADORA', 3, 'IELM307', 2),
(85, 'CONTABILIDAD GENERAL DE COSTOS', 3, 'IELM302', 2),
(86, 'ANALISIS MATEMATICO III', 3, 'IELM303', 2),
(87, 'DESAROLLO LOCAL', 3, 'IELM301', 2),
(88, 'MAQUINAS ELECTRICAS I', 4, 'IELM403', 2),
(89, 'ELECTRONICA', 4, 'IELM404', 2),
(90, 'SISTEMAS DIGITALES', 4, 'IELM405', 2),
(91, 'RESISTENCIA DE MATERIALES', 4, 'IELM406', 2),
(92, 'TALLER MECANICO II', 4, 'IELM407', 2),
(93, 'EMPRENDIMIENTO SOCIAL I', 4, 'IELM401', 2),
(94, 'IDENTIDAD CULTURAL', 4, 'IELM402', 2),
(95, 'MAQUINAS ELECTRICAS II', 5, 'IELM503', 2),
(96, 'ELECTRONICA DE POTENCIA', 5, 'IELM504', 2),
(97, 'DINAMICA', 5, 'IELM505', 2),
(98, 'ESTATICA', 5, 'IELM506', 2),
(99, 'TERMODINAMICA', 5, 'IELM507', 2),
(100, 'EMPRENDIMIENTO SOCIAL II', 5, 'IELM501', 2),
(101, 'EQUIDAD Y GENERO', 5, 'IELM502', 2),
(102, 'INSTALACIONES ELECTRICAS', 6, 'IELM602', 2),
(103, 'CONTROL INDUSTRIAL', 6, 'IELM603', 2),
(104, 'MECANISMOS', 6, 'IELM604', 2),
(105, 'FLUIDOS', 6, 'IELM605', 2),
(106, 'TERMOAPLICADA', 6, 'IELM606', 2),
(107, 'PROYECTO INTEGRADOR I', 6, 'IELMPI1', 2),
(108, 'EDUCACION AMBIENTAL', 6, 'IELM601', 2),
(109, 'EQUIPO Y DISTRIBUCION ELECTRICA', 7, 'IELM701', 2),
(110, 'SISTEMAS DE CONTROL', 7, 'IELM702', 2),
(111, 'CONTROL DE AUTOMATAS PROGRAMABLES', 7, 'IELM703', 2),
(112, 'DISEÑO DE ELEMENTOS DE MAQUINAS', 7, 'IELM704', 2),
(113, 'LINEAS DE TRANSMISION', 7, 'IELM705', 2),
(114, 'CONTROL HIDRO-NEUMATICO', 7, 'IELM706', 2),
(115, 'MAQUINAS MOTRICES Y TERMICAS', 7, 'IELM707', 2),
(116, 'DOMOTICA', 7, 'IELOP1', 2),
(117, 'ROBOTICA', 7, 'IELOP2', 2),
(118, 'GESTION DE LA CALIDAD Y PRODUCCION', 8, 'IELM801', 2),
(119, 'PROTECCIONES ELECTRICAS', 8, 'IELM802', 2),
(120, 'SEGURIDAD INDUSTRIAL', 8, 'IELM803', 2),
(121, 'MEDIDAS ELECTRICAS E INSTRUMENTACION', 8, 'IELM804', 2),
(122, 'REFRIGERACION Y AIRE ACONDICIONADO', 8, 'IELM805', 2),
(123, 'SUBESTACION Y CENTRALES ELECTRICAS', 8, 'IELM806', 2),
(124, 'SISTEMAS CAD/CAM', 8, 'IELMSE1', 2),
(125, 'PROYECTO INTEGRADOR II', 8, 'IELMPI2', 2),
(126, 'LEGISLACION LABORAL', 9, 'IELM902', 2),
(127, 'MANTENIMIENTO INDUSTRIAL', 9, 'IELM903', 2),
(128, 'ALTO VOLTAJE', 9, 'IELM904', 2),
(129, 'INGENIERIA ECONOMICA', 9, 'IELM905', 2),
(130, 'SISTEMAS ELECTRICOS DE POTENCIA', 9, 'IELM906', 2),
(131, 'NORMALIZACION ELECTRICA Y MECANICA', 9, 'IELM907', 2),
(132, 'ANALISIS PREDICTIVO', 9, 'IELMSE2', 2),
(133, 'DISEÑO DE ANTEPROYECTO DE TESIS', 9, 'IELM901', 2),
(134, 'ENERGIAS RENOVABLES', 9, 'IELMOP3', 2),
(135, 'MICROPROCESADORES Y MICROCONTROLADORES', 9, 'IELMOP4', 2),
(136, 'METODOLOGIA DE LA INVESTIGACION', 1, 'IIND101', 3),
(137, 'ANALISIS MATEMATICO I', 1, 'IIND102', 3),
(138, 'FISICA', 1, 'IIND103', 3),
(139, 'GEOMETRIA ANALITICA Y PLANA', 1, 'IIND104', 3),
(140, 'TRIGONOMETRIA', 1, 'IIND105', 3),
(141, 'COMPUTACION BASICA', 1, 'IIND106', 3),
(142, 'ANALISIS SOCIOECONOMICO', 1, 'IIND107', 3),
(143, 'QUIMICA INDUSTRIAL', 2, 'IIND201', 3),
(144, 'CAD', 2, 'IIND202', 3),
(145, 'DISEÑO DE PROYECTOS', 2, 'IIND203', 3),
(146, 'ANALISIS MATEMATICO II', 2, 'IIND204', 3),
(147, 'FISICA II', 2, 'IIND205', 3),
(148, 'ESTADISTICA', 2, 'IIND206', 3),
(149, 'PROBLEMAS DEL MUNDO CONTEMPORANEO', 2, 'IIND207', 3),
(150, 'TALLER MECANICO I', 3, 'IIND301', 3),
(151, 'CONTABILIDAD GENERAL', 3, 'IIND302', 3),
(152, 'ERGONOMIA', 3, 'IIND303', 3),
(153, 'CIRCUITOS ELECTRICOS', 3, 'IIND304', 3),
(154, 'ANALISIS MATEMATICO III', 3, 'IIND305', 3),
(155, 'ESTATICA Y DINAMICA', 3, 'IIND306', 3),
(156, 'DESARROLLO LOCAL Y EXTENSION', 3, 'IIND307', 3),
(157, 'TALLER MECANICO II', 4, 'IIND401', 3),
(158, 'CONTABILIDAD DE COSTOS', 4, 'IIND402', 3),
(159, 'ORGANIZACION INDUSTRIAL', 4, 'IIND403', 3),
(160, 'MAQUINAS ELECTRICAS', 4, 'IIND404', 3),
(161, 'TERMODINAMICA', 4, 'IIND405', 3),
(162, 'IDENTIDAD CULTURAL', 4, 'IIND406', 3),
(163, 'EMPRENDIMIENTO SOCIAL I', 4, 'IIND407', 3),
(164, 'TRANSFERENCIA DE CALOR ', 5, 'IIND501', 3),
(165, 'MECANICA DE FLUIDOS', 5, 'IIND502', 3),
(166, 'SEGURIDAD E HIGIENE INDUSTRIAL ', 5, 'IIND503', 3),
(167, 'INVESTIGACION DE OPERACIONES I', 5, 'IIND504', 3),
(168, 'CALIDAD', 5, 'IIND505', 3),
(169, 'EQUIDAD Y GENERO', 5, 'IIND506', 3),
(170, 'EMPRENDIMIENTO SOCIAL II', 5, 'IIND507', 3),
(171, 'RESISTENCIA DE MATERIALES', 6, 'IIND601', 3),
(172, 'MAQUINAS MOTRICES Y TERMICAS', 6, 'IIND602', 3),
(173, 'INVESTIGACION DE OPERACIONES II', 6, 'IIND603', 3),
(174, 'SISTEMAS DE GESTION INTEGRAL ', 6, 'IIND604', 3),
(175, 'PROYECTO INTEGRADOR I', 6, 'IINDPI1', 3),
(176, 'EDUCACION AMBIENTAL', 6, 'IIND605', 3),
(177, 'GESTION DEL TALENTO HUMANO', 7, 'IIND701', 3),
(178, 'INGENIERIA DE MANTENIMIENTO', 7, 'IIND702', 3),
(179, 'ADMINISTRACION DE LA PRODUCCION I', 7, 'IIND703', 3),
(180, 'INGENIERIA ECONOMICA', 7, 'IIND704', 3),
(181, 'INSTRUMETACION INDUSTRIAL', 7, 'IIND705', 3),
(182, 'CONTROL INDUSTRIAL', 7, 'IIND706', 3),
(183, 'SEGURIDAD Y SALUD OCUPACIONAL', 7, 'IINDSE1', 3),
(184, 'COMERCIO EXTERIOR', 7, 'IINDOP1', 3),
(185, 'PSICOLOGIA INDUSTRIAL', 7, 'IINDOP2', 3),
(186, 'INGENIERIA DE METODOS', 8, 'IIND801', 3),
(187, 'INGENIERIA AMBIENTAL', 8, 'IIND802', 3),
(188, 'ADMINISTRACION DE LA PRODUCCION II', 8, 'IIND803', 3),
(189, 'ANALISIS FINANCIERO ', 8, 'IIND804', 3),
(190, 'PROGRAMADORES LOGICOS PLC''s', 8, 'IIND805', 3),
(191, 'DERECHO LABORAL', 8, 'IIND806', 3),
(192, 'PRODUCCION', 8, 'IINDSE2', 3),
(193, 'PROYECTO INTEGRADOR II', 8, 'IINDPI2', 3),
(194, 'ADMINISTRACION EMPRESARIAL', 9, 'IIND901', 3),
(195, 'MARKETING Y VENTAS', 9, 'IIND902', 3),
(196, 'LOCALIZACION Y DISEÑO DE PLANTAS INDUSTRIALES', 9, 'IIND903', 3),
(197, 'ELABORACION Y EVALUACION DE PROYECTOS', 9, 'IIND904', 4),
(198, 'DISEÑO DE ANTEPROYECTO DE TESIS', 9, 'IIND905', 3),
(199, 'SISTEMA DE INFORMACION GENERAL', 9, 'IINDOP3', 3),
(200, 'SART', 9, 'IINDOP4', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `practicas`
--

CREATE TABLE IF NOT EXISTS `practicas` (
  `id_prac` int(5) NOT NULL AUTO_INCREMENT,
  `tema_prac` varchar(150) NOT NULL,
  `objetivo_prac` varchar(3000) NOT NULL,
  `objetivo1` varchar(3000) NOT NULL,
  `objetivo2` varchar(3000) NOT NULL,
  `objetivo3` varchar(3000) NOT NULL,
  `area` varchar(50) NOT NULL,
  `carrera` varchar(50) NOT NULL,
  `ciclo` varchar(50) NOT NULL,
  `materias` varchar(100) NOT NULL,
  `insumo_prac` varchar(3000) NOT NULL,
  `descripcion_prac` varchar(3000) NOT NULL,
  `concluiones_prac` varchar(3000) NOT NULL,
  `recomendacion` varchar(3000) NOT NULL,
  `codigo_materia` varchar(35) DEFAULT NULL,
  `id_mate` varchar(10) NOT NULL,
  `eq1` varchar(200) NOT NULL,
  `eq2` varchar(200) NOT NULL,
  `eq3` varchar(200) NOT NULL,
  `eq4` varchar(200) NOT NULL,
  `eq5` varchar(200) NOT NULL,
  `eq6` varchar(200) NOT NULL,
  `eq7` varchar(200) NOT NULL,
  `eq8` varchar(200) NOT NULL,
  `eq9` varchar(200) NOT NULL,
  `eq10` varchar(200) NOT NULL,
  PRIMARY KEY (`id_prac`),
  KEY `posee` (`codigo_materia`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `practicas`
--

INSERT INTO `practicas` (`id_prac`, `tema_prac`, `objetivo_prac`, `objetivo1`, `objetivo2`, `objetivo3`, `area`, `carrera`, `ciclo`, `materias`, `insumo_prac`, `descripcion_prac`, `concluiones_prac`, `recomendacion`, `codigo_materia`, `id_mate`, `eq1`, `eq2`, `eq3`, `eq4`, `eq5`, `eq6`, `eq7`, `eq8`, `eq9`, `eq10`) VALUES
(1, 'elementos', 'determinar', 'imponer', 'categorizar', '', 'A3', '2: ING. ELECTROMECANICA', '1: PRIMERO', '67: QUIMICA', 'ninguno', 'sjdasfdsf', 'fdgfdgdfgfdg', 'fgdfgdfgdfgdgdfg', 'IELM102', '67', 'mouse', '', '', '', '', '', '', '', '', ''),
(2, 'logaritmos', 'determinar ', 'conocer', 'posibilitar', '', 'AULA', '3: ING. INDUSTRIAL', '9: NOVENO', '194: ADMINISTRACION EMPRESARIAL', 'nnas', 'czc', 'fdgg', 'gfdfg', 'IIND901', '9', 'mouse', 'mouse', '', '', '', '', '', '', '', ''),
(3, 'gjgjg', 'khkj', 'jjl', 'kjkkl', 'jnljljkl', 'A3', '3: ING. INDUSTRIAL', '1: PRIMERO', '136: METODOLOGIA DE LA INVESTIGACION', 'hkl', 'm.,m', 'jklj', 'jkjkl', 'IIND101', '136', '', '', '', '', '', '', '', '', '', ''),
(4, 'fsdfds', 'k', 'k', 'k', '', 'A6', '1: ING. ELECTRICA', '1: PRIMERO', '1: ANALISIS MATEMATICO I', 'csdd', 'fsd', 'dsf', 'fd', 'IELE101', '1', 'mouse', '', '', '', '', '', '', '', '', ''),
(5, 'fsdf', 'fd', 'f', 'ff', 'ff', 'A3', '3: ING. INDUSTRIAL', '1: PRIMERO', '136: METODOLOGIA DE LA INVESTIGACION', 'x', 'x', 'x', 'x', 'IIND101', '136', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registroequipos`
--

CREATE TABLE IF NOT EXISTS `registroequipos` (
  `idinventarioequipo` int(30) NOT NULL AUTO_INCREMENT,
  `inventariado_por` varchar(40) NOT NULL,
  `fecha_inventario` date NOT NULL,
  `nombre_Equipo` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `serie` varchar(100) NOT NULL,
  `condicion_adquisicion` varchar(50) NOT NULL,
  `ubicacion_equipo` varchar(40) NOT NULL,
  `seccion_equipo` varchar(40) NOT NULL,
  `imagen` longblob NOT NULL,
  `caracteristicas` varchar(1000) NOT NULL,
  `componente1` varchar(1000) NOT NULL,
  `componente2` varchar(1000) NOT NULL,
  `componente3` varchar(1000) NOT NULL,
  `componente4` varchar(1000) NOT NULL,
  `codigobien` varchar(20) NOT NULL,
  `descripcionbien` varchar(800) NOT NULL,
  `fechaingreso` varchar(20) NOT NULL,
  `tipo_bien` varchar(300) NOT NULL,
  `custodio` varchar(100) NOT NULL,
  `dependencia` varchar(300) NOT NULL,
  `costo` varchar(100) NOT NULL,
  `observacionbien` varchar(800) NOT NULL,
  PRIMARY KEY (`idinventarioequipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(30) NOT NULL,
  `tipo_usuario` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `tipo_usuario`, `password`) VALUES
(1, 'mayra', 'coordinador', 'mayra12'),
(2, 'andrest', 'laboratorista', 'ANDREST2016'),
(3, 'alex', 'docente', 'alex12'),
(4, 'sandrag', 'secretaria', 'SANDRAG2016');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
