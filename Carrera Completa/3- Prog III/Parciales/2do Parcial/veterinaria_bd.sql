-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-08-2020 a las 12:28:51
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `veterinaria_bd`
--
CREATE DATABASE IF NOT EXISTS `veterinaria_bd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `veterinaria_bd`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

DROP TABLE IF EXISTS `mascotas`;
CREATE TABLE IF NOT EXISTS `mascotas` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `edad` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`id`, `nombre`, `tipo`, `edad`) VALUES
(1, 'puki', 'perro', 8),
(2, 'manchita', 'gato', 3),
(3, 'pipo', 'tortuga', 95);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellido` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `perfil` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `clave`, `nombre`, `apellido`, `perfil`, `foto`) VALUES
(1, 'prop@prop.com', '1234', 'Propietario', 'Propietario', 'propietario', './fotos/prop@prop.com_1.jpg'),
(2, 'empleado@empleado.com', '123456', 'Emple', 'Ado', 'empleado', './fotos/empleado@empleado.com_2.jpg'),
(3, 'encargado@encargado.com', '123456', 'Encargado', 'Encargado', 'encargado', './fotos/encargado@encargado.com_3.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
