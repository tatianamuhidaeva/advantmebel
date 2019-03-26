-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 26, 2019 at 06:41 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `doit_advantmebel`
--

-- --------------------------------------------------------

--
-- Table structure for table `advanges`
--

CREATE TABLE `advanges` (
  `id` int(11) NOT NULL,
  `url` text,
  `text` text,
  `title` text,
  `advange_id` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `multi_domain` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `image` text,
  `admin_options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `advanges`
--

INSERT INTO `advanges` (`id`, `url`, `text`, `title`, `advange_id`, `template`, `type`, `multi_domain`, `created_at`, `updated_at`, `sort`, `image`, `admin_options`) VALUES
(1, NULL, 'Более 10 лет на рынке производства и мебельных услуг', NULL, NULL, NULL, NULL, NULL, '2019-03-26 16:39:42', '2019-03-26 16:39:42', 1, '/storage/ten.png', ''),
(2, NULL, '<span>Представительства во многих регионах России</span>', NULL, NULL, NULL, NULL, NULL, '2019-03-26 16:40:17', '2019-03-26 16:40:17', 2, '/storage/russia.png', ''),
(3, NULL, '<span>Сотрудничество с производителями по всему миру</span>', NULL, NULL, NULL, NULL, NULL, '2019-03-26 16:40:32', '2019-03-26 16:40:32', 3, '/storage/internet.png', ''),
(4, NULL, '<span>Разный ценовой диапазон на любой кошелек</span>', NULL, NULL, NULL, NULL, NULL, '2019-03-26 16:40:50', '2019-03-26 16:40:50', 4, '/storage/wallet.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE `catalogs` (
  `id` int(11) NOT NULL,
  `url` text,
  `text` text,
  `title` text,
  `catalog_id` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `multi_domain` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `image` text,
  `admin_options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`id`, `url`, `text`, `title`, `catalog_id`, `template`, `type`, `multi_domain`, `created_at`, `updated_at`, `sort`, `image`, `admin_options`) VALUES
