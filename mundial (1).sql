-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2026 a las 10:39:28
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
-- Base de datos: `mundial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `confederaciones`
--

CREATE TABLE `confederaciones` (
  `id_confederacion` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `siglas` varchar(10) NOT NULL,
  `region` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `confederaciones`
--

INSERT INTO `confederaciones` (`id_confederacion`, `nombre`, `siglas`, `region`) VALUES
(1, 'Unión de Asociaciones Europeas de Fútbol', 'UEFA', 'Europa'),
(2, 'Confederación Sudamericana de Fútbol', 'CONMEBOL', 'Sudamérica'),
(3, 'Confederación de Fútbol de Norte, Centroamérica y el Caribe', 'CONCACAF', 'Norteamérica, Centroamérica y el Caribe'),
(4, 'Confederación Asiática de Fútbol', 'AFC', 'Asia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `codigo_fifa` char(3) NOT NULL,
  `entrenador` varchar(100) NOT NULL,
  `id_confederacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id_equipo`, `nombre`, `codigo_fifa`, `entrenador`, `id_confederacion`) VALUES
(1, 'Argentina', 'ARG', 'Lionel Scaloni', 2),
(2, 'México', 'MEX', 'Javier Aguirre', 3),
(3, 'Alemania', 'ALE', 'Julian Nagelsmann', 1),
(4, 'España', 'ESP', 'Luis Enrique', 1),
(5, 'Inglaterra', 'ING', 'Thomas Tuchel', 1),
(6, 'Japón', 'JAP', 'Hayime Moriyasu', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadios`
--

CREATE TABLE `estadios` (
  `id_estadio` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ciudad` varchar(80) NOT NULL,
  `pais` varchar(80) NOT NULL,
  `capacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `estadios`
--

INSERT INTO `estadios` (`id_estadio`, `nombre`, `ciudad`, `pais`, `capacidad`) VALUES
(1, 'Wembley', 'Londres', 'Inglaterra', 90000),
(2, 'Santiago Bernabeu', 'Madrid', 'España', 83000),
(3, 'San Siro', 'Milán', 'Italia', 75000),
(4, 'Allianz Arena', 'Munich', 'Alemania', 70000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

CREATE TABLE `jugador` (
  `id_jugador` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `posicion` varchar(30) NOT NULL,
  `numero_dorsal` tinyint(4) NOT NULL,
  `fecha_nac` date NOT NULL,
  `id_equipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id_jugador`, `nombre`, `posicion`, `numero_dorsal`, `fecha_nac`, `id_equipo`) VALUES
(1, 'Manuel Neuer', 'Portero', 1, '1986-03-27', 3),
(2, 'Memo Ochoa', 'Portero', 13, '1985-07-13', 2),
(3, 'Nicolas Otamendi', 'Defensa', 19, '1988-02-12', 1),
(4, 'John Stones', 'Defensa', 5, '1994-05-28', 5),
(5, 'Tsuyoshi Watanabe', 'Defensa', 4, '1997-02-05', 6),
(6, 'Dani Olmo', 'Mediocampista', 20, '1998-05-07', 4),
(7, 'Joshua Kimmich', 'Mediocampista', 6, '1995-02-08', 3),
(8, 'Javier Hernandez', 'Delantero', 14, '1988-06-01', 2),
(9, 'Harry Kane', 'Delantero', 9, '1993-07-28', 5),
(10, 'Lionel Messi', 'Delantero', 10, '1987-06-24', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partido`
--

CREATE TABLE `partido` (
  `id_partido` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `fase` varchar(30) NOT NULL,
  `goles_local` tinyint(4) NOT NULL,
  `goles_visitante` tinyint(4) NOT NULL,
  `id_estadio` int(11) NOT NULL,
  `id_local` int(11) NOT NULL,
  `id_visitante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `partido`
--

INSERT INTO `partido` (`id_partido`, `fecha`, `fase`, `goles_local`, `goles_visitante`, `id_estadio`, `id_local`, `id_visitante`) VALUES
(1, '2026-05-15 10:09:08', 'Grupos', 0, 1, 4, 3, 2),
(2, '2026-05-15 10:09:08', 'Cuartos de final', 1, 2, 1, 5, 1),
(3, '2026-05-15 10:09:08', 'Octavos de final', 1, 3, 3, 2, 4),
(4, '2026-05-15 10:09:08', 'Semifinal', 1, 7, 2, 4, 3),
(5, '2026-05-15 10:09:08', 'Final', 1, 0, 1, 3, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `confederaciones`
--
ALTER TABLE `confederaciones`
  ADD PRIMARY KEY (`id_confederacion`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id_equipo`),
  ADD KEY `id_confederacion` (`id_confederacion`);

--
-- Indices de la tabla `estadios`
--
ALTER TABLE `estadios`
  ADD PRIMARY KEY (`id_estadio`);

--
-- Indices de la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD PRIMARY KEY (`id_jugador`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indices de la tabla `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`id_partido`),
  ADD KEY `id_visitante` (`id_visitante`),
  ADD KEY `id_local` (`id_local`),
  ADD KEY `id_estadio` (`id_estadio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `confederaciones`
--
ALTER TABLE `confederaciones`
  MODIFY `id_confederacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estadios`
--
ALTER TABLE `estadios`
  MODIFY `id_estadio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `jugador`
--
ALTER TABLE `jugador`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `partido`
--
ALTER TABLE `partido`
  MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`id_confederacion`) REFERENCES `confederaciones` (`id_confederacion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugador`
--
ALTER TABLE `jugador`
  ADD CONSTRAINT `jugador_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id_equipo`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `partido`
--
ALTER TABLE `partido`
  ADD CONSTRAINT `partido_ibfk_1` FOREIGN KEY (`id_estadio`) REFERENCES `estadios` (`id_estadio`) ON UPDATE CASCADE,
  ADD CONSTRAINT `partido_ibfk_2` FOREIGN KEY (`id_local`) REFERENCES `equipo` (`id_equipo`) ON UPDATE CASCADE,
  ADD CONSTRAINT `partido_ibfk_3` FOREIGN KEY (`id_visitante`) REFERENCES `equipo` (`id_equipo`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
