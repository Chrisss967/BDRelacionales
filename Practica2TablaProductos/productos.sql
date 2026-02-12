-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2026 a las 16:17:32
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
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `precio` double NOT NULL,
  `marca` varchar(50) NOT NULL,
  `descripción` varchar(500) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `precio`, `marca`, `descripción`, `cantidad`) VALUES
(1, 'Nintendo Switch OLED w/ White Joy-Con - Standard Edition (Internacional)', 5899, 'Nintendo', 'Variante de importación, puede tener descripciones en el idioma de origen, y es posible que la garantía del fabricante no sea válida en México.\r\nSoporte ajustable y amplio - Ajusta el soporte para encontrar ángulo de vista en el modo semiportátil\r\n64 GB de almacenamiento interno - Guarda los juegos en tu consola con 64 GB de almacenamiento interno\r\nAudio mejorado - Disfruta de un audio superior en los modos portátil y semiportátil con los altavoces de la consola\r\nPantalla OLED de 7 pulgadas (17.', 30),
(2, 'Nintendo Wii Console, White (Renewed)', 2283, 'Nintendo', 'El paquete incluye: consola Wii, mando a distancia Wii, Nunchuk, mando a distancia Wii, barra de sensor, adaptador de CA Wii, cable AV Wii.\r\nAcceso Wi-Fi integrado para una fácil conexión a Internet\r\n', 2),
(3, 'Kingston Fury Impact DDR5, Memoria Gamer para Laptop, Capacidad: 16GB, Frecuencia: 5600MT/s, Latencia: CL 40, Factor de Forma: SODIMM 262-Pin, Color: Negro, Numero de Parte: KF556S40IB-16\r\n', 2799, 'Kingston Fury', 'Fabuloso rendimiento de SODIMM DDR5\r\nFunción de sobreaceleración automática Plug N Play\r\nCon certificación XMP 3.0 de Intel\r\nMenor consumo eléctrico, mayor eficiencia\r\nMayor estabilidad con ECC interno\r\n', 30),
(4, 'Mikel\'s JDB-6 Juego de Desarmadores, 6 Pzas\r\n', 230, 'phillips', 'Herramienta básica para apretar y aflojar tornillos\r\nDiseño ergonómico con mango resistente al impacto\r\nBarra forjada en acero al cromo vanadio\r\nMango fabricado con hule TPR y polipropileno\r\nCon punta magnetizada', 6),
(5, 'Ghost of Yotei - PlayStation 5\r\n', 1464.94, 'Sucker Punch', 'ELIGE TU ARMA: Lucha contra los oponentes de Atsu como mejor te parezca. Con katanas duales niveladas, odachi, kusarigama y otras armas nuevas, no hay una sola forma de pelear. Crea un creciente arsenal de armas digno de enfrentarte a los Seis de Yōtei.\r\nEMBÁRCATE EN UN VIAJE CINEMÁTICO Y EMOCIONAL: La historia de Atsu va mucho más allá de derrotar a sus enemigos. Con cada misión, está en búsqueda de sanar su pasado traumático. ¿Podrá dejar su venganza de lado y reconstruir su pasado roto?\r\nSien', 5),
(6, 'Consola Sony PlayStation Classic 20 juegos 2 Controles -Gris\r\n', 3298.3, 'Sony', 'PlayStation Classic viene con 20 juegos precargados, incluyendo Final Fantasy Vll, Jumping Flash, Ridge Racer Tipo 4, Tekken 3 y Wild Arms.\r\nEsta mini consola es aproximadamente un 45% más pequeña que la PlayStation original.\r\nIncluye dos controladores con cable, una tarjeta de memoria virtual y un cable HDMI.', 30),
(7, 'Nintendo Game Boy - Original (Gray) (Renewed) [video game]\r\n', 3382, 'Nintendo', 'A diferencia de las modernas consolas de mano, el GB Original no tiene luz trasera y se utiliza mejor en una habitación bien iluminada o debajo de una lámpara.\r\n', 1),
(8, 'Persona 5 Royal para Nintendo Switch - Standard Edition\r\n', 1600, 'Atlus', 'Persona 5 Royal presenta un estilo visual único y presenta una banda sonora inolvidable del compositor nominado al premio Shoji Meguro.\r\nEste título está repleto de personajes queridos, confidentes, profundidad de la historia.\r\nMuchos lugares para explorar con muchas oportunidades para fortalecer sus habilidades en el metaverso.\r\n¡Explora Tokio, desbloquea Personas, personaliza tu propio Thieves Den personal, experimenta finales alternativos y más!', 4),
(9, 'Router Davolink Minions Wi-Fi 6E - Eleva tu experiencia de conectividad Kevin', 3166.36, 'Smart Air', 'Router de minion tarolero', 1),
(10, 'Valve Steam Deck 1TB OLED\r\n', 16315, 'Valve', 'International Version, 7.4” diagonal, HDR OLED, 1280 x 800 x RGB, up to 90Hz Refresh rate, High performance touch, <0.1 ms Response time, 1,000 nits peak brightness (HDR), 600 nits (SDR), 1TB NVMe SSD, 16GB LPDDR5 on-board RAM (5500 MT/s quad 32-bit channels), microSD UHS-I supports SD, SDXC and SDHC', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