(3, 'office_business-class', '<p><span>В любом помещении, которое так или иначе играет роль в нашем жизненно процессе, стоит мебель. А ведь её функция выходит далеко за пределы &laquo;быть способным удержать на себе чашку&raquo;, &laquo;быть хранилищем для книг&raquo;, &laquo;держать на себе вазу с цветами, а также весь обеденный сервис с содержимым в полдень&raquo;. Каждая вещь, которая нас окружает, так или иначе влияет на нас самих, действуя через наше восприятие окружающей действительности. Первыми это поняли японцы. Восточные народы вообще очень чувствительны к тонким душевным изменениям. Они первыми осознали, насколько велика роль обстановки в жизни человека, и превратили это взаимодействие окружающей обстановки с человеком в настоящее искусство. То же самое и с пространством, нас окружающем &ndash; оно должно быть гармоничным. Что в офисе, что дома, что на даче. Когда нужно просто что-то купить, можно идти в первый попавшийся магазин офисной мебели в Москве, а когда нужно что-то более серьезное - вы приходите к поставщику. Всегда рады видеть Вас в наших салонах!</span></p>', 'Кабинеты Business class', 0, NULL, NULL, NULL, '2019-03-26 21:43:52', '2019-03-26 21:57:53', 3, '/storage/office-2.png', ''),
(2, 'office_econom-class', '<p><span>В любом помещении, которое так или иначе играет роль в нашем жизненно процессе, стоит мебель. А ведь её функция выходит далеко за пределы &laquo;быть способным удержать на себе чашку&raquo;, &laquo;быть хранилищем для книг&raquo;, &laquo;держать на себе вазу с цветами, а также весь обеденный сервис с содержимым в полдень&raquo;. Каждая вещь, которая нас окружает, так или иначе влияет на нас самих, действуя через наше восприятие окружающей действительности. Первыми это поняли японцы. Восточные народы вообще очень чувствительны к тонким душевным изменениям. Они первыми осознали, насколько велика роль обстановки в жизни человека, и превратили это взаимодействие окружающей обстановки с человеком в настоящее искусство. То же самое и с пространством, нас окружающем &ndash; оно должно быть гармоничным. Что в офисе, что дома, что на даче. Когда нужно просто что-то купить, можно идти в первый попавшийся магазин офисной мебели в Москве, а когда нужно что-то более серьезное - вы приходите к поставщику. Всегда рады видеть Вас в наших салонах!</span></p>', 'Кабинеты Econom class', 0, NULL, NULL, NULL, '2019-03-26 21:41:11', '2019-03-26 21:41:11', 2, '/storage/office-1.png', ''),
(4, 'office_first-class', '<p><span>В любом помещении, которое так или иначе играет роль в нашем жизненно процессе, стоит мебель. А ведь её функция выходит далеко за пределы &laquo;быть способным удержать на себе чашку&raquo;, &laquo;быть хранилищем для книг&raquo;, &laquo;держать на себе вазу с цветами, а также весь обеденный сервис с содержимым в полдень&raquo;. Каждая вещь, которая нас окружает, так или иначе влияет на нас самих, действуя через наше восприятие окружающей действительности. Первыми это поняли японцы. Восточные народы вообще очень чувствительны к тонким душевным изменениям. Они первыми осознали, насколько велика роль обстановки в жизни человека, и превратили это взаимодействие окружающей обстановки с человеком в настоящее искусство. То же самое и с пространством, нас окружающем &ndash; оно должно быть гармоничным. Что в офисе, что дома, что на даче. Когда нужно просто что-то купить, можно идти в первый попавшийся магазин офисной мебели в Москве, а когда нужно что-то более серьезное - вы приходите к поставщику. Всегда рады видеть Вас в наших салонах!</span></p>', 'Кабинеты First class', 0, NULL, NULL, NULL, '2019-03-26 21:44:27', '2019-03-26 21:44:27', 4, '/storage/office-3.png', ''),
(6, 'office_premium-class', '<p><span>В любом помещении, которое так или иначе играет роль в нашем жизненно процессе, стоит мебель. А ведь её функция выходит далеко за пределы &laquo;быть способным удержать на себе чашку&raquo;, &laquo;быть хранилищем для книг&raquo;, &laquo;держать на себе вазу с цветами, а также весь обеденный сервис с содержимым в полдень&raquo;. Каждая вещь, которая нас окружает, так или иначе влияет на нас самих, действуя через наше восприятие окружающей действительности. Первыми это поняли японцы. Восточные народы вообще очень чувствительны к тонким душевным изменениям. Они первыми осознали, насколько велика роль обстановки в жизни человека, и превратили это взаимодействие окружающей обстановки с человеком в настоящее искусство. То же самое и с пространством, нас окружающем &ndash; оно должно быть гармоничным. Что в офисе, что дома, что на даче. Когда нужно просто что-то купить, можно идти в первый попавшийся магазин офисной мебели в Москве, а когда нужно что-то более серьезное - вы приходите к поставщику. Всегда рады видеть Вас в наших салонах!</span></p>', 'Кабинеты Premium class', 0, NULL, NULL, NULL, '2019-03-26 21:48:27', '2019-03-26 21:48:27', 6, '/storage/office-4.png', ''),
(7, 'area-community', '<p><span>В любом помещении, которое так или иначе играет роль в нашем жизненно процессе, стоит мебель. А ведь её функция выходит далеко за пределы &laquo;быть способным удержать на себе чашку&raquo;, &laquo;быть хранилищем для книг&raquo;, &laquo;держать на себе вазу с цветами, а также весь обеденный сервис с содержимым в полдень&raquo;. Каждая вещь, которая нас окружает, так или иначе влияет на нас самих, действуя через наше восприятие окружающей действительности. Первыми это поняли японцы. Восточные народы вообще очень чувствительны к тонким душевным изменениям. Они первыми осознали, насколько велика роль обстановки в жизни человека, и превратили это взаимодействие окружающей обстановки с человеком в настоящее искусство. То же самое и с пространством, нас окружающем &ndash; оно должно быть гармоничным. Что в офисе, что дома, что на даче. Когда нужно просто что-то купить, можно идти в первый попавшийся магазин офисной мебели в Москве, а когда нужно что-то более серьезное - вы приходите к поставщику. Всегда рады видеть Вас в наших салонах!</span></p>', 'Зоны коммуникаций', 0, NULL, NULL, NULL, '2019-03-26 21:53:04', '2019-03-26 21:53:04', 7, '/storage/area-community.png', ''),
(8, 'area-visit', '<p><span>В любом помещении, которое так или иначе играет роль в нашем жизненно процессе, стоит мебель. А ведь её функция выходит далеко за пределы &laquo;быть способным удержать на себе чашку&raquo;, &laquo;быть хранилищем для книг&raquo;, &laquo;держать на себе вазу с цветами, а также весь обеденный сервис с содержимым в полдень&raquo;. Каждая вещь, которая нас окружает, так или иначе влияет на нас самих, действуя через наше восприятие окружающей действительности. Первыми это поняли японцы. Восточные народы вообще очень чувствительны к тонким душевным изменениям. Они первыми осознали, насколько велика роль обстановки в жизни человека, и превратили это взаимодействие окружающей обстановки с человеком в настоящее искусство. То же самое и с пространством, нас окружающем &ndash; оно должно быть гармоничным. Что в офисе, что дома, что на даче. Когда нужно просто что-то купить, можно идти в первый попавшийся магазин офисной мебели в Москве, а когда нужно что-то более серьезное - вы приходите к поставщику. Всегда рады видеть Вас в наших салонах!</span></p>', 'Приемные зоны', 0, NULL, NULL, NULL, '2019-03-26 21:54:22', '2019-03-26 21:54:22', 8, '/storage/area-visit.png', ''),
(9, 'area-work', '<p><span>В любом помещении, которое так или иначе играет роль в нашем жизненно процессе, стоит мебель. А ведь её функция выходит далеко за пределы &laquo;быть способным удержать на себе чашку&raquo;, &laquo;быть хранилищем для книг&raquo;, &laquo;держать на себе вазу с цветами, а также весь обеденный сервис с содержимым в полдень&raquo;. Каждая вещь, которая нас окружает, так или иначе влияет на нас самих, действуя через наше восприятие окружающей действительности. Первыми это поняли японцы. Восточные народы вообще очень чувствительны к тонким душевным изменениям. Они первыми осознали, насколько велика роль обстановки в жизни человека, и превратили это взаимодействие окружающей обстановки с человеком в настоящее искусство. То же самое и с пространством, нас окружающем &ndash; оно должно быть гармоничным. Что в офисе, что дома, что на даче. Когда нужно просто что-то купить, можно идти в первый попавшийся магазин офисной мебели в Москве, а когда нужно что-то более серьезное - вы приходите к поставщику. Всегда рады видеть Вас в наших салонах!</span></p>', 'Зоны работы сотрудников', 0, NULL, NULL, NULL, '2019-03-26 21:54:46', '2019-03-26 21:54:46', 9, '/storage/area-work.png', ''),
(10, 'area-wait', '<p><span>В любом помещении, которое так или иначе играет роль в нашем жизненно процессе, стоит мебель. А ведь её функция выходит далеко за пределы &laquo;быть способным удержать на себе чашку&raquo;, &laquo;быть хранилищем для книг&raquo;, &laquo;держать на себе вазу с цветами, а также весь обеденный сервис с содержимым в полдень&raquo;. Каждая вещь, которая нас окружает, так или иначе влияет на нас самих, действуя через наше восприятие окружающей действительности. Первыми это поняли японцы. Восточные народы вообще очень чувствительны к тонким душевным изменениям. Они первыми осознали, насколько велика роль обстановки в жизни человека, и превратили это взаимодействие окружающей обстановки с человеком в настоящее искусство. То же самое и с пространством, нас окружающем &ndash; оно должно быть гармоничным. Что в офисе, что дома, что на даче. Когда нужно просто что-то купить, можно идти в первый попавшийся магазин офисной мебели в Москве, а когда нужно что-то более серьезное - вы приходите к поставщику. Всегда рады видеть Вас в наших салонах!</span></p>', 'Зоны ожидания', 0, NULL, NULL, NULL, '2019-03-26 21:55:24', '2019-03-26 21:55:24', 10, '/storage/area-wait.png', ''),
(11, 'chair-and-armchair', '<p><span>В любом помещении, которое так или иначе играет роль в нашем жизненно процессе, стоит мебель. А ведь её функция выходит далеко за пределы &laquo;быть способным удержать на себе чашку&raquo;, &laquo;быть хранилищем для книг&raquo;, &laquo;держать на себе вазу с цветами, а также весь обеденный сервис с содержимым в полдень&raquo;. Каждая вещь, которая нас окружает, так или иначе влияет на нас самих, действуя через наше восприятие окружающей действительности. Первыми это поняли японцы. Восточные народы вообще очень чувствительны к тонким душевным изменениям. Они первыми осознали, насколько велика роль обстановки в жизни человека, и превратили это взаимодействие окружающей обстановки с человеком в настоящее искусство. То же самое и с пространством, нас окружающем &ndash; оно должно быть гармоничным. Что в офисе, что дома, что на даче. Когда нужно просто что-то купить, можно идти в первый попавшийся магазин офисной мебели в Москве, а когда нужно что-то более серьезное - вы приходите к поставщику. Всегда рады видеть Вас в наших салонах!</span></p>', 'Стулья и кресла', 0, NULL, NULL, NULL, '2019-03-26 21:55:59', '2019-03-26 21:55:59', 11, '/storage/chair-and-armchair.png', ''),
(12, 'office-light', '<p><span>В любом помещении, которое так или иначе играет роль в нашем жизненно процессе, стоит мебель. А ведь её функция выходит далеко за пределы &laquo;быть способным удержать на себе чашку&raquo;, &laquo;быть хранилищем для книг&raquo;, &laquo;держать на себе вазу с цветами, а также весь обеденный сервис с содержимым в полдень&raquo;. Каждая вещь, которая нас окружает, так или иначе влияет на нас самих, действуя через наше восприятие окружающей действительности. Первыми это поняли японцы. Восточные народы вообще очень чувствительны к тонким душевным изменениям. Они первыми осознали, насколько велика роль обстановки в жизни человека, и превратили это взаимодействие окружающей обстановки с человеком в настоящее искусство. То же самое и с пространством, нас окружающем &ndash; оно должно быть гармоничным. Что в офисе, что дома, что на даче. Когда нужно просто что-то купить, можно идти в первый попавшийся магазин офисной мебели в Москве, а когда нужно что-то более серьезное - вы приходите к поставщику. Всегда рады видеть Вас в наших салонах!</span></p>', 'Офисный свет', 0, NULL, NULL, NULL, '2019-03-26 21:56:33', '2019-03-26 21:56:33', 12, '/storage/office-light.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `url` text,
  `text` text,
  `title` text,
  `contact_id` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `multi_domain` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `address` text,
  `phone` text,
  `email` text,
  `time` text,
  `note` text,
  `admin_options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `url`, `text`, `title`, `contact_id`, `template`, `type`, `multi_domain`, `created_at`, `updated_at`, `sort`, `address`, `phone`, `email`, `time`, `note`, `admin_options`) VALUES
(1, NULL, NULL, 'Офис', NULL, NULL, NULL, NULL, NULL, NULL, 1, '123022, Москва, ул. 1905 года, д.7, корп.\"Е\"', '+7 (495) 925-10-25', 'info@profoffice.ru', '\r\n', 'Посещение главного офиса по\r\nпредварительной записи ', NULL),
(2, NULL, NULL, 'Склад', NULL, NULL, NULL, NULL, NULL, '2019-03-25 15:58:32', 2, '141100, Московская обл., г. Щелково, ул.Заречная, д.151 ', '', '', 'Режим работы: пн.-пт. с 10.00 до 19.00&nbsp;<br />Перерыв: с 13.00 до 14.00 (въезд до 18.30)', 'Въезд на склад только на грузовых автомобилях по предварительной записи.&nbsp;<br />Получение товара по оригиналу доверенности.', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `url` text,
  `text` text,
  `title` text,
  `news_id` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `multi_domain` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `date_at` date DEFAULT NULL,
  `image` text,
  `short_text` text,
  `admin_options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `url`, `text`, `title`, `news_id`, `template`, `type`, `multi_domain`, `created_at`, `updated_at`, `sort`, `date_at`, `image`, `short_text`, `admin_options`) VALUES
