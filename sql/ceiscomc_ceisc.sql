-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2014 at 09:44 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ceiscomc_ceisc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`admin_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`) VALUES
(1, 'Mr. Admin', 'admin@admin.com', 'admin2014@', '1'),
(2, 'operativo@ceis.com.co', 'operativo@ceis.com.co', 'vigilancia2014@', '1'),
(3, 'direccion@ceis.com.co', 'direccion@ceis.com.co', 'vigilancia2014@', '1'),
(4, 'administrativo@ceis.com.co', 'administrativo@ceis.com.co', 'vigilancia2014@', '1'),
(5, 'recepcion@ceis.com.co\r\n', 'recepcion@ceis.com.co\r\n', 'vigilancia2014@', '1');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
`book_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
`class_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `seccion` varchar(11) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fcha_inicio` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fcha_fin` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hora_inicio` longtext COLLATE utf8_unicode_ci NOT NULL,
  `hora_fin` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cupo` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `seccion`, `fcha_inicio`, `fcha_fin`, `hora_inicio`, `hora_fin`, `cupo`) VALUES
(3, 'Fundamentacion en Escolta', 'A', '09/15/2014', '09/19/2014', '7', '9', 35),
(4, 'Reentrenamiento Vigilancia', 'D', '10/20/2014', '10/31/2014', '7', '6', 25),
(6, 'FUNDAMENTACION VIGILANCIA', 'C', '10/30/2014', '10/31/2014', '13', '15', 25),
(7, '0', 'C', '0', '0', '-12', '-12', 40);

-- --------------------------------------------------------

--
-- Table structure for table `class_name`
--

