-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-12-2022 a las 11:47:54
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_active` int(11) NOT NULL DEFAULT 0,
  `brand_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_active`, `brand_status`) VALUES
(1, 'Cipla', 1, 1),
(2, 'Mankind', 1, 1),
(3, 'Sunpharma', 1, 1),
(4, 'MicroLabs', 1, 1),
(5, 'Pfizer', 1, 1),
(6, 'arroz', 1, 1),
(7, 'saltado', 2, 2),
(8, 'saltado', 2, 1),
(9, 'saltado', 1, 1),
(10, 'edgAR', 1, 1),
(11, 'fray', 1, 1),
(12, 'kana', 1, 1),
(13, 'RODRI', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_active` int(11) NOT NULL DEFAULT 0,
  `categories_status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_active`, `categories_status`) VALUES
(1, 'Pastillas', 1, 2),
(2, 'Jarabe', 1, 2),
(3, 'Inyecciones', 1, 2),
(4, 'Paliativos', 1, 2),
(5, 'Vacunas', 1, 2),
(6, 'jarabes', 1, 2),
(7, 'almuerzo', 1, 2),
(8, 'desayuno', 1, 2),
(9, 'almuerzo', 1, 2),
(10, 'SOPA', 1, 2),
(11, 'almuerzo', 1, 2),
(12, 'SoloSopa', 1, 1),
(13, 'SoloSegundo', 1, 1),
(14, 'almuerzo', 1, 2),
(15, 'AlmuezoComplet', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(15) NOT NULL,
  `uno` varchar(50) NOT NULL,
  `orderDate` date NOT NULL,
  `clientName` text NOT NULL,
  `projectName` varchar(30) NOT NULL,
  `clientContact` int(15) NOT NULL,
  `address` varchar(30) NOT NULL,
  `subTotal` int(100) NOT NULL,
  `totalAmount` int(100) NOT NULL,
  `discount` int(100) NOT NULL,
  `grandTotalValue` int(100) NOT NULL,
  `gstn` int(100) NOT NULL,
  `paid` int(100) NOT NULL,
  `dueValue` int(100) NOT NULL,
  `paymentType` int(15) NOT NULL,
  `paymentStatus` int(15) NOT NULL,
  `paymentPlace` int(5) NOT NULL,
  `delete_status` tinyint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `uno`, `orderDate`, `clientName`, `projectName`, `clientContact`, `address`, `subTotal`, `totalAmount`, `discount`, `grandTotalValue`, `gstn`, `paid`, `dueValue`, `paymentType`, `paymentStatus`, `paymentPlace`, `delete_status`) VALUES
