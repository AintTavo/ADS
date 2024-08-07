-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2024 a las 22:46:31
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_backend`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `USUARIO` text NOT NULL,
  `CONTRA` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`USUARIO`, `CONTRA`) VALUES
('Jayim Javier Reyes Reyes', '12345678'),
('Jayim Javier Reyes Reyes', '12345678'),
('0', '12345678'),
('Leo', '12345678');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `recordatorio` varchar(255) DEFAULT NULL,
  `tipo` varchar(50) DEFAULT NULL,
  `importancia` varchar(50) DEFAULT NULL,
  `inicio_periodo` date DEFAULT NULL,
  `fin_periodo` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `id_usuario`, `recordatorio`, `tipo`, `importancia`, `inicio_periodo`, `fin_periodo`, `hora`) VALUES
(1, NULL, 'Gymnasio', 'tarea', 'alta', '2024-06-24', '2024-08-24', '08:10:00'),
(2, NULL, '', NULL, NULL, '0000-00-00', '0000-00-00', '00:00:00'),
(3, NULL, 'a', NULL, NULL, '0000-00-00', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distinciones_docentes`
--

CREATE TABLE `distinciones_docentes` (
  `No` int(11) DEFAULT NULL,
  `NOMBRE` varchar(37) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DEPENDENCIA` varchar(99) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DISTINCION` varchar(29) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CATEGORIA` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CURP` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Asistencia` tinyint(1) DEFAULT NULL,
  `Acompanante` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `distinciones_docentes`
--

INSERT INTO `distinciones_docentes` (`No`, `NOMBRE`, `DEPENDENCIA`, `DISTINCION`, `CATEGORIA`, `CURP`, `Asistencia`, `Acompanante`) VALUES
(4, 'Erinn Michelle Valdéz Enríquez', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Diploma al Deporte', 'Docente', 'VAEE030207MMCLNRA3', 0, 0),
(35, 'Benjamín Carlos Sedano Guadarrama', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'SEGB590331HGRDDN08', 0, 0),
(36, 'Gabriel Arturo Villegas Ortiz', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'VIOG680919HDFLRB03', 0, 0),
(37, 'Gabriela Leticia Mercado Mancera', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'MEMG730324MDFRNB06', 0, 0),
(38, 'Gerardo Irving Arjona Ramírez', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'AORG660307HDFRMR00', 0, 0),
(39, 'J. Santana Villarreal Reyes', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'VIRS620726HGRLYN04', 0, 0),
(40, 'José Antonio Hernández Cuellar', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'HECA550821HDFRLN02', 0, 0),
(41, 'José Rubén Aguilar Sánchez', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'AUSR560615HSPGNB00', 0, 0),
(42, 'María del Carmen Rodríguez Hernández', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'ROHC651221MDFDRR09', 0, NULL),
(43, 'María Esther Zavala Ramírez', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'ZARE680703MDFVMS00', 0, 0),
(44, 'Marina Espitia Badillo', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'EIBM651226MDFSDR01', 0, 0),
(45, 'Ricardo Gallardo Álvarez', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'GAAR581106HDFLLC09', 0, 0),
(46, 'Rocío de Jesús Urrieta Olivares', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'UIOR701222MDFRLC09', 0, 0),
(47, 'Fermín Verdin Figueroa', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'VEFF690504HNTRGR04', 1, 1),
(48, 'José García Flores', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'GAFJ700318HTLRLS19', 0, 0),
(49, 'María Teresa López Villa', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'LOVT630802MDFPLR01', 0, 0),
(50, 'Rafaela Jaimes León', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'JALR711104MGRMNF09', 0, 0),
(51, 'Sergio Núñez Pérez', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'NUPS610603HDFXRR05', 0, 0),
(52, 'Ana María Cruz Herrera', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD TICOMÁN', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'CUHA610417MDFRRN03', 0, 0),
(53, 'Sergio Rivera Vega', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD TICOMÁN', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'RIVS690516HDFVGR08', 0, 0),
(54, 'Fortunato Cerecedo Hernández', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'CEHF511014HHGRRR01', 0, 0),
(55, 'Francisco Martínez Rasgado', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'MARF681004HOCRSR02', 0, 0),
(56, 'Isaías Candelario Reyes', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'CARI640825HVZNYS09', 0, 0),
(57, 'Jerardo Rodríguez Coroy', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'ROCJ670405HMCDRR07', 0, 0),
(58, 'Mario Bernabé y de la Luz', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'BELM670409HVZRZR04', 0, 0),
(59, 'Rita Aguilar Osorio', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'AUOR550517MTCGST06', 0, 0),
(60, 'Eloy Martínez Crisostomo', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'MACE620702HPLRRL08', 0, 0),
(61, 'Jahel Valdés Sauceda', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'VASJ640923MSLLCH04', 0, 0),
(62, 'José Javier Castro Arellano', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'CAAJ610213HGTSRV02', 0, 0),
(63, 'Patricia Gutiérrez Reynoso', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'GURP580416MDFTYT08', 0, 0),
(64, 'Alejandro Pérez Pineda', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'PEPA581206HTLRNL09', 0, 0),
(65, 'Alfredo Legorreta Gutiérrez', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'LEGA570103HDFGTL09', 0, 0),
(66, 'Blanca Margarita Martínez Pérez', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'MAPB570310MPLRRL00', 0, 0),
(67, 'Carlos Cisneros Araujo', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'CIAC571110HTSSRR03', 0, 0),
(68, 'Elena Florentina Piña Gutiérrez', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'PIGE571016MDFXTL03', 0, 0),
(69, 'Fabiola Fragoso Castillo', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'FACF591114MDFRSB01', 0, 0),
(70, 'Faustino García Camacho', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'GACF460414HMCRMS12', 0, 0),
(71, 'Feliciano Ramírez Parrales', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'RAPF540921HDFMRL03', 0, 0),
(72, 'Gerardo Zambrano Ramírez', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'ZARG551028HDFMMR06', 0, 0),
(73, 'Héctor Samuel Sandoval Marín', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'SAMH491213HDFNRC07', 0, 0),
(74, 'José López Guzmán', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'LOGJ510709HDFPZS07', 0, 0),
(75, 'José Manuel Sánchez Velázquez', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'SAVM510620HDFNLN02', 0, 0),
(76, 'Ma. Guadalupe Colín Vaca', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'COVG660401MMNLCD02', 0, 0),
(77, 'Marco Antonio Chino Vite', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'CIVM690228HDFHTR05', 0, 0),
(78, 'Raúl Vázquez Cruz', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'VACR580418HDFZRL00', 0, 0),
(79, 'Tomás Salomón Phillips Bárcenas', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'PIBT600120HDFHRM05', 0, 0),
(80, 'Víctor Rubén Gallegos Martínez', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'GAMV590912HDFLRC06', 0, 0),
(81, 'Gustavo Mendoza Romero', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'MERG560913HDFNMS07', 0, 0),
(82, 'Lauro Lira Gómez', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'LIGL470506HVZRMR01', 0, 0),
(83, 'Francisco Flores Juárez', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'FOJF600402HDFLRR02', 0, 0),
(84, 'M. Evelia Figueroa Arellano', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'FIAE550708MNTGRV05', 0, 0),
(85, 'Aida Araceli Mendoza Pérez', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD SANTO TOMÁS', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'MEPA640519MOCNRD09', 0, 0),
(86, 'Amapola Pando De Lira', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD SANTO TOMÁS', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'PALA680807MDFNRM15', 0, 0),
(87, 'Antonio Ramos Mendoza', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD SANTO TOMÁS', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'RAMA620613HOCMNN15', 0, 0),
(88, 'José Ángel Solano Hernández', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD SANTO TOMÁS', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'SOHA561001HDFLRN09', 0, 0),
(89, 'Luis Arturo Rivas Tovar', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD SANTO TOMÁS', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'RITL591017HDFVVS01', 0, 0),
(90, 'Ma. Guadalupe Hortencia Nava Granillo', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD SANTO TOMÁS', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'NAGG500111MHGVRD08', 0, 0),
(91, 'Rosa María del Carmen Ancona Sánchez', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD SANTO TOMÁS', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'AOSR580410MDFNNS02', 0, 0),
(92, 'Jaime Galicia Betancourt', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'GABJ570701HDFLTM06', 0, 0),
(93, 'Martha Mendoza Flores', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'MEFM600511MDFNLR08', 0, 0),
(94, 'Encarnación Salinas Hernández', 'ESCUELA SUPERIOR DE CÓMPUTO (ESCOM)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'SAHE680209HDFLRN02', 0, 0),
(95, 'J. Jesús Casiano Cruz', 'ESCUELA SUPERIOR DE ECONOMÍA (ESE)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'CACJ571003HGRSRS07', 0, 0),
(96, 'Roberto Ortega Pineda', 'ESCUELA SUPERIOR DE ECONOMÍA (ESE)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'OEPR650304HDFRNB06', 0, 0),
(97, 'Adolfo Helmut Rudolf Navarro', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'RUNA661228HDFDVD04', 0, 0),
(98, 'Adrián Alcantar Torres', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'AATA630305HDFLRD06', 0, 0),
(99, 'Porfirio Reyes López', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'RELP680915HMCYPR05', 0, 0),
(100, 'Antonio Hernández Cardoso', 'ESCUELA SUPERIOR DE TURISMO (EST)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'HECA701009HDFRRN05', 0, 0),
(101, 'Juan Carlos Ríos Juárez', 'ESCUELA SUPERIOR DE TURISMO (EST)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'RIJJ710510HDFSRN02', 0, 0),
(102, 'María Dolores García Martínez', 'ESCUELA SUPERIOR DE TURISMO (EST)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'GAMD691130MDFRRL09', 0, 0),
(103, 'Graciela Margarita González Lugo', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'GOLG650610MDFNGR06', 0, 0),
(104, 'José Francisco Delgado Reyes', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'DERF540120HDFLYR06', 0, 0),
(105, 'Óscar Rodolfo Rodas Suárez', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'ROSO610529HDFDRS08', 0, 0),
(106, 'Elvia Galindo Caciano', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'GACE630530MDFLCL09', 0, 0),
(107, 'Gerardo Ramírez Colín', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'RACG631021HDFMLR05', 0, 0),
(108, 'María Estela Quezada Cervantes', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'QUCE571026MGRZRS03', 0, 0),
(109, 'Norma Estela Herrera González', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'HEGN570629MDFRNR04', 0, 0),
(110, 'Adriana Cecilia Leos Franco', 'ESCUELA NACIONAL DE MEDICINA Y HOMEOPATÍA (ENMH)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'LEFA680806MDFSRD01', 0, 0),
(111, 'Laura Villagomez Nájera', 'ESCUELA NACIONAL DE MEDICINA Y HOMEOPATÍA (ENMH)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'VINL700118MDFLJR02', 0, 0),
(112, 'Dominga Irene Ramírez Martínez', 'CENTRO INTERDISCIPLINARIO DE CIENCIAS DE LA SALUD (CICS) ,UNIDAD MILPA ALTA', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'RAMD630221MMCMRM05', 0, 0),
(113, 'Adolfo Escamilla Esquivel', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS HIDALGO (UPIIH)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'EAEA600529HDFSSD07', 0, 0),
(114, 'Domingo Hernández García', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS HIDALGO (UPIIH)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'HEGD570804HHGRRM01', 0, 0),
(115, 'Jaime Ledesma Ortiz', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS HIDALGO (UPIIH)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'LEOJ640906HDFDRM00', 0, 0),
(116, 'Juan Vera Romero', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS HIDALGO (UPIIH)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'VERJ650926HDFRMN07', 0, 0),
(117, 'Abel Bueno Meza', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'BUMA590409HDFNZB02', 0, 0),
(118, 'Alberto Serna Méndez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'SEMA670429HDFRNL06', 0, 0),
(119, 'Alfonso Leobardo Zarco Istiga', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'ZAIA520118HDFRSL09', 0, 0),
(120, 'Ángel León Maldonado', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'LEMA730605HDFNLN09', 0, 0),
(121, 'Antonio García Rosas', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'GARA550902HDFRSN00', 0, 0),
(122, 'Araceli Ponce Martínez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'POMA730916MDFNRR07', 0, 0),
(123, 'Carlos Olicon Nava', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'OINC630714HDFLVR06', 0, 0),
(124, 'Eduardo Sánchez Solorzano', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'SASE680421HDFNLD08', 0, 0),
(125, 'Guillermo Granados Muciño', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'GAMG701207HDFRCL07', 0, 0),
(126, 'Guillermo Rivera Rangel', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'RIRG580213HDFVNL07', 0, 0),
(127, 'Jorge Flores García', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'FOGJ720420HDFLRR08', 0, 0),
(128, 'José Mario Rodríguez Aparicio', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'ROAM680524HDFDPR02', 0, 0),
(129, 'Judith Sonck Ledesma', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'SOLJ640611MDFNDD08', 0, 0),
(130, 'María Eloisa Ayuso Naranjo', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'AUNE640706MOCYRL05', 0, 0),
(131, 'María Lydia Pérez Jiménez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'PEJL600712MDFRMY06', 0, 0),
(132, 'María Mayra Vázquez Jiménez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'VAJM631103MDFZMY07', 0, 0),
(133, 'Rocío García Pedraza', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'GAPR660520MTCRDC03', 0, 0),
(134, 'Carlos Cruz ', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA EN INGENIERÍA Y TECNOLOGÍAS AVANZADAS (UPIITA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'CUXC660910HDFRXR05', 0, 0),
(135, 'Emilio Nicéforo Brito Martínez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA EN INGENIERÍA Y TECNOLOGÍAS AVANZADAS (UPIITA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'BIME690211HDFRRM07', 0, 0),
(136, 'Jorge Pérez Hernández', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA EN INGENIERÍA Y TECNOLOGÍAS AVANZADAS (UPIITA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'PEHJ700404HDFRRR06', 0, 0),
(137, 'Manuel González Sarabia', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA EN INGENIERÍA Y TECNOLOGÍAS AVANZADAS (UPIITA)', 'Presea \"Juan de Dios Bátiz\"', 'Docente', 'GOSM671212HMCNRN08', 0, 0),
(176, 'Sofia Arreola Cervantes', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN', 'Presea Carlos Vallejo Márquez', 'Docente', 'AECS450126MDFRRF05', 0, 0),
(177, 'Carlos Rodríguez Mota', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'ROMC480406HDFDTR05', 0, 0),
(178, 'Daniel Galindo Ortega', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'GAOD490527HDFLRN03', 0, 0),
(179, 'Eduardo Acosta Cartas', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'AOCE491013HVZCRD04', 0, 0),
(180, 'Luis Raúl Marín Torres', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'MATL540217HPLRRS09', 0, 0),
(181, 'Manuel Rosas Yáñez', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'ROYM441008HDFSXN02', 0, 0),
(182, 'Marco Antonio Cerecedo Díaz', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'CEDM480211HTLRZR07', 0, 0),
(183, 'María Antonieta Mayoral Guzmán', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'MAGA490624MDFYZN08', 0, 0),
(184, 'Norberto Rochín Rivera', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'RORN450812HDFCVR02', 0, 0),
(185, 'Andrea Marmol Salazar', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea Carlos Vallejo Márquez', 'Docente', 'MASA521130MDFRLN01', 0, 0),
(186, 'Elsa Miriam Arce Estrada', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea Carlos Vallejo Márquez', 'Docente', 'AEEE480426MDFRSL04', 0, 0),
(187, 'Enrique Ortega Muñoz', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea Carlos Vallejo Márquez', 'Docente', 'OEME480716HTLRXN02', 0, 0),
(188, 'Ismael Medina Mondragón', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea Carlos Vallejo Márquez', 'Docente', 'MEMI470211HDFDNS05', 0, 0),
(189, 'José Clemente Reza García', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea Carlos Vallejo Márquez', 'Docente', 'REGC500630HDFZRL04', 0, 0),
(190, 'José Luis Martínez Zendejas', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea Carlos Vallejo Márquez', 'Docente', 'MAZL470830HDFRNS02', 0, 0),
(191, 'José Luis Soto Peña', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea Carlos Vallejo Márquez', 'Docente', 'SOPL490624HDFTXS07', 0, 0),
(192, 'Rubén Castelar Batalla', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea Carlos Vallejo Márquez', 'Docente', 'CABR440406HMSSTB00', 0, 0),
(193, 'Yoshio Nagamatsu Takaqui', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea Carlos Vallejo Márquez', 'Docente', 'NATY480713HDFGKS03', 0, 0),
(194, 'Aristides de la Cruz Gallegos', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'CUGA530831HOCRLR04', 0, 0),
(195, 'Efrén Antonio Garrido Téllez', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'GATE510618HDFRLF05', 0, 0),
(196, 'Jorge García Espinosa', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'GAEJ420514HDFRSR03', 0, 0),
(197, 'Marino Bertín Díaz Bautista', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'DIBM480303HGRZTR04', 0, 0),
(198, 'Esteban Luciano Rojas Guerrero', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'ROGE430328HHGJRS00', 0, 0),
(199, 'Mario Fortino Morales Gutiérrez', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO', 'Presea Carlos Vallejo Márquez', 'Docente', 'MOGM420815HDFRTR07', 0, 0),
(200, 'Edmundo González González', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD SANTO TOMÁS', 'Presea Carlos Vallejo Márquez', 'Docente', 'GOGE530301HSRNND07', 0, 0),
(201, 'Rosaura Unzueta Vázquez', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea Carlos Vallejo Márquez', 'Docente', 'UUVR530528MGRNZS05', 0, 0),
(202, 'Carlos Mario Godínez Camacho', 'ESCUELA SUPERIOR DE ECONOMÍA (ESE)', 'Presea Carlos Vallejo Márquez', 'Docente', 'GOCC461020HDFDMR05', 0, 0),
(203, 'Fernando Isaías Vega Zatarain', 'ESCUELA SUPERIOR DE ECONOMÍA (ESE)', 'Presea Carlos Vallejo Márquez', 'Docente', 'VEZF450706HSLGTR04', 0, 0),
(204, 'Luis Manuel Tovar Sánchez', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Presea Carlos Vallejo Márquez', 'Docente', 'TOSL490610HDFVNS01', 0, 0),
(205, 'Ramón Sebastián Salat Figols', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Presea Carlos Vallejo Márquez', 'Docente', 'SAFR500926HNELGM09', 0, 0),
(206, 'Víctor David Granados García', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Presea Carlos Vallejo Márquez', 'Docente', 'GAGV490910HDFRRC09', 0, 0),
(207, 'Héctor Regalado Rivas', 'ESCUELA SUPERIOR DE TURISMO (EST)', 'Presea Carlos Vallejo Márquez', 'Docente', 'RERH490709HDFGVC03', 0, 0),
(208, 'Doris Neri Cortés', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Presea Carlos Vallejo Márquez', 'Docente', 'NECD511126MDFRRR08', 0, 0),
(209, 'Ethel Awilda García Latorre', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Presea Carlos Vallejo Márquez', 'Docente', 'GALE400425MNERTT00', 0, 0),
(210, 'Hortensia Montellano Rosales', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Presea Carlos Vallejo Márquez', 'Docente', 'MORH471112MZSNSR01', 0, 0),
(211, 'Jorge Belmar Pérez', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Presea Carlos Vallejo Márquez', 'Docente', 'BEPJ520830HDFLRR01', 0, 0),
(212, 'María Eugenia Castro Mussot', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Presea Carlos Vallejo Márquez', 'Docente', 'CAME491228MDFSSG07', 0, 0),
(213, 'Martha Lilia Cassani Galindo', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Presea Carlos Vallejo Márquez', 'Docente', 'CAGM461215MDFSLR05', 0, 0),
(214, 'Rodolfo Arturo Guerrero Huerta', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Presea Carlos Vallejo Márquez', 'Docente', 'GUHR480912HDFRRD08', 0, 0),
(215, 'Yadira Fonseca Sabater', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Presea Carlos Vallejo Márquez', 'Docente', 'FOSY500108MVZNBD09', 0, 0),
(216, 'Alfredo González Torres', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea Carlos Vallejo Márquez', 'Docente', 'GOTA430112HTSNRL03', 0, 0),
(217, 'Alfredo Montiel Márquez', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea Carlos Vallejo Márquez', 'Docente', 'MOMA480529HDFNRL04', 0, 0),
(218, 'Angelina Anaya Rodríguez', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea Carlos Vallejo Márquez', 'Docente', 'AARA471001MDFNDN01', 0, 0),
(219, 'Javier Castrejón Martínez', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea Carlos Vallejo Márquez', 'Docente', 'CAMJ371128HDFSRV09', 0, 0),
(220, 'Juan Guillermo Ordorica Vargas', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea Carlos Vallejo Márquez', 'Docente', 'OOVJ490314HDFRRN08', 0, 0),
(221, 'María Cristina Eguia Lis Gutiérrez', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea Carlos Vallejo Márquez', 'Docente', 'EUGC450711MDFGTR07', 0, 0),
(222, 'Octaviano Humberto Domínguez Márquez', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea Carlos Vallejo Márquez', 'Docente', 'DOMO390322HVZMRC00', 0, 0),
(223, 'Rafael Guerrero Domínguez', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea Carlos Vallejo Márquez', 'Docente', 'GUDR510518HDFRMF07', 0, 0),
(224, 'Alfonso Torres Lobatón', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea Carlos Vallejo Márquez', 'Docente', 'TOLA440224HDFRBL09', 0, 0),
(225, 'Manuel Landeros Ledesma', 'ESCUELA NACIONAL DE MEDICINA Y HOMEOPATÍA (ENMH)', 'Presea Carlos Vallejo Márquez', 'Docente', 'LALM530506HDFNDN05', 0, 0),
(226, 'Ma. Eugenia Pliego Padilla', 'ESCUELA SUPERIOR DE ENFERMERÍA Y OBSTETRICIA (ESEO)', 'Presea Carlos Vallejo Márquez', 'Docente', 'PIPE480622MMCLDG09', 0, 0),
(227, 'Alfonso Rivas García', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea Carlos Vallejo Márquez', 'Docente', 'RIGA491006HDFVRL03', 0, 0),
(228, 'Fernando Vázquez Torres', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea Carlos Vallejo Márquez', 'Docente', 'VATF490925HCLZRR00', 0, 0),
(229, 'Francisco Ramírez Torres', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea Carlos Vallejo Márquez', 'Docente', 'RATF410724HMCMRR01', 0, 0),
(230, 'Humberto Oviedo Galdeano', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea Carlos Vallejo Márquez', 'Docente', 'OIGH460815HSPVLM01', 0, 0),
(231, 'Ofir José Ramírez García', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea Carlos Vallejo Márquez', 'Docente', 'RAGO460827HCHMRF01', 0, 0),
(232, 'Ramón Moreno Martínez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea Carlos Vallejo Márquez', 'Docente', 'MOMR460831HDFRRM01', 0, 0),
(233, 'Salvador Nava Rodríguez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea Carlos Vallejo Márquez', 'Docente', 'NARS460214HDFVDL09', 0, 0),
(234, 'Sylvio Julio García', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea Carlos Vallejo Márquez', 'Docente', 'GAXS460712HOCRXY00', 0, 0),
(235, 'Víctor Manuel Rafael Córdoba Lobo', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea Carlos Vallejo Márquez', 'Docente', 'COLV421201HVZRBC02', 0, 0),
(0, '', NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `distinciones_pae`
--

CREATE TABLE `distinciones_pae` (
  `No` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `NOMBRE` varchar(35) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DEPENDENCIA` varchar(99) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DISTINCION` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CATEGORIA` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `CURP` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Asistencia` tinyint(1) DEFAULT NULL,
  `Acompanante` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `distinciones_pae`
--

INSERT INTO `distinciones_pae` (`No`, `NOMBRE`, `DEPENDENCIA`, `DISTINCION`, `CATEGORIA`, `CURP`, `Asistencia`, `Acompanante`) VALUES
('53', 'Lucina Ortiz Gómez', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'OIGL600516MDFRMC09', 0, NULL),
('54-277', 'Olga Arvizu Saucedo', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'AISO671002MDFRCL02', 0, NULL),
('55', 'Teresa Soriano Aragón', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'SOAT790617MOCRRR00', 1, 1),
('56', 'Amada Gabriela Brenes López', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD TICOMÁN', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'BELA640913MDFRPM09', 0, NULL),
('57', 'Cristina Fernández Manrique', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD TICOMÁN', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'FEMC800724MDFRNR02', 1, 0),
('58', 'Gabriel Cortés Ramírez', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD TICOMÁN', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'CORG701230HDFRMB01', 0, NULL),
('59', 'Cecilia Mijangos Escobedo', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'MIEC810529MQTJSC01', 0, NULL),
('60', 'José Alejandro López León', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'LOLA721123HDFPNL05', 0, NULL),
('61', 'Liliana Arellano Mendoza', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'AEML770818MMCRNL09', 1, 0),
('62', 'Ingrid Mariel Martínez Delgadillo', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'MADI841121MDFRLN00', 0, NULL),
('63', 'Irene Kumul Trejo', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'KUTI690611MDFMRR04', 0, NULL),
('64', 'Nicolás Zamora Mendoza', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'ZAMN751111HDFMNC05', 0, NULL),
('65', 'Olga Cortez González', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'COGO771129MDFRNL03', 0, NULL),
('66', 'Roberto Medellín Lozano', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'MELR820908HDFDZB02', 0, NULL),
('67', 'Ana Lilia Echeverría Rivera', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'EERA720108MMCCVN06', 0, NULL),
('68', 'Cristian Evaristo Reyes Lara', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'RELC840724HDFYRR07', 0, NULL),
('69', 'Verónica Gabriela Ceja Ramírez', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'CERV600206MDFJMR04', 0, NULL),
('70', 'Alejandro López Hernández', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'LOHA840321HMCPRL02', 0, NULL),
('71', 'José Luis Muñoz Camacho', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'MUCL880113HDFXMS04', 0, NULL),
('72', 'Juan Duarte Morales', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'DUMJ790514HPLRRN01', 0, NULL),
('73', 'José Arturo Trejo Mosqueda', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'TEMA821106HDFRSR16', 0, NULL),
('74', 'Martha Rosa García Aguilar', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'GAAM730703MDFRGR06', 0, NULL),
('75', 'Rocío Martínez Mendoza', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'MAMR790519MDFRNC06', 0, NULL),
('76', 'Alma Rosa Pineda Batalla', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD SANTO TOMÁS', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'PIBA690823MDFNTL09', 0, NULL),
('77', 'Karla Patricia Santiago Veites Peza', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'SAPK711020MDFNZR09', 0, NULL),
('78', 'Lino Alberto Delgado Rodríguez', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'DERL781129HDFLDN06', 0, NULL),
('79', 'Rodrigo Marín Ávila', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'MAAR900502HDFRVD01', 0, NULL),
('80', 'Arturo Medecigo Rodríguez', 'ESCUELA SUPERIOR DE CÓMPUTO (ESCOM)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'MERA720220HDFDDR04', 0, NULL),
('81', 'Jorge Nieva Arango', 'ESCUELA SUPERIOR DE CÓMPUTO (ESCOM)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'NIAJ610304HTSVRR03', 0, NULL),
('82', 'Sergio Anselmo Aragón Guerrero', 'ESCUELA SUPERIOR DE CÓMPUTO (ESCOM)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'AAGS640421HDFRRR07', 1, 1),
('83', 'Adriana del Pilar Rojas Pérez', 'ESCUELA SUPERIOR DE ECONOMÍA (ESE)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'ROPA780727MDFJRD00', 0, NULL),
('84', 'Javier Esdras Chacón Escobedo', 'ESCUELA SUPERIOR DE ECONOMÍA (ESE)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'CAEJ731209HDFHSV09', 0, NULL),
('85', 'Mariano Pacheco Flores', 'ESCUELA SUPERIOR DE ECONOMÍA (ESE)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'PAFM550927HDFCLR00', 0, NULL),
('86', 'Mónica Catalina Domínguez Vargas', 'ESCUELA SUPERIOR DE INGENIERÍA TEXTIL (ESIT)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'DOVM870408MDFMRN02', 0, NULL),
('87', 'Nohemí Castañón Pineda', 'ESCUELA SUPERIOR DE INGENIERÍA TEXTIL (ESIT)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'CAPN780330MVZSNH04', 0, NULL),
('88', 'Saynacuri Libreros Jiménez', 'ESCUELA SUPERIOR DE INGENIERÍA TEXTIL (ESIT)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'LIJS880206MDFBMY00', 0, NULL),
('89', 'Aída Vences Cortés', 'ESCUELA SUPERIOR DE TURISMO (EST)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'VECA701230MDFNRD09', 0, NULL),
('90', 'Álvaro Ramírez López', 'ESCUELA SUPERIOR DE TURISMO (EST)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'RALA730818HDFMPL09', 0, NULL),
('91', 'Nancy Fabiola Rico Muñoz', 'ESCUELA SUPERIOR DE TURISMO (EST)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'RIMN780321MMCCXN02', 0, NULL),
('92', 'Alejandro Rico Gómez', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'RIGA720623HDFCML09', 0, NULL),
('93', 'Concepción Hernández Castillo', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'HECC571127MDFRSN05', 0, NULL),
('94', 'Ruth Beatriz Vallejo Ramírez', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'VARR660311MDFLMT02', 0, NULL),
('95', 'Alejandra Delgado Trejo', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'DETA740619MMCLRL09', 0, NULL),
('96', 'Dalia Yescas Ramírez', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'YERD710101MDFSML05', 0, NULL),
('97', 'Jovita García Vidal', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'GAVJ650215MVZRDV05', 0, NULL),
('98', 'Norma Carolina Bravo García', 'ESCUELA NACIONAL DE MEDICINA Y HOMEOPATÍA (ENMH)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'BAGN751124MDFRRR06', 0, NULL),
('99', 'Santa Bárbara Jiménez Barrera', 'ESCUELA NACIONAL DE MEDICINA Y HOMEOPATÍA (ENMH)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'JIBS741204MMCMRN08', 0, NULL),
('100', 'Verónica Ávila Azuara', 'ESCUELA NACIONAL DE MEDICINA Y HOMEOPATÍA (ENMH)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'AIAV720416MPLVZR00', 0, NULL),
('101', 'Juan Antonio Sánchez Martínez', 'ESCUELA SUPERIOR DE ENFERMERÍA Y OBSTETRICIA (ESEO)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'SAMJ630901HVZNRN08', 0, NULL),
('102', 'María Eugenia Vértiz Alguera', 'ESCUELA SUPERIOR DE ENFERMERÍA Y OBSTETRICIA (ESEO)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'VEAE581227MDFRLG06', 0, NULL),
('103', 'Ricardo Galina Ramírez', 'ESCUELA SUPERIOR DE ENFERMERÍA Y OBSTETRICIA (ESEO)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'GARR560121HDFLMC00', 0, NULL),
('109', 'Evelyn Limas Magaña', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS GUANAJUATO (UPIIG)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'LIME730511MDFMGV06', 0, NULL),
('110', 'Jaime Uribe Rojas', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS GUANAJUATO (UPIIG)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'UIRJ690213HDFRJM04', 0, NULL),
('111', 'María Guadalupe Arrieta Navarro', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS GUANAJUATO (UPIIG)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'AING861227MGTRVD04', 1, 0),
('112', 'Adriana Bautista Hernández', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS HIDALGO (UPIIH)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'BAHA670305MDFTRD09', 0, NULL),
('113', 'Héctor Hugo Tapia Hernández', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS HIDALGO (UPIIH)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'TAHH911010HMCPRC02', 0, NULL),
('114', 'Mónica Alejandra Valencia Paz', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS HIDALGO (UPIIH)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'VAPM810508MDFLZN01', 0, NULL),
('115', 'Araceli Perusquia Santamaría', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS HIDALGO (UPIIH)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'PESA740518MHGRNR06', 0, NULL),
('116', 'Eduardo Ramón Rivera Jiménez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS ZACATECAS (UPIIZ)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'RIJE750830HMCVMD06', 0, NULL),
('117', 'Juana Erendira Galván Rodríguez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS ZACATECAS (UPIIZ)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'GARJ820124MTSLDN08', 0, NULL),
('118', 'Pablo César Urrutia Arroyo', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA CAMPUS ZACATECAS (UPIIZ)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'UUAP761009HNLRRB08', 0, NULL),
('119', 'Maricela Morales Vázquez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'MOVM731214MDFRZR05', 0, NULL),
('120', 'Mario Alfredo Bizarro Moreno', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'BIMM750318HDFZRR03', 1, 1),
('121', 'David Olmos Peña', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA EN INGENIERÍA Y TECNOLOGÍAS AVANZADAS (UPIITA)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'OOPD751017HDFLXV02', 0, NULL),
('122', 'Margarita Pérez Vallejo', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA EN INGENIERÍA Y TECNOLOGÍAS AVANZADAS (UPIITA)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'PEVM630712MDFRLR09', 0, NULL),
('123', 'María del Carmen Estrada Rodríguez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA EN INGENIERÍA Y TECNOLOGÍAS AVANZADAS (UPIITA)', 'Diploma de Eficiencia y Eficacia', 'Administrativo', 'EARC751002MDFSDR09', 0, NULL),
('262', 'Ana María Vargas González', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'VXGA751018MDFRNN05', 0, NULL),
('263', 'Antonio Orendain Rodríguez', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'OERA620708HDFRDN07', 0, NULL),
('264', 'Ariana Minerva Leyva Quintana', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'LEQA720503MDFYNR08', 0, NULL),
('265', 'Esther Rubio Durán', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'RUDE670722MDFBRS00', 0, NULL),
('266', 'Gabriela Hernández Hernández', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'HEHG730324MMCRRB01', 0, NULL),
('267', 'Ivonne Romo Hernández', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'ROHI710319MDFMRV09', 0, NULL),
('268', 'José Ramón Suárez Toledo', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'SUTR650831HMNRLM07', 0, NULL),
('269', 'Juan Gabriel Hernández Montero', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'HEMJ720413HMCRNN01', 0, NULL),
('270', 'Juan Valadez Sandoval', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'VASJ661102HDFLNN09', 0, NULL),
('271', 'Judith Isabel Montes Juárez', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'MOJJ550506MDFNRD03', 0, NULL),
('272', 'Magda Elena Berrospe Martínez', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'BEMM700213MDFRRG08', 0, NULL),
('273', 'María Guadalupe Olmedo Anaya', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'OEAG740413MDFLND08', 0, NULL),
('274', 'Martín Figueroa Sánchez', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'FISM660313HDFGNR05', 0, NULL),
('275', 'Noralba Juárez Antonio', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'JUAN630820MVZRNR03', 0, NULL),
('276', 'Virginia González González', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD AZCAPOTZALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'GOGV530928MDFNNR03', 0, NULL),
('54-277', 'Olga Arvizu Saucedo', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD CULHUACÁN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'AISO671002MDFRCL02', 0, NULL),
('278', 'Claudia García Ramírez', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD TICOMÁN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'GARC670125MDFRML05', 0, NULL),
('279', 'María del Carmen Canales Morales', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD TICOMÁN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'CAMC590406MDFNRR09', 0, NULL),
('280', 'Enrique Jiménez Lezama', 'ESCUELA SUPERIOR DE INGENIERÍA MECÁNICA Y ELÉCTRICA (ESIME) UNIDAD ZACATENCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'JILE681129HDFMZN04', 0, NULL),
('281', 'Blanca Estela Castillo Tapolla', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'CATB571204MDFSPL09', 0, NULL),
('282', 'Irma Aguilar Gutiérrez', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'AUGI680512MGTGTR04', 0, NULL),
('283', 'José Alfonso Ordaz Reyes', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'OARA651230HDFRYL09', 0, NULL),
('284', 'José Alfredo Prado Monsalvo', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'PAMA710117HDFRNL03', 0, NULL),
('285', 'María Isabel García Soperanes', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'GASI670913MDFRPS09', 0, NULL),
('286', 'María Magdalena Prado Monsalvo', 'ESCUELA SUPERIOR DE FÍSICA Y MATEMÁTICAS (ESFM)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'PAMM620529MDFRNG07', 0, NULL),
('287', 'Delia Patricia Muciño Castillo', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'MUCD660317MTSCSL03', 0, NULL),
('288', 'José Alberto Hernández Campech', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'HECA690925HTLRML06', 0, NULL),
('289', 'Juana García Monroy', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'GAMJ710109MDFRNN04', 0, NULL),
('290', 'Juana María Yáñez Castro', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'YACJ720904MDFXSN02', 0, NULL),
('291', 'Carlos Aguilar López', 'ESCUELA SUPERIOR DE INGENIERÍA TEXTIL (ESIT)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'AULC650915HHGGPR05', 0, NULL),
('292', 'Jorge Ángel González Rodríguez', 'ESCUELA SUPERIOR DE INGENIERÍA TEXTIL (ESIT)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'GORJ710903HDFNDR09', 0, NULL),
('293', 'María Luisa Ramos Altamirano', 'ESCUELA SUPERIOR DE INGENIERÍA TEXTIL (ESIT)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'RAAL680121MDFMLS05', 0, NULL),
('294', 'Carlos Carrillo Ríos', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'CARC610819HDFRSR03', 0, NULL),
('295', 'Claudia Cortés Palacios', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'COPC690614MDFRLL06', 0, NULL),
('296', 'Eduardo Contreras Pineda', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'COPE481010HDFNND08', 0, NULL),
('297', 'Mario Fernández Gómez', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'FEGM700908HDFRMR08', 0, NULL),
('298', 'Rosa María Martínez Reyes', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'MARR610319MDFRYS01', 0, NULL),
('299', 'Virginia Mendoza Castañeda', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TECAMACHALCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'MECV670521MDFNSR03', 0, NULL),
('300', 'Ana Aurora Montoya Ramírez', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'MORA740726MDFNMN01', 0, NULL),
('301', 'Josefina Angélica Quiñones Roa', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'QURJ690813MDFXXS08', 0, NULL),
('302', 'Juan Martínez Huerta', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'MAHJ670228HDFRRN00', 0, NULL),
('303', 'Román Jiménez Ríos', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'JIRR520809HHGMSM06', 0, NULL),
('304', 'Ulises Jaramillo Molina', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD TICOMÁN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'JAMU710713HGRRLL03', 0, NULL),
('305', 'Mayra Maura Olloqui Mora', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'OOMM731214MDFLRY07', 0, NULL),
('306', 'Mireya del Carmen Conde Romero', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'CORM700326MDFNMR02', 0, NULL),
('307', 'Sergio Gómez Morales', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'GOMS661008HHGMRR07', 0, NULL),
('308', 'Alejandro Valencia Aguilar', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD SANTO TOMÁS', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'VAAA680425HDFLGL08', 0, NULL),
('309', 'Jesús Gómez Galicia', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD SANTO TOMÁS', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'GOGJ681012HDFMLS00', 0, NULL),
('310', 'María Guadalupe Riou Hernández', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD SANTO TOMÁS', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'RIHG640217MBCXRD01', 0, NULL),
('311', 'Nabor Zacateco Rojas', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD SANTO TOMÁS', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'ZARN700825HPLCJB05', 0, NULL),
('312', 'Claudia Guillermina González Lozada', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'GOLC730519MDFNZL09', 0, NULL),
('313', 'Eudoxia Paulino Benítez', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'PABE551102MGRLND08', 0, NULL),
('314', 'Fabiola Verónica Rodríguez Pozos', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'ROPF710120MDFDZB09', 0, NULL),
('315', 'Georgina Elena Cruz Flores', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'CUFG610423MTLRLR09', 0, NULL),
('316', 'Gildardo González Migranas', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'GOMG660608HPLNGL09', 0, NULL),
('317', 'José Juan Cruz Durán', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'CUDJ700330HDFRRN05', 0, NULL),
('318', 'Mario Miranda Hernández', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'MIHM610119HMCRRR09', 0, NULL),
('319', 'Marisela Navarrete Rivas', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'NARM720613MDFVVR02', 0, NULL),
('320', 'Miguel Ángel Quintas López', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'QULM691110HDFNPG03', 0, NULL),
('321', 'Rocío Ledesma Gómez', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'LEGR690831MDFDMC04', 0, NULL),
('322', 'Rocío Pérez Ferrer', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'PEFR750522MDFRRC03', 0, NULL),
('323', 'Víctor Manuel Montero Olivos', 'ESCUELA SUPERIOR DE COMERCIO Y ADMINISTRACIÓN (ESCA), UNIDAD TEPEPAN', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'MOOV640318HDFNLC06', 0, NULL),
('324', 'Beatriz Monroy Arriaga', 'ESCUELA SUPERIOR DE ECONOMÍA (ESE)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'MOAB720617MDFNRT07', 0, NULL),
('325', 'Blanca Elena Sandoval Vargas', 'ESCUELA SUPERIOR DE ECONOMÍA (ESE)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'SAVB720119MDFNRL08', 0, NULL),
('326', 'Ricardo Valencia Sánchez', 'ESCUELA SUPERIOR DE ECONOMÍA (ESE)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'VASR651116HDFLNC04', 0, NULL),
('327', 'Verónica Paredes Jiménez', 'ESCUELA SUPERIOR DE TURISMO (EST)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'PAJV690711MDFRMR02', 0, NULL),
('328', 'Rogelio Suárez Olvera', 'ESCUELA NACIONAL DE CIENCIAS BIOLÓGICAS (ENCB)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'SUOR691207HDFRLG04', 0, NULL),
('329', 'Alicia Guel Rodríguez', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'GURA690419MDFLDL04', 0, NULL),
('330', 'César Miguel Mejia Barradas', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'MEBC660713HDFJRS03', 0, NULL),
('331', 'Gerardo Nava Lugo', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'NALG601122HDFVGR00', 0, NULL),
('332', 'Irad Sella Maruri Correa', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'MACI721204MDFRRR05', 0, NULL),
('333', 'Ricardo Rosete Ladino', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'ROLR550403HDFSDC09', 0, NULL),
('334', 'Ma. Paula Gutiérrez Guzmán', 'ESCUELA SUPERIOR DE ENFERMERÍA Y OBSTETRICIA (ESEO)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'GUGP470524MGTTZL14', 0, NULL),
('339', 'Eduardo Otero Arce', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'OEAE730327HDFTRD01', 0, NULL),
('340', 'Jorge Sosa Ramírez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'SORJ481225HDFSMR07', 0, NULL),
('341', 'José Luis Arelio Palma', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'AEPL670722HDFRLS03', 1, 1),
('342', 'Tania del Carmen Flores Vázquez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'FOVT701027MJCLZN01', 0, NULL),
('343', 'Víctor Manuel Gomora Berriel', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'GOBV710616HDFMRC05', 0, NULL),
('344', 'María Teresa Cruz Rodríguez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA EN INGENIERÍA Y TECNOLOGÍAS AVANZADAS (UPIITA)', 'Presea \"Juan de Dios Bátiz\"', 'Administrativo', 'CURT690225MDFRDR08', 0, NULL),
('396', 'Pedro Ruiz Ordorica', 'ESCUELA SUPERIOR DE INGENIERÍA Y ARQUITECTURA (ESIA) UNIDAD ZACATENCO', 'Presea Carlos Vallejo Márquez', 'Administrativo', 'RUOP550505HDFZRD06', 0, NULL),
('397', 'Francisco Sosa Alonso', 'ESCUELA SUPERIOR DE INGENIERÍA QUÍMICA E INDUSTRIAS EXTRACTIVAS (ESIQIE)', 'Presea Carlos Vallejo Márquez', 'Administrativo', 'SOAF560529HDFSLR04', 0, NULL),
('398', 'Miguel Ángel Gasca Zempoalteca', 'ESCUELA SUPERIOR DE INGENIERÍA TEXTIL (ESIT)', 'Presea Carlos Vallejo Márquez', 'Administrativo', 'GAZM520801HDFSMG05', 0, NULL),
('399', 'Dolores Legorreta Aguilar', 'ESCUELA SUPERIOR DE MEDICINA (ESM)', 'Presea Carlos Vallejo Márquez', 'Administrativo', 'LEAD520511MDFGGL05', 0, NULL),
('400', 'Diego Martínez Sánchez', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea Carlos Vallejo Márquez', 'Administrativo', 'MASD501113HDFRNG08', 0, NULL),
('401', 'Víctor Morales Marín', 'UNIDAD PROFESIONAL INTERDISCIPLINARIA DE INGENIERÍA Y CIENCIAS SOCIALES Y ADMINISTRATIVAS (UPIICSA)', 'Presea Carlos Vallejo Márquez', 'Administrativo', 'MOMV480203HPLRRC06', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_usuario` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `last_name_paternal` varchar(100) DEFAULT NULL,
  `last_name_maternal` varchar(100) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_expiration` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_usuario`, `email`, `password`, `username`, `full_name`, `last_name_paternal`, `last_name_maternal`, `reset_token`, `reset_expiration`) VALUES
(1, 'gustavo.25.zgo@gmail.com', '$2y$10$fxIk1vaFmXcFELVW41fhT.L5rUInJAx8AGMIgMBn/ebOdZxfAGq/S', 'tavo', 'Gustavo', 'Zaragoza', 'Guerrero', 'afb3ea9e7beaa587d1cb8c4f86740b0c362e3d0b40ee3c5f374cee66cbbf4a28af6ff71c6e773c1e8900d890590fc6737758', '2024-06-30 13:37:06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
