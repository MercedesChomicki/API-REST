-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2022 a las 16:15:47
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_celulares`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `celular`
--

CREATE TABLE `celular` (
  `id_celular` int(11) NOT NULL,
  `modelo` varchar(60) NOT NULL,
  `precio` float NOT NULL,
  `descripcion` text NOT NULL,
  `id_marca` int(11) NOT NULL,
  `Imagen` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `celular`
--

INSERT INTO `celular` (`id_celular`, `modelo`, `precio`, `descripcion`, `id_marca`, `Imagen`) VALUES
(1, 'Samsung Galaxy S22 Ultra 12gb 256gb Phantom White\n', 331999, 'Dispositivo liberado.\r\nCompatible con redes 5G.\r\nPantalla Dynamic AMOLED 2X de 6.8\".\r\nTiene 4 cámaras traseras de 108Mpx/10Mpx/10Mpx/12Mpx.\r\nCámara delantera de 40Mpx.\r\nProcesador Snapdragon 8 Gen 1 Octa-Core de 3GHz con 12GB de RAM.\r\nBatería de 5000mAh con carga inalámbrica.\r\nMemoria interna de 256GB.\r\nResistente al agua.\r\nCon reconocimiento facial y sensor de huella dactilar.\r\nResistente al polvo y a las caídas.', 1, 'https://http2.mlstatic.com/D_NQ_NP_834464-MLA49303777747_032022-O.webp'),
(2, 'Samsung Galaxy S20 FE 5G 128 GB cloud navy 6 GB RAM', 140499, 'Dispositivo liberado.\r\nCompatible con redes 5G.\r\nPantalla Super AMOLED de 6.5\".\r\nTiene 3 cámaras traseras de 12Mpx/12Mpx/8Mpx.\r\nCámara delantera de 32Mpx.\r\nProcesador Snapdragon 865 Octa-Core de 2.84GHz con 6GB de RAM.\r\nBatería de 4500mAh con carga inalámbrica.\r\nMemoria interna de 128GB.\r\nResistente al agua.\r\nCon reconocimiento facial y sensor de huella dactilar.\r\nResistente al polvo.', 1, 'http://d2r9epyceweg5n.cloudfront.net/stores/002/206/772/products/71xp2nihl3l-_ac_sl15001-c9910b93a65c62e06116542252554099-640-0.jpg'),
(3, 'Samsung Galaxy A52s 5G 128 GB awesome black 6 GB RAM', 122999, 'Dispositivo liberado.\r\nCompatible con redes 5G.\r\nPantalla Super AMOLED de 6.5\".\r\nTiene 4 cámaras traseras de 64Mpx/12Mpx/5Mpx/5Mpx.\r\nCámaras delanteras de 32Mpx.\r\nProcesador Snapdragon 778G 5G Octa-Core de 2.4GHz con 6GB de RAM.\r\nBatería de 4500mAh.\r\nMemoria interna de 128GB.\r\nA prueba de agua.\r\nCon sensor de huella dactilar.\r\nResistente al polvo.', 1, 'https://http2.mlstatic.com/D_NQ_NP_724684-MLA48196670694_112021-O.jpg'),
(4, 'Samsung Galaxy A21s 64 GB negro 4 GB RAM', 89999, 'Dispositivo liberado.\r\nPantalla PLS de 6.5\".\r\nTiene 4 cámaras traseras de 48Mpx/8Mpx/2Mpx/2Mpx.\r\nCámara delantera de 13Mpx.\r\nProcesador Exynos 850 Octa-Core de 2GHz con 4GB de RAM.\r\nBatería de 5000mAh.\r\nMemoria interna de 64GB.\r\nCon reconocimiento facial y sensor de huella dactilar.', 1, 'https://http2.mlstatic.com/D_NQ_NP_840952-MLA45141065355_032021-O.jpg'),
(5, 'iPhone 13 Pro Gold 128 Gb En Caja Factura Apple Store', 1725000, 'El mayor avance en el sistema de cámaras Pro de Apple hasta ahora. Pantalla Super Retina XDR con ProMotion que brinda una respuesta más rápida y fluida. Chip A15 Bionic para un rendimiento fuera de serie. Diseño resistente y un gran salto en duración de batería.', 2, 'https://http2.mlstatic.com/D_NQ_NP_866117-MLA47778565361_102021-V.jpg'),
(6, 'iPhone 14 Pro Max 256gb Space Black', 995000, 'Frente de Ceramic Shield.\r\nDiseño de acero inoxidable con parte posterior de vidrio mate texturizado.\r\nPantalla Super Retina XDR.\r\nPantalla OLED de 6.7 pulgadas (diagonal) sin marco.\r\nResolución de 2796 x 1290 pixeles a 460 ppi.\r\nChip A16 Bionic.\r\nCamara angular, gran angular y teleobjetivo.', 2, 'https://http2.mlstatic.com/D_NQ_NP_601034-MLA51635034405_092022-V.jpg'),
(7, 'Motorola RAZR 2019 128 GB noir black 6 GB RAM', 335999, 'Dispositivo liberado.\r\nPantalla POLED de 6.2\".\r\nCámara delantera de 5Mpx.\r\nProcesador Snapdragon 710 Octa-Core de 2.2GHz con 6GB de RAM.\r\nBatería de 2510mAh.\r\nMemoria interna de 128GB.\r\nResistente a las salpicaduras.\r\nCon reconocimiento facial y sensor de huella dactilar.\r\nTarjeta eSIM incluida.', 3, 'https://http2.mlstatic.com/D_NQ_NP_633526-MLA43170518245_082020-O.jpg'),
(8, 'Celular Motorola Moto Edge 30 Pro Blanco 256/12gb', 263999, 'Procesador Qualcomm Snapdragon 8 Gen 1.\r\nVision de 6.7\" con tecnología OLED, resolución Full HD.\r\nMemoria 8 / 12 GB LPDDR5.\r\nAlmacenamiento 256 GB (UFS 3.1).\r\nBateria 4.800 mAh.\r\nCamaras traseras 50 MP, f/1.8, OIS y 50 MP, f/2.2, 114º\r\nCamara frontal 60 MP, f/2.2.\r\nConectividad 5G, WiFi 6E, Dual SIM, Bluetooth 5.2, NFC.\r\nSistema operativo Android 12.\r\nDimensiones y peso: 163 x 75,9 x 8,79 mm\r\n196 g.\r\nOtros: Resistencia IP52, USB C, DisplayPort 1.4, altavoces estéreo Dolby Atmos, triple micrófono,', 3, 'https://olmoshogar.com.ar/wp-content/uploads/2022/09/CELU-MOTOROLA-EDGE-30-PRO-BLANCO.jpg'),
(9, 'Xiaomi Mi 12 Pro 256/ 12 Gb RAM', 413895, 'Pantalla LTPO AMOLED de 6.73 pulgadas a resolución 1440p y tasa de refresco de 120Hz. Procesador Snapdragon 8 Gen 1 de Qualcomm. 8GB o 12GB de RAM y 128GB o 256GB de almacenamiento interno no expandible. Camaras traseras de 50MP, wide, ultrawide y telefoto, respectivamente, y cámara selfie de 32MP. Batería de 4600 mAh de carga rápida de 120W y compatible con carga inalámbrica. Otras caracteristicas: parlantes stereo optimizados por Harman Kardon, lector de huellas bajo la pantalla, y MIUI 13 basado en Android 12.', 4, 'https://specs-tech.com/wp-content/uploads/2021/10/Xiaomi-12-Pro-1.jpg'),
(10, 'LG Velvet 128 GB aurora gray 6 GB RAM', 237599, 'Dispositivo liberado.\r\nPantalla POLED de 6.8\".\r\nTiene 3 cámaras traseras de 48Mpx/8Mpx/5Mpx.\r\nCámara delantera de 16Mpx.\r\nProcesador Snapdragon 845 Octa-Core de 2.8GHz con 6GB de RAM.\r\nBatería de 4300mAh con carga inalámbrica.\r\nMemoria interna de 128GB.\r\nResistente al agua.\r\nCon sensor de huella dactilar.\r\nResistente al polvo', 5, 'https://http2.mlstatic.com/D_NQ_NP_733607-MLA44346739897_122020-O.jpg'),
(11, 'Huawei Mate 30 Pro 256 GB púrpura cósmico 8 GB RAM', 474049, 'Dispositivo liberado.\r\nPantalla OLED de 6.53\".\r\nTiene 4 cámaras traseras de 40Mpx/40Mpx/8Mpx/2Mpx.\r\nCámaras delanteras de 32Mpx.\r\nProcesador HiSilicon Kirin 990 Octa-Core de 2.86GHz con 8GB de RAM.\r\nBatería de 4500mAh.\r\nMemoria interna de 256GB.\r\nResistente al agua.\r\nCon reconocimiento facial y sensor de huella dactilar.', 6, 'https://http2.mlstatic.com/D_NQ_NP_698931-MLM50166478865_062022-O.webp'),
(12, 'Huawei P30 Pro 256 GB black 8 GB RAM', 427000, 'Dispositivo liberado.\r\nPantalla OLED de 6.47\".\r\nTiene 4 cámaras traseras de 40Mpx/20Mpx/8Mpx.\r\nCámara delantera de 32Mpx.\r\nProcesador HiSilicon Kirin 980 Octa-Core de 2.6GHz con 8GB de RAM.\r\nBatería de 4200mAh.\r\nMemoria interna de 256GB.\r\nResistente al agua.\r\nCon reconocimiento facial y sensor de huella dactilar.', 6, 'https://http2.mlstatic.com/D_NQ_NP_997622-MLA33085312922_122019-O.jpg'),
(15, 'Huawei Mate 20 Pro Dual Sim 128 Gb Azul Cometa 6 Gb Ram', 300000, 'Dispositivo liberado para que elijas la compañía telefónica que prefieras.\nPantalla OLED de 6.39\".\nTiene 3 cámaras traseras de 40Mpx/20Mpx/8Mpx.\nCámara delantera de 24Mpx.\nProcesador HiSilicon Kirin 980 Octa-Core de 2.6GHz con 6GB de RAM.\nBatería de 4200mAh.\nMemoria interna de 128GB.\nResistente al agua.\nCon reconocimiento facial y sensor de huella dactilar.', 6, 'https://http2.mlstatic.com/D_NQ_NP_683222-MLA33084588978_122019-O.jpg'),
(20, 'Xiaomi 11t Pro 8gb Ram 256gb Ram', 380000, 'En este Xiaomi 11T vemos un panel AMOLED de 6,67 pulgadas con tasa de refresco de 120 Hz y muestreo táctil de hasta 480 Hz. Aspectos que, junto a la resolución FullHD+ de 2.400x1.080 píxeles, vienen a ser los mínimos esperados en un móvil de gama alta no ambicioso en pantalla.', 4, 'images/634d9525d92fc3.67188508.jpg'),
(22, 'Xiaomi Blackshark 5 12 256 Celular Smartphone Gaming Gamer', 400000, 'El Black Shark 5 es el más \"básico\", el RS aumenta en potencia y la variante Pro apuesta por el mejor procesador de Qualcomm y por un sistema de cámaras de 108 megapíxeles.', 4, 'images/634d626c474575.96360022.jpg'),
(23, 'LG V40 Thinq 64gb 6gb Ram Octa-core', 90000, 'El LG V40 ThinQ está potenciado por un procesador Snapdragon 845 con 6GB de RAM y 64GB ó 128GB de almacenamiento. Sus cámaras traseras son de 16MP, 12MP y 12MP, con disparos gran ángulo, convencional y telefoto respectivamente.', 5, 'images/634d701248a4e2.53687138.jpg'),
(46, 'Iphone 13 nuevo', 555000, 'Dispositivo liberado.\r\nCompatible con redes 5G.\r\nPantalla Dynamic AMOLED 2X de 6.8\".\r\nTiene 4 cámaras traseras de 108Mpx/10Mpx/10Mpx/12Mpx.\r\nCámara delantera de 40Mpx.\r\nProcesador Snapdragon 8 Gen 1 Octa-Core de 3GHz con 12GB de RAM.\r\nBatería de 5000mAh con carga inalámbrica.\r\nMemoria interna de 256GB.\r\nResistente al agua.\r\nCon reconocimiento facial y sensor de huella dactilar.\r\nResistente al polvo y a las caídas.', 2, 'https://http2.mlstatic.com/D_NQ_NP_834464-MLA49303777747_032022-O.webp'),
(47, 'EL CEL', 200000, 'Excelente', 3, 'https://http2.mlstatic.com/D_NQ_NP_866117-MLA47778565361_102021-V.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `id_marca` int(11) NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`id_marca`, `nombre`) VALUES
(1, 'Samsung'),
(2, 'Apple'),
(3, 'Motorola'),
(4, 'Xiaomi'),
(5, 'LG'),
(6, 'Huawei');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`email`, `password`) VALUES
('admin@gmail.com', '$2y$10$gmO7oAd3srIV6yx7noavSOIHIkyvyTkYES.MqAySM/FNcY8.1HNIK');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `celular`
--
ALTER TABLE `celular`
  ADD PRIMARY KEY (`id_celular`),
  ADD KEY `fk_celular_marca` (`id_marca`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `celular`
--
ALTER TABLE `celular`
  MODIFY `id_celular` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `celular`
--
ALTER TABLE `celular`
  ADD CONSTRAINT `fk_celular_marca` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
