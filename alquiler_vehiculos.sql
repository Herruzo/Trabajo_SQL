-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 04-04-2022 a las 17:52:17
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alquiler_vehiculos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `categoria` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `categoria`) VALUES
(4, 'Berlina'),
(2, 'Compacto'),
(5, 'Coupé'),
(3, 'Familiar'),
(6, 'Monovolumen'),
(1, 'Subcompacto'),
(7, 'Vehículos comerciale');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `dni_pasport` varchar(12) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `sexo` enum('Mujer','H','N/C') COLLATE utf8_spanish_ci DEFAULT NULL,
  `fnac` date DEFAULT NULL,
  `id_pais_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellidos`, `dni_pasport`, `telefono`, `sexo`, `fnac`, `id_pais_FK`) VALUES
(3, 'Maria', 'Lopez Lopez', '00000000P', '925111111', 'Mujer', '1982-12-05', 1),
(4, 'Victor', 'Porcel Martín', '11111111P', '925222222', 'H', '1969-04-15', 1),
(5, 'Caterina', 'Oliveira Cortes', '22222222P', '925333333', 'Mujer', '1991-12-31', 2),
(6, 'Danilo', 'Pereira Vidal', '33333333P', '925444444', 'H', '1998-07-11', 2),
(7, 'Camille', 'Lombrad Briand', '44444444P', '925555555', 'Mujer', '2002-08-25', 3),
(8, 'Charles', 'Signoret Regnault', '55555555P', '925666666', 'H', '1970-03-23', 3),
(9, 'Giselle', 'Holbin', '66666666P', '925777777', 'Mujer', '1995-06-11', 4),
(10, 'Morgan', 'Müller', '77777777P', '925888888', 'H', '1988-11-15', 4),
(11, 'Marius', 'Popa', '88888888P', '925999999', 'H', '2001-05-30', 5),
(12, 'Alexandru', 'Radu', '99999999P', '925000000', 'H', '2000-01-28', 5),
(13, 'Mohamed', 'Alami', '12222222P', '925121212', 'H', '1987-11-30', 6),
(14, 'Said', 'Alaovi', '13333333P', '925131313', 'H', '1985-12-25', 6),
(15, 'Bruno', 'Rossi Ferrari', '14444444P', '925141414', 'H', '1997-10-25', 7),
(16, 'Franco', 'Cabano Fabene', '15555555P', '925151515', 'H', '1999-10-20', 7),
(17, 'Manuel', 'Garcia Rodriguez', '16666666P', '925161616', 'H', '1993-11-15', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `marca` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `marca`) VALUES
(5, 'BMW'),
(9, 'Citroën'),
(3, 'Ford'),
(8, 'KIA'),
(4, 'Mercedes'),
(2, 'Opel'),
(7, 'Peugeot'),
(6, 'Renault'),
(1, 'Seat');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id_modelo` int(11) NOT NULL,
  `modelo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `id_marca_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id_modelo`, `modelo`, `id_marca_FK`) VALUES
(1, 'Captur', 6),
(2, 'Corsa', 2),
(3, 'Fiesta', 3),
(4, 'Rio', 8),
(5, '2008', 7),
(6, 'Ateca', 1),
(7, 'X2', 5),
(8, 'X1', 5),
(9, '308', 7),
(10, 'Astra', 2),
(11, 'León', 1),
(12, 'Ceed', 8),
(13, 'Focus', 3),
(14, 'Megane', 6),
(15, 'León ST', 1),
(16, 'Serie 3', 5),
(17, 'Insigni ST', 2),
(18, 'Mondeo Trend Sport B', 3),
(19, 'Astra Selective Pro ', 2),
(20, 'Megane Sp. Tourer Bu', 6),
(21, 'Clase C', 4),
(22, 'Mondeo', 3),
(23, 'Clase S', 4),
(24, 'Serie 7', 5),
(25, 'Insignia', 2),
(26, '508', 7),
(27, 'Talisman', 6),
(28, 'Optima', 8),
(29, 'GLC Coupé', 4),
(30, 'Serie 6', 5),
(31, 'Sportage Coupé', 8),
(32, 'Astra Coupé', 2),
(33, 'Arkna Coupé', 6),
(34, 'Puma Coupé', 3),
(35, 'Ateca Coupé', 1),
(36, 'Scénic', 6),
(37, 'Vivaro Tourer', 2),
(38, 'Rifter', 7),
(39, 'Tourneo Courier', 3),
(40, 'Combo Life', 2),
(41, 'Alhambra', 1),
(42, 'Kangoo Furgón', 6),
(43, 'Trafic Furgón', 6),
(44, 'Vivaro Furgón', 2),
(45, 'Sprinter Furgón', 4),
(46, 'Transit Furgón', 3),
(47, 'Movano Furgón', 2),
(48, 'Jumper', 9),
(49, 'Berlingo', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id_pais` int(11) NOT NULL,
  `pais` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id_pais`, `pais`) VALUES
