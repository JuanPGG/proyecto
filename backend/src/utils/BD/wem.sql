-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-08-2024 a las 02:36:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ambiente`
--

CREATE TABLE `ambiente` (
  `id_Ambiente` int(11) NOT NULL,
  `Nombre_Ambiente` varchar(150) NOT NULL,
  `Descripcion_Ambiente` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ambiente`
--

INSERT INTO `ambiente` (`id_Ambiente`, `Nombre_Ambiente`, `Descripcion_Ambiente`) VALUES
(3, 'Aula 1', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `competencia`
--

CREATE TABLE `competencia` (
  `id_Competencia` int(11) NOT NULL,
  `Nombre_Competencia` varchar(150) NOT NULL,
  `Descripcion_Competencia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `competencia`
--

INSERT INTO `competencia` (`id_Competencia`, `Nombre_Competencia`, `Descripcion_Competencia`) VALUES
(5, 'Matemáticas', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `id_Ficha` int(11) NOT NULL,
  `Nombre_Gestor` varchar(120) NOT NULL,
  `Cel_Gestor` varchar(30) DEFAULT NULL,
  `Numero_Ficha` varchar(30) NOT NULL,
  `id_Programa` int(11) NOT NULL,
  `Nombre_Vocero` varchar(120) DEFAULT NULL,
  `Cel_Vocero` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`id_Ficha`, `Nombre_Gestor`, `Cel_Gestor`, `Numero_Ficha`, `id_Programa`, `Nombre_Vocero`, `Cel_Vocero`) VALUES
(7, 'Juan', '', '1835082', 2, 'Pablo', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_Horario` int(11) NOT NULL,
  `Dia` varchar(50) NOT NULL,
  `Hora_Inicio` time NOT NULL,
  `Hora_Fin` time NOT NULL,
  `id_Ambiente` int(11) NOT NULL,
  `id_Competencia` int(11) NOT NULL,
  `id_Instructor` int(11) NOT NULL,
  `id_Trimestre` int(11) NOT NULL,
  `id_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`id_Horario`, `Dia`, `Hora_Inicio`, `Hora_Fin`, `id_Ambiente`, `id_Competencia`, `id_Instructor`, `id_Trimestre`, `id_Usuario`) VALUES
(273, 'Lunes', '06:00:00', '07:00:00', 3, 5, 7, 33, 2),
(275, 'Lunes', '08:00:00', '09:00:00', 3, 5, 7, 33, 2),
(276, 'Lunes', '07:00:00', '08:00:00', 3, 5, 8, 33, 2),
(277, 'Miercoles', '07:00:00', '08:00:00', 3, 5, 8, 33, 2),
(278, 'Viernes', '06:00:00', '07:00:00', 3, 5, 7, 33, 2),
(279, 'Jueves', '07:00:00', '08:00:00', 3, 5, 7, 33, 2),
(280, 'Jueves', '08:00:00', '09:00:00', 3, 5, 8, 33, 2),
(281, 'Miercoles', '08:00:00', '09:00:00', 3, 5, 8, 33, 2),
(282, 'Miercoles', '06:00:00', '07:00:00', 3, 5, 7, 33, 2),
(283, 'Jueves', '06:00:00', '07:00:00', 3, 5, 7, 33, 2),
(284, 'Viernes', '07:00:00', '08:00:00', 3, 5, 7, 33, 2),
(285, 'Jueves', '09:00:00', '10:00:00', 3, 5, 7, 33, 2),
(286, 'Miercoles', '09:00:00', '10:00:00', 3, 5, 7, 33, 2),
(287, 'Martes', '07:00:00', '08:00:00', 3, 5, 8, 33, 2),
(290, 'Martes', '06:00:00', '07:00:00', 3, 5, 7, 33, 2),
(291, 'Sabado', '06:00:00', '07:00:00', 3, 5, 7, 33, 2),
(292, 'Sabado', '07:00:00', '08:00:00', 3, 5, 8, 33, 2),
(293, 'Viernes', '08:00:00', '09:00:00', 3, 5, 8, 33, 2),
(294, 'Sabado', '08:00:00', '09:00:00', 3, 5, 8, 33, 2),
(295, 'Lunes', '09:00:00', '10:00:00', 3, 5, 7, 33, 2),
(296, 'Martes', '12:00:00', '13:00:00', 3, 5, 7, 33, 2),
(297, 'Viernes', '15:00:00', '16:00:00', 3, 5, 7, 33, 2),
(298, 'Miercoles', '19:00:00', '20:00:00', 3, 5, 8, 33, 2),
(299, 'Viernes', '19:00:00', '20:00:00', 3, 5, 8, 33, 2);

--
-- Disparadores `horario`
--
DELIMITER $$
CREATE TRIGGER `after_insert_horario` AFTER INSERT ON `horario` FOR EACH ROW insert into trazabilidad
   set Accion = "creacion",
   id_Usuario = NEW.id_Usuario,
   id_Competencia = NEW.id_Competencia,
   id_Trimestre = NEW.id_Trimestre,
   id_Ambiente = NEW.id_Ambiente,
   id_Instructor = NEW.id_Instructor,
   Fecha = now()
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `before_horario` BEFORE DELETE ON `horario` FOR EACH ROW insert into trazabilidad
   set Accion = "eliminacion",
   id_Usuario = OLD.id_Usuario,
   id_Competencia = OLD.id_Competencia,
   id_Trimestre = OLD.id_Trimestre,
   id_Ambiente = OLD.id_Ambiente,
   id_Instructor = OLD.id_Instructor,
   Fecha = now()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE `instructor` (
  `id_Instructor` int(11) NOT NULL,
  `Nombres` varchar(80) NOT NULL,
  `Apellidos` varchar(80) NOT NULL,
  `Documento` varchar(30) NOT NULL,
  `Correo` varchar(150) NOT NULL,
  `Color` varchar(30) NOT NULL,
  `id_TipoContrato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `instructor`
--

INSERT INTO `instructor` (`id_Instructor`, `Nombres`, `Apellidos`, `Documento`, `Correo`, `Color`, `id_TipoContrato`) VALUES
(7, 'Juan', 'Prueba', '1238938482', 'juanpa2062@hotmail.com', '#0f8ceb', 19),
(8, 'Shara', 'Admin', '1001138065', 'shara@gmail.com', '#17d6d9', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa_formacion`
--

CREATE TABLE `programa_formacion` (
  `id_Programa` int(11) NOT NULL,
  `Nombre_Programa` varchar(120) NOT NULL,
  `Descripcion_Programa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `programa_formacion`
--

INSERT INTO `programa_formacion` (`id_Programa`, `Nombre_Programa`, `Descripcion_Programa`) VALUES
(2, 'ADSI', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_Rol` int(11) NOT NULL,
  `Nombre_Rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_Rol`, `Nombre_Rol`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocontrato`
--

CREATE TABLE `tipocontrato` (
  `id_TipoContrato` int(11) NOT NULL,
  `Descripcion_TipoContrato` varchar(255) NOT NULL,
  `Horas_TipoContrato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipocontrato`
--

INSERT INTO `tipocontrato` (`id_TipoContrato`, `Descripcion_TipoContrato`, `Horas_TipoContrato`) VALUES
(19, 'Prueba', 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trazabilidad`
--

CREATE TABLE `trazabilidad` (
  `id_Trazabilidad` int(11) NOT NULL,
  `id_Usuario` int(11) NOT NULL,
  `id_Competencia` int(11) NOT NULL,
  `id_Trimestre` int(11) NOT NULL,
  `id_Ambiente` int(11) NOT NULL,
  `id_Instructor` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Accion` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trazabilidad`
--

INSERT INTO `trazabilidad` (`id_Trazabilidad`, `id_Usuario`, `id_Competencia`, `id_Trimestre`, `id_Ambiente`, `id_Instructor`, `Fecha`, `Accion`) VALUES
(47, 2, 5, 33, 3, 7, '2024-02-29 21:15:50', 'creacion'),
(48, 2, 5, 33, 3, 7, '2024-02-29 21:16:17', 'creacion'),
(49, 2, 5, 33, 3, 7, '2024-02-29 21:16:25', 'creacion'),
(50, 2, 5, 33, 3, 7, '2024-02-29 21:17:38', 'eliminacion'),
(51, 2, 5, 33, 3, 8, '2024-02-29 21:17:42', 'creacion'),
(52, 2, 5, 33, 3, 8, '2024-02-29 21:17:47', 'creacion'),
(53, 2, 5, 33, 3, 7, '2024-06-19 16:00:08', 'creacion'),
(54, 2, 5, 33, 3, 7, '2024-06-19 16:00:25', 'creacion'),
(55, 2, 5, 33, 3, 8, '2024-06-19 16:00:51', 'creacion'),
(56, 2, 5, 33, 3, 8, '2024-06-19 16:00:52', 'creacion'),
(57, 2, 5, 33, 3, 7, '2024-06-19 16:00:52', 'creacion'),
(58, 2, 5, 33, 3, 7, '2024-06-19 16:00:53', 'creacion'),
(59, 2, 5, 33, 3, 7, '2024-06-19 16:00:54', 'creacion'),
(60, 2, 5, 33, 3, 7, '2024-06-19 16:00:55', 'creacion'),
(61, 2, 5, 33, 3, 7, '2024-06-19 16:00:56', 'creacion'),
(62, 2, 5, 33, 3, 8, '2024-06-19 16:00:57', 'creacion'),
(63, 2, 5, 33, 3, 8, '2024-06-19 16:00:58', 'creacion'),
(64, 2, 5, 33, 3, 7, '2024-06-19 16:00:59', 'creacion'),
(65, 2, 5, 33, 3, 7, '2024-06-19 16:01:05', 'creacion'),
(66, 2, 5, 33, 3, 7, '2024-06-19 16:01:06', 'creacion'),
(67, 2, 5, 33, 3, 8, '2024-06-19 16:01:07', 'creacion'),
(68, 2, 5, 33, 3, 8, '2024-06-19 16:01:08', 'creacion'),
(69, 2, 5, 33, 3, 8, '2024-06-19 16:01:09', 'creacion'),
(70, 2, 5, 33, 3, 7, '2024-06-19 16:01:11', 'creacion'),
(71, 2, 5, 33, 3, 7, '2024-06-19 16:01:21', 'creacion'),
(72, 2, 5, 33, 3, 7, '2024-06-19 16:01:22', 'creacion'),
(73, 2, 5, 33, 3, 8, '2024-06-19 16:01:29', 'creacion'),
(74, 2, 5, 33, 3, 8, '2024-06-19 16:01:30', 'creacion'),
(75, 2, 5, 33, 3, 8, '2024-06-19 16:03:07', 'eliminacion'),
(76, 2, 5, 33, 3, 7, '2024-06-19 16:03:11', 'eliminacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trimestre`
--

CREATE TABLE `trimestre` (
  `id_Trimestre` int(11) NOT NULL,
  `Trimestre` varchar(50) NOT NULL,
  `Fecha_Inicio` date NOT NULL,
  `Fecha_Fin` date NOT NULL,
  `id_Ficha` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trimestre`
--

INSERT INTO `trimestre` (`id_Trimestre`, `Trimestre`, `Fecha_Inicio`, `Fecha_Fin`, `id_Ficha`) VALUES
(33, 'Trimestre 1', '2024-02-29', '2024-03-29', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_Usuario` int(11) NOT NULL,
  `Nombres` varchar(80) NOT NULL,
  `Apellidos` varchar(80) NOT NULL,
  `Correo` varchar(150) NOT NULL,
  `Contrasena` varchar(150) NOT NULL,
  `Token` varchar(50) NOT NULL,
  `id_Rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_Usuario`, `Nombres`, `Apellidos`, `Correo`, `Contrasena`, `Token`, `id_Rol`) VALUES
(2, 'Admin', 'Admin', 'admin@admin.com', 'e32f53597fa0afc5afa07fd629314774', '', 1),
(33, 'Prueba', 'Prueba', 'prueba@prueba.com', 'e64b78fc3bc91bcbc7dc232ba8ec59e0', '', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ambiente`
--
ALTER TABLE `ambiente`
  ADD PRIMARY KEY (`id_Ambiente`);

--
-- Indices de la tabla `competencia`
--
ALTER TABLE `competencia`
  ADD PRIMARY KEY (`id_Competencia`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`id_Ficha`),
  ADD KEY `id_Programa` (`id_Programa`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_Horario`),
  ADD KEY `id_Ambiente` (`id_Ambiente`),
  ADD KEY `id_Competencia` (`id_Competencia`),
  ADD KEY `id_Instructor` (`id_Instructor`),
  ADD KEY `id_Trimestre` (`id_Trimestre`),
  ADD KEY `id_Usuario` (`id_Usuario`);

--
-- Indices de la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`id_Instructor`),
  ADD KEY `id_TipoContrato` (`id_TipoContrato`);

--
-- Indices de la tabla `programa_formacion`
--
ALTER TABLE `programa_formacion`
  ADD PRIMARY KEY (`id_Programa`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_Rol`);

--
-- Indices de la tabla `tipocontrato`
--
ALTER TABLE `tipocontrato`
  ADD PRIMARY KEY (`id_TipoContrato`);

--
-- Indices de la tabla `trazabilidad`
--
ALTER TABLE `trazabilidad`
  ADD PRIMARY KEY (`id_Trazabilidad`),
  ADD KEY `id_Usuario` (`id_Usuario`),
  ADD KEY `id_Ambiente` (`id_Ambiente`),
  ADD KEY `id_Competencia` (`id_Competencia`),
  ADD KEY `id_Trimestre` (`id_Trimestre`),
  ADD KEY `id_Instructor` (`id_Instructor`);

--
-- Indices de la tabla `trimestre`
--
ALTER TABLE `trimestre`
  ADD PRIMARY KEY (`id_Trimestre`),
  ADD KEY `id_Ficha` (`id_Ficha`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_Usuario`),
  ADD KEY `id_Rol` (`id_Rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ambiente`
--
ALTER TABLE `ambiente`
  MODIFY `id_Ambiente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `competencia`
--
ALTER TABLE `competencia`
  MODIFY `id_Competencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ficha`
--
ALTER TABLE `ficha`
  MODIFY `id_Ficha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id_Horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT de la tabla `instructor`
--
ALTER TABLE `instructor`
  MODIFY `id_Instructor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `programa_formacion`
--
ALTER TABLE `programa_formacion`
  MODIFY `id_Programa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_Rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipocontrato`
--
ALTER TABLE `tipocontrato`
  MODIFY `id_TipoContrato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `trazabilidad`
--
ALTER TABLE `trazabilidad`
  MODIFY `id_Trazabilidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `trimestre`
--
ALTER TABLE `trimestre`
  MODIFY `id_Trimestre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`id_Programa`) REFERENCES `programa_formacion` (`id_Programa`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`id_Ambiente`) REFERENCES `ambiente` (`id_Ambiente`),
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`id_Competencia`) REFERENCES `competencia` (`id_Competencia`),
  ADD CONSTRAINT `horario_ibfk_3` FOREIGN KEY (`id_Instructor`) REFERENCES `instructor` (`id_Instructor`),
  ADD CONSTRAINT `horario_ibfk_4` FOREIGN KEY (`id_Trimestre`) REFERENCES `trimestre` (`id_Trimestre`),
  ADD CONSTRAINT `horario_ibfk_5` FOREIGN KEY (`id_Usuario`) REFERENCES `usuario` (`id_Usuario`);

--
-- Filtros para la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`id_TipoContrato`) REFERENCES `tipocontrato` (`id_TipoContrato`);

--
-- Filtros para la tabla `trazabilidad`
--
ALTER TABLE `trazabilidad`
  ADD CONSTRAINT `trazabilidad_ibfk_1` FOREIGN KEY (`id_Usuario`) REFERENCES `usuario` (`id_Usuario`),
  ADD CONSTRAINT `trazabilidad_ibfk_2` FOREIGN KEY (`id_Ambiente`) REFERENCES `ambiente` (`id_Ambiente`),
  ADD CONSTRAINT `trazabilidad_ibfk_3` FOREIGN KEY (`id_Competencia`) REFERENCES `competencia` (`id_Competencia`),
  ADD CONSTRAINT `trazabilidad_ibfk_4` FOREIGN KEY (`id_Trimestre`) REFERENCES `trimestre` (`id_Trimestre`),
  ADD CONSTRAINT `trazabilidad_ibfk_5` FOREIGN KEY (`id_Instructor`) REFERENCES `instructor` (`id_Instructor`);

--
-- Filtros para la tabla `trimestre`
--
ALTER TABLE `trimestre`
  ADD CONSTRAINT `trimestre_ibfk_2` FOREIGN KEY (`id_Ficha`) REFERENCES `ficha` (`id_Ficha`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_Rol`) REFERENCES `rol` (`id_Rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
