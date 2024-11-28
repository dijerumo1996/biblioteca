-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2024 a las 22:57:24
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
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `ID_Autor` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Nacionalidad` varchar(50) DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`ID_Autor`, `Nombre`, `Nacionalidad`, `Fecha_Nacimiento`) VALUES
(1, 'Gabriel García Márquez', 'Colombiana', '1927-03-06'),
(2, 'J.K. Rowling', 'Británica', '1965-07-31'),
(3, 'George Orwell', 'Británica', '1903-06-25'),
(4, 'Gabriel García Márquez', 'Colombiana', '1927-03-06'),
(5, 'J.K. Rowling', 'Británica', '1965-07-31'),
(6, 'George Orwell', 'Británica', '1903-06-25'),
(7, 'Gabriel García Márquez', 'Colombiana', '1927-03-06'),
(8, 'J.K. Rowling', 'Británica', '1965-07-31'),
(9, 'George Orwell', 'Británica', '1903-06-25'),
(10, 'Gabriel García Márquez', 'Colombiana', '1927-03-06'),
(11, 'J.K. Rowling', 'Británica', '1965-07-31'),
(12, 'George Orwell', 'Británica', '1903-06-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `ID_Categoria` int(11) NOT NULL,
  `Nombre_Categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`ID_Categoria`, `Nombre_Categoria`) VALUES
(1, 'Novela'),
(2, 'Ciencia Ficcion'),
(3, 'Fantasia'),
(4, 'Ensayo'),
(5, 'Novela'),
(6, 'Ciencia Ficcion'),
(7, 'Fantasia'),
(8, 'Ensayo'),
(9, 'Novela'),
(10, 'Ciencia Ficcion'),
(11, 'Fantasia'),
(12, 'Ensayo'),
(13, 'Novela'),
(14, 'Ciencia Ficcion'),
(15, 'Fantasia'),
(16, 'Ensayo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `ID_Libro` int(11) NOT NULL,
  `Titulo` varchar(255) NOT NULL,
  `ID_Autor` int(11) DEFAULT NULL,
  `ID_Categoria` int(11) DEFAULT NULL,
  `Año_Publicacion` int(11) DEFAULT NULL,
  `Disponible` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`ID_Libro`, `Titulo`, `ID_Autor`, `ID_Categoria`, `Año_Publicacion`, `Disponible`) VALUES
(1, 'Cien Años de Soledad', 1, 1, 1967, 1),
(2, 'Harry Potter y la Piedra Filosofal', 2, 3, 1997, 1),
(3, 'La Era de 1984', 3, 2, 1949, 1),
(4, 'Cien Años de Soledad', 1, 1, 1967, 1),
(5, 'Harry Potter y la Piedra Filosofal', 2, 3, 1997, 1),
(6, 'La Era de 1984', 3, 2, 1949, 1),
(7, 'Cien Años de Soledad', 1, 1, 1967, 1),
(8, 'Harry Potter y la Piedra Filosofal', 2, 3, 1997, 1),
(9, 'La Era de 1984', 3, 2, 1949, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `ID_Prestamo` int(11) NOT NULL,
  `ID_Usuario` int(11) DEFAULT NULL,
  `ID_Libro` int(11) DEFAULT NULL,
  `Fecha_Prestamo` date DEFAULT NULL,
  `Fecha_Devolucion` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos_usuarios`
--

CREATE TABLE `prestamos_usuarios` (
  `ID_Relacion` int(11) NOT NULL,
  `ID_Prestamo` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuario`, `Nombre`, `Direccion`, `Telefono`) VALUES
(1, 'Carlos Martínez', 'Calle Luna, 123', '123456789'),
(2, 'Lucía Fernández', 'Avenida Sol, 456', '987654321'),
(3, 'Carlos Martínez', 'Calle Luna, 123', '123456789'),
(4, 'Lucía Fernández', 'Avenida Sol, 456', '987654321'),
(5, 'Carlos Martínez', 'Calle Luna, 123', '123456789'),
(6, 'Lucía Fernández', 'Avenida Sol, 456', '987654321');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`ID_Autor`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID_Categoria`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`ID_Libro`),
  ADD KEY `ID_Autor` (`ID_Autor`),
  ADD KEY `ID_Categoria` (`ID_Categoria`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`ID_Prestamo`),
  ADD KEY `ID_Usuario` (`ID_Usuario`),
  ADD KEY `ID_Libro` (`ID_Libro`);

--
-- Indices de la tabla `prestamos_usuarios`
--
ALTER TABLE `prestamos_usuarios`
  ADD PRIMARY KEY (`ID_Relacion`),
  ADD KEY `ID_Prestamo` (`ID_Prestamo`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `ID_Autor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID_Categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `ID_Libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `ID_Prestamo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `prestamos_usuarios`
--
ALTER TABLE `prestamos_usuarios`
  MODIFY `ID_Relacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`ID_Autor`) REFERENCES `autores` (`ID_Autor`),
  ADD CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`ID_Categoria`) REFERENCES `categorias` (`ID_Categoria`);

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_Usuario`),
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`ID_Libro`) REFERENCES `libros` (`ID_Libro`);

--
-- Filtros para la tabla `prestamos_usuarios`
--
ALTER TABLE `prestamos_usuarios`
  ADD CONSTRAINT `prestamos_usuarios_ibfk_1` FOREIGN KEY (`ID_Prestamo`) REFERENCES `prestamos` (`ID_Prestamo`),
  ADD CONSTRAINT `prestamos_usuarios_ibfk_2` FOREIGN KEY (`ID_Usuario`) REFERENCES `usuarios` (`ID_Usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