(4, 'Alemania'),
(3, 'Francia'),
(7, 'Italia'),
(6, 'Marruecos'),
(2, 'Portugal'),
(5, 'Rumania'),
(1, 'Spain');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `trayecto` varchar(60) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_alquiler` date NOT NULL,
  `hora_inicio_alq` time NOT NULL,
  `hora_fin_alq` time NOT NULL,
  `id_vehiculo_FK` int(11) DEFAULT NULL,
  `id_cliente_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `trayecto`, `fecha_alquiler`, `hora_inicio_alq`, `hora_fin_alq`, `id_vehiculo_FK`, `id_cliente_FK`) VALUES
(1, 'Corto', '2019-06-11', '10:00:00', '12:00:00', 36, 4),
(2, 'Corto', '2019-06-11', '10:00:00', '12:00:00', 36, 4),
(3, 'Corto', '2019-06-12', '10:00:00', '12:00:00', 36, 4),
(4, 'Corto', '2019-06-13', '10:00:00', '12:00:00', 36, 4),
(5, 'Corto', '2019-06-11', '09:00:00', '11:00:00', 25, 3),
(6, 'Corto', '2019-06-11', '09:00:00', '11:00:00', 25, 3),
(7, 'Corto', '2020-05-25', '09:00:00', '11:00:00', 25, 3),
(8, 'Medio', '2020-06-15', '09:00:00', '14:00:00', 41, 17),
(9, 'Corto', '2020-08-24', '09:00:00', '11:00:00', 7, 8),
(10, 'Medio', '2020-09-25', '10:00:00', '13:00:00', 7, 7),
(11, 'Medio', '2020-10-02', '09:00:00', '14:00:00', 7, 9),
(12, 'Medio', '2020-11-26', '09:00:00', '14:00:00', 6, 5),
(13, 'Medio', '2021-01-05', '08:00:00', '12:00:00', 37, 5),
(14, 'Medio', '2021-02-14', '09:00:00', '12:00:00', 41, 5),
(15, 'Largo', '2021-03-15', '09:00:00', '22:00:00', 47, 3),
(16, 'Largo', '2021-04-15', '09:00:00', '22:00:00', 47, 4),
(17, 'Largo', '2021-05-15', '09:00:00', '22:00:00', 45, 12),
(18, 'Largo', '2021-06-15', '09:00:00', '22:00:00', 44, 13),
(19, 'Largo', '2021-07-15', '08:00:00', '23:00:00', 42, 13),
(20, 'Largo', '2021-08-15', '08:00:00', '23:00:00', 48, 13),
(21, 'Largo', '2021-09-15', '08:00:00', '23:00:00', 49, 14),
(22, 'Corto', '2019-01-05', '09:00:00', '11:00:00', 21, 15),
(23, 'Medio', '2019-01-17', '09:00:00', '13:00:00', 23, 6),
(24, 'Largo', '2019-01-22', '00:00:00', '23:59:00', 29, 3),
(25, 'Corto', '2019-02-04', '09:00:00', '11:00:00', 7, 5),
(26, 'Medio', '2019-02-18', '09:00:00', '13:00:00', 8, 4),
(27, 'Largo', '2019-02-26', '00:00:00', '23:59:00', 15, 4),
(28, 'Corto', '2019-03-04', '09:00:00', '11:00:00', 30, 16),
(29, 'Medio', '2019-03-06', '09:00:00', '13:00:00', 33, 15),
(30, 'Largo', '2019-03-30', '00:00:00', '23:59:00', 35, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `id_vehiculo` int(11) NOT NULL,
  `matricula` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `anyo_itv` year(4) DEFAULT NULL,
  `id_categoria_FK` int(11) DEFAULT NULL,
  `id_modelo_FK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`id_vehiculo`, `matricula`, `anyo_itv`, `id_categoria_FK`, `id_modelo_FK`) VALUES
(1, '1111 AAA', 2019, 1, 1),
(2, '1111 BBB', 2020, 1, 2),
(3, '1111 CCC', 2021, 1, 3),
(4, '1111 DDD', 2022, 1, 4),
(5, '1111 EEE', 2021, 1, 5),
(6, '1111 FFF', 2020, 1, 6),
(7, '1111 GGG', 2019, 1, 7),
(8, '2222 AAA', 2019, 2, 8),
(9, '2222 BBB', 2019, 2, 8),
(10, '2222 CCC', 2020, 2, 10),
(11, '2222 DDD', 2020, 2, 11),
(12, '2222 EEE', 2021, 2, 12),
(13, '2222 FFF', 2021, 2, 13),
(14, '2222 GGG', 2021, 2, 14),
(15, '3333 AAA', 2019, 3, 15),
(16, '3333 BBB', 2019, 3, 16),
(17, '3333 CCC', 2020, 3, 17),
(18, '3333 DDD', 2020, 3, 18),
(19, '3333 EEE', 2020, 3, 19),
(20, '3333 FFF', 2021, 3, 20),
(21, '3333 GGG', 2021, 3, 21),
(22, '4444 AAA', 2022, 4, 22),
(23, '4444 BBB', 2022, 4, 23),
(24, '4444 CCC', 2021, 4, 24),
(25, '4444 DDD', 2021, 4, 25),
(26, '4444 EEE', 2020, 4, 26),
(27, '4444 FFF', 2020, 4, 27),
(28, '4444 GGG', 2019, 4, 28),
(29, '5555 AAA', 2020, 5, 29),
(30, '5555 BBB', 2020, 5, 30),
(31, '5555 CCC', 2021, 5, 31),
(32, '5555 DDD', 2021, 5, 32),
(33, '5555 EEE', 2022, 5, 33),
(34, '5555 FFF', 2019, 5, 34),
(35, '5555 GGG', 2019, 5, 35),
(36, '6666 AAA', 2019, 6, 36),
(37, '6666 BBB', 2020, 6, 37),
(38, '6666 CCC', 2021, 6, 38),
(39, '6666 DDD', 2022, 6, 49),
(40, '6666 EEE', 2019, 6, 39),
(41, '6666 FFF', 2020, 6, 40),
(42, '6666 GGG', 2021, 6, 41),
(43, '7777 AAA', 2020, 7, 48),
(44, '7777 BBB', 2021, 7, 42),
(45, '7777 CCC', 2021, 7, 43),
(46, '7777 DDD', 2022, 7, 44),
(47, '7777 EEE', 2019, 7, 45),
(48, '7777 FFF', 2019, 7, 46),
(49, '7777 GGG', 2020, 7, 47);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_reservas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_reservas` (
`ID` int(11)
,`Recorrido` varchar(60)
,`Fecha alquiler` date
,`Hora de salida y entrada` varchar(23)
,`Tipo de vehículo` varchar(20)
,`Marca` varchar(20)
,`Modelo` varchar(20)
,`Nombre del cliente` varchar(91)
,`País` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_reservas`
--
DROP TABLE IF EXISTS `vista_reservas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_reservas`  AS SELECT `r`.`id_reserva` AS `ID`, `r`.`trayecto` AS `Recorrido`, `r`.`fecha_alquiler` AS `Fecha alquiler`, concat(`r`.`hora_inicio_alq`,' - ',`r`.`hora_fin_alq`) AS `Hora de salida y entrada`, `ca`.`categoria` AS `Tipo de vehículo`, `ma`.`marca` AS `Marca`, `m`.`modelo` AS `Modelo`, concat(`c`.`nombre`,' ',`c`.`apellidos`) AS `Nombre del cliente`, `p`.`pais` AS `País` FROM ((((((`reservas` `r` join `vehiculos` `v` on(`r`.`id_vehiculo_FK` = `v`.`id_vehiculo`)) join `modelos` `m` on(`v`.`id_modelo_FK` = `m`.`id_modelo`)) join `marcas` `ma` on(`m`.`id_marca_FK` = `ma`.`id_marca`)) join `categorias` `ca` on(`v`.`id_categoria_FK` = `ca`.`id_categoria`)) join `clientes` `c` on(`r`.`id_cliente_FK` = `c`.`id_cliente`)) join `paises` `p` on(`c`.`id_pais_FK` = `p`.`id_pais`)) WHERE `p`.`pais` <> 'Spain' ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `categoria` (`categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `dni_pasport` (`dni_pasport`),
  ADD KEY `id_pais_FK` (`id_pais_FK`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`),
  ADD UNIQUE KEY `marca` (`marca`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id_modelo`),
  ADD UNIQUE KEY `modelo` (`modelo`),
  ADD KEY `id_marca_FK` (`id_marca_FK`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id_pais`),
  ADD UNIQUE KEY `pais` (`pais`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD KEY `id_vehiculo_FK` (`id_vehiculo_FK`),
  ADD KEY `id_cliente_FK` (`id_cliente_FK`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD UNIQUE KEY `matricula` (`matricula`),
  ADD KEY `id_categoria_FK` (`id_categoria_FK`),
  ADD KEY `id_modelo_FK` (`id_modelo_FK`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id_pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`id_pais_FK`) REFERENCES `paises` (`id_pais`);

--
-- Filtros para la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD CONSTRAINT `id_marca_FK` FOREIGN KEY (`id_marca_FK`) REFERENCES `marcas` (`id_marca`);

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_vehiculo_FK`) REFERENCES `vehiculos` (`id_vehiculo`),
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`id_cliente_FK`) REFERENCES `clientes` (`id_cliente`);

--
-- Filtros para la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD CONSTRAINT `vehiculos_ibfk_1` FOREIGN KEY (`id_categoria_FK`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `vehiculos_ibfk_2` FOREIGN KEY (`id_modelo_FK`) REFERENCES `modelos` (`id_modelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