(21, 'INV-00021', '2022-12-20', 'SIMON', '', 1234567899, '', 7, 8, 0, 8, 1, 8, 0, 2, 1, 1, 0),
(22, 'INV-00022', '2022-12-21', 'LEONARDA', '', 1234567899, '', 5, 6, 0, 6, 1, 6, 0, 2, 2, 1, 0),
(24, 'INV-00023', '2022-12-21', 'rodrigo', '', 1234567891, '', 19, 22, 5, 17, 3, 20, -3, 2, 1, 1, 0),
(25, 'INV-00025', '2022-12-21', 'fray', '', 1234567899, '', 10, 12, 0, 12, 2, 12, 0, 2, 1, 1, 0),
(26, 'INV-00026', '2022-12-21', 'monica', '', 1234567898, '', 5, 6, 0, 6, 1, 6, 0, 2, 1, 1, 0),
(27, 'INV-00027', '2022-12-21', 'olger', '', 1234567898, '', 10, 12, 0, 12, 2, 12, 0, 2, 1, 1, 0),
(29, 'INV-00028', '2022-12-21', 'edgar', '', 1234567788, '', 12, 14, 0, 14, 2, 14, 0, 2, 1, 1, 0),
(30, 'INV-00030', '2022-12-21', 'alex', '', 1234567898, '', 7, 8, 0, 8, 1, 8, 0, 2, 1, 2, 0),
(31, 'INV-00031', '2022-12-21', 'alex', '', 1234567894, '', 7, 8, 0, 8, 1, 8, 0, 2, 1, 1, 0),
(32, 'INV-00032', '2022-12-21', 'edgar', '', 1234567896, '', 5, 6, 0, 6, 1, 6, 0, 2, 1, 1, 0),
(33, 'INV-00033', '2022-12-21', 'pedrito', '', 1234567896, '', 10, 12, 0, 12, 0, 12, 0, 2, 1, 1, 0),
(34, 'INV-00034', '2022-12-21', 'fray', '', 1234567897, '', 12, 12, 0, 12, 0, 12, 0, 4, 1, 1, 0),
(35, 'INV-00035', '2022-12-21', 'fr', '', 1234567897, '', 5, 5, 0, 5, 0, 5, 0, 2, 1, 1, 0),
(36, 'INV-00036', '2022-12-21', 'yerson', '', 1234567898, '', 17, 17, 0, 17, 0, 17, 0, 2, 1, 1, 0),
(37, 'INV-00037', '2022-12-21', 'fray', '', 1234567897, '', 17, 17, 0, 17, 0, 5, 12, 2, 1, 1, 0),
(38, 'INV-00038', '2022-12-22', 'OLGER', '', 1234567899, '', 17, 17, 7, 10, 0, 10, 0, 2, 1, 1, 0),
(39, 'INV-00039', '2022-12-22', 'fray', '', 123456789, '', 7, 7, 0, 7, 0, 7, 0, 2, 1, 1, 0),
(40, 'INV-00040', '2022-12-22', 'rosita', '', 912345455, '', 7, 7, 0, 7, 0, 7, 0, 2, 1, 1, 0),
(41, 'INV-00041', '2022-12-22', 'fray', '', 999999999, '', 14, 0, 14, 14, 0, 0, 0, 1, 1, 0, 0),
(42, 'INV-00042', '2022-12-22', 'yaneli', '', 923123456, '', 10, 10, 0, 10, 0, 10, 0, 2, 1, 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_item`
--

CREATE TABLE `order_item` (
  `id` int(15) NOT NULL,
  `productName` int(100) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `lastid` int(50) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `order_item`
--

INSERT INTO `order_item` (`id`, `productName`, `quantity`, `rate`, `total`, `lastid`, `added_date`) VALUES
(5, 2, '1', '100', '100.00', 1, '0000-00-00'),
(7, 1, '2', '30', '60.00', 3, '2022-04-15'),
(8, 2, '4', '150', '600.00', 3, '2022-04-15'),
(9, 3, '1', '200', '200.00', 3, '2022-04-15'),
(13, 2, '2', '150', '300.00', 2, '2022-04-15'),
(14, 3, '1', '200', '200.00', 5, '2022-05-01'),
(15, 5, '1', '250', '250.00', 6, '2022-05-01'),
(16, 5, '1', '250', '250.00', 7, '2022-05-03'),
(17, 6, '2', '5', '10.00', 4, '0000-00-00'),
(21, 4, '1', '25', '25.00', 8, '0000-00-00'),
(22, 6, '2', '5', '5.00', 9, '2022-12-17'),
(24, 6, '2', '5', '10.00', 10, '2022-12-18'),
(25, 6, '3', '5', '15.00', 10, '2022-12-18'),
(26, 7, '2', '7', '7.00', 11, '2022-12-19'),
(27, 6, '1', '5', '5.00', 11, '2022-12-19'),
(29, 6, '2', '5', '5.00', 12, '2022-12-19'),
(30, 7, '50', '7', '350.00', 12, '2022-12-19'),
(31, 1, '2', '30', '60.00', 13, '2022-12-19'),
(32, 6, '2', '5', '10.00', 14, '2022-12-19'),
(33, 9, '1', '7', '7.00', 17, '2022-12-20'),
(34, 7, '1', '7', '7.00', 18, '2022-12-20'),
(35, 6, '2', '5', '10.00', 19, '2022-12-20'),
(36, 6, '1', '5', '5.00', 20, '2022-12-20'),
(37, 9, '1', '7', '7.00', 21, '2022-12-20'),
(38, 8, '1', '5', '5.00', 22, '2022-12-21'),
(39, 6, '2', '5', '10.00', 23, '2022-12-21'),
(40, 7, '2', '7', '14.00', 24, '2022-12-21'),
(41, 6, '1', '5', '5.00', 24, '2022-12-21'),
(42, 6, '1', '5', '5.00', 25, '2022-12-21'),
(43, 6, '1', '5', '5.00', 25, '2022-12-21'),
(44, 6, '1', '5', '5.00', 26, '2022-12-21'),
(45, 8, '1', '5', '5.00', 27, '2022-12-21'),
(46, 8, '1', '5', '5.00', 27, '2022-12-21'),
(47, 6, '2', '5', '10.00', 28, '2022-12-21'),
(48, 6, '1', '5', '5.00', 29, '2022-12-21'),
(49, 7, '1', '7', '7.00', 29, '2022-12-21'),
(50, 7, '1', '7', '7.00', 30, '2022-12-21'),
(51, 7, '1', '7', '7.00', 31, '2022-12-21'),
(52, 6, '1', '5', '5.00', 32, '2022-12-21'),
(53, 6, '1', '5', '5.00', 33, '2022-12-21'),
(54, 8, '1', '5', '5.00', 33, '2022-12-21'),
(55, 7, '1', '7', '7.00', 34, '2022-12-21'),
(56, 6, '1', '5', '5.00', 34, '2022-12-21'),
(57, 6, '1', '5', '5.00', 35, '2022-12-21'),
(58, 6, '1', '5', '5.00', 36, '2022-12-21'),
(59, 6, '1', '5', '5.00', 36, '2022-12-21'),
(60, 7, '1', '7', '7.00', 36, '2022-12-21'),
(61, 6, '1', '5', '5.00', 37, '2022-12-21'),
(62, 6, '1', '5', '5.00', 37, '2022-12-21'),
(63, 7, '1', '7', '7.00', 37, '2022-12-21'),
(64, 6, '1', '5', '5.00', 38, '2022-12-22'),
(65, 7, '1', '7', '7.00', 38, '2022-12-22'),
(66, 8, '1', '5', '5.00', 38, '2022-12-22'),
(67, 7, '1', '7', '7.00', 39, '2022-12-22'),
(68, 7, '1', '7', '7.00', 40, '2022-12-22'),
(76, 7, '1', '7', '7.00', 41, '0000-00-00'),
(77, 7, '1', '7', '7.00', 41, '0000-00-00'),
(78, 8, '1', '5', '5.00', 42, '2022-12-22'),
(79, 8, '1', '5', '5.00', 42, '2022-12-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `brand_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `mrp` int(100) NOT NULL,
  `bno` varchar(50) NOT NULL,
  `expdate` date NOT NULL,
  `added_date` date NOT NULL,
  `active` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `brand_id`, `categories_id`, `quantity`, `rate`, `mrp`, `bno`, `expdate`, `added_date`, `active`, `status`) VALUES
