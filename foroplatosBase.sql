-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql-db
-- Tiempo de generación: 25-11-2024 a las 20:58:32
-- Versión del servidor: 8.0.39
-- Versión de PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `foroplatos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Comentario`
--

CREATE TABLE `Comentario` (
  `id` int UNSIGNED NOT NULL,
  `id_receta` int UNSIGNED DEFAULT NULL,
  `id_usuario` int UNSIGNED DEFAULT NULL,
  `id_comentario_respuesta` int UNSIGNED DEFAULT NULL,
  `texto` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_creacion` date NOT NULL,
  `valoracion` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Comentario`
--

INSERT INTO `Comentario` (`id`, `id_receta`, `id_usuario`, `id_comentario_respuesta`, `texto`, `fecha_creacion`, `valoracion`) VALUES
(110, 68, 115, NULL, 'Buenisimas me encantaron !!', '2024-11-24', 5),
(111, 69, 115, NULL, 'Tanto aceite los deja aceitosos !!', '2024-11-24', 2),
(112, 71, 115, NULL, 'Demasiado pimiento quita la esencia', '2024-11-24', 1),
(113, 68, 115, 110, 'Pues a mi no me salen', '2024-11-24', NULL),
(114, 68, 115, NULL, 'me quedaron mal pero sera mi culpa', '2024-11-24', 4),
(115, 68, 116, NULL, '¡Está buenísimo boludo!', '2024-11-24', 5),
(116, 68, 116, 114, 'seguramente', '2024-11-24', NULL),
(117, 69, 116, NULL, 'perfectos', '2024-11-24', 5),
(118, 78, 77, NULL, 'espectaxular \r\n', '2024-11-24', 5),
(119, 74, NULL, NULL, 'MUY BUENO', '2024-11-25', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ingrediente`
--

CREATE TABLE `Ingrediente` (
  `id` int UNSIGNED NOT NULL,
  `nombre` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Ingrediente`
--

INSERT INTO `Ingrediente` (`id`, `nombre`) VALUES
(1, 'Aceite de oliva'),
(2, 'Sal'),
(3, 'Pimienta negra'),
(4, 'Ajo'),
(5, 'Cebolla'),
(6, 'Tomate'),
(7, 'Pimiento rojo'),
(8, 'Pimiento verde'),
(9, 'Patatas'),
(10, 'Zanahoria'),
(11, 'Apio'),
(12, 'Laurel'),
(13, 'Perejil'),
(14, 'Albahaca'),
(15, 'Oregano'),
(16, 'Pimentón'),
(17, 'Azúcar'),
(18, 'Harina de trigo'),
(19, 'Huevos'),
(20, 'Leche'),
(21, 'romero'),
(22, 'macarron'),
(23, 'asdfff'),
(24, 'aceite'),
(25, 'vinagre'),
(26, 'espaguettis'),
(27, 'lechuga'),
(28, 'jamon'),
(29, 'pan rayado'),
(30, 'harina'),
(31, 'tomate frito'),
(32, 'carne picada'),
(33, 'KECHUP'),
(34, 'carne ternera'),
(35, 'carne pollo'),
(36, 'tocino'),
(37, 'pepino'),
(38, 'Coquinas'),
(39, 'Langostinos'),
(40, 'Garbanzos'),
(41, 'platano macho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Ingrediente_receta`
--

CREATE TABLE `Ingrediente_receta` (
  `id` int UNSIGNED NOT NULL,
  `id_ingrediente` int UNSIGNED DEFAULT NULL,
  `id_receta` int UNSIGNED DEFAULT NULL,
  `cantidad` int NOT NULL,
  `unidad_medida` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Ingrediente_receta`
--

INSERT INTO `Ingrediente_receta` (`id`, `id_ingrediente`, `id_receta`, `cantidad`, `unidad_medida`) VALUES
(60, 1, 68, 10, 'mililitros'),
(61, 2, 68, 2, 'gramos'),
(62, 9, 68, 50, 'gramos'),
(63, 1, 69, 12, 'mililitros'),
(64, 2, 69, 4, 'gramos'),
(65, 3, 69, 1, 'gramos'),
(66, 26, 69, 200, 'gramos'),
(67, 1, 71, 12, 'gramos'),
(68, 3, 71, 55, 'gramos'),
(69, 6, 71, 6, 'gramos'),
(70, 8, 71, 54, 'gramos'),
(71, 1, 73, 1, 'mililitros'),
(72, 2, 73, 2, 'gramos'),
(73, 4, 73, 3, 'gramos'),
(74, 38, 73, 250, 'gramos'),
(75, 34, 74, 400, 'gramos'),
(76, 1, 75, 5, 'mililitros'),
(77, 2, 75, 5, 'gramos'),
(78, 39, 75, 300, 'gramos'),
(79, 1, 76, 2, 'mililitros'),
(80, 2, 76, 3, 'mililitros'),
(81, 40, 76, 200, 'gramos'),
(82, 31, 77, 1, 'gramos'),
(83, 32, 77, 1, 'gramos'),
(84, 34, 77, 1, 'mililitros'),
(85, 24, 78, 10, 'mililitros'),
(86, 41, 78, 200, 'gramos'),
(87, 2, 78, 20, 'gramos'),
(88, 4, 78, 10, 'gramos'),
(89, 11, 78, 5, 'gramos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Receta`
--

CREATE TABLE `Receta` (
  `id` int UNSIGNED NOT NULL,
  `id_usuario` int UNSIGNED DEFAULT NULL,
  `nombre_receta` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `dificultad` enum('facil','medio','dificil','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_receta` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '../Imagenes/default.jpg',
  `valoracion_media` int DEFAULT NULL,
  `tipo` enum('Receta Tradicional','Receta SlowFood','Receta Freidora sin aceite','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Receta`
--

INSERT INTO `Receta` (`id`, `id_usuario`, `nombre_receta`, `fecha_creacion`, `fecha_actualizacion`, `dificultad`, `foto_receta`, `valoracion_media`, `tipo`, `descripcion`) VALUES
(68, 112, 'Croquetas de jamon', '2024-11-24', NULL, 'facil', '../Imagenes/DavizLuiz6croquetas.jpg', NULL, 'Receta Tradicional', 'Para preparar croquetas, empieza cocinando una bechamel espesa mezclando mantequilla, harina y leche, luego añade el ingrediente principal (como pollo, jamón o setas) bien picado. Cocina hasta que la mezcla esté homogénea, deja enfriar y refrigérala para que tome consistencia. Forma las croquetas con las manos, pásalas por harina, huevo batido y pan rallado, y fríelas en aceite caliente hasta que estén doradas. Escúrrelas sobre papel absorbente y sírvelas calientes. ¡Disfruta!'),
(69, 112, 'Espaguettis carbonara', '2024-11-24', NULL, 'medio', '../Imagenes/DavizLuiz6espaguetti.jpg', NULL, 'Receta Tradicional', 'Para preparar espaguetis, hierve agua con sal en una olla grande y cocina los espaguetis según las instrucciones del paquete hasta que estén al dente. Mientras tanto, prepara la salsa que prefieras, como una boloñesa, carbonara, o una sencilla de tomate y ajo. Escurre los espaguetis y mézclalos con la salsa caliente. Sirve inmediatamente con un poco de queso rallado o hierbas frescas al gusto. ¡Listo para disfrutar!'),
(71, 113, 'Ensalada Cesar con pepino', '2024-11-24', NULL, 'facil', '../Imagenes/JuliaFogonesensalada.png', NULL, 'Receta SlowFood', '\r\nPara preparar una ensalada, lava y corta tus ingredientes frescos como lechuga, tomate, pepino y zanahoria. Colócalos en un bol grande y añade complementos como queso, frutos secos o crutones. Aliña con una mezcla de aceite de oliva, vinagre, sal y pimienta al gusto. Mezcla bien y sirve inmediatamente. ¡Disfruta una opción saludable y refrescante!'),
(73, 113, 'Coquinas', '2024-11-24', NULL, 'facil', '../Imagenes/JuliaFogonesPAELLA.jpg', NULL, 'Receta SlowFood', '\r\nPara preparar coquinas, primero lávalas bien sumergiéndolas en agua con sal durante al menos una hora para que suelten la arena. En una sartén grande, calienta un poco de aceite de oliva y sofríe ajo picado y perejil fresco. Añade las coquinas escurridas, un poco de vino blanco, y cocina a fuego medio con la tapa puesta hasta que se abran (unos 2-3 minutos). Remueve ocasionalmente y sirve calientes con un toque de limón. ¡Perfectas para disfrutar con pan!'),
(74, 114, 'Chuleton', '2024-11-24', NULL, 'medio', '../Imagenes/Juanjoselitochuleton.jpg', NULL, 'Receta Tradicional', '\r\nPara preparar un chuletón perfecto, saca la carne del frigorífico al menos 1 hora antes para que esté a temperatura ambiente. Calienta una parrilla o sartén a fuego muy alto hasta que esté bien caliente. Sazona el chuletón con sal gruesa justo antes de colocarlo en la parrilla. Cocina unos 3-5 minutos por cada lado para un punto medio, o ajusta según tu preferencia. Deja reposar la carne 5 minutos antes de servir para que los jugos se redistribuyan. Añade un toque de pimienta recién molida y disfruta acompañado de guarniciones como patatas o ensalada. ¡Un festín delicioso!'),
(75, 114, 'Langostinos', '2024-11-24', NULL, 'medio', '../Imagenes/Juanjoselitolangostinos.jpg', NULL, 'Receta Freidora sin aceite', 'langostinos\r\nChatGPT Plus\r\nChatGPT\r\nPara preparar langostinos, comienza limpiándolos si es necesario (puedes dejarlos con o sin cáscara según prefieras). En una sartén grande, calienta un poco de aceite de oliva con ajo picado y, si te gusta, una guindilla para darles un toque picante. Añade los langostinos y cocínalos a fuego medio-alto durante 2-3 minutos por cada lado, hasta que estén rosados y bien hechos. Espolvorea perejil fresco picado y un poco de sal al gusto. Sirve calientes con un chorrito de limón y disfruta de su sabor delicioso y jugoso. ¡Perfectos como entrante o acompañamiento!'),
(76, 115, 'Garbanzos', '2024-11-24', NULL, 'dificil', '../Imagenes/MariaReciogarbanzos.jpg', NULL, 'Receta Freidora sin aceite', '\r\nPara preparar garbanzos, si usas garbanzos secos, déjalos en remojo en agua con sal durante al menos 8 horas (o toda la noche). Luego, escúrrelos y cuécelos en agua con sal y una hoja de laurel durante 1-2 horas, o hasta que estén tiernos. Si usas garbanzos cocidos de bote, simplemente enjuágalos bien. Puedes saltearlos en una sartén con ajo, cebolla, pimentón, y un chorrito de aceite de oliva, o añadirlos a guisos, sopas o ensaladas. Son un ingrediente versátil, nutritivo y delicioso. ¡A disfrutar!'),
(77, 115, 'Arroz con leche', '2024-11-24', NULL, 'dificil', '../Imagenes/MariaRecioarrozConLeche.jpg', NULL, 'Receta Tradicional', '\r\nPara preparar arroz con leche, pon a calentar en una cacerola 1 litro de leche con una rama de canela, la piel de un limón y 100 g de azúcar (ajusta al gusto). Cuando comience a hervir, añade 100 g de arroz de grano corto previamente lavado. Cocina a fuego lento, removiendo constantemente, durante unos 45 minutos o hasta que el arroz esté tierno y la mezcla espese. Retira la rama de canela y la piel de limón, y sirve en recipientes individuales. Puedes espolvorear con canela en polvo para darle el toque final. Sirve frío o templado. ¡Un postre clásico y delicioso!'),
(78, 115, 'Platano macho', '2024-11-24', '2024-11-24', 'medio', '../Imagenes/MariaRecioplatanomacho.jpg', NULL, 'Receta Tradicional', 'Para preparar plátano macho frito, comienza pelando el plátano macho y cortándolo en rodajas diagonales o en trozos más gruesos (según prefieras). Calienta aceite en una sartén a fuego medio-alto. Fríe los trozos de plátano hasta que estén dorados por ambos lados, luego retíralos y colócalos sobre papel absorbente para eliminar el exceso de aceite. Si prefieres una textura más suave, aplasta ligeramente las rodajas con una espátula y fríelas nuevamente para hacer \"tostones\". Puedes servirlos salados con un poco de sal o dulces, espolvoreados con azúcar y canela. ¡Disfrútalos como acompañamiento o snack!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `id` int UNSIGNED NOT NULL,
  `nombre_usuario` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contrasena` varchar(260) COLLATE utf8mb4_unicode_ci NOT NULL,
  `es_admin` tinyint(1) NOT NULL,
  `correo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experiencia_usuario` enum('principiante','aficionado','profesional','') COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_perfil` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_creacion` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `Usuario`
--

INSERT INTO `Usuario` (`id`, `nombre_usuario`, `nombre`, `apellidos`, `contrasena`, `es_admin`, `correo`, `experiencia_usuario`, `foto_perfil`, `fecha_creacion`) VALUES
(77, 'MYSTERGUILLE', 'Guillermo', 'Rivera', '$2y$10$afH9ygCqg9Dd3Kflg0yHkuXSkycm9I46MYmcCK5Ux9v27fx93royK', 1, 'MYSTERGUILLE@pepe', 'principiante', '673f5ca64d740_arce.jpg', '2024-11-18'),
(112, 'DavizLuiz6', 'David', 'luiz peralta', '$2y$10$zRAbsrjuGK9dkbc7LhaPFe3OrFkaGKs33EKgoILtXIZqmzxcDGQnO', 1, 'DavizLuiz5@DavizLuiz5', 'principiante', 'DavizLuiz5_persona1.jpg', '2024-11-24'),
(113, 'JuliaFogones', 'Julia', 'Sanchez Martinez', '$2y$10$fhcS01gX/xYK4yw7Rs.wR.HxTQmypxaXvw5TOgbF1Z0ZWI9AqXx02', 1, 'JuliaFogones@gmail.com', 'principiante', 'JuliaFogones_persona2.jpg', '2024-11-24'),
(114, 'Juanjoselito', 'Juan Jose', 'Cobarde', '$2y$10$TE.3n/scazN8uNVrSKMdceIt2C/AVc1izZsYSFUXbrrdvCcgN4fyi', 1, 'Juanjoselito@gmail.com', 'principiante', 'Juanjoselito_fotoGacho.jpg', '2024-11-24'),
(115, 'MariaRecio', 'Maria', 'Recio Gutierrez', '$2y$10$QPGQtkTrCiYKXfntEuevtezG0ESxoKS9OjTGLMbtbDnfJFO7GlXju', 1, 'MariaRecio@MariaRecio', 'principiante', 'MariaRecio_fotogachi.jpg', '2024-11-24'),
(116, 'LeoMessi10', 'Leonel', 'Messi', '$2y$10$YhtaxkpG09Vhi.khqmMxwuuv5cZygv1ITUnlyRq4yUOvzPkdAkryq', 1, 'LeoMessi10@hotmail.com', 'principiante', 'LeoMessi10_messi.png', '2024-11-24');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Comentario`
--
ALTER TABLE `Comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk2` (`id_receta`),
  ADD KEY `fk3` (`id_usuario`),
  ADD KEY `fk8` (`id_comentario_respuesta`);

--
-- Indices de la tabla `Ingrediente`
--
ALTER TABLE `Ingrediente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Ingrediente_receta`
--
ALTER TABLE `Ingrediente_receta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk4` (`id_ingrediente`),
  ADD KEY `fk5` (`id_receta`);

--
-- Indices de la tabla `Receta`
--
ALTER TABLE `Receta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1` (`id_usuario`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Comentario`
--
ALTER TABLE `Comentario`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de la tabla `Ingrediente`
--
ALTER TABLE `Ingrediente`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `Ingrediente_receta`
--
ALTER TABLE `Ingrediente_receta`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de la tabla `Receta`
--
ALTER TABLE `Receta`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Comentario`
--
ALTER TABLE `Comentario`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`id_receta`) REFERENCES `Receta` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `fk3` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Filtros para la tabla `Ingrediente_receta`
--
ALTER TABLE `Ingrediente_receta`
  ADD CONSTRAINT `fk4` FOREIGN KEY (`id_ingrediente`) REFERENCES `Ingrediente` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk5` FOREIGN KEY (`id_receta`) REFERENCES `Receta` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Filtros para la tabla `Receta`
--
ALTER TABLE `Receta`
  ADD CONSTRAINT `fk1` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
