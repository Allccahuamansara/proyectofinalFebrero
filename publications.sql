-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2020 a las 07:12:58
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `publications`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad`
--

CREATE TABLE `actividad` (
  `Fecha` date NOT NULL,
  `Hora` date NOT NULL,
  `NombreNota` varchar(50) NOT NULL,
  `Descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `actividad`
--

INSERT INTO `actividad` (`Fecha`, `Hora`, `NombreNota`, `Descripcion`) VALUES
('2020-12-14', '0000-00-00', 'asdasd', 'sadad'),
('2020-12-14', '0000-00-00', 'asdasd', 'sadad'),
('2020-12-03', '0000-00-00', '', ''),
('2020-12-03', '0000-00-00', 'adasd', 'asddads'),
('2020-12-03', '0000-00-00', 'adasd', 'asddads'),
('2020-12-03', '0000-00-00', 'adasd', 'asddads'),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('2021-12-14', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', 'asdasd', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', 'asdasd', ''),
('0000-00-00', '0000-00-00', 'asdasd', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', ''),
('0000-00-00', '0000-00-00', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `classics`
--

CREATE TABLE `classics` (
  `author` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `category` varchar(16) DEFAULT NULL,
  `isbn` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `classics`
--

INSERT INTO `classics` (`author`, `title`, `year`, `category`, `isbn`) VALUES
('Jane Austen', 'Pride and Prejudice', 1811, 'Fiction', '9780582506206'),
('Charles Darwin', 'The Origin of Species', 1856, 'Non-Fiction', '9780517123201'),
('Charles Dickens', 'The Old Curiosity Shop', 1841, 'Fiction', '9780099533474'),
('William Shakespeare', 'Romeo and Juliet', 1594, 'Play', '9780192814968'),
('Mark Twain', 'The Adventures of Tom Sawyer', 1876, 'Classic', '9781598184891');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

CREATE TABLE `customers` (
  `name` varchar(128) DEFAULT NULL,
  `isbn` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`name`, `isbn`) VALUES
('Joe Bloggs', '9780099533474'),
('Jack Wilson', '9780517123201'),
('Mary Smith', '9780582506206');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user` varchar(40) DEFAULT NULL,
  `isbn` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user`, `isbn`) VALUES
('admin', '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `nombres`, `apellidos`, `username`, `password`) VALUES
(1, 'Sara ', 'huaman', 'hola', '$2y$10$BEQLfLGgDmrTYHjw0heB0eLsKv7YppKCvIOp6Pl4GqD35jcPckV.u'),
(4, 'ruth', 'huaman', '123', '$2y$10$qk8O3lJdc3qGAjE2dRvnmOizIxtAuXWmSvwR93A8V4kddN5oCYUKi'),
(5, 'ruth', 'huaman', 'helo', '$2y$10$Db08QQCjwEVKh78gFu2mK.n3pODmu5IW71dY.mmqYytOKDiyyX6Ou'),
(6, 'sara', 'huaman', 'helo', '$2y$10$toIIF7ls6wLXNVc6u5oEfeQzl./IitMOksvQ3qiPEmz1au8QMndHW');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `classics`
--
ALTER TABLE `classics`
  ADD KEY `author` (`author`(20)),
  ADD KEY `title` (`title`(20)),
  ADD KEY `year` (`year`);

--
-- Indices de la tabla `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`isbn`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
