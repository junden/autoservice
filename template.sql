-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 05 2017 г., 17:59
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `template`
--

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dummy` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`id`, `name`, `phone`, `email`, `message`, `country`, `gender`, `dummy`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Денис', '3806654672', 'den@gmail.com', 'Сделайте мне покраску бампера,плиз', NULL, NULL, NULL, NULL, '2017-12-04 12:01:42', '2017-12-04 12:01:42');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_13_131541_create_post_table', 1),
(4, '2017_11_15_130001_create_messages_table', 1),
(5, '2017_11_20_100532_add_priority_to_posts_table', 1),
(6, '2017_11_22_092736_add_specialoffer_to_posts_table', 1),
(7, '2017_11_22_093021_add_imagespecial_to_posts_table', 1),
(8, '2017_11_24_154132_add_services_to_posts_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kwords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_images` text COLLATE utf8mb4_unicode_ci,
  `services` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `meta_title`, `preview`, `description`, `meta_description`, `kwords`, `published`, `remember_token`, `parent_id`, `url`, `created_at`, `updated_at`, `priority`, `special_offer`, `special_images`, `services`) VALUES
(1, 'Главная', 'Главная страница', '', '<div class=\"theme-page\">\r\n				<div class=\"clearfix\">\r\n					<div class=\"row page-margin-top-section\">\r\n						<div class=\"row\">\r\n							<h2 class=\"box-header\">ПОЧЕМУ ВЫБИРАЮТ НАС?</h2>\r\n							<p class=\"description align-center\">Мы являемся одним из ведущих авторемонтных мастерских, обслуживающих клиентов в Днепре.<br>Все механические услуги выполняются высококвалифицированными механиками.</p>\r\n							<div class=\"row page-margin-top\">\r\n								<div class=\"column column-1-3\">\r\n									<ul class=\"features-list big\">\r\n										<li>\r\n											<div class=\"hexagon\"><div class=\"sl-small-user-chat\"></div></div>\r\n											<h4 class=\"box-header page-margin-top\">КАЖДАЯ РАБОТА ПРОХОДИТ ЛИЧНО</h4>\r\n											<p>Если вам нужно качество, которое вы ожидаете от дилерского центра, но с более личной и дружеской атмосферой, вы его нашли.</p>\r\n										</li>\r\n									</ul>\r\n								</div>\r\n								<div class=\"column column-1-3\">\r\n									<ul class=\"features-list big\">\r\n										<li>\r\n											<div class=\"hexagon\"><div class=\"sl-small-wrench-screwdriver\"></div></div>\r\n											<h4 class=\"box-header page-margin-top\">ЛУЧШИЕ МАТЕРИАЛЫ</h4>\r\n											<p>Мы инвестировали во все новейшие специализированные инструменты и диагностическое программное обеспечение, специально разработанные для вашего автомобиля.</p>\r\n										</li>\r\n									</ul>\r\n								</div>\r\n								<div class=\"column column-1-3\">\r\n									<ul class=\"features-list big\">\r\n										<li>\r\n											<div class=\"hexagon\"><div class=\"sl-small-truck-tow\"></div></div>\r\n											<h4 class=\"box-header page-margin-top\">ПРОФЕССИОНАЛЬНЫЕ СТАНДАРТЫ</h4>\r\n											<p>Наша мастерская способна обслуживать различные модели. Мы выполняем только ту работу, которая необходима для решения вашей проблемы.</p>\r\n										</li>\r\n									</ul>\r\n								</div>\r\n							</div>\r\n						</div>	\r\n					</div>\r\n					<div class=\"row full-width gray flex-box page-margin-top-section\">\r\n						<div class=\"column column-1-2 background-1\">\r\n							<a class=\"flex-hide\" href=\"service_engine_diagnostics.html\" title=\"Tiling and Painting\">\r\n								<img src=\"images/samples/960x680/image_01.jpg\" alt=\"\">\r\n							</a>\r\n						</div>\r\n						<div class=\"column column-1-2 padding-bottom-66\">\r\n							<div class=\"row padding-left-right-100\">\r\n								<h2 class=\"box-header page-margin-top-section\">ОБСЛУЖИВАНИЕ ТРАНСПОРТНЫХ СРЕДСТВ</h2>\r\n								<p class=\"description align-center\">\r\nМы обеспечиваем самое высокое техническое обслуживание для всех типов транспортных средств.<br>Мы сертифицированы для обслуживания и ремонта следующих марок:</p>\r\n								<div class=\"row margin-top-30\">\r\n									<div class=\"column column-1-3\">\r\n										<ul class=\"list\">\r\n											<li class=\"template-bullet\">General Motors</li>\r\n											<li class=\"template-bullet\">Land Rover</li>\r\n											<li class=\"template-bullet\">Lexus</li>\r\n											<li class=\"template-bullet\">Lincoln</li>\r\n											<li class=\"template-bullet\">Mazda</li>\r\n										</ul>\r\n									</div>\r\n									<div class=\"column column-1-3\">\r\n										<ul class=\"list\">\r\n											<li class=\"template-bullet\">Mercedes - Benz</li>\r\n											<li class=\"template-bullet\">Mercury</li>\r\n											<li class=\"template-bullet\">Mitsubishi</li>\r\n											<li class=\"template-bullet\">Nissan</li>\r\n											<li class=\"template-bullet\">Renault</li>\r\n										</ul>\r\n									</div>\r\n									<div class=\"column column-1-3\">\r\n										<ul class=\"list\">\r\n											<li class=\"template-bullet\">Plymouth</li>\r\n											<li class=\"template-bullet\">Pontiac Porsche</li>\r\n											<li class=\"template-bullet\">Rover</li>\r\n											<li class=\"template-bullet\">Saab</li>\r\n											<li class=\"template-bullet\">Saleen</li>\r\n										</ul>\r\n									</div>\r\n								</div>\r\n								<div class=\"align-center margin-top-67 padding-bottom-20\">\r\n									<a class=\"more simple\" href=\"services.html\" title=\"VIEW FULL LIST\"><span>ПОЛНЫЙ СПИСОК</span></a>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n<div class=\"row page-margin-top-section\">\r\n						<div class=\"row\">\r\n							<h2 class=\"box-header\">COMPANY OVERVIEW</h2>\r\n							<p class=\"description align-center\">\r\nМы можем помочь вам во всем: от замены масла до смены двигателя.<br>\r\nМы можем справиться с любой проблемой как на иностранных, так и на внутренних транспортных средствах.</p>\r\n						</div>\r\n						<div class=\"row page-margin-top-section\">\r\n							<div class=\"column column-1-3\">\r\n								<ul class=\"features-list\">\r\n									<li>\r\n										<h5>РЕМОНТ АУДИОСИСТЕМЫ</h5>\r\n										<div class=\"icon sl-small-car-audio\"></div>\r\n										<p>Services consequat luctus at justo auctor metus est donec. Tempus terminal morbi nulla donec elite maecenas modern forte elementum vehicula.</p>\r\n									</li>\r\n									<li>\r\n										<h5>CAR A/C RECHARGE</h5>\r\n										<div class=\"icon sl-small-air-conditioning\"></div>\r\n										<p>Services consequat luctus at justo auctor metus est donec. Tempus terminal morbi nulla donec elite maecenas modern forte elementum vehicula.</p>\r\n									</li>\r\n								</ul>\r\n							</div>\r\n							<div class=\"column column-1-3\">\r\n								<ul class=\"features-list\">\r\n									<li>\r\n										<h5>БЕСПЛАТНАЯ ЗАМЕНА МАСЛА</h5>\r\n										<div class=\"icon sl-small-car-oil\"></div>\r\n										<p>Services consequat luctus at justo auctor metus est donec. Tempus terminal morbi nulla donec elite maecenas modern forte elementum vehicula.</p>\r\n									</li>\r\n									<li>\r\n										<h5>КАЛИБРОВКА ПАРКОВЩИКА</h5>\r\n										<div class=\"icon sl-small-parking-sensor\"></div>\r\n										<p>Services consequat luctus at justo auctor metus est donec. Tempus terminal morbi nulla donec elite maecenas modern forte elementum vehicula.</p>\r\n									</li>\r\n								</ul>\r\n							</div>\r\n							<div class=\"column column-1-3\">\r\n								<ul class=\"features-list\">\r\n									<li>\r\n										<h5>ДИАГНОСТИКА ДВИГАТЕЛЯ</h5>\r\n										<div class=\"icon sl-small-signal-warning\"></div>\r\n										<p>Services consequat luctus at justo auctor metus est donec. Tempus terminal morbi nulla donec elite maecenas modern forte elementum vehicula.</p>\r\n									</li>\r\n									<li>\r\n										<h5>РЕМОНТ АККУМУЛЯТОРА</h5>\r\n										<div class=\"icon sl-small-car-battery\"></div>\r\n										<p>Services consequat luctus at justo auctor metus est donec. Tempus terminal morbi nulla donec elite maecenas modern forte elementum vehicula.</p>\r\n									</li>\r\n								</ul>\r\n							</div>\r\n						</div>\r\n					</div>\r\n</div>\r\n			</div>', 'qwerty', 'qwerty', 1, NULL, NULL, '/', '2017-11-27 09:14:41', '2017-12-04 14:21:25', 1, 0, NULL, '0'),
(2, 'О Нас', 'О нас', '<p>safasf</p>', '<div class=\"theme-page\">\r\n<div class=\"row gray full-width page-header vertical-align-table\">\r\n<div class=\"row full-width padding-top-bottom-50 vertical-align-cell\">\r\n<div class=\"row\">\r\n<div class=\"page-header-left\">\r\n<h1>О НАС</h1>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clearfix\">\r\n<div class=\"row margin-top-70\">\r\n<div class=\"column column-1-2\">\r\n<p class=\"description margin-top-0\">We offer a full range of garage services to vehicle owners located in Tucson area. All mechanic services are performed by highly qualified mechanics. We can handle any car problem.</p>\r\n\r\n<p class=\"margin-top-10\">We offer full range of garage services to vehicle owners in Tucson. Our professionals know how to handle a wide range of car services. Whether you drive a passenger car or medium sized truck or SUV, our mechanics strive to ensure that your vehicle will be performing at its best before leaving our car shop. Whether you drive a medium sized truck or passenger car or SUV, our mechanics strive to ensure.</p>\r\n\r\n<h4 class=\"box-header margin-top-26\">WHY CHOOSE US</h4>\r\n\r\n<ul class=\"list margin-top-30\">\r\n	<li class=\"template-bullet\">We make auto repair and maintenance more convenient for you</li>\r\n	<li class=\"template-bullet\">We are a friendly, helpful and professional <a href=\"#\">group of people</a></li>\r\n	<li class=\"template-bullet\">Our professionals know how to handle a wide range of <a href=\"#\">car services</a></li>\r\n	<li class=\"template-bullet\">We get the job done right &mdash; the first time</li>\r\n	<li class=\"template-bullet\">Same day service for most repairs and maintenance</li>\r\n</ul>\r\n\r\n<div class=\"page-margin-top\"><a class=\"more\" href=\"services.html\" title=\"OUR SERVICES\"><span>OUR SERVICES</span></a></div>\r\n</div>\r\n\r\n<div class=\"column column-1-2\"><a class=\"prettyPhoto re-preload\" href=\"images/samples/870x580/image_05.jpg\" title=\"Brake Repair\"><img alt=\"img\" src=\"images/samples/570x380/image_05.jpg\" /> </a>\r\n\r\n<div class=\"row margin-top-30\">\r\n<div class=\"column column-1-2\"><a class=\"prettyPhoto re-preload\" href=\"images/samples/870x580/image_07.jpg\" title=\"Wheel Services\"><img alt=\"img\" src=\"images/samples/570x380/image_07.jpg\" /> </a></div>\r\n\r\n<div class=\"column column-1-2\"><a class=\"prettyPhoto re-preload\" href=\"images/samples/870x580/image_02.jpg\" title=\"Oil Change\"><img alt=\"img\" src=\"images/samples/570x380/image_02.jpg\" /> </a></div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row gray full-width page-margin-top-section page-padding-top padding-bottom-66\">\r\n    <div class=\"row\">\r\n        <div class=\"column column-1-4 align-center\">\r\n            <span class=\"number animated-element\" data-value=\"100\"></span><span class=\"number sign\">%</span>\r\n            <h5 class=\"margin-top-10\">CUSTOMER<br>SATISFACTION</h5>\r\n        </div>\r\n        <div class=\"column column-1-4 align-center\">\r\n            <span class=\"number animated-element\" data-value=\"15\"></span>\r\n            <h5 class=\"margin-top-10\">CARS REPAIRED<br>PER DAY</h5>\r\n        </div>\r\n        <div class=\"column column-1-4 align-center\">\r\n            <span class=\"number animated-element\" data-value=\"702\"></span>\r\n            <h5 class=\"margin-top-10\">TIRES REPAIRED<br>A YEAR</h5>\r\n        </div>\r\n        <div class=\"column column-1-4 align-center\">\r\n            <span class=\"number animated-element\" data-value=\"5125\"></span>\r\n            <h5 class=\"margin-top-10\">TIGHTENED<br>BOLTS</h5>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"row full-width padding-top-70 padding-bottom-66 parallax parallax-2\">\r\n<div class=\"row testimonials-container\">\r\n<ul class=\"testimonials-list\">\r\n	<li>\r\n	<div class=\"hexagon small\">\r\n	<div class=\"sl-small-pen\">&nbsp;</div>\r\n	</div>\r\n\r\n	<p>&quot;I have taken several of the family cars here for the past several years and without exception the experiences have been outstanding. I would highly recommend this place to any one who wants great service, honest value, and really great people.&quot;</p>\r\n\r\n	<h6>ROBERT SMITH</h6>\r\n	<!--<div class=\"author-details\">CEO OF NEW PORT COMPANY</div>--></li>\r\n	<li>\r\n	<div class=\"hexagon small\">\r\n	<div class=\"sl-small-pen\">&nbsp;</div>\r\n	</div>\r\n\r\n	<p>&quot;I have taken several of the family cars here for the past several years and without exception the experiences have been outstanding. I would highly recommend this place to any one who wants great service, honest value, and really great people.&quot;</p>\r\n\r\n	<h6>ROBERT SMITH</h6>\r\n	<!--<div class=\"author-details\">CEO OF NEW PORT COMPANY</div>--></li>\r\n	<li>\r\n	<div class=\"hexagon small\">\r\n	<div class=\"sl-small-pen\">&nbsp;</div>\r\n	</div>\r\n\r\n	<p>&quot;I have taken several of the family cars here for the past several years and without exception the experiences have been outstanding. I would highly recommend this place to any one who wants great service, honest value, and really great people.&quot;</p>\r\n\r\n	<h6>ROBERT SMITH</h6>\r\n	<!--<div class=\"author-details\">CEO OF NEW PORT COMPANY</div>--></li>\r\n</ul>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row page-margin-top-section\" style=\"margin-bottom:3px\">\r\n<div class=\"row\">\r\n<h2 class=\"box-header\">COMPANY OVERVIEW</h2>\r\n\r\n<p class=\"description align-center\">Мы можем помочь вам во всем: от замены масла до смены двигателя.<br />\r\nМы можем справиться с любой проблемой как на иностранных, так и на внутренних транспортных средствах.</p>\r\n</div>\r\n\r\n<div class=\"row page-margin-top-section\">\r\n<div class=\"column column-1-3\">\r\n<ul class=\"features-list\">\r\n	<li>\r\n	<h5>РЕМОНТ АУДИОСИСТЕМЫ</h5>\r\n\r\n	<div class=\"icon sl-small-car-audio\">&nbsp;</div>\r\n\r\n	<p>Services consequat luctus at justo auctor metus est donec. Tempus terminal morbi nulla donec elite maecenas modern forte elementum vehicula.</p>\r\n	</li>\r\n	<li>\r\n	<h5>CAR A/C RECHARGE</h5>\r\n\r\n	<div class=\"icon sl-small-air-conditioning\">&nbsp;</div>\r\n\r\n	<p>Services consequat luctus at justo auctor metus est donec. Tempus terminal morbi nulla donec elite maecenas modern forte elementum vehicula.</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"column column-1-3\">\r\n<ul class=\"features-list\">\r\n	<li>\r\n	<h5>БЕСПЛАТНАЯ ЗАМЕНА МАСЛА</h5>\r\n\r\n	<div class=\"icon sl-small-car-oil\">&nbsp;</div>\r\n\r\n	<p>Services consequat luctus at justo auctor metus est donec. Tempus terminal morbi nulla donec elite maecenas modern forte elementum vehicula.</p>\r\n	</li>\r\n	<li>\r\n	<h5>КАЛИБРОВКА ПАРКОВЩИКА</h5>\r\n\r\n	<div class=\"icon sl-small-parking-sensor\">&nbsp;</div>\r\n\r\n	<p>Services consequat luctus at justo auctor metus est donec. Tempus terminal morbi nulla donec elite maecenas modern forte elementum vehicula.</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"column column-1-3\">\r\n<ul class=\"features-list\">\r\n	<li>\r\n	<h5>ДИАГНОСТИКА ДВИГАТЕЛЯ</h5>\r\n\r\n	<div class=\"icon sl-small-signal-warning\">&nbsp;</div>\r\n\r\n	<p>Services consequat luctus at justo auctor metus est donec. Tempus terminal morbi nulla donec elite maecenas modern forte elementum vehicula.</p>\r\n	</li>\r\n	<li>\r\n	<h5>РЕМОНТ АККУМУЛЯТОРА</h5>\r\n\r\n	<div class=\"icon sl-small-car-battery\">&nbsp;</div>\r\n\r\n	<p>Services consequat luctus at justo auctor metus est donec. Tempus terminal morbi nulla donec elite maecenas modern forte elementum vehicula.</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'asfaf', 'asasf', 1, NULL, NULL, 'about', '2017-12-04 10:36:06', '2017-12-04 15:10:40', 3, 0, 'asfafs', '0'),
(3, 'Контакты', 'Контакты', '', '<div class=\"theme-page padding-bottom-66\">\r\n<div class=\"row gray full-width page-header vertical-align-table\">\r\n<div class=\"row full-width padding-top-bottom-50 vertical-align-cell\">\r\n<div class=\"row\">\r\n<div class=\"page-header-left\">\r\n<h1>КОНТАКТЫ</h1>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clearfix\">\r\n<div class=\"row full-width\">\r\n<div class=\"contact-map\" data-draggable=\"0\" data-scroll-wheel=\"0\" id=\"map\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"400\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2645.432664616804!2d35.03935831578972!3d48.467414036109155!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x40dbe2e60ce59ba7%3A0x2de248fbeb999a44!2z0K3QutC-0L3QvtC80YLQsNC60YHQuCwg0L_RgNC-0YHQv9C10LrRgiDQlNC80LjRgtGA0LjRjyDQr9Cy0L7RgNC90LjRhtC60L7Qs9C-LCA2MCwg0JTQvdC40L_RgNC-LCDQlNC90LXQv9GA0L7Qv9C10YLRgNC-0LLRgdC60LDRjyDQvtCx0LvQsNGB0YLRjCwgNDkwMDA!5e0!3m2!1sru!2sua!4v1512395987406\" style=\"border:0\" width=\"100%\"></iframe></div>\r\n</div>\r\n\r\n<div class=\"row page-margin-top\">\r\n<div class=\"column column-1-3\">\r\n<ul class=\"features-list\">\r\n	<li>\r\n	<h5>CALL US NOW AT</h5>\r\n\r\n	<div class=\"icon sl-small-phone-circle\">&nbsp;</div>\r\n\r\n	<p>Mobile: (520) 577 2710<br />\r\n	Assistance: (520) 577 2725<br />\r\n	Weekdays: (520) 577 7212</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"column column-1-3\">\r\n<ul class=\"features-list\">\r\n	<li>\r\n	<h5>TUCSON CAR SERVICE</h5>\r\n\r\n	<div class=\"icon sl-small-location-map\">&nbsp;</div>\r\n\r\n	<p>Tucson, Arizona 80210<br />\r\n	501 Archwood Lane<br />\r\n	<a href=\"//www.google.pl/maps/place/Tucson,+Arizona,+Stany+Zjednoczone/@32.15591,-110.883805,11z/data=!3m1!4b1!4m2!3m1!1s0x86d665410b2ced2b:0x73c32d384d16c715\" target=\"_blank\">Display on Map</a></p>\r\n	</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"column column-1-3\">\r\n<ul class=\"features-list\">\r\n	<li>\r\n	<h5>24/7 ASSISTANCE</h5>\r\n\r\n	<div class=\"icon sl-small-truck-tow\">&nbsp;</div>\r\n\r\n	<p>Services consequat luctus at justo auctor metus est donec. Tempus terminal morbi nulla donec elite maecenas.</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'фыафыа', 'фыафыа', 1, NULL, NULL, 'contact', '2017-12-04 10:54:45', '2017-12-04 12:46:33', 4, 0, 'asfasf', '0'),
(4, 'Услуги', 'фыафыа', '<p>фыафаы</p>', '<p>ыфафыа</p>', 'фыафыа', 'фыафыа', 1, NULL, NULL, '#', '2017-12-04 11:26:34', '2017-12-04 14:52:06', 2, 0, 'asfafs', '0'),
(5, 'Диагностика', 'ПРОФЕССИОНАЛЬНАЯ ДИАГНОСТИКА', '<p>ДИАГНОСТИКА АВТО</p>', '<div class=\"theme-page\">\r\n<div class=\"row gray full-width page-header vertical-align-table\">\r\n<div class=\"row full-width padding-top-bottom-50 vertical-align-cell\">\r\n<div class=\"row\">\r\n<div class=\"page-header-left\">\r\n<h1>Lorem ipsum</h1>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clearfix\">\r\n<div class=\"row margin-top-70\">\r\n<div class=\"column column-1-4\">\r\n<div class=\"call-to-action page-margin-top\">\r\n<div class=\"hexagon small\">\r\n<div class=\"sl-small-percent\">&nbsp;</div>\r\n</div>\r\n\r\n<h4 class=\"margin-top-58\">МЕСТО ДЛЯ РЕКЛАМЫ</h4>\r\n\r\n<p class=\"description\">Продавайте здесь и сейчас</p>\r\n<a class=\"more\" href=\"/\" title=\"MAKE APPOINTMENT\"><span>CLICK</span></a></div>\r\n</div>\r\n\r\n<div class=\"column column-3-4\">\r\n<div class=\"row\">\r\n<div class=\"column column-1-2\"><a class=\"prettyPhoto re-preload\" href=\"images/samples/870x580/image_06.jpg\" title=\"Tire and Wheel Services\"><img alt=\"img\" src=\"images/samples/480x320/image_06.jpg\" /> </a></div>\r\n\r\n<div class=\"column column-1-2\"><a class=\"prettyPhoto re-preload\" href=\"images/samples/870x580/image_07.jpg\" title=\"Tire and Wheel Services\"><img alt=\"img\" src=\"images/samples/480x320/image_07.jpg\" /> </a></div>\r\n</div>\r\n\r\n<div class=\"row page-margin-top\">\r\n<div class=\"column-1-1\">\r\n<h3 class=\"box-header\">ОПИСАНИЕ УСЛУГИ</h3>\r\n\r\n<p class=\"margin-top-20\">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3 class=\"box-header page-margin-top\">ПРАЙС</h3>\r\n\r\n<table class=\"margin-top-40\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Товар</td>\r\n			<td>$49.95</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Товар</td>\r\n			<td>$49.95</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Товар</td>\r\n			<td>$49.95</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Товар</td>\r\n			<td>$49.95</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row page-margin-top padding-bottom-70\">\r\n<div class=\"column column-1-2\">\r\n<h4 class=\"box-header\">ПОЧЕМУ ВЫБИРАЮТ НАС</h4>\r\n\r\n<p class=\"margin-top-20\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</p>\r\n\r\n<ul class=\"list margin-top-20\">\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"column column-1-2\">\r\n<h4 class=\"box-header\">ПОПУЛЯРНЫЕ ВОПРОСЫ</h4>\r\n\r\n<ul class=\"accordion margin-top-40 clearfix\">\r\n	<li>\r\n	<div id=\"accordion-using-synthetic\">\r\n	<h4>Lorem ipsum</h4>\r\n	</div>\r\n\r\n	<p>Lorem ipsum</p>\r\n	</li>\r\n	<li>\r\n	<div id=\"accordion-parts-replacements\">\r\n	<h4>Lorem ipsum</h4>\r\n	</div>\r\n\r\n	<p>Lorem ipsum</p>\r\n	</li>\r\n	<li>\r\n	<div id=\"accordion-track-routine\">\r\n	<h4>Lorem ipsum</h4>\r\n	</div>\r\n\r\n	<p>Lorem ipsum</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'ПРОФЕССИОНАЛЬНАЯ ДИАГНОСТИКА', 'фыафаы', 1, NULL, 4, 'link4', '2017-12-04 12:37:33', '2017-12-05 11:46:42', 5, 0, 'images/samples/390x260/image_01.jpg', '1'),
(6, 'Замена масла', 'фыафы', '<p>ЗАМЕНА МАСЛА</p>', '<div class=\"theme-page\">\r\n<div class=\"row gray full-width page-header vertical-align-table\">\r\n<div class=\"row full-width padding-top-bottom-50 vertical-align-cell\">\r\n<div class=\"row\">\r\n<div class=\"page-header-left\">\r\n<h1>Lorem ipsum</h1>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clearfix\">\r\n<div class=\"row margin-top-70\">\r\n<div class=\"column column-1-4\">\r\n<div class=\"call-to-action page-margin-top\">\r\n<div class=\"hexagon small\">\r\n<div class=\"sl-small-percent\">&nbsp;</div>\r\n</div>\r\n\r\n<h4 class=\"margin-top-58\">МЕСТО ДЛЯ РЕКЛАМЫ</h4>\r\n\r\n<p class=\"description\">Продавайте здесь и сейчас</p>\r\n<a class=\"more\" href=\"/\" title=\"MAKE APPOINTMENT\"><span>CLICK</span></a></div>\r\n</div>\r\n\r\n<div class=\"column column-3-4\">\r\n<div class=\"row\">\r\n<div class=\"column column-1-2\"><a class=\"prettyPhoto re-preload\" href=\"images/samples/870x580/image_06.jpg\" title=\"Tire and Wheel Services\"><img alt=\"img\" src=\"images/samples/480x320/image_06.jpg\" /> </a></div>\r\n\r\n<div class=\"column column-1-2\"><a class=\"prettyPhoto re-preload\" href=\"images/samples/870x580/image_07.jpg\" title=\"Tire and Wheel Services\"><img alt=\"img\" src=\"images/samples/480x320/image_07.jpg\" /> </a></div>\r\n</div>\r\n\r\n<div class=\"row page-margin-top\">\r\n<div class=\"column-1-1\">\r\n<h3 class=\"box-header\">ОПИСАНИЕ УСЛУГИ</h3>\r\n\r\n<p class=\"margin-top-20\">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3 class=\"box-header page-margin-top\">ПРАЙС</h3>\r\n\r\n<table class=\"margin-top-40\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Товар</td>\r\n			<td>$49.95</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Товар</td>\r\n			<td>$49.95</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Товар</td>\r\n			<td>$49.95</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Товар</td>\r\n			<td>$49.95</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row page-margin-top padding-bottom-70\">\r\n<div class=\"column column-1-2\">\r\n<h4 class=\"box-header\">ПОЧЕМУ ВЫБИРАЮТ НАС</h4>\r\n\r\n<p class=\"margin-top-20\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</p>\r\n\r\n<ul class=\"list margin-top-20\">\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"column column-1-2\">\r\n<h4 class=\"box-header\">ПОПУЛЯРНЫЕ ВОПРОСЫ</h4>\r\n\r\n<ul class=\"accordion margin-top-40 clearfix\">\r\n	<li>\r\n	<div id=\"accordion-using-synthetic\">\r\n	<h4>Lorem ipsum</h4>\r\n	</div>\r\n\r\n	<p>Lorem ipsum</p>\r\n	</li>\r\n	<li>\r\n	<div id=\"accordion-parts-replacements\">\r\n	<h4>Lorem ipsum</h4>\r\n	</div>\r\n\r\n	<p>Lorem ipsum</p>\r\n	</li>\r\n	<li>\r\n	<div id=\"accordion-track-routine\">\r\n	<h4>Lorem ipsum</h4>\r\n	</div>\r\n\r\n	<p>Lorem ipsum</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'фыафыа', 'фыафаы', 1, NULL, 4, 'link6', '2017-12-04 13:24:50', '2017-12-05 11:46:52', 6, 0, 'images/samples/390x260/image_02.jpg', '1'),
(7, 'Ремни и шланги', 'asfafsaf', '<p>РЕМНИ И ШЛАНГИ</p>', '<div class=\"theme-page\">\r\n<div class=\"row gray full-width page-header vertical-align-table\">\r\n<div class=\"row full-width padding-top-bottom-50 vertical-align-cell\">\r\n<div class=\"row\">\r\n<div class=\"page-header-left\">\r\n<h1>Lorem ipsum</h1>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clearfix\">\r\n<div class=\"row margin-top-70\">\r\n<div class=\"column column-1-4\">\r\n<div class=\"call-to-action page-margin-top\">\r\n<div class=\"hexagon small\">\r\n<div class=\"sl-small-percent\">&nbsp;</div>\r\n</div>\r\n\r\n<h4 class=\"margin-top-58\">МЕСТО ДЛЯ РЕКЛАМЫ</h4>\r\n\r\n<p class=\"description\">Продавайте здесь и сейчас</p>\r\n<a class=\"more\" href=\"/\" title=\"MAKE APPOINTMENT\"><span>CLICK</span></a></div>\r\n</div>\r\n\r\n<div class=\"column column-3-4\">\r\n<div class=\"row\">\r\n<div class=\"column column-1-2\"><a class=\"prettyPhoto re-preload\" href=\"images/samples/870x580/image_06.jpg\" title=\"Tire and Wheel Services\"><img alt=\"img\" src=\"images/samples/480x320/image_06.jpg\" /> </a></div>\r\n\r\n<div class=\"column column-1-2\"><a class=\"prettyPhoto re-preload\" href=\"images/samples/870x580/image_07.jpg\" title=\"Tire and Wheel Services\"><img alt=\"img\" src=\"images/samples/480x320/image_07.jpg\" /> </a></div>\r\n</div>\r\n\r\n<div class=\"row page-margin-top\">\r\n<div class=\"column-1-1\">\r\n<h3 class=\"box-header\">ОПИСАНИЕ УСЛУГИ</h3>\r\n\r\n<p class=\"margin-top-20\">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</p>\r\n\r\n<h3 class=\"box-header page-margin-top\">ПРАЙС</h3>\r\n\r\n<table class=\"margin-top-40\">\r\n	<tbody>\r\n		<tr>\r\n			<td>Товар</td>\r\n			<td>$49.95</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Товар</td>\r\n			<td>$49.95</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Товар</td>\r\n			<td>$49.95</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Товар</td>\r\n			<td>$49.95</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n\r\n<div class=\"row page-margin-top padding-bottom-70\">\r\n<div class=\"column column-1-2\">\r\n<h4 class=\"box-header\">ПОЧЕМУ ВЫБИРАЮТ НАС</h4>\r\n\r\n<p class=\"margin-top-20\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;</p>\r\n\r\n<ul class=\"list margin-top-20\">\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n	<li class=\"template-bullet\">Lorem ipsum</li>\r\n</ul>\r\n</div>\r\n\r\n<div class=\"column column-1-2\">\r\n<h4 class=\"box-header\">ПОПУЛЯРНЫЕ ВОПРОСЫ</h4>\r\n\r\n<ul class=\"accordion margin-top-40 clearfix\">\r\n	<li>\r\n	<div id=\"accordion-using-synthetic\">\r\n	<h4>Lorem ipsum</h4>\r\n	</div>\r\n\r\n	<p>Lorem ipsum</p>\r\n	</li>\r\n	<li>\r\n	<div id=\"accordion-parts-replacements\">\r\n	<h4>Lorem ipsum</h4>\r\n	</div>\r\n\r\n	<p>Lorem ipsum</p>\r\n	</li>\r\n	<li>\r\n	<div id=\"accordion-track-routine\">\r\n	<h4>Lorem ipsum</h4>\r\n	</div>\r\n\r\n	<p>Lorem ipsum</p>\r\n	</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'asfafs', 'asfaf', 1, NULL, 4, 'link5', '2017-12-04 14:34:45', '2017-12-05 11:47:01', 7, 0, 'images/samples/390x260/image_03.jpg', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Денис', 'admin@gmail.com', '$2y$10$PjGtHQMW.ai3vWzc5kYTge.O/uchq2Tn19RJkyZNr6fDZgNlxr83.', 'rbs8DKhMFTjPV0ZFbifaoFezQfxNEOlRhGkGFDlA9TJs0GBU7lPsQzOPVsz6', '2017-11-27 09:12:30', '2017-11-27 09:12:30');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
