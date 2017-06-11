-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 05-06-2017 a las 22:40:21
-- Versión del servidor: 5.5.55-0+deb8u1
-- Versión de PHP: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `victimas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
`id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
`id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
`id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add user', 2, 'add_user'),
(5, 'Can change user', 2, 'change_user'),
(6, 'Can delete user', 2, 'delete_user'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add enfoque diferencial', 7, 'add_enfoquediferencial'),
(20, 'Can change enfoque diferencial', 7, 'change_enfoquediferencial'),
(21, 'Can delete enfoque diferencial', 7, 'delete_enfoquediferencial'),
(22, 'Can add eps', 8, 'add_eps'),
(23, 'Can change eps', 8, 'change_eps'),
(24, 'Can delete eps', 8, 'delete_eps'),
(25, 'Can add estado civil', 9, 'add_estadocivil'),
(26, 'Can change estado civil', 9, 'change_estadocivil'),
(27, 'Can delete estado civil', 9, 'delete_estadocivil'),
(28, 'Can add hecho victimizante', 10, 'add_hechovictimizante'),
(29, 'Can change hecho victimizante', 10, 'change_hechovictimizante'),
(30, 'Can delete hecho victimizante', 10, 'delete_hechovictimizante'),
(31, 'Can add institucion educativa', 11, 'add_institucioneducativa'),
(32, 'Can change institucion educativa', 11, 'change_institucioneducativa'),
(33, 'Can delete institucion educativa', 11, 'delete_institucioneducativa'),
(34, 'Can add nivel educativo', 12, 'add_niveleducativo'),
(35, 'Can change nivel educativo', 12, 'change_niveleducativo'),
(36, 'Can delete nivel educativo', 12, 'delete_niveleducativo'),
(37, 'Can add regimen', 13, 'add_regimen'),
(38, 'Can change regimen', 13, 'change_regimen'),
(39, 'Can delete regimen', 13, 'delete_regimen'),
(40, 'Can add tipo vivienda', 14, 'add_tipovivienda'),
(41, 'Can change tipo vivienda', 14, 'change_tipovivienda'),
(42, 'Can delete tipo vivienda', 14, 'delete_tipovivienda'),
(43, 'Can add usuario', 15, 'add_usuario'),
(44, 'Can change usuario', 15, 'change_usuario'),
(45, 'Can delete usuario', 15, 'delete_usuario'),
(46, 'Can add perfil', 16, 'add_perfil'),
(47, 'Can change perfil', 16, 'change_perfil'),
(48, 'Can delete perfil', 16, 'delete_perfil'),
(49, 'Can add etnia', 17, 'add_etnia'),
(50, 'Can change etnia', 17, 'change_etnia'),
(51, 'Can delete etnia', 17, 'delete_etnia'),
(55, 'Can add discapacidad', 19, 'add_discapacidad'),
(56, 'Can change discapacidad', 19, 'change_discapacidad'),
(57, 'Can delete discapacidad', 19, 'delete_discapacidad'),
(58, 'Can add tipo documento', 20, 'add_tipodocumento'),
(59, 'Can change tipo documento', 20, 'change_tipodocumento'),
(60, 'Can delete tipo documento', 20, 'delete_tipodocumento'),
(61, 'Can add condicion sexual', 21, 'add_condicionsexual'),
(62, 'Can change condicion sexual', 21, 'change_condicionsexual'),
(63, 'Can delete condicion sexual', 21, 'delete_condicionsexual'),
(64, 'Can add parentesco', 22, 'add_parentesco'),
(65, 'Can change parentesco', 22, 'change_parentesco'),
(66, 'Can delete parentesco', 22, 'delete_parentesco'),
(67, 'Can add Departamento', 23, 'add_departamento'),
(68, 'Can change Departamento', 23, 'change_departamento'),
(69, 'Can delete Departamento', 23, 'delete_departamento'),
(70, 'Can add Ciudad', 24, 'add_ciudad'),
(71, 'Can change Ciudad', 24, 'change_ciudad'),
(72, 'Can delete Ciudad', 24, 'delete_ciudad'),
(73, 'Can add beneficiario', 25, 'add_beneficiario'),
(74, 'Can change beneficiario', 25, 'change_beneficiario'),
(75, 'Can delete beneficiario', 25, 'delete_beneficiario'),
(79, 'Can add ocupa vivienda', 27, 'add_ocupavivienda'),
(80, 'Can change ocupa vivienda', 27, 'change_ocupavivienda'),
(81, 'Can delete ocupa vivienda', 27, 'delete_ocupavivienda'),
(82, 'Can add profesion', 28, 'add_profesion'),
(83, 'Can change profesion', 28, 'change_profesion'),
(84, 'Can delete profesion', 28, 'delete_profesion'),
(85, 'Can add ocupacion', 29, 'add_ocupacion'),
(86, 'Can change ocupacion', 29, 'change_ocupacion'),
(87, 'Can delete ocupacion', 29, 'delete_ocupacion'),
(91, 'Can add bienes', 31, 'add_bienes'),
(92, 'Can change bienes', 31, 'change_bienes'),
(93, 'Can delete bienes', 31, 'delete_bienes'),
(94, 'Can add servicio publico', 32, 'add_serviciopublico'),
(95, 'Can change servicio publico', 32, 'change_serviciopublico'),
(96, 'Can delete servicio publico', 32, 'delete_serviciopublico'),
(97, 'Can add hogar', 33, 'add_hogar'),
(98, 'Can change hogar', 33, 'change_hogar'),
(99, 'Can delete hogar', 33, 'delete_hogar'),
(103, 'Can add tipo establecimiento', 35, 'add_tipoestablecimiento'),
(104, 'Can change tipo establecimiento', 35, 'change_tipoestablecimiento'),
(105, 'Can delete tipo establecimiento', 35, 'delete_tipoestablecimiento'),
(106, 'Can add actividad mes', 36, 'add_actividadmes'),
(107, 'Can change actividad mes', 36, 'change_actividadmes'),
(108, 'Can delete actividad mes', 36, 'delete_actividadmes'),
(109, 'Can add hecho beneficiario', 37, 'add_hechobeneficiario'),
(110, 'Can change hecho beneficiario', 37, 'change_hechobeneficiario'),
(111, 'Can delete hecho beneficiario', 37, 'delete_hechobeneficiario'),
(112, 'Can add discapacidad detalle', 38, 'add_discapacidaddetalle'),
(113, 'Can change discapacidad detalle', 38, 'change_discapacidaddetalle'),
(114, 'Can delete discapacidad detalle', 38, 'delete_discapacidaddetalle'),
(115, 'Can add material pared', 39, 'add_materialpared'),
(116, 'Can change material pared', 39, 'change_materialpared'),
(117, 'Can delete material pared', 39, 'delete_materialpared'),
(121, 'Can add basura', 41, 'add_basura'),
(122, 'Can change basura', 41, 'change_basura'),
(123, 'Can delete basura', 41, 'delete_basura'),
(124, 'Can add material piso', 42, 'add_materialpiso'),
(125, 'Can change material piso', 42, 'change_materialpiso'),
(126, 'Can delete material piso', 42, 'delete_materialpiso'),
(127, 'Can add carnet', 43, 'add_carnet'),
(128, 'Can change carnet', 43, 'change_carnet'),
(129, 'Can delete carnet', 43, 'delete_carnet');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
`id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$30000$iO7vt9yTgYwa$BC3u96OzdrkjKZAM7Elj/Un3KOTtMDgAGgKwPNbMquQ=', '2016-11-19 16:24:24', 1, 'palma', '', '', '', 1, 1, '2016-11-04 04:53:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_actividadmes`
--

CREATE TABLE IF NOT EXISTS `beneficiario_actividadmes` (
`id` int(11) NOT NULL,
  `actividad` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_actividadmes`
--

INSERT INTO `beneficiario_actividadmes` (`id`, `actividad`, `codigo`) VALUES
(1, 'Sin actividad', '0'),
(2, 'Trabajando', '1'),
(3, 'Buscando trabajo', '2'),
(4, 'Estudiando', '3'),
(5, 'Oficios del hogar', '4'),
(6, 'Rentista', '5'),
(7, 'Jubilado, pensionado', '6'),
(8, 'Inválido', '7');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_basura`
--

CREATE TABLE IF NOT EXISTS `beneficiario_basura` (
`id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `metodo` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_basura`
--

INSERT INTO `beneficiario_basura` (`id`, `codigo`, `metodo`) VALUES
(1, 1, 'La recogen los servicios de aseo'),
(2, 2, 'La entierran'),
(3, 3, 'La queman'),
(4, 4, 'La tiran al patio, lote, zanja o baldio'),
(5, 5, 'La tiran al río, cañon, quebrada, laguna'),
(6, 6, 'La eliminan de otra forma');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_beneficiario`
--

CREATE TABLE IF NOT EXISTS `beneficiario_beneficiario` (
`id` int(11) NOT NULL,
  `numeroDocumento` int(11) NOT NULL,
  `nombreUno` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombreDos` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidoUno` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidoDos` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `genero` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefonoFijo` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefonoCelular` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `condicionSexual_id` int(11) DEFAULT NULL,
  `discapacidad_id` int(11) DEFAULT NULL,
  `parentesco_id` int(11) DEFAULT NULL,
  `perteneciaEtnica_id` int(11) DEFAULT NULL,
  `tipoDocumento_id` int(11) NOT NULL,
  `eps_id` int(11) DEFAULT NULL,
  `estadoCivil_id` int(11) DEFAULT NULL,
  `institucionEducativa_id` int(11) DEFAULT NULL,
  `nivelEducativo_id` int(11) DEFAULT NULL,
  `ciudadProcedencia_id` int(11) DEFAULT NULL,
  `regimen_id` int(11) DEFAULT NULL,
  `familiasAccion` tinyint(1) DEFAULT NULL,
  `codigoUV` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documentoCabeza` int(11) DEFAULT NULL,
  `cabeza` tinyint(1) NOT NULL,
  `ciudadPredio_id` int(11) DEFAULT NULL,
  `predioAbandonado` tinyint(1) DEFAULT NULL,
  `restitucionPredio` tinyint(1) DEFAULT NULL,
  `ciudadDeclara_id` int(11) DEFAULT NULL,
  `fechaDeclara` date,
  `revictimizado` tinyint(1) DEFAULT NULL,
  `estudiaActualmente` tinyint(1) DEFAULT NULL,
  `kitEscolar` tinyint(1) DEFAULT NULL,
  `otrosEstudios` tinyint(1) DEFAULT NULL,
  `otrosEstudiosD` longtext COLLATE utf8_unicode_ci NOT NULL,
  `uniforme` tinyint(1) DEFAULT NULL,
  `ingresos` double DEFAULT NULL,
  `ocupacion_id` int(11) DEFAULT NULL,
  `profesion_id` int(11) DEFAULT NULL,
  `extranjero` tinyint(1),
  `pagaOtro` tinyint(1),
  `tservicio` tinyint(1),
  `detDiscapacidad_id` int(11) DEFAULT NULL,
  `embarazo` tinyint(1),
  `ultimoAno` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `actividadMes_id` int(11),
  `semanas` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `percibe` tinyint(1),
  `archivo` varchar(100) COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_beneficiario`
--

INSERT INTO `beneficiario_beneficiario` (`id`, `numeroDocumento`, `nombreUno`, `nombreDos`, `apellidoUno`, `apellidoDos`, `fechaNacimiento`, `genero`, `email`, `telefonoFijo`, `telefonoCelular`, `condicionSexual_id`, `discapacidad_id`, `parentesco_id`, `perteneciaEtnica_id`, `tipoDocumento_id`, `eps_id`, `estadoCivil_id`, `institucionEducativa_id`, `nivelEducativo_id`, `ciudadProcedencia_id`, `regimen_id`, `familiasAccion`, `codigoUV`, `documentoCabeza`, `cabeza`, `ciudadPredio_id`, `predioAbandonado`, `restitucionPredio`, `ciudadDeclara_id`, `fechaDeclara`, `revictimizado`, `estudiaActualmente`, `kitEscolar`, `otrosEstudios`, `otrosEstudiosD`, `uniforme`, `ingresos`, `ocupacion_id`, `profesion_id`, `extranjero`, `pagaOtro`, `tservicio`, `detDiscapacidad_id`, `embarazo`, `ultimoAno`, `actividadMes_id`, `semanas`, `percibe`, `archivo`) VALUES
(1, 1070593028, 'jhon', 'Fernando', 'palma', 'garcia', '1998-04-25', 'H', 'jhon1946@gmail.com', '', '3114538465', 1, 7, 1, 7, 1, 4, 3, 6, 6, 126, 2, 0, 'AAA880425', 1070593028, 1, NULL, 0, NULL, 699, '2002-08-14', 0, 1, 0, 1, 'Panaderia,', 0, 300000, NULL, 3, 0, 0, 0, NULL, 0, '1', 3, '8', 1, 'archivos/1070593028_VMnvq55.pdf'),
(2, 11316169, 'luis', 'fernando', 'Pulecio', '', '1979-03-20', 'H', 'pulecinho@gmail.com', '', '', 1, 7, 1, 7, 3, 6, 3, NULL, NULL, 732, 2, 0, 'AAA12345', 11316169, 1, NULL, 0, 0, 728, '2001-10-15', 0, NULL, NULL, NULL, '', NULL, 800000, NULL, 2, 0, 0, 0, NULL, 0, '', 2, '', 1, NULL),
(3, 39584810, 'luz', 'angela', 'guzman', 'torres', '1984-10-21', 'M', 'nangelita1984@gmail.com', '', '3219746871', 1, 7, 2, 7, 3, 4, 2, NULL, NULL, 792, 2, 0, 'AAAQ123', 1070593028, 0, 794, 1, 1, 792, '2001-09-16', 1, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, 'archivos/39584810_Fevl3x0.pdf'),
(4, 1070596703, 'nicolas', 'andres', 'palma', 'guzman', '2007-05-26', 'H', '', '', '', 1, 7, 3, 7, 2, 4, 1, NULL, NULL, NULL, 2, 0, 'AAAQWE1', 1070593028, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL),
(5, 1029019882, 'nicol', 'sofia', 'palma', 'guzman', '2017-01-10', 'M', '', '', '', 6, 7, 3, 7, 1, 4, 1, NULL, NULL, NULL, 2, 0, 'sasasa', 1070593028, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, '', NULL, NULL, NULL, NULL),
(6, 1069176355, 'david', 'enrique', 'Reyes', 'carvajal', '1991-11-21', 'H', '', '', '', NULL, NULL, 1, NULL, 3, NULL, 2, NULL, NULL, NULL, NULL, NULL, '', 1069176355, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', NULL, NULL, NULL, NULL),
(7, 11304511, 'virgilio', '', 'guzman', 'lopez', '1957-10-31', 'H', '', '', '', NULL, NULL, 1, NULL, 3, NULL, 2, NULL, NULL, NULL, NULL, NULL, '', 11304511, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', NULL, NULL, NULL, NULL),
(8, 99883322, 'rwerwerwre', '', 'caaaare', '', '1998-01-01', 'M', '', '', '', NULL, NULL, 1, NULL, 3, NULL, 4, NULL, NULL, NULL, NULL, NULL, '', 99883321, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', NULL, NULL, NULL, NULL),
(9, 99883321, 'rwerwerwre', '', 'caaaare', '', '1998-01-01', 'H', '', '', '', 2, 2, 1, 1, 3, 3, 4, NULL, 5, 3, 1, 0, '', 99883321, 1, NULL, 0, NULL, 787, '2004-07-16', 1, 0, 1, 1, 'panaderia,', 1, 0, NULL, 4, 0, 0, 0, NULL, 0, '1', 3, '5', 0, NULL),
(10, 222222, 'dasa', '', 'csasadsa', '', '2017-02-06', 'M', '', '', '', 1, 5, 1, 2, 1, 3, 1, 3, 6, 730, 1, 0, '2434342343', 222222, 1, 701, 1, 0, 614, '2001-08-19', 1, 1, 1, 0, ',', 1, NULL, NULL, NULL, 0, 0, 0, NULL, 0, '1', NULL, NULL, NULL, NULL),
(11, 123, 'qa', '', 'aq', '', '2017-01-02', '', 'adada@mail.com', '244242', '4343242', NULL, NULL, 1, NULL, 3, NULL, 1, NULL, NULL, NULL, NULL, NULL, 'sdadasdsa', 123, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_bienes`
--

CREATE TABLE IF NOT EXISTS `beneficiario_bienes` (
`id` int(11) NOT NULL,
  `bienes` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_bienes`
--

INSERT INTO `beneficiario_bienes` (`id`, `bienes`) VALUES
(1, 'Nevera o enfriador'),
(2, 'Lavadora'),
(3, 'Televisor'),
(4, 'Servicio de televisión por cable o parabólica'),
(5, 'Calentador de agua o ducha eléctrica'),
(6, 'Horno microondas'),
(7, 'Aire acondicionado'),
(8, 'Computador'),
(9, 'Equipo de sonido'),
(10, 'Motocicleta para uso del hogar'),
(11, 'Tractor para uso del hogar'),
(12, 'Automóvil para uso del hogar'),
(13, 'Bienes raíces');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_carnet`
--

CREATE TABLE IF NOT EXISTS `beneficiario_carnet` (
`id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `fechaExpide` date DEFAULT NULL,
  `fechaVence` date DEFAULT NULL,
  `estado` tinyint(1) DEFAULT NULL,
  `beneficiario_id` int(11) NOT NULL,
  `grupo` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_carnet`
--

INSERT INTO `beneficiario_carnet` (`id`, `codigo`, `fechaExpide`, `fechaVence`, `estado`, `beneficiario_id`, `grupo`) VALUES
(1, 1070593028, '2017-05-31', '2017-12-31', 1, 1, 1070593028),
(2, 39584810, '2017-05-31', '2017-12-31', 1, 3, 1070593028),
(3, 1070596703, '2017-05-31', '2017-12-31', 1, 4, 1070593028),
(4, 1029019882, '2017-05-31', '2017-12-31', 1, 5, 1070593028);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_ciudad`
--

CREATE TABLE IF NOT EXISTS `beneficiario_ciudad` (
`id` int(11) NOT NULL,
  `codigo` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `ciudad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `departamento_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_ciudad`
--

INSERT INTO `beneficiario_ciudad` (`id`, `codigo`, `ciudad`, `departamento_id`) VALUES
(1, '001', 'MEDELLIN', 1),
(2, '002', 'ABEJORRAL', 1),
(3, '004', 'ABRIAQUI', 1),
(4, '021', 'ALEJANDRIA', 1),
(5, '030', 'AMAGA', 1),
(6, '031', 'AMALFI', 1),
(7, '034', 'ANDES', 1),
(8, '036', 'ANGELOPOLIS', 1),
(9, '038', 'ANGOSTURA', 1),
(10, '040', 'ANORI', 1),
(11, '042', 'SANTAFE DE ANTIOQUIA', 1),
(12, '044', 'ANZA', 1),
(13, '045', 'APARTADO', 1),
(14, '051', 'ARBOLETES', 1),
(15, '055', 'ARGELIA', 1),
(16, '059', 'ARMENIA', 1),
(17, '079', 'BARBOSA', 1),
(18, '086', 'BELMIRA', 1),
(19, '088', 'BELLO', 1),
(20, '091', 'BETANIA', 1),
(21, '093', 'BETULIA', 1),
(22, '101', 'CIUDAD BOLIVAR', 1),
(23, '107', 'BRICEÑO', 1),
(24, '113', 'BURITICA', 1),
(25, '120', 'CACERES', 1),
(26, '125', 'CAICEDO', 1),
(27, '129', 'CALDAS', 1),
(28, '134', 'CAMPAMENTO', 1),
(29, '138', 'CAÑASGORDAS', 1),
(30, '142', 'CARACOLI', 1),
(31, '145', 'CARAMANTA', 1),
(32, '147', 'CAREPA', 1),
(33, '148', 'EL CARMEN DE VIBORAL', 1),
(34, '150', 'CAROLINA', 1),
(35, '154', 'CAUCASIA', 1),
(36, '172', 'CHIGORODO', 1),
(37, '190', 'CISNEROS', 1),
(38, '197', 'COCORNA', 1),
(39, '206', 'CONCEPCION', 1),
(40, '209', 'CONCORDIA', 1),
(41, '212', 'COPACABANA', 1),
(42, '234', 'DABEIBA', 1),
(43, '237', 'DON MATIAS', 1),
(44, '240', 'EBEJICO', 1),
(45, '250', 'EL BAGRE', 1),
(46, '264', 'ENTRERRIOS', 1),
(47, '266', 'ENVIGADO', 1),
(48, '282', 'FREDONIA', 1),
(49, '284', 'FRONTINO', 1),
(50, '306', 'GIRALDO', 1),
(51, '308', 'GIRARDOTA', 1),
(52, '310', 'GOMEZ PLATA', 1),
(53, '313', 'GRANADA', 1),
(54, '315', 'GUADALUPE', 1),
(55, '318', 'GUARNE', 1),
(56, '321', 'GUATAPE', 1),
(57, '347', 'HELICONIA', 1),
(58, '353', 'HISPANIA', 1),
(59, '360', 'ITAGUI', 1),
(60, '361', 'ITUANGO', 1),
(61, '364', 'JARDIN', 1),
(62, '368', 'JERICO', 1),
(63, '376', 'LA CEJA', 1),
(64, '380', 'LA ESTRELLA', 1),
(65, '390', 'LA PINTADA', 1),
(66, '400', 'LA UNION', 1),
(67, '411', 'LIBORINA', 1),
(68, '425', 'MACEO', 1),
(69, '440', 'MARINILLA', 1),
(70, '467', 'MONTEBELLO', 1),
(71, '475', 'MURINDO', 1),
(72, '480', 'MUTATA', 1),
(73, '483', 'NARIÑO', 1),
(74, '490', 'NECOCLI', 1),
(75, '495', 'NECHI', 1),
(76, '501', 'OLAYA', 1),
(77, '541', 'PEÐOL', 1),
(78, '543', 'PEQUE', 1),
(79, '576', 'PUEBLORRICO', 1),
(80, '579', 'PUERTO BERRIO', 1),
(81, '585', 'PUERTO NARE', 1),
(82, '591', 'PUERTO TRIUNFO', 1),
(83, '604', 'REMEDIOS', 1),
(84, '607', 'RETIRO', 1),
(85, '615', 'RIONEGRO', 1),
(86, '628', 'SABANALARGA', 1),
(87, '631', 'SABANETA', 1),
(88, '642', 'SALGAR', 1),
(89, '647', 'SAN ANDRES DE CUERQUIA', 1),
(90, '649', 'SAN CARLOS', 1),
(91, '652', 'SAN FRANCISCO', 1),
(92, '656', 'SAN JERONIMO', 1),
(93, '658', 'SAN JOSE DE LA MONTAÑA', 1),
(94, '659', 'SAN JUAN DE URABA', 1),
(95, '660', 'SAN LUIS', 1),
(96, '664', 'SAN PEDRO', 1),
(97, '665', 'SAN PEDRO DE URABA', 1),
(98, '667', 'SAN RAFAEL', 1),
(99, '670', 'SAN ROQUE', 1),
(100, '674', 'SAN VICENTE', 1),
(101, '679', 'SANTA BARBARA', 1),
(102, '686', 'SANTA ROSA DE OSOS', 1),
(103, '690', 'SANTO DOMINGO', 1),
(104, '697', 'EL SANTUARIO', 1),
(105, '736', 'SEGOVIA', 1),
(106, '756', 'SONSON', 1),
(107, '761', 'SOPETRAN', 1),
(108, '789', 'TAMESIS', 1),
(109, '790', 'TARAZA', 1),
(110, '792', 'TARSO', 1),
(111, '809', 'TITIRIBI', 1),
(112, '819', 'TOLEDO', 1),
(113, '837', 'TURBO', 1),
(114, '842', 'URAMITA', 1),
(115, '847', 'URRAO', 1),
(116, '854', 'VALDIVIA', 1),
(117, '856', 'VALPARAISO', 1),
(118, '858', 'VEGACHI', 1),
(119, '861', 'VENECIA', 1),
(120, '873', 'VIGIA DEL FUERTE', 1),
(121, '885', 'YALI', 1),
(122, '887', 'YARUMAL', 1),
(123, '890', 'YOLOMBO', 1),
(124, '893', 'YONDO', 1),
(125, '895', 'ZARAGOZA', 1),
(126, '001', 'BARRANQUILLA', 2),
(127, '078', 'BARANOA', 2),
(128, '137', 'CAMPO DE LA CRUZ', 2),
(129, '141', 'CANDELARIA', 2),
(130, '296', 'GALAPA', 2),
(131, '372', 'JUAN DE ACOSTA', 2),
(132, '421', 'LURUACO', 2),
(133, '433', 'MALAMBO', 2),
(134, '436', 'MANATI', 2),
(135, '520', 'PALMAR DE VARELA', 2),
(136, '549', 'PIOJO', 2),
(137, '558', 'POLONUEVO', 2),
(138, '560', 'PONEDERA', 2),
(139, '573', 'PUERTO COLOMBIA', 2),
(140, '606', 'REPELON', 2),
(141, '634', 'SABANAGRANDE', 2),
(142, '638', 'SABANALARGA', 2),
(143, '675', 'SANTA LUCIA', 2),
(144, '685', 'SANTO TOMAS', 2),
(145, '758', 'SOLEDAD', 2),
(146, '770', 'SUAN', 2),
(147, '832', 'TUBARA', 2),
(148, '849', 'USIACURI', 2),
(149, '001', 'BOGOTA, D.C.', 3),
(150, '001', 'CARTAGENA', 4),
(151, '006', 'ACHI', 4),
(152, '030', 'ALTOS DEL ROSARIO', 4),
(153, '042', 'ARENAL', 4),
(154, '052', 'ARJONA', 4),
(155, '062', 'ARROYOHONDO', 4),
(156, '074', 'BARRANCO DE LOBA', 4),
(157, '140', 'CALAMAR', 4),
(158, '160', 'CANTAGALLO', 4),
(159, '188', 'CICUCO', 4),
(160, '212', 'CORDOBA', 4),
(161, '222', 'CLEMENCIA', 4),
(162, '244', 'EL CARMEN DE BOLIVAR', 4),
(163, '248', 'EL GUAMO', 4),
(164, '268', 'EL PEÑON', 4),
(165, '300', 'HATILLO DE LOBA', 4),
(166, '430', 'MAGANGUE', 4),
(167, '433', 'MAHATES', 4),
(168, '440', 'MARGARITA', 4),
(169, '442', 'MARIA LA BAJA', 4),
(170, '458', 'MONTECRISTO', 4),
(171, '468', 'MOMPOS', 4),
(172, '490', 'NOROSI', 4),
(173, '473', 'MORALES', 4),
(174, '549', 'PINILLOS', 4),
(175, '580', 'REGIDOR', 4),
(176, '600', 'RIO VIEJO', 4),
(177, '620', 'SAN CRISTOBAL', 4),
(178, '647', 'SAN ESTANISLAO', 4),
(179, '650', 'SAN FERNANDO', 4),
(180, '654', 'SAN JACINTO', 4),
(181, '655', 'SAN JACINTO DEL CAUCA', 4),
(182, '657', 'SAN JUAN NEPOMUCENO', 4),
(183, '667', 'SAN MARTIN DE LOBA', 4),
(184, '670', 'SAN PABLO', 4),
(185, '673', 'SANTA CATALINA', 4),
(186, '683', 'SANTA ROSA', 4),
(187, '688', 'SANTA ROSA DEL SUR', 4),
(188, '744', 'SIMITI', 4),
(189, '760', 'SOPLAVIENTO', 4),
(190, '780', 'TALAIGUA NUEVO', 4),
(191, '810', 'TIQUISIO', 4),
(192, '836', 'TURBACO', 4),
(193, '838', 'TURBANA', 4),
(194, '873', 'VILLANUEVA', 4),
(195, '894', 'ZAMBRANO', 4),
(196, '001', 'TUNJA', 5),
(197, '022', 'ALMEIDA', 5),
(198, '047', 'AQUITANIA', 5),
(199, '051', 'ARCABUCO', 5),
(200, '087', 'BELEN', 5),
(201, '090', 'BERBEO', 5),
(202, '092', 'BETEITIVA', 5),
(203, '097', 'BOAVITA', 5),
(204, '104', 'BOYACA', 5),
(205, '106', 'BRICEÑO', 5),
(206, '109', 'BUENAVISTA', 5),
(207, '114', 'BUSBANZA', 5),
(208, '131', 'CALDAS', 5),
(209, '135', 'CAMPOHERMOSO', 5),
(210, '162', 'CERINZA', 5),
(211, '172', 'CHINAVITA', 5),
(212, '176', 'CHIQUINQUIRA', 5),
(213, '180', 'CHISCAS', 5),
(214, '183', 'CHITA', 5),
(215, '185', 'CHITARAQUE', 5),
(216, '187', 'CHIVATA', 5),
(217, '189', 'CIENEGA', 5),
(218, '204', 'COMBITA', 5),
(219, '212', 'COPER', 5),
(220, '215', 'CORRALES', 5),
(221, '218', 'COVARACHIA', 5),
(222, '223', 'CUBARA', 5),
(223, '224', 'CUCAITA', 5),
(224, '226', 'CUITIVA', 5),
(225, '232', 'CHIQUIZA', 5),
(226, '236', 'CHIVOR', 5),
(227, '238', 'DUITAMA', 5),
(228, '244', 'EL COCUY', 5),
(229, '248', 'EL ESPINO', 5),
(230, '272', 'FIRAVITOBA', 5),
(231, '276', 'FLORESTA', 5),
(232, '293', 'GACHANTIVA', 5),
(233, '296', 'GAMEZA', 5),
(234, '299', 'GARAGOA', 5),
(235, '317', 'GUACAMAYAS', 5),
(236, '322', 'GUATEQUE', 5),
(237, '325', 'GUAYATA', 5),
(238, '332', 'GsICAN', 5),
(239, '362', 'IZA', 5),
(240, '367', 'JENESANO', 5),
(241, '368', 'JERICO', 5),
(242, '377', 'LABRANZAGRANDE', 5),
(243, '380', 'LA CAPILLA', 5),
(244, '401', 'LA VICTORIA', 5),
(245, '403', 'LA UVITA', 5),
(246, '407', 'VILLA DE LEYVA', 5),
(247, '425', 'MACANAL', 5),
(248, '442', 'MARIPI', 5),
(249, '455', 'MIRAFLORES', 5),
(250, '464', 'MONGUA', 5),
(251, '466', 'MONGUI', 5),
(252, '469', 'MONIQUIRA', 5),
(253, '476', 'MOTAVITA', 5),
(254, '480', 'MUZO', 5),
(255, '491', 'NOBSA', 5),
(256, '494', 'NUEVO COLON', 5),
(257, '500', 'OICATA', 5),
(258, '507', 'OTANCHE', 5),
(259, '511', 'PACHAVITA', 5),
(260, '514', 'PAEZ', 5),
(261, '516', 'PAIPA', 5),
(262, '518', 'PAJARITO', 5),
(263, '522', 'PANQUEBA', 5),
(264, '531', 'PAUNA', 5),
(265, '533', 'PAYA', 5),
(266, '537', 'PAZ DE RIO', 5),
(267, '542', 'PESCA', 5),
(268, '550', 'PISBA', 5),
(269, '572', 'PUERTO BOYACA', 5),
(270, '580', 'QUIPAMA', 5),
(271, '599', 'RAMIRIQUI', 5),
(272, '600', 'RAQUIRA', 5),
(273, '621', 'RONDON', 5),
(274, '632', 'SABOYA', 5),
(275, '638', 'SACHICA', 5),
(276, '646', 'SAMACA', 5),
(277, '660', 'SAN EDUARDO', 5),
(278, '664', 'SAN JOSE DE PARE', 5),
(279, '667', 'SAN LUIS DE GACENO', 5),
(280, '673', 'SAN MATEO', 5),
(281, '676', 'SAN MIGUEL DE SEMA', 5),
(282, '681', 'SAN PABLO DE BORBUR', 5),
(283, '686', 'SANTANA', 5),
(284, '690', 'SANTA MARIA', 5),
(285, '693', 'SANTA ROSA DE VITERBO', 5),
(286, '696', 'SANTA SOFIA', 5),
(287, '720', 'SATIVANORTE', 5),
(288, '723', 'SATIVASUR', 5),
(289, '740', 'SIACHOQUE', 5),
(290, '753', 'SOATA', 5),
(291, '755', 'SOCOTA', 5),
(292, '757', 'SOCHA', 5),
(293, '759', 'SOGAMOSO', 5),
(294, '761', 'SOMONDOCO', 5),
(295, '762', 'SORA', 5),
(296, '763', 'SOTAQUIRA', 5),
(297, '764', 'SORACA', 5),
(298, '774', 'SUSACON', 5),
(299, '776', 'SUTAMARCHAN', 5),
(300, '778', 'SUTATENZA', 5),
(301, '790', 'TASCO', 5),
(302, '798', 'TENZA', 5),
(303, '804', 'TIBANA', 5),
(304, '806', 'TIBASOSA', 5),
(305, '808', 'TINJACA', 5),
(306, '810', 'TIPACOQUE', 5),
(307, '814', 'TOCA', 5),
(308, '816', 'TOGsI', 5),
(309, '820', 'TOPAGA', 5),
(310, '822', 'TOTA', 5),
(311, '832', 'TUNUNGUA', 5),
(312, '835', 'TURMEQUE', 5),
(313, '837', 'TUTA', 5),
(314, '839', 'TUTAZA', 5),
(315, '842', 'UMBITA', 5),
(316, '861', 'VENTAQUEMADA', 5),
(317, '879', 'VIRACACHA', 5),
(318, '897', 'ZETAQUIRA', 5),
(319, '001', 'MANIZALES', 6),
(320, '013', 'AGUADAS', 6),
(321, '042', 'ANSERMA', 6),
(322, '050', 'ARANZAZU', 6),
(323, '088', 'BELALCAZAR', 6),
(324, '174', 'CHINCHINA', 6),
(325, '272', 'FILADELFIA', 6),
(326, '380', 'LA DORADA', 6),
(327, '388', 'LA MERCED', 6),
(328, '433', 'MANZANARES', 6),
(329, '442', 'MARMATO', 6),
(330, '444', 'MARQUETALIA', 6),
(331, '446', 'MARULANDA', 6),
(332, '486', 'NEIRA', 6),
(333, '495', 'NORCASIA', 6),
(334, '513', 'PACORA', 6),
(335, '524', 'PALESTINA', 6),
(336, '541', 'PENSILVANIA', 6),
(337, '614', 'RIOSUCIO', 6),
(338, '616', 'RISARALDA', 6),
(339, '653', 'SALAMINA', 6),
(340, '662', 'SAMANA', 6),
(341, '665', 'SAN JOSE', 6),
(342, '777', 'SUPIA', 6),
(343, '867', 'VICTORIA', 6),
(344, '873', 'VILLAMARIA', 6),
(345, '877', 'VITERBO', 6),
(346, '001', 'FLORENCIA', 7),
(347, '029', 'ALBANIA', 7),
(348, '094', 'BELEN DE LOS ANDAQUIES', 7),
(349, '150', 'CARTAGENA DEL CHAIRA', 7),
(350, '205', 'CURILLO', 7),
(351, '247', 'EL DONCELLO', 7),
(352, '256', 'EL PAUJIL', 7),
(353, '410', 'LA MONTAÑITA', 7),
(354, '460', 'MILAN', 7),
(355, '479', 'MORELIA', 7),
(356, '592', 'PUERTO RICO', 7),
(357, '610', 'SAN JOSE DEL FRAGUA', 7),
(358, '753', 'SAN VICENTE DEL CAGUAN', 7),
(359, '756', 'SOLANO', 7),
(360, '785', 'SOLITA', 7),
(361, '860', 'VALPARAISO', 7),
(362, '001', 'POPAYAN', 8),
(363, '022', 'ALMAGUER', 8),
(364, '050', 'ARGELIA', 8),
(365, '075', 'BALBOA', 8),
(366, '100', 'BOLIVAR', 8),
(367, '110', 'BUENOS AIRES', 8),
(368, '130', 'CAJIBIO', 8),
(369, '137', 'CALDONO', 8),
(370, '142', 'CALOTO', 8),
(371, '212', 'CORINTO', 8),
(372, '256', 'EL TAMBO', 8),
(373, '290', 'FLORENCIA', 8),
(374, '300', 'GUACHENE', 8),
(375, '318', 'GUAPI', 8),
(376, '355', 'INZA', 8),
(377, '364', 'JAMBALO', 8),
(378, '392', 'LA SIERRA', 8),
(379, '397', 'LA VEGA', 8),
(380, '418', 'LOPEZ', 8),
(381, '450', 'MERCADERES', 8),
(382, '455', 'MIRANDA', 8),
(383, '473', 'MORALES', 8),
(384, '513', 'PADILLA', 8),
(385, '517', 'PAEZ', 8),
(386, '532', 'PATIA', 8),
(387, '533', 'PIAMONTE', 8),
(388, '548', 'PIENDAMO', 8),
(389, '573', 'PUERTO TEJADA', 8),
(390, '585', 'PURACE', 8),
(391, '622', 'ROSAS', 8),
(392, '693', 'SAN SEBASTIAN', 8),
(393, '698', 'SANTANDER DE QUILICHAO', 8),
(394, '701', 'SANTA ROSA', 8),
(395, '743', 'SILVIA', 8),
(396, '760', 'SOTARA', 8),
(397, '780', 'SUAREZ', 8),
(398, '785', 'SUCRE', 8),
(399, '807', 'TIMBIO', 8),
(400, '809', 'TIMBIQUI', 8),
(401, '821', 'TORIBIO', 8),
(402, '824', 'TOTORO', 8),
(403, '845', 'VILLA RICA', 8),
(404, '001', 'VALLEDUPAR', 9),
(405, '011', 'AGUACHICA', 9),
(406, '013', 'AGUSTIN CODAZZI', 9),
(407, '032', 'ASTREA', 9),
(408, '045', 'BECERRIL', 9),
(409, '060', 'BOSCONIA', 9),
(410, '175', 'CHIMICHAGUA', 9),
(411, '178', 'CHIRIGUANA', 9),
(412, '228', 'CURUMANI', 9),
(413, '238', 'EL COPEY', 9),
(414, '250', 'EL PASO', 9),
(415, '295', 'GAMARRA', 9),
(416, '310', 'GONZALEZ', 9),
(417, '383', 'LA GLORIA', 9),
(418, '400', 'LA JAGUA DE IBIRICO', 9),
(419, '443', 'MANAURE', 9),
(420, '517', 'PAILITAS', 9),
(421, '550', 'PELAYA', 9),
(422, '570', 'PUEBLO BELLO', 9),
(423, '614', 'RIO DE ORO', 9),
(424, '621', 'LA PAZ', 9),
(425, '710', 'SAN ALBERTO', 9),
(426, '750', 'SAN DIEGO', 9),
(427, '770', 'SAN MARTIN', 9),
(428, '787', 'TAMALAMEQUE', 9),
(429, '001', 'MONTERIA', 10),
(430, '068', 'AYAPEL', 10),
(431, '079', 'BUENAVISTA', 10),
(432, '090', 'CANALETE', 10),
(433, '162', 'CERETE', 10),
(434, '168', 'CHIMA', 10),
(435, '182', 'CHINU', 10),
(436, '189', 'CIENAGA DE ORO', 10),
(437, '300', 'COTORRA', 10),
(438, '350', 'LA APARTADA', 10),
(439, '417', 'LORICA', 10),
(440, '419', 'LOS CORDOBAS', 10),
(441, '464', 'MOMIL', 10),
(442, '466', 'MONTELIBANO', 10),
(443, '500', 'MOÑITOS', 10),
(444, '555', 'PLANETA RICA', 10),
(445, '570', 'PUEBLO NUEVO', 10),
(446, '574', 'PUERTO ESCONDIDO', 10),
(447, '580', 'PUERTO LIBERTADOR', 10),
(448, '586', 'PURISIMA', 10),
(449, '660', 'SAHAGUN', 10),
(450, '670', 'SAN ANDRES SOTAVENTO', 10),
(451, '672', 'SAN ANTERO', 10),
(452, '675', 'SAN BERNARDO DEL VIENTO', 10),
(453, '678', 'SAN CARLOS', 10),
(454, '686', 'SAN PELAYO', 10),
(455, '807', 'TIERRALTA', 10),
(456, '855', 'VALENCIA', 10),
(457, '001', 'AGUA DE DIOS', 11),
(458, '019', 'ALBAN', 11),
(459, '035', 'ANAPOIMA', 11),
(460, '040', 'ANOLAIMA', 11),
(461, '053', 'ARBELAEZ', 11),
(462, '086', 'BELTRAN', 11),
(463, '095', 'BITUIMA', 11),
(464, '099', 'BOJACA', 11),
(465, '120', 'CABRERA', 11),
(466, '123', 'CACHIPAY', 11),
(467, '126', 'CAJICA', 11),
(468, '148', 'CAPARRAPI', 11),
(469, '151', 'CAQUEZA', 11),
(470, '154', 'CARMEN DE CARUPA', 11),
(471, '168', 'CHAGUANI', 11),
(472, '175', 'CHIA', 11),
(473, '178', 'CHIPAQUE', 11),
(474, '181', 'CHOACHI', 11),
(475, '183', 'CHOCONTA', 11),
(476, '200', 'COGUA', 11),
(477, '214', 'COTA', 11),
(478, '224', 'CUCUNUBA', 11),
(479, '245', 'EL COLEGIO', 11),
(480, '258', 'EL PEÑON', 11),
(481, '260', 'EL ROSAL', 11),
(482, '269', 'FACATATIVA', 11),
(483, '279', 'FOMEQUE', 11),
(484, '281', 'FOSCA', 11),
(485, '286', 'FUNZA', 11),
(486, '288', 'FUQUENE', 11),
(487, '290', 'FUSAGASUGA', 11),
(488, '293', 'GACHALA', 11),
(489, '295', 'GACHANCIPA', 11),
(490, '297', 'GACHETA', 11),
(491, '299', 'GAMA', 11),
(492, '307', 'GIRARDOT', 11),
(493, '312', 'GRANADA', 11),
(494, '317', 'GUACHETA', 11),
(495, '320', 'GUADUAS', 11),
(496, '322', 'GUASCA', 11),
(497, '324', 'GUATAQUI', 11),
(498, '326', 'GUATAVITA', 11),
(499, '328', 'GUAYABAL DE SIQUIMA', 11),
(500, '335', 'GUAYABETAL', 11),
(501, '339', 'GUTIERREZ', 11),
(502, '368', 'JERUSALEN', 11),
(503, '372', 'JUNIN', 11),
(504, '377', 'LA CALERA', 11),
(505, '386', 'LA MESA', 11),
(506, '394', 'LA PALMA', 11),
(507, '398', 'LA PEÑA', 11),
(508, '402', 'LA VEGA', 11),
(509, '407', 'LENGUAZAQUE', 11),
(510, '426', 'MACHETA', 11),
(511, '430', 'MADRID', 11),
(512, '436', 'MANTA', 11),
(513, '438', 'MEDINA', 11),
(514, '473', 'MOSQUERA', 11),
(515, '483', 'NARIÑO', 11),
(516, '486', 'NEMOCON', 11),
(517, '488', 'NILO', 11),
(518, '489', 'NIMAIMA', 11),
(519, '491', 'NOCAIMA', 11),
(520, '506', 'VENECIA', 11),
(521, '513', 'PACHO', 11),
(522, '518', 'PAIME', 11),
(523, '524', 'PANDI', 11),
(524, '530', 'PARATEBUENO', 11),
(525, '535', 'PASCA', 11),
(526, '572', 'PUERTO SALGAR', 11),
(527, '580', 'PULI', 11),
(528, '592', 'QUEBRADANEGRA', 11),
(529, '594', 'QUETAME', 11),
(530, '596', 'QUIPILE', 11),
(531, '599', 'APULO', 11),
(532, '612', 'RICAURTE', 11),
(533, '645', 'SAN ANTONIO DEL TEQUENDAMA', 11),
(534, '649', 'SAN BERNARDO', 11),
(535, '653', 'SAN CAYETANO', 11),
(536, '658', 'SAN FRANCISCO', 11),
(537, '662', 'SAN JUAN DE RIO SECO', 11),
(538, '718', 'SASAIMA', 11),
(539, '736', 'SESQUILE', 11),
(540, '740', 'SIBATE', 11),
(541, '743', 'SILVANIA', 11),
(542, '745', 'SIMIJACA', 11),
(543, '754', 'SOACHA', 11),
(544, '758', 'SOPO', 11),
(545, '769', 'SUBACHOQUE', 11),
(546, '772', 'SUESCA', 11),
(547, '777', 'SUPATA', 11),
(548, '779', 'SUSA', 11),
(549, '781', 'SUTATAUSA', 11),
(550, '785', 'TABIO', 11),
(551, '793', 'TAUSA', 11),
(552, '797', 'TENA', 11),
(553, '799', 'TENJO', 11),
(554, '805', 'TIBACUY', 11),
(555, '807', 'TIBIRITA', 11),
(556, '815', 'TOCAIMA', 11),
(557, '817', 'TOCANCIPA', 11),
(558, '823', 'TOPAIPI', 11),
(559, '839', 'UBALA', 11),
(560, '841', 'UBAQUE', 11),
(561, '843', 'VILLA DE SAN DIEGO DE UBATE', 11),
(562, '845', 'UNE', 11),
(563, '851', 'UTICA', 11),
(564, '862', 'VERGARA', 11),
(565, '867', 'VIANI', 11),
(566, '871', 'VILLAGOMEZ', 11),
(567, '873', 'VILLAPINZON', 11),
(568, '875', 'VILLETA', 11),
(569, '878', 'VIOTA', 11),
(570, '885', 'YACOPI', 11),
(571, '898', 'ZIPACON', 11),
(572, '899', 'ZIPAQUIRA', 11),
(573, '001', 'QUIBDO', 12),
(574, '006', 'ACANDI', 12),
(575, '025', 'ALTO BAUDO', 12),
(576, '050', 'ATRATO', 12),
(577, '073', 'BAGADO', 12),
(578, '075', 'BAHIA SOLANO', 12),
(579, '077', 'BAJO BAUDO', 12),
(580, '099', 'BOJAYA', 12),
(581, '135', 'EL CANTON DEL SAN PABLO', 12),
(582, '150', 'CARMEN DEL DARIEN', 12),
(583, '160', 'CERTEGUI', 12),
(584, '205', 'CONDOTO', 12),
(585, '245', 'EL CARMEN DE ATRATO', 12),
(586, '250', 'EL LITORAL DEL SAN JUAN', 12),
(587, '361', 'ISTMINA', 12),
(588, '372', 'JURADO', 12),
(589, '413', 'LLORO', 12),
(590, '425', 'MEDIO ATRATO', 12),
(591, '430', 'MEDIO BAUDO', 12),
(592, '450', 'MEDIO SAN JUAN', 12),
(593, '491', 'NOVITA', 12),
(594, '495', 'NUQUI', 12),
(595, '580', 'RIO IRO', 12),
(596, '600', 'RIO QUITO', 12),
(597, '615', 'RIOSUCIO', 12),
(598, '660', 'SAN JOSE DEL PALMAR', 12),
(599, '745', 'SIPI', 12),
(600, '787', 'TADO', 12),
(601, '800', 'UNGUIA', 12),
(602, '810', 'UNION PANAMERICANA', 12),
(603, '001', 'NEIVA', 13),
(604, '006', 'ACEVEDO', 13),
(605, '013', 'AGRADO', 13),
(606, '016', 'AIPE', 13),
(607, '020', 'ALGECIRAS', 13),
(608, '026', 'ALTAMIRA', 13),
(609, '078', 'BARAYA', 13),
(610, '132', 'CAMPOALEGRE', 13),
(611, '206', 'COLOMBIA', 13),
(612, '244', 'ELIAS', 13),
(613, '298', 'GARZON', 13),
(614, '306', 'GIGANTE', 13),
(615, '319', 'GUADALUPE', 13),
(616, '349', 'HOBO', 13),
(617, '357', 'IQUIRA', 13),
(618, '359', 'ISNOS', 13),
(619, '378', 'LA ARGENTINA', 13),
(620, '396', 'LA PLATA', 13),
(621, '483', 'NATAGA', 13),
(622, '503', 'OPORAPA', 13),
(623, '518', 'PAICOL', 13),
(624, '524', 'PALERMO', 13),
(625, '530', 'PALESTINA', 13),
(626, '548', 'PITAL', 13),
(627, '551', 'PITALITO', 13),
(628, '615', 'RIVERA', 13),
(629, '660', 'SALADOBLANCO', 13),
(630, '668', 'SAN AGUSTIN', 13),
(631, '676', 'SANTA MARIA', 13),
(632, '770', 'SUAZA', 13),
(633, '791', 'TARQUI', 13),
(634, '797', 'TESALIA', 13),
(635, '799', 'TELLO', 13),
(636, '801', 'TERUEL', 13),
(637, '807', 'TIMANA', 13),
(638, '872', 'VILLAVIEJA', 13),
(639, '885', 'YAGUARA', 13),
(640, '001', 'RIOHACHA', 14),
(641, '035', 'ALBANIA', 14),
(642, '078', 'BARRANCAS', 14),
(643, '090', 'DIBULLA', 14),
(644, '098', 'DISTRACCION', 14),
(645, '110', 'EL MOLINO', 14),
(646, '279', 'FONSECA', 14),
(647, '378', 'HATONUEVO', 14),
(648, '420', 'LA JAGUA DEL PILAR', 14),
(649, '430', 'MAICAO', 14),
(650, '560', 'MANAURE', 14),
(651, '650', 'SAN JUAN DEL CESAR', 14),
(652, '847', 'URIBIA', 14),
(653, '855', 'URUMITA', 14),
(654, '874', 'VILLANUEVA', 14),
(655, '001', 'SANTA MARTA', 15),
(656, '030', 'ALGARROBO', 15),
(657, '053', 'ARACATACA', 15),
(658, '058', 'ARIGUANI', 15),
(659, '161', 'CERRO SAN ANTONIO', 15),
(660, '170', 'CHIBOLO', 15),
(661, '189', 'CIENAGA', 15),
(662, '205', 'CONCORDIA', 15),
(663, '245', 'EL BANCO', 15),
(664, '258', 'EL PIÑON', 15),
(665, '268', 'EL RETEN', 15),
(666, '288', 'FUNDACION', 15),
(667, '318', 'GUAMAL', 15),
(668, '460', 'NUEVA GRANADA', 15),
(669, '541', 'PEDRAZA', 15),
(670, '545', 'PIJIÑO DEL CARMEN', 15),
(671, '551', 'PIVIJAY', 15),
(672, '555', 'PLATO', 15),
(673, '570', 'PUEBLOVIEJO', 15),
(674, '605', 'REMOLINO', 15),
(675, '660', 'SABANAS DE SAN ANGEL', 15),
(676, '675', 'SALAMINA', 15),
(677, '692', 'SAN SEBASTIAN DE BUENAVISTA', 15),
(678, '703', 'SAN ZENON', 15),
(679, '707', 'SANTA ANA', 15),
(680, '720', 'SANTA BARBARA DE PINTO', 15),
(681, '745', 'SITIONUEVO', 15),
(682, '798', 'TENERIFE', 15),
(683, '960', 'ZAPAYAN', 15),
(684, '980', 'ZONA BANANERA', 15),
(685, '001', 'VILLAVICENCIO', 16),
(686, '006', 'ACACIAS', 16),
(687, '110', 'BARRANCA DE UPIA', 16),
(688, '124', 'CABUYARO', 16),
(689, '150', 'CASTILLA LA NUEVA', 16),
(690, '223', 'CUBARRAL', 16),
(691, '226', 'CUMARAL', 16),
(692, '245', 'EL CALVARIO', 16),
(693, '251', 'EL CASTILLO', 16),
(694, '270', 'EL DORADO', 16),
(695, '287', 'FUENTE DE ORO', 16),
(696, '313', 'GRANADA', 16),
(697, '318', 'GUAMAL', 16),
(698, '325', 'MAPIRIPAN', 16),
(699, '330', 'MESETAS', 16),
(700, '350', 'LA MACARENA', 16),
(701, '370', 'URIBE', 16),
(702, '400', 'LEJANIAS', 16),
(703, '450', 'PUERTO CONCORDIA', 16),
(704, '568', 'PUERTO GAITAN', 16),
(705, '573', 'PUERTO LOPEZ', 16),
(706, '577', 'PUERTO LLERAS', 16),
(707, '590', 'PUERTO RICO', 16),
(708, '606', 'RESTREPO', 16),
(709, '680', 'SAN CARLOS DE GUAROA', 16),
(710, '683', 'SAN JUAN DE ARAMA', 16),
(711, '686', 'SAN JUANITO', 16),
(712, '689', 'SAN MARTIN', 16),
(713, '711', 'VISTAHERMOSA', 16),
(714, '001', 'PASTO', 17),
(715, '019', 'ALBAN', 17),
(716, '022', 'ALDANA', 17),
(717, '036', 'ANCUYA', 17),
(718, '051', 'ARBOLEDA', 17),
(719, '079', 'BARBACOAS', 17),
(720, '083', 'BELEN', 17),
(721, '110', 'BUESACO', 17),
(722, '203', 'COLON', 17),
(723, '207', 'CONSACA', 17),
(724, '210', 'CONTADERO', 17),
(725, '215', 'CORDOBA', 17),
(726, '224', 'CUASPUD', 17),
(727, '227', 'CUMBAL', 17),
(728, '233', 'CUMBITARA', 17),
(729, '240', 'CHACHAGsI', 17),
(730, '250', 'EL CHARCO', 17),
(731, '254', 'EL PEÑOL', 17),
(732, '256', 'EL ROSARIO', 17),
(733, '258', 'EL TABLON DE GOMEZ', 17),
(734, '260', 'EL TAMBO', 17),
(735, '287', 'FUNES', 17),
(736, '317', 'GUACHUCAL', 17),
(737, '320', 'GUAITARILLA', 17),
(738, '323', 'GUALMATAN', 17),
(739, '352', 'ILES', 17),
(740, '354', 'IMUES', 17),
(741, '356', 'IPIALES', 17),
(742, '378', 'LA CRUZ', 17),
(743, '381', 'LA FLORIDA', 17),
(744, '385', 'LA LLANADA', 17),
(745, '390', 'LA TOLA', 17),
(746, '399', 'LA UNION', 17),
(747, '405', 'LEIVA', 17),
(748, '411', 'LINARES', 17),
(749, '418', 'LOS ANDES', 17),
(750, '427', 'MAGsI', 17),
(751, '435', 'MALLAMA', 17),
(752, '473', 'MOSQUERA', 17),
(753, '480', 'NARIÑO', 17),
(754, '490', 'OLAYA HERRERA', 17),
(755, '506', 'OSPINA', 17),
(756, '520', 'FRANCISCO PIZARRO', 17),
(757, '540', 'POLICARPA', 17),
(758, '560', 'POTOSI', 17),
(759, '565', 'PROVIDENCIA', 17),
(760, '573', 'PUERRES', 17),
(761, '585', 'PUPIALES', 17),
(762, '612', 'RICAURTE', 17),
(763, '621', 'ROBERTO PAYAN', 17),
(764, '678', 'SAMANIEGO', 17),
(765, '683', 'SANDONA', 17),
(766, '685', 'SAN BERNARDO', 17),
(767, '687', 'SAN LORENZO', 17),
(768, '693', 'SAN PABLO', 17),
(769, '694', 'SAN PEDRO DE CARTAGO', 17),
(770, '696', 'SANTA BARBARA', 17),
(771, '699', 'SANTACRUZ', 17),
(772, '720', 'SAPUYES', 17),
(773, '786', 'TAMINANGO', 17),
(774, '788', 'TANGUA', 17),
(775, '835', 'SAN ANDRES DE TUMACO', 17),
(776, '838', 'TUQUERRES', 17),
(777, '885', 'YACUANQUER', 17),
(778, '001', 'CUCUTA', 18),
(779, '003', 'ABREGO', 18),
(780, '051', 'ARBOLEDAS', 18),
(781, '099', 'BOCHALEMA', 18),
(782, '109', 'BUCARASICA', 18),
(783, '125', 'CACOTA', 18),
(784, '128', 'CACHIRA', 18),
(785, '172', 'CHINACOTA', 18),
(786, '174', 'CHITAGA', 18),
(787, '206', 'CONVENCION', 18),
(788, '223', 'CUCUTILLA', 18),
(789, '239', 'DURANIA', 18),
(790, '245', 'EL CARMEN', 18),
(791, '250', 'EL TARRA', 18),
(792, '261', 'EL ZULIA', 18),
(793, '313', 'GRAMALOTE', 18),
(794, '344', 'HACARI', 18),
(795, '347', 'HERRAN', 18),
(796, '377', 'LABATECA', 18),
(797, '385', 'LA ESPERANZA', 18),
(798, '398', 'LA PLAYA', 18),
(799, '405', 'LOS PATIOS', 18),
(800, '418', 'LOURDES', 18),
(801, '480', 'MUTISCUA', 18),
(802, '498', 'OCAÑA', 18),
(803, '518', 'PAMPLONA', 18),
(804, '520', 'PAMPLONITA', 18),
(805, '553', 'PUERTO SANTANDER', 18),
(806, '599', 'RAGONVALIA', 18),
(807, '660', 'SALAZAR', 18),
(808, '670', 'SAN CALIXTO', 18),
(809, '673', 'SAN CAYETANO', 18),
(810, '680', 'SANTIAGO', 18),
(811, '720', 'SARDINATA', 18),
(812, '743', 'SILOS', 18),
(813, '800', 'TEORAMA', 18),
(814, '810', 'TIBU', 18),
(815, '820', 'TOLEDO', 18),
(816, '871', 'VILLA CARO', 18),
(817, '874', 'VILLA DEL ROSARIO', 18),
(818, '001', 'ARMENIA', 19),
(819, '111', 'BUENAVISTA', 19),
(820, '130', 'CALARCA', 19),
(821, '190', 'CIRCASIA', 19),
(822, '212', 'CORDOBA', 19),
(823, '272', 'FILANDIA', 19),
(824, '302', 'GENOVA', 19),
(825, '401', 'LA TEBAIDA', 19),
(826, '470', 'MONTENEGRO', 19),
(827, '548', 'PIJAO', 19),
(828, '594', 'QUIMBAYA', 19),
(829, '690', 'SALENTO', 19),
(830, '001', 'PEREIRA', 20),
(831, '045', 'APIA', 20),
(832, '075', 'BALBOA', 20),
(833, '088', 'BELEN DE UMBRIA', 20),
(834, '170', 'DOSQUEBRADAS', 20),
(835, '318', 'GUATICA', 20),
(836, '383', 'LA CELIA', 20),
(837, '400', 'LA VIRGINIA', 20),
(838, '440', 'MARSELLA', 20),
(839, '456', 'MISTRATO', 20),
(840, '572', 'PUEBLO RICO', 20),
(841, '594', 'QUINCHIA', 20),
(842, '682', 'SANTA ROSA DE CABAL', 20),
(843, '687', 'SANTUARIO', 20),
(844, '001', 'BUCARAMANGA', 21),
(845, '013', 'AGUADA', 21),
(846, '020', 'ALBANIA', 21),
(847, '051', 'ARATOCA', 21),
(848, '077', 'BARBOSA', 21),
(849, '079', 'BARICHARA', 21),
(850, '081', 'BARRANCABERMEJA', 21),
(851, '092', 'BETULIA', 21),
(852, '101', 'BOLIVAR', 21),
(853, '121', 'CABRERA', 21),
(854, '132', 'CALIFORNIA', 21),
(855, '147', 'CAPITANEJO', 21),
(856, '152', 'CARCASI', 21),
(857, '160', 'CEPITA', 21),
(858, '162', 'CERRITO', 21),
(859, '167', 'CHARALA', 21),
(860, '169', 'CHARTA', 21),
(861, '176', 'CHIMA', 21),
(862, '179', 'CHIPATA', 21),
(863, '190', 'CIMITARRA', 21),
(864, '207', 'CONCEPCION', 21),
(865, '209', 'CONFINES', 21),
(866, '211', 'CONTRATACION', 21),
(867, '217', 'COROMORO', 21),
(868, '229', 'CURITI', 21),
(869, '235', 'EL CARMEN DE CHUCURI', 21),
(870, '245', 'EL GUACAMAYO', 21),
(871, '250', 'EL PEÑON', 21),
(872, '255', 'EL PLAYON', 21),
(873, '264', 'ENCINO', 21),
(874, '266', 'ENCISO', 21),
(875, '271', 'FLORIAN', 21),
(876, '276', 'FLORIDABLANCA', 21),
(877, '296', 'GALAN', 21),
(878, '298', 'GAMBITA', 21),
(879, '307', 'GIRON', 21),
(880, '318', 'GUACA', 21),
(881, '320', 'GUADALUPE', 21),
(882, '322', 'GUAPOTA', 21),
(883, '324', 'GUAVATA', 21),
(884, '327', 'GsEPSA', 21),
(885, '344', 'HATO', 21),
(886, '368', 'JESUS MARIA', 21),
(887, '370', 'JORDAN', 21),
(888, '377', 'LA BELLEZA', 21),
(889, '385', 'LANDAZURI', 21),
(890, '397', 'LA PAZ', 21),
(891, '406', 'LEBRIJA', 21),
(892, '418', 'LOS SANTOS', 21),
(893, '425', 'MACARAVITA', 21),
(894, '432', 'MALAGA', 21),
(895, '444', 'MATANZA', 21),
(896, '464', 'MOGOTES', 21),
(897, '468', 'MOLAGAVITA', 21),
(898, '498', 'OCAMONTE', 21),
(899, '500', 'OIBA', 21),
(900, '502', 'ONZAGA', 21),
(901, '522', 'PALMAR', 21),
(902, '524', 'PALMAS DEL SOCORRO', 21),
(903, '533', 'PARAMO', 21),
(904, '547', 'PIEDECUESTA', 21),
(905, '549', 'PINCHOTE', 21),
(906, '572', 'PUENTE NACIONAL', 21),
(907, '573', 'PUERTO PARRA', 21),
(908, '575', 'PUERTO WILCHES', 21),
(909, '615', 'RIONEGRO', 21),
(910, '655', 'SABANA DE TORRES', 21),
(911, '669', 'SAN ANDRES', 21),
(912, '673', 'SAN BENITO', 21),
(913, '679', 'SAN GIL', 21),
(914, '682', 'SAN JOAQUIN', 21),
(915, '684', 'SAN JOSE DE MIRANDA', 21),
(916, '686', 'SAN MIGUEL', 21),
(917, '689', 'SAN VICENTE DE CHUCURI', 21),
(918, '705', 'SANTA BARBARA', 21),
(919, '720', 'SANTA HELENA DEL OPON', 21),
(920, '745', 'SIMACOTA', 21),
(921, '755', 'SOCORRO', 21),
(922, '770', 'SUAITA', 21),
(923, '773', 'SUCRE', 21),
(924, '780', 'SURATA', 21),
(925, '820', 'TONA', 21),
(926, '855', 'VALLE DE SAN JOSE', 21),
(927, '861', 'VELEZ', 21),
(928, '867', 'VETAS', 21),
(929, '872', 'VILLANUEVA', 21),
(930, '895', 'ZAPATOCA', 21),
(931, '001', 'SINCELEJO', 22),
(932, '110', 'BUENAVISTA', 22),
(933, '124', 'CAIMITO', 22),
(934, '204', 'COLOSO', 22),
(935, '215', 'COROZAL', 22),
(936, '221', 'COVEÑAS', 22),
(937, '230', 'CHALAN', 22),
(938, '233', 'EL ROBLE', 22),
(939, '235', 'GALERAS', 22),
(940, '265', 'GUARANDA', 22),
(941, '400', 'LA UNION', 22),
(942, '418', 'LOS PALMITOS', 22),
(943, '429', 'MAJAGUAL', 22),
(944, '473', 'MORROA', 22),
(945, '508', 'OVEJAS', 22),
(946, '523', 'PALMITO', 22),
(947, '670', 'SAMPUES', 22),
(948, '678', 'SAN BENITO ABAD', 22),
(949, '702', 'SAN JUAN DE BETULIA', 22),
(950, '708', 'SAN MARCOS', 22),
(951, '713', 'SAN ONOFRE', 22),
(952, '717', 'SAN PEDRO', 22),
(953, '742', 'SAN LUIS DE SINCE', 22),
(954, '771', 'SUCRE', 22),
(955, '820', 'SANTIAGO DE TOLU', 22),
(956, '823', 'TOLU VIEJO', 22),
(957, '001', 'IBAGUE', 23),
(958, '024', 'ALPUJARRA', 23),
(959, '026', 'ALVARADO', 23),
(960, '030', 'AMBALEMA', 23),
(961, '043', 'ANZOATEGUI', 23),
(962, '055', 'ARMERO', 23),
(963, '067', 'ATACO', 23),
(964, '124', 'CAJAMARCA', 23),
(965, '148', 'CARMEN DE APICALA', 23),
(966, '152', 'CASABIANCA', 23),
(967, '168', 'CHAPARRAL', 23),
(968, '200', 'COELLO', 23),
(969, '217', 'COYAIMA', 23),
(970, '226', 'CUNDAY', 23),
(971, '236', 'DOLORES', 23),
(972, '268', 'ESPINAL', 23),
(973, '270', 'FALAN', 23),
(974, '275', 'FLANDES', 23),
(975, '283', 'FRESNO', 23),
(976, '319', 'GUAMO', 23),
(977, '347', 'HERVEO', 23),
(978, '349', 'HONDA', 23),
(979, '352', 'ICONONZO', 23),
(980, '408', 'LERIDA', 23),
(981, '411', 'LIBANO', 23),
(982, '443', 'MARIQUITA', 23),
(983, '449', 'MELGAR', 23),
(984, '461', 'MURILLO', 23),
(985, '483', 'NATAGAIMA', 23),
(986, '504', 'ORTEGA', 23),
(987, '520', 'PALOCABILDO', 23),
(988, '547', 'PIEDRAS', 23),
(989, '555', 'PLANADAS', 23),
(990, '563', 'PRADO', 23),
(991, '585', 'PURIFICACION', 23),
(992, '616', 'RIOBLANCO', 23),
(993, '622', 'RONCESVALLES', 23),
(994, '624', 'ROVIRA', 23),
(995, '671', 'SALDAÑA', 23),
(996, '675', 'SAN ANTONIO', 23),
(997, '678', 'SAN LUIS', 23),
(998, '686', 'SANTA ISABEL', 23),
(999, '770', 'SUAREZ', 23),
(1000, '854', 'VALLE DE SAN JUAN', 23),
(1001, '861', 'VENADILLO', 23),
(1002, '870', 'VILLAHERMOSA', 23),
(1003, '873', 'VILLARRICA', 23),
(1004, '001', 'CALI', 24),
(1005, '020', 'ALCALA', 24),
(1006, '036', 'ANDALUCIA', 24),
(1007, '041', 'ANSERMANUEVO', 24),
(1008, '054', 'ARGELIA', 24),
(1009, '100', 'BOLIVAR', 24),
(1010, '109', 'BUENAVENTURA', 24),
(1011, '111', 'GUADALAJARA DE BUGA', 24),
(1012, '113', 'BUGALAGRANDE', 24),
(1013, '122', 'CAICEDONIA', 24),
(1014, '126', 'CALIMA', 24),
(1015, '130', 'CANDELARIA', 24),
(1016, '147', 'CARTAGO', 24),
(1017, '233', 'DAGUA', 24),
(1018, '243', 'EL AGUILA', 24),
(1019, '246', 'EL CAIRO', 24),
(1020, '248', 'EL CERRITO', 24),
(1021, '250', 'EL DOVIO', 24),
(1022, '275', 'FLORIDA', 24),
(1023, '306', 'GINEBRA', 24),
(1024, '318', 'GUACARI', 24),
(1025, '364', 'JAMUNDI', 24),
(1026, '377', 'LA CUMBRE', 24),
(1027, '400', 'LA UNION', 24),
(1028, '403', 'LA VICTORIA', 24),
(1029, '497', 'OBANDO', 24),
(1030, '520', 'PALMIRA', 24),
(1031, '563', 'PRADERA', 24),
(1032, '606', 'RESTREPO', 24),
(1033, '616', 'RIOFRIO', 24),
(1034, '622', 'ROLDANILLO', 24),
(1035, '670', 'SAN PEDRO', 24),
(1036, '736', 'SEVILLA', 24),
(1037, '823', 'TORO', 24),
(1038, '828', 'TRUJILLO', 24),
(1039, '834', 'TULUA', 24),
(1040, '845', 'ULLOA', 24),
(1041, '863', 'VERSALLES', 24),
(1042, '869', 'VIJES', 24),
(1043, '890', 'YOTOCO', 24),
(1044, '892', 'YUMBO', 24),
(1045, '895', 'ZARZAL', 24),
(1046, '001', 'ARAUCA', 25),
(1047, '065', 'ARAUQUITA', 25),
(1048, '220', 'CRAVO NORTE', 25),
(1049, '300', 'FORTUL', 25),
(1050, '591', 'PUERTO RONDON', 25),
(1051, '736', 'SARAVENA', 25),
(1052, '794', 'TAME', 25),
(1053, '001', 'YOPAL', 26),
(1054, '010', 'AGUAZUL', 26),
(1055, '015', 'CHAMEZA', 26),
(1056, '125', 'HATO COROZAL', 26),
(1057, '136', 'LA SALINA', 26),
(1058, '139', 'MANI', 26),
(1059, '162', 'MONTERREY', 26),
(1060, '225', 'NUNCHIA', 26),
(1061, '230', 'OROCUE', 26),
(1062, '250', 'PAZ DE ARIPORO', 26),
(1063, '263', 'PORE', 26),
(1064, '279', 'RECETOR', 26),
(1065, '300', 'SABANALARGA', 26),
(1066, '315', 'SACAMA', 26),
(1067, '325', 'SAN LUIS DE PALENQUE', 26),
(1068, '400', 'TAMARA', 26),
(1069, '410', 'TAURAMENA', 26),
(1070, '430', 'TRINIDAD', 26),
(1071, '440', 'VILLANUEVA', 26),
(1072, '001', 'MOCOA', 27),
(1073, '219', 'COLON', 27),
(1074, '320', 'ORITO', 27),
(1075, '568', 'PUERTO ASIS', 27),
(1076, '569', 'PUERTO CAICEDO', 27),
(1077, '571', 'PUERTO GUZMAN', 27),
(1078, '573', 'LEGUIZAMO', 27),
(1079, '749', 'SIBUNDOY', 27),
(1080, '755', 'SAN FRANCISCO', 27),
(1081, '757', 'SAN MIGUEL', 27),
(1082, '760', 'SANTIAGO', 27),
(1083, '865', 'VALLE DEL GUAMUEZ', 27),
(1084, '885', 'VILLAGARZON', 27),
(1085, '001', 'SAN ANDRES', 28),
(1086, '564', 'PROVIDENCIA', 28),
(1087, '001', 'LETICIA', 29),
(1088, '263', 'EL ENCANTO', 29),
(1089, '405', 'LA CHORRERA', 29),
(1090, '407', 'LA PEDRERA', 29),
(1091, '430', 'LA VICTORIA', 29),
(1092, '460', 'MIRITI - PARANA', 29),
(1093, '530', 'PUERTO ALEGRIA', 29),
(1094, '536', 'PUERTO ARICA', 29),
(1095, '540', 'PUERTO NARIÑO', 29),
(1096, '669', 'PUERTO SANTANDER', 29),
(1097, '798', 'TARAPACA', 29),
(1098, '001', 'INIRIDA', 30),
(1099, '343', 'BARRANCO MINAS', 30),
(1100, '663', 'MAPIRIPANA', 30),
(1101, '883', 'SAN FELIPE', 30),
(1102, '884', 'PUERTO COLOMBIA', 30),
(1103, '885', 'LA GUADALUPE', 30),
(1104, '886', 'CACAHUAL', 30),
(1105, '887', 'PANA PANA', 30),
(1106, '888', 'MORICHAL', 30),
(1107, '001', 'SAN JOSE DEL GUAVIARE', 31),
(1108, '015', 'CALAMAR', 31),
(1109, '025', 'EL RETORNO', 31),
(1110, '200', 'MIRAFLORES', 31),
(1111, '001', 'MITU', 32),
(1112, '161', 'CARURU', 32),
(1113, '666', 'TARAIRA', 32),
(1114, '777', 'PAPUNAUA', 32),
(1115, '889', 'YAVARATE', 32),
(1116, '001', 'PUERTO CARREÑO', 33),
(1117, '524', 'LA PRIMAVERA', 33),
(1118, '624', 'SANTA ROSALIA', 33),
(1119, '773', 'CUMARIBO', 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_condicionsexual`
--

CREATE TABLE IF NOT EXISTS `beneficiario_condicionsexual` (
`id` int(11) NOT NULL,
  `condicion` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_condicionsexual`
--

INSERT INTO `beneficiario_condicionsexual` (`id`, `condicion`) VALUES
(1, 'Heterosexual'),
(2, 'Lesbiana/Gay'),
(3, 'Bisexual'),
(4, 'Transexual'),
(5, 'Intersexual'),
(6, 'No sabe/No responde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_departamento`
--

CREATE TABLE IF NOT EXISTS `beneficiario_departamento` (
`id` int(11) NOT NULL,
  `codigo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `departamento` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_departamento`
--

INSERT INTO `beneficiario_departamento` (`id`, `codigo`, `departamento`) VALUES
(1, '05', 'ANTIOQUIA'),
(2, '08', 'ATLANTICO'),
(3, '11', 'BOGOTA'),
(4, '13', 'BOLIVAR'),
(5, '15', 'BOYACA'),
(6, '17', 'CALDAS'),
(7, '18', 'CAQUETA'),
(8, '19', 'CAUCA'),
(9, '20', 'CESAR'),
(10, '23', 'CORDOBA'),
(11, '25', 'CUNDINAMARCA'),
(12, '27', 'CHOCO'),
(13, '41', 'HUILA'),
(14, '44', 'LA GUAJIRA'),
(15, '47', 'MAGDALENA'),
(16, '50', 'META'),
(17, '52', 'NARIÑO'),
(18, '54', 'N. DE SANTANDER'),
(19, '63', 'QUINDIO'),
(20, '66', 'RISARALDA'),
(21, '68', 'SANTANDER'),
(22, '70', 'SUCRE'),
(23, '73', 'TOLIMA'),
(24, '76', 'VALLE DEL CAUCA'),
(25, '81', 'ARAUCA'),
(26, '85', 'CASANARE'),
(27, '86', 'PUTUMAYO'),
(28, '88', 'SAN ANDRES'),
(29, '91', 'AMAZONAS'),
(30, '94', 'GUAINIA'),
(31, '95', 'GUAVIARE'),
(32, '97', 'VAUPES'),
(33, '99', 'VICHADA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_discapacidad`
--

CREATE TABLE IF NOT EXISTS `beneficiario_discapacidad` (
`id` int(11) NOT NULL,
  `discapacidad` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_discapacidad`
--

INSERT INTO `beneficiario_discapacidad` (`id`, `discapacidad`) VALUES
(1, 'Fisica'),
(2, 'Mental'),
(3, 'Intelectual/Cognitica'),
(4, 'Sensorial'),
(5, 'Multiple'),
(6, 'No Definida'),
(7, 'Ninguno'),
(8, 'No Sabe/No Responde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_discapacidaddetalle`
--

CREATE TABLE IF NOT EXISTS `beneficiario_discapacidaddetalle` (
`id` int(11) NOT NULL,
  `discapacidad` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_discapacidaddetalle`
--

INSERT INTO `beneficiario_discapacidaddetalle` (`id`, `discapacidad`) VALUES
(1, 'Ceguera total'),
(2, 'Sordera total'),
(3, 'Mudez'),
(4, 'Dificultad para moverse o caminar por sí mismo'),
(5, 'Dificultad para bañarse, vestirse, alimentarse por sí mismo'),
(6, 'Dificultad para salir a la calle sin ayuda o compañia'),
(7, 'Dificultad para entender o aprender'),
(8, 'Ninguna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_enfoquediferencial`
--

CREATE TABLE IF NOT EXISTS `beneficiario_enfoquediferencial` (
`id` int(11) NOT NULL,
  `codigo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `enfoque` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_eps`
--

CREATE TABLE IF NOT EXISTS `beneficiario_eps` (
`id` int(11) NOT NULL,
  `codigo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `eps` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_eps`
--

INSERT INTO `beneficiario_eps` (`id`, `codigo`, `eps`) VALUES
(1, '', 'Convida'),
(2, '', 'Saludvida'),
(3, '', 'Caprecom'),
(4, '', 'Famisanar'),
(5, '', 'Nueva EPS'),
(6, '', 'Cafesalud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_estadocivil`
--

CREATE TABLE IF NOT EXISTS `beneficiario_estadocivil` (
`id` int(11) NOT NULL,
  `codigo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `estadoCivil` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_estadocivil`
--

INSERT INTO `beneficiario_estadocivil` (`id`, `codigo`, `estadoCivil`) VALUES
(1, '', 'Soltero(a)'),
(2, '', 'Casado(a)'),
(3, '', 'Union libre'),
(4, '', 'Separado(a) o divorciado'),
(5, '', 'Viudo(a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_etnia`
--

CREATE TABLE IF NOT EXISTS `beneficiario_etnia` (
`id` int(11) NOT NULL,
  `etnia` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_etnia`
--

INSERT INTO `beneficiario_etnia` (`id`, `etnia`) VALUES
(1, 'Indígena'),
(2, 'Rom (gitano)'),
(3, 'Raizal del archipiélago de san Andres y providencia'),
(4, 'Palanquero de San Basilio'),
(5, 'Negro(a), mulato(a), afro colombiano(a) o afro descendiente'),
(6, 'Otras etnias'),
(7, 'Ninguno'),
(8, 'No definido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_hechobeneficiario`
--

CREATE TABLE IF NOT EXISTS `beneficiario_hechobeneficiario` (
`id` int(11) NOT NULL,
  `beneficiario_id` int(11) NOT NULL,
  `hecho_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_hechobeneficiario`
--

INSERT INTO `beneficiario_hechobeneficiario` (`id`, `beneficiario_id`, `hecho_id`) VALUES
(8, 1, 2),
(9, 9, 7),
(10, 2, 2),
(11, 3, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_hechovictimizante`
--

CREATE TABLE IF NOT EXISTS `beneficiario_hechovictimizante` (
`id` int(11) NOT NULL,
  `codigo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `hecho` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_hechovictimizante`
--

INSERT INTO `beneficiario_hechovictimizante` (`id`, `codigo`, `hecho`) VALUES
(1, 'A', 'Acto Terrorista/Atentados/Combates/Enfrentamientos/Hostigamientos'),
(2, 'B', 'Amenaza'),
(3, 'C', 'Delitos contra la libertad y la integridad sexual en desarrollo del conflicto armado'),
(4, 'D', 'Desaparición forzada'),
(5, 'E', 'Homicidio'),
(6, 'F', 'Masacre'),
(7, 'G', 'Mina antipersonal, Munición sin explotar y artefacto explosivo improvisado'),
(8, 'H', 'Secuestro'),
(9, 'I', 'Tortura'),
(10, 'J', 'Vinculación de niños, niñas y adolescentes a actividades relacionadas con grupos armados'),
(11, 'K', 'Abandono o despojo forzado de tierras'),
(12, 'L', 'Desplazamiento Forzado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_hogar`
--

CREATE TABLE IF NOT EXISTS `beneficiario_hogar` (
`id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `cabezaHogar_id` int(11) NOT NULL,
  `ciudadResidencia_id` int(11) DEFAULT NULL,
  `zonaPredio` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `barrio` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `materialVivienda_id` int(11) DEFAULT NULL,
  `materialPiso_id` int(11) DEFAULT NULL,
  `estratoPredio` int(11) DEFAULT NULL,
  `basura_id` int(11) DEFAULT NULL,
  `cuartos` smallint(6) DEFAULT NULL,
  `grupos` smallint(6) DEFAULT NULL,
  `cuartosOcupa` smallint(6) DEFAULT NULL,
  `cuartosDuerme` smallint(6) DEFAULT NULL,
  `inodoro` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `ubicaInodoro` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usoInodoro` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cantidadInodoro` smallint(6) DEFAULT NULL,
  `ducha` tinyint(1) DEFAULT NULL,
  `origenAgua` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diasAgua` smallint(6) DEFAULT NULL,
  `horasAgua` smallint(6) DEFAULT NULL,
  `preparar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cocina` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `combustibleCocina` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `alumbrado` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `stelefono` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `totalPersonas` smallint(6) DEFAULT NULL,
  `tipoVivienda_id` int(11) DEFAULT NULL,
  `fechaResidencia` date,
  `ocupaVivienda_id` int(11) DEFAULT NULL,
  `continuoAgua` tinyint(1),
  `llegaAgua` tinyint(1),
  `recibo` varchar(100) COLLATE utf8_unicode_ci,
  `certificado` varchar(100) COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_hogar`
--

INSERT INTO `beneficiario_hogar` (`id`, `codigo`, `cabezaHogar_id`, `ciudadResidencia_id`, `zonaPredio`, `direccion`, `barrio`, `materialVivienda_id`, `materialPiso_id`, `estratoPredio`, `basura_id`, `cuartos`, `grupos`, `cuartosOcupa`, `cuartosDuerme`, `inodoro`, `ubicaInodoro`, `usoInodoro`, `cantidadInodoro`, `ducha`, `origenAgua`, `diasAgua`, `horasAgua`, `preparar`, `cocina`, `combustibleCocina`, `alumbrado`, `stelefono`, `totalPersonas`, `tipoVivienda_id`, `fechaResidencia`, `ocupaVivienda_id`, `continuoAgua`, `llegaAgua`, `recibo`, `certificado`) VALUES
(3, 1070593028, 1, 489, 'R', 'calle 10 # 54-32', 'San antonio', 5, 2, 3, 3, 2, 1, 2, 1, 'Inodoro con conexión a alcantarillado', 'Dentro de la unidad de vivienda', 'Del uso exclusivo del hogar', 1, 1, 'Acueducto', 5, 3, 'En un espacio NO exclusivo para cocinar', 'Del uso exclusivo del hogar', 'Gas natural domiciliario', 'Solar, bioenergía, otros', 'De uso exclusivo del hogar', 5, 4, '2003-03-15', 2, 0, 0, 'archivos/rp1070593028_Chwrjwt.pdf', 'archivos/ct1070593028_nBY5DlL.pdf'),
(4, 99883321, 9, 152, 'R', 'caasdasd', 'sdaasdads', 4, 4, 3, 5, 2, 1, 2, 1, '2', '2', '1', 1, 0, '1', 1, 1, '2', '1', '3', '1', '2', 4, 4, '2002-08-14', 3, 0, 0, NULL, NULL),
(5, 222222, 10, 149, 'R', 'ggr', 'retre', 4, 4, 2, 5, 1, 2, 3, 3, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', NULL, 2, '2001-05-16', 2, NULL, NULL, NULL, NULL),
(6, 123, 11, NULL, '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_hogar_bienes`
--

CREATE TABLE IF NOT EXISTS `beneficiario_hogar_bienes` (
`id` int(11) NOT NULL,
  `hogar_id` int(11) NOT NULL,
  `bienes_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_hogar_bienes`
--

INSERT INTO `beneficiario_hogar_bienes` (`id`, `hogar_id`, `bienes_id`) VALUES
(26, 3, 1),
(27, 3, 2),
(28, 3, 3),
(29, 3, 4),
(30, 3, 6),
(31, 3, 8),
(32, 3, 9),
(33, 3, 10),
(3, 4, 2),
(4, 4, 5),
(5, 4, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_hogar_servicioPublico`
--

CREATE TABLE IF NOT EXISTS `beneficiario_hogar_servicioPublico` (
`id` int(11) NOT NULL,
  `hogar_id` int(11) NOT NULL,
  `serviciopublico_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_hogar_servicioPublico`
--

INSERT INTO `beneficiario_hogar_servicioPublico` (`id`, `hogar_id`, `serviciopublico_id`) VALUES
(1, 3, 1),
(3, 3, 3),
(5, 3, 5),
(6, 4, 1),
(7, 4, 2),
(8, 4, 6),
(9, 5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_institucioneducativa`
--

CREATE TABLE IF NOT EXISTS `beneficiario_institucioneducativa` (
`id` int(11) NOT NULL,
  `codigo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `institucion` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `tipoEstablecimiento_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_institucioneducativa`
--

INSERT INTO `beneficiario_institucioneducativa` (`id`, `codigo`, `institucion`, `tipoEstablecimiento_id`) VALUES
(3, '', 'Escuela Normal Superior Maria Auxiliadora', 4),
(4, '', 'Maria Montesori', 5),
(5, '', 'Nuestra señora del pilar', 5),
(6, '', 'Universidad de cundinamarca', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_materialpared`
--

CREATE TABLE IF NOT EXISTS `beneficiario_materialpared` (
`id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `material` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_materialpared`
--

INSERT INTO `beneficiario_materialpared` (`id`, `codigo`, `material`) VALUES
(1, 0, 'Sin paredes'),
(2, 1, 'Bloque, ladrillo,piedra,madera pulida'),
(3, 2, 'Tapia pisada, adobe'),
(4, 3, 'Bahareque'),
(5, 4, 'Material prefabricado'),
(6, 5, 'Madera burda, tabla, tablón'),
(7, 6, 'Guadua, caña, esterilla, otro vegetal'),
(8, 7, 'Zinc, tela, cartón, latas, desechos, plásticos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_materialpiso`
--

CREATE TABLE IF NOT EXISTS `beneficiario_materialpiso` (
`id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `material` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_materialpiso`
--

INSERT INTO `beneficiario_materialpiso` (`id`, `codigo`, `material`) VALUES
(1, 1, 'Alfombra o tapete, mármol, parqué, madera pulida y lacada'),
(2, 2, 'Baldosa, vinilo, tableta o ladrillo'),
(3, 3, 'Cemento o gravilla'),
(4, 4, 'Madera burda, madera en mal estado, tabla o tablón'),
(5, 5, 'Tierra o arena'),
(6, 6, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_niveleducativo`
--

CREATE TABLE IF NOT EXISTS `beneficiario_niveleducativo` (
`id` int(11) NOT NULL,
  `codigo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `nivel` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_niveleducativo`
--

INSERT INTO `beneficiario_niveleducativo` (`id`, `codigo`, `nivel`) VALUES
(1, '', 'Ninguno'),
(2, '', 'Preescolar (1°-3°)'),
(3, '', 'Básica primaria (1°-5°)'),
(4, '', 'Básica secundaria (6°-9°)'),
(5, '', 'Media (10°-13°)'),
(6, '', 'Superior o universitaria(Años aprobados de 0°-15°)'),
(7, '', 'No sabe, no informa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_ocupacion`
--

CREATE TABLE IF NOT EXISTS `beneficiario_ocupacion` (
`id` int(11) NOT NULL,
  `ocupacion` varchar(90) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_ocupavivienda`
--

CREATE TABLE IF NOT EXISTS `beneficiario_ocupavivienda` (
`id` int(11) NOT NULL,
  `ocupaVivienda` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_ocupavivienda`
--

INSERT INTO `beneficiario_ocupavivienda` (`id`, `ocupaVivienda`) VALUES
(1, 'Propietario Pagada'),
(2, 'Propietario Pagando'),
(3, 'Arrendatario CON contrato escrito'),
(4, 'Arrendatario SIN contrato escrito'),
(5, 'Usufructo'),
(6, 'Invasor'),
(7, 'Poseedor'),
(8, 'Otro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_parentesco`
--

CREATE TABLE IF NOT EXISTS `beneficiario_parentesco` (
`id` int(11) NOT NULL,
  `codigo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `parentesco` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_parentesco`
--

INSERT INTO `beneficiario_parentesco` (`id`, `codigo`, `parentesco`) VALUES
(1, '', 'Jefe(a)'),
(2, '', 'Conyugue o compañera(o)'),
(3, '', 'Hijo(a)-Hijastro(a)'),
(4, '', 'Padre o madre - Padrastro o madrastra'),
(5, '', 'Hermano(a) - Hermanastro(a)'),
(6, '', 'Nieto(a)'),
(7, '', 'Yerno o nuera'),
(8, '', 'Abuelo(a)'),
(9, '', 'Suegro(a)'),
(10, '', 'Tio(a)'),
(11, '', 'Sobrino(a)'),
(12, '', 'Primo(a)'),
(13, '', 'Cuñado(a)'),
(14, '', 'Otro pariente del jefe'),
(15, '', 'Otros no parientes'),
(16, '', 'Servicio doméstico o cuidandero '),
(17, '', 'Pariente servicio doméstico o cuidandero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_perfil`
--

CREATE TABLE IF NOT EXISTS `beneficiario_perfil` (
`id` int(11) NOT NULL,
  `perfil` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_profesion`
--

CREATE TABLE IF NOT EXISTS `beneficiario_profesion` (
`id` int(11) NOT NULL,
  `profesion` varchar(90) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_profesion`
--

INSERT INTO `beneficiario_profesion` (`id`, `profesion`, `codigo`) VALUES
(1, 'Administrador de Empresas', '2'),
(2, 'Administrador Financiero', '12345'),
(3, 'Contador', '3456'),
(4, 'Estudiante', ''),
(5, 'Ingeniero Civil', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_regimen`
--

CREATE TABLE IF NOT EXISTS `beneficiario_regimen` (
`id` int(11) NOT NULL,
  `codigo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `regimen` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_regimen`
--

INSERT INTO `beneficiario_regimen` (`id`, `codigo`, `regimen`) VALUES
(1, '', 'Contributivo'),
(2, '', 'Subsidiado'),
(3, '', 'Vinculado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_serviciopublico`
--

CREATE TABLE IF NOT EXISTS `beneficiario_serviciopublico` (
`id` int(11) NOT NULL,
  `codigo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `servicioPublico` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_serviciopublico`
--

INSERT INTO `beneficiario_serviciopublico` (`id`, `codigo`, `servicioPublico`) VALUES
(1, '', 'Energía eléctrica'),
(2, '', 'Alcantarillado'),
(3, '', 'Gas natural domiciliario'),
(4, '', 'Teléfono'),
(5, '', 'Recolección de basura'),
(6, '', 'Acueducto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_tipodocumento`
--

CREATE TABLE IF NOT EXISTS `beneficiario_tipodocumento` (
`id` int(11) NOT NULL,
  `codigo` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_tipodocumento`
--

INSERT INTO `beneficiario_tipodocumento` (`id`, `codigo`, `tipo`) VALUES
(1, 'RC', 'Registro civil'),
(2, 'TI', 'Tarjeta de Identidad'),
(3, 'CC', 'Cédula de ciudadanía'),
(4, 'CE', 'Cédula de extranjería'),
(5, 'AS', 'Adulto Sin Identificar'),
(6, 'MS', 'Menor Sin Identificar'),
(7, 'RN', 'Recien Nacido'),
(8, 'PA', 'Pasaporte'),
(9, 'LM', 'Libreta Militar'),
(10, 'AD', 'Acta de Defunción'),
(11, 'DE', 'Documento Extranjero'),
(12, 'CD', 'Carnét Diplomatico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_tipoestablecimiento`
--

CREATE TABLE IF NOT EXISTS `beneficiario_tipoestablecimiento` (
`id` int(11) NOT NULL,
  `codigo` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_tipoestablecimiento`
--

INSERT INTO `beneficiario_tipoestablecimiento` (`id`, `codigo`, `tipo`) VALUES
(1, '', 'Centros de atención u hogares ICBF'),
(2, '', 'Guardería, salacuna, preescolar, jardín infantil público'),
(3, '', 'Guardería, salacuna, preescolar, jardín infantil privado'),
(4, '', 'Escuela, colegio, técnico universitario o universidad prública'),
(5, '', 'Escuela, colegio, técnico universitario o universidad privada'),
(6, '', 'SENA'),
(7, '', 'Secundaria técnica pública'),
(8, '', 'Secundaria técnica privada'),
(9, '', 'Ninguno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_tipovivienda`
--

CREATE TABLE IF NOT EXISTS `beneficiario_tipovivienda` (
`id` int(11) NOT NULL,
  `codigo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `tipoVivienda` varchar(60) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `beneficiario_tipovivienda`
--

INSERT INTO `beneficiario_tipovivienda` (`id`, `codigo`, `tipoVivienda`) VALUES
(1, '1', 'Casa'),
(2, '2', 'Apartamento'),
(3, '3', 'Cuarto(s) en inquilinato u otro tipo de estructura'),
(4, '4', 'Albergue'),
(5, '5', 'Otra Vivienda'),
(6, '6', 'Casa Indigena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `beneficiario_usuario`
--

CREATE TABLE IF NOT EXISTS `beneficiario_usuario` (
`id` int(11) NOT NULL,
  `nombreUno` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nombreDos` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellidoUno` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `apellidoDos` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `imagen` longtext COLLATE utf8_unicode_ci NOT NULL,
  `perfil_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
`id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
`id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(2, 'auth', 'user'),
(36, 'beneficiario', 'actividadmes'),
(41, 'beneficiario', 'basura'),
(25, 'beneficiario', 'beneficiario'),
(31, 'beneficiario', 'bienes'),
(43, 'beneficiario', 'carnet'),
(24, 'beneficiario', 'ciudad'),
(21, 'beneficiario', 'condicionsexual'),
(23, 'beneficiario', 'departamento'),
(19, 'beneficiario', 'discapacidad'),
(38, 'beneficiario', 'discapacidaddetalle'),
(7, 'beneficiario', 'enfoquediferencial'),
(8, 'beneficiario', 'eps'),
(9, 'beneficiario', 'estadocivil'),
(17, 'beneficiario', 'etnia'),
(37, 'beneficiario', 'hechobeneficiario'),
(10, 'beneficiario', 'hechovictimizante'),
(33, 'beneficiario', 'hogar'),
(11, 'beneficiario', 'institucioneducativa'),
(39, 'beneficiario', 'materialpared'),
(42, 'beneficiario', 'materialpiso'),
(12, 'beneficiario', 'niveleducativo'),
(29, 'beneficiario', 'ocupacion'),
(27, 'beneficiario', 'ocupavivienda'),
(22, 'beneficiario', 'parentesco'),
(16, 'beneficiario', 'perfil'),
(28, 'beneficiario', 'profesion'),
(13, 'beneficiario', 'regimen'),
(32, 'beneficiario', 'serviciopublico'),
(20, 'beneficiario', 'tipodocumento'),
(35, 'beneficiario', 'tipoestablecimiento'),
(14, 'beneficiario', 'tipovivienda'),
(15, 'beneficiario', 'usuario'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
`id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2016-11-04 04:50:50'),
(2, 'auth', '0001_initial', '2016-11-04 04:50:52'),
(3, 'admin', '0001_initial', '2016-11-04 04:50:53'),
(4, 'admin', '0002_logentry_remove_auto_add', '2016-11-04 04:50:53'),
(5, 'contenttypes', '0002_remove_content_type_name', '2016-11-04 04:50:53'),
(6, 'auth', '0002_alter_permission_name_max_length', '2016-11-04 04:50:53'),
(7, 'auth', '0003_alter_user_email_max_length', '2016-11-04 04:50:53'),
(8, 'auth', '0004_alter_user_username_opts', '2016-11-04 04:50:53'),
(9, 'auth', '0005_alter_user_last_login_null', '2016-11-04 04:50:54'),
(10, 'auth', '0006_require_contenttypes_0002', '2016-11-04 04:50:54'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2016-11-04 04:50:54'),
(12, 'auth', '0008_alter_user_username_max_length', '2016-11-04 04:50:54'),
(13, 'beneficiario', '0001_initial', '2016-11-04 04:50:59'),
(14, 'sessions', '0001_initial', '2016-11-04 04:50:59'),
(15, 'beneficiario', '0002_beneficiario_tipovivienda', '2016-11-10 16:54:04'),
(16, 'beneficiario', '0003_auto_20161110_1716', '2016-11-10 17:16:40'),
(17, 'beneficiario', '0004_grupohogar', '2016-11-12 01:24:03'),
(18, 'beneficiario', '0005_auto_20161113_1626', '2016-11-13 16:27:06'),
(19, 'beneficiario', '0006_ocupavivienda', '2016-11-13 16:39:57'),
(20, 'beneficiario', '0007_auto_20161117_0250', '2016-11-17 02:50:52'),
(21, 'beneficiario', '0008_auto_20161117_1838', '2016-11-17 18:38:47'),
(22, 'beneficiario', '0009_auto_20161119_2207', '2016-11-19 22:07:43'),
(23, 'beneficiario', '0010_auto_20161120_1525', '2016-11-20 15:25:55'),
(24, 'beneficiario', '0011_auto_20161120_1554', '2016-11-20 15:54:37'),
(25, 'beneficiario', '0012_auto_20161120_1808', '2016-11-20 18:08:36'),
(26, 'beneficiario', '0013_auto_20161120_1823', '2016-11-20 18:23:14'),
(27, 'beneficiario', '0014_auto_20161120_1824', '2016-11-20 18:24:28'),
(28, 'beneficiario', '0015_auto_20161120_2036', '2016-11-20 20:36:14'),
(29, 'beneficiario', '0016_auto_20161121_1124', '2016-11-21 11:24:47'),
(30, 'beneficiario', '0017_auto_20161121_1212', '2016-11-21 12:12:11'),
(31, 'beneficiario', '0018_auto_20161121_1822', '2016-11-21 18:22:38'),
(32, 'beneficiario', '0019_auto_20161205_0244', '2016-12-05 02:44:09'),
(33, 'beneficiario', '0020_auto_20161206_0351', '2016-12-06 03:51:47'),
(34, 'beneficiario', '0021_beneficiario_documentocabeza', '2017-01-09 17:00:21'),
(35, 'beneficiario', '0022_beneficiario_cabeza', '2017-01-09 17:02:55'),
(36, 'beneficiario', '0023_auto_20170109_1955', '2017-01-09 19:55:55'),
(37, 'beneficiario', '0024_auto_20170114_2108', '2017-01-14 21:08:12'),
(38, 'beneficiario', '0025_auto_20170114_2110', '2017-01-14 21:10:31'),
(39, 'beneficiario', '0026_auto_20170114_2123', '2017-01-14 21:23:17'),
(40, 'beneficiario', '0027_auto_20170114_2202', '2017-01-14 22:02:12'),
(41, 'beneficiario', '0028_auto_20170114_2205', '2017-01-14 22:05:10'),
(42, 'beneficiario', '0029_auto_20170114_2209', '2017-01-14 22:10:08'),
(43, 'beneficiario', '0030_auto_20170114_2211', '2017-01-14 22:11:49'),
(44, 'beneficiario', '0031_auto_20170114_2226', '2017-01-14 22:27:00'),
(45, 'beneficiario', '0032_auto_20170114_2255', '2017-01-14 22:55:24'),
(46, 'beneficiario', '0033_auto_20170119_2126', '2017-01-19 21:27:03'),
(47, 'beneficiario', '0034_auto_20170120_1600', '2017-01-20 16:00:13'),
(48, 'beneficiario', '0035_auto_20170120_1623', '2017-01-20 16:23:59'),
(49, 'beneficiario', '0036_auto_20170219_1621', '2017-02-19 16:22:05'),
(50, 'beneficiario', '0037_auto_20170219_1928', '2017-02-19 19:28:30'),
(51, 'beneficiario', '0038_auto_20170220_0118', '2017-02-20 01:18:27'),
(52, 'beneficiario', '0039_auto_20170222_0319', '2017-02-22 03:19:21'),
(53, 'beneficiario', '0040_beneficiario_extranjero', '2017-02-25 14:32:55'),
(54, 'beneficiario', '0041_beneficiario_pagaotro', '2017-02-25 14:36:33'),
(55, 'beneficiario', '0042_auto_20170225_1438', '2017-02-25 14:38:38'),
(56, 'beneficiario', '0043_auto_20170225_1612', '2017-02-25 16:12:36'),
(57, 'beneficiario', '0044_auto_20170225_1619', '2017-02-25 16:19:39'),
(58, 'beneficiario', '0045_beneficiario_tservicio', '2017-02-26 21:27:49'),
(59, 'beneficiario', '0046_beneficiario_detdiscacidad', '2017-02-26 22:08:13'),
(60, 'beneficiario', '0047_beneficiario_embarazo', '2017-02-26 23:00:46'),
(61, 'beneficiario', '0048_auto_20170228_0027', '2017-02-28 00:28:10'),
(62, 'beneficiario', '0049_delete_ingresos', '2017-02-28 00:28:10'),
(63, 'beneficiario', '0050_auto_20170228_2241', '2017-02-28 22:42:03'),
(64, 'beneficiario', '0051_beneficiario_ultimoano', '2017-03-03 02:33:53'),
(65, 'beneficiario', '0052_auto_20170303_0256', '2017-03-03 02:57:03'),
(66, 'beneficiario', '0053_auto_20170304_1508', '2017-03-04 15:09:01'),
(67, 'beneficiario', '0053_actividadmes', '2017-03-04 15:28:13'),
(68, 'beneficiario', '0054_remove_beneficiario_trabajaactualmente', '2017-03-04 15:37:12'),
(69, 'beneficiario', '0055_auto_20170304_1531', '2017-03-04 15:37:13'),
(70, 'beneficiario', '0056_auto_20170304_1533', '2017-03-04 15:37:13'),
(71, 'beneficiario', '0057_auto_20170304_1535', '2017-03-04 15:37:13'),
(72, 'beneficiario', '0058_actividadmes_codigo', '2017-03-04 15:38:45'),
(73, 'beneficiario', '0059_beneficiario_semanas', '2017-03-04 15:51:47'),
(74, 'beneficiario', '0060_profesion_codigo', '2017-03-04 16:26:59'),
(75, 'beneficiario', '0061_auto_20170305_0427', '2017-03-05 04:27:30'),
(76, 'beneficiario', '0062_auto_20170305_1922', '2017-03-05 19:22:23'),
(77, 'beneficiario', '0063_beneficiario_percibe', '2017-03-05 19:40:18'),
(78, 'beneficiario', '0064_auto_20170314_0205', '2017-03-14 02:05:30'),
(79, 'beneficiario', '0065_auto_20170315_0112', '2017-03-15 01:20:01'),
(80, 'beneficiario', '0066_hechobeneficiario', '2017-03-15 01:20:01'),
(81, 'beneficiario', '0067_auto_20170315_0119', '2017-03-15 01:20:01'),
(82, 'beneficiario', '0068_hechovictimizante_beneficiarios', '2017-03-15 01:23:25'),
(83, 'beneficiario', '0069_remove_hechovictimizante_beneficiarios', '2017-03-15 02:31:18'),
(84, 'beneficiario', '0070_hechobeneficiario', '2017-03-15 02:34:00'),
(85, 'beneficiario', '0071_auto_20170316_0305', '2017-03-16 03:07:16'),
(86, 'beneficiario', '0072_auto_20170316_0319', '2017-03-16 03:19:27'),
(87, 'beneficiario', '0073_auto_20170316_0327', '2017-03-16 03:28:02'),
(88, 'beneficiario', '0074_auto_20170316_0333', '2017-03-16 03:34:06'),
(89, 'beneficiario', '0075_auto_20170316_0342', '2017-03-16 03:42:24'),
(90, 'beneficiario', '0076_auto_20170316_0407', '2017-03-16 04:07:38'),
(91, 'beneficiario', '0077_auto_20170316_0422', '2017-03-16 04:22:45'),
(92, 'beneficiario', '0078_auto_20170322_0131', '2017-03-22 01:31:49'),
(93, 'beneficiario', '0079_auto_20170322_0133', '2017-03-22 01:33:16'),
(94, 'beneficiario', '0080_auto_20170322_0133', '2017-03-22 01:34:01'),
(95, 'beneficiario', '0081_auto_20170322_0134', '2017-03-22 01:34:51'),
(96, 'beneficiario', '0082_hogar_cabezahogar', '2017-03-22 01:41:23'),
(97, 'beneficiario', '0083_auto_20170322_2230', '2017-03-22 22:30:27'),
(98, 'beneficiario', '0084_auto_20170322_2319', '2017-03-22 23:21:48'),
(99, 'beneficiario', '0083_auto_20170322_2332', '2017-03-22 23:32:33'),
(100, 'beneficiario', '0084_auto_20170323_0059', '2017-03-23 00:59:48'),
(101, 'beneficiario', '0085_auto_20170323_0101', '2017-03-23 01:01:19'),
(102, 'beneficiario', '0086_auto_20170323_0228', '2017-03-23 02:28:26'),
(103, 'beneficiario', '0087_remove_hogar_cabezahogar', '2017-03-23 02:29:04'),
(104, 'beneficiario', '0088_hogar_cabezahogar', '2017-03-23 02:29:19'),
(105, 'beneficiario', '0089_remove_hogar_materialpiso', '2017-03-23 02:37:12'),
(106, 'beneficiario', '0090_hogar_materialpiso', '2017-03-23 02:37:34'),
(107, 'beneficiario', '0091_auto_20170323_0332', '2017-03-23 03:32:23'),
(108, 'beneficiario', '0092_auto_20170324_0317', '2017-03-24 03:17:13'),
(109, 'beneficiario', '0093_auto_20170325_1541', '2017-03-25 15:41:45'),
(110, 'beneficiario', '0094_auto_20170406_0209', '2017-04-06 02:09:32'),
(111, 'beneficiario', '0095_carnet', '2017-04-07 01:59:42'),
(112, 'beneficiario', '0096_auto_20170525_1829', '2017-05-25 18:29:40'),
(113, 'beneficiario', '0097_hogar_certificado', '2017-05-26 01:44:14'),
(114, 'beneficiario', '0098_carnet_grupo', '2017-05-28 22:43:22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4qeegnbxkz968pz1nivpxrhm8kbw2xkv', 'Nzg0MWY5OGM2Yzc5Y2IxYmU1MzA1NmQ3OWY4NDQzNTJmZDQ5YTZjNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJjZDU5ZGUyZjhhNTc4ZTI5ODBmN2I0NzJiMzdiN2Y3NGMxN2E0ZmJkIn0=', '2016-11-18 04:53:36'),
('avaqpzhmsan52cq48yhz9zafsw2iwr5v', 'Nzg0MWY5OGM2Yzc5Y2IxYmU1MzA1NmQ3OWY4NDQzNTJmZDQ5YTZjNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJjZDU5ZGUyZjhhNTc4ZTI5ODBmN2I0NzJiMzdiN2Y3NGMxN2E0ZmJkIn0=', '2016-12-03 16:24:24'),
('hpfbc4t5btdulufanhr3bgikvmxkkewx', 'ZjM2MGY5YjRlMjM4YTNlNzgzZGQ4YmRiOTQ3OGI0ZWI4MzEzMDEwMjp7fQ==', '2017-03-19 03:42:36');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`), ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`), ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`), ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indices de la tabla `beneficiario_actividadmes`
--
ALTER TABLE `beneficiario_actividadmes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_basura`
--
ALTER TABLE `beneficiario_basura`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_beneficiario`
--
ALTER TABLE `beneficiario_beneficiario`
 ADD PRIMARY KEY (`id`), ADD KEY `beneficiario_beneficiario_e1a1fc92` (`condicionSexual_id`), ADD KEY `beneficiario_beneficiario_90196f6b` (`discapacidad_id`), ADD KEY `beneficiario_beneficiario_fb5894db` (`parentesco_id`), ADD KEY `beneficiario_beneficiario_0bf1249e` (`perteneciaEtnica_id`), ADD KEY `beneficiario_beneficiario_3880e02f` (`tipoDocumento_id`), ADD KEY `beneficiario_beneficiario_25f4f9fd` (`eps_id`), ADD KEY `beneficiario_beneficiario_ea90e121` (`estadoCivil_id`), ADD KEY `beneficiario_beneficiario_62371164` (`institucionEducativa_id`), ADD KEY `beneficiario_beneficiario_a014564e` (`nivelEducativo_id`), ADD KEY `beneficiario_beneficiario_3253ae86` (`ciudadProcedencia_id`), ADD KEY `beneficiario_beneficiario_8ae4d529` (`regimen_id`), ADD KEY `beneficiario_beneficiario_1c2075ad` (`ciudadPredio_id`), ADD KEY `beneficiario_beneficiario_3486f628` (`ciudadDeclara_id`), ADD KEY `beneficiario_beneficiario_f4701cc2` (`ocupacion_id`), ADD KEY `beneficiario_beneficiario_9df21200` (`profesion_id`), ADD KEY `beneficiario_beneficiario_0904553d` (`actividadMes_id`), ADD KEY `beneficiario_beneficiario_detDiscacidad_id_a814dd42_uniq` (`detDiscapacidad_id`);

--
-- Indices de la tabla `beneficiario_bienes`
--
ALTER TABLE `beneficiario_bienes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_carnet`
--
ALTER TABLE `beneficiario_carnet`
 ADD PRIMARY KEY (`id`), ADD KEY `benefic_beneficiario_id_c06c9f6c_fk_beneficiario_beneficiario_id` (`beneficiario_id`);

--
-- Indices de la tabla `beneficiario_ciudad`
--
ALTER TABLE `beneficiario_ciudad`
 ADD PRIMARY KEY (`id`), ADD KEY `beneficiario_ciudad_f5acfb16` (`departamento_id`);

--
-- Indices de la tabla `beneficiario_condicionsexual`
--
ALTER TABLE `beneficiario_condicionsexual`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_departamento`
--
ALTER TABLE `beneficiario_departamento`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_discapacidad`
--
ALTER TABLE `beneficiario_discapacidad`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_discapacidaddetalle`
--
ALTER TABLE `beneficiario_discapacidaddetalle`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_enfoquediferencial`
--
ALTER TABLE `beneficiario_enfoquediferencial`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_eps`
--
ALTER TABLE `beneficiario_eps`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_estadocivil`
--
ALTER TABLE `beneficiario_estadocivil`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_etnia`
--
ALTER TABLE `beneficiario_etnia`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_hechobeneficiario`
--
ALTER TABLE `beneficiario_hechobeneficiario`
 ADD PRIMARY KEY (`id`), ADD KEY `beneficia_hecho_id_e9a59fd6_fk_beneficiario_hechovictimizante_id` (`hecho_id`), ADD KEY `beneficiario_id` (`beneficiario_id`);

--
-- Indices de la tabla `beneficiario_hechovictimizante`
--
ALTER TABLE `beneficiario_hechovictimizante`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_hogar`
--
ALTER TABLE `beneficiario_hogar`
 ADD PRIMARY KEY (`id`), ADD KEY `beneficiario_hogar_79db7503` (`tipoVivienda_id`), ADD KEY `beneficia_ciudadResidencia_id_c3f0dd6b_fk_beneficiario_ciudad_id` (`ciudadResidencia_id`), ADD KEY `beneficiario_hogar_materialVivienda_id_ee0b7c36_uniq` (`materialVivienda_id`), ADD KEY `beneficiario_hogar_basura_id_e184021e_uniq` (`basura_id`), ADD KEY `beneficiario_hogar_753e57df` (`cabezaHogar_id`), ADD KEY `beneficiario_hogar_596c7e28` (`materialPiso_id`), ADD KEY `beneficiario_hogar_ae65fc53` (`ocupaVivienda_id`);

--
-- Indices de la tabla `beneficiario_hogar_bienes`
--
ALTER TABLE `beneficiario_hogar_bienes`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `beneficiario_hogar_bienes_hogar_id_8c1c072b_uniq` (`hogar_id`,`bienes_id`), ADD KEY `beneficiario_hogar__bienes_id_e315607a_fk_beneficiario_bienes_id` (`bienes_id`);

--
-- Indices de la tabla `beneficiario_hogar_servicioPublico`
--
ALTER TABLE `beneficiario_hogar_servicioPublico`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `beneficiario_hogar_servicioPublico_hogar_id_55306f59_uniq` (`hogar_id`,`serviciopublico_id`), ADD KEY `b_serviciopublico_id_1b4d2946_fk_beneficiario_serviciopublico_id` (`serviciopublico_id`);

--
-- Indices de la tabla `beneficiario_institucioneducativa`
--
ALTER TABLE `beneficiario_institucioneducativa`
 ADD PRIMARY KEY (`id`), ADD KEY `beneficiario_institucioneducativa_af4ce2c2` (`tipoEstablecimiento_id`);

--
-- Indices de la tabla `beneficiario_materialpared`
--
ALTER TABLE `beneficiario_materialpared`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_materialpiso`
--
ALTER TABLE `beneficiario_materialpiso`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_niveleducativo`
--
ALTER TABLE `beneficiario_niveleducativo`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_ocupacion`
--
ALTER TABLE `beneficiario_ocupacion`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_ocupavivienda`
--
ALTER TABLE `beneficiario_ocupavivienda`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_parentesco`
--
ALTER TABLE `beneficiario_parentesco`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_perfil`
--
ALTER TABLE `beneficiario_perfil`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_profesion`
--
ALTER TABLE `beneficiario_profesion`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_regimen`
--
ALTER TABLE `beneficiario_regimen`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_serviciopublico`
--
ALTER TABLE `beneficiario_serviciopublico`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_tipodocumento`
--
ALTER TABLE `beneficiario_tipodocumento`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_tipoestablecimiento`
--
ALTER TABLE `beneficiario_tipoestablecimiento`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_tipovivienda`
--
ALTER TABLE `beneficiario_tipovivienda`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `beneficiario_usuario`
--
ALTER TABLE `beneficiario_usuario`
 ADD PRIMARY KEY (`id`), ADD KEY `beneficiario_usuari_perfil_id_df76a69b_fk_beneficiario_perfil_id` (`perfil_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
 ADD PRIMARY KEY (`id`), ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`), ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
 ADD PRIMARY KEY (`session_key`), ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `beneficiario_actividadmes`
--
ALTER TABLE `beneficiario_actividadmes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `beneficiario_basura`
--
ALTER TABLE `beneficiario_basura`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `beneficiario_beneficiario`
--
ALTER TABLE `beneficiario_beneficiario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `beneficiario_bienes`
--
ALTER TABLE `beneficiario_bienes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `beneficiario_carnet`
--
ALTER TABLE `beneficiario_carnet`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `beneficiario_ciudad`
--
ALTER TABLE `beneficiario_ciudad`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1120;
--
-- AUTO_INCREMENT de la tabla `beneficiario_condicionsexual`
--
ALTER TABLE `beneficiario_condicionsexual`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `beneficiario_departamento`
--
ALTER TABLE `beneficiario_departamento`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `beneficiario_discapacidad`
--
ALTER TABLE `beneficiario_discapacidad`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `beneficiario_discapacidaddetalle`
--
ALTER TABLE `beneficiario_discapacidaddetalle`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `beneficiario_enfoquediferencial`
--
ALTER TABLE `beneficiario_enfoquediferencial`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `beneficiario_eps`
--
ALTER TABLE `beneficiario_eps`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `beneficiario_estadocivil`
--
ALTER TABLE `beneficiario_estadocivil`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `beneficiario_etnia`
--
ALTER TABLE `beneficiario_etnia`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `beneficiario_hechobeneficiario`
--
ALTER TABLE `beneficiario_hechobeneficiario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `beneficiario_hechovictimizante`
--
ALTER TABLE `beneficiario_hechovictimizante`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `beneficiario_hogar`
--
ALTER TABLE `beneficiario_hogar`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `beneficiario_hogar_bienes`
--
ALTER TABLE `beneficiario_hogar_bienes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `beneficiario_hogar_servicioPublico`
--
ALTER TABLE `beneficiario_hogar_servicioPublico`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `beneficiario_institucioneducativa`
--
ALTER TABLE `beneficiario_institucioneducativa`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `beneficiario_materialpared`
--
ALTER TABLE `beneficiario_materialpared`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `beneficiario_materialpiso`
--
ALTER TABLE `beneficiario_materialpiso`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `beneficiario_niveleducativo`
--
ALTER TABLE `beneficiario_niveleducativo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `beneficiario_ocupacion`
--
ALTER TABLE `beneficiario_ocupacion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `beneficiario_ocupavivienda`
--
ALTER TABLE `beneficiario_ocupavivienda`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `beneficiario_parentesco`
--
ALTER TABLE `beneficiario_parentesco`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `beneficiario_perfil`
--
ALTER TABLE `beneficiario_perfil`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `beneficiario_profesion`
--
ALTER TABLE `beneficiario_profesion`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `beneficiario_regimen`
--
ALTER TABLE `beneficiario_regimen`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `beneficiario_serviciopublico`
--
ALTER TABLE `beneficiario_serviciopublico`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `beneficiario_tipodocumento`
--
ALTER TABLE `beneficiario_tipodocumento`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `beneficiario_tipoestablecimiento`
--
ALTER TABLE `beneficiario_tipoestablecimiento`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `beneficiario_tipovivienda`
--
ALTER TABLE `beneficiario_tipovivienda`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `beneficiario_usuario`
--
ALTER TABLE `beneficiario_usuario`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=115;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `beneficiario_beneficiario`
--
ALTER TABLE `beneficiario_beneficiario`
ADD CONSTRAINT `beneficiario_beneficiario_eps_id_371a330e_fk_beneficiario_eps_id` FOREIGN KEY (`eps_id`) REFERENCES `beneficiario_eps` (`id`),
ADD CONSTRAINT `beneficiario_bene_regimen_id_68ec21ab_fk_beneficiario_regimen_id` FOREIGN KEY (`regimen_id`) REFERENCES `beneficiario_regimen` (`id`),
ADD CONSTRAINT `beneficiario_ciudadDeclara_id_6284001d_fk_beneficiario_ciudad_id` FOREIGN KEY (`ciudadDeclara_id`) REFERENCES `beneficiario_ciudad` (`id`),
ADD CONSTRAINT `beneficiario__ciudadPredio_id_0affc01b_fk_beneficiario_ciudad_id` FOREIGN KEY (`ciudadPredio_id`) REFERENCES `beneficiario_ciudad` (`id`),
ADD CONSTRAINT `beneficiario__ocupacion_id_9d7b9192_fk_beneficiario_ocupacion_id` FOREIGN KEY (`ocupacion_id`) REFERENCES `beneficiario_ocupacion` (`id`),
ADD CONSTRAINT `beneficiario__profesion_id_f352f68d_fk_beneficiario_profesion_id` FOREIGN KEY (`profesion_id`) REFERENCES `beneficiario_profesion` (`id`),
ADD CONSTRAINT `beneficiari_parentesco_id_85eed388_fk_beneficiario_parentesco_id` FOREIGN KEY (`parentesco_id`) REFERENCES `beneficiario_parentesco` (`id`),
ADD CONSTRAINT `beneficiar_perteneciaEtnica_id_1b953ece_fk_beneficiario_etnia_id` FOREIGN KEY (`perteneciaEtnica_id`) REFERENCES `beneficiario_etnia` (`id`),
ADD CONSTRAINT `beneficia_estadoCivil_id_57e64e5b_fk_beneficiario_estadocivil_id` FOREIGN KEY (`estadoCivil_id`) REFERENCES `beneficiario_estadocivil` (`id`),
ADD CONSTRAINT `benefici_ciudadProcedencia_id_84c9375d_fk_beneficiario_ciudad_id` FOREIGN KEY (`ciudadProcedencia_id`) REFERENCES `beneficiario_ciudad` (`id`),
ADD CONSTRAINT `benefic_actividadMes_id_2f9cb6ae_fk_beneficiario_actividadmes_id` FOREIGN KEY (`actividadMes_id`) REFERENCES `beneficiario_actividadmes` (`id`),
ADD CONSTRAINT `benefic_discapacidad_id_a8ce0e04_fk_beneficiario_discapacidad_id` FOREIGN KEY (`discapacidad_id`) REFERENCES `beneficiario_discapacidad` (`id`),
ADD CONSTRAINT `benef_tipoDocumento_id_067b1754_fk_beneficiario_tipodocumento_id` FOREIGN KEY (`tipoDocumento_id`) REFERENCES `beneficiario_tipodocumento` (`id`),
ADD CONSTRAINT `ben_nivelEducativo_id_e33f7c0c_fk_beneficiario_niveleducativo_id` FOREIGN KEY (`nivelEducativo_id`) REFERENCES `beneficiario_niveleducativo` (`id`),
ADD CONSTRAINT `b_condicionSexual_id_9d16fa7f_fk_beneficiario_condicionsexual_id` FOREIGN KEY (`condicionSexual_id`) REFERENCES `beneficiario_condicionsexual` (`id`),
ADD CONSTRAINT `D23a5489a20b79e9d0365b432aa4161a` FOREIGN KEY (`detDiscapacidad_id`) REFERENCES `beneficiario_discapacidaddetalle` (`id`),
ADD CONSTRAINT `D4c011a95310647320c3f79627d405dc` FOREIGN KEY (`institucionEducativa_id`) REFERENCES `beneficiario_institucioneducativa` (`id`);

--
-- Filtros para la tabla `beneficiario_carnet`
--
ALTER TABLE `beneficiario_carnet`
ADD CONSTRAINT `benefic_beneficiario_id_c06c9f6c_fk_beneficiario_beneficiario_id` FOREIGN KEY (`beneficiario_id`) REFERENCES `beneficiario_beneficiario` (`id`);

--
-- Filtros para la tabla `beneficiario_ciudad`
--
ALTER TABLE `beneficiario_ciudad`
ADD CONSTRAINT `benefic_departamento_id_97d2018a_fk_beneficiario_departamento_id` FOREIGN KEY (`departamento_id`) REFERENCES `beneficiario_departamento` (`id`);

--
-- Filtros para la tabla `beneficiario_hechobeneficiario`
--
ALTER TABLE `beneficiario_hechobeneficiario`
ADD CONSTRAINT `beneficiario_hechobeneficiario_ibfk_1` FOREIGN KEY (`beneficiario_id`) REFERENCES `beneficiario_beneficiario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `beneficia_hecho_id_e9a59fd6_fk_beneficiario_hechovictimizante_id` FOREIGN KEY (`hecho_id`) REFERENCES `beneficiario_hechovictimizante` (`id`);

--
-- Filtros para la tabla `beneficiario_hogar`
--
ALTER TABLE `beneficiario_hogar`
ADD CONSTRAINT `beneficia_ciudadResidencia_id_c3f0dd6b_fk_beneficiario_ciudad_id` FOREIGN KEY (`ciudadResidencia_id`) REFERENCES `beneficiario_ciudad` (`id`),
ADD CONSTRAINT `benefici_cabezaHogar_id_11d25053_fk_beneficiario_beneficiario_id` FOREIGN KEY (`cabezaHogar_id`) REFERENCES `beneficiario_beneficiario` (`id`),
ADD CONSTRAINT `benefic_materialPiso_id_93d7816c_fk_beneficiario_materialpiso_id` FOREIGN KEY (`materialPiso_id`) REFERENCES `beneficiario_materialpiso` (`id`),
ADD CONSTRAINT `benefic_tipoVivienda_id_75cffea7_fk_beneficiario_tipovivienda_id` FOREIGN KEY (`tipoVivienda_id`) REFERENCES `beneficiario_tipovivienda` (`id`),
ADD CONSTRAINT `benef_ocupaVivienda_id_9c294667_fk_beneficiario_ocupavivienda_id` FOREIGN KEY (`ocupaVivienda_id`) REFERENCES `beneficiario_ocupavivienda` (`id`);

--
-- Filtros para la tabla `beneficiario_hogar_bienes`
--
ALTER TABLE `beneficiario_hogar_bienes`
ADD CONSTRAINT `beneficiario_hogar_bi_hogar_id_490f3a9d_fk_beneficiario_hogar_id` FOREIGN KEY (`hogar_id`) REFERENCES `beneficiario_hogar` (`id`),
ADD CONSTRAINT `beneficiario_hogar__bienes_id_e315607a_fk_beneficiario_bienes_id` FOREIGN KEY (`bienes_id`) REFERENCES `beneficiario_bienes` (`id`);

--
-- Filtros para la tabla `beneficiario_hogar_servicioPublico`
--
ALTER TABLE `beneficiario_hogar_servicioPublico`
ADD CONSTRAINT `beneficiario_hogar_se_hogar_id_ef4dad26_fk_beneficiario_hogar_id` FOREIGN KEY (`hogar_id`) REFERENCES `beneficiario_hogar` (`id`),
ADD CONSTRAINT `b_serviciopublico_id_1b4d2946_fk_beneficiario_serviciopublico_id` FOREIGN KEY (`serviciopublico_id`) REFERENCES `beneficiario_serviciopublico` (`id`);

--
-- Filtros para la tabla `beneficiario_institucioneducativa`
--
ALTER TABLE `beneficiario_institucioneducativa`
ADD CONSTRAINT `D575bee7e5fd98aa28b679dcc89205d1` FOREIGN KEY (`tipoEstablecimiento_id`) REFERENCES `beneficiario_tipoestablecimiento` (`id`);

--
-- Filtros para la tabla `beneficiario_usuario`
--
ALTER TABLE `beneficiario_usuario`
ADD CONSTRAINT `beneficiario_usuari_perfil_id_df76a69b_fk_beneficiario_perfil_id` FOREIGN KEY (`perfil_id`) REFERENCES `beneficiario_perfil` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
