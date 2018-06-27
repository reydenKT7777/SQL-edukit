-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 25, 2018 at 12:14 AM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 7.0.28-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edukit`
--

-- --------------------------------------------------------

--
-- Table structure for table `administracion`
--

CREATE TABLE `administracion` (
  `id` int(15) NOT NULL,
  `cargo` varchar(45) DEFAULT NULL,
  `persona_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administracion`
--

INSERT INTO `administracion` (`id`, `cargo`, `persona_id`) VALUES
(1, 'Administrador', 1),
(2, 'coordinador primaria', 2),
(3, 'cordinador secundaria', 16);

-- --------------------------------------------------------

--
-- Table structure for table `asistencia_docente`
--

CREATE TABLE `asistencia_docente` (
  `id` int(15) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora_ingreso` time DEFAULT NULL,
  `hora_salida` time DEFAULT NULL,
  `tipo_asistencia` varchar(15) DEFAULT NULL,
  `observacion` varchar(150) DEFAULT NULL,
  `profesor_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asistencia_estudiante`
--

CREATE TABLE `asistencia_estudiante` (
  `id` int(15) NOT NULL,
  `fecha` date DEFAULT NULL,
  `tipo_asistencia` varchar(12) DEFAULT NULL,
  `observacion` varchar(150) DEFAULT NULL,
  `estudiante_id` int(15) NOT NULL,
  `curso_id` int(15) NOT NULL,
  `id_responsable` int(15) NOT NULL,
  `rol_responsable` int(1) NOT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asistencia_estudiante`
--

INSERT INTO `asistencia_estudiante` (`id`, `fecha`, `tipo_asistencia`, `observacion`, `estudiante_id`, `curso_id`, `id_responsable`, `rol_responsable`, `estado`) VALUES
(1, '2018-06-24', '3', 'ejemplo', 1, 7, 1, 1, b'0'),
(2, '2018-06-24', '2', 'esta de viaje', 2, 2, 1, 1, b'1'),
(3, '2018-06-24', '1', '', 3, 7, 1, 1, b'1'),
(4, '2018-06-24', '1', '', 4, 8, 1, 1, b'0'),
(5, '2018-06-24', '2', '', 5, 2, 1, 1, b'0'),
(6, '2018-06-11', '1', '', 1, 7, 1, 1, b'0'),
(7, '2018-06-11', '1', '', 2, 2, 1, 1, b'0'),
(8, '2018-06-11', '1', '', 3, 7, 1, 1, b'0'),
(9, '2018-06-11', '1', '', 4, 8, 1, 1, b'0'),
(10, '2018-06-11', '3', 'haber si esta', 5, 2, 1, 1, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `bloque_notas`
--

CREATE TABLE `bloque_notas` (
  `id` int(15) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `fondo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `calificacion`
--

CREATE TABLE `calificacion` (
  `id` int(15) NOT NULL,
  `nota` float DEFAULT NULL,
  `etapa` int(1) DEFAULT NULL,
  `detalle` varchar(100) DEFAULT NULL,
  `bloque_notas_id` int(15) NOT NULL,
  `inscripcion_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `curso`
--

CREATE TABLE `curso` (
  `id` int(15) NOT NULL,
  `grado` int(1) DEFAULT NULL,
  `nivel` varchar(45) DEFAULT NULL,
  `paralelo` char(1) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curso`
--

INSERT INTO `curso` (`id`, `grado`, `nivel`, `paralelo`, `estado`) VALUES
(1, 1, 'Secundaria', 'A', 1),
(2, 2, 'Secundaria', 'B', 1),
(3, 2, 'Secundaria', 'C', 1),
(7, 3, 'Secundaria', 'D', 1),
(8, 1, 'Secundaria', 'B', 1);

-- --------------------------------------------------------

--
-- Table structure for table `disciplina_docente`
--

CREATE TABLE `disciplina_docente` (
  `id` int(15) NOT NULL,
  `fecha` date DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `profesor_id` int(15) NOT NULL,
  `administracion_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `disciplina_docente`
--

INSERT INTO `disciplina_docente` (`id`, `fecha`, `descripcion`, `estado`, `profesor_id`, `administracion_id`) VALUES
(1, '2018-05-01', 'Por pendejo', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `disciplina_estudiante`
--

CREATE TABLE `disciplina_estudiante` (
  `id` int(15) NOT NULL,
  `fecha` date DEFAULT NULL,
  `nivel` int(5) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `ref_receptor` varchar(15) DEFAULT NULL,
  `estudiante_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `estudiante`
--

CREATE TABLE `estudiante` (
  `id` int(15) NOT NULL,
  `persona_id` int(15) NOT NULL,
  `tutor_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `estudiante`
--

INSERT INTO `estudiante` (`id`, `persona_id`, `tutor_id`) VALUES
(1, 5, 1),
(2, 6, 2),
(3, 13, 4),
(4, 14, 4),
(5, 15, 4);

-- --------------------------------------------------------

--
-- Table structure for table `inscripcion`
--

CREATE TABLE `inscripcion` (
  `id` int(15) NOT NULL,
  `gestion` char(4) DEFAULT NULL,
  `curso_id` int(15) NOT NULL,
  `estudiante_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inscripcion`
--

INSERT INTO `inscripcion` (`id`, `gestion`, `curso_id`, `estudiante_id`) VALUES
(1, '2018', 7, 1),
(2, '2018', 2, 2),
(3, '2018', 7, 3),
(4, '2018', 8, 4),
(5, '2018', 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `materia`
--

CREATE TABLE `materia` (
  `id` int(15) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `curso_id` int(15) NOT NULL,
  `profesor_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `materia`
--

INSERT INTO `materia` (`id`, `nombre`, `estado`, `curso_id`, `profesor_id`) VALUES
(1, 'Matematicas', 1, 1, 4),
(2, 'Matematicas', 1, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `mensaje`
--

CREATE TABLE `mensaje` (
  `id` int(15) NOT NULL,
  `ref_receptor` int(15) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `contenido` text,
  `archivo_adj` datetime DEFAULT NULL,
  `visto` tinyint(4) DEFAULT NULL,
  `tipo_mensaje` int(1) DEFAULT NULL,
  `persona_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mensualidad`
--

CREATE TABLE `mensualidad` (
  `id` int(15) NOT NULL,
  `importe` double DEFAULT NULL,
  `mes` char(2) DEFAULT NULL,
  `gestion` char(4) DEFAULT NULL,
  `estado_pago` varchar(50) DEFAULT NULL,
  `observacion` varchar(255) DEFAULT NULL,
  `estudiante_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `me_gusta`
--

CREATE TABLE `me_gusta` (
  `id` int(11) NOT NULL,
  `persona_id` int(11) NOT NULL,
  `ref_publicacion` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `me_gusta`
--

INSERT INTO `me_gusta` (`id`, `persona_id`, `ref_publicacion`, `fecha`) VALUES
(1, 5, 1, '2018-02-02 09:31:31'),
(2, 6, 1, '2018-02-03 08:32:49'),
(3, 3, 2, '2017-11-02 19:30:00'),
(4, 4, 2, '2017-11-01 00:00:00'),
(5, 9, 2, '2017-11-04 15:00:23'),
(33, 16, 2, '2018-05-20 07:17:52'),
(37, 1, 1, '2018-05-20 07:18:18'),
(38, 1, 2, '2018-06-03 03:16:47'),
(39, 16, 7, '2018-06-17 01:47:05'),
(40, 1, 16, '2018-06-17 02:15:05'),
(41, 1, 38, '2018-06-17 03:17:18'),
(42, 1, 37, '2018-06-17 03:17:21'),
(43, 18, 43, '2018-06-17 03:07:02');

-- --------------------------------------------------------

--
-- Table structure for table `noticia`
--

CREATE TABLE `noticia` (
  `id` int(15) NOT NULL,
  `contenido` text,
  `fecha` datetime DEFAULT NULL,
  `src_adj` varchar(255) DEFAULT NULL,
  `tipo_adj` int(15) NOT NULL,
  `formato_adj` varchar(5) NOT NULL,
  `nombre_adj` varchar(100) NOT NULL,
  `ref_visualizacion` varchar(15) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `persona_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `noticia`
--

INSERT INTO `noticia` (`id`, `contenido`, `fecha`, `src_adj`, `tipo_adj`, `formato_adj`, `nombre_adj`, `ref_visualizacion`, `estado`, `persona_id`) VALUES
(1, 'REUNION GENERAL', '2018-02-01 06:30:27', 'assets/document/images/comunicado1.png', 1, 'png', 'comunicado1', 'ng', 1, 1),
(2, 'paro nacional de maestros convocado por el ministerio de educacion', '2017-10-12 16:15:23', 'assets/document/file/paro.doc', 2, 'xls', 'paro', 'np', 1, 2),
(3, 'Miren donde vivo', '2018-06-16 00:00:00', 'assets/document/file/201806161croquis.docx', 0, 'doc', '', 'ng', 1, 1),
(4, 'Miren donde vivo', '2018-06-16 00:00:00', 'assets/document/file/201806161croquis.docx', 0, '', '', NULL, 1, 1),
(5, 'Mi casa', '2018-06-17 00:00:00', 'assets/document/file/201806171or.jpg', 1, '.jpg', 'or.jpg', NULL, 1, 1),
(6, 'Bloques AES \r\nTarea para mañana muchachos', '2018-06-17 00:00:00', 'assets/document/file/201806171bloque aes.png', 1, '.png', 'bloque aes.png', NULL, 1, 1),
(7, 'Revisar\r\nMas tarea', '2018-06-17 00:00:00', 'assets/document/file/201806171AES_128-300x225.png', 1, '.png', 'AES_128-300x225.png', 'ng', 1, 1),
(8, 'hola mundo', '2018-06-17 02:01:00', NULL, 3, '', '', 'ng', 1, 1),
(9, 'hola bracil', '2018-06-17 02:02:24', NULL, 3, '', '', 'ng', 1, 1),
(10, 'hola bracilsdasdasd', '2018-06-17 02:04:38', NULL, 3, '', '', 'ng', 1, 1),
(11, 'hola bracilsdasdasdsdassdfsda', '2018-06-17 02:06:48', NULL, 3, '', '', 'ng', 1, 1),
(12, 'hola bracilsdasdasdsdassdfsda\r\nfdsjflksdfsdf', '2018-06-17 02:08:07', NULL, 3, '', '', 'ng', 1, 1),
(13, 'hola bracilsdasdasdsdassdfsda\r\nfdsjflksdfsdf\r\nsdjasdkljasldjdsfasdf', '2018-06-17 02:10:19', NULL, 3, '', '', 'ng', 1, 1),
(14, 'hola bracilsdasdasdsdassdfsda\r\nfdsjflksdfsdf\r\nsdjasdkljasldjdsfasdf\r\nhiasdsdlkfhsalkdfhasfhlaskd fsddlsafkaskld fsdfsad', '2018-06-17 02:10:53', NULL, 3, '', '', 'ng', 1, 1),
(15, 'hola bracilsdasdasdsdassdfsda\r\nfdsjflksdfsdf\r\nsdjasdkljasldjdsfasdf\r\nhiasdsdlkfhsalkdfhasfhlaskd fsddlsafkaskld fsdfsadasdaskldjflsd\r\nsdfasdflksadf\r\nsaadf\r\nasdf\r\nasdf\r\nasd\r\nfasdf', '2018-06-17 02:11:25', NULL, 3, '', '', 'ng', 1, 1),
(16, 'hola bracilsdasdasdsdassdfsda\r\nfdsjflksdfsdf\r\nsdjasdkljasldjdsfasdf\r\nhiasdsdlkfhsalkdfhasfhlaskd fsddlsafkaskld fsdfsadasdaskldjflsd\r\nsdfasdflksadf\r\nsaadf asdhkadasd\r\nasdf\r\nasd', '2018-06-17 02:13:29', NULL, 3, '', '', 'ng', 1, 1),
(17, 'asdddddd', '2018-06-17 02:14:38', NULL, 3, '', '', 'ng', 1, 1),
(18, 'asdsasd', '2018-06-17 02:15:40', NULL, 3, '', '', 'ng', 1, 1),
(19, '11212', '2018-06-17 02:16:12', NULL, 3, '', '', 'ng', 1, 1),
(20, '45678', '2018-06-17 02:20:17', NULL, 3, '', '', 'ng', 1, 1),
(21, 'ygbuh', '2018-06-17 02:21:47', NULL, 3, '', '', 'ng', 1, 1),
(22, 'holaaaaaaaaaaaaaaaaaaa', '2018-06-17 02:22:41', NULL, 3, '', '', 'ng', 1, 1),
(23, 'yhnyhyhyh', '2018-06-17 02:24:09', NULL, 3, '', '', 'ng', 1, 1),
(24, 'hola mundo', '2018-06-17 02:24:21', NULL, 3, '', '', 'ng', 1, 1),
(25, 'assss', '2018-06-17 02:24:28', NULL, 3, '', '', 'ng', 1, 1),
(26, 'dori', '2018-06-17 02:28:05', 'assets/document/file/201806171control de acceso.PNG', 1, '.png', 'control de acceso.PNG', 'ng', 1, 1),
(27, 'documento', '2018-06-17 02:30:24', 'assets/document/file/201806171CURSO DE CAPACITACIÓN EN DESARROLLO DE PROYECTOS WEB.docx', 0, '', 'CURSO DE CAPACITACIÓN EN DESARROLLO DE PROYECTOS WEB.docx', 'ng', 1, 1),
(28, 'asdfghjkl', '2018-06-17 02:31:31', 'assets/document/file/201806171Dori - Manual de Usuario.pdf', 0, '', 'Dori - Manual de Usuario.pdf', 'ng', 1, 1),
(29, 'asdasd', '2018-06-17 02:35:50', 'assets/document/file/20180617165-copiar_cortar_pegar_celdas.xlsx', 0, '', '5-copiar_cortar_pegar_celdas.xlsx', 'ng', 1, 16),
(30, 'xls', '2018-06-17 02:36:59', 'assets/document/file/20180617165-copiar_cortar_pegar_celdas.xlsx', 0, '', '5-copiar_cortar_pegar_celdas.xlsx', 'ng', 1, 16),
(31, 'xls\r\n', '2018-06-17 02:37:20', NULL, 3, '', '', 'ng', 1, 16),
(32, 'xls\r\n', '2018-06-17 02:37:20', NULL, 3, '', '', 'ng', 1, 16),
(33, 'xls\r\n', '2018-06-17 02:37:20', NULL, 3, '', '', 'ng', 1, 16),
(34, 'xls\r\n', '2018-06-17 02:37:20', NULL, 3, '', '', 'ng', 1, 16),
(35, 'asi se escribe brazil', '2018-06-17 02:38:13', 'assets/document/file/20180617165-copiar_cortar_pegar_celdas.xlsx', 0, '', '5-copiar_cortar_pegar_celdas.xlsx', 'ng', 1, 16),
(36, 'xlsssss', '2018-06-17 02:48:06', 'assets/document/file/20180617165-copiar_cortar_pegar_celdas.xlsx', 0, '', '5-copiar_cortar_pegar_celdas.xlsx', 'ng', 1, 16),
(37, 'Archivo docx', '2018-06-17 03:09:52', 'assets/document/file/201806171rkt.docx', 2, '.doc', 'rkt.docx', 'ng', 1, 1),
(38, 'asdasdas', '2018-06-17 03:14:18', 'assets/document/file/2018061716PERDON.docx', 2, 'doc', 'PERDON.docx', 'ng', 1, 16),
(39, 'top', '2018-06-17 12:24:27', 'assets/document/file/201806171top_100_djmag_1997_2014.jpg', 1, 'jpg', 'top_100_djmag_1997_2014.jpg', 'ng', 1, 1),
(40, 'la paz', '2018-06-17 12:49:04', 'assets/document/file/201806171La-Paz-.jpg', 1, 'jpg', 'La-Paz-.jpg', 'ng', 1, 1),
(41, 'asdfgh', '2018-06-17 12:58:56', 'assets/document/file/201806171grillas-negras.jpg', 1, 'jpg', 'grillas-negras.jpg', 'ng', 1, 1),
(42, 'hola', '2018-06-17 12:59:10', NULL, 3, '', '', 'ng', 1, 1),
(43, 'imagen', '2018-06-17 13:02:13', 'assets/document/file/201806171foesta-portada-para-facebook.jpg', 1, 'jpg', 'foesta-portada-para-facebook.jpg', 'ng', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `id` int(15) NOT NULL,
  `a_paterno` varchar(30) DEFAULT NULL,
  `a_materno` varchar(45) DEFAULT NULL,
  `nombres` varchar(60) DEFAULT NULL,
  `ci` varchar(10) DEFAULT NULL,
  `exp` char(5) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `telf` varchar(8) DEFAULT NULL,
  `telf_opc` varchar(8) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `f_nacimiento` date DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  `usuario_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`id`, `a_paterno`, `a_materno`, `nombres`, `ci`, `exp`, `sexo`, `telf`, `telf_opc`, `direccion`, `f_nacimiento`, `estado`, `usuario_id`) VALUES
(1, 'castro', 'lopez', 'jose pablo', '1111111', 'LP', 'm', '76543210', '', 'carretera viacha', '2018-04-01', 1, 1),
(2, 'arce', 'perez', 'isaac', '1111112', 'LP', 'F', '76543210', '', 'urb.leoncio', '2018-04-01', 1, 2),
(3, 'almorin', 'torrejon', 'elder', '1111113', 'LP', 'm', '76543210', '', 'carretera viacha', '2018-04-01', 1, 3),
(4, 'alvarez', 'romero', 'segundo oscar', '1111114', 'LP', 'm', '76543210', '', 'urb.leoncio', '2018-04-01', 1, 4),
(5, 'aguilar', 'mamani', 'steffi hortencia', '1111115', 'LP', 'F', '76543210', '', 'carretera viacha', '2018-04-01', 1, 5),
(6, 'alvarez', 'huaqui', 'maria kaila', '1111116', 'LP', 'F', '76543210', '', 'urb.leoncio', '2018-04-01', 1, 6),
(7, 'laura', 'landivar', 'manuel', '1111117', 'LP', 'm', '76543210', '', 'carretera viacha', '2018-04-01', 1, 7),
(8, 'huamanchumo', 'leyton', 'maria cristina', '1111118', 'LP', 'F', '76543210', '', 'urb.leoncio', '2018-04-01', 1, 8),
(9, 'Elizalde', 'Dioses', 'Santiago', '0000020', 'LP', 'M', '76243564', '', 'av. Tupac amaru', '2002-09-14', 1, 9),
(10, 'asdfgh', 'sdfgh', 'asdfgh', '852963', 'LP', '', NULL, NULL, '', NULL, 1, 10),
(11, 'asdfgh', 'sdfgh', 'asdfgh', '8529635', 'LP', '', NULL, NULL, '', NULL, 1, 11),
(12, 'ramos', 'queso', 'jhonny', '123456', 'LP', '', NULL, NULL, '', NULL, 1, 12),
(13, 'yu', 'tu', 'juanito', '1111', 'LP', '', NULL, NULL, '', NULL, 1, 13),
(14, 'yu', 'tu', 'juanito', '11112', 'LP', '', NULL, NULL, '', NULL, 1, 14),
(15, 'chura', 'hhhh', 'yo me llamo', '85296377', 'LP', '', NULL, NULL, '', NULL, 1, 17),
(16, 'sono', 'cabrera', 'jose maria', '1111150', 'cb', 'M', '77777777', NULL, 'villa bolivar a', '2017-04-18', 1, 18),
(18, 'Silva', '-', 'Juan Jose', '8217212', 'LP', 'M', '76543210', '', 'Villa fatima', '1975-01-01', 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `profesor`
--

CREATE TABLE `profesor` (
  `id` int(15) NOT NULL,
  `especialidad` varchar(100) DEFAULT NULL,
  `persona_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profesor`
--

INSERT INTO `profesor` (`id`, `especialidad`, `persona_id`) VALUES
(1, 'matematica', 3),
(2, 'literatura', 4),
(3, 'BIOLOGIA', 9),
(4, 'Matematicas', 18);

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `id` int(15) NOT NULL,
  `parentesco` varchar(45) DEFAULT NULL,
  `persona_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`id`, `parentesco`, `persona_id`) VALUES
(1, 'Padre', 7),
(2, 'madre', 8),
(3, 'Padre', 11),
(4, 'Padre', 12);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(15) NOT NULL,
  `nombre_usuario` varchar(50) DEFAULT NULL,
  `contrasena` varchar(150) DEFAULT NULL,
  `sesion` tinyint(4) DEFAULT NULL,
  `correo_electronico` varchar(100) DEFAULT NULL,
  `f_modificacion` timestamp NULL DEFAULT NULL,
  `activacion_cuenta` tinyint(4) DEFAULT NULL,
  `foto_perfil` varchar(45) DEFAULT NULL,
  `rol` int(1) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `nombre_usuario`, `contrasena`, `sesion`, `correo_electronico`, `f_modificacion`, `activacion_cuenta`, `foto_perfil`, `rol`, `estado`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 0, 'admin@admin.com', '2018-04-17 08:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 1, 1),
(2, 'cordi', '6771d0d87b7c4de871a88f938498e7578f06277c', 0, 'cordi@cordi.com', '2018-04-17 08:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 1, 1),
(3, 'elder', 'd9f02d46be016f1b301f7c02a4b9c4ebe0dde7ef', 0, 'admin@admin.com', '2018-04-17 08:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 2, 1),
(4, 'oscar', 'd9f02d46be016f1b301f7c02a4b9c4ebe0dde7ef', 0, 'cordi@cordi.com', '2018-04-17 08:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 2, 1),
(5, 'steffi', '96281f7d23fb17a5b844b114de9f1a708ea3d9df', 0, 'admin@admin.com', '2018-06-17 04:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 3, 1),
(6, 'maria', '96281f7d23fb17a5b844b114de9f1a708ea3d9df', 0, 'cordi@cordi.com', '2018-04-17 08:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 3, 1),
(7, 'manuel', 'a9bd7a5b583cbe082e2c850595c71a6818626f10', 0, 'admin@admin.com', '2018-06-17 04:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 4, 1),
(8, 'cristina', 'a9bd7a5b583cbe082e2c850595c71a6818626f10', 0, 'cordi@cordi.com', '2018-04-17 08:00:00', 1, 'assets/images/avatar/20180417admin.jpg', 4, 1),
(9, 'Santiago', 'd9f02d46be016f1b301f7c02a4b9c4ebe0dde7ef', 0, 'santiago@edukit.com', '2018-05-01 04:00:00', 1, 'assets/images/avatar/hombre.png', 2, 1),
(10, '852963', 'b6fe850602bd67665c1cb19f6fc4e0ecf46c9e2e', 0, '', '2018-05-08 04:00:00', 1, 'assets/images/avatar/default.png', 4, 1),
(11, '8529635', '065a5f56907ee00b504c9613d529dc062d8e1dfd', 0, '', '2018-05-08 04:00:00', 1, 'assets/images/avatar/default.png', 4, 1),
(12, '123456', '7c4a8d09ca3762af61e59520943dc26494f8941b', 0, '', '2018-05-08 04:00:00', 1, 'assets/images/avatar/default.png', 4, 1),
(13, '1111', '011c945f30ce2cbafc452f39840f025693339c42', 0, '', '2018-05-08 04:00:00', 1, 'assets/images/avatar/default.png', 3, 1),
(14, '11112', '2471246d6e24be4ef5ff710913113002ddd11cac', 0, '', '2018-05-08 04:00:00', 1, 'assets/images/avatar/default.png', 3, 1),
(17, '85296377', '0ff336e33fe7134f84c4e20f6b287d5c8138263c', 0, '', '2018-05-08 04:00:00', 1, 'assets/images/avatar/default.png', 3, 1),
(18, 'cordisec', 'f1a817a35e5062cc4ef1335c686a219542538b73', 0, 'secun@secun.com', '2017-11-15 04:32:00', 1, '\\assets\\images\\avatar\\avatar-7.png', 1, 1),
(19, '1111115', 'a42c63fe183c78557674cfd88628e62c2a1a7c4f', 0, '', '2018-06-17 04:00:00', 1, 'assets/images/avatar/default.png', 3, 1),
(20, 'silva', 'a410f532ae0bec2bb42ab2dc08cd27d83ca3227d', 0, 'jsilva@gmail.com', '2018-06-17 04:00:00', 1, 'assets/images/avatar/hombre.png', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administracion`
--
ALTER TABLE `administracion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_administracion_persona1_idx` (`persona_id`);

--
-- Indexes for table `asistencia_docente`
--
ALTER TABLE `asistencia_docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_asistencia_docente_profesor1_idx` (`profesor_id`);

--
-- Indexes for table `asistencia_estudiante`
--
ALTER TABLE `asistencia_estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_asistencia_estudiante_estudiante1_idx` (`estudiante_id`),
  ADD KEY `curso_id` (`curso_id`);

--
-- Indexes for table `bloque_notas`
--
ALTER TABLE `bloque_notas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_calificacion_bloque_notas1_idx` (`bloque_notas_id`),
  ADD KEY `fk_calificacion_inscripcion1_idx` (`inscripcion_id`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disciplina_docente`
--
ALTER TABLE `disciplina_docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_disciplina_docente_profesor1_idx` (`profesor_id`),
  ADD KEY `fk_disciplina_docente_administracion1_idx` (`administracion_id`);

--
-- Indexes for table `disciplina_estudiante`
--
ALTER TABLE `disciplina_estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_disciplina_estudiante_estudiante1_idx` (`estudiante_id`);

--
-- Indexes for table `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_estudiante_persona1_idx` (`persona_id`),
  ADD KEY `fk_estudiante_tutor1_idx` (`tutor_id`);

--
-- Indexes for table `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_inscripcion_curso1_idx` (`curso_id`),
  ADD KEY `fk_inscripcion_estudiante1_idx` (`estudiante_id`);

--
-- Indexes for table `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_materia_curso1_idx` (`curso_id`),
  ADD KEY `fk_materia_profesor1_idx` (`profesor_id`);

--
-- Indexes for table `mensaje`
--
ALTER TABLE `mensaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mensaje_persona1_idx` (`persona_id`);

--
-- Indexes for table `mensualidad`
--
ALTER TABLE `mensualidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mensualidad_estudiante1_idx` (`estudiante_id`);

--
-- Indexes for table `me_gusta`
--
ALTER TABLE `me_gusta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `persona_id` (`persona_id`),
  ADD KEY `ref_publicacion` (`ref_publicacion`);

--
-- Indexes for table `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_noticia_persona1_idx` (`persona_id`);

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ci` (`ci`),
  ADD KEY `fk_persona_usuario_idx` (`usuario_id`);

--
-- Indexes for table `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_profesor_persona1_idx` (`persona_id`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tutor_persona1_idx` (`persona_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre_usuario` (`nombre_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administracion`
--
ALTER TABLE `administracion`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `asistencia_docente`
--
ALTER TABLE `asistencia_docente`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `asistencia_estudiante`
--
ALTER TABLE `asistencia_estudiante`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `bloque_notas`
--
ALTER TABLE `bloque_notas`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `disciplina_docente`
--
ALTER TABLE `disciplina_docente`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `disciplina_estudiante`
--
ALTER TABLE `disciplina_estudiante`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `materia`
--
ALTER TABLE `materia`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mensaje`
--
ALTER TABLE `mensaje`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mensualidad`
--
ALTER TABLE `mensualidad`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `me_gusta`
--
ALTER TABLE `me_gusta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tutor`
--
ALTER TABLE `tutor`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `administracion`
--
ALTER TABLE `administracion`
  ADD CONSTRAINT `fk_administracion_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `asistencia_docente`
--
ALTER TABLE `asistencia_docente`
  ADD CONSTRAINT `fk_asistencia_docente_profesor1` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `asistencia_estudiante`
--
ALTER TABLE `asistencia_estudiante`
  ADD CONSTRAINT `curso_id` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_asistencia_estudiante_estudiante1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `fk_calificacion_bloque_notas1` FOREIGN KEY (`bloque_notas_id`) REFERENCES `bloque_notas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_calificacion_inscripcion1` FOREIGN KEY (`inscripcion_id`) REFERENCES `inscripcion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `disciplina_docente`
--
ALTER TABLE `disciplina_docente`
  ADD CONSTRAINT `fk_disciplina_docente_administracion1` FOREIGN KEY (`administracion_id`) REFERENCES `administracion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_disciplina_docente_profesor1` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `disciplina_estudiante`
--
ALTER TABLE `disciplina_estudiante`
  ADD CONSTRAINT `fk_disciplina_estudiante_estudiante1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `fk_estudiante_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_estudiante_tutor1` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `fk_inscripcion_curso1` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_inscripcion_estudiante1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `fk_materia_curso1` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_materia_profesor1` FOREIGN KEY (`profesor_id`) REFERENCES `profesor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mensaje`
--
ALTER TABLE `mensaje`
  ADD CONSTRAINT `fk_mensaje_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mensualidad`
--
ALTER TABLE `mensualidad`
  ADD CONSTRAINT `fk_mensualidad_estudiante1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `me_gusta`
--
ALTER TABLE `me_gusta`
  ADD CONSTRAINT `me_gusta_ibfk_1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`),
  ADD CONSTRAINT `me_gusta_ibfk_2` FOREIGN KEY (`ref_publicacion`) REFERENCES `noticia` (`id`);

--
-- Constraints for table `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `fk_noticia_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `fk_persona_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `fk_profesor_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tutor`
--
ALTER TABLE `tutor`
  ADD CONSTRAINT `fk_tutor_persona1` FOREIGN KEY (`persona_id`) REFERENCES `persona` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