(1, 'Acetaminofen 500', 'tab.jpg', 1, 1, '50', '30', 40, '307002', '2045-02-28', '2022-02-28', 2, 2),
(2, 'Fronta 23', 'tab1.jpg', 2, 1, '30', '150', 200, '307003', '2022-02-16', '2022-02-28', 2, 2),
(3, 'Rapazol 120', 'tab3.jpg', 3, 3, '70', '200', 300, '307004', '2024-03-13', '2022-02-28', 2, 2),
(4, 'Escripvo 450', 'tab4.jpg', 4, 1, '501', '25', 30, '307005', '2050-05-31', '2022-04-15', 2, 2),
(5, 'Vacuna 123', 'vacuna pfizer.webp', 5, 5, '2500', '250', 254, '171712', '2031-06-18', '2022-05-01', 2, 2),
(6, 'chaufa', 'chaufa.jfif', 2, 12, '15', '5', 2, '123', '2022-12-17', '2022-12-17', 2, 2),
(7, 'mariscos', 'marissc.jpg', 10, 9, '50', '7', 11, '147', '2022-12-19', '2022-12-19', 1, 1),
(8, 'arros con hevo', 'huevo.png', 10, 9, '52', '5', 0, '312', '2022-12-19', '2022-12-19', 1, 1),
(9, 'caldo de gallina', 'caldo de gallina.jfif', 11, 10, '50', '7', 0, '1231', '2022-12-20', '2022-12-20', 1, 1),
(10, 'pastelPapa', 'papa.jpeg', 11, 13, '9', '10', 0, '232', '2022-12-21', '2022-12-22', 1, 1),
(11, 'mariscos', 'mariscos.jfif', 1, 15, '50', '10', 0, '123', '2022-12-21', '2022-12-22', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'ColegioCTA', '5f3ba3e22380ac07214f7f2d8163d6ba', 'colegiocta@gmail.com'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
