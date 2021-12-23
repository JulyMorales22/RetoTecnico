-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-12-2021 a las 03:07:52
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mascotas&mascotas`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `MascotasPorTipoMascosta` ()  SELECT tipomascota.Descripcion, COUNT(mascota.Id_tipomascota) AS cantidad
FROM mascota
INNER JOIN tipomascota ON mascota.Id_tipomascota=tipomascota.Id 
GROUP BY mascota.Id_tipomascota$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascota`
--

CREATE TABLE `mascota` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Id_tipomascota` int(11) NOT NULL,
  `Id_propietarios` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mascota`
--

INSERT INTO `mascota` (`Id`, `Nombre`, `Id_tipomascota`, `Id_propietarios`) VALUES
(1, 'PEPE', 2, NULL),
(2, 'LOLO', 1, 1),
(3, 'TOBY', 3, 3),
(4, 'PACO', 4, 4),
(5, 'PRUDENCIA', 5, 5),
(6, 'FEDERICO', 4, 4),
(7, 'MOISES', 3, 2),
(8, 'FRANCISCA', 5, 1),
(9, 'PACHO', 2, NULL),
(10, 'LOLA', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietarios`
--

CREATE TABLE `propietarios` (
  `Id` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `propietarios`
--

INSERT INTO `propietarios` (`Id`, `Nombre`) VALUES
(1, 'July Alejandra Morales'),
(2, 'Diego Muñoz'),
(3, 'Andres Felipe Morales Muñoz'),
(4, 'Juan David Morales Muñoz'),
(5, 'Albeiro Morales ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serviciosveterinaria`
--

CREATE TABLE `serviciosveterinaria` (
  `id` int(11) NOT NULL,
  `ValorServicios` int(11) NOT NULL,
  `fecha` varchar(30) NOT NULL,
  `Id_propietarios` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `serviciosveterinaria`
--

INSERT INTO `serviciosveterinaria` (`id`, `ValorServicios`, `fecha`, `Id_propietarios`) VALUES
(1, 100000, '22/12/2021', 2),
(2, 250000, '22/12/2021', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomascota`
--

CREATE TABLE `tipomascota` (
  `Id` int(11) NOT NULL,
  `Descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipomascota`
--

INSERT INTO `tipomascota` (`Id`, `Descripcion`) VALUES
(1, 'cerdo'),
(2, 'gato'),
(3, 'Perro'),
(4, 'Loro'),
(5, 'Gallina');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_tipomascota` (`Id_tipomascota`),
  ADD KEY `Id_propietarios` (`Id_propietarios`);

--
-- Indices de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `serviciosveterinaria`
--
ALTER TABLE `serviciosveterinaria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Id_propietarios` (`Id_propietarios`);

--
-- Indices de la tabla `tipomascota`
--
ALTER TABLE `tipomascota`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mascota`
--
ALTER TABLE `mascota`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `propietarios`
--
ALTER TABLE `propietarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `serviciosveterinaria`
--
ALTER TABLE `serviciosveterinaria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipomascota`
--
ALTER TABLE `tipomascota`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mascota`
--
ALTER TABLE `mascota`
  ADD CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`Id_tipomascota`) REFERENCES `tipomascota` (`Id`),
  ADD CONSTRAINT `mascota_ibfk_2` FOREIGN KEY (`Id_propietarios`) REFERENCES `propietarios` (`Id`);

--
-- Filtros para la tabla `serviciosveterinaria`
--
ALTER TABLE `serviciosveterinaria`
  ADD CONSTRAINT `serviciosveterinaria_ibfk_1` FOREIGN KEY (`Id_propietarios`) REFERENCES `propietarios` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
