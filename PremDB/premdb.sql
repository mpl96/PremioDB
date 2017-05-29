-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-05-2017 a las 22:38:40
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `premdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambitos`
--

CREATE TABLE `ambitos` (
  `idAmbito` int(2) NOT NULL,
  `nom_ambito` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ambitos`
--

INSERT INTO `ambitos` (`idAmbito`, `nom_ambito`) VALUES
(1, 'Ciencias'),
(2, 'Etica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colegios`
--

CREATE TABLE `colegios` (
  `CIF` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `nom_entidad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `responsable` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` int(9) NOT NULL,
  `idProvincia` int(11) NOT NULL,
  `domicilio_entidad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `web` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numIndicativo` int(5) DEFAULT NULL,
  `estatutos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registros` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `compromiso` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validado` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `colegios`
--

INSERT INTO `colegios` (`CIF`, `nom_entidad`, `responsable`, `telefono`, `idProvincia`, `domicilio_entidad`, `correo`, `web`, `numIndicativo`, `estatutos`, `registros`, `compromiso`, `validado`) VALUES
('23456789Z', 'ColegioPrueba', 'ColegioPrueba', 623412532, 1, 'csa aefgjhuiv ', 'ColegioPrueba@email.com', 'www.ColegioPrueba.es', 3, 'CartaCompromiso.pdf', 'cartaCompromiso.pdf', 'cartaCompromiso.pdf', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunidades`
--

CREATE TABLE `comunidades` (
  `idComunidad` int(11) NOT NULL,
  `nom_comunidad` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `comunidades`
--

INSERT INTO `comunidades` (`idComunidad`, `nom_comunidad`) VALUES
(1, 'Andalucía'),
(2, 'Aragón'),
(3, 'Asturias,  Principado de'),
(4, 'Balears, Illes'),
(5, 'Canarias'),
(6, 'Cantabria'),
(7, 'Castilla y León'),
(8, 'Castilla - La Mancha'),
(9, 'Cataluña'),
(10, 'Comunitat Valenciana'),
(11, 'Extremadura'),
(12, 'Galicia'),
(13, 'Madrid, Comunidad de'),
(14, 'Murcia, Región de'),
(15, 'Navarra, Comunidad Foral de'),
(16, 'País Vasco'),
(17, 'Rioja, La'),
(18, 'Ceuta'),
(19, 'Melilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidades`
--

CREATE TABLE `entidades` (
  `CIF` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `nom_entidad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `responsable` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` int(9) NOT NULL,
  `idLocalidad` int(11) NOT NULL,
  `domicilio_entidad` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `web` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `numIndicativo` int(5) DEFAULT NULL,
  `estatutos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `registros` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `compromiso` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validado` tinyint(1) DEFAULT NULL,
  `empresa` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `entidades`
--

INSERT INTO `entidades` (`CIF`, `nom_entidad`, `responsable`, `telefono`, `idLocalidad`, `domicilio_entidad`, `correo`, `web`, `numIndicativo`, `estatutos`, `registros`, `compromiso`, `validado`, `empresa`) VALUES
('15642', 'prueba1', 'yo', 159487623, 1, 'avd. prueba1', 'prueba1@prueba1.es', 'www.prueba1.es', 1, 'prueba1.pdf', 'prueba1.pdf', 'prueba1.pdf', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `numerosidentificativos`
--

CREATE TABLE `numerosidentificativos` (
  `idNumero` int(11) NOT NULL,
  `numIdentificativo` int(5) NOT NULL,
  `usado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `numerosidentificativos`
--

INSERT INTO `numerosidentificativos` (`idNumero`, `numIdentificativo`, `usado`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `idProvincia` int(11) NOT NULL,
  `nom_provincia` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `idComunidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`idProvincia`, `nom_provincia`, `idComunidad`) VALUES
(1, 'Álava', 16),
(2, 'Albacete', 8),
(3, 'Alicante/Alacant', 10),
(4, 'Almería', 1),
(5, 'Ávila', 7),
(6, 'Badajoz', 11),
(7, 'Balears, Illes', 4),
(8, 'Barcelona', 9),
(9, 'Burgos', 7),
(10, 'Cáceres', 11),
(11, 'Cádiz', 1),
(12, 'Castellón/Castelló', 10),
(13, 'Ciudad Real', 8),
(14, 'Córdoba', 1),
(15, 'Coruña, A', 12),
(16, 'Cuenca', 8),
(17, 'Girona', 9),
(18, 'Granada', 1),
(19, 'Guadalajara', 8),
(20, 'Guipúzcoa', 16),
(21, 'Huelva', 1),
(22, 'Huesca', 2),
(23, 'Jaén', 1),
(24, 'León', 7),
(25, 'Lleida', 9),
(26, 'Rioja, La', 17),
(27, 'Lugo', 12),
(28, 'Madrid', 13),
(29, 'Málaga', 1),
(30, 'Murcia', 14),
(31, 'Navarra', 15),
(32, 'Ourense', 12),
(33, 'Asturias', 3),
(34, 'Palencia', 7),
(35, 'Palmas, Las', 5),
(36, 'Pontevedra', 12),
(37, 'Salamanca', 7),
(38, 'Santa Cruz de Tenerife', 5),
(39, 'Cantabria', 6),
(40, 'Segovia', 7),
(41, 'Sevilla', 1),
(42, 'Soria', 7),
(43, 'Tarragona', 9),
(44, 'Teruel', 2),
(45, 'Toledo', 8),
(46, 'Valencia/Valéncia', 10),
(47, 'Valladolid', 7),
(48, 'Vizcaya', 16),
(49, 'Zamora', 7),
(50, 'Zaragoza', 2),
(51, 'Melilla', 19),
(52, 'Ceuta', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `idProyecto` int(11) NOT NULL,
  `nom_proyecto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fechaInicio` date DEFAULT NULL,
  `fechaFin` date DEFAULT NULL,
  `numeroVoluntarios` int(4) DEFAULT NULL,
  `edadMinima` int(1) NOT NULL,
  `edadMaxima` int(2) NOT NULL,
  `idLocalidad` int(11) NOT NULL,
  `direccion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numIndicativo` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`idProyecto`, `nom_proyecto`, `fechaInicio`, `fechaFin`, `numeroVoluntarios`, `edadMinima`, `edadMaxima`, `idLocalidad`, `direccion`, `descripcion`, `numIndicativo`) VALUES
(1, 'Prueba', '0000-00-00', '0000-00-00', 5, 10, 15, 2, 'vsrtgsrtgs', 'safdsadfcdfre', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_ambito`
--

CREATE TABLE `proyectos_ambito` (
  `idProyecto` int(11) NOT NULL,
  `idAmbito` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `proyectos_ambito`
--

INSERT INTO `proyectos_ambito` (`idProyecto`, `idAmbito`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos_participantes`
--

CREATE TABLE `proyectos_participantes` (
  `idProyecto` int(11) NOT NULL,
  `cif` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `dni` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombreAlumno` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fechaNac` date NOT NULL,
  `item1` tinyint(4) NOT NULL,
  `item2` tinyint(4) NOT NULL,
  `item3` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambitos`
--
ALTER TABLE `ambitos`
  ADD PRIMARY KEY (`idAmbito`);

--
-- Indices de la tabla `comunidades`
--
ALTER TABLE `comunidades`
  ADD PRIMARY KEY (`idComunidad`);

--
-- Indices de la tabla `entidades`
--
ALTER TABLE `entidades`
  ADD PRIMARY KEY (`CIF`);

--
-- Indices de la tabla `numerosidentificativos`
--
ALTER TABLE `numerosidentificativos`
  ADD PRIMARY KEY (`idNumero`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`idProvincia`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`idProyecto`);

--
-- Indices de la tabla `proyectos_ambito`
--
ALTER TABLE `proyectos_ambito`
  ADD PRIMARY KEY (`idProyecto`,`idAmbito`);

--
-- Indices de la tabla `proyectos_participantes`
--
ALTER TABLE `proyectos_participantes`
  ADD PRIMARY KEY (`idProyecto`,`cif`,`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ambitos`
--
ALTER TABLE `ambitos`
  MODIFY `idAmbito` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `comunidades`
--
ALTER TABLE `comunidades`
  MODIFY `idComunidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `numerosidentificativos`
--
ALTER TABLE `numerosidentificativos`
  MODIFY `idNumero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `idProvincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `idProyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
