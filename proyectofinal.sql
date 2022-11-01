-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-11-2022 a las 18:33:00
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectofinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes`
--

CREATE TABLE `almacenes` (
  `id_almacen` int(11) NOT NULL,
  `id_tipo_almacen` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `almacenes`
--

INSERT INTO `almacenes` (`id_almacen`, `id_tipo_almacen`, `nombre`, `direccion`, `telefono`, `email`) VALUES
(1, 1, 'zona 1', '20 calle 18-20 zona 1', '37325465', NULL),
(2, 2, 'zona 10', '30 calle 16-74 zona 10', '37325467', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `nit` varchar(15) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellido`, `nit`, `direccion`, `telefono`) VALUES
(1, 'roberto', 'Marroquin', '30076277', '30 calle 16-74 zona 3', '13246548');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `correlativo` int(11) NOT NULL,
  `id_inventario` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `id_venta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`correlativo`, `id_inventario`, `cantidad`, `precio`, `id_venta`) VALUES
(1, 1, 50, '2.50', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventarios`
--

CREATE TABLE `inventarios` (
  `id_inventario` int(11) NOT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  `cantidad_existencia` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventarios`
--

INSERT INTO `inventarios` (`id_inventario`, `id_producto`, `id_almacen`, `cantidad_existencia`, `fecha`, `precio`) VALUES
(1, 1, 1, 50, '2022-10-15', NULL),
(2, 2, 1, 20, '2022-10-25', NULL),
(3, 1, 1, 25, '2022-10-26', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `id_tipo_producto` int(11) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `precio_unidad` decimal(10,2) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `id_tipo_producto`, `descripcion`, `precio_unidad`, `nombre`) VALUES
(1, 1, 'Región VIII', '50.00', 'nike'),
(2, 2, 'talla 20', '25.35', 'SrDisney');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_almacenes`
--

CREATE TABLE `tipos_almacenes` (
  `id_tipo_almacen` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos_almacenes`
--

INSERT INTO `tipos_almacenes` (`id_tipo_almacen`, `nombre`) VALUES
(1, 'Bodega'),
(2, 'Tienda');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_productos`
--

CREATE TABLE `tipos_productos` (
  `id_tipo_producto` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos_productos`
--

INSERT INTO `tipos_productos` (`id_tipo_producto`, `nombre`) VALUES
(1, 'Zapatos'),
(2, 'Playeras'),
(3, 'Pantalones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_usuarios`
--

CREATE TABLE `tipos_usuarios` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nombre` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipos_usuarios`
--

INSERT INTO `tipos_usuarios` (`id_tipo_usuario`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Trabajador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traslado`
--

CREATE TABLE `traslado` (
  `id_traslado` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `id_inventario` int(11) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `traslado`
--

INSERT INTO `traslado` (`id_traslado`, `fecha`, `id_inventario`, `id_almacen`, `cantidad`, `id_usuario`) VALUES
(1, '2022-10-15', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `dpi` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `id_tipo_usuario` int(11) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `celular`, `dpi`, `email`, `contrasena`, `id_tipo_usuario`, `id_almacen`) VALUES
(1, 'anibal', 'marroquin', '37369525', '100746549680', 'anibal27marroquin@gmail.com', '1234', 1, 1),
(2, 'romeo', 'marroquin', '54354684', '3002716970101', 'romeo27marroquin@gmail.com', '8046', 2, 1),
(3, 'raul', 'alvarado', '30654987651', '302215489441', 'raul@gmail.com', '8046', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `no_factura` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `id_cliente`, `id_usuario`, `fecha`, `no_factura`) VALUES
(1, 1, 1, '2022-10-16', '123');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_almacenes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_almacenes` (
`id_almacen` int(11)
,`tipo_almacen` varchar(25)
,`nombre` varchar(50)
,`direccion` varchar(50)
,`telefono` varchar(15)
,`email` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_inventarios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_inventarios` (
`id_inventario` int(11)
,`nombre_producto` varchar(50)
,`nombre_almacen` varchar(50)
,`cantidad_existencia` int(11)
,`fecha` date
,`precio` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_productos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_productos` (
`id_producto` int(11)
,`tipo_producto` varchar(25)
,`nombre` varchar(50)
,`descripcion` varchar(50)
,`precio_unidad` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_traslado`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_traslado` (
`id_traslado` int(11)
,`fecha` date
,`id_inventario` int(11)
,`nombre_almacen` varchar(50)
,`cantidad` int(11)
,`nombre_usuario` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_usuarios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_usuarios` (
`id_usuario` int(11)
,`nombre` varchar(50)
,`apellido` varchar(50)
,`celular` varchar(15)
,`dpi` varchar(15)
,`email` varchar(50)
,`contrasena` varchar(50)
,`id_tipo_usuario` int(11)
,`id_almacen` int(11)
,`tipo_usuario` varchar(25)
,`nombre_almacen` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vw_venta`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vw_venta` (
`id_venta` int(11)
,`nombre_cliente` varchar(50)
,`nombre_usuario` varchar(50)
,`fecha` date
,`no_factura` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_almacenes`
--
DROP TABLE IF EXISTS `vw_almacenes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_almacenes`  AS   (select `almacenes`.`id_almacen` AS `id_almacen`,`tipos_almacenes`.`nombre` AS `tipo_almacen`,`almacenes`.`nombre` AS `nombre`,`almacenes`.`direccion` AS `direccion`,`almacenes`.`telefono` AS `telefono`,`almacenes`.`email` AS `email` from (`almacenes` join `tipos_almacenes` on(`almacenes`.`id_tipo_almacen` = `tipos_almacenes`.`id_tipo_almacen`)))  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_inventarios`
--
DROP TABLE IF EXISTS `vw_inventarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_inventarios`  AS   (select `inventarios`.`id_inventario` AS `id_inventario`,`productos`.`nombre` AS `nombre_producto`,`almacenes`.`nombre` AS `nombre_almacen`,`inventarios`.`cantidad_existencia` AS `cantidad_existencia`,`inventarios`.`fecha` AS `fecha`,`inventarios`.`precio` AS `precio` from ((`inventarios` join `productos` on(`inventarios`.`id_producto` = `productos`.`id_producto`)) join `almacenes` on(`inventarios`.`id_almacen` = `almacenes`.`id_almacen`)))  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_productos`
--
DROP TABLE IF EXISTS `vw_productos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_productos`  AS   (select `productos`.`id_producto` AS `id_producto`,`tipos_productos`.`nombre` AS `tipo_producto`,`productos`.`nombre` AS `nombre`,`productos`.`descripcion` AS `descripcion`,`productos`.`precio_unidad` AS `precio_unidad` from (`productos` join `tipos_productos` on(`productos`.`id_tipo_producto` = `tipos_productos`.`id_tipo_producto`)))  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_traslado`
--
DROP TABLE IF EXISTS `vw_traslado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_traslado`  AS   (select `traslado`.`id_traslado` AS `id_traslado`,`traslado`.`fecha` AS `fecha`,`traslado`.`id_inventario` AS `id_inventario`,`almacenes`.`nombre` AS `nombre_almacen`,`traslado`.`cantidad` AS `cantidad`,`usuarios`.`nombre` AS `nombre_usuario` from ((`traslado` join `almacenes` on(`traslado`.`id_almacen` = `almacenes`.`id_almacen`)) join `usuarios` on(`traslado`.`id_usuario` = `usuarios`.`id_usuario`)))  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_usuarios`
--
DROP TABLE IF EXISTS `vw_usuarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_usuarios`  AS   (select `usuarios`.`id_usuario` AS `id_usuario`,`usuarios`.`nombre` AS `nombre`,`usuarios`.`apellido` AS `apellido`,`usuarios`.`celular` AS `celular`,`usuarios`.`dpi` AS `dpi`,`usuarios`.`email` AS `email`,`usuarios`.`contrasena` AS `contrasena`,`usuarios`.`id_tipo_usuario` AS `id_tipo_usuario`,`usuarios`.`id_almacen` AS `id_almacen`,`tipos_usuarios`.`nombre` AS `tipo_usuario`,`almacenes`.`nombre` AS `nombre_almacen` from ((`usuarios` join `tipos_usuarios` on(`usuarios`.`id_tipo_usuario` = `tipos_usuarios`.`id_tipo_usuario`)) join `almacenes` on(`almacenes`.`id_almacen` = `usuarios`.`id_almacen`)))  ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vw_venta`
--
DROP TABLE IF EXISTS `vw_venta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_venta`  AS   (select `venta`.`id_venta` AS `id_venta`,`clientes`.`nombre` AS `nombre_cliente`,`usuarios`.`nombre` AS `nombre_usuario`,`venta`.`fecha` AS `fecha`,`venta`.`no_factura` AS `no_factura` from ((`venta` join `clientes` on(`venta`.`id_cliente` = `clientes`.`id_cliente`)) join `usuarios` on(`venta`.`id_usuario` = `usuarios`.`id_usuario`)))  ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  ADD PRIMARY KEY (`id_almacen`),
  ADD KEY `id_tipo_almacen` (`id_tipo_almacen`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`correlativo`),
  ADD KEY `id_inventario` (`id_inventario`),
  ADD KEY `id_venta` (`id_venta`);

--
-- Indices de la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`id_inventario`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_almacen` (`id_almacen`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_tipo_producto` (`id_tipo_producto`);

--
-- Indices de la tabla `tipos_almacenes`
--
ALTER TABLE `tipos_almacenes`
  ADD PRIMARY KEY (`id_tipo_almacen`);

--
-- Indices de la tabla `tipos_productos`
--
ALTER TABLE `tipos_productos`
  ADD PRIMARY KEY (`id_tipo_producto`);

--
-- Indices de la tabla `tipos_usuarios`
--
ALTER TABLE `tipos_usuarios`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indices de la tabla `traslado`
--
ALTER TABLE `traslado`
  ADD PRIMARY KEY (`id_traslado`),
  ADD KEY `id_inventario` (`id_inventario`),
  ADD KEY `id_almacen` (`id_almacen`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_tipo_usuario` (`id_tipo_usuario`),
  ADD KEY `id_almacen` (`id_almacen`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `almacenes`
--
ALTER TABLE `almacenes`
  ADD CONSTRAINT `almacenes_ibfk_1` FOREIGN KEY (`id_tipo_almacen`) REFERENCES `tipos_almacenes` (`id_tipo_almacen`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_inventario`) REFERENCES `inventarios` (`id_inventario`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`);

--
-- Filtros para la tabla `inventarios`
--
ALTER TABLE `inventarios`
  ADD CONSTRAINT `inventarios_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `inventarios_ibfk_2` FOREIGN KEY (`id_almacen`) REFERENCES `almacenes` (`id_almacen`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_tipo_producto`) REFERENCES `tipos_productos` (`id_tipo_producto`);

--
-- Filtros para la tabla `traslado`
--
ALTER TABLE `traslado`
  ADD CONSTRAINT `traslado_ibfk_1` FOREIGN KEY (`id_inventario`) REFERENCES `inventarios` (`id_inventario`),
  ADD CONSTRAINT `traslado_ibfk_2` FOREIGN KEY (`id_almacen`) REFERENCES `almacenes` (`id_almacen`),
  ADD CONSTRAINT `traslado_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_tipo_usuario`) REFERENCES `tipos_usuarios` (`id_tipo_usuario`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`id_almacen`) REFERENCES `almacenes` (`id_almacen`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