(1, 'news1', '<p>Наш складской ассортимент пополнился креслом для сотрудников.Наш складской ассортимент пополнился креслом для сотрудников.Наш складской ассортимент пополнился креслом для сотрудников.Наш складской ассортимент пополнился креслом для сотрудников.</p>', 'Кресло для сотрудников - Romeo', NULL, NULL, NULL, NULL, '2019-03-27 02:38:08', '2019-03-27 02:38:08', 1, '2019-03-01', NULL, '<p><span>Наш складской ассортимент пополнился креслом для сотрудников.</span></p>', ''),
(2, 'news2', '<p>Наш складской ассортимент пополнился креслом для сотрудников.Наш складской ассортимент пополнился креслом для сотрудников.Наш складской ассортимент пополнился креслом для сотрудников.Наш складской ассортимент пополнился креслом для сотрудников.</p>', 'Кресло для сотрудников - Romeo', NULL, NULL, NULL, NULL, '2019-03-27 02:38:08', '2019-03-27 02:38:08', 1, '2019-03-01', NULL, '<p><span>Наш складской ассортимент пополнился креслом для сотрудников.</span></p>', ''),
(3, 'news3', '<p>Наш складской ассортимент пополнился креслом для сотрудников.Наш складской ассортимент пополнился креслом для сотрудников.Наш складской ассортимент пополнился креслом для сотрудников.Наш складской ассортимент пополнился креслом для сотрудников.</p>', 'Кресло для сотрудников - Romeo', NULL, NULL, NULL, NULL, '2019-03-27 02:38:08', '2019-03-27 02:38:08', 1, '2019-03-01', NULL, '<p><span>Наш складской ассортимент пополнился креслом для сотрудников.</span></p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `url` text,
  `text` text,
  `title` text,
  `option_id` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `multi_domain` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `logo` text,
  `phone` text,
  `extra_phone` text,
  `email` text,
  `addr` text,
  `recieve_email` text,
  `is_smtp` tinyint(4) NOT NULL DEFAULT '0',
  `email_login` text,
  `email_pass` text,
  `meta` text,
  `metric` text,
  `admin_options` text,
  `addr_map` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `url`, `text`, `title`, `option_id`, `template`, `type`, `multi_domain`, `created_at`, `updated_at`, `sort`, `logo`, `phone`, `extra_phone`, `email`, `addr`, `recieve_email`, `is_smtp`, `email_login`, `email_pass`, `meta`, `metric`, `admin_options`, `addr_map`) VALUES