CREATE TABLE IF NOT EXISTS `class_name` (
`id` int(11) NOT NULL,
  `nombre` varchar(400) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `class_name`
--

INSERT INTO `class_name` (`id`, `nombre`) VALUES
(1, 'FUNDAMENTACION VIGILANCIA'),
(2, 'REENTRENAMIENTO VIGILANCIA'),
(3, 'ESPECIALIZACION VIGILANCIA AEROPORTUARIA'),
(4, 'ESPECIALIZACION VIGILANCIA SECTOR FINANCIERO'),
(5, 'ESPECIALIZACION VIGILANCIA COMERCIAL'),
(6, 'ESPECIALIZACION VIGILANCIA EDUCATIVA'),
(7, 'ESPECIALIZACION VIGILANCIA EVENTOS PUBLICOS'),
(8, 'ESPECIALIZACION VIGILANCIA HOSPITALARIA'),
(9, 'ESPECIALIZACION VIGILANCIA PORTUARIA'),
(10, 'ESPECIALIZACION VIGILANCIA INDUSTRIAL'),
(11, 'ESPECIALIZACION VIGILANCIA RESIDENCIAL'),
(12, 'ESPECIALIZACION VIGILANCIA PETROLERA'),
(13, 'ESPECIALIZACION VIGILANCIA TURISTICA'),
(14, 'ESPECIALIZACION VIGILANCIA ENTIDADES OFICIALES'),
(15, 'ESPECIALIZACION VIGILANCIA MINERA'),
(16, 'ESPECIALIZACION VIGILANCIA GRANDES SUPERFICIES'),
(17, 'ESPECIALIZACION VIGILANCIA TRANSPORTE MASIVO'),
(18, 'PROFUNDIZACION VIGILANCIA AEROPORTUARIA'),
(19, 'PROFUNDIZACION VIGILANCIA SECTOR FINANCIERO'),
(20, 'PROFUNDIZACION VIGILANCIA COMERCIAL'),
(21, 'PROFUNDIZACION VIGILANCIA EDUCATIVA'),
(22, 'PROFUNDIZACION VIGILANCIA EVENTOS PUBLICOS'),
(23, 'PROFUNDIZACION VIGILANCIA HOSPITALARIA'),
(24, 'PROFUNDIZACION VIGILANCIA PORTUARIA'),
(25, 'PROFUNDIZACION VIGILANCIA INDUSTRIAL'),
(26, 'PROFUNDIZACION VIGILANCIA RESIDENCIAL'),
(27, 'PROFUNDIZACION VIGILANCIA PETROLERA'),
(28, 'PROFUNDIZACION VIGILANCIA TURISTICA'),
(29, 'PROFUNDIZACION VIGILANCIA ENTIDADES OFICIALES'),
(30, 'PROFUNDIZACION VIGILANCIA MINERA'),
(31, 'PROFUNDIZACION VIGILANCIA GRANDES SUPERFICIES'),
(32, 'PROFUNDIZACION VIGILANCIA TRANSPORTE MASIVO'),
(33, 'FUNDAMENTACION ESCOLTAS'),
(34, 'REENTRENAMIENTO ESCOLTAS'),
(35, 'ESPECIALIZACION ESCOLTA PERSONAS'),
(36, 'ESPECIALIZACION ESCOLTA MERCANCIAS'),
(37, 'ESPECIALIZACION ESCOLTA MANEJO DEFENSIVO'),
(38, 'ESPECIALIZACION ESCOLTA TRANSPORTE'),
(39, 'ESPECIALIZACION ESCOLTA PROTECCION A DIGNATARIOS'),
(40, 'PROFUNDIZACION ESCOLTA PERSONAS'),
(41, 'PROFUNDIZACION ESCOLTA MERCANCIAS'),
(42, 'PROFUNDIZACION ESCOLTA MANEJO DEFENSIVO'),
(43, 'PROFUNDIZACION ESCOLTA TRANSPORTE'),
(44, 'PROFUNDIZACION ESCOLTA PROTECCION A DIGNATARIOS'),
(45, 'FUNDAMENTACION SUPERVISORES'),
(46, 'REENTRENAMIENTO SUPERVISORES'),
(47, 'ESPECIALIZACION SUPERVISORES AEROPORTUARIA'),
(48, 'ESPECIALIZACION SUPERVISORES SECTOR FINANCIERO'),
(49, 'ESPECIALIZACION SUPERVISORES COMERCIAL'),
(50, 'ESPECIALIZACION SUPERVISORES EDUCATIVA'),
(51, 'ESPECIALIZACION SUPERVISORES EVENTOS PUBLICOS'),
(52, 'ESPECIALIZACION SUPERVISORES HOSPITALARIA'),
(53, 'ESPECIALIZACION SUPERVISORES PORTUARIA'),
(54, 'ESPECIALIZACION SUPERVISORES INDUSTRIAL'),
(55, 'ESPECIALIZACION SUPERVISORES RESIDENCIAL'),
(56, 'ESPECIALIZACION SUPERVISORES MEDIOS TECNOLOGICOS'),
(57, 'ESPECIALIZACION SUPERVISORES PETROLERA'),
(58, 'ESPECIALIZACION SUPERVISORES TURISTICA'),
(59, 'ESPECIALIZACION SUPERVISORES ENTIDADES OFICIALES'),
(60, 'ESPECIALIZACION SUPERVISORES MINERA'),
(61, 'ESPECIALIZACION SUPERVISORES GRANDES SUPERFICIES'),
(62, 'ESPECIALIZACION SUPERVISORES TRANSPORTE MASIVO'),
(63, 'PROFUNDIZACION SUPERVISORES AEROPORTUARIA'),
(64, 'PROFUNDIZACION SUPERVISORES SECTOR FINANCIERO'),
(65, 'PROFUNDIZACION SUPERVISORES COMERCIAL'),
(66, 'PROFUNDIZACION SUPERVISORES EDUCATIVA'),
(67, 'PROFUNDIZACION SUPERVISORES EVENTOS PUBLICOS'),
(68, 'PROFUNDIZACION SUPERVISORES HOSPITALARIA'),
(69, 'PROFUNDIZACION SUPERVISORES PORTUARIA'),
(70, 'PROFUNDIZACION SUPERVISORES INDUSTRIAL'),
(71, 'PROFUNDIZACION SUPERVISORES RESIDENCIAL'),
(72, 'PROFUNDIZACION SUPERVISORES MEDIOS TECNOLOGICOS'),
(73, 'PROFUNDIZACION SUPERVISORES PETROLERA'),
(74, 'PROFUNDIZACION SUPERVISORES TURISTICA'),
(75, 'PROFUNDIZACION SUPERVISORES ENTIDADES OFICIALES'),
(76, 'PROFUNDIZACION SUPERVISORES MINERA'),
(77, 'PROFUNDIZACION SUPERVISORES GRANDES SUPERFICIES'),
(78, 'PROFUNDIZACION SUPERVISORES TRANSPORTE MASIVO'),
(79, 'FUNDAMENTACION MEDIOS TECNOLOGICOS'),
(80, 'REENTRENAMIENTO MEDIOS TECNOLOGICOS'),
(81, 'ESPECIALIZACION MEDIOS TECNOLOGICOS COORDINADOR'),
(82, 'ESPECIALIZACION MEDIOS TECNOLOGICOS INSTALADOR'),
(83, 'PROFUNDIZACION MEDIOS TECNOLOGICOS COORDINADOR'),
(84, 'PROFUNDIZACION MEDIOS TECNOLOGICOS INSTALADOR'),
(85, 'SEMINARIO ADMINISTRACION DE SERVICIOS DE V.S.P.'),
(86, 'SEMINARIO JEFES DE RECURSOS HUMANOS'),
(87, 'SEMINARIO JEFES DE OPERACION DE EMPRESA DE V.S.P.'),
(88, 'SEMINARIO ESPECTACULOS PUBLICOS'),
(89, 'SEMINARIO JEFES DE SEGURIDAD DE DEPARTAMENTOS'),
(90, 'SEMINARIO COORDINADORES DE MEDIOS TECNOLOGICOS'),
(91, 'SEMINARIO INSTALADORES DE EQUIPOS PARA LA VIGILANCIA Y S.P.');

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE IF NOT EXISTS `class_routine` (
`class_routine_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `day` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_routine`
--

INSERT INTO `class_routine` (`class_routine_id`, `class_id`, `subject_id`, `time_start`, `time_end`, `day`) VALUES
(1, 3, 1, 7, 10, 'monday'),
(2, 0, 0, 16, 17, 'monday');

-- --------------------------------------------------------

--
-- Table structure for table `departamento`
--

CREATE TABLE IF NOT EXISTS `departamento` (
`id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departamento`
--

INSERT INTO `departamento` (`id`, `nombre`) VALUES
(1, 'Amazonas'),
(2, 'Antioquia'),
(3, 'Arauca'),
(4, 'Atlántico'),
(5, 'Bolívar'),
(6, 'Boyacá'),
(7, 'Caldas'),
(8, 'Caquetá'),
(9, 'Casanare'),
(10, 'Cauca'),
(11, 'Cesar'),
(12, 'Chocó'),
(13, 'Córdoba'),
(14, 'Cundinamarca'),
(15, 'Güainia'),
(16, 'Guaviare'),
(17, 'Huila'),
(18, 'La Guajira'),
(19, 'Magdalena'),
(20, 'Meta'),
(21, 'Nariño'),
(22, 'Norte de Santander'),
(23, 'Putumayo'),
(24, 'Quindío'),
(25, 'Risaralda'),
(26, 'San Andrés y Providencia'),
(27, 'Santander'),
(28, 'Sucre'),
(29, 'Tolima'),
(30, 'Valle del Cauca'),
(31, 'Vaupés'),
(32, 'Vichada');

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE IF NOT EXISTS `dormitory` (
`dormitory_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_room` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE IF NOT EXISTS `email_template` (
`email_template_id` int(11) NOT NULL,
  `task` longtext COLLATE utf8_unicode_ci NOT NULL,
  `subject` longtext COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `empresas`
--

CREATE TABLE IF NOT EXISTS `empresas` (
`empresas_id` int(11) NOT NULL,
  `nit_empresas` int(11) NOT NULL,
  `nombre_empresas` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `contacto_empresa` int(13) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empresas`
--

INSERT INTO `empresas` (`empresas_id`, `nit_empresas`, `nombre_empresas`, `contacto_empresa`) VALUES
(6, 2, 'Servies', 0),
(5, 1, 'Videlca', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
`exam_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `date`, `comment`) VALUES
(1, 'fredy', '09/15/2014', 'ret');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
`grade_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `grade_point` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `name`, `grade_point`, `mark_from`, `mark_upto`, `comment`) VALUES
(1, 'fredy', '98', 89, 89, '88');

-- --------------------------------------------------------

--
-- Table structure for table `hs_asistencias`
--

CREATE TABLE IF NOT EXISTS `hs_asistencias` (
`id` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `materia` int(11) NOT NULL,
  `estudiante` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `presente` tinyint(4) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `hs_asistencias`
--

INSERT INTO `hs_asistencias` (`id`, `curso`, `materia`, `estudiante`, `fecha`, `presente`, `create_at`) VALUES
(5, 5, 4, 5, '0000-00-00', 0, '2014-10-28 19:09:52'),
(6, 5, 4, 6, '0000-00-00', 0, '2014-10-28 19:09:52'),
(7, 5, 5, 6, '0000-00-00', 0, '2014-10-28 19:44:37'),
(8, 5, 5, 5, '0000-00-00', 0, '2014-10-28 19:44:37'),
(9, 5, 5, 6, '2014-10-28', 0, '2014-10-28 19:45:48'),
(10, 5, 5, 5, '2014-10-28', 0, '2014-10-28 19:45:39'),
(11, 5, 5, 6, '2014-10-29', 0, '2014-10-28 19:48:01'),
(12, 5, 5, 5, '2014-10-29', 0, '2014-10-28 19:48:01'),
(13, 5, 4, 6, '2014-10-30', 1, '2014-10-28 21:10:47'),
(14, 5, 4, 5, '2014-10-30', 1, '2014-10-28 21:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `hs_cursos`
--

CREATE TABLE IF NOT EXISTS `hs_cursos` (
`id` int(11) NOT NULL,
  `nombre` varchar(500) NOT NULL,
  `periodo` int(11) NOT NULL,
  `seccion` varchar(10) NOT NULL,
  `cupo` int(11) NOT NULL,
  `fecha_ini` date NOT NULL,
  `fecha_cul` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hs_cursos`
--

INSERT INTO `hs_cursos` (`id`, `nombre`, `periodo`, `seccion`, `cupo`, `fecha_ini`, `fecha_cul`) VALUES
(1, 'FUNDAMENTACION VIGILANCIA', 1, 'A', 50, '2014-10-30', '2014-11-15'),
(2, 'REENTRENAMIENTO VIGILANCIA', 1, 'A', 50, '2014-10-30', '2014-11-15'),
(3, 'ESPECIALIZACION VIGILANCIA SECTOR FINANCIERO', 2, 'A', 20, '2014-10-30', '2014-11-15'),
(5, 'ESPECIALIZACION VIGILANCIA HOSPITALARIA', 1, 'B', 30, '2014-10-30', '2014-11-15');

-- --------------------------------------------------------

--
-- Table structure for table `hs_evaluaciones`
--

CREATE TABLE IF NOT EXISTS `hs_evaluaciones` (
`id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `materia` int(11) NOT NULL,
  `ponderacion` float NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hs_evaluaciones`
--

INSERT INTO `hs_evaluaciones` (`id`, `nombre`, `materia`, `ponderacion`, `fecha`) VALUES
(4, 'Conceptos basicos de traslados', 2, 10, '2014-10-08 00:00:00'),
(5, 'Conceptos basicos de municiones', 3, 10, '2014-10-31 13:00:00'),
(6, 'Tipos de armamento', 3, 10, '2014-10-28 14:00:00'),
(7, 'Tacticas basicas', 4, 10, '2014-11-05 14:00:00'),
(8, 'Metodos de inmovilizacion del oponente', 4, 10, '2014-10-28 15:00:00'),
(9, 'Parametros de seguridad', 5, 10, '2014-10-28 08:00:00'),
(10, 'Deteccion de parametros anormales', 5, 10, '2014-11-05 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hs_facturacion`
--

CREATE TABLE IF NOT EXISTS `hs_facturacion` (
`id` int(11) NOT NULL,
  `estudiante` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `descripcion` text COLLATE utf8_spanish2_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `monto` double(12,2) NOT NULL,
  `metodo_pago` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `estado` tinyint(4) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `hs_facturacion`
--

INSERT INTO `hs_facturacion` (`id`, `estudiante`, `curso`, `descripcion`, `cantidad`, `monto`, `metodo_pago`, `estado`, `fecha`) VALUES
(1, 2, 1, 'Mensualidad Mes de Noviembre', 1, 1500.00, 'Contado', 1, '2014-10-28'),
(2, 4, 1, 'Mensualidad - Marzo - 2014', 1, 1458903.87, 'Deposito', 0, '2014-10-28'),
(3, 6, 5, 'Mensualidad - Enero - 2014', 1, 500000.00, 'Deposito', 0, '2014-04-09'),
(4, 5, 5, 'Mensualidad - Diciembre - 2014', 1, 154000.98, 'Transferencia', 0, '2014-12-11');

-- --------------------------------------------------------

--
-- Table structure for table `hs_horarios_materias`
--

CREATE TABLE IF NOT EXISTS `hs_horarios_materias` (
`id` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `materia` int(11) NOT NULL,
  `hora_inicio` int(11) NOT NULL,
  `hora_fin` int(11) NOT NULL,
  `dia` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hs_inscripcion`
--

CREATE TABLE IF NOT EXISTS `hs_inscripcion` (
`id` int(11) NOT NULL,
  `estudiante` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hs_inscripcion`
--

INSERT INTO `hs_inscripcion` (`id`, `estudiante`, `curso`, `status`, `create_at`) VALUES
(8, 6, 5, 1, '2014-10-26 07:11:10'),
(9, 5, 5, 1, '2014-10-26 07:12:06'),
(10, 4, 1, 1, '2014-10-26 07:12:20'),
(11, 2, 1, 0, '2014-10-26 07:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `hs_materias`
--

CREATE TABLE IF NOT EXISTS `hs_materias` (
`id` int(11) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `curso` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hs_materias`
--

INSERT INTO `hs_materias` (`id`, `nombre`, `curso`) VALUES
(2, 'Logistica', 1),
(3, 'Manejo de armas', 1),
(4, 'Defensa personal', 5),
(5, 'Traslado de personal', 5);

-- --------------------------------------------------------

--
-- Table structure for table `hs_notas`
--

CREATE TABLE IF NOT EXISTS `hs_notas` (
`id` int(11) NOT NULL,
  `curso` int(11) NOT NULL,
  `materia` int(11) NOT NULL,
  `evaluacion` int(11) NOT NULL,
  `estudiante` int(11) NOT NULL,
  `puntuacion` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hs_notas`
--

INSERT INTO `hs_notas` (`id`, `curso`, `materia`, `evaluacion`, `estudiante`, `puntuacion`) VALUES
(1, 5, 5, 10, 6, 6),
(2, 5, 5, 10, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `hs_periodo`
--

CREATE TABLE IF NOT EXISTS `hs_periodo` (
`id` int(11) NOT NULL,
  `nombre_periodo` varchar(30) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `duracion` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hs_periodo`
--

INSERT INTO `hs_periodo` (`id`, `nombre_periodo`, `fecha_inicio`, `fecha_fin`, `duracion`) VALUES
(1, '1 er semestre del 2014', '2014-01-01', '2014-07-01', '6 meses'),
(2, '2 do semestre del 2014', '2014-07-01', '2014-12-15', '6 meses');

-- --------------------------------------------------------

--
-- Table structure for table `hs_role`
--

CREATE TABLE IF NOT EXISTS `hs_role` (
`rol_id` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hs_role`
--

INSERT INTO `hs_role` (`rol_id`, `rol`) VALUES
(1, 'Administrativo'),
(2, 'Gerencia'),
(3, 'Operativo');

-- --------------------------------------------------------

--
-- Table structure for table `hs_users`
--

CREATE TABLE IF NOT EXISTS `hs_users` (
`user_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `snombre` longtext COLLATE utf8_unicode_ci NOT NULL,
  `papellido` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sapellido` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `rol` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hs_users`
--

INSERT INTO `hs_users` (`user_id`, `name`, `snombre`, `papellido`, `sapellido`, `sex`, `address`, `phone`, `email`, `password`, `rol`) VALUES
(1, 'maria', '', '', '', '', '', '', 'maria@gmail.com', '', 1),
(2, 'GRECIA', '', 'pico', 'muñoz', 'female', '', '', 'gre@gmail.com', '2212', 2),
(3, 'carlos', '', 'oronoz', 'cabello', 'male', '', '', 'hola', 'ipuZOqpMwgOkZvvmc1H4/8YqoUITz6vJLsTLjsAPvdFSOKF2SrKOgf7hUzi1W4JfPXwgPd6qADRmIvvAX7WqXw==', 2);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
`invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `payment_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `student_id`, `title`, `description`, `amount`, `creation_timestamp`, `payment_timestamp`, `payment_method`, `payment_details`, `status`) VALUES
(1, 0, '', '', 0, 0, '', '', '', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
`phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1557 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'login', 'Registro'),
(2, 'account_type', 'Tipo de Cuenta'),
(3, 'admin', 'Administrador'),
(4, 'teacher', 'Profesores'),
(5, 'student', 'Estudiantes'),
(6, 'parent', 'Padres'),
(7, 'email', 'E-Mail'),
(8, 'password', 'Contraseña'),
(9, 'forgot_password ?', 'Olvido su Contraseña'),
(10, 'reset_password', 'Restablecer Contraseña'),
(11, 'reset', 'Resetear'),
(12, 'admin_dashboard', 'Administrador de Escritorio'),
(13, 'account', 'Cuenta'),
(14, 'profile', 'Perfil'),
(15, 'change_password', 'Cambiar Contraseña'),
(16, 'logout', 'Salir'),
(17, 'panel', 'Panel'),
(18, 'dashboard_help', 'Ayuda de Escritorio'),
(19, 'dashboard', 'Escritorio'),
(20, 'student_help', 'Área de registro de Estudiantes'),
(21, 'teacher_help', 'Ayuda de Profesores'),
(22, 'subject_help', 'Ayuda de Materias'),
(23, 'subject', 'Materias'),
(24, 'class_help', 'Ayuda de Cursos'),
(25, 'class', 'Cursos'),
(26, 'exam_help', 'Ayuda de Exámenes'),
(27, 'exam', 'Exámenes'),
(28, 'marks_help', 'Ayuda de Notas'),
(29, 'marks-attendance', 'Notas y Asistencias'),
(30, 'grade_help', 'Ayuda de Grado'),
(31, 'exam-grade', 'Examen de Grado'),
(32, 'class_routine_help', 'Ayuda de Horario de Cursos'),
(33, 'class_routine', 'Horario de Cursos'),
(34, 'invoice_help', 'Ayuda de Facturación'),
(35, 'payment', 'Facturación'),
(36, 'book_help', 'Ayuda de Documentos'),
(37, 'library', 'Documentos'),
(38, 'transport_help', ''),
(39, 'transport', ''),
(40, 'dormitory_help', ''),
(41, 'dormitory', ''),
(42, 'noticeboard_help', 'Ayuda de Noticias'),
(43, 'noticeboard-event', 'Noticias y Eventos'),
(44, 'bed_ward_help', ''),
(45, 'settings', 'Configuración'),
(46, 'system_settings', 'Configuración de Sistema'),
(47, 'manage_language', 'Manejo de Idioma'),
(48, 'backup_restore', 'Restaurar backup'),
(49, 'profile_help', 'Ayuda de Perfil'),
(50, 'manage_student', 'Gestionar Estudiantes'),
(51, 'manage_teacher', 'Gestionar Profesores'),
(52, 'noticeboard', 'Noticias'),
(53, 'language', 'Lenguaje'),
(54, 'backup', 'Backup'),
(55, 'calendar_schedule', 'Horario'),
(56, 'select_a_class', 'Seleccionar Cursos'),
(57, 'student_list', 'Lista de Estudiantes'),
(58, 'add_student', 'Agregar Estudiantes'),
(59, 'roll', ''),
(60, 'photo', 'Foto'),
(61, 'student_name', 'Nombre de Estudiante'),
(62, 'address', 'Dirección'),
(63, 'options', 'Opciones'),
(64, 'marksheet', 'Factura'),
(65, 'id_card', ''),
(66, 'edit', 'Editar'),
(67, 'delete', 'Borrar'),
(68, 'personal_profile', 'Perfil Personal'),
(69, 'academic_result', 'Resultados Academicos'),
(70, 'name', 'Nombre'),
(71, 'birthday', 'Cumpleaños'),
(72, 'sex', 'Sexo'),
(73, 'male', 'Masculino'),
(74, 'female', 'Femenino'),
(75, 'religion', 'Religión'),
(76, 'blood_group', 'Tipo de Sangre'),
(77, 'phone', 'Teléfono'),
(78, 'father_name', 'Primer Apellido'),
(79, 'mother_name', 'Segundo Apellido'),
(80, 'edit_student', 'Editar Estudiante'),
(81, 'teacher_list', 'Lista de Profesores'),
(82, 'add_teacher', 'Agregar Profesor'),
(83, 'teacher_name', 'Nombre de Profesor'),
(84, 'edit_teacher', 'Editar Profesor'),
(85, 'manage_parent', ''),
(86, 'parent_list', ''),
(87, 'parent_name', ''),
(88, 'relation_with_student', ''),
(89, 'parent_email', ''),
(90, 'parent_phone', ''),
(91, 'parrent_address', ''),
(92, 'parrent_occupation', ''),
(93, 'add', 'Agregar'),
(94, 'parent_of', ''),
(95, 'profession', 'Profesión'),
(96, 'edit_parent', ''),
(97, 'add_parent', ''),
(98, 'manage_subject', 'Gestionar Materias'),
(99, 'subject_list', 'Lista de Materias'),
(100, 'add_subject', 'Agregar Materias'),
(101, 'subject_name', 'Nombre de Materias'),
(102, 'edit_subject', 'Editar Materias'),
(103, 'manage_class', 'Gestionar Cursos'),
(104, 'class_list', 'Lista de Cursos'),
(105, 'add_class', 'Agregar Cursos'),
(106, 'class_name', 'Nombre de Cursos'),
(107, 'numeric_name', ''),
(108, 'name_numeric', ''),
(109, 'edit_class', 'Editar Cursos'),
(110, 'manage_exam', 'Gestionar Exámenes'),
(111, 'exam_list', 'Lista Exámenes'),
(112, 'add_exam', 'Agregar Exámenes'),
(113, 'exam_name', 'Nombre del Exámen'),
(114, 'date', 'Fecha'),
(115, 'comment', 'Comentarios'),
(116, 'edit_exam', 'Editar Exámen'),
(117, 'manage_exam_marks', 'Gestionar Notas de Exámenes'),
(118, 'manage_marks', 'Gestionar Notas'),
(119, 'select_exam', 'Seleccionar Examen'),
(120, 'select_class', 'Seleccionar Cursos'),
(121, 'select_subject', 'Seleccionar Materias'),
(122, 'select_an_exam', 'Seleccionar un Exámen'),
(123, 'mark_obtained', 'Notas Obtenidas'),
(124, 'attendance', 'Asistencia'),
(125, 'manage_grade', 'Gestionar Grado'),
(126, 'grade_list', 'Lista de Grado'),
(127, 'add_grade', 'Agregar Grado'),
(128, 'grade_name', 'Nombre de Grado'),
(129, 'grade_point', 'Punto de Grado'),
(130, 'mark_from', 'Nota Mínima'),
(131, 'mark_upto', 'Nota Máxima'),
(132, 'edit_grade', 'Editar Grado'),
(133, 'manage_class_routine', 'Gestionar Horario de Cursos'),
(134, 'class_routine_list', 'Lista de Horario de Cursos'),
(135, 'add_class_routine', 'Agregar Horario de Cursos'),
(136, 'day', 'Dia'),
(137, 'starting_time', 'Hora de Inicio'),
(138, 'ending_time', 'Hora de Fin'),
(139, 'edit_class_routine', 'Editar Horario de Curso'),
(140, 'manage_invoice/payment', 'Gestionar Facturas - Pagos'),
(141, 'invoice/payment_list', 'Lista de Facturas - Pagos'),
(142, 'add_invoice/payment', 'Agregar Facturas - Pagos'),
(143, 'title', 'Titulo'),
(144, 'description', 'Descripción'),
(145, 'amount', 'Cantidad'),
(146, 'status', 'Estado'),
(147, 'view_invoice', 'Ver Factura'),
(148, 'paid', 'Pago'),
(149, 'unpaid', 'No Pago'),
(150, 'add_invoice', 'Agregar Factura'),
(151, 'payment_to', 'Pagar a'),
(152, 'bill_to', 'Facturar a'),
(153, 'invoice_title', 'Titulo de Factura'),
(154, 'invoice_id', 'Código de Factura'),
(155, 'edit_invoice', 'Editar Factura'),
(156, 'manage_library_books', 'Gestionar Documentos'),
(157, 'book_list', 'Lista de Documentos'),
(158, 'add_book', 'Agregar Documento'),
(159, 'book_name', 'Nombre de Documento'),
(160, 'author', 'Autor'),
(161, 'price', 'Precio'),
(162, 'available', 'Valido'),
(163, 'unavailable', 'No Válido'),
(164, 'edit_book', 'Editar Documento'),
(165, 'manage_transport', ''),
(166, 'transport_list', ''),
(167, 'add_transport', ''),
(168, 'route_name', ''),
(169, 'number_of_vehicle', ''),
(170, 'route_fare', ''),
(171, 'edit_transport', ''),
(172, 'manage_dormitory', ''),
(173, 'dormitory_list', ''),
(174, 'add_dormitory', ''),
(175, 'dormitory_name', ''),
(176, 'number_of_room', ''),
(177, 'manage_noticeboard', 'Gestionar Noticias'),
(178, 'noticeboard_list', 'Lista de Noticias'),
(179, 'add_noticeboard', 'Agregar Noticias'),
(180, 'notice', 'Noticia'),
(181, 'add_notice', 'Agregar Noticia'),
(182, 'edit_noticeboard', 'Editar Noticias'),
(183, 'system_name', 'Nombre del Sistema'),
(184, 'save', 'Guardar'),
(185, 'system_title', 'Titulo de Sistema'),
(186, 'paypal_email', 'E-Mail de Pago'),
(187, 'currency', 'Moneda'),
(188, 'phrase_list', 'Lista de Fraces'),
(189, 'add_phrase', 'Agregar Frases'),
(190, 'add_language', 'Agregar Idioma'),
(191, 'phrase', 'Frases'),
(192, 'manage_backup_restore', 'Gestionar Backup'),
(193, 'restore', 'Restaurar'),
(194, 'mark', 'Nota'),
(195, 'grade', 'Grado'),
(196, 'invoice', 'Factura'),
(197, 'book', 'Documento'),
(198, 'all', 'Todo'),
(199, 'upload_&_restore_from_backup', 'Subir Y Restaurar desde Backup'),
(200, 'manage_profile', 'Gestionar Perfil'),
(201, 'update_profile', 'Actualizar Perfil'),
(202, 'new_password', 'Nueva Contraseña'),
(203, 'confirm_new_password', 'Confirmar Nueva Contraseña'),
(204, 'update_password', 'Actualizar Contraseña'),
(205, 'teacher_dashboard', 'Escritorio de Profesor'),
(206, 'backup_restore_help', 'Ayuda de Backup'),
(207, 'student_dashboard', 'Escritorio de Estudiante'),
(208, 'parent_dashboard', ''),
(209, 'view_marks', 'Ver Notas'),
(210, 'delete_language', ''),
(211, 'settings_updated', 'Configuración Actualizada'),
(212, 'update_phrase', 'Actualizar Palabras'),
(213, 'login_failed', 'Registro Fallido'),
(214, 'system_email', 'E-Mail de Sistema'),
(215, 'option', 'Opciones'),
(216, 'edit_phrase', 'Editar Frases'),
(217, 'alert_studinate', 'Por Favor Seleccione un Curso'),
(218, 'apellido', ''),
(219, 'fecha_inicio', ''),
(220, 'fecha_fin', ''),
(221, 'cupo_disponible', ''),
(222, 'empresas', ''),
(223, 'lista_de_empresas', ''),
(224, 'crear_empresas', ''),
(225, 'gestionar_empresas', ''),
(226, 'nit_empresas', ''),
(227, 'nombre_empresas', ''),
(228, 'contacto_empresa', ''),
(229, 'nit_empresa', ''),
(230, 'telefono_empresa', ''),
(231, 'crear_empresa', ''),
(232, 'documento', ''),
(233, 'lugar_de_expedicion', ''),
(234, 'fecha_de_expedicion', ''),
(235, 'primer_nombre', ''),
(236, 'segundo_nombre', ''),
(237, 'primer_apellido', ''),
(238, 'segundo_apellido', ''),
(239, 'fecha_de_nacimiento', ''),
(240, 'tipo_de_documento', ''),
(241, 'cedula', ''),
(242, 'tarjeta_militar', ''),
(243, 'numero_de_documento', ''),
(244, 'CEDULA_DE_CIUDADANIA', ''),
(245, 'CEDULA_DE_EXTRANJERIA', ''),
(246, 'VISA', ''),
(247, 'Número_de_Libreta_Militar', ''),
(248, 'estado_civil', ''),
(249, 'Soltero', ''),
(250, 'casado', ''),
(251, 'Separado', ''),
(252, 'Unión_Libre', ''),
(253, 'Viudo', ''),
(254, 'tipo_de_ingreso', ''),
(255, 'becado', ''),
(256, 'empresa', ''),
(257, 'otro', ''),
(258, 'tiene_hijos', ''),
(259, 'si', ''),
(260, 'no', ''),
(261, 'numero_de_hijos', ''),
(262, '1', ''),
(263, '2', ''),
(264, '3', ''),
(265, '4', ''),
(266, '5', ''),
(267, '6', ''),
(268, 'edit_empresas', ''),
(269, 'tlf_contacto', ''),
(270, 'tel_contacto', ''),
(271, 'Segundo_Nombre', ''),
(272, 'Primer_apellido', ''),
(273, 'Primer_apellido', ''),
(274, 'Primer_apellido', ''),
(275, 'Primer_apellido', ''),
(276, 'Primer_apellido', ''),
(277, 'fecha_de_inicio', ''),
(278, 'fecha_de_fin', ''),
(279, 'hora_de_inicio', ''),
(280, 'hora_de_fin', ''),
(281, 'opciones', ''),
(282, 'cupo', ''),
(283, 'id', ''),
(284, 'Actualizar_estudiante', ''),
(285, 'Union_Libre', ''),
(286, 'Union_Libre', ''),
(287, 'Union_Libre', ''),
(288, 'nombres', ''),
(289, 'curso', ''),
(290, 'Documento', ''),
(291, 'fecha_de_nacimineto', ''),
(292, 'Documento', ''),
(293, 'Documento', ''),
(294, 'Documento', ''),
(295, 'Gerencia', ''),
(296, 'Operativo', ''),
(297, 'Administrativo', ''),
(298, 'Profesor', ''),
(299, 'Recepcion', ''),
(300, 'Recepción', ''),
(301, 'Recepción', ''),
(302, 'Recepción', ''),
(303, 'Recepción', ''),
(304, 'Entrar', ''),
(305, 'Ingrear_al_sistema', ''),
(306, 'Recepción', ''),
(307, 'Recepción', ''),
(308, 'Ingresar_al_sistema', ''),
(309, 'Recepción', ''),
(310, 'Recepción', ''),
(311, 'Sistema_academico', ''),
(312, 'Recepción', ''),
(313, 'Recepción', ''),
(314, 'Recepción', ''),
(315, 'Recepción', ''),
(316, 'notice_updated', ''),
(317, 'account_updated', ''),
(318, 'Recepción', ''),
(319, 'Recepción', ''),
(320, 'Primer_apellido', ''),
(321, 'Recepción', ''),
(322, 'Recepción', ''),
(323, 'Recepción', ''),
(324, 'Recepción', ''),
(325, 'Convenio_sena', ''),
(326, 'convenio_sena', ''),
(327, 'convenio', ''),
(328, 'convenio_sena', ''),
(329, 'ninguno', ''),
(330, 'convenio_sena', ''),
(331, 'Nombre_convenio', ''),
(332, 'convenio_sena', ''),
(333, 'Recepción', ''),
(334, 'Recepción', ''),
(335, 'Recepción', ''),
(336, 'Recepción', ''),
(337, 'Recepción', ''),
(338, 'Recepción', ''),
(339, 'Recepción', ''),
(340, 'Recepción', ''),
(341, 'Recepción', ''),
(342, 'Recepción', ''),
(343, 'Recepción', ''),
(344, 'Recepción', ''),
(345, 'convenio_sena', ''),
(346, 'convenio_sena', ''),
(347, 'convenio_sena', ''),
(348, 'convenio_sena', ''),
(349, 'convenio_sena', ''),
(350, 'convenio_sena', ''),
(351, 'Recepción', ''),
(352, 'Recepción', ''),
(353, 'convenio_sena', ''),
(354, 'convenio_sena', ''),
(355, 'Recepción', ''),
(356, 'Recepción', ''),
(357, 'convenio_sena', ''),
(358, 'Recepción', ''),
(359, 'Recepción', ''),
(360, 'Recepción', ''),
(361, 'Recepción', ''),
(362, 'convenio_sena', ''),
(363, 'Recepción', ''),
(364, 'Recepción', ''),
(365, 'convenio_sena', ''),
(366, 'Recepción', ''),
(367, 'Recepción', ''),
(368, 'Recepción', ''),
(369, 'convenio_sena', ''),
(370, 'convenio_sena', ''),
(371, 'convenio_sena', ''),
(372, 'Recepción', ''),
(373, 'Recepción', ''),
(374, 'Recepción', ''),
(375, 'Recepción', ''),
(376, 'convenio_sena', ''),
(377, 'Recepción', ''),
(378, 'Recepción', ''),
(379, 'Recepción', ''),
(380, 'convenio_sena', ''),
(381, 'Recepción', ''),
(382, 'Recepción', ''),
(383, 'Recepción', ''),
(384, 'convenio_sena', ''),
(385, 'Recepción', ''),
(386, 'convenio_sena', ''),
(387, 'convenio_sena', ''),
(388, 'convenio_sena', ''),
(389, 'Recepción', ''),
(390, 'convenio_sena', ''),
(391, 'Recepción', ''),
(392, 'convenio_sena', ''),
(393, 'convenio_sena', ''),
(394, 'Documento', ''),
(395, 'Union_Libre', ''),
(396, 'convenio_sena', ''),
(397, 'convenio_sena', ''),
(398, 'convenio_sena', ''),
(399, 'Union_Libre', ''),
(400, 'convenio_sena', ''),
(401, 'Union_Libre', ''),
(402, 'Recepción', ''),
(403, 'convenio_sena', ''),
(404, 'Recepción', ''),
(405, 'Recepción', ''),
(406, 'Recepción', ''),
(407, 'Recepción', ''),
(408, 'Recepción', ''),
(409, 'convenio_sena', ''),
(410, 'Union_Libre', ''),
(411, 'convenio_sena', ''),
(412, 'Union_Libre', ''),
(413, 'convenio_sena', ''),
(414, 'Union_Libre', ''),
(415, 'convenio_sena', ''),
(416, 'Recepción', ''),
(417, 'Recepción', ''),
(418, 'Recepción', ''),
(419, 'Recepción', ''),
(420, 'Recepción', ''),
(421, 'Recepción', ''),
(422, 'Recepción', ''),
(423, 'Recepción', ''),
(424, 'convenio_sena', ''),
(425, 'convenio_sena', ''),
(426, 'convenio_sena', ''),
(427, 'convenio_sena', ''),
(428, 'Recepción', ''),
(429, 'convenio_sena', ''),
(430, 'convenio_sena', ''),
(431, 'convenio_sena', ''),
(432, 'Recepción', ''),
(433, 'convenio_sena', ''),
(434, 'cod_regional', ''),
(435, 'convenio_sena', ''),
(436, 'codigo_regional', ''),
(437, 'nombre_regional', ''),
(438, 'codigo_departamento', ''),
(439, 'nombre_departamento', ''),
(440, 'convenio_sena', ''),
(441, 'convenio_sena', ''),
(442, 'convenio_sena', ''),
(443, 'convenio_sena', ''),
(444, 'convenio_sena', ''),
(445, 'convenio_sena', ''),
(446, 'convenio_sena', ''),
(447, 'Recepción', ''),
(448, 'convenio_sena', ''),
(449, 'convenio_sena', ''),
(450, 'convenio_sena', ''),
(451, 'convenio_sena', ''),
(452, 'convenio_sena', ''),
(453, 'codigo_municipio', ''),
(454, 'nombre_municipio', ''),
(455, 'empresa_gremio', ''),
(456, 'linea_formacion', ''),
(457, 'codigo_ocupacion', ''),
(458, 'nombre_ocupacion', ''),
(459, 'codigo_curso', ''),
(460, 'nombre_sector_economico', ''),
(461, 'nombre_subsector_economico', ''),
(462, 'cod_dep_dom', ''),
(463, 'convenio_sena', ''),
(464, 'convenio_sena', ''),
(465, 'convenio_sena', ''),
(466, 'convenio_sena', ''),
(467, 'convenio_sena', ''),
(468, 'convenio_sena', ''),
(469, 'Recepción', ''),
(470, 'convenio_sena', ''),
(471, 'convenio_sena', ''),
(472, 'convenio_sena', ''),
(473, 'Barrio', ''),
(474, 'departamento', ''),
(475, 'Municipio', ''),
(476, 'convenio_sena', ''),
(477, 'Direccion de residencia', ''),
(478, 'convenio_sena', ''),
(479, 'telefono_residencia', ''),
(480, 'convenio_sena', ''),
(481, 'convenio_sena', ''),
(482, 'Amazonas', ''),
(483, 'Antioquia', ''),
(484, 'Arauca', ''),
(485, 'Atlantico', ''),
(486, 'Bolivar', ''),
(487, 'Boyaca', ''),
(488, 'Caldas', ''),
(489, 'Caqueta', ''),
(490, 'Casanare', ''),
(491, 'Cauca', ''),
(492, 'Cesar', ''),
(493, 'Choco', ''),
(494, 'Cordoba', ''),
(495, 'Cundinamarca', ''),
(496, 'Guainia', ''),
(497, 'Guaviare', ''),
(498, 'Huila', ''),
(499, 'La Guajira', ''),
(500, 'Magdalena', ''),
(501, 'Meta', ''),
(502, 'Nariño', ''),
(503, 'Norte de Santander', ''),
(504, 'Putumayo', ''),
(505, 'Quindio', ''),
(506, 'Risaralda', ''),
(507, 'San Andres y Providencia', ''),
(508, 'Santander', ''),
(509, 'Sucre', ''),
(510, 'Tolima', ''),
(511, 'Valle del Cauca', ''),
(512, 'Vaupes', ''),
(513, 'Vichada', ''),
(514, 'convenio_sena', ''),
(515, 'convenio_sena', ''),
(516, 'convenio_sena', ''),
(517, 'Recepción', ''),
(518, 'convenio_sena', ''),
(519, 'Recepción', ''),
(520, 'convenio_sena', ''),
(521, 'convenio_sena', ''),
(522, 'convenio_sena', ''),
(523, 'Recepción', ''),
(524, 'convenio_sena', ''),
(525, 'prueba', ''),
(526, 'Ninguna', ''),
(527, 'INDIGENAS_DESPLAZADOS_POR_LA VIOLENCIA', ''),
(528, 'INDIGENAS_DESPLAZADOS_POR_LA_VIOLENCIA_CABEZA_DE_FAMILIA', ''),
(529, 'DESPLAZADOS_POR_LA_VIOLENCIA ', ''),
(530, 'DESPLAZADOS_POR_LA_VIOLENCIA_CABEZA_DE_FAMILIA', ''),
(531, 'AFROCOLOMBIANOS_DESPLAZADOS_POR_LA_VIOLENCIA', ''),
(532, 'DESPLAZADOS_DISCAPACITADOS', ''),
(533, 'DESPLAZADOS_POR_FENOMENOS_NATURALES ', ''),
(534, 'CABEZA_DE_FAMILIA', ''),
(535, 'INDIGENAS', ''),
(536, 'INPEC', ''),
(537, 'JOVENES_VULNERABLES', ''),
(538, 'ADOLESCENTE_EN_CONFLICTO_CON_LA_LEY_PENAL', ''),
(539, 'MUJER_CABEZA_DE_FAMILIA', ''),
(540, 'NEGRITUDES', ''),
(541, 'PROC_REINTEGRACION', ''),
(542, 'ADOLESCENTE_DESVINCULADO_DE_GRUPOS_ARMADOS_ORGANIZADOS', ''),
(543, 'ADOLESCENTE_TRABAJADORo', ''),
(544, 'ARTESANOS', ''),
(545, 'MICROEMPRESAS', ''),
(546, 'EMPRENDEDORES', ''),
(547, 'REMITIDOS_POR_EL_CIE', ''),
(548, 'REMITIDOS_POR_EL_PAL', ''),
(549, 'SOLDADOS_CAMPESINOS', ''),
(550, 'SOBREVIVIENTES_MINAS_ANTIPERSONALES', ''),
(551, 'AFROCOLOMBIANOS', ''),
(552, 'PALENQUEROS', ''),
(553, 'RAIZALES', ''),
(554, 'ROM', ''),
(555, 'convenio_sena', ''),
(556, 'caracterizacion', ''),
(557, 'convenio_sena', ''),
(558, 'SENA EMPRESAS/SENA GREMIO', ''),
(559, 'ALTA GERENCIA/SENA GREMIO', ''),
(560, 'convenio_sena', ''),
(561, 'convenio_sena', ''),
(562, 'convenio_sena', ''),
(563, 'convenio_sena', ''),
(564, 'particular', ''),
(565, 'convenio_sena', ''),
(566, 'convenio_sena', ''),
(567, 'convenio_sena', ''),
(568, 'convenio_sena', ''),
(569, 'convenio_sena', ''),
(570, 'convenio_sena', ''),
(571, 'convenio_sena', ''),
(572, 'Barranquilla', ''),
(573, 'Cartagena', ''),
(574, 'Santa Marta', ''),
(575, 'Valledupar', ''),
(576, 'convenio_sena', ''),
(577, 'empresa_y_o_gremio', ''),
(578, 'convenio_sena', ''),
(579, 'convenio_sena', ''),
(580, 'Documentacion', ''),
(581, 'Cedula', ''),
(582, 'Libreta_Militar', ''),
(583, 'Certificado_de_Estudios', ''),
(584, 'Foto', ''),
(585, 'talla_camisa', ''),
(586, 'convenio_sena', ''),
(587, 'Cedula', ''),
(588, 'convenio_sena', ''),
(589, 'Cedula', ''),
(590, 'convenio_sena', ''),
(591, 'Cedula', ''),
(592, 'convenio_sena', ''),
(593, 'Cedula', ''),
(594, 'convenio_sena', ''),
(595, 'Cedula', ''),
(596, 'convenio_sena', ''),
(597, 'Cedula', ''),
(598, 'convenio_sena', ''),
(599, 'Cedula', ''),
(600, 'convenio_sena', ''),
(601, 'Cedula', ''),
(602, 'convenio_sena', ''),
(603, 'Cedula', ''),
(604, 'convenio_sena', ''),
(605, 'Cedula', ''),
(606, 'convenio_sena', ''),
(607, 'Cedula', ''),
(608, 'convenio_sena', ''),
(609, 'Cedula', ''),
(610, 'convenio_sena', ''),
(611, 'Cedula', ''),
(612, 'convenio_sena', ''),
(613, 'Cedula', ''),
(614, 'convenio_sena', ''),
(615, 'Cedula', ''),
(616, 'Recepción', ''),
(617, 'convenio_sena', ''),
(618, 'Cedula', ''),
(619, '¿Cual tipo de ingreso?', ''),
(620, 'convenio_sena', ''),
(621, 'Cedula', ''),
(622, 'convenio_sena', ''),
(623, 'Cedula', ''),
(624, 'convenio_sena', ''),
(625, 'Cedula', ''),
(626, 'convenio_sena', ''),
(627, 'Cedula', ''),
(628, 'convenio_sena', ''),
(629, 'Cedula', ''),
(630, 'convenio_sena', ''),
(631, 'Cedula', ''),
(632, 'convenio_sena', ''),
(633, 'Cedula', ''),
(634, 'convenio_sena', ''),
(635, 'Cedula', ''),
(636, 'convenio_sena', ''),
(637, 'Cedula', ''),
(638, 'convenio_sena', ''),
(639, 'Cedula', ''),
(640, 'convenio_sena', ''),
(641, 'Cedula', ''),
(642, 'convenio_sena', ''),
(643, 'Cedula', ''),
(644, 'convenio_sena', ''),
(645, 'Cedula', ''),
(646, 'convenio_sena', ''),
(647, 'Cedula', ''),
(648, 'convenio_sena', ''),
(649, 'Cedula', ''),
(650, 'convenio_sena', ''),
(651, 'Cedula', ''),
(652, 'convenio_sena', ''),
(653, 'Cedula', ''),
(654, 'convenio_sena', ''),
(655, 'Cedula', ''),
(656, 'convenio_sena', ''),
(657, 'Cedula', ''),
(658, 'convenio_sena', ''),
(659, 'Cedula', ''),
(660, 'convenio_sena', ''),
(661, 'Cedula', ''),
(662, 'convenio_sena', ''),
(663, 'Cedula', ''),
(664, 'convenio_sena', ''),
(665, 'Cedula', ''),
(666, 'convenio_sena', ''),
(667, 'Cedula', ''),
(668, 'convenio_sena', ''),
(669, 'Cedula', ''),
(670, 'convenio_sena', ''),
(671, 'Cedula', ''),
(672, 'convenio_sena', ''),
(673, 'Cedula', ''),
(674, 'convenio_sena', ''),
(675, 'Cedula', ''),
(676, 'convenio_sena', ''),
(677, 'Cedula', ''),
(678, 'convenio_sena', ''),
(679, 'Cedula', ''),
(680, 'convenio_sena', ''),
(681, 'Cedula', ''),
(682, 'convenio_sena', ''),
(683, 'Cedula', ''),
(684, 'convenio_sena', ''),
(685, 'Cedula', ''),
(686, 'convenio_sena', ''),
(687, 'Cedula', ''),
(688, 'convenio_sena', ''),
(689, 'Cedula', ''),
(690, 'convenio_sena', ''),
(691, 'Cedula', ''),
(692, 'convenio_sena', ''),
(693, 'Cedula', ''),
(694, 'convenio_sena', ''),
(695, 'Cedula', ''),
(696, 'convenio_sena', ''),
(697, 'Cedula', ''),
(698, 'update', ''),
(699, 'convenio_sena', ''),
(700, 'Cedula', ''),
(701, 'convenio_sena', ''),
(702, 'Cedula', ''),
(703, 'actualizar', ''),
(704, 'convenio_sena', ''),
(705, 'Cedula', ''),
(706, 'convenio_sena', ''),
(707, 'Cedula', ''),
(708, 'convenio_sena', ''),
(709, 'Cedula', ''),
(710, 'convenio_sena', ''),
(711, 'Cedula', ''),
(712, 'Union_Libre', ''),
(713, 'Union_Libre', ''),
(714, 'Union_Libre', ''),
(715, 'Union_Libre', ''),
(716, 'Union_Libre', ''),
(717, 'Union_Libre', ''),
(718, 'Union_Libre', ''),
(719, 'Union_Libre', ''),
(720, 'Union_Libre', ''),
(721, 'Union_Libre', ''),
(722, 'Union_Libre', ''),
(723, 'Union_Libre', ''),
(724, 'Union_Libre', ''),
(725, 'Union_Libre', ''),
(726, 'Union_Libre', ''),
(727, 'Union_Libre', ''),
(728, 'Union_Libre', ''),
(729, 'Union_Libre', ''),
(730, 'Union_Libre', ''),
(731, 'Union_Libre', ''),
(732, 'Union_Libre', ''),
(733, 'Union_Libre', ''),
(734, 'Union_Libre', ''),
(735, 'Union_Libre', ''),
(736, 'convenio_sena', ''),
(737, 'Cedula', ''),
(738, 'convenio_sena', ''),
(739, 'Cedula', ''),
(740, 'convenio_sena', ''),
(741, 'Cedula', ''),
(742, 'convenio_sena', ''),
(743, 'Cedula', ''),
(744, 'convenio_sena', ''),
(745, 'Cedula', ''),
(746, 'convenio_sena', ''),
(747, 'Cedula', ''),
(748, 'convenio_sena', ''),
(749, 'Cedula', ''),
(750, 'convenio_sena', ''),
(751, 'Cedula', ''),
(752, 'convenio_sena', ''),
(753, 'Cedula', ''),
(754, 'convenio_sena', ''),
(755, 'Cedula', ''),
(756, 'Recepción', ''),
(757, 'convenio_sena', ''),
(758, 'Cedula', ''),
(759, 'Union_Libre', ''),
(760, 'Union_Libre', ''),
(761, 'Union_Libre', ''),
(762, 'Union_Libre', ''),
(763, 'Union_Libre', ''),
(764, 'Union_Libre', ''),
(765, 'Union_Libre', ''),
(766, 'Union_Libre', ''),
(767, 'Union_Libre', ''),
(768, 'Union_Libre', ''),
(769, 'Union_Libre', ''),
(770, 'Union_Libre', ''),
(771, 'convenio_sena', ''),
(772, 'Cedula', ''),
(773, 'convenio_sena', ''),
(774, 'Cedula', ''),
(775, 'convenio_sena', ''),
(776, 'Cedula', ''),
(777, 'convenio_sena', ''),
(778, 'Cedula', ''),
(779, 'Recepción', ''),
(780, 'convenio_sena', ''),
(781, 'Cedula', ''),
(782, 'convenio_sena', ''),
(783, 'Cedula', ''),
(784, 'convenio_sena', ''),
(785, 'Cedula', ''),
(786, 'convenio_sena', ''),
(787, 'Cedula', ''),
(788, 'convenio_sena', ''),
(789, 'Cedula', ''),
(790, 'rss', ''),
(791, 'RSS', ''),
(792, 'Gestion de RSS', ''),
(793, 'RSS', ''),
(794, 'rss_list', ''),
(795, 'add_rss', ''),
(796, 'url', ''),
(797, 'RSS', ''),
(798, 'RSS', ''),
(799, 'RSS', ''),
(800, 'RSS', ''),
(801, 'RSS', ''),
(802, 'RSS', ''),
(803, 'RSS', ''),
(804, 'RSS', ''),
(805, 'RSS', ''),
(806, 'RSS', ''),
(807, 'RSS', ''),
(808, 'RSS', ''),
(809, 'RSS', ''),
(810, 'RSS', ''),
(811, 'convenio_sena', ''),
(812, 'Cedula', ''),
(813, 'RSS', ''),
(814, 'RSS', ''),
(815, 'Recepción', ''),
(816, 'RSS', ''),
(817, 'RSS', ''),
(818, 'RSS', ''),
(819, 'convenio_sena', ''),
(820, 'Cedula', ''),
(821, 'RSS', ''),
(822, 'RSS', ''),
(823, 'RSS', ''),
(824, 'Inscripciones/Preinscripciones', ''),
(825, 'Inscripciones', ''),
(826, 'RSS', ''),
(827, 'RSS', ''),
(828, 'RSS', ''),
(829, 'Inscripcion_list', ''),
(830, 'add_inscripcion', ''),
(831, 'estudiante', ''),
(832, 'RSS', ''),
(833, 'RSS', ''),
(834, 'fecha', ''),
(835, 'RSS', ''),
(836, 'RSS', ''),
(837, 'RSS', ''),
(838, 'RSS', ''),
(839, 'RSS', ''),
(840, 'RSS', ''),
(841, 'RSS', ''),
(842, 'RSS', ''),
(843, 'RSS', ''),
(844, 'RSS', ''),
(845, 'RSS', ''),
(846, 'RSS', ''),
(847, 'RSS', ''),
(848, 'RSS', ''),
(849, 'RSS', ''),
(850, 'RSS', ''),
(851, 'RSS', ''),
(852, 'RSS', ''),
(853, 'RSS', ''),
(854, 'RSS', ''),
(855, 'RSS', ''),
(856, 'RSS', ''),
(857, 'RSS', ''),
(858, 'RSS', ''),
(859, 'RSS', ''),
(860, 'RSS', ''),
(861, 'RSS', ''),
(862, 'RSS', ''),
(863, 'RSS', ''),
(864, 'RSS', ''),
(865, 'RSS', ''),
(866, 'RSS', ''),
(867, 'RSS', ''),
(868, 'RSS', ''),
(869, 'RSS', ''),
(870, 'RSS', ''),
(871, 'RSS', ''),
(872, 'RSS', ''),
(873, 'RSS', ''),
(874, 'RSS', ''),
(875, 'RSS', ''),
(876, 'RSS', ''),
(877, 'RSS', ''),
(878, 'RSS', ''),
(879, 'RSS', ''),
(880, 'RSS', ''),
(881, 'convenio_sena', ''),
(882, 'Cedula', ''),
(883, 'RSS', ''),
(884, 'RSS', ''),
(885, 'RSS', ''),
(886, 'RSS', ''),
(887, 'RSS', ''),
(888, 'RSS', ''),
(889, 'Recepción', ''),
(890, 'RSS', ''),
(891, 'RSS', ''),
(892, 'RSS', ''),
(893, 'RSS', ''),
(894, 'RSS', ''),
(895, 'RSS', ''),
(896, 'RSS', ''),
(897, 'RSS', ''),
(898, 'RSS', ''),
(899, 'RSS', ''),
(900, 'RSS', ''),
(901, 'RSS', ''),
(902, 'periodo', ''),
(903, 'RSS', ''),
(904, 'RSS', ''),
(905, 'RSS', ''),
(906, 'RSS', ''),
(907, 'RSS', ''),
(908, 'Recepción', ''),
(909, 'Periodo', ''),
(910, 'RSS', ''),
(911, 'Recepción', ''),
(912, 'Periodo', ''),
(913, 'ayuda_de_materias', ''),
(914, 'materias', ''),
(915, 'Ayuda Evaluaciones', ''),
(916, 'evaluaciones', ''),
(917, 'RSS', ''),
(918, 'Gestionar Evaluaciones', ''),
(919, 'Periodo', ''),
(920, 'RSS', ''),
(921, 'lista_de_evaluaciones', ''),
(922, 'agregar_evaluación', ''),
(923, 'materia', ''),
(924, 'ponderación', ''),
(925, 'ponderacion', ''),
(926, 'gestionar_materias', ''),
(927, 'Periodo', ''),
(928, 'RSS', ''),
(929, 'agregar_materia', ''),
(930, 'Periodo', ''),
(931, 'RSS', ''),
(932, 'Periodo', ''),
(933, 'RSS', ''),
(934, 'Periodo', ''),
(935, 'RSS', ''),
(936, 'ponderacion', ''),
(937, 'Periodo', ''),
(938, 'Periodo', ''),
(939, 'RSS', ''),
(940, 'RSS', ''),
(941, 'Periodo', ''),
(942, 'RSS', ''),
(943, 'convenio_sena', ''),
(944, 'Cedula', ''),
(945, 'Periodo', ''),
(946, 'RSS', ''),
(947, 'ponderacion', ''),
(948, 'Periodo', ''),
(949, 'RSS', ''),
(950, 'Periodo', ''),
(951, 'RSS', ''),
(952, 'ponderacion', ''),
(953, 'Periodo', ''),
(954, 'RSS', ''),
(955, 'Periodo', ''),
(956, 'RSS', ''),
(957, 'ponderacion', ''),
(958, 'Periodo', ''),
(959, 'RSS', ''),
(960, 'ponderacion', ''),
(961, 'Periodo', ''),
(962, 'RSS', ''),
(963, 'ponderacion', ''),
(964, 'Periodo', ''),
(965, 'RSS', ''),
(966, 'ponderacion', ''),
(967, 'Periodo', ''),
(968, 'RSS', ''),
(969, 'ponderacion', ''),
(970, 'Periodo', ''),
(971, 'RSS', ''),
(972, 'ponderacion', ''),
(973, 'Periodo', ''),
(974, 'RSS', ''),
(975, 'ponderacion', ''),
(976, 'Periodo', ''),
(977, 'RSS', ''),
(978, 'ponderacion', ''),
(979, 'Periodo', ''),
(980, 'RSS', ''),
(981, 'ponderacion', ''),
(982, 'Periodo', ''),
(983, 'RSS', ''),
(984, 'ponderacion', ''),
(985, 'Periodo', ''),
(986, 'RSS', ''),
(987, 'ponderacion', ''),
(988, 'Periodo', ''),
(989, 'RSS', ''),
(990, 'ponderacion', ''),
(991, 'Periodo', ''),
(992, 'RSS', ''),
(993, 'ponderacion', ''),
(994, 'Periodo', ''),
(995, 'RSS', ''),
(996, 'ponderacion', ''),
(997, 'Periodo', ''),
(998, 'RSS', ''),
(999, 'ponderacion', ''),
(1000, 'Periodo', ''),
(1001, 'RSS', ''),
(1002, 'ponderacion', ''),
(1003, 'Periodo', ''),
(1004, 'RSS', ''),
(1005, 'ponderacion', ''),
(1006, 'Periodo', ''),
(1007, 'RSS', ''),
(1008, 'ponderacion', ''),
(1009, 'Periodo', ''),
(1010, 'RSS', ''),
(1011, 'ponderacion', ''),
(1012, 'Periodo', ''),
(1013, 'RSS', ''),
(1014, 'ponderacion', ''),
(1015, 'Periodo', ''),
(1016, 'RSS', ''),
(1017, 'ponderacion', ''),
(1018, 'Periodo', ''),
(1019, 'RSS', ''),
(1020, 'ponderacion', ''),
(1021, 'Periodo', ''),
(1022, 'RSS', ''),
(1023, 'ponderacion', ''),
(1024, 'Periodo', ''),
(1025, 'RSS', ''),
(1026, 'ponderacion', ''),
(1027, 'Periodo', ''),
(1028, 'RSS', ''),
(1029, 'ponderacion', ''),
(1030, 'Periodo', ''),
(1031, 'RSS', ''),
(1032, 'ponderacion', ''),
(1033, 'Periodo', ''),
(1034, 'RSS', ''),
(1035, 'ponderacion', ''),
(1036, 'Periodo', ''),
(1037, 'RSS', ''),
(1038, 'ponderacion', ''),
(1039, 'Periodo', ''),
(1040, 'RSS', ''),
(1041, 'ponderacion', ''),
(1042, 'Periodo', ''),
(1043, 'RSS', ''),
(1044, 'ponderacion', ''),
(1045, 'Periodo', ''),
(1046, 'RSS', ''),
(1047, 'ponderacion', ''),
(1048, 'hora', ''),
(1049, 'minuto', ''),
(1050, 'Periodo', ''),
(1051, 'RSS', ''),
(1052, 'Periodo', ''),
(1053, 'RSS', ''),
(1054, 'Periodo', ''),
(1055, 'RSS', ''),
(1056, 'ponderacion', ''),
(1057, 'Periodo', ''),
(1058, 'RSS', ''),
(1059, 'ponderacion', ''),
(1060, 'Periodo', ''),
(1061, 'RSS', ''),
(1062, 'ponderacion', ''),
(1063, 'Periodo', ''),
(1064, 'RSS', ''),
(1065, 'ponderacion', ''),
(1066, 'Periodo', ''),
(1067, 'RSS', ''),
(1068, 'ponderacion', ''),
(1069, 'Periodo', ''),
(1070, 'RSS', ''),
(1071, 'Periodo', ''),
(1072, 'RSS', ''),
(1073, 'ponderacion', ''),
(1074, 'Periodo', ''),
(1075, 'RSS', ''),
(1076, 'ponderacion', ''),
(1077, 'Periodo', ''),
(1078, 'RSS', ''),
(1079, 'ponderacion', ''),
(1080, 'Periodo', ''),
(1081, 'RSS', ''),
(1082, 'ponderacion', ''),
(1083, 'Periodo', ''),
(1084, 'RSS', ''),
(1085, 'ponderacion', ''),
(1086, 'Periodo', ''),
(1087, 'RSS', ''),
(1088, 'ponderacion', ''),
(1089, 'Periodo', ''),
(1090, 'RSS', ''),
(1091, 'ponderacion', ''),
(1092, 'Recepción', ''),
(1093, 'Periodo', ''),
(1094, 'RSS', ''),
(1095, 'Periodo', ''),
(1096, 'RSS', ''),
(1097, 'Periodo', ''),
(1098, 'Notas', ''),
(1099, 'RSS', ''),
(1100, 'Periodo', ''),
(1101, 'RSS', ''),
(1102, 'Periodo', ''),
(1103, 'RSS', ''),
(1104, 'Periodo', ''),
(1105, 'RSS', ''),
(1106, 'Periodo', ''),
(1107, 'RSS', ''),
(1108, 'Periodo', ''),
(1109, 'RSS', ''),
(1110, 'Periodo', ''),
(1111, 'RSS', ''),
(1112, 'Periodo', ''),
(1113, 'RSS', ''),
(1114, 'Periodo', ''),
(1115, 'RSS', ''),
(1116, 'Periodo', ''),
(1117, 'RSS', ''),
(1118, 'Periodo', ''),
(1119, 'RSS', ''),
(1120, 'convenio_sena', ''),
(1121, 'Cedula', ''),
(1122, 'Periodo', ''),
(1123, 'RSS', ''),
(1124, 'Periodo', ''),
(1125, 'RSS', ''),
(1126, 'Periodo', ''),
(1127, 'RSS', ''),
(1128, 'Periodo', ''),
(1129, 'RSS', ''),
(1130, 'Periodo', ''),
(1131, 'RSS', ''),
(1132, 'Periodo', ''),
(1133, 'RSS', ''),
(1134, 'Gestionar Periodos', ''),
(1135, 'Periodo', ''),
(1136, 'RSS', ''),
(1137, 'Lista de Períodos', ''),
(1138, 'Agregar Período', ''),
(1139, 'duration', ''),
(1140, 'Duración', ''),
(1141, 'Periodo', ''),
(1142, 'RSS', ''),
(1143, 'Periodo', ''),
(1144, 'RSS', ''),
(1145, 'Periodo', ''),
(1146, 'RSS', ''),
(1147, 'Periodo', ''),
(1148, 'RSS', ''),
(1149, 'Periodo', ''),
(1150, 'RSS', ''),
(1151, 'Periodo', ''),
(1152, 'RSS', ''),
(1153, 'Periodo', ''),
(1154, 'RSS', ''),
(1155, 'Periodo', ''),
(1156, 'RSS', ''),
(1157, 'Periodo', ''),
(1158, 'RSS', ''),
(1159, 'Periodo', ''),
(1160, 'RSS', ''),
(1161, 'Periodo', ''),
(1162, 'RSS', ''),
(1163, 'Periodo', ''),
(1164, 'RSS', ''),
(1165, 'Periodo', ''),
(1166, 'RSS', ''),
(1167, 'Periodo', ''),
(1168, 'RSS', ''),
(1169, 'Periodo', ''),
(1170, 'RSS', ''),
(1171, 'Periodo', ''),
(1172, 'RSS', ''),
(1173, 'Periodo', ''),
(1174, 'RSS', ''),
(1175, 'Periodo', ''),
(1176, 'RSS', ''),
(1177, 'Periodo', ''),
(1178, 'RSS', ''),
(1179, 'Periodo', ''),
(1180, 'RSS', ''),
(1181, 'Periodo', ''),
(1182, 'RSS', ''),
(1183, 'Periodo', ''),
(1184, 'RSS', ''),
(1185, 'Periodo', ''),
(1186, 'RSS', ''),
(1187, 'Periodo', ''),
(1188, 'RSS', ''),
(1189, 'Periodo', ''),
(1190, 'RSS', ''),
(1191, 'Periodo', ''),
(1192, 'asistencias', ''),
(1193, 'RSS', ''),
(1194, 'Periodo', ''),
(1195, 'RSS', ''),
(1196, 'Periodo', ''),
(1197, 'RSS', ''),
(1198, 'Periodo', ''),
(1199, 'RSS', ''),
(1200, 'Periodo', ''),
(1201, 'RSS', ''),
(1202, 'Periodo', ''),
(1203, 'RSS', ''),
(1204, 'Periodo', ''),
(1205, 'RSS', ''),
(1206, 'Periodo', ''),
(1207, 'RSS', ''),
(1208, 'Periodo', ''),
(1209, 'RSS', ''),
(1210, 'Periodo', ''),
(1211, 'RSS', ''),
(1212, 'Periodo', ''),
(1213, 'RSS', ''),
(1214, 'Periodo', ''),
(1215, 'RSS', ''),
(1216, 'Periodo', ''),
(1217, 'RSS', ''),
(1218, 'Periodo', ''),
(1219, 'RSS', ''),
(1220, 'gestionar_asistencias', ''),
(1221, 'Periodo', ''),
(1222, 'RSS', ''),
(1223, 'Periodo', ''),
(1224, 'RSS', ''),
(1225, 'Periodo', ''),
(1226, 'RSS', ''),
(1227, 'Periodo', ''),
(1228, 'RSS', ''),
(1229, 'ponderacion', ''),
(1230, 'Periodo', ''),
(1231, 'RSS', ''),
(1232, 'Periodo', ''),
(1233, 'RSS', ''),
(1234, 'Periodo', ''),
(1235, 'RSS', ''),
(1236, 'Periodo', ''),
(1237, 'RSS', ''),
(1238, 'Periodo', ''),
(1239, 'RSS', ''),
(1240, 'ponderacion', ''),
(1241, 'Periodo', ''),
(1242, 'RSS', ''),
(1243, 'ponderacion', ''),
(1244, 'Periodo', ''),
(1245, 'RSS', ''),
(1246, 'ponderacion', ''),
(1247, 'Periodo', ''),
(1248, 'RSS', ''),
(1249, 'ponderacion', ''),
(1250, 'Periodo', ''),
(1251, 'RSS', ''),
(1252, 'ponderacion', ''),
(1253, 'Periodo', ''),
(1254, 'RSS', ''),
(1255, 'ponderacion', ''),
(1256, 'Periodo', ''),
(1257, 'RSS', ''),
(1258, 'ponderacion', ''),
(1259, 'Periodo', ''),
(1260, 'RSS', ''),
(1261, 'ponderacion', ''),
(1262, 'Periodo', ''),
(1263, 'RSS', ''),
(1264, 'Periodo', ''),
(1265, 'RSS', ''),
(1266, 'Periodo', ''),
(1267, 'RSS', ''),
(1268, 'Periodo', ''),
(1269, 'RSS', ''),
(1270, 'Periodo', ''),
(1271, 'RSS', ''),
(1272, 'Periodo', ''),
(1273, 'RSS', ''),
(1274, 'Periodo', ''),
(1275, 'RSS', ''),
(1276, 'Periodo', ''),
(1277, 'RSS', ''),
(1278, 'Periodo', ''),
(1279, 'RSS', ''),
(1280, 'Periodo', ''),
(1281, 'RSS', ''),
(1282, 'Periodo', ''),
(1283, 'RSS', ''),
(1284, 'Periodo', ''),
(1285, 'RSS', ''),
(1286, 'Periodo', ''),
(1287, 'RSS', ''),
(1288, 'Periodo', ''),
(1289, 'RSS', ''),
(1290, 'Periodo', ''),
(1291, 'RSS', ''),
(1292, 'Periodo', ''),
(1293, 'RSS', ''),
(1294, 'Periodo', ''),
(1295, 'RSS', ''),
(1296, 'Periodo', ''),
(1297, 'RSS', ''),
(1298, 'Periodo', ''),
(1299, 'RSS', ''),
(1300, 'Periodo', ''),
(1301, 'RSS', ''),
(1302, 'Periodo', ''),
(1303, 'RSS', ''),
(1304, 'Periodo', ''),
(1305, 'RSS', ''),
(1306, 'Periodo', ''),
(1307, 'RSS', ''),
(1308, 'Periodo', ''),
(1309, 'RSS', ''),
(1310, 'Periodo', ''),
(1311, 'RSS', ''),
(1312, 'Periodo', ''),
(1313, 'RSS', ''),
(1314, 'Periodo', ''),
(1315, 'RSS', ''),
(1316, 'Periodo', ''),
(1317, 'RSS', ''),
(1318, 'Periodo', ''),
(1319, 'RSS', ''),
(1320, 'Periodo', ''),
(1321, 'RSS', ''),
(1322, 'Periodo', ''),
(1323, 'RSS', ''),
(1324, 'Periodo', ''),
(1325, 'RSS', ''),
(1326, 'Periodo', ''),
(1327, 'RSS', ''),
(1328, 'Periodo', ''),
(1329, 'RSS', ''),
(1330, 'Periodo', ''),
(1331, 'RSS', ''),
(1332, 'Periodo', ''),
(1333, 'RSS', ''),
(1334, 'Periodo', ''),
(1335, 'RSS', ''),
(1336, 'Periodo', ''),
(1337, 'RSS', ''),
(1338, 'Periodo', ''),
(1339, 'RSS', ''),
(1340, 'Periodo', ''),
(1341, 'RSS', ''),
(1342, 'Periodo', ''),
(1343, 'RSS', ''),
(1344, 'Periodo', ''),
(1345, 'RSS', ''),
(1346, 'Periodo', ''),
(1347, 'RSS', ''),
(1348, 'Periodo', ''),
(1349, 'RSS', ''),
(1350, 'Periodo', ''),
(1351, 'RSS', ''),
(1352, 'Periodo', ''),
(1353, 'RSS', ''),
(1354, 'Periodo', ''),
(1355, 'RSS', ''),
(1356, 'Periodo', ''),
(1357, 'RSS', ''),
(1358, 'Periodo', ''),
(1359, 'RSS', ''),
(1360, 'Periodo', ''),
(1361, 'RSS', ''),
(1362, 'Periodo', ''),
(1363, 'RSS', ''),
(1364, 'Periodo', ''),
(1365, 'RSS', ''),
(1366, 'Periodo', ''),
(1367, 'RSS', ''),
(1368, 'Periodo', ''),
(1369, 'RSS', ''),
(1370, 'Periodo', ''),
(1371, 'RSS', ''),
(1372, 'Periodo', ''),
(1373, 'RSS', ''),
(1374, 'Periodo', ''),
(1375, 'RSS', ''),
(1376, 'Periodo', ''),
(1377, 'RSS', ''),
(1378, 'Periodo', ''),
(1379, 'RSS', ''),
(1380, 'Periodo', ''),
(1381, 'RSS', ''),
(1382, 'Periodo', ''),
(1383, 'RSS', ''),
(1384, 'Periodo', ''),
(1385, 'RSS', ''),
(1386, 'Periodo', ''),
(1387, 'Periodo', ''),
(1388, 'RSS', ''),
(1389, 'RSS', ''),
(1390, 'Periodo', ''),
(1391, 'RSS', ''),
(1392, 'Periodo', ''),
(1393, 'RSS', ''),
(1394, 'Periodo', ''),
(1395, 'RSS', ''),
(1396, 'editar_curso', ''),
(1397, 'Periodo', ''),
(1398, 'RSS', ''),
(1399, 'Periodo', ''),
(1400, 'RSS', ''),
(1401, 'Recepción', ''),
(1402, 'Periodo', ''),
(1403, 'RSS', ''),
(1404, 'Periodo', ''),
(1405, 'RSS', ''),
(1406, 'ponderacion', ''),
(1407, 'Periodo', ''),
(1408, 'RSS', ''),
(1409, 'lista_de_asistencias', ''),
(1410, 'Periodo', ''),
(1411, 'RSS', ''),
(1412, 'Periodo', ''),
(1413, 'RSS', ''),
(1414, 'Periodo', ''),
(1415, 'RSS', ''),
(1416, 'Periodo', ''),
(1417, 'RSS', ''),
(1418, 'Periodo', ''),
(1419, 'RSS', ''),
(1420, 'Periodo', ''),
(1421, 'RSS', ''),
(1422, 'Periodo', ''),
(1423, 'RSS', ''),
(1424, 'Periodo', ''),
(1425, 'RSS', ''),
(1426, 'Periodo', ''),
(1427, 'RSS', ''),
(1428, 'Periodo', ''),
(1429, 'RSS', ''),
(1430, 'Periodo', ''),
(1431, 'Periodo', ''),
(1432, 'RSS', ''),
(1433, 'RSS', ''),
(1434, 'convenio_sena', ''),
(1435, 'convenio_sena', ''),
(1436, 'Cedula', ''),
(1437, 'Cedula', ''),
(1438, 'Periodo', ''),
(1439, 'RSS', ''),
(1440, 'Periodo', ''),
(1441, 'RSS', ''),
(1442, 'convenio_sena', ''),
(1443, 'Cedula', ''),
(1444, 'Periodo', ''),
(1445, 'RSS', ''),
(1446, 'Periodo', ''),
(1447, 'RSS', ''),
(1448, 'convenio_sena', ''),
(1449, 'Cedula', ''),
(1450, 'Periodo', ''),
(1451, 'RSS', ''),
(1452, 'convenio_sena', ''),
(1453, 'Cedula', ''),
(1454, 'Periodo', ''),
(1455, 'RSS', ''),
(1456, 'Periodo', ''),
(1457, 'RSS', ''),
(1458, 'convenio_sena', ''),
(1459, 'Cedula', ''),
(1460, 'Periodo', ''),
(1461, 'RSS', ''),
(1462, 'Periodo', ''),
(1463, 'RSS', ''),
(1464, 'Periodo', ''),
(1465, 'RSS', ''),
(1466, 'Periodo', ''),
(1467, 'RSS', ''),
(1468, 'Periodo', ''),
(1469, 'RSS', ''),
(1470, 'Periodo', ''),
(1471, 'RSS', ''),
(1472, 'Periodo', ''),
(1473, 'RSS', ''),
(1474, 'Periodo', ''),
(1475, 'RSS', ''),
(1476, 'Periodo', ''),
(1477, 'RSS', ''),
(1478, 'Periodo', ''),
(1479, 'RSS', ''),
(1480, 'Periodo', ''),
(1481, 'RSS', ''),
(1482, 'Periodo', ''),
(1483, 'RSS', ''),
(1484, 'Periodo', ''),
(1485, 'Periodo', ''),
(1486, 'RSS', ''),
(1487, 'RSS', ''),
(1488, 'convenio_sena', ''),
(1489, 'convenio_sena', ''),
(1490, 'Cedula', ''),
(1491, 'Cedula', ''),
(1492, 'Periodo', ''),
(1493, 'RSS', ''),
(1494, 'Periodo', ''),
(1495, 'RSS', ''),
(1496, 'Periodo', ''),
(1497, 'RSS', ''),
(1498, 'Periodo', ''),
(1499, 'RSS', ''),
(1500, 'Periodo', ''),
(1501, 'RSS', ''),
(1502, 'Periodo', ''),
(1503, 'RSS', ''),
(1504, 'Periodo', ''),
(1505, 'RSS', ''),
(1506, 'Periodo', ''),
(1507, 'RSS', ''),
(1508, 'Periodo', ''),
(1509, 'RSS', ''),
(1510, 'Periodo', ''),
(1511, 'RSS', ''),
(1512, 'Periodo', ''),
(1513, 'RSS', ''),
(1514, 'Periodo', ''),
(1515, 'RSS', ''),
(1516, 'Periodo', ''),
(1517, 'RSS', ''),
(1518, 'Periodo', ''),
(1519, 'RSS', ''),
(1520, 'Periodo', ''),
(1521, 'RSS', ''),
(1522, 'Periodo', ''),
(1523, 'RSS', ''),
(1524, 'Periodo', ''),
(1525, 'RSS', ''),
(1526, 'Periodo', ''),
(1527, 'RSS', ''),
(1528, 'Periodo', ''),
(1529, 'RSS', ''),
(1530, 'Periodo', ''),
(1531, 'RSS', ''),
(1532, 'Periodo', ''),
(1533, 'RSS', ''),
(1534, 'Periodo', ''),
(1535, 'RSS', ''),
(1536, 'Periodo', ''),
(1537, 'RSS', ''),
(1538, 'Periodo', ''),
(1539, 'RSS', ''),
(1540, 'Periodo', ''),
(1541, 'facturacion', ''),
(1542, 'RSS', ''),
(1543, 'manejo_de_usuarios', ''),
(1544, 'Periodo', ''),
(1545, 'RSS', ''),
(1546, 'Periodo', ''),
(1547, 'RSS', ''),
(1548, 'Periodo', ''),
(1549, 'RSS', ''),
(1550, 'Periodo', ''),
(1551, 'RSS', ''),
(1552, 'Recepción', ''),
(1553, 'Periodo', ''),
(1554, 'RSS', ''),
(1555, 'Periodo', ''),
(1556, 'RSS', '');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE IF NOT EXISTS `mark` (
`mark_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark_obtained` int(11) NOT NULL DEFAULT '0',
  `mark_total` int(11) NOT NULL DEFAULT '100',
  `attendance` int(11) NOT NULL DEFAULT '0',
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `municipio`
--

CREATE TABLE IF NOT EXISTS `municipio` (
`id` int(11) NOT NULL,
  `departamento` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1077 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `municipio`
--

INSERT INTO `municipio` (`id`, `departamento`, `nombre`) VALUES
(1, 14, 'Santafe de Bogota'),
(2, 1, 'Puerto Nari'),
(3, 1, 'Leticia'),
(4, 2, 'Medellin'),
(5, 2, 'Abejorral'),
(6, 2, 'Abriaqui'),
(7, 2, 'Alejandria'),
(8, 2, 'Amaga'),
(9, 2, 'Amalfi'),
(10, 2, 'Andes'),
(11, 2, 'Angelopolis'),
(12, 2, 'Angostura'),
(13, 2, 'Anori'),
(14, 2, 'Antioquia'),
(15, 2, 'Anza'),
(16, 2, 'Apartado'),
(17, 2, 'Arboletes'),
(18, 2, 'Argelia'),
(19, 2, 'Armenia'),
(20, 2, 'Barbosa'),
(21, 2, 'Belmira'),
(22, 2, 'Bello'),
(23, 2, 'Betania'),
(24, 2, 'Betulia'),
(25, 2, 'Bolivar'),
(26, 2, 'Brise'),
(27, 2, 'Buritica'),
(28, 2, 'Caceres'),
(29, 2, 'Caicedo'),
(30, 2, 'Caldas'),
(31, 2, 'Campamento'),
(32, 2, 'Ca'),
(33, 2, 'Caracoli'),
(34, 2, 'Caramanta'),
(35, 2, 'Carepa'),
(36, 2, 'Carmen de Viboral'),
(37, 2, 'Carolina'),
(38, 2, 'Caucasia'),
(39, 2, 'Chigorodo'),
(40, 2, 'Cisneros'),
(41, 2, 'Cocorna'),
(42, 2, 'Concepcion'),
(43, 2, 'Concordia'),
(44, 2, 'Copacabana'),
(45, 2, 'Dabeiba'),
(46, 2, 'Don Matias'),
(47, 2, 'Ebejico'),
(48, 2, 'El Bagre'),
(49, 2, 'Entrerrios'),
(50, 2, 'Envigado'),
(51, 2, 'Fredonia'),
(52, 2, 'Frontino'),
(53, 2, 'Giraldo'),
(54, 2, 'Girardota'),
(55, 2, 'Gomez Plata'),
(56, 2, 'Granada'),
(57, 2, 'Guadalupe'),
(58, 2, 'Guarne'),
(59, 2, 'Guatape'),
(60, 2, 'Heliconia'),
(61, 2, 'Hispania'),
(62, 2, 'Itag'),
(63, 2, 'Ituango'),
(64, 2, 'Jardin'),
(65, 2, 'Jerico'),
(66, 2, 'La Ceja'),
(67, 2, 'La Estrella'),
(68, 2, 'La Pintada'),
(69, 2, 'La Union'),
(70, 2, 'Liborina'),
(71, 2, 'Maceo'),
(72, 2, 'Marinilla'),
(73, 2, 'Montebello'),
(74, 2, 'Murindo'),
(75, 2, 'Mutata'),
(76, 2, 'Nari'),
(77, 2, 'Necocli'),
(78, 2, 'Nechi'),
(79, 2, 'Olaya'),
(80, 2, 'Pe'),
(81, 2, 'Peque'),
(82, 2, 'Pueblorrico'),
(83, 2, 'Puerto Berrio'),
(84, 2, 'Puerto Nare'),
(85, 2, 'Puerto Triunfo'),
(86, 2, 'Remedios'),
(87, 2, 'Retiro'),
(88, 2, 'Rionegro'),
(89, 2, 'Sabanalarga'),
(90, 2, 'Sabaneta'),
(91, 2, 'Salgar'),
(92, 2, 'San Andres'),
(93, 2, 'San Carlos'),
(94, 2, 'San francisco'),
(95, 2, 'San Jeronimo'),
(96, 2, 'San Jose de Monta'),
(97, 2, 'San Juan de Uraba'),
(98, 2, 'San Luis'),
(99, 2, 'San Pedro'),
(100, 2, 'San Pedro de Uraba'),
(101, 2, 'San Rafael'),
(102, 2, 'San Roque'),
(103, 2, 'San Vicente'),
(104, 2, 'Santa Barbara'),
(105, 2, 'Santa Rosa de Osos'),
(106, 2, 'Santo Domingo'),
(107, 2, 'Santuario'),
(108, 2, 'Segovia'),
(109, 2, 'Sonson'),
(110, 2, 'Sopetran'),
(111, 2, 'Tamesis'),
(112, 2, 'Taraza'),
(113, 2, 'Tarso'),
(114, 2, 'Titiribi'),
(115, 2, 'Toledo'),
(116, 2, 'Turbo'),
(117, 2, 'Uramita'),
(118, 2, 'Urrao'),
(119, 2, 'Valdivia'),
(120, 2, 'Valparaiso'),
(121, 2, 'Vegachi'),
(122, 2, 'Venecia'),
(123, 2, 'Vigia del Fuerte'),
(124, 2, 'Yali'),
(125, 2, 'Yarumal'),
(126, 2, 'Yolombo'),
(127, 2, 'Yondo (Casabe)'),
(128, 2, 'Zaragoza'),
(129, 3, 'Arauca'),
(130, 3, 'Arauquita'),
(131, 3, 'Cravo Norte'),
(132, 3, 'Fortul'),
(133, 3, 'Puerto Rondon'),
(134, 3, 'Fortul'),
(135, 3, 'Puerto Rondon'),
(136, 3, 'Saravena'),
(137, 3, 'Tame'),
(138, 4, 'Barranquilla'),
(139, 4, 'Baranoa'),
(140, 4, 'Campo de la Cruz'),
(141, 4, 'Candelaria'),
(142, 4, 'Galapa'),
(143, 4, 'Juan de Acosta'),
(144, 4, 'Luruaco'),
(145, 4, 'Malambo'),
(146, 4, 'Manati'),
(147, 4, 'Palmar de Varela'),
(148, 4, 'Piojo'),
(149, 4, 'Polonuevo'),
(150, 4, 'Ponedera'),
(151, 4, 'Puerto Colombia'),
(152, 4, 'Repelon'),
(153, 4, 'Sabanagrande'),
(154, 4, 'Sabanalarga'),
(155, 4, 'Santa Lucia'),
(156, 4, 'Santo Tomas'),
(157, 4, 'Soledad'),
(158, 4, 'Suan'),
(159, 4, 'Tubara'),
(160, 4, 'Usiacuri'),
(161, 4, 'Cartagena'),
(162, 4, 'Achi'),
(163, 4, 'Altos del Rosario'),
(164, 4, 'Arenal'),
(165, 4, 'Arjona'),
(166, 4, 'Arroyohondo'),
(167, 4, 'Barranco de Loba'),
(168, 4, 'Calamar'),
(169, 4, 'Cantagallo'),
(170, 4, 'Cicuto'),
(171, 4, 'Cordoba'),
(172, 4, 'Clemencia'),
(173, 4, 'El Carmen de Bolivar'),
(174, 4, 'El Guamo'),
(175, 4, 'El Pe'),
(176, 4, 'Hatillo de Loba'),
(177, 4, 'Magangue'),
(178, 4, 'Mahates'),
(179, 4, 'Margarita'),
(180, 4, 'Maria la Baja'),
(181, 4, 'Montecristo'),
(182, 4, 'Mompos'),
(183, 4, 'Morales'),
(184, 4, 'Pinillos'),
(185, 4, 'Regidor'),
(186, 4, 'Rio Viejo'),
(187, 4, 'San Cristobal'),
(188, 4, 'San Estanislao'),
(189, 4, 'San Fernando'),
(190, 4, 'San Jacinto'),
(191, 4, 'San Jacinto del Cauca'),
(192, 4, 'San Juan Nepomuceno'),
(193, 4, 'San Martin de Loba'),
(194, 4, 'San Pablo'),
(195, 4, 'Santa Catalina'),
(196, 4, 'Santa Rosa'),
(197, 4, 'Santa Rosa del Sur'),
(198, 4, 'Simiti'),
(199, 4, 'Soplaviento'),
(200, 4, 'Talaigua Nuevo'),
(201, 4, 'Tiquisio (Puerto Rico)'),
(202, 4, 'Turbaco'),
(203, 4, 'Turbana'),
(204, 4, 'Villanueva'),
(205, 4, 'Zambrano'),
(206, 6, 'Tunja'),
(207, 6, 'Almeida'),
(208, 6, 'Aquitania'),
(209, 6, 'Arcabuco'),
(210, 6, 'Belen'),
(211, 6, 'Berbeo'),
(212, 6, 'Beteitiva'),
(213, 6, 'Boavita'),
(214, 6, 'Boyaca'),
(215, 6, 'Brise'),
(216, 6, 'Buenavista'),
(217, 6, 'Busbanza'),
(218, 6, 'Caldas'),
(219, 6, 'Campohermoso'),
(220, 6, 'Cerinza'),
(221, 6, 'Chinavita'),
(222, 6, 'Chiquinquira'),
(223, 6, 'Chiscas'),
(224, 6, 'Chita'),
(225, 6, 'Chitaranque'),
(226, 6, 'Chivata'),
(227, 6, 'Cienaga'),
(228, 6, 'Combita'),
(229, 6, 'Coper'),
(230, 6, 'Corrales'),
(231, 6, 'Covarachia'),
(232, 6, 'Cubar'),
(233, 6, 'Cucaita'),
(234, 6, 'Cuitiva'),
(235, 6, 'Chiquiza'),
(236, 6, 'Chivor'),
(237, 6, 'Duitama'),
(238, 6, 'El Cocuy'),
(239, 6, 'El Espino'),
(240, 6, 'Firavitoba'),
(241, 6, 'Floresta'),
(242, 6, 'Gachantiva'),
(243, 6, 'Gameza'),
(244, 6, 'Garagoa'),
(245, 6, 'Guacamayas'),
(246, 6, 'Guateque'),
(247, 6, 'Guayata'),
(248, 6, 'Guican'),
(249, 6, 'Iza'),
(250, 6, 'Jenesano'),
(251, 6, 'Jerico'),
(252, 6, 'Labranzagrande'),
(253, 6, 'La Capilla'),
(254, 6, 'La Victoria'),
(255, 6, 'La Ubita'),
(256, 6, 'Villa de Leyva'),
(257, 6, 'Macanal'),
(258, 6, 'Maripi'),
(259, 6, 'Miraflores'),
(260, 6, 'Mongua'),
(261, 6, 'Mongui'),
(262, 6, 'Moniquira'),
(263, 6, 'Motavita'),
(264, 6, 'Muzo'),
(265, 6, 'Nobsa'),
(266, 6, 'Nuevo Colon'),
(267, 6, 'Oicata'),
(268, 6, 'Otanche'),
(269, 6, 'Pachavita'),
(270, 6, 'Paez'),
(271, 6, 'Paipa'),
(272, 6, 'Pajarito'),
(273, 6, 'Panqueba'),
(274, 6, 'Pauna'),
(275, 6, 'Paya'),
(276, 6, 'Paz de Rio'),
(277, 6, 'Pesca'),
(278, 6, 'Pisva'),
(279, 6, 'Puerto Boyaca'),
(280, 6, 'Quipama'),
(281, 6, 'Ramiquiri'),
(282, 6, 'Raquira'),
(283, 6, 'Rondon'),
(284, 6, 'Saboya'),
(285, 6, 'Sachica'),
(286, 6, 'Samaca'),
(287, 6, 'San Eduardo'),
(288, 6, 'San Jose de Pare'),
(289, 6, 'San Luis de Gaceno'),
(290, 6, 'San Mateo'),
(291, 6, 'San Miguel de Sema'),
(292, 6, 'San Pablo de Borbur'),
(293, 6, 'Santana'),
(294, 6, 'Santa Maria'),
(295, 6, 'Santa Rosa de Viterbo'),
(296, 6, 'Santa Sofia'),
(297, 6, 'Sativanorte'),
(298, 6, 'Sativasur'),
(299, 6, 'Siachoque'),
(300, 6, 'Soata'),
(301, 6, 'Socota'),
(302, 6, 'Socha'),
(303, 6, 'Sogamoso'),
(304, 6, 'Somondoco'),
(305, 6, 'Sora'),
(306, 6, 'Sotaquira'),
(307, 6, 'Soraca'),
(308, 6, 'Susacon'),
(309, 6, 'Sutamarchan'),
(310, 6, 'Sutatenza'),
(311, 6, 'Tasco'),
(312, 6, 'Tenza'),
(313, 6, 'Tibana'),
(314, 6, 'Tibasosa'),
(315, 6, 'Tinjaca'),
(316, 6, 'Tipacoque'),
(317, 6, 'Toca'),
(318, 6, 'Togui'),
(319, 6, 'Topaga'),
(320, 6, 'Tota'),
(321, 6, 'Tunungua'),
(322, 6, 'Turmeque'),
(323, 6, 'Tuta'),
(324, 6, 'Tutaza'),
(325, 6, 'umbita'),
(326, 6, 'Ventaquemada'),
(327, 6, 'Viracacha'),
(328, 6, 'Zetaquira'),
(329, 7, 'Manizales'),
(330, 7, 'Aguadas'),
(331, 7, 'Anserma'),
(332, 7, 'Aranzazu'),
(333, 7, 'Belalcazar'),
(334, 7, 'Chinchina'),
(335, 7, 'Filadelfia'),
(336, 7, 'La Dorada'),
(337, 7, 'La Merced'),
(338, 7, 'Manzanares'),
(339, 7, 'Marmato'),
(340, 7, 'Marquetalia'),
(341, 7, 'Marulanda'),
(342, 7, 'Neira'),
(343, 7, 'Pacora'),
(344, 7, 'Palestina'),
(345, 7, 'Pensilvania'),
(346, 7, 'Riosucio'),
(347, 7, 'Risaralda'),
(348, 7, 'Salamina'),
(349, 7, 'Samana'),
(350, 7, 'San Jose'),
(351, 7, 'Supia'),
(352, 7, 'Victoria'),
(353, 7, 'Villamaria'),
(354, 7, 'Viterbo'),
(355, 8, 'Florencia'),
(356, 8, 'Albania'),
(357, 8, 'Belen de los Andaquies'),
(358, 8, 'Cartagena del Chaira'),
(359, 8, 'Curillo'),
(360, 8, 'El Doncello'),
(361, 8, 'El Paujil'),
(362, 8, 'La Monta'),
(363, 8, 'Milan'),
(364, 8, 'Morelia'),
(365, 8, 'Puerto Rico'),
(366, 8, 'San Jose del Fragua'),
(367, 8, 'San Vicente del Caguan'),
(368, 8, 'Solano'),
(369, 8, 'Solita'),
(370, 8, 'Valparaiso'),
(371, 9, 'Yopal'),
(372, 9, 'Aguazul'),
(373, 9, 'Chameza'),
(374, 9, 'Hato Corozal'),
(375, 9, 'La Salina'),
(376, 9, 'Mani'),
(377, 9, 'Monterrey'),
(378, 9, 'Nunchia'),
(379, 9, 'Orocue'),
(380, 9, 'Paz de Ariporo'),
(381, 9, 'Pore'),
(382, 9, 'Recetor'),
(383, 9, 'Sabalarga'),
(384, 9, 'Sacama'),
(385, 9, 'San Luis de Palenque'),
(386, 9, 'Tamara'),
(387, 9, 'Tauramena'),
(388, 9, 'Trinidad'),
(389, 9, 'Villanueva'),
(390, 10, 'Popayan'),
(391, 10, 'Almaguer'),
(392, 10, 'Argelia'),
(393, 10, 'Balboa'),
(394, 10, 'Bolivar'),
(395, 10, 'Buenos Aires'),
(396, 10, 'Cajibio'),
(397, 10, 'Caldono'),
(398, 10, 'Caloto'),
(399, 10, 'Corinto'),
(400, 10, 'El Tambo'),
(401, 10, 'Florencia'),
(402, 10, 'Guapi'),
(403, 10, 'Inza'),
(404, 10, 'Jambalo'),
(405, 10, 'La Sierra'),
(406, 10, 'La Vega'),
(407, 10, 'Lopez (Micay)'),
(408, 10, 'Mercaderes'),
(409, 10, 'Miranda'),
(410, 10, 'Morales'),
(411, 10, 'Padilla'),
(412, 10, 'Paez (Belalcazar)'),
(413, 10, 'Patia (El Bordo)'),
(414, 10, 'Piamonte'),
(415, 10, 'Piendamo'),
(416, 10, 'Puerto Tejada'),
(417, 10, 'Purace (Coconuco)'),
(418, 10, 'Rosas'),
(419, 10, 'San Sebastian'),
(420, 10, 'Santander de Quilichao'),
(421, 10, 'Santa Rosa'),
(422, 10, 'Silvia'),
(423, 10, 'Sotara (Paispamba)'),
(424, 10, 'Suarez'),
(425, 10, 'Timbio'),
(426, 10, 'Timbiqui'),
(427, 10, 'Toribio'),
(428, 10, 'Totoro'),
(429, 11, 'Valledupar'),
(430, 11, 'Aguachica'),
(431, 11, 'Agustin Codazzi'),
(432, 11, 'Astrea'),
(433, 11, 'Becerril'),
(434, 11, 'Bosconia'),
(435, 11, 'Chimichagua'),
(436, 11, 'Chiriguana'),
(437, 11, 'Curumani'),
(438, 11, 'El Copey'),
(439, 11, 'El Paso'),
(440, 11, 'Gamarra'),
(441, 11, 'Gonzalez'),
(442, 11, 'La Gloria'),
(443, 11, 'La Jagua de Ibirico'),
(444, 11, 'Manaure Balcon Cesar'),
(445, 11, 'Pailitas'),
(446, 11, 'Pelaya'),
(447, 11, 'Pueblo Bello'),
(448, 11, 'Rio de Oro'),
(449, 11, 'La Paz (Robles)'),
(450, 11, 'San Alberto'),
(451, 11, 'San Diego'),
(452, 11, 'San Martin'),
(453, 11, 'Tamalameque'),
(454, 13, 'Monteria'),
(455, 13, 'Ayapel'),
(456, 13, 'Buenavista'),
(457, 13, 'Canalete'),
(458, 13, 'Cerete'),
(459, 13, 'Chima'),
(460, 13, 'Chinu'),
(461, 13, 'Cienaga de Oro'),
(462, 13, 'Cotorra'),
(463, 13, 'La Apartada (Frontera)'),
(464, 13, 'Lorica'),
(465, 13, 'Los Cordobas'),
(466, 13, 'Momil'),
(467, 13, 'Montelibano'),
(468, 13, 'Monitos'),
(469, 13, 'Planeta Rica'),
(470, 13, 'Pueblo Nuevo'),
(471, 13, 'Puerto Escondido'),
(472, 13, 'Puerto Libertador'),
(473, 13, 'Purisima'),
(474, 13, 'Sahagun'),
(475, 13, 'San Andres Sotavento'),
(476, 13, 'San Antero'),
(477, 13, 'San Bernardo del Viento'),
(478, 13, 'San Carlos'),
(479, 13, 'San Pelayo'),
(480, 13, 'Tierralta'),
(481, 13, 'Valencia'),
(482, 14, 'Agua de Dios'),
(483, 14, 'Alban'),
(484, 14, 'Anapoima'),
(485, 14, 'Anolaima'),
(486, 14, 'Arbelaez'),
(487, 14, 'Beltran'),
(488, 14, 'Bituima'),
(489, 14, 'Bojaca'),
(490, 14, 'Cabrera'),
(491, 14, 'Cachipay'),
(492, 14, 'Cajica'),
(493, 14, 'Caparrapi'),
(494, 14, 'Caqueza'),
(495, 14, 'Carmen de Carupa'),
(496, 14, 'Chaguani'),
(497, 14, 'Chia'),
(498, 14, 'Chipaque'),
(499, 14, 'Choachi'),
(500, 14, 'Choconta'),
(501, 14, 'Cogua'),
(502, 14, 'Cota'),
(503, 14, 'Cucunuba'),
(504, 14, 'El Colegio'),
(505, 14, 'El Pe'),
(506, 14, 'El Rosal'),
(507, 14, 'Facatativa'),
(508, 14, 'Fomeque'),
(509, 14, 'Fosca'),
(510, 14, 'Funza'),
(511, 14, 'Fuquene'),
(512, 14, 'Fusagasuga'),
(513, 14, 'Gachala'),
(514, 14, 'Gachancipa'),
(515, 14, 'Gacheta'),
(516, 14, 'Gama'),
(517, 14, 'Girardot'),
(518, 14, 'Granada'),
(519, 14, 'Guacheta'),
(520, 14, 'Guaduas'),
(521, 14, 'Guasca'),
(522, 14, 'Guataqui'),
(523, 14, 'Guatavita'),
(524, 14, 'Guayabal de Siquima'),
(525, 14, 'Guayabetal'),
(526, 14, 'Gutierrez'),
(527, 14, 'Jerusalen'),
(528, 14, 'Junin'),
(529, 14, 'La Calera'),
(530, 14, 'La Mesa'),
(531, 14, 'La Palma'),
(532, 14, 'La Pe'),
(533, 14, 'La Vega'),
(534, 14, 'Lenguazaque'),
(535, 14, 'Macheta'),
(536, 14, 'Madrid'),
(537, 14, 'Manta'),
(538, 14, 'Medina'),
(539, 14, 'Mosquera'),
(540, 14, 'Nari'),
(541, 14, 'Nemocon'),
(542, 14, 'Nilo'),
(543, 14, 'Nimaima'),
(544, 14, 'Nocaima'),
(545, 14, 'Venecia (Ospina Perez)'),
(546, 14, 'Pacho'),
(547, 14, 'Paime'),
(548, 14, 'Pandi'),
(549, 14, 'Paratebueno'),
(550, 14, 'Pasca'),
(551, 14, 'Puerto Salgar'),
(552, 14, 'Puli'),
(553, 14, 'Quebradanegra'),
(554, 14, 'Quetame'),
(555, 14, 'Quipile'),
(556, 14, 'Rafael'),
(557, 14, 'Ricaurte'),
(558, 14, 'San Antonio de Tequendama'),
(559, 14, 'San Bernardo'),
(560, 14, 'San Cayetano'),
(561, 14, 'San Francisco'),
(562, 14, 'San Juan de Rioseco'),
(563, 14, 'Sasaima'),
(564, 14, 'Sesquile'),
(565, 14, 'Sibate'),
(566, 14, 'Silvania'),
(567, 14, 'Simijaca'),
(568, 14, 'Soacha'),
(569, 14, 'Sopo'),
(570, 14, 'Subachoque'),
(571, 14, 'Suesca'),
(572, 14, 'Supata'),
(573, 14, 'Susa'),
(574, 14, 'Sutatausa'),
(575, 14, 'Tabio'),
(576, 14, 'Tausa'),
(577, 14, 'Tena'),
(578, 14, 'Tenjo'),
(579, 14, 'Tibacuy'),
(580, 14, 'Tibirita'),
(581, 14, 'Tocaima'),
(582, 14, 'Tocancipa'),
(583, 14, 'Topaipi'),
(584, 14, 'Ubala'),
(585, 14, 'Ubaque'),
(586, 14, 'Ubate'),
(587, 14, 'Une'),
(588, 14, 'utica'),
(589, 14, 'Vergara'),
(590, 14, 'Viani'),
(591, 14, 'Villagomez'),
(592, 14, 'Villapinzon'),
(593, 14, 'Villeta'),
(594, 14, 'Viota'),
(595, 14, 'Yacopi'),
(596, 14, 'Zipacon'),
(597, 14, 'Zipaquira'),
(598, 12, 'Quibdo'),
(599, 12, 'Acandi'),
(600, 12, 'Alto Baudo (Pie de Pato)'),
(601, 12, 'Atrato (Yuto)'),
(602, 12, 'Bagado'),
(603, 12, 'Bahia Solano (Mutis)'),
(604, 12, 'Bajo Baudo (Pizarro)'),
(605, 12, 'Bojaya (Bellavista)'),
(606, 12, 'Canton de San Pablo'),
(607, 12, 'Condoto'),
(608, 12, 'El Carmen'),
(609, 12, 'El Litoral de San Juan'),
(610, 12, 'Itsmina'),
(611, 12, 'Jurado'),
(612, 12, 'Lloro'),
(613, 12, 'Novita'),
(614, 12, 'Nuqui'),
(615, 12, 'Riosucio'),
(616, 12, 'San Jose del Palmar'),
(617, 12, 'Sipi'),
(618, 12, 'Tado'),
(619, 12, 'Unguia'),
(620, 15, 'Puerto Inirida'),
(621, 16, 'San Jose del Guaviare'),
(622, 16, 'Calamar'),
(623, 16, 'El Retorno'),
(624, 16, 'Miraflores'),
(625, 17, 'Neiva'),
(626, 17, 'Acevedo'),
(627, 17, 'Agrado'),
(628, 17, 'Aipe'),
(629, 17, 'Algeciras'),
(630, 17, 'Altamira'),
(631, 17, 'Baraya'),
(632, 17, 'Campoalegre'),
(633, 17, 'Colombia'),
(634, 17, 'Elias'),
(635, 17, 'Garzon'),
(636, 17, 'Gigante'),
(637, 17, 'Guadalupe'),
(638, 17, 'Hobo'),
(639, 17, 'Iquira'),
(640, 17, 'Isnos'),
(641, 17, 'La Argentina'),
(642, 17, 'La Plata'),
(643, 17, 'Nataga'),
(644, 17, 'Oporapa'),
(645, 17, 'Paicol'),
(646, 17, 'Palermo'),
(647, 17, 'Palestina'),
(648, 17, 'Pital'),
(649, 17, 'Pitalito'),
(650, 17, 'Rivera'),
(651, 17, 'Saladoblanco'),
(652, 17, 'San Agustin'),
(653, 17, 'Santa Maria'),
(654, 17, 'Suaza'),
(655, 17, 'Tarqui'),
(656, 17, 'Tesalia'),
(657, 17, 'Tello'),
(658, 17, 'Teruel'),
(659, 17, 'Timana'),
(660, 17, 'Villavieja'),
(661, 17, 'Yaguara'),
(662, 18, 'Riohacha'),
(663, 18, 'Barrancas'),
(664, 18, 'Dibulla'),
(665, 18, 'Distraccion'),
(666, 18, 'El Molino'),
(667, 18, 'Fonseca'),
(668, 18, 'Hatonuevo'),
(669, 18, 'Maicao'),
(670, 18, 'Manaure'),
(671, 18, 'San Juan del Cesar'),
(672, 18, 'Uribia'),
(673, 18, 'Urumita'),
(674, 18, 'Villanueva'),
(675, 19, 'Santa Marta'),
(676, 19, 'Aracataca'),
(677, 19, 'Ariguani (El Dificil)'),
(678, 19, 'Cerro San Antonio'),
(679, 19, 'Chivolo'),
(680, 19, 'Cienaga'),
(681, 19, 'El Banco'),
(682, 19, 'El Pi'),
(683, 19, 'El Reten'),
(684, 19, 'Fundacion'),
(685, 19, 'Guamal'),
(686, 19, 'Pedraza'),
(687, 19, 'Piji'),
(688, 19, 'Pivijay'),
(689, 19, 'Plato'),
(690, 19, 'Publoviejo'),
(691, 19, 'Remolino'),
(692, 19, 'Salamina'),
(693, 19, 'San Sebastian de Buuenavista'),
(694, 19, 'San Zenon'),
(695, 19, 'Santa Ana'),
(696, 19, 'Sitionuevo'),
(697, 19, 'Tenerife'),
(698, 20, 'Villavicencio'),
(699, 20, 'Acacias'),
(700, 20, 'Barranca de Upia'),
(701, 20, 'Cabuyaro'),
(702, 20, 'Castilla la Nueva'),
(703, 20, 'Cubarral'),
(704, 20, 'Cumaral'),
(705, 20, 'El Calvario'),
(706, 20, 'El Castillo'),
(707, 20, 'El Dorado'),
(708, 20, 'Fuente de Oro'),
(709, 20, 'Granada'),
(710, 20, 'Guamal'),
(711, 20, 'Mapiripan'),
(712, 20, 'Mesetas'),
(713, 20, 'La Macarena'),
(714, 20, 'La Uribe'),
(715, 20, 'Lejanias'),
(716, 20, 'Puerto Concordia'),
(717, 20, 'Puerto Gaitan'),
(718, 20, 'Puerto Lopez'),
(719, 20, 'Puerto Lleras'),
(720, 20, 'Puerto Rico'),
(721, 20, 'Restrepo'),
(722, 20, 'San Carlos de Guaroa'),
(723, 20, 'San Juan de Arama'),
(724, 20, 'San Juanito'),
(725, 20, 'San Martin'),
(726, 20, 'Vistahermosa'),
(727, 21, 'Pasto'),
(728, 21, 'Alban (San Jose)'),
(729, 21, 'Aldana'),
(730, 21, 'Ancuya'),
(731, 21, 'Arboleda (Berruecos)'),
(732, 21, 'Barbacoas'),
(733, 21, 'Belen'),
(734, 21, 'Buesaco'),
(735, 21, 'Colon (Genova)'),
(736, 21, 'Consaca'),
(737, 21, 'Contadero'),
(738, 21, 'Cordoba'),
(739, 21, 'Cuaspud (Carlosama)'),
(740, 21, 'Cumbal'),
(741, 21, 'Cumbitara'),
(742, 21, 'Chachag'),
(743, 21, 'El Charco'),
(744, 21, 'El Rosario'),
(745, 21, 'El Tablon'),
(746, 21, 'El Tambo'),
(747, 21, 'Funes'),
(748, 21, 'Guachucal'),
(749, 21, 'Guaitarilla'),
(750, 21, 'Gualmatan'),
(751, 21, 'Iles'),
(752, 21, 'Imues'),
(753, 21, 'Ipiales'),
(754, 21, 'La Cruz'),
(755, 21, 'La Florida'),
(756, 21, 'La Llanada'),
(757, 21, 'La Tola'),
(758, 21, 'La Union'),
(759, 21, 'Leiva'),
(760, 21, 'Linares'),
(761, 21, 'Los Andes (Sotomayor)'),
(762, 21, 'Mag'),
(763, 21, 'Mallama (Piedrancha)'),
(764, 21, 'Mosquera'),
(765, 21, 'Olaya'),
(766, 21, 'Ospina'),
(767, 21, 'Francisco Pizarro'),
(768, 21, 'Policarpa'),
(769, 21, 'Potosi'),
(770, 21, 'Providencia'),
(771, 21, 'Puerres'),
(772, 21, 'Pupiales'),
(773, 21, 'Ricaurte'),
(774, 21, 'Roberto Payan (San Jose)'),
(775, 21, 'Samaniego'),
(776, 21, 'Sandona'),
(777, 21, 'San Bernardo'),
(778, 21, 'San Lorenzo'),
(779, 21, 'San Pablo'),
(780, 21, 'San Pedro de Cartago'),
(781, 21, 'Santa Barbara (Iscuande)'),
(782, 21, 'Santa Cruz (Guachavez)'),
(783, 21, 'Sapuyes'),
(784, 21, 'Taminango'),
(785, 21, 'Tangua'),
(786, 21, 'Tumaco'),
(787, 21, 'Tuquerres'),
(788, 21, 'Yacuanquer'),
(789, 22, 'Cucuta'),
(790, 22, 'Abrego'),
(791, 22, 'Arboledas'),
(792, 22, 'Bochalema'),
(793, 22, 'Bucarasica'),
(794, 22, 'Cacota'),
(795, 22, 'Cachira'),
(796, 22, 'Chinacota'),
(797, 22, 'Chitaga'),
(798, 22, 'Convencion'),
(799, 22, 'Cucutilla'),
(800, 22, 'Durania'),
(801, 22, 'El Carmen'),
(802, 22, 'El Tarra'),
(803, 22, 'El Zulia'),
(804, 22, 'Gramalote'),
(805, 22, 'Hacari'),
(806, 22, 'Herran'),
(807, 22, 'Labateca'),
(808, 22, 'La Esperanza'),
(809, 22, 'La Playa'),
(810, 22, 'Los Patios'),
(811, 22, 'Lourdes'),
(812, 22, 'Mutiscua'),
(813, 22, 'Oca'),
(814, 22, 'Pamplona'),
(815, 22, 'Pamplonita'),
(816, 22, 'Puerto Santander'),
(817, 22, 'Ragonvalia'),
(818, 22, 'Salazar'),
(819, 22, 'San Calixto'),
(820, 22, 'San Cayetano'),
(821, 22, 'Santiago'),
(822, 22, 'Sardinata'),
(823, 22, 'Silos'),
(824, 22, 'Teorama'),
(825, 22, 'Tibu'),
(826, 22, 'Toledo'),
(827, 22, 'Villacaro'),
(828, 22, 'Villa del Rosario'),
(829, 23, 'Mocoa'),
(830, 23, 'Colon'),
(831, 23, 'Orito'),
(832, 23, 'Puerto Asis'),
(833, 23, 'Puerto Caicedo'),
(834, 23, 'Puerto Guzman'),
(835, 23, 'Puerto Leguizamo'),
(836, 23, 'Sibundoy'),
(837, 23, 'San Francisco'),
(838, 23, 'San Miguel'),
(839, 23, 'Santiago'),
(840, 23, 'Villa Gamuez (La Hormiga)'),
(841, 23, 'Villa Garzon'),
(842, 24, 'Armenia'),
(843, 24, 'Buenavista'),
(844, 24, 'Calarca'),
(845, 24, 'Circasia'),
(846, 24, 'Cordoba'),
(847, 24, 'Filandia'),
(848, 24, 'Genova'),
(849, 24, 'La Tebaida'),
(850, 24, 'Montenegro'),
(851, 24, 'Pijao'),
(852, 24, 'Quimbaya'),
(853, 24, 'Salento'),
(854, 25, 'Pereira'),
(855, 25, 'Apia'),
(856, 25, 'Balboa'),
(857, 25, 'Belen de Umbria'),
(858, 25, 'Dos Quebradas'),
(859, 25, 'Guatica'),
(860, 25, 'La Celia'),
(861, 25, 'La Virginia'),
(862, 25, 'Marsella'),
(863, 25, 'Mistrato'),
(864, 25, 'Pueblo Rico'),
(865, 25, 'Quinchia'),
(866, 25, 'Santa Rosa de Cabal'),
(867, 25, 'Santuario'),
(868, 26, 'San Andres'),
(869, 26, 'Providencia'),
(870, 27, 'Bucaramanga'),
(871, 27, 'Aguada'),
(872, 27, 'Albania'),
(873, 27, 'Aratoca'),
(874, 27, 'Barbosa'),
(875, 27, 'Barichara'),
(876, 27, 'Barrancabermeja'),
(877, 27, 'Betulia'),
(878, 27, 'Bolivar'),
(879, 27, 'Cabrera'),
(880, 27, 'California'),
(881, 27, 'Capitanejo'),
(882, 27, 'Carcasi'),
(883, 27, 'Cepita'),
(884, 27, 'Cerrito'),
(885, 27, 'Charala'),
(886, 27, 'Charta'),
(887, 27, 'Chima'),
(888, 27, 'Chipata'),
(889, 27, 'Cimitarra'),
(890, 27, 'Concepcion'),
(891, 27, 'Confines'),
(892, 27, 'Contratacion'),
(893, 27, 'Coromoro'),
(894, 27, 'Curiti'),
(895, 27, 'El Carmen'),
(896, 27, 'El Guacamayo'),
(897, 27, 'El Pe'),
(898, 27, 'El Playon'),
(899, 27, 'Encino'),
(900, 27, 'Enciso'),
(901, 27, 'Florian'),
(902, 27, 'Floridablanca'),
(903, 27, 'Galan'),
(904, 27, 'Gambita'),
(905, 27, 'Giron'),
(906, 27, 'Guaca'),
(907, 27, 'Guadalupe'),
(908, 27, 'Guapota'),
(909, 27, 'Guavata'),
(910, 27, 'Guepsa'),
(911, 27, 'Hato'),
(912, 27, 'Jesus Maria'),
(913, 27, 'Jordan'),
(914, 27, 'La Belleza'),
(915, 27, 'Landazuri'),
(916, 27, 'La Paz'),
(917, 27, 'Lebrija'),
(918, 27, 'Los Santos'),
(919, 27, 'Macaravita'),
(920, 27, 'Malaga'),
(921, 27, 'Matanza'),
(922, 27, 'Mogotes'),
(923, 27, 'Molagavita'),
(924, 27, 'Ocamonte'),
(925, 27, 'Oiba'),
(926, 27, 'Onzaga'),
(927, 27, 'Palmar'),
(928, 27, 'Palmas del Socorro'),
(929, 27, 'Paramo'),
(930, 27, 'Pie de Cuesta'),
(931, 27, 'Pinchote'),
(932, 27, 'Puente Nacional'),
(933, 27, 'Puerto Parra'),
(934, 27, 'Puerto Wilches'),
(935, 27, 'Rionegro'),
(936, 27, 'Sabana de Torres'),
(937, 27, 'San Andres'),
(938, 27, 'San Benito'),
(939, 27, 'San Gil'),
(940, 27, 'San Joaquin'),
(941, 27, 'San Jose de Miranda'),
(942, 27, 'San Miguel'),
(943, 27, 'San Vicente de Chucuri'),
(944, 27, 'Santa Barbara'),
(945, 27, 'Santa Helena del Opon'),
(946, 27, 'Simacota'),
(947, 27, 'Socorro'),
(948, 27, 'Suaita'),
(949, 27, 'Sucre'),
(950, 27, 'Surata'),
(951, 27, 'Tona'),
(952, 27, 'Valle de San Jose'),
(953, 27, 'Velez'),
(954, 27, 'Vetas'),
(955, 27, 'Villanueva'),
(956, 27, 'Zapatoca'),
(957, 28, 'Sincelejo'),
(958, 28, 'Buenavista'),
(959, 28, 'Caimito'),
(960, 28, 'Coloso (Ricaurte)'),
(961, 28, 'Corozal'),
(962, 28, 'Chalan'),
(963, 28, 'Galeras (Nueva Granada)'),
(964, 28, 'Guaranda'),
(965, 28, 'La Union'),
(966, 28, 'Los Palmitos'),
(967, 28, 'Majagual'),
(968, 28, 'Morroa'),
(969, 28, 'Ovejas'),
(970, 28, 'Palmito'),
(971, 28, 'Sampues'),
(972, 28, 'San Benito Abad'),
(973, 28, 'San Juan de Betulia'),
(974, 28, 'San Marcos'),
(975, 28, 'San Onofre'),
(976, 28, 'San Pedro'),
(977, 28, 'Since'),
(978, 28, 'Sucre'),
(979, 28, 'Tolu'),
(980, 28, 'Toluviejo'),
(981, 29, 'Ibague'),
(982, 29, 'Alpujarra'),
(983, 29, 'Alvarado'),
(984, 29, 'Ambalema'),
(985, 29, 'Anzoategui'),
(986, 29, 'Armero (Guayabal)'),
(987, 29, 'Ataco'),
(988, 29, 'Cajamarca'),
(989, 29, 'Carmen de Apicala'),
(990, 29, 'Casabianca'),
(991, 29, 'Chaparral'),
(992, 29, 'Coello'),
(993, 29, 'Coyaima'),
(994, 29, 'Cunday'),
(995, 29, 'Dolores'),
(996, 29, 'Espinal'),
(997, 29, 'Falan'),
(998, 29, 'Flandes'),
(999, 29, 'Fresno'),
(1000, 29, 'Guamo'),
(1001, 29, 'Herveo'),
(1002, 29, 'Honda'),
(1003, 29, 'Icononzo'),
(1004, 29, 'Lerida'),
(1005, 29, 'Libano'),
(1006, 29, 'Mariquita'),
(1007, 29, 'Melgar'),
(1008, 29, 'Murillo'),
(1009, 29, 'Natagaima'),
(1010, 29, 'Ortega'),
(1011, 29, 'Palocabildo'),
(1012, 29, 'Piedras'),
(1013, 29, 'Planadas'),
(1014, 29, 'Prado'),
(1015, 29, 'Purificacion'),
(1016, 29, 'Rioblanco'),
(1017, 29, 'Roncesvalles'),
(1018, 29, 'Rovira'),
(1019, 29, 'Salda'),
(1020, 29, 'San Antonio'),
(1021, 29, 'San Luis'),
(1022, 29, 'Santa Isabel'),
(1023, 29, 'Suarez'),
(1024, 29, 'Valle de San Juan'),
(1025, 29, 'Venadillo'),
(1026, 29, 'Villahermosa'),
(1027, 29, 'Villarrica'),
(1028, 30, 'Cali'),
(1029, 30, 'Alcala'),
(1030, 30, 'Andalucia'),
(1031, 30, 'Ansermanuevo'),
(1032, 30, 'Argelia'),
(1033, 30, 'Bolivar'),
(1034, 30, 'Buenaventura'),
(1035, 30, 'Buga'),
(1036, 30, 'Bugalagrande'),
(1037, 30, 'Caicedonia'),
(1038, 30, 'Calima (Darien)'),
(1039, 30, 'Candelaria'),
(1040, 30, 'Cartago'),
(1041, 30, 'Dagua'),
(1042, 30, 'El aguila'),
(1043, 30, 'El Cairo'),
(1044, 30, 'El Cerrito'),
(1045, 30, 'El Dovio'),
(1046, 30, 'Florida'),
(1047, 30, 'Ginebra'),
(1048, 30, 'Guacari'),
(1049, 30, 'Jamundi'),
(1050, 30, 'La Cumbre'),
(1051, 30, 'La Union'),
(1052, 30, 'La Victoria'),
(1053, 30, 'Obando'),
(1054, 30, 'Palmira'),
(1055, 30, 'Pradera'),
(1056, 30, 'Restrepo'),
(1057, 30, 'Riofrio'),
(1058, 30, 'Roldanillo'),
(1059, 30, 'San Pedro'),
(1060, 30, 'Sevilla'),
(1061, 30, 'Toro'),
(1062, 30, 'Trujillo'),
(1063, 30, 'Tulua'),
(1064, 30, 'Ulloa'),
(1065, 30, 'Versalles'),
(1066, 30, 'Vijes'),
(1067, 30, 'Yotoco'),
(1068, 30, 'Yumbo'),
(1069, 30, 'Zarzal'),
(1070, 31, 'Mitu'),
(1071, 31, 'Caruru'),
(1072, 31, 'Tatama'),
(1073, 32, 'Puerto Carre'),
(1074, 32, 'La Primavera'),
(1075, 32, 'Santa Rosalia'),
(1076, 32, 'Cumaribo');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE IF NOT EXISTS `noticeboard` (
`notice_id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`notice_id`, `notice_title`, `notice`, `create_timestamp`) VALUES
(1, 'Bienvenidos al Software academico CEIS', 'Este software ha sido diseñado para mejorar y optimizar el proceso de registro y gestión de estudiantes en la academia.', 1410933600),
(4, 'MATRICULATE e inicia nuestros cursos y especializaciones', 'CEIS te ofrece especializaciones en Vigilancia: Residencial, Entidades Oficiales, Sector Financiero, Industrial, Hospitalaria, Comercial y Cursos de seguridad como vigilancia , escolta , surpervisor y medios tecnologicos .', 0),
(3, 'Términos y condiciones del sorteo moto y televisor', '1. Por tu matricula en cualquiera de nuestros cursos en los ciclos de vigilancia, escolta, supervisor y medios tecnológicos, realizados a partir del 13 de Enero de 2014 hasta el 9 de Junio de 2014 (1er sorteo) y 1 de diciembre de 2014 (2do sorteo), reclama una boleta para participar en el sorteo de un televisor de 50” y una moto bóxer modelo 2014. Fecha del 1er sorteo: 10 de Junio de 2014: 1 Televisor de 50” Fecha de cierre de urna: 9 de junio de 2014 a las 9pm Fecha del 2do sorteo: 2 de diciembre de 2014: 1 moto Boxer modelo 2014 Fecha de cierre de urna: 1 de diciembre de 2014 a las 9pm\r\n\r\n2. Las boletas enmendadas no serán validas.\r\n\r\n3. Los datos con los que se debe diligenciar el desprendible de la boleta, deben coincidir con la información contenida en el sistema académico de CEIS LTDA, de igual forma debe llenarse el desprendible con letra clara, legible y debe diligenciarse completamente.\r\n\r\n4. Deposite en la urna únicamente la boleta diligenciada con todos sus datos.\r\n\r\n5. La boleta que salga favorecida en el 1er sorteo ofertado por CEIS LTDA, no participara en los sorteos que se realicen posteriormente.\r\n\r\n6. Solo participan y son validos, los desprendibles del sorteo actual. Absténgase de introducir en la urna desprendibles de otros sorteos o sorteos anteriores.\r\n\r\n7. Para verificación de la boleta seleccionada, el dueño de la misma, deberá presentar a la administración el original de su cédula, cédula de extranjería, pasaporte o cualquier documento de identificación provisional o definitiva, entregado o certificado por la registraduría nacional del estado civil en Colombia.\r\n\r\n8. Los premios serán entregados únicamente a la persona natural indicada en el desprendible de la boleta seleccionada y luego de certificar el cumplimiento de todos y cada uno de los requisitos contenidos en el presente documento.\r\n\r\n9. El ganador de cada uno de los premios tiene 30 días calendarios para reclamar el premio exhibiendo los requisitos exigidos en el presente documento, de lo contrario CEIS podrá acumular el premio o en su defecto señalar una nueva fecha para su ejecución.\r\n\r\n10. Los impuestos por ganancia ocasional discriminados en el estatuto tributario y valores adicionales inherentes a los premios serán asumidos en su totalidad por el ganador de los mismos.\r\n\r\n11. Los Ganadores tienen un lapso de tiempo de 30 días calendarios, siguientes a la ejecución del sorteo, para retirar el televisor y la moto ofertados, previo lleno de los requisitos correspondientes, transcurrido el lapso de tiempo enunciado.\r\n\r\n12. Será responsabilidad del ganador el pago de los impuestos que se generen por el registro de propiedad del automotor.\r\n\r\n13.No podrá participar en los sorteos descritos en el presente documento los empleados y funcionarios adscritos a CEIS LTDA.\r\n\r\n14. Los problemas e inconvenientes presentados por las garantías de los productos  entregados deberán ser asumidos por los productores de los mismos tal como lo preceptúa la Ley 1480 de 2011.', 0),
(5, '[PROGRAMATE] Como Operador de Medios Tecnológicos', 'Estudia en CEIS Operador de Medios Tecnológicos, Inicia Lunes 19 de Mayo 6pm Inscribete y Gana Tv de 50″', 0),
(6, 'Estudiando en CEIS podrás Ganar un TV de 50″ o una Moto 0Km', 'Si en el 2014 has realizado alguno de nuestros cursos ¿Que esperas para reclamar tu boleta?… Si aún no has realizado ningún curso en CEIS, Matriculate Ya! y pordrás ver el mundial en un Televisor de 50″ o Ganar una Moto Boxer en Diciembre!… Entre Más Cursos Realices Más oportunidades tienes de ganar!', 0),
(7, 'Programación Cursos Mes de Febrero', 'Conozca a continuación la programación de los cursos ofertados por CEIS para el mes de Febrero.', 0),
(8, 'Bienvenidos a CEIS', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
`parent_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `relation_with_student` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
`payment_id` int(11) NOT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rss`
--

CREATE TABLE IF NOT EXISTS `rss` (
`id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `create_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rss`
--

INSERT INTO `rss` (`id`, `name`, `url`, `create_timestamp`) VALUES
(1, 'CEIS Noticias', 'http://www.ceis.com.co/feed/', '2014-10-23 04:30:00'),
(4, 'Genbeta', 'http://feeds.weblogssl.com/genbetadev?format=xml', '2014-10-23 05:28:06');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
`settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'Aplicativo CEIS'),
(2, 'system_title', 'ceis'),
(3, 'address', 'Carrera 45 No. 66 – 09'),
(4, 'phone', '3608121 - 3609081'),
(5, 'paypal_email', 'administrativo@ceis.com.co'),
(6, 'currency', 'Peso'),
(7, 'system_email', 'comunicaciones@ceis.com.co');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
`student_id` int(11) NOT NULL,
  `documento` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ndocumento` int(18) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `snombre` longtext COLLATE utf8_unicode_ci NOT NULL,
  `papellido` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sapellido` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `estado_civil` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tienehijos` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ndehijos` longtext COLLATE utf8_unicode_ci NOT NULL,
  `nlibmilitar` longtext COLLATE utf8_unicode_ci NOT NULL,
  `tipodeingreso` longtext COLLATE utf8_unicode_ci NOT NULL,
  `empresa` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `cod_regional` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_regional` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cod_departamento` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_departamento` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cod_municipio` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_municipio` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_gremio` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lin_formacion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_sector_eco` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nom_subsector_eco` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sena` tinyint(2) NOT NULL,
  `barrio` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departamento` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `municipio` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caracterizacion` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_lib_militar` tinyint(2) NOT NULL,
  `check_cedula` tinyint(2) NOT NULL,
  `check_cert_est` tinyint(2) NOT NULL,
  `check_foto` tinyint(2) NOT NULL,
  `talla_camisa` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `documento`, `ndocumento`, `name`, `snombre`, `papellido`, `sapellido`, `birthday`, `sex`, `estado_civil`, `tienehijos`, `ndehijos`, `nlibmilitar`, `tipodeingreso`, `empresa`, `address`, `phone`, `email`, `class_id`, `cod_regional`, `nom_regional`, `cod_departamento`, `nom_departamento`, `cod_municipio`, `nom_municipio`, `emp_gremio`, `lin_formacion`, `nom_sector_eco`, `nom_subsector_eco`, `sena`, `barrio`, `departamento`, `municipio`, `caracterizacion`, `check_lib_militar`, `check_cedula`, `check_cert_est`, `check_foto`, `talla_camisa`) VALUES
(1, 'CC', 2345, 'jose', 'luis', 'perez', 'marquez', '10/14/2014', 'masculino', 'Separado', 'no', '0', '2345', 'particular', '0', 'barrio', '45', 'jonathan.araul@gmail.com', '4', '0', 'Atlantico', '0', 'Atlantico', '0', 'Barranquilla', 'miempresa', 'ALTA GERENCIA/SENA GREMIO', 'SERVICIOS', 'VIGILANCIA', 1, 'barrio', '2', '20', 'ADOLESCENTE EN CONFLICTO CON LA LEY PENAL', 0, 1, 0, 0, ''),
(2, 'CC', 22447886, 'jose', 'raul', 'hernandez', 'padron', '01/25/1992', 'masculino', 'Soltero', 'no', '0', '234234', 'particular', '0', 'las cocuizas', '123324234323', 'correoprueba@gmail.com', '3', '0', 'Atlantico', '0', 'Atlantico', '0', 'Barranquilla', 'ninguna', 'SENA EMPRESAS/SENA GREMIO', 'SERVICIOS', 'VIGILANCIA', 1, 'los bloques', '1', '2', 'ADOLESCENTE EN CONFLICTO CON LA LEY PENAL', 0, 1, 0, 0, '16'),
(3, 'CC', 22447886, 'juan', 'raul', 'hernandez', 'padron', '10/10/2014', 'masculino', 'Soltero', 'no', '0', '2321213', 'particular', '0', 'la calle tal', '1231232131', 'elmejor159@hotmail.com', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'el barrio tal', '14', '495', NULL, 0, 1, 0, 0, '16'),
(4, 'CC', 22447886, 'jose', 'raul', 'lopez', 'ramirez', '10/03/2014', 'masculino', 'Soltero', 'no', '0', '2321213', 'particular', '0', 'las cocuizas', '675676575', 'prueba@gmail.com', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'los bloques', '1', '2', NULL, 0, 1, 0, 0, '14'),
(5, 'CC', 2131312, 'carlos', 'david', 'arreaza', 'colmenares', '10/30/2014', 'masculino', 'Soltero', 'no', '0', '34543535', 'becado', '0', 'plaza piar', '123123132', 'prueba2@gmail.com', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'peligroso', '13', '466', NULL, 0, 1, 0, 0, '16'),
(6, 'CC', 11991682, 'shack', 'adams', 'oneil', 'doge', '10/13/2014', 'masculino', 'casado', 'no', '0', '4554645654', 'becado', '0', 'las terrazas', '678987978979', 'prueba3@gmail.com', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'mas peligroso', '14', '497', NULL, 0, 1, 0, 0, '18');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
`subject_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`) VALUES
(1, 'Matematicas', 0, 0),
(2, 'Armamento y tiro', 0, 2),
(3, 'fredy saul teheran tovar', 0, 0),
(4, 'colol', 0, 0),
(5, 'CATALOGO DE SERVICIOS', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
`teacher_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `snombre` longtext COLLATE utf8_unicode_ci NOT NULL,
  `papellido` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sapellido` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE IF NOT EXISTS `transport` (
`transport_id` int(11) NOT NULL,
  `route_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route_fare` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
 ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
 ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_name`
--
ALTER TABLE `class_name`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
 ADD PRIMARY KEY (`class_routine_id`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
 ADD PRIMARY KEY (`dormitory_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
 ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `empresas`
--
ALTER TABLE `empresas`
 ADD PRIMARY KEY (`empresas_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
 ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
 ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `hs_asistencias`
--
ALTER TABLE `hs_asistencias`
 ADD PRIMARY KEY (`id`), ADD KEY `curso` (`curso`,`materia`,`estudiante`), ADD KEY `materia` (`materia`), ADD KEY `estudiante` (`estudiante`);

--
-- Indexes for table `hs_cursos`
--
ALTER TABLE `hs_cursos`
 ADD PRIMARY KEY (`id`), ADD KEY `periodo` (`periodo`);

--
-- Indexes for table `hs_evaluaciones`
--
ALTER TABLE `hs_evaluaciones`
 ADD PRIMARY KEY (`id`), ADD KEY `materia` (`materia`);

--
-- Indexes for table `hs_facturacion`
--
ALTER TABLE `hs_facturacion`
 ADD PRIMARY KEY (`id`), ADD KEY `estudiante` (`estudiante`,`curso`), ADD KEY `curso` (`curso`);

--
-- Indexes for table `hs_horarios_materias`
--
ALTER TABLE `hs_horarios_materias`
 ADD PRIMARY KEY (`id`), ADD KEY `curso` (`curso`,`materia`), ADD KEY `materia` (`materia`);

--
-- Indexes for table `hs_inscripcion`
--
ALTER TABLE `hs_inscripcion`
 ADD PRIMARY KEY (`id`), ADD KEY `curso` (`curso`), ADD KEY `estudiante` (`estudiante`);

--
-- Indexes for table `hs_materias`
--
ALTER TABLE `hs_materias`
 ADD PRIMARY KEY (`id`), ADD KEY `curso` (`curso`);

--
-- Indexes for table `hs_notas`
--
ALTER TABLE `hs_notas`
 ADD PRIMARY KEY (`id`), ADD KEY `curso` (`curso`,`materia`,`evaluacion`,`estudiante`), ADD KEY `materia` (`materia`), ADD KEY `evaluacion` (`evaluacion`), ADD KEY `estudiante` (`estudiante`);

--
-- Indexes for table `hs_periodo`
--
ALTER TABLE `hs_periodo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hs_role`
--
ALTER TABLE `hs_role`
 ADD PRIMARY KEY (`rol_id`);

--
-- Indexes for table `hs_users`
--
ALTER TABLE `hs_users`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
 ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
 ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
 ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `municipio`
--
ALTER TABLE `municipio`
 ADD PRIMARY KEY (`id`), ADD KEY `departamento` (`departamento`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
 ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
 ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
 ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `rss`
--
ALTER TABLE `rss`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
 ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
 ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
 ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
 ADD PRIMARY KEY (`transport_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `class_name`
--
ALTER TABLE `class_name`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `empresas`
--
ALTER TABLE `empresas`
MODIFY `empresas_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hs_asistencias`
--
ALTER TABLE `hs_asistencias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `hs_cursos`
--
ALTER TABLE `hs_cursos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hs_evaluaciones`
--
ALTER TABLE `hs_evaluaciones`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hs_facturacion`
--
ALTER TABLE `hs_facturacion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `hs_horarios_materias`
--
ALTER TABLE `hs_horarios_materias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `hs_inscripcion`
--
ALTER TABLE `hs_inscripcion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `hs_materias`
--
ALTER TABLE `hs_materias`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `hs_notas`
--
ALTER TABLE `hs_notas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hs_periodo`
--
ALTER TABLE `hs_periodo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `hs_role`
--
ALTER TABLE `hs_role`
MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hs_users`
--
ALTER TABLE `hs_users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1557;
--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `municipio`
--
ALTER TABLE `municipio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1077;
--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rss`
--
ALTER TABLE `rss`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `hs_asistencias`
--
ALTER TABLE `hs_asistencias`
ADD CONSTRAINT `hs_asistencias_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `hs_cursos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `hs_asistencias_ibfk_2` FOREIGN KEY (`materia`) REFERENCES `hs_materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `hs_asistencias_ibfk_4` FOREIGN KEY (`estudiante`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hs_cursos`
--
ALTER TABLE `hs_cursos`
ADD CONSTRAINT `hs_cursos_ibfk_1` FOREIGN KEY (`periodo`) REFERENCES `hs_periodo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hs_evaluaciones`
--
ALTER TABLE `hs_evaluaciones`
ADD CONSTRAINT `hs_evaluaciones_ibfk_1` FOREIGN KEY (`materia`) REFERENCES `hs_materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hs_facturacion`
--
ALTER TABLE `hs_facturacion`
ADD CONSTRAINT `hs_facturacion_ibfk_1` FOREIGN KEY (`estudiante`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `hs_facturacion_ibfk_2` FOREIGN KEY (`curso`) REFERENCES `hs_cursos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hs_horarios_materias`
--
ALTER TABLE `hs_horarios_materias`
ADD CONSTRAINT `hs_horarios_materias_ibfk_2` FOREIGN KEY (`materia`) REFERENCES `hs_materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `hs_horarios_materias_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `hs_cursos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hs_inscripcion`
--
ALTER TABLE `hs_inscripcion`
ADD CONSTRAINT `hs_inscripcion_ibfk_1` FOREIGN KEY (`estudiante`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `hs_inscripcion_ibfk_2` FOREIGN KEY (`curso`) REFERENCES `hs_cursos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hs_materias`
--
ALTER TABLE `hs_materias`
ADD CONSTRAINT `hs_materias_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `hs_cursos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hs_notas`
--
ALTER TABLE `hs_notas`
ADD CONSTRAINT `hs_notas_ibfk_1` FOREIGN KEY (`curso`) REFERENCES `hs_cursos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `hs_notas_ibfk_2` FOREIGN KEY (`materia`) REFERENCES `hs_materias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `hs_notas_ibfk_3` FOREIGN KEY (`evaluacion`) REFERENCES `hs_evaluaciones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `hs_notas_ibfk_4` FOREIGN KEY (`estudiante`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `municipio`
--
ALTER TABLE `municipio`
ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`departamento`) REFERENCES `departamento` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
