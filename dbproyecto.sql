-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2019 a las 00:11:22
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `discossolidos`
--

CREATE TABLE `discossolidos` (
  `id` int(11) NOT NULL,
  `marca` varchar(110) COLLATE utf8_bin NOT NULL,
  `modelo` varchar(110) COLLATE utf8_bin NOT NULL,
  `capacidad` varchar(110) COLLATE utf8_bin NOT NULL,
  `precio` float NOT NULL,
  `imgprincipal` varchar(300) COLLATE utf8_bin NOT NULL,
  `img2` varchar(300) COLLATE utf8_bin NOT NULL,
  `img3` varchar(300) COLLATE utf8_bin NOT NULL,
  `img4` varchar(300) COLLATE utf8_bin NOT NULL,
  `img5` varchar(300) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `discossolidos`
--

INSERT INTO `discossolidos` (`id`, `marca`, `modelo`, `capacidad`, `precio`, `imgprincipal`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'HP', 'DISCO SOLIDO 2.5\" HP 120GB S700 7MM', '120 GB', 88.92, 'https://www.yamoshi.com.pe/26507-large_default/disco-solido-25-hp-120gb-s700-7mm.jpg', 'https://www.yamoshi.com.pe/26507-home_default/disco-solido-25-hp-120gb-s700-7mm.jpg', 'https://www.yamoshi.com.pe/26508-home_default/disco-solido-25-hp-120gb-s700-7mm.jpg', 'https://www.yamoshi.com.pe/26509-home_default/disco-solido-25-hp-120gb-s700-7mm.jpg', 'https://www.yamoshi.com.pe/26510-home_default/disco-solido-25-hp-120gb-s700-7mm.jpg'),
(2, 'HP', 'DISCO SOLIDO 2.5\" HP 500GB S700 7MM', '500 GB', 215.46, 'https://www.yamoshi.com.pe/25840-large_default/disco-solido-25-hp-500gb-s700-7mm.jpg', 'https://www.yamoshi.com.pe/25618-home_default/disco-solido-25-hp-500gb-s700-7mm.jpg', 'https://www.yamoshi.com.pe/25619-home_default/disco-solido-25-hp-500gb-s700-7mm.jpg', 'https://www.yamoshi.com.pe/25840-home_default/disco-solido-25-hp-500gb-s700-7mm.jpg', 'https://www.yamoshi.com.pe/25841-home_default/disco-solido-25-hp-500gb-s700-7mm.jpg'),
(3, 'Kingston', 'DISCO SOLIDO 2.5\" KINGSTON 960GB A400 7MM', '500GB', 429.48, 'https://www.yamoshi.com.pe/24138-large_default/disco-solido-25-kingston-960gb-a400-7mm.jpg', 'https://www.yamoshi.com.pe/23099-home_default/disco-solido-25-kingston-960gb-a400-7mm.jpg', 'https://www.yamoshi.com.pe/23100-home_default/disco-solido-25-kingston-960gb-a400-7mm.jpg', 'https://www.yamoshi.com.pe/24138-home_default/disco-solido-25-kingston-960gb-a400-7mm.jpg', 'https://www.yamoshi.com.pe/24138-home_default/disco-solido-25-kingston-960gb-a400-7mm.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `discossolidos`
--
ALTER TABLE `discossolidos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `discossolidos`
--
ALTER TABLE `discossolidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
