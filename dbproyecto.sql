-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2019 a las 22:11:18
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
-- Estructura de tabla para la tabla `discosduros`
--

CREATE TABLE `discosduros` (
  `id` int(11) NOT NULL,
  `marca` varchar(110) COLLATE utf8_bin NOT NULL,
  `modelo` varchar(110) COLLATE utf8_bin NOT NULL,
  `interfaz` varchar(110) COLLATE utf8_bin NOT NULL,
  `precio` float NOT NULL,
  `imgprincipal` varchar(300) COLLATE utf8_bin NOT NULL,
  `img2` varchar(300) COLLATE utf8_bin NOT NULL,
  `img3` varchar(300) COLLATE utf8_bin NOT NULL,
  `img4` varchar(300) COLLATE utf8_bin NOT NULL,
  `img5` varchar(300) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `discosduros`
--

INSERT INTO `discosduros` (`id`, `marca`, `modelo`, `interfaz`, `precio`, `imgprincipal`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'Seagate', 'DISCO 3.5 SEAGATE 1TB BARRACUDA 64MB', 'SATA 6.0Gb/s', 167.58, 'https://www.yamoshi.com.pe/22953-large_default/disco--3.5-seagate-1tb-barracuda-64mb.jpg', 'https://www.yamoshi.com.pe/22952-home_default/disco--3.5-seagate-1tb-barracuda-64mb.jpg', 'https://www.yamoshi.com.pe/22953-home_default/disco--3.5-seagate-1tb-barracuda-64mb.jpg', 'https://www.yamoshi.com.pe/22954-home_default/disco--3.5-seagate-1tb-barracuda-64mb.jpg', 'https://www.yamoshi.com.pe/22955-home_default/disco--3.5-seagate-1tb-barracuda-64mb.jpg'),
(2, 'Seagate', 'DISCO 3.5 SEAGATE 2TB BARRACUDA 256MB', 'SATA 6.0Gb / s', 246.24, 'https://www.yamoshi.com.pe/23954-large_default/disco-35-seagate-2tb-barracuda-256mb.jpg', 'https://www.yamoshi.com.pe/20613-home_default/disco-35-seagate-2tb-barracuda-256mb.jpg', 'https://www.yamoshi.com.pe/20614-home_default/disco-35-seagate-2tb-barracuda-256mb.jpg', 'https://www.yamoshi.com.pe/20615-home_default/disco-35-seagate-2tb-barracuda-256mb.jpg', 'https://www.yamoshi.com.pe/23954-home_default/disco-35-seagate-2tb-barracuda-256mb.jpg'),
(3, 'Toshiba', 'DISCO 3.5\" TOSHIBA 1TB P300 SATA3', 'Sata 6,0 Gbit/s', 160.74, 'https://www.yamoshi.com.pe/24920-large_default/disco-35-toshiba-1tb-p300-sata3.jpg', 'https://www.yamoshi.com.pe/21463-home_default/disco-35-toshiba-1tb-p300-sata3.jpg', 'https://www.yamoshi.com.pe/21467-home_default/disco-35-toshiba-1tb-p300-sata3.jpg', 'https://www.yamoshi.com.pe/24920-home_default/disco-35-toshiba-1tb-p300-sata3.jpg', 'https://www.yamoshi.com.pe/24920-home_default/disco-35-toshiba-1tb-p300-sata3.jpg'),
(4, 'Western Digital', 'DISCO 3.5\" WD 1TB SATA3 WD10EZEX 64MB BLUE', 'Sata 6,0 Gbit/s', 160.74, 'https://www.yamoshi.com.pe/24752-large_default/disco-35-wd-1tb-sata3-wd10ezex-64mb-blue.jpg', 'https://www.yamoshi.com.pe/24752-home_default/disco-35-wd-1tb-sata3-wd10ezex-64mb-blue.jpg', 'https://www.yamoshi.com.pe/17333-home_default/disco-35-wd-1tb-sata3-wd10ezex-64mb-blue.jpg', 'https://www.yamoshi.com.pe/19851-home_default/disco-35-wd-1tb-sata3-wd10ezex-64mb-blue.jpg', 'https://www.yamoshi.com.pe/19851-home_default/disco-35-wd-1tb-sata3-wd10ezex-64mb-blue.jpg');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fuentesdepoder`
--

CREATE TABLE `fuentesdepoder` (
  `id` int(11) NOT NULL,
  `marca` varchar(110) COLLATE utf8_bin NOT NULL,
  `modelo` varchar(110) COLLATE utf8_bin NOT NULL,
  `corriente de entrada` varchar(110) COLLATE utf8_bin NOT NULL,
  `precio` int(11) NOT NULL,
  `imgprincipal` varchar(300) COLLATE utf8_bin NOT NULL,
  `img2` varchar(300) COLLATE utf8_bin NOT NULL,
  `img3` varchar(300) COLLATE utf8_bin NOT NULL,
  `img4` varchar(300) COLLATE utf8_bin NOT NULL,
  `img5` varchar(300) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `fuentesdepoder`
--

INSERT INTO `fuentesdepoder` (`id`, `marca`, `modelo`, `corriente de entrada`, `precio`, `imgprincipal`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'Cooler Master', 'FUENTE 500W COOLER MASTER ELITE 500 V3 ( MPW-5001-ACAAN1-US )', '10-5 A', 144, 'https://www.yamoshi.com.pe/21423-large_default/fuente-500w-cooler-master-elite-500-v3-mpw-5001-acaan1-us-.jpg', 'https://www.yamoshi.com.pe/21423-home_default/fuente-500w-cooler-master-elite-500-v3-mpw-5001-acaan1-us-.jpg', 'https://www.yamoshi.com.pe/21421-home_default/fuente-500w-cooler-master-elite-500-v3-mpw-5001-acaan1-us-.jpg', 'https://www.yamoshi.com.pe/21422-home_default/fuente-500w-cooler-master-elite-500-v3-mpw-5001-acaan1-us-.jpg', 'https://www.yamoshi.com.pe/21422-home_default/fuente-500w-cooler-master-elite-500-v3-mpw-5001-acaan1-us-.jpg'),
(2, 'Corsair', 'FUENTE 550W CORSAIR CP-9020171-NA VS550 80 PLUS', '9.5A – 4.5A', 161, 'https://www.yamoshi.com.pe/23793-large_default/fuente-600w-thermaltake-tr2-600.jpg', 'https://www.yamoshi.com.pe/6248-home_default/fuente-600w-thermaltake-tr2-600.jpg', 'https://www.yamoshi.com.pe/6249-home_default/fuente-600w-thermaltake-tr2-600.jpg', 'https://www.yamoshi.com.pe/6250-home_default/fuente-600w-thermaltake-tr2-600.jpg', 'https://www.yamoshi.com.pe/23793-home_default/fuente-600w-thermaltake-tr2-600.jpg'),
(3, 'Cooler Master', 'FUENTE 650W COOLER MASTER MWE (MPX-6501-ACAAB-US) 80PLUS BRONZE', '100-240vac', 270, 'https://www.yamoshi.com.pe/26632-large_default/fuente-650w-cooler-master-mwe-mpx-6501-acaab-us-80plus-bronze.jpg', 'https://www.yamoshi.com.pe/26632-home_default/fuente-650w-cooler-master-mwe-mpx-6501-acaab-us-80plus-bronze.jpg', 'https://www.yamoshi.com.pe/26633-home_default/fuente-650w-cooler-master-mwe-mpx-6501-acaab-us-80plus-bronze.jpg', 'https://www.yamoshi.com.pe/26634-home_default/fuente-650w-cooler-master-mwe-mpx-6501-acaab-us-80plus-bronze.jpg', 'https://www.yamoshi.com.pe/26635-home_default/fuente-650w-cooler-master-mwe-mpx-6501-acaab-us-80plus-bronze.jpg'),
(4, 'Cooler Master', 'FUENTE 850W COOLER MASTER V850 ( MPY-8501-AFAAGV-US ) GOLD MODULAR', '10-5a', 588, 'https://www.yamoshi.com.pe/26641-large_default/fuente-850w-cooler-master-v850-mpy-8501-afaagv-us-gold-modular.jpg', 'https://www.yamoshi.com.pe/26641-home_default/fuente-850w-cooler-master-v850-mpy-8501-afaagv-us-gold-modular.jpg', 'https://www.yamoshi.com.pe/26642-home_default/fuente-850w-cooler-master-v850-mpy-8501-afaagv-us-gold-modular.jpg', 'https://www.yamoshi.com.pe/26643-home_default/fuente-850w-cooler-master-v850-mpy-8501-afaagv-us-gold-modular.jpg', 'https://www.yamoshi.com.pe/26644-home_default/fuente-850w-cooler-master-v850-mpy-8501-afaagv-us-gold-modular.jpg');

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

--
-- Volcado de datos para la tabla `laptop`
--

INSERT INTO `laptop` (`id`, `nombre`, `modelo`, `procesador`, `video`, `pantalla`, `almacenamiento`, `precio`) VALUES
(1, 'Laptop Acer', 'Laptop Spin3-Pantalla Touch', 'Intel Core i5', '256GB SSD - Full HD ', 14, 4, 1899),
(2, 'Laptop Acer', 'Laptop Aspire 5', ' Core i7 8va Gen 12GB RAM+16GB Optane 1TB', '2GB Video Nvidia', 16, 1000, 2699),
(3, 'Laptop Acer', 'Laptop Swift3', 'AMD Ryzen 7', '256GB SSD -  Full HD', 15, 256, 1999),
(4, 'Laptop Acer', 'Laptop Swift4', 'Core i3 4GB RAM', 'Intel HD 620', 16, 1000, 2999),
(5, 'Laptop Apple', 'MVFK2E/A', 'Intel core i5', 'Intel uhd graphics 617', 13, 128, 3999),
(6, 'Laptop Apple', 'MacBook Air', ' Intel Core i5', 'Intel uhd graphics 617', 13, 128, 7899),
(7, 'Laptop Apple', 'MacBook SG', 'Intel core m3', 'Intel uhd graphics 617', 12, 256, 4899),
(8, 'Laptop Apple', 'MacBook PRO 15.4 I5-GR', 'Intel core i5', 'Amd radeon pro 555x 4gb', 15, 256, 8999),
(9, 'Laptop LENOVO', 'Ideapad 530S', 'Intel core 5', 'Intel uhd graphics 620', 14, 256, 2199),
(10, 'Laptop LENOVO', 'HP 14-cf1210la', 'Intel core i5', 'Amd radeon 530', 14, 1000, 2899),
(11, 'Laptop LENOVO', 'Ideapad S145', 'Intel core i3 7020u', 'Intel  hd graphics 620 (grafico integrado)', 14, 128, 1899),
(12, 'Laptop LENOVO', 'IdeaPad 530S', 'Intel core i7', 'Intel uhd graphics 620 (integrado)', 14, 256, 2999),
(13, 'Laptop HP', 'Notebook HP Pavilion x360', 'Intel Core i5', ' Intel uHD 620', 14, 256, 1899),
(14, 'Laptop HP', 'Laptop Pavilion  14-CD002LA 2en1 ', 'Intel Core i3', ' Intel uhd 620', 14, 128, 1799),
(15, 'Laptop HP', 'Laptop 14-CM1024LA', 'Intel core 5', 'AMD Radeon Vega 3', 15, 128, 1999),
(16, 'Laptop HP', 'Laptop A123-XZ', 'Core i3 4GB RAM 1TB', 'Intel HD 620', 16, 1000, 1799);

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

--
-- Volcado de datos para la tabla `placa_madre`
--

INSERT INTO `placa_madre` (`id`, `marca`, `modelo`, `precio`, `imgprincipal`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'ASUS', ' Z270 MAXIMUS IX', 2499, 'https://www.yamoshi.com.pe/17911-large_default/placa-intel-asus-z270-maximus-ix-formula-ddr4-lga1151.jpg', 'https://www.yamoshi.com.pe/17911-home_default/placa-intel-asus-z270-maximus-ix-formula-ddr4-lga1151.jpg', 'https://www.yamoshi.com.pe/16798-home_default/placa-intel-asus-z270-maximus-ix-formula-ddr4-lga1151.jpg', 'https://www.yamoshi.com.pe/16799-home_default/placa-intel-asus-z270-maximus-ix-formula-ddr4-lga1151.jpg', 'https://www.yamoshi.com.pe/17910-home_default/placa-intel-asus-z270-maximus-ix-formula-ddr4-lga1151.jpg'),
(2, 'PLACA AMD ASUS ROG STRIX B450-F GAMING DDR4 AM4', '90MB0YS0-M0AAY0  ', 513, 'https://www.yamoshi.com.pe/26578-large_default/placa-amd-asus-rog-strix-b450-f-gaming-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/26578-home_default/placa-amd-asus-rog-strix-b450-f-gaming-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/26579-home_default/placa-amd-asus-rog-strix-b450-f-gaming-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/26580-home_default/placa-amd-asus-rog-strix-b450-f-gaming-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/26581-home_default/placa-amd-asus-rog-strix-b450-f-gaming-ddr4-am4.jpg'),
(3, 'PLACA AMD GIGABYTE B450 AORUS ELITE DDR4 AM4', 'B450 AORUS', 417.2, 'https://www.yamoshi.com.pe/24881-large_default/placa-amd-gigabyte-b450-aorus-elite-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/24882-home_default/placa-amd-gigabyte-b450-aorus-elite-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/24883-home_default/placa-amd-gigabyte-b450-aorus-elite-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/24884-home_default/placa-amd-gigabyte-b450-aorus-elite-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/24885-home_default/placa-amd-gigabyte-b450-aorus-elite-ddr4-am4.jpg'),
(4, 'ASUS', 'PLACA AMD GIGABYTE B450 AORUS PRO WIFI DDR4 AM4', 526.8, 'https://www.yamoshi.com.pe/22303-large_default/placa-amd-gigabyte-b450-aorus-pro-wifi-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/22304-home_default/placa-amd-gigabyte-b450-aorus-pro-wifi-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/22305-home_default/placa-amd-gigabyte-b450-aorus-pro-wifi-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/22306-home_default/placa-amd-gigabyte-b450-aorus-pro-wifi-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/22307-home_default/placa-amd-gigabyte-b450-aorus-pro-wifi-ddr4-am4.jpg'),
(5, 'GIGABYTE', 'PLACA AMD GIGABYTE B450 GAMING X DDR4 AM4', 396.7, 'https://www.yamoshi.com.pe/24900-large_default/placa-amd-gigabyte-b450-gaming-x-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/24901-home_default/placa-amd-gigabyte-b450-gaming-x-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/24902-home_default/placa-amd-gigabyte-b450-gaming-x-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/24900-home_default/placa-amd-gigabyte-b450-gaming-x-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/24904-home_default/placa-amd-gigabyte-b450-gaming-x-ddr4-am4.jpg'),
(6, 'MSI', 'PLACA AMD MSI X470 GAMING M7 AC DDR4 AM4', 991.8, 'https://www.yamoshi.com.pe/25308-large_default/placa-amd-msi-x470-gaming-m7-ac-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/19641-home_default/placa-amd-msi-x470-gaming-m7-ac-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/19642-home_default/placa-amd-msi-x470-gaming-m7-ac-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/19643-home_default/placa-amd-msi-x470-gaming-m7-ac-ddr4-am4.jpg', 'https://www.yamoshi.com.pe/25308-home_default/placa-amd-msi-x470-gaming-m7-ac-ddr4-am4.jpg');

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

--
-- Volcado de datos para la tabla `procesador`
--

INSERT INTO `procesador` (`id`, `marca`, `modelo`, `nnucleos`, `nhilos`, `precio`, `imgprincipal`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'Intel', 'PROCESADOR INTEL I3 8100 3.6GHZ LGA 1151', 4, 4, 530.1, 'https://www.yamoshi.com.pe/16952-large_default/procesador-intel-i3-8100-36ghz-lga-1151.jpg', 'https://www.yamoshi.com.pe/16952-home_default/procesador-intel-i3-8100-36ghz-lga-1151.jpg', 'https://www.yamoshi.com.pe/16927-home_default/procesador-intel-i3-8100-36ghz-lga-1151.jpg', 'https://www.yamoshi.com.pe/25848-home_default/procesador-intel-i3-8100-36ghz-lga-1151.jpg', 'https://www.yamoshi.com.pe/25848-home_default/procesador-intel-i3-8100-36ghz-lga-1151.jpg'),
(2, 'Intel', 'PROCESADOR INTEL I3 9100F 3.6GHZ LGA 1151', 8, 8, 383.4, 'https://www.yamoshi.com.pe/24915-large_default/procesador-intel-i3-9100f-36ghz-lga-1151.jpg', 'https://www.yamoshi.com.pe/23226-home_default/procesador-intel-i3-9100f-36ghz-lga-1151.jpg', 'https://www.yamoshi.com.pe/23227-home_default/procesador-intel-i3-9100f-36ghz-lga-1151.jpg', 'https://www.yamoshi.com.pe/24915-home_default/procesador-intel-i3-9100f-36ghz-lga-1151.jpg', 'https://www.yamoshi.com.pe/24915-home_default/procesador-intel-i3-9100f-36ghz-lga-1151.jpg'),
(3, 'Intel', 'PROCESADOR INTEL I5 8400 2.8GHZ 9MB LGA 1151', 6, 6, 783.18, 'https://www.yamoshi.com.pe/16960-large_default/procesador-intel-i5-8400-28ghz-9mb-lga-1151.jpg', 'https://www.yamoshi.com.pe/16960-large_default/procesador-intel-i5-8400-28ghz-9mb-lga-1151.jpg', 'https://www.yamoshi.com.pe/16913-home_default/procesador-intel-i5-8400-28ghz-9mb-lga-1151.jpg', 'https://www.yamoshi.com.pe/16912-home_default/procesador-intel-i5-8400-28ghz-9mb-lga-1151.jpg', 'https://www.yamoshi.com.pe/16912-home_default/procesador-intel-i5-8400-28ghz-9mb-lga-1151.jpg'),
(4, 'Intel', 'PROCESADOR INTEL I5 8500 3.0GHZ 9MB LGA 1151', 5, 5, 909.72, 'https://www.yamoshi.com.pe/20536-large_default/procesador-intel-i5-8500-30ghz-9mb-lga-1151.jpg', 'https://www.yamoshi.com.pe/20536-large_default/procesador-intel-i5-8500-30ghz-9mb-lga-1151.jpg', 'https://www.yamoshi.com.pe/20537-home_default/procesador-intel-i5-8500-30ghz-9mb-lga-1151.jpg', 'https://www.yamoshi.com.pe/20538-home_default/procesador-intel-i5-8500-30ghz-9mb-lga-1151.jpg', 'https://www.yamoshi.com.pe/20538-home_default/procesador-intel-i5-8500-30ghz-9mb-lga-1151.jpg'),
(5, 'AMD', 'PROCESADOR AMD RYZEN 3 2200G 3.5GHZ 6MB AM4', 4, 4, 376.2, 'https://www.yamoshi.com.pe/24504-large_default/procesador-amd-ryzen-3-2200g-35ghz-6mb-am4.jpg', 'https://www.yamoshi.com.pe/24504-large_default/procesador-amd-ryzen-3-2200g-35ghz-6mb-am4.jpg', 'https://www.yamoshi.com.pe/18919-home_default/procesador-amd-ryzen-3-2200g-35ghz-6mb-am4.jpg', 'https://www.yamoshi.com.pe/24504-home_default/procesador-amd-ryzen-3-2200g-35ghz-6mb-am4.jpg', 'https://www.yamoshi.com.pe/24504-home_default/procesador-amd-ryzen-3-2200g-35ghz-6mb-am4.jpg'),
(6, 'AMD', ' PROCESADOR AMD RYZEN 7 3700X 3.6GHZ 36MB AM4', 8, 16, 1436.4, 'https://www.yamoshi.com.pe/26215-large_default/procesador-amd-ryzen-7-3700x-3.6ghz-36mb-am4.jpg', 'https://www.yamoshi.com.pe/26215-large_default/procesador-amd-ryzen-7-3700x-3.6ghz-36mb-am4.jpg', 'https://www.yamoshi.com.pe/26215-large_default/procesador-amd-ryzen-7-3700x-3.6ghz-36mb-am4.jpg', 'https://www.yamoshi.com.pe/26215-large_default/procesador-amd-ryzen-7-3700x-3.6ghz-36mb-am4.jpg', 'https://www.yamoshi.com.pe/26215-large_default/procesador-amd-ryzen-7-3700x-3.6ghz-36mb-am4.jpg');

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

--
-- Volcado de datos para la tabla `ram`
--

INSERT INTO `ram` (`id`, `marca`, `modelo`, `capacidad`, `precio`, `imgprincipal`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'HP', '\r\nMEMORIA DDR3 HP 8GB 1600MHZ PC3L-12800R-11 (1RX8)', 4, 369.36, 'https://www.yamoshi.com.pe/24357-large_default/memoria-ddr3-hp-8gb-1600mhz-pc3l-12800r-11-1rx8.jpg', 'https://www.yamoshi.com.pe/24357-home_default/memoria-ddr3-hp-8gb-1600mhz-pc3l-12800r-11-1rx8.jpg', 'https://www.yamoshi.com.pe/24357-home_default/memoria-ddr3-hp-8gb-1600mhz-pc3l-12800r-11-1rx8.jpg', 'https://www.yamoshi.com.pe/24357-home_default/memoria-ddr3-hp-8gb-1600mhz-pc3l-12800r-11-1rx8.jpg', 'https://www.yamoshi.com.pe/24357-home_default/memoria-ddr3-hp-8gb-1600mhz-pc3l-12800r-11-1rx8.jpg'),
(2, 'Kingston', 'MEMORIA DDR3 KINGSTON 8GB 1600MHZ HYPERX FURY BLUE 1X8GB', 8, 153.9, 'https://www.yamoshi.com.pe/24122-large_default/memoria-ddr3-kingston-8gb-1600mhz-hyperx-fury-blue-1x8gb.jpg', 'https://www.yamoshi.com.pe/1965-home_default/memoria-ddr3-kingston-8gb-1600mhz-hyperx-fury-blue-1x8gb.jpg', 'https://www.yamoshi.com.pe/1966-home_default/memoria-ddr3-kingston-8gb-1600mhz-hyperx-fury-blue-1x8gb.jpg', 'https://www.yamoshi.com.pe/1967-home_default/memoria-ddr3-kingston-8gb-1600mhz-hyperx-fury-blue-1x8gb.jpg', 'https://www.yamoshi.com.pe/24122-home_default/memoria-ddr3-kingston-8gb-1600mhz-hyperx-fury-blue-1x8gb.jpg'),
(3, 'Adata', 'MEMORIA DDR4 ADATA 4GB 2400MHZ XPG BLACK 1X4GB', 4, 201.78, 'https://www.yamoshi.com.pe/24568-large_default/memoria-ddr4-adata-4gb-2400mhz-xpg-black-1x4gb.jpg', 'https://www.yamoshi.com.pe/24568-home_default/memoria-ddr4-adata-4gb-2400mhz-xpg-black-1x4gb.jpg', 'https://www.yamoshi.com.pe/20267-home_default/memoria-ddr4-adata-4gb-2400mhz-xpg-black-1x4gb.jpg', 'https://www.yamoshi.com.pe/20267-home_default/memoria-ddr4-adata-4gb-2400mhz-xpg-black-1x4gb.jpg', 'https://www.yamoshi.com.pe/20267-home_default/memoria-ddr4-adata-4gb-2400mhz-xpg-black-1x4gb.jpg'),
(4, 'Corsair ', 'MEMORIA DDR4 CORSAIR 8GB 2400 VENGEANCE LPX RED (1X8)', 8, 232.56, 'https://www.yamoshi.com.pe/24102-large_default/memoria-ddr4-corsair-8gb-2400-vengeance-lpx-red-1x8.jpg', 'https://www.yamoshi.com.pe/17538-home_default/memoria-ddr4-corsair-8gb-2400-vengeance-lpx-red-1x8.jpg', 'https://www.yamoshi.com.pe/17542-home_default/memoria-ddr4-corsair-8gb-2400-vengeance-lpx-red-1x8.jpg', 'https://www.yamoshi.com.pe/24102-home_default/memoria-ddr4-corsair-8gb-2400-vengeance-lpx-red-1x8.jpg', 'https://www.yamoshi.com.pe/24102-home_default/memoria-ddr4-corsair-8gb-2400-vengeance-lpx-red-1x8.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `refrigeracion`
--

CREATE TABLE `refrigeracion` (
  `id` int(11) NOT NULL,
  `marca` varchar(110) COLLATE utf8_bin NOT NULL,
  `modelo` varchar(110) COLLATE utf8_bin NOT NULL,
  `velocidad` varchar(110) COLLATE utf8_bin NOT NULL,
  `flujodeaire` varchar(110) COLLATE utf8_bin NOT NULL,
  `imgprincipal` varchar(300) COLLATE utf8_bin NOT NULL,
  `img2` varchar(300) COLLATE utf8_bin NOT NULL,
  `img3` varchar(300) COLLATE utf8_bin NOT NULL,
  `precio` float NOT NULL,
  `img4` varchar(300) COLLATE utf8_bin NOT NULL,
  `img5` varchar(300) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `refrigeracion`
--

INSERT INTO `refrigeracion` (`id`, `marca`, `modelo`, `velocidad`, `flujodeaire`, `imgprincipal`, `img2`, `img3`, `precio`, `img4`, `img5`) VALUES
(1, 'Antryx', 'COOLER CASE ANTRYX 12CM EXTREME FLOW 15 LED GREEN', '1200 R.P.M ±10%', '32 cfm', 'https://www.yamoshi.com.pe/23144-large_default/cooler-case-antryx-12cm-extreme-flow-15-led-green.jpg', 'https://www.yamoshi.com.pe/16177-home_default/cooler-case-antryx-12cm-extreme-flow-15-led-green.jpg', 'https://www.yamoshi.com.pe/16179-home_default/cooler-case-antryx-12cm-extreme-flow-15-led-green.jpg', 27.36, 'https://www.yamoshi.com.pe/23144-home_default/cooler-case-antryx-12cm-extreme-flow-15-led-green.jpg', 'https://www.yamoshi.com.pe/23144-home_default/cooler-case-antryx-12cm-extreme-flow-15-led-green.jpg'),
(2, 'Cooler Master', 'COOLER CASE COOLER MASTER MASTERFAN MF120L 120MM RED LED', ' 1200 rpm', '32 cfm', 'https://www.yamoshi.com.pe/19763-large_default/cooler-case-cooler-master-masterfan-mf120l-120mm-red-led.jpg', 'https://www.yamoshi.com.pe/19763-home_default/cooler-case-cooler-master-masterfan-mf120l-120mm-red-led.jpg', 'https://www.yamoshi.com.pe/19761-home_default/cooler-case-cooler-master-masterfan-mf120l-120mm-red-led.jpg', 27.36, 'https://www.yamoshi.com.pe/19762-home_default/cooler-case-cooler-master-masterfan-mf120l-120mm-red-led.jpg', 'https://www.yamoshi.com.pe/19762-home_default/cooler-case-cooler-master-masterfan-mf120l-120mm-red-led.jpg'),
(3, 'Cooler Master', 'COOLER CASE COOLER MASTER MASTERFAN MF120L 120MM RGB LED', '1,200 ± 150 RPM', '32 ± 10% CFM', 'https://www.yamoshi.com.pe/19765-large_default/cooler-case-cooler-master-masterfan-mf120l-120mm-rgb-led.jpg', 'https://www.yamoshi.com.pe/19765-home_default/cooler-case-cooler-master-masterfan-mf120l-120mm-rgb-led.jpg', 'https://www.yamoshi.com.pe/19764-home_default/cooler-case-cooler-master-masterfan-mf120l-120mm-rgb-led.jpg', 41.04, 'https://www.yamoshi.com.pe/19764-home_default/cooler-case-cooler-master-masterfan-mf120l-120mm-rgb-led.jpg', 'https://www.yamoshi.com.pe/19764-home_default/cooler-case-cooler-master-masterfan-mf120l-120mm-rgb-led.jpg'),
(4, 'Cooler Master', 'COOLER CASE COOLER MASTER MASTERFAN MF120L(R4-C1DS-12FB-R1) 120MM BLUE LED', '1200 rpm', '32 cfm', 'https://www.yamoshi.com.pe/19758-large_default/cooler-case-cooler-master-masterfan-mf120lr4-c1ds-12fb-r1-120mm-blue-led.jpg', 'https://www.yamoshi.com.pe/19758-home_default/cooler-case-cooler-master-masterfan-mf120lr4-c1ds-12fb-r1-120mm-blue-led.jpg', 'https://www.yamoshi.com.pe/19759-home_default/cooler-case-cooler-master-masterfan-mf120lr4-c1ds-12fb-r1-120mm-blue-led.jpg', 27.36, 'https://www.yamoshi.com.pe/19760-home_default/cooler-case-cooler-master-masterfan-mf120lr4-c1ds-12fb-r1-120mm-blue-led.jpg', 'https://www.yamoshi.com.pe/19760-home_default/cooler-case-cooler-master-masterfan-mf120lr4-c1ds-12fb-r1-120mm-blue-led.jpg');

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

--
-- Volcado de datos para la tabla `tarjeta_video`
--

INSERT INTO `tarjeta_video` (`id`, `marca`, `modelo`, `tipo`, `capacidad`, `resolucion`, `precio`, `imgprincipal`, `img2`, `img3`, `img4`, `img5`) VALUES
(1, 'ASUS', 'VIDEO RADEON ASUS RX 570 STRIX GAMING 4GB GDDR5', ' GDDR5', 4, 'Maxima Digital 5120 x 8000', 1590.3, 'https://www.yamoshi.com.pe/20163-large_default/video-radeon-asus-rx-570-strix-gaming-4gb-gddr5.jpg', 'https://www.yamoshi.com.pe/20163-home_default/video-radeon-asus-rx-570-strix-gaming-4gb-gddr5.jpg', 'https://www.yamoshi.com.pe/20162-home_default/video-radeon-asus-rx-570-strix-gaming-4gb-gddr5.jpg', 'https://www.yamoshi.com.pe/20161-home_default/video-radeon-asus-rx-570-strix-gaming-4gb-gddr5.jpg', 'https://www.yamoshi.com.pe/20164-home_default/video-radeon-asus-rx-570-strix-gaming-4gb-gddr5.jpg'),
(2, 'Gigabyte', 'VIDEO NVIDIA GIGABYTE GT730 2GB GDDR5', ' GDDR4', 4, 'GeForce® GT 730', 328.72, 'https://www.yamoshi.com.pe/20519-large_default/video-nvidia-gigabyte-gt730-2gb-gddr5.jpg', 'https://www.yamoshi.com.pe/20519-home_default/video-nvidia-gigabyte-gt730-2gb-gddr5.jpg', 'https://www.yamoshi.com.pe/20521-home_default/video-nvidia-gigabyte-gt730-2gb-gddr5.jpg', 'https://www.yamoshi.com.pe/20522-home_default/video-nvidia-gigabyte-gt730-2gb-gddr5.jpg', 'https://www.yamoshi.com.pe/20523-home_default/video-nvidia-gigabyte-gt730-2gb-gddr5.jpg'),
(3, 'MSI', 'VIDEO NVIDIA MSI GT710 2GB GDDR3', 'GDDR3', 8, ' GT710', 184.68, 'https://www.yamoshi.com.pe/23945-large_default/video-nvidia-msi-gt710-2gb-gddr3.jpg', 'https://www.yamoshi.com.pe/19644-home_default/video-nvidia-msi-gt710-2gb-gddr3.jpg', 'https://www.yamoshi.com.pe/19646-home_default/video-nvidia-msi-gt710-2gb-gddr3.jpg', 'https://www.yamoshi.com.pe/19647-home_default/video-nvidia-msi-gt710-2gb-gddr3.jpg', 'https://www.yamoshi.com.pe/19648-home_default/video-nvidia-msi-gt710-2gb-gddr3.jpg'),
(4, 'MSI', 'VIDEO NVIDIA MSI GTX980 OC GAMING 4G TWIN FROZR 4GB GDDR5', 'GDDR5', 8, ' GTX980', 2103.3, 'https://www.yamoshi.com.pe/11142-large_default/video-nvidia-msi-gtx980-oc-gaming-4g-twin-frozr-4gb-gddr5.jpg', 'https://www.yamoshi.com.pe/11142-home_default/video-nvidia-msi-gtx980-oc-gaming-4g-twin-frozr-4gb-gddr5.jpg', 'https://www.yamoshi.com.pe/1093-home_default/video-nvidia-msi-gtx980-oc-gaming-4g-twin-frozr-4gb-gddr5.jpg', 'https://www.yamoshi.com.pe/1094-home_default/video-nvidia-msi-gtx980-oc-gaming-4g-twin-frozr-4gb-gddr5.jpg', 'https://www.yamoshi.com.pe/1095-home_default/video-nvidia-msi-gtx980-oc-gaming-4g-twin-frozr-4gb-gddr5.jpg');

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
-- Indices de la tabla `discosduros`
--
ALTER TABLE `discosduros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `discossolidos`
--
ALTER TABLE `discossolidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fuentesdepoder`
--
ALTER TABLE `fuentesdepoder`
  ADD PRIMARY KEY (`id`);

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
-- Indices de la tabla `refrigeracion`
--
ALTER TABLE `refrigeracion`
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
-- AUTO_INCREMENT de la tabla `discosduros`
--
ALTER TABLE `discosduros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `discossolidos`
--
ALTER TABLE `discossolidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `fuentesdepoder`
--
ALTER TABLE `fuentesdepoder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `laptop`
--
ALTER TABLE `laptop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `placa_madre`
--
ALTER TABLE `placa_madre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `procesador`
--
ALTER TABLE `procesador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ram`
--
ALTER TABLE `ram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `refrigeracion`
--
ALTER TABLE `refrigeracion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tarjeta_video`
--
ALTER TABLE `tarjeta_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
