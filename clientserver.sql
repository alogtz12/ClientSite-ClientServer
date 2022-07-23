-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2022 a las 05:35:36
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
-- Base de datos: `clientserver`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `user` varchar(50) NOT NULL,
  `idpost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comments`
--

INSERT INTO `comments` (`id`, `comment`, `user`, `idpost`) VALUES
(1, 'A turbocharged engine is smaller than a regular one, burns less fuel and generates less carbon dioxide, which means it\'s friendlier to the environment.', 'Perro', 1),
(3, 'Requiring less displacement to run with the same power as a traditional engine, it requires less gasoline to run, up to 20% less.', 'Elian', 1),
(4, 'It generates more power because the system is driven by a belt connected to the crankshaft pulley, in order to generate more air pressure.', 'Manolo', 2),
(5, 'The Supercharger is an accessory installed in a car\'s engine to induce more air, which allows it to generate more power than a naturally aspirated one.', 'Gato', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `section` varchar(50) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `day` int(11) NOT NULL,
  `month` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`id`, `title`, `description`, `date`, `user`, `section`, `comment`, `day`, `month`) VALUES
(1, 'Turbo Motors', 'What are de turbo motors?', '10/July/2022', 'Alondra Gutiérrez', 'Turbo cars', 'A turbo engine is a supercharging system that manages to compress the air that circulates towards the engine, making a richer mixture and sending a greater amount of oxygen that reaches a greater amount of fuel.', 10, 'July'),
(2, 'Supercharged Motors', 'What are supercharged motors?', '12/July/2022', 'Álvaro Glez', 'Supercharger cars', 'Also known as a Supercharger or Supercharger, the Supercharger is an accessory installed in a car\'s engine to induce more air, which allows it to generate more power than a naturally aspirated one.', 12, 'July');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