(1, 'all', NULL, NULL, NULL, NULL, NULL, NULL, '2019-03-25 11:29:33', '2019-03-25 16:45:10', 1, '/storage/logo.png', '(495) 760-30-58 ', '', 'moscow@advant-mebel.ru', 'г. Москва, Ленинградский проспект 80', '', 0, '', '', '', '', '', 'Москва, улица 1905 года, 7с1 ');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `url` text,
  `text` text,
  `title` text,
  `page_id` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `multi_domain` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `is_mainmenu` tinyint(4) NOT NULL DEFAULT '0',
  `admin_options` text,
  `subtitle` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `url`, `text`, `title`, `page_id`, `template`, `type`, `multi_domain`, `created_at`, `updated_at`, `sort`, `is_mainmenu`, `admin_options`, `subtitle`) VALUES
(1, 'about', '<p><span>Восемь десятков и семь лет назад наши отцы образовали на этом континенте новую нацию, зачатую в свободе и верящую в то, что все люди рождены равными. Теперь мы ведем великую Гражданскую войну, подвергающую нашу нацию или любую другую нацию, таким же образом зачатую и исповедующую те же идеалы, испытанию на способность выстоять. </span></p>\r\n<p><span>Мы встречаемся сегодня на великом поле брани этой войны. Встречаемся, чтобы сделать его часть последним пристанищем для тех, кто отдал свою жизнь во имя того, чтобы наша нация смогла выжить. Со всех точек зрения это уместный и совершенно верный шаг. Но в более широком смысле мы не можем посвящать, мы не можем благословлять, мы не можем почитать эту землю. </span></p>\r\n<p><span>Отважные люди, живые и мертвые, сражавшиеся здесь, уже совершили обряд такого посвящения, и не в наших слабых силах что-либо добавить или убавить. Мир едва ли заметит или запомнит надолго то, что мы здесь говорим, но он не сможет забыть того, что они совершили здесь. Скорее, это нам, живущим, следует посвятить себя завершению начатого ими дела, над которым трудились до нас с таким благородством те, кто сражался здесь. </span></p>\r\n<p><span>Скорее, это нам, живущим, следует посвятить себя великой задаче, все еще стоящей перед нами, &mdash; перенять у этих высокочтимых погибших еще большую приверженность тому делу, которому они в полной мере и до конца сохраняли верность, исполниться убежденностью, что они погибли не зря, что наша нация с Божьей помощью возродится в свободе и что власть народа волей народа и для народа не исчезнет с лица Земли</span></p>', 'О компании', NULL, NULL, NULL, NULL, '2019-03-25 11:31:07', '2019-03-25 11:31:07', 1, 0, '', NULL),
(2, 'contacts', '', 'Контакты', NULL, NULL, NULL, NULL, '2019-03-25 11:31:41', '2019-03-25 11:31:41', 2, 0, '', NULL),
(3, 'index', '<p><span>В любом помещении, которое так или иначе играет роль в нашем жизненно процессе, стоит мебель. А ведь её функция выходит далеко за пределы &laquo;быть способным удержать на себе чашку&raquo;, &laquo;быть хранилищем для книг&raquo;, &laquo;держать на себе вазу с цветами, а также весь обеденный сервис с содержимым в полдень&raquo;. Каждая вещь, которая нас окружает, так или иначе влияет на нас самих, действуя через наше восприятие окружающей действительности. </span></p>\r\n<p><span>Первыми это поняли японцы. Восточные народы вообще очень чувствительны к тонким душевным изменениям. Они первыми осознали, насколько велика роль обстановки в жизни человека, и превратили это взаимодействие окружающей обстановки с человеком в настоящее искусство. То же самое и с пространством, нас окружающем &ndash; оно должно быть гармоничным. Что в офисе, что дома, что на даче. Когда нужно просто что-то купить, можно идти в первый попавшийся магазин офисной мебели в Москве, а когда нужно что-то более серьезное - вы приходите к поставщику. </span></p>\r\n<p><span>Всегда рады видеть Вас в наших салонах!</span></p>', 'Компания \"Адвант\" —', NULL, NULL, NULL, NULL, '2019-03-25 14:08:03', '2019-03-26 16:51:20', 3, 0, '', 'один из крупнейших поставщиков офисной мебели');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11) NOT NULL,
  `url` text,
  `text` text,
  `title` text,
  `photo_id` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `multi_domain` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `url` text,
  `text` text,
  `title` text,
  `product_id` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `multi_domain` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `image` text,
  `description` text,
  `price` text,
  `catalog_id` int(11) DEFAULT NULL,
  `admin_options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `url`, `text`, `title`, `product_id`, `template`, `type`, `multi_domain`, `created_at`, `updated_at`, `sort`, `image`, `description`, `price`, `catalog_id`, `admin_options`) VALUES
(1, 'Conte', '<p><span>Описание товара&nbsp;<span>Conte</span></span></p>', 'Conte', NULL, NULL, NULL, NULL, '2019-03-26 23:46:05', '2019-03-26 23:46:05', 1, '/storage/product-1.png', NULL, '6499 €', 2, ''),
(2, 'Tempio', '<p><span>Описание товара&nbsp;<span>Tempio</span></span></p>', 'Tempio', NULL, NULL, NULL, NULL, '2019-03-26 23:46:29', '2019-03-26 23:46:29', 2, '/storage/product-2.png', NULL, '6499 €', 2, ''),
(3, 'Forte', '<p><span>Описание товара&nbsp;<span>Forte</span></span></p>', 'Forte', NULL, NULL, NULL, NULL, '2019-03-26 23:46:44', '2019-03-26 23:46:44', 3, '/storage/product-3.png', NULL, '6499 €', 2, ''),
(4, 'MultipliCEO', '<p><span>Описание товара&nbsp;<span>MultipliCEO</span></span></p>', 'MultipliCEO', NULL, NULL, NULL, NULL, '2019-03-26 23:46:58', '2019-03-26 23:46:58', 4, '/storage/product-4.png', NULL, '6499 €', 2, ''),
(5, 'Tempio', '<p><span>Описание товара&nbsp;<span>Tempio</span></span></p>', 'Tempio', NULL, NULL, NULL, NULL, '2019-03-26 23:46:29', '2019-03-26 23:46:29', 2, '/storage/product-2.png', NULL, '6499 €', 2, ''),
(6, 'Conte', '<p><span>Описание товара&nbsp;<span>Conte</span></span></p>', 'Conte', NULL, NULL, NULL, NULL, '2019-03-26 23:46:05', '2019-03-26 23:46:05', 1, '/storage/product-1.png', NULL, '6499 €', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `robots`
--

CREATE TABLE `robots` (
  `id` int(11) NOT NULL,
  `url` text,
  `text` text,
  `title` text,
  `robot_id` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `multi_domain` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `seoparams`
--

CREATE TABLE `seoparams` (
  `id` int(11) NOT NULL,
  `url` text,
  `text` text,
  `title` text,
  `seoparam_id` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `multi_domain` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `page_url` text,
  `description` text,
  `keywords` text,
  `admin_options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seoparams`
--

INSERT INTO `seoparams` (`id`, `url`, `text`, `title`, `seoparam_id`, `template`, `type`, `multi_domain`, `created_at`, `updated_at`, `sort`, `page_url`, `description`, `keywords`, `admin_options`) VALUES
(1, NULL, '', 'О компании', NULL, NULL, NULL, NULL, '2019-03-25 11:42:00', '2019-03-25 11:42:00', 1, '/about', '', '', ''),
(2, NULL, '', 'Контакты', NULL, NULL, NULL, NULL, '2019-03-25 11:42:19', '2019-03-25 11:42:19', 2, '/contacts', '', '', ''),
(3, NULL, '', 'Главная', NULL, NULL, NULL, NULL, '2019-03-25 14:08:24', '2019-03-25 14:08:24', 3, '/', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advanges`
--
ALTER TABLE `advanges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `robots`
--
ALTER TABLE `robots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seoparams`
--
ALTER TABLE `seoparams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advanges`
--
ALTER TABLE `advanges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `robots`
--
ALTER TABLE `robots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seoparams`
--
ALTER TABLE `seoparams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
