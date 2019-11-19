-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-11-2019 a las 18:29:50
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
-- Estructura de tabla para la tabla `laptop`
--

CREATE TABLE `laptop` (
  `id` int(11) NOT NULL,
  `nombre` varchar(80) COLLATE utf8_bin NOT NULL,
  `modelo` varchar(80) COLLATE utf8_bin NOT NULL,
  `procesador` varchar(50) COLLATE utf8_bin NOT NULL,
  `video` varchar(80) COLLATE utf8_bin NOT NULL,
  `pantalla` int(11) NOT NULL,
  `almacenamiento` int(11) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `placa_madre`
--

CREATE TABLE `placa_madre` (
  `id` int(11) NOT NULL,
  `marca` varchar(50) COLLATE utf8_bin NOT NULL,
  `modelo` varchar(100) COLLATE utf8_bin NOT NULL,
  `precio` float NOT NULL,
  `imgprincipal` varchar(300) COLLATE utf8_bin NOT NULL,
  `img2` varchar(300) COLLATE utf8_bin NOT NULL,
  `img3` varchar(300) COLLATE utf8_bin NOT NULL,
  `img4` varchar(300) COLLATE utf8_bin NOT NULL,
  `img5` varchar(300) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesador`
--

CREATE TABLE `procesador` (
  `id` int(11) NOT NULL,
  `marca` varchar(50) COLLATE utf8_bin NOT NULL,
  `modelo` varchar(50) COLLATE utf8_bin NOT NULL,
  `nnucleos` int(11) NOT NULL,
  `nhilos` int(11) NOT NULL,
  `precio` float NOT NULL,
  `imgprincipal` varchar(300) COLLATE utf8_bin NOT NULL,
  `img2` varchar(300) COLLATE utf8_bin NOT NULL,
  `img3` varchar(300) COLLATE utf8_bin NOT NULL,
  `img4` varchar(300) COLLATE utf8_bin NOT NULL,
  `img5` varchar(300) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ram`
--

CREATE TABLE `ram` (
  `id` int(11) NOT NULL,
  `marca` varchar(50) COLLATE utf8_bin NOT NULL,
  `modelo` varchar(100) COLLATE utf8_bin NOT NULL,
  `capacidad` int(11) NOT NULL,
  `precio` float NOT NULL,
  `imgprincipal` varchar(300) COLLATE utf8_bin NOT NULL,
  `img2` varchar(300) COLLATE utf8_bin NOT NULL,
  `img3` varchar(300) COLLATE utf8_bin NOT NULL,
  `img4` varchar(300) COLLATE utf8_bin NOT NULL,
  `img5` varchar(300) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjeta_video`
--

CREATE TABLE `tarjeta_video` (
  `id` int(11) NOT NULL,
  `marca` varchar(50) COLLATE utf8_bin NOT NULL,
  `modelo` varchar(100) COLLATE utf8_bin NOT NULL,
  `tipo` varchar(50) COLLATE utf8_bin NOT NULL,
  `capacidad` int(11) NOT NULL,
  `resolucion` varchar(50) COLLATE utf8_bin NOT NULL,
  `precio` float NOT NULL,
  `imgprincipal` varchar(300) COLLATE utf8_bin NOT NULL,
  `img2` varchar(300) COLLATE utf8_bin NOT NULL,
  `img3` varchar(300) COLLATE utf8_bin NOT NULL,
  `img4` varchar(300) COLLATE utf8_bin NOT NULL,
  `img5` varchar(300) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(41) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `placa_madre`
--
ALTER TABLE `placa_madre`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `procesador`
--
ALTER TABLE `procesador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tarjeta_video`
--
ALTER TABLE `tarjeta_video`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `laptop`
--
ALTER TABLE `laptop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `placa_madre`
--
ALTER TABLE `placa_madre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `procesador`
--
ALTER TABLE `procesador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ram`
--
ALTER TABLE `ram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarjeta_video`
--
ALTER TABLE `tarjeta_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
