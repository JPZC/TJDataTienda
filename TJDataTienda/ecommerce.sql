-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-12-2022 a las 01:21:00
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `nombre`, `email`, `foto`, `password`, `perfil`, `estado`, `fecha`) VALUES
(1, 'Tienda Virtual', 'admin@tiendavirtual.com', 'vistas/img/perfiles/499.png', '$2a$07$asxx54ahjppf45sd87a5aunxs9bkpyGmGE/.vekdjFg83yRec789S', 'administrador', 1, '2018-03-27 18:48:36'),
(2, 'Editor de la Tienda', 'editor@tiendavirtual.com', 'vistas/img/perfiles/477.png', '$2a$07$asxx54ahjppf45sd87a5auBnK0T8g/TaNYrkZQmRmlyohJLox8X9S', 'editor', 1, '2018-03-27 18:56:42'),
(5, 'Gerencia', 'gerencia@tjdatagroup.com', 'vistas/img/perfiles/801.jpg', '$2a$07$asxx54ahjppf45sd87a5auad1nby75I.bDO2.lTugKMklab1pK4S2', 'administrador', 1, '2022-12-12 04:01:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `img` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `ruta`, `tipo`, `img`, `estado`, `fecha`) VALUES
(1, 'sin-categoria', 'sin-categoria', 'vistas/img/banner/default.jpg', 0, '2022-12-09 20:05:39'),
(3, 'desarrollo-web', 'subcategorias', 'vistas/img/banner/web.jpg', 1, '2022-12-09 20:05:38'),
(4, 'calzado', 'categorias', 'vistas/img/banner/ropaHombre.jpg', 0, '2022-12-09 20:05:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cabeceras`
--

CREATE TABLE `cabeceras` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `palabrasClaves` text COLLATE utf8_spanish_ci NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cabeceras`
--

INSERT INTO `cabeceras` (`id`, `ruta`, `titulo`, `descripcion`, `palabrasClaves`, `portada`, `fecha`) VALUES
(1, 'inicio', 'Tienda Virtual', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam accusantium enim esse eos officiis sit officia', 'Lorem ipsum, dolor sit amet, consectetur, adipisicing, elit, Quisquam, accusantium, enim, esse', 'vistas/img/cabeceras/default.jpg', '2017-11-17 14:58:16'),
(4, 'cctv', 'CCTV', 'Los mejores productos de Circuitos cerrados de televisión, como Camarás, DVRs, NVRs, entre otros.', 'camaras, seguridad,dvr,nvr,dahua', 'vistas/img/cabeceras/cctv.png', '2022-12-09 21:18:19'),
(5, 'combo-de-camaras', 'Combo de Camaras', 'Combo que trae: Cámaras, DVR con Disco + Todo lo necesario en la instalación.', 'camara,combo,seguridad', 'vistas/img/cabeceras/combo-de-camaras.jpg', '2022-12-12 03:48:07'),
(6, 'combo-8-camaras-dahua', 'Combo 8 Cámaras Dahua', '8 Cámaras Dahua Bala\r\n1 DVR 8 Canales + 1TB\r\nTodos los componentes de la instalacion', 'dahua,combo,camara,camaras,8,dvr', 'vistas/img/cabeceras/combo-8-camaras-dahua.jpg', '2022-12-12 04:21:14'),
(7, 'camara-8-', 'Camara 8 ', 'CCTV', 'camara', 'vistas/img/cabeceras/camara-8-.jpg', '2022-12-12 04:41:32'),
(8, 'camara-4', 'Camara 4', 'sisoy', 'ola', 'vistas/img/cabeceras/camara-4.jpg', '2022-12-12 04:49:22'),
(9, 'camara-4', 'Camara 4', 'Jabali', 'ola', 'vistas/img/cabeceras/camara-4.jpg', '2022-12-12 04:53:03'),
(10, 'camara-4', 'Camara 4', 'Ola', 'camara', 'vistas/img/cabeceras/camara-4.jpg', '2022-12-12 04:58:20'),
(11, 'chalaheadchala', 'ChalaHeadChala', 'ChalaHeadChala', 'ChalaHeadChala', 'vistas/img/cabeceras/chalaheadchala.jpg', '2022-12-12 05:16:27'),
(12, 'camaranueva', 'CamaraNueva', 'Porque la tengo', 'tengo', 'vistas/img/cabeceras/camaranueva.png', '2022-12-13 19:30:00'),
(13, 'camaraola', 'camaraola', 'Creo que no', 'creo,lol', 'vistas/img/cabeceras/camaraola.jpg', '2022-12-13 19:38:57'),
(14, 'camara2', 'Camara2', 'camara', 'camara', 'vistas/img/cabeceras/camara2.png', '2022-12-15 02:39:53'),
(15, 'ola', 'ola', 'ola', 'ola', 'vistas/img/cabeceras/ola.png', '2022-12-15 02:54:26'),
(16, 'tvbox', 'TVBox', 'Dispositivos que convierten un televisor convencional sin opciones de internet en un Smart TV.', 'tvbox,televisor,tv', 'vistas/img/cabeceras/tvbox.jpg', '2022-12-16 23:17:39'),
(17, 'audifonos', 'Audifonos', 'Los audífonos o diademas son un aparato electrónico que se usa dentro o detrás de la oreja para escuchar sonidos.', 'audifono,diadema,sonidos,musica', 'vistas/img/cabeceras/audifonos.png', '2022-12-16 23:20:12'),
(18, 'microfonos', 'Microfonos', 'Un micrófono es un dispositivo que permite enviar sonidos.', 'microfono,sonido,grabar,grabacion', 'vistas/img/cabeceras/microfonos.jpg', '2022-12-16 23:21:57'),
(20, 'apple-tv-hd-a1625-4ta-generacion', 'Apple Tv Hd A1625 4ta Generación', 'Con este media player de Apple, los fanáticos de la manzanita encontrarán el complemento perfecto para su pantalla. Acceder a películas, series, fotos y sitios web desde un mismo aparato es posible. A su vez, las herramientas digitales y funciones incluidas marcan la diferencia por sobre el resto.', 'tbox,peliculas,apple,series,tvbox,televisor', 'vistas/img/cabeceras/apple-tv-hd-a1625-4ta-generacion.jpg', '2022-12-23 22:55:40'),
(21, 'microfono-inalambrico-de-solapa-para-celular-tipo-c', 'Micrófono Inalámbrico de Solapa para Celular Tipo C', 'Práctico y fácil de transportar, de calidad 100% garantizado ahora podrás transmitir en vivo en cualquier momento, en cualquier lugar, sin límites. es compatible con android sistema de cámara, tablet, pc, cualquier dispositivo con puerto tipo C.', 'microfono,solapa,inalambrico,android,tablet,tipoc,tipo c', 'vistas/img/cabeceras/microfono-inalambrico-de-solapa-para-celular-tipo-c.jpg', '2022-12-23 23:17:04'),
(22, 'audifonos-cat-ear-hifi-stereo-sound', 'Audifonos Cat Ear HiFi Stereo Sound', 'Diadema alámbrica para computador. Diseño moderno y portable, con apariencia imponente y un sonido excepcional. Para que disfrutes escuchando tu música preferida, podcast, audio libro que más te guste, incluso hasta una buena película. También ideal para jugar algún videojuego en el computador y hablar con tus amigos d', 'audifonos,gato,rgb,gamer,diademas,auriculares,diadema', 'vistas/img/cabeceras/audifonos-cat-ear-hifi-stereo-sound.png', '2022-12-23 23:33:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `estado`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(4, 'TECNOLOGÍA', 'tecnologia', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2018-03-13 00:06:23'),
(7, 'CCTV', 'cctv', 1, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-12-09 21:18:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `calificacion` float NOT NULL,
  `comentario` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_usuario`, `id_producto`, `calificacion`, `comentario`, `fecha`) VALUES
(1, 86, 496, 3.5, 'Lo mejor de PHP', '2018-02-13 16:39:25'),
(2, 86, 464, 4.5, 'Excelente', '2018-02-13 15:55:14'),
(3, 87, 496, 4, 'El curso es muy bueno, pero puede ser mejor.', '2018-02-13 16:10:50'),
(4, 88, 496, 4.5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n		consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n		cillum dolore eu fugiat nulla pariatur', '2018-02-13 17:17:48'),
(6, 5, 496, 2, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n		consequat. ', '2018-02-13 17:21:30'),
(7, 12, 500, 0, '', '2018-03-27 23:19:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE `comercio` (
  `id` int(11) NOT NULL,
  `impuesto` float NOT NULL,
  `envioNacional` float NOT NULL,
  `envioInternacional` float NOT NULL,
  `tasaMinimaNal` float NOT NULL,
  `tasaMinimaInt` float NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `clienteIdPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `llaveSecretaPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPayu` text COLLATE utf8_spanish_ci NOT NULL,
  `merchantIdPayu` int(11) NOT NULL,
  `accountIdPayu` int(11) NOT NULL,
  `apiKeyPayu` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comercio`
--

INSERT INTO `comercio` (`id`, `impuesto`, `envioNacional`, `envioInternacional`, `tasaMinimaNal`, `tasaMinimaInt`, `pais`, `modoPaypal`, `clienteIdPaypal`, `llaveSecretaPaypal`, `modoPayu`, `merchantIdPayu`, `accountIdPayu`, `apiKeyPayu`) VALUES
(1, 1, 1, 1, 1, 1, 'CO', 'sandbox', 'AecffvSZfOgj6g1MkrVmz12ACMES2-InggmWCpU5CblR-z5WwkYBYjmLsh9yPRLuRape1ahjqpcJet4N', 'EAx1SVMHGV6MJKwl-pnOSzaJASlAINZdYRdS--wkgaPYLevcGw88V0PU_W_rg00xLkBknybCjsO_xzA0', 'sandbox', 985340, 993457, 'VeYMvmuT6OD8E2HKVVgz7c1kGd');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `envio` int(11) NOT NULL,
  `metodo` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `detalle` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `id_usuario`, `id_producto`, `envio`, `metodo`, `email`, `direccion`, `pais`, `cantidad`, `detalle`, `pago`, `fecha`) VALUES
(1, 86, 496, 0, 'paypal', '', 'barranca', 'pe', 0, NULL, '50', '2018-03-27 19:18:50'),
(2, 86, 464, 2, 'payu', '', 'barranca', 'pe', 0, NULL, '40', '2018-03-27 20:44:55'),
(3, 87, 496, 0, 'paypal', '', 'urb 17 de mayo mz a lt 1-2', 'pe', 0, NULL, '70', '2018-03-27 16:08:51'),
(12, 2, 496, 0, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, NULL, '10', '2017-07-05 22:59:10'),
(13, 2, 464, 2, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, NULL, '10', '2018-03-27 14:13:12'),
(14, 2, 497, 0, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, NULL, '10', '2017-08-21 22:59:17'),
(15, 2, 500, 0, 'payu', 'correo@test.com', '', '', 0, NULL, '20', '2017-08-30 22:59:22'),
(16, 2, 184, 2, 'payu', 'correo@test.com', '', '', 0, NULL, '20', '2018-03-27 14:13:37'),
(17, 2, 499, 0, 'payu', 'ejemplo@test.com', '', '', 0, NULL, '10', '2017-09-27 22:59:27'),
(18, 2, 469, 0, 'gratis', 'pepe@gmail.com', '', '', 0, NULL, '0', '2017-09-29 22:59:31'),
(19, 2, 470, 0, 'gratis', 'pepe@gmail.com', '', '', 0, NULL, '0', '2017-10-09 22:59:33'),
(20, 2, 468, 0, 'gratis', 'pepe@gmail.com', '', '', 0, NULL, '0', '2017-10-24 22:59:34'),
(21, 2, 467, 0, 'gratis', 'pepe@gmail.com', '', '', 0, NULL, '0', '2017-11-20 22:59:35'),
(22, 12, 500, 0, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, NULL, '9.99', '2018-03-27 23:19:33');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deseos`
--

CREATE TABLE `deseos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `deseos`
--

INSERT INTO `deseos` (`id`, `id_usuario`, `id_producto`, `fecha`) VALUES
(1, 9, 469, '2018-03-26 22:03:34'),
(2, 9, 469, '2018-03-26 22:03:35'),
(3, 9, 467, '2018-03-26 22:03:39'),
(4, 9, 3, '2018-03-26 22:03:43'),
(5, 9, 469, '2018-03-26 22:03:54'),
(6, 9, 470, '2018-03-26 22:03:57'),
(7, 9, 467, '2018-03-26 22:04:00'),
(8, 9, 4, '2018-03-26 22:04:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `nuevosUsuarios` int(11) NOT NULL,
  `nuevasVentas` int(11) NOT NULL,
  `nuevasVisitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `nuevosUsuarios`, `nuevasVentas`, `nuevasVisitas`) VALUES
(1, 12, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `apiFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `pixelFacebook` text COLLATE utf8_spanish_ci NOT NULL,
  `googleAnalytics` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `apiFacebook`, `pixelFacebook`, `googleAnalytics`, `fecha`) VALUES
(1, '#062346', '#ffffff', '#00baff', '#ffffff', 'vistas/img/plantilla/logo.png', 'vistas/img/plantilla/icono.png', '[{\"red\":\"fa-facebook\",\"estilo\":\"facebookBlanco\",\"url\":\"https://www.facebook.com/TJDataGroup\",\"activo\":1},{\"red\":\"fa-youtube\",\"estilo\":\"youtubeBlanco\",\"url\":\"http://youtube.com/\",\"activo\":0},{\"red\":\"fa-twitter\",\"estilo\":\"twitterBlanco\",\"url\":\"https://twitter.com/tjdatagroup?s=20&t=nIJxrOlJ25FFAfefzS6eAg\",\"activo\":1},{\"red\":\"fa-google-plus\",\"estilo\":\"google-plusBlanco\",\"url\":\"http://google.com/\",\"activo\":1},{\"red\":\"fa-instagram\",\"estilo\":\"instagramBlanco\",\"url\":\"http://instagram.com/\",\"activo\":0}]', '\r\n<script>\r\n  window.fbAsyncInit = function() {\r\n    FB.init({\r\n      appId      : \'1161476434487707\',\r\n      cookie     : true,\r\n      xfbml      : true,\r\n      version    : \'v15.0\'\r\n    });\r\n      \r\n    FB.AppEvents.logPageView();   \r\n      \r\n  };\r\n\r\n  (function(d, s, id){\r\n     var js, fjs = d.getElementsByTagName(s)[0];\r\n     if (d.getElementById(id)) {return;}\r\n     js = d.createElement(s); js.id = id;\r\n     js.src = \"https://connect.facebook.net/en_US/sdk.js\";\r\n     fjs.parentNode.insertBefore(js, fjs);\r\n   }(document, \'script\', \'facebook-jssdk\'));\r\n</script>', '\r\n  			\r\n  			<!-- Facebook Pixel Code --> 	<script> 	  !function(f,b,e,v,n,t,s) 	  {if(f.fbq)return;n=f.fbq=function(){n.callMethod? 	  n.callMethod.apply(n,arguments):n.queue.push(arguments)}; 	  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'15.0\'; 	  n.queue=[];t=b.createElement(e);t.async=!0; 	  t.src=v;s=b.getElementsByTagName(e)[0]; 	  s.parentNode.insertBefore(t,s)}(window, document,\'script\', 	  \'https://connect.facebook.net/en_US/fbevents.js\'); 	  fbq(\'init\', \'1161476434487707\'); 	  fbq(\'track\', \'PageView\'); 	</script> 	<noscript><img height=\"1\" width=\"1\" style=\"display:none\" 	  src=\"https://www.facebook.com/tr?id=149877372404434&ev=PageView&noscript=1\" 	/></noscript> <!-- End Facebook Pixel Code -->    \r\n  			    \r\n  			', '\r\n  			  \r\n  				<!-- Global site tag (gtag.js) - Google Analytics --> 	<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-999999-1\"></script> 	<script> 	  window.dataLayer = window.dataLayer || []; 	  function gtag(){dataLayer.push(arguments);} 	  gtag(\'js\', new Date());  	  gtag(\'config\', \'UA-9999999-1\'); 	</script>      \r\n            \r\n            \r\n            \r\n            \r\n  			', '2022-12-20 20:50:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `multimedia` text COLLATE utf8_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `vistas` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `vistasGratis` int(11) NOT NULL,
  `ventasGratis` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `ofertadoPorSubCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `peso` float NOT NULL,
  `entrega` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `id_subcategoria`, `tipo`, `ruta`, `estado`, `titulo`, `titular`, `descripcion`, `multimedia`, `detalles`, `precio`, `portada`, `vistas`, `ventas`, `vistasGratis`, `ventasGratis`, `ofertadoPorCategoria`, `ofertadoPorSubCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `peso`, `entrega`, `fecha`) VALUES
(502, 7, 22, 'fisico', 'camara-8-', 0, 'Camara 8 ', 'CCTV...', 'CCTV', '[{\"foto\":\"vistas/img/multimedia/camara-8-/carola2.jpg\"}]', '{\"Talla\":[\"1.5m\"],\"Color\":[\"Negro\"],\"Marca\":[\"Dahua\"]}', 40000, 'vistas/img/productos/camara-8-.jpg', 18, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 5, 5, '2022-12-23 23:38:36'),
(508, 7, 22, 'virtual', 'camaraola', 0, 'camaraola', 'Creo que no...', 'Creo que no', 'https://www.youtube.com', '{\"Clases\":\"Enfado\",\"Tiempo\":\"Enfado\",\"Nivel\":\"4\",\"Acceso\":\"OLA\",\"Dispositivo\":\"KAK\",\"Certificado\":\"KER\"}', 40, 'vistas/img/productos/camaraola.png', 5, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 6, 7, '2022-12-23 23:38:36'),
(510, 7, 22, 'fisico', 'ola', 0, 'ola', 'ola...', 'ola', '[{\"foto\":\"vistas/img/multimedia/ola/logo (1).png\"}]', 'undefined', 40, 'vistas/img/productos/ola.png', 15, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 5, 5, '2022-12-23 23:38:35'),
(512, 4, 23, 'fisico', 'apple-tv-hd-a1625-4ta-generacion', 1, 'Apple Tv Hd A1625 4ta Generación', 'Con este media player de Apple, los fanáticos de la manzanita encontrarán el complemento perfecto para su pantalla. Acceder a películas, series, fotos y sitios web desde un mismo aparato es posible. A su vez, las herramien...', 'Con este media player de Apple, los fanáticos de la manzanita encontrarán el complemento perfecto para su pantalla. Acceder a películas, series, fotos y sitios web desde un mismo aparato es posible. A su vez, las herramientas digitales y funciones incluidas marcan la diferencia por sobre el resto.', '[{\"foto\":\"vistas/img/multimedia/apple-tv-hd-a1625-4ta-generacion/photo_2022-12-16_18-00-57-removebg-preview.png\"},{\"foto\":\"vistas/img/multimedia/apple-tv-hd-a1625-4ta-generacion/photo_2022-12-16_18-00-58-removebg-preview.png\"},{\"foto\":\"vistas/img/multimedia/apple-tv-hd-a1625-4ta-generacion/photo_2022-12-16_18-00-56__2_-removebg-preview.png\"}]', 'undefined', 850000, 'vistas/img/productos/apple-tv-hd-a1625-4ta-generacion.png', 12, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 0, 5, '2022-12-26 21:02:40'),
(513, 4, 25, 'fisico', 'microfono-inalambrico-de-solapa-para-celular-tipo-c', 1, 'Micrófono Inalámbrico de Solapa para Celular Tipo C', 'Práctico y fácil de transportar, de calidad 100% garantizado ahora podrás transmitir en vivo en cualquier momento, en cualquier lugar, sin límites. es compatible con android sistema de cámara, tablet, pc, cualquier dispo...', 'Práctico y fácil de transportar, de calidad 100% garantizado ahora podrás transmitir en vivo en cualquier momento, en cualquier lugar, sin límites. es compatible con android sistema de cámara, tablet, pc, cualquier dispositivo con puerto tipo C.', '[{\"foto\":\"vistas/img/multimedia/microfono-inalambrico-de-solapa-para-celular-tipo-c/Microfono-Inalambrico-De-Solapa-Para-Celular-Tablet-Tipo-C-1.jpg\"},{\"foto\":\"vistas/img/multimedia/microfono-inalambrico-de-solapa-para-celular-tipo-c/photo_2022-12-16_18-00-58__2_-removebg-preview.png\"},{\"foto\":\"vistas/img/multimedia/microfono-inalambrico-de-solapa-para-celular-tipo-c/photo_2022-12-16_18-00-59-removebg-preview.png\"},{\"foto\":\"vistas/img/multimedia/microfono-inalambrico-de-solapa-para-celular-tipo-c/photo_2022-12-16_18-00-59__2_-removebg-preview.png\"}]', 'undefined', 90000, 'vistas/img/productos/microfono-inalambrico-de-solapa-para-celular-tipo-c.png', 6, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 0, 5, '2022-12-26 21:21:09'),
(514, 4, 24, 'fisico', 'audifonos-cat-ear-hifi-stereo-sound', 1, 'Audifonos Cat Ear HiFi Stereo Sound', 'Diadema alambrica para computador. Es moderno y portable, con apariencia imponente y un sonido excepcional. Para que disfrutes escuchando tu música preferida, podcast o el audio libro que más te guste.', 'Diadema alambrica para computador. Es moderno y portable, con apariencia imponente y un sonido excepcional. Para que disfrutes escuchando tu música preferida, podcast o el audio libro que más te guste.', '[{\"foto\":\"vistas/img/multimedia/audifonos-cat-ear-hifi-stereo-sound/photo_2022-12-16_18-00-55-removebg-preview.png\"},{\"foto\":\"vistas/img/multimedia/audifonos-cat-ear-hifi-stereo-sound/photo_2022-12-16_18-00-56-removebg-preview.png\"}]', 'undefined', 35000, 'vistas/img/productos/audifonos-cat-ear-hifi-stereo-sound.png', 7, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 0, 5, '2022-12-26 20:56:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `imgFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `tipoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `imgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloImgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloTextoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `boton` text COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `orden` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `nombre`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `orden`, `fecha`) VALUES
(1, 'Camara Dahua', 'vistas/img/slide/default/back_default.jpg', 'slideOpcion2', 'vistas/img/slide/slide1/producto.png', '{\"top\":\"15\",\"right\":\"\",\"left\":\"15\",\"width\":\"30\"}', '{\"top\":\"20\",\"right\":\"10\",\"left\":\"\",\"width\":\"40\"}', '{\"texto\":\"CAMARAS AL MEJOR PRECIO\",\"color\":\"#333\"}', '{\"texto\":\"Camara Bala Dahua de 720p a un precio INCREIBLE.\",\"color\":\"#777777\"}', '{\"texto\":\"\",\"color\":\"#888888\"}', 'VER PRODUCTO', '#', 3, '2022-12-09 21:01:17'),
(2, 'COMPUTADORES', 'vistas/img/slide/slide2/fondo.jpg', 'slideOpcion2', 'vistas/img/slide/slide2/producto.png', '{\"top\":\"5\",\"right\":\"\",\"left\":\"15\",\"width\":\"30\"}', '{\"top\":\"15\",\"right\":\"15\",\"left\":\"\",\"width\":\"35\"}', '{\"texto\":\"Computadores\",\"color\":\"#ffffff\"}', '{\"texto\":\"Los mejores precios para nuestros sistemas\",\"color\":\"#d0d0d0\"}', '{\"texto\":\"¡Aprovecha y consiguelo YA!\",\"color\":\"#888\"}', 'Ver categorias', '#', 1, '2022-12-09 21:13:04'),
(4, 'CAMARAGRUPO', 'vistas/img/slide/slide4/fondo.png', 'slideOpcion1', 'vistas/img/slide/slide4/producto.png', '{\"top\":\"15\",\"right\":\"10\",\"left\":\"\",\"width\":\"30\"}', '{\"top\":\"35\",\"right\":\"\",\"left\":\"10\",\"width\":\"40\"}', '{\"texto\":\"Las mejores camaras\",\"color\":\"#333\"}', '{\"texto\":\"Al mejor precio\",\"color\":\"#777\"}', '{\"texto\":\"Al alcance de tus manos\",\"color\":\"#888\"}', 'Ver categoría', '', 2, '2022-12-09 21:12:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `estado`, `ofertadoPorCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `fecha`) VALUES
(22, 'Combo de Camaras', 7, 'combo-de-camaras', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-12-12 03:48:07'),
(23, 'TVBox', 4, 'tvbox', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-12-16 23:17:39'),
(24, 'Audifonos', 4, 'audifonos', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-12-16 23:19:38'),
(25, 'Microfonos', 4, 'microfonos', 1, 0, 0, 0, 0, '', '0000-00-00 00:00:00', '2022-12-16 23:21:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `modo` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `verificacion` int(11) NOT NULL,
  `emailEncriptado` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`, `email`, `modo`, `foto`, `verificacion`, `emailEncriptado`, `fecha`) VALUES
(2, 'Francisco gomez', '$2a$07$asxx54ahjppf45sd87a5auxq/SS293XhTEeizKWMnfhnpfay0AALe', 'pepe@gmail.com', 'directo', '', 0, '6b0becddecd5a06042b3f8078c97f2e0', '2018-03-27 15:55:09'),
(3, 'Juan Fernando Urrego Alvarez', 'null', 'juanustudio@hotmail.com', 'facebook', 'http://graph.facebook.com/10215085853809464/picture?type=large', 0, 'null', '2017-10-27 15:55:12'),
(5, 'Juan Fernando Urrego Alvarez', 'null', 'contacto@juanfernandourrego.com', 'google', 'https://lh4.googleusercontent.com/-2UURMoPtS5Q/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof1_ZJSXsDExO9Jd1-5p1-4rjp2x4w/s96-c/photo.jpg', 0, 'null', '2017-12-13 16:53:03'),
(6, 'Juan Fernando Urrego Alvarez', 'null', 'juanu@misena.edu.co', 'google', 'https://lh6.googleusercontent.com/-WRzOjXfAxp4/AAAAAAAAAAI/AAAAAAAAAAA/AFiYof31C6gB0EtqvVjoLv7yszCM_j2Udg/s96-c/photo.jpg', 0, 'null', '2017-12-13 16:54:00'),
(8, 'Tutoriales a tu Alcance', 'null', 'correo.tutorialesatualcance@gmail.com', 'google', 'https://lh4.googleusercontent.com/-80gqeIg_Gq8/AAAAAAAAAAI/AAAAAAAAAF4/0_8JQ_8Gffk/s96-c/photo.jpg', 0, 'null', '2018-03-06 18:06:24'),
(12, 'juanito perez', '$2a$07$asxx54ahjppf45sd87a5auptO89Bfb9XuXeaqzpkZhWf7pRyzngoO', 'juanito@gmail.com', 'directo', '', 0, 'c19e7e7da901025911234b21b7002143', '2018-03-27 23:08:38'),
(13, 'JUAN ZAPATA', '$2a$07$asxx54ahjppf45sd87a5auzekm9xxWYWVoizb2YdZgRWYQpJHkDZy', 'juanpazapata2013@gmail.com', 'directo', '', 0, 'ae9ddc7af334f26735305f0f13b2946c', '2022-12-13 19:24:24'),
(14, 'JUAN ZAPATA', '$2a$07$asxx54ahjppf45sd87a5auJcP.pup1Nz47GtAfXPUsDr6NOClzAq6', 'negrazo@yopmail.com', 'directo', '', 1, 'b6a9399f8d904311767f85bba4af3622', '2022-12-14 22:12:45'),
(15, 'JUAN ZAPATA', '$2a$07$asxx54ahjppf45sd87a5auA4HHL.Sob2d7farRA21jItOQw1SbirS', 'negrazeo@yopmail.com', 'directo', '', 1, '7c9c50c7d8f3b1fcbb4c4e3ceb286546', '2022-12-14 22:16:02'),
(16, 'loquesea', '$2a$07$asxx54ahjppf45sd87a5auf9EDdfCNwSnQq9lkuwX9sxQOlkoUlsC', 'OLA124241@YOPMAIL.COM', 'directo', '', 1, 'dec46b81a2b32e22783ca6e6c34a006f', '2022-12-14 22:18:42'),
(17, 'loquesea', '$2a$07$asxx54ahjppf45sd87a5auhJ80e8jiaKoIVKl1iSRZOXOhNXAeIh.', 'OLA1444@YOPMAIL.COM', 'directo', '', 1, 'f420e34a02c2d9e3ba46f89a7d00b51c', '2022-12-14 22:27:13'),
(18, 'loquesea', '$2a$07$asxx54ahjppf45sd87a5auhJ80e8jiaKoIVKl1iSRZOXOhNXAeIh.', 'OLA1444@YOPMAIL.COM', 'directo', '', 1, 'f420e34a02c2d9e3ba46f89a7d00b51c', '2022-12-14 22:28:29'),
(19, 'OLAJA', '$2a$07$asxx54ahjppf45sd87a5auk3CuGtlsw2hAjEv1tUyhVPpLsHBbQe2', 'OLA1443@yopmail.com', 'directo', '', 0, '94ed5b3bef98e21f72e2bf07b9130183', '2022-12-16 20:41:26'),
(20, 'maderin', '$2a$07$asxx54ahjppf45sd87a5auoeAgt0kwPY2Vq9n0QrbCKUxaBlL05J.', 'MADERIN@YOPMAIL.COM', 'directo', '', 0, '4921bb0087a45c0a1ab999f8a8d391fe', '2022-12-15 03:00:27'),
(21, 'maderin', '$2a$07$asxx54ahjppf45sd87a5auRN1KT/qQ0Slw1Hu9V/XRtU7ax4maQJO', 'maderin1@yopmail.com', 'directo', '', 0, 'ee03956195ca22d3147ac498afea3716', '2022-12-15 03:02:29'),
(22, 'maderin', '$2a$07$asxx54ahjppf45sd87a5auRN1KT/qQ0Slw1Hu9V/XRtU7ax4maQJO', 'maderin1@yopmail.com', 'directo', '', 1, 'ee03956195ca22d3147ac498afea3716', '2022-12-15 03:02:30'),
(23, 'gjhfg', '$2a$07$asxx54ahjppf45sd87a5auS5w315h/w02f0S8KSm2OsJEw0mYVFy6', 'fghf@yopmail.com', 'directo', '', 1, '1ffafb1c9fb5950084bdf253d7f5c5ad', '2022-12-15 03:45:32'),
(24, 'ola', '$2a$07$asxx54ahjppf45sd87a5aumFpaAYafe9m9AGOFRpQSV1cwsyg1aVO', 'ola213@yopmail.com', 'directo', '', 1, '021f791c11741f823052f075ff5e62be', '2022-12-15 04:53:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspaises`
--

CREATE TABLE `visitaspaises` (
  `id` int(11) NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `visitaspaises`
--

INSERT INTO `visitaspaises` (`id`, `pais`, `codigo`, `cantidad`, `fecha`) VALUES
(1, 'United States', 'US', 2, '2017-12-05 21:02:46'),
(2, 'Japan', 'JP', 78, '2022-12-26 20:56:23'),
(3, 'Spain', 'ES', 10, '2017-12-05 21:02:53'),
(4, 'Colombia', 'CO', 5, '2017-12-05 21:02:55'),
(5, 'China', 'CN', 3, '2017-12-05 21:04:32'),
(6, 'Germany', 'DE', 34, '2017-12-05 21:04:39'),
(7, 'Mexico', 'MX', 8, '2017-12-05 21:04:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visitaspersonas`
--

CREATE TABLE `visitaspersonas` (
  `id` int(11) NOT NULL,
  `ip` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `visitas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `visitaspersonas`
--

INSERT INTO `visitaspersonas` (`id`, `ip`, `pais`, `visitas`, `fecha`) VALUES
(1, '153.202.197.216', 'Japan', 1, '2017-11-08 18:37:07'),
(3, '249.170.168.184', 'Spain', 1, '2017-11-28 19:16:16'),
(5, '249.170.168.184', 'Spain', 1, '2017-11-28 19:16:19'),
(6, '234.13.198.119', 'Colombia', 1, '2017-11-28 19:16:03'),
(7, '141.46.61.241', 'Germany', 1, '2017-11-28 19:13:45'),
(8, '40.179.75.60', 'United States', 1, '2017-11-28 19:14:05'),
(9, '153.205.198.22', 'Japan', 1, '2017-11-01 19:14:18'),
(10, '148.21.177.158', 'United States', 1, '2017-10-28 19:14:34'),
(11, '40.224.125.226', 'United States', 1, '2017-11-28 19:14:56'),
(12, '10.98.135.68', 'China', 1, '2017-11-28 19:15:57'),
(13, '23.121.157.131', 'United States', 1, '2017-11-28 19:15:37'),
(17, '8.12.238.123', 'United States', 1, '2017-11-28 19:28:27'),
(18, '148.21.177.158', 'United States', 1, '2017-11-28 19:33:05'),
(19, '153.202.197.216', 'Japan', 1, '2017-11-28 19:33:50'),
(27, '153.205.198.22', 'Japan', 1, '2017-10-28 20:05:19'),
(31, '153.205.198.22', 'Japan', 1, '2017-11-28 20:09:49'),
(32, '153.205.198.22', 'Japan', 1, '2017-11-29 19:23:07'),
(33, '153.205.198.22', 'Japan', 1, '2017-11-30 23:01:27'),
(34, '153.205.198.22', 'Japan', 1, '2017-12-04 14:55:27'),
(35, '153.205.198.22', 'Japan', 1, '2017-12-05 20:58:04'),
(36, '153.205.198.22', 'Japan', 1, '2017-12-06 21:11:13'),
(37, '153.205.198.22', 'Japan', 1, '2017-12-07 22:32:13'),
(38, '153.205.198.22', 'Japan', 1, '2017-12-11 15:32:10'),
(39, '153.205.198.22', 'Japan', 1, '2017-12-13 15:45:58'),
(40, '153.205.198.22', 'Japan', 1, '2017-12-19 02:37:45'),
(41, '153.205.198.22', 'Japan', 1, '2017-12-19 12:54:21'),
(42, '153.205.198.22', 'Unknown', 1, '2017-12-30 15:41:47'),
(43, '153.205.198.22', 'Japan', 1, '2018-01-02 15:46:52'),
(44, '153.205.198.22', 'Japan', 1, '2018-01-03 13:54:29'),
(45, '153.205.198.22', 'Japan', 1, '2018-01-04 16:54:03'),
(46, '153.205.198.22', 'Japan', 1, '2018-01-05 17:17:05'),
(47, '153.205.198.22', 'Japan', 1, '2018-01-08 13:57:21'),
(48, '153.205.198.22', 'Japan', 1, '2018-01-09 15:46:40'),
(49, '153.205.198.22', 'Japan', 1, '2018-01-10 20:34:12'),
(50, '153.205.198.22', 'Japan', 1, '2018-01-11 14:08:56'),
(51, '153.205.198.22', 'Japan', 1, '2018-01-15 18:10:09'),
(52, '153.205.198.22', 'Japan', 1, '2018-01-16 16:15:33'),
(53, '153.205.198.22', 'Japan', 1, '2018-01-17 21:39:17'),
(54, '153.205.198.22', 'Japan', 1, '2018-01-18 20:16:09'),
(55, '153.205.198.22', 'Japan', 1, '2018-01-19 15:05:32'),
(56, '153.205.198.22', 'Japan', 1, '2018-01-22 14:38:48'),
(57, '153.205.198.22', 'Japan', 1, '2018-01-25 15:44:30'),
(58, '153.205.198.22', 'Japan', 1, '2018-01-26 21:24:38'),
(59, '153.205.198.22', 'Japan', 1, '2018-01-29 20:45:50'),
(60, '153.205.198.22', 'Japan', 1, '2018-01-30 22:32:35'),
(61, '153.205.198.22', 'Japan', 1, '2018-01-31 18:35:33'),
(62, '153.205.198.22', 'Japan', 1, '2018-02-07 17:37:45'),
(63, '153.205.198.22', 'Japan', 1, '2018-02-13 16:52:37'),
(64, '153.205.198.22', 'Japan', 1, '2018-02-14 13:33:04'),
(65, '153.205.198.22', 'Japan', 1, '2018-02-16 13:50:44'),
(66, '153.205.198.22', 'Japan', 1, '2018-02-23 17:06:23'),
(67, '153.205.198.22', 'Japan', 1, '2018-03-02 17:25:19'),
(68, '153.205.198.22', 'Japan', 1, '2018-03-03 12:06:54'),
(69, '153.205.198.22', 'Japan', 1, '2018-03-05 16:27:57'),
(70, '153.205.198.22', 'Japan', 1, '2018-03-06 17:59:36'),
(71, '153.205.198.22', 'Japan', 1, '2018-03-08 14:56:34'),
(72, '153.205.198.22', 'Japan', 1, '2018-03-08 14:56:34'),
(73, '153.205.198.22', 'Japan', 1, '2018-03-12 19:38:37'),
(74, '153.205.198.22', 'Japan', 1, '2018-03-13 20:35:47'),
(75, '153.205.198.22', 'Japan', 1, '2018-03-14 19:41:17'),
(76, '153.205.198.22', 'Japan', 1, '2018-03-15 16:41:11'),
(77, '153.205.198.22', 'Japan', 1, '2018-03-16 19:21:45'),
(78, '153.205.198.22', 'Japan', 1, '2018-03-17 12:23:58'),
(79, '153.205.198.22', 'Japan', 1, '2018-03-19 00:38:47'),
(80, '153.205.198.22', 'Japan', 1, '2018-03-19 12:57:20'),
(81, '153.205.198.22', 'Japan', 1, '2018-03-20 20:33:33'),
(82, '153.205.198.22', 'Japan', 1, '2018-03-21 19:30:58'),
(83, '153.205.198.22', 'Japan', 1, '2018-03-23 19:41:03'),
(84, '153.205.198.22', 'Japan', 1, '2018-03-26 12:42:06'),
(85, '153.205.198.22', 'Japan', 1, '2018-03-27 13:26:30'),
(86, '163.172.160.190', 'France', 1, '2018-03-27 23:23:14'),
(87, '153.205.198.22', 'Japan', 1, '2022-12-09 19:21:22'),
(88, '153.205.198.22', 'Japan', 1, '2022-12-12 04:21:31'),
(89, '153.205.198.22', 'Japan', 1, '2022-12-12 19:31:34'),
(90, '153.205.198.22', 'Japan', 1, '2022-12-13 19:15:37'),
(91, '153.205.198.22', 'Japan', 1, '2022-12-14 22:12:19'),
(92, '153.205.198.22', 'Japan', 1, '2022-12-15 19:54:37'),
(93, '153.205.198.22', 'Japan', 1, '2022-12-16 20:29:06'),
(94, '153.205.198.22', 'Japan', 1, '2022-12-20 20:17:50'),
(95, '153.205.198.22', 'Japan', 1, '2022-12-21 18:59:41'),
(96, '153.205.198.22', 'Japan', 1, '2022-12-22 18:53:34'),
(97, '153.205.198.22', 'Japan', 1, '2022-12-23 23:36:03'),
(98, '153.205.198.22', 'Japan', 1, '2022-12-24 08:26:36'),
(99, '153.205.198.22', 'Japan', 1, '2022-12-26 20:56:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comercio`
--
ALTER TABLE `comercio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deseos`
--
ALTER TABLE `deseos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspaises`
--
ALTER TABLE `visitaspaises`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cabeceras`
--
ALTER TABLE `cabeceras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `comercio`
--
ALTER TABLE `comercio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `deseos`
--
ALTER TABLE `deseos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `visitaspaises`
--
ALTER TABLE `visitaspaises`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `visitaspersonas`
--
ALTER TABLE `visitaspersonas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
