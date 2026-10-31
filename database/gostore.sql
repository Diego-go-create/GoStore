-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2026 a las 17:04:23
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gostore`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_permissions`
--

CREATE TABLE `app_permissions` (
  `permission_key` varchar(60) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `app_permissions`
--

INSERT INTO `app_permissions` (`permission_key`, `enabled`, `updated_at`) VALUES
('admin_carousel', 1, '2026-10-30 18:06:35'),
('admin_chat', 1, '2026-10-30 15:20:43'),
('admin_orders', 1, '2026-10-30 15:20:43'),
('admin_products', 1, '2026-10-30 15:20:43'),
('admin_users', 1, '2026-10-30 18:07:38'),
('user_account_delete', 1, '2026-10-30 18:10:19'),
('user_chat', 1, '2026-10-30 15:20:43'),
('user_checkout', 1, '2026-10-30 15:20:43'),
('user_interaction', 1, '2026-10-30 15:20:43'),
('user_order_cancel', 1, '2026-10-30 18:10:19'),
('user_order_delete', 1, '2026-10-30 18:10:19'),
('user_register', 1, '2026-10-30 15:20:43'),
('user_shopping', 1, '2026-10-30 15:20:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `audit_log`
--

CREATE TABLE `audit_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `actor_user_id` int(10) UNSIGNED DEFAULT NULL,
  `actor_username` varchar(80) NOT NULL,
  `actor_role` varchar(20) NOT NULL,
  `action` varchar(80) NOT NULL,
  `details` varchar(500) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `audit_log`
--

INSERT INTO `audit_log` (`id`, `actor_user_id`, `actor_username`, `actor_role`, `action`, `details`, `created_at`) VALUES
(1, 2728, 'Diego', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 16:05:43'),
(2, 7785, 'GoStoreAd', 'superadmin', 'login', 'Inicio de sesión correcto.', '2026-10-30 16:06:18'),
(3, 7785, 'GoStoreAd', 'superadmin', 'superadmin_credentials_updated', 'Se actualizaron credenciales del SuperAdmin; el rol permanece protegido.', '2026-10-30 16:07:49'),
(4, 7785, 'GoStore', 'superadmin', 'profile_updated', 'Perfil actualizado por GoStore.', '2026-10-30 16:10:11'),
(5, 7785, 'GoStore', 'superadmin', 'account_settings_updated', 'Preferencias actualizadas por GoStore.', '2026-10-30 16:10:21'),
(6, 7785, 'GoStore', 'superadmin', 'account_settings_updated', 'Preferencias actualizadas por GoStore.', '2026-10-30 16:10:25'),
(7, 7785, 'GoStore', 'superadmin', 'logout', 'Cierre de sesión.', '2026-10-30 16:12:23'),
(8, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 16:12:29'),
(9, 1, 'Admin', 'admin', 'logout', 'Cierre de sesión.', '2026-10-30 16:13:30'),
(10, 7785, 'GoStore', 'superadmin', 'login', 'Inicio de sesión correcto.', '2026-10-30 16:13:57'),
(11, 7785, 'GoStore', 'superadmin', 'logout', 'Cierre de sesión.', '2026-10-30 16:14:48'),
(12, 7785, 'GoStore', 'superadmin', 'login', 'Inicio de sesión correcto.', '2026-10-30 16:18:15'),
(13, 7785, 'GoStore', 'superadmin', 'account_settings_updated', 'Preferencias actualizadas por GoStore.', '2026-10-30 16:19:08'),
(14, 7785, 'GoStore', 'superadmin', 'account_settings_updated', 'Preferencias actualizadas por GoStore.', '2026-10-30 16:19:28'),
(15, 7785, 'GoStore', 'superadmin', 'account_settings_updated', 'Preferencias actualizadas por GoStore.', '2026-10-30 16:19:35'),
(16, 2728, 'Diego', 'user', 'login', 'Inicio de sesión correcto.', '2026-10-30 16:42:06'),
(17, 2728, 'Diego', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 16:44:45'),
(18, 7785, 'GoStore', 'superadmin', 'login', 'Inicio de sesión correcto.', '2026-10-30 16:45:53'),
(19, 7785, 'GoStore', 'superadmin', 'logout', 'Cierre de sesión.', '2026-10-30 16:46:51'),
(20, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 16:46:58'),
(21, 1, 'Admin', 'admin', 'logout', 'Cierre de sesión.', '2026-10-30 16:49:15'),
(22, 7785, 'GoStore', 'superadmin', 'login', 'Inicio de sesión correcto.', '2026-10-30 16:49:29'),
(23, 7785, 'GoStore', 'superadmin', 'logout', 'Cierre de sesión.', '2026-10-30 16:59:07'),
(24, 2787, 'Daniel', 'user', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:00:49'),
(25, 7785, 'GoStore', 'superadmin', 'account_settings_updated', 'Preferencias actualizadas por GoStore.', '2026-10-30 17:08:20'),
(26, 7785, 'GoStore', 'superadmin', 'account_settings_updated', 'Preferencias actualizadas por GoStore.', '2026-10-30 17:08:46'),
(27, 7785, 'GoStore', 'superadmin', 'account_settings_updated', 'Preferencias actualizadas por GoStore.', '2026-10-30 17:08:48'),
(28, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:09:13'),
(29, 7785, 'GoStore', 'superadmin', 'logout', 'Cierre de sesión.', '2026-10-30 17:11:25'),
(30, 2787, 'Daniel', 'user', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:11:32'),
(31, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:28:22'),
(32, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:28:38'),
(33, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:28:40'),
(34, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:30:10'),
(35, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:34:56'),
(36, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:35:03'),
(37, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:35:05'),
(38, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:35:07'),
(39, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:35:09'),
(40, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:35:11'),
(41, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:35:14'),
(42, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:35:14'),
(43, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:37:31'),
(44, 2787, 'Daniel', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 17:37:42'),
(45, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:37:50'),
(46, 1, 'Admin', 'admin', 'account_settings_updated', 'Preferencias actualizadas por Admin.', '2026-10-30 17:38:00'),
(47, 1, 'Admin', 'admin', 'account_settings_updated', 'Preferencias actualizadas por Admin.', '2026-10-30 17:38:41'),
(48, 1, 'Admin', 'admin', 'account_settings_updated', 'Preferencias actualizadas por Admin.', '2026-10-30 17:38:47'),
(49, 1, 'Admin', 'admin', 'account_settings_updated', 'Preferencias actualizadas por Admin.', '2026-10-30 17:38:49'),
(50, 1, 'Admin', 'admin', 'account_settings_updated', 'Preferencias actualizadas por Admin.', '2026-10-30 17:39:44'),
(51, 1, 'Admin', 'admin', 'account_settings_updated', 'Preferencias actualizadas por Admin.', '2026-10-30 17:39:46'),
(52, 1, 'Admin', 'admin', 'chat_message_deleted', 'Mensaje #11 eliminado.', '2026-10-30 17:40:04'),
(53, 1, 'Admin', 'admin', 'chat_message_deleted', 'Mensaje #10 eliminado.', '2026-10-30 17:40:10'),
(54, 1, 'Admin', 'admin', 'chat_message_deleted', 'Mensaje #7 eliminado.', '2026-10-30 17:40:14'),
(55, 1, 'Admin', 'admin', 'logout', 'Cierre de sesión.', '2026-10-30 17:40:23'),
(56, 2728, 'Diego', 'user', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:40:34'),
(57, 2728, 'Diego', 'user', 'chat_message_deleted', 'Mensaje #9 eliminado.', '2026-10-30 17:40:46'),
(58, 2728, 'Diego', 'user', 'chat_message_deleted', 'Mensaje #6 eliminado.', '2026-10-30 17:40:51'),
(59, 2728, 'Diego', 'user', 'account_settings_updated', 'Preferencias actualizadas por Diego.', '2026-10-30 17:41:03'),
(60, 2728, 'Diego', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 17:41:15'),
(61, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:41:28'),
(62, 1, 'Admin', 'admin', 'account_settings_updated', 'Preferencias actualizadas por Admin.', '2026-10-30 17:41:41'),
(63, 1, 'Admin', 'admin', 'logout', 'Cierre de sesión.', '2026-10-30 17:41:45'),
(64, 2787, 'Daniel', 'user', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:41:52'),
(65, 2787, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 17:42:00'),
(66, 2787, 'Daniel', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 17:42:04'),
(67, 7785, 'GoStore', 'superadmin', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:42:24'),
(68, 7785, 'GoStore', 'superadmin', 'account_settings_updated', 'Preferencias actualizadas por GoStore.', '2026-10-30 17:42:35'),
(69, 7785, 'GoStore', 'superadmin', 'account_settings_updated', 'Preferencias actualizadas por GoStore.', '2026-10-30 17:42:38'),
(70, 7785, 'GoStore', 'superadmin', 'logout', 'Cierre de sesión.', '2026-10-30 17:42:49'),
(71, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:42:54'),
(72, 1, 'Admin', 'admin', 'logout', 'Cierre de sesión.', '2026-10-30 17:42:59'),
(73, 2728, 'Diego', 'user', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:43:05'),
(74, 2728, 'Diego', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 17:43:14'),
(75, 2787, 'Daniel', 'user', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:43:20'),
(76, 2787, 'Daniel', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 17:51:27'),
(77, 2728, 'Diego', 'user', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:51:52'),
(78, 2728, 'Diego', 'user', 'account_settings_updated', 'Preferencias actualizadas por Diego.', '2026-10-30 17:52:58'),
(79, 2728, 'Diego', 'user', 'account_settings_updated', 'Preferencias actualizadas por Diego.', '2026-10-30 17:53:06'),
(80, 2728, 'Diego', 'user', 'account_settings_updated', 'Preferencias actualizadas por Diego.', '2026-10-30 17:53:08'),
(81, 2728, 'Diego', 'user', 'account_settings_updated', 'Preferencias actualizadas por Diego.', '2026-10-30 17:53:13'),
(82, 2728, 'Diego', 'user', 'account_settings_updated', 'Preferencias actualizadas por Diego.', '2026-10-30 17:53:33'),
(83, 2728, 'Diego', 'user', 'account_settings_updated', 'Preferencias actualizadas por Diego.', '2026-10-30 17:53:36'),
(84, 2728, 'Diego', 'user', 'chat_message_sent', 'Mensaje enviado a la cuenta ID 1.', '2026-10-30 17:54:12'),
(85, 2728, 'Diego', 'user', 'chat_message_sent', 'Mensaje enviado a la cuenta ID 1.', '2026-10-30 17:54:24'),
(86, 2728, 'Diego', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 17:54:36'),
(87, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:54:44'),
(88, 1, 'Admin', 'admin', 'chat_message_sent', 'Mensaje enviado a la cuenta ID 2728.', '2026-10-30 17:55:11'),
(89, 1, 'Admin', 'admin', 'chat_message_sent', 'Mensaje enviado a la cuenta ID 2728.', '2026-10-30 17:55:20'),
(90, 1, 'Admin', 'admin', 'chat_message_deleted', 'Mensaje #16 eliminado.', '2026-10-30 17:56:04'),
(91, 1, 'Admin', 'admin', 'logout', 'Cierre de sesión.', '2026-10-30 17:56:48'),
(92, 7785, 'GoStore', 'superadmin', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:57:05'),
(93, 7785, 'GoStore', 'superadmin', 'logout', 'Cierre de sesión.', '2026-10-30 17:58:29'),
(94, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 17:58:36'),
(95, 1, 'Admin', 'admin', 'user_account_deleted', 'Cuenta eliminada: Daniel (ID 2787).', '2026-10-30 17:58:49'),
(96, 1, 'Admin', 'admin', 'user_account_deleted', 'Cuenta eliminada: Diego (ID 2728).', '2026-10-30 17:58:55'),
(97, 1, 'Admin', 'admin', 'logout', 'Cierre de sesión.', '2026-10-30 18:00:02'),
(98, 9136, 'Diego', 'user', 'user_registered', 'Nueva cuenta registrada: Diego.', '2026-10-30 18:00:34'),
(99, 9136, 'Diego', 'user', 'user_account_deleted', 'Cuenta eliminada: Diego (ID 9136).', '2026-10-30 18:00:57'),
(100, 7785, 'GoStore', 'superadmin', 'login', 'Inicio de sesión correcto.', '2026-10-30 18:01:58'),
(101, 7785, 'GoStore', 'superadmin', 'permissions_updated', 'Se actualizaron las restricciones de operaciones.', '2026-10-30 18:02:28'),
(102, 7785, 'GoStore', 'superadmin', 'logout', 'Cierre de sesión.', '2026-10-30 18:02:32'),
(103, 9163, 'Diego', 'user', 'user_registered', 'Nueva cuenta registrada: Diego.', '2026-10-30 18:02:55'),
(104, 9163, 'Diego', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 18:03:47'),
(105, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 18:03:53'),
(106, 1, 'Admin', 'admin', 'logout', 'Cierre de sesión.', '2026-10-30 18:05:08'),
(107, 7785, 'GoStore', 'superadmin', 'login', 'Inicio de sesión correcto.', '2026-10-30 18:05:25'),
(108, 7785, 'GoStore', 'superadmin', 'permissions_updated', 'Se actualizaron las restricciones de operaciones.', '2026-10-30 18:06:12'),
(109, 7785, 'GoStore', 'superadmin', 'permissions_updated', 'Se actualizaron las restricciones de operaciones.', '2026-10-30 18:06:35'),
(110, 7785, 'GoStore', 'superadmin', 'logout', 'Cierre de sesión.', '2026-10-30 18:06:41'),
(111, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 18:06:45'),
(112, 1, 'Admin', 'admin', 'logout', 'Cierre de sesión.', '2026-10-30 18:07:01'),
(113, 7785, 'GoStore', 'superadmin', 'login', 'Inicio de sesión correcto.', '2026-10-30 18:07:17'),
(114, 7785, 'GoStore', 'superadmin', 'permissions_updated', 'Se actualizaron las restricciones de operaciones.', '2026-10-30 18:07:38'),
(115, 7785, 'GoStore', 'superadmin', 'logout', 'Cierre de sesión.', '2026-10-30 18:07:45'),
(116, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 18:07:50'),
(117, 1, 'Admin', 'admin', 'user_account_deleted', 'Cuenta eliminada: Diego (ID 9163).', '2026-10-30 18:08:02'),
(118, 1, 'Admin', 'admin', 'logout', 'Cierre de sesión.', '2026-10-30 18:08:12'),
(119, 9274, 'Diego', 'user', 'user_registered', 'Nueva cuenta registrada: Diego.', '2026-10-30 18:08:36'),
(120, 9274, 'Diego', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 18:08:47'),
(121, 9286, 'Daniel', 'user', 'user_registered', 'Nueva cuenta registrada: Daniel.', '2026-10-30 18:09:07'),
(122, 9286, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 18:09:18'),
(123, 9286, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 18:09:20'),
(124, 9286, 'Daniel', 'user', 'account_settings_updated', 'Preferencias actualizadas por Daniel.', '2026-10-30 18:09:24'),
(125, 9286, 'Daniel', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 18:09:30'),
(126, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 18:09:36'),
(127, 1, 'Admin', 'admin', 'account_settings_updated', 'Preferencias actualizadas por Admin.', '2026-10-30 18:09:43'),
(128, 1, 'Admin', 'admin', 'logout', 'Cierre de sesión.', '2026-10-30 18:09:48'),
(129, 7785, 'GoStore', 'superadmin', 'login', 'Inicio de sesión correcto.', '2026-10-30 18:10:04'),
(130, 7785, 'GoStore', 'superadmin', 'permissions_updated', 'Se actualizaron las restricciones de operaciones.', '2026-10-30 18:10:19'),
(131, 7785, 'GoStore', 'superadmin', 'logout', 'Cierre de sesión.', '2026-10-30 18:27:43'),
(132, 9274, 'Diego', 'user', 'login', 'Inicio de sesión correcto.', '2026-10-30 18:28:05'),
(133, 9274, 'Diego', 'user', 'chat_message_sent', 'Mensaje enviado a la cuenta ID 1.', '2026-10-30 18:34:13'),
(134, 9274, 'Diego', 'user', 'chat_message_sent', 'Mensaje enviado a la cuenta ID 1.', '2026-10-30 18:34:36'),
(135, 9274, 'Diego', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 18:34:43'),
(136, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 18:34:48'),
(137, 2787, 'Daniel', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 18:42:54'),
(138, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 18:43:17'),
(139, 1, 'Admin', 'admin', 'logout', 'Cierre de sesión.', '2026-10-30 18:43:35'),
(140, 7785, 'GoStore', 'superadmin', 'login', 'Inicio de sesión correcto.', '2026-10-30 18:43:55'),
(141, 7785, 'GoStore', 'superadmin', 'logout', 'Cierre de sesión.', '2026-10-30 18:56:53'),
(142, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 19:04:54'),
(143, 1, 'Admin', 'admin', 'chat_message_sent', 'Mensaje enviado a la cuenta ID 9274.', '2026-10-30 19:24:20'),
(144, 1, 'Admin', 'admin', 'logout', 'Cierre de sesión.', '2026-10-30 19:24:27'),
(145, 9274, 'Diego', 'user', 'login', 'Inicio de sesión correcto.', '2026-10-30 19:24:34'),
(146, 9274, 'Diego', 'user', 'account_settings_updated', 'Preferencias actualizadas por Diego.', '2026-10-30 19:24:55'),
(147, 9274, 'Diego', 'user', 'account_settings_updated', 'Preferencias actualizadas por Diego.', '2026-10-30 19:24:57'),
(148, 9274, 'Diego', 'user', 'account_settings_updated', 'Preferencias actualizadas por Diego.', '2026-10-30 19:24:58'),
(149, 9274, 'Diego', 'user', 'account_settings_updated', 'Preferencias actualizadas por Diego.', '2026-10-30 19:25:01'),
(150, 9274, 'Diego', 'user', 'logout', 'Cierre de sesión.', '2026-10-30 19:25:51'),
(151, 1, 'Admin', 'admin', 'login', 'Inicio de sesión correcto.', '2026-10-30 19:25:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carousel_images`
--

CREATE TABLE `carousel_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `caption` varchar(180) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carousel_settings`
--

CREATE TABLE `carousel_settings` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `interval_seconds` tinyint(3) UNSIGNED NOT NULL DEFAULT 4,
  `transition_ms` smallint(5) UNSIGNED NOT NULL DEFAULT 650
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `carousel_settings`
--

INSERT INTO `carousel_settings` (`id`, `interval_seconds`, `transition_ms`) VALUES
(1, 1, 350);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_user_id` int(10) UNSIGNED NOT NULL,
  `recipient_user_id` int(10) UNSIGNED NOT NULL,
  `message_type` enum('text','image','video') NOT NULL DEFAULT 'text',
  `message_text` text NOT NULL,
  `media_path` varchar(80) NOT NULL DEFAULT '',
  `media_mime` varchar(50) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `read_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `sender_user_id`, `recipient_user_id`, `message_type`, `message_text`, `media_path`, `media_mime`, `created_at`, `read_at`) VALUES
(18, 9274, 1, 'text', 'Respondeme', '', '', '2026-10-30 18:34:13', '2026-10-30 19:43:22'),
(19, 9274, 1, 'text', '😭🙏', '', '', '2026-10-30 18:34:36', '2026-10-30 19:43:22'),
(20, 1, 9274, 'text', '👋', '', '', '2026-10-30 19:24:20', '2026-10-30 20:24:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat_presence`
--

CREATE TABLE `chat_presence` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `last_seen` datetime NOT NULL,
  `typing_to_user_id` int(10) UNSIGNED DEFAULT NULL,
  `typing_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `chat_presence`
--

INSERT INTO `chat_presence` (`user_id`, `last_seen`, `typing_to_user_id`, `typing_at`) VALUES
(1, '2026-10-30 20:26:27', NULL, NULL),
(7785, '2026-10-30 19:56:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `recipient_user_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(30) NOT NULL,
  `message` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `read_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(12) NOT NULL DEFAULT '',
  `user_id` int(10) UNSIGNED NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `payment_method` varchar(30) NOT NULL,
  `payment_verified_at` datetime DEFAULT NULL,
  `payment_verified_by` int(10) UNSIGNED DEFAULT NULL,
  `status` enum('Pendiente','Aceptado','En camino','Entregado','Cancelado') NOT NULL DEFAULT 'Pendiente',
  `delivery_note` varchar(500) NOT NULL DEFAULT '',
  `privacy_consent_at` datetime DEFAULT NULL,
  `privacy_notice_version` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `code`, `user_id`, `total`, `payment_method`, `payment_verified_at`, `payment_verified_by`, `status`, `delivery_note`, `privacy_consent_at`, `privacy_notice_version`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'GS-003116', 1, 3.00, 'contra_entrega', NULL, NULL, 'Cancelado', 'en mi casa', NULL, NULL, '2026-10-17 13:59:49', '2026-10-25 03:33:49', '2026-10-24 22:33:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_code` varchar(20) NOT NULL DEFAULT '',
  `product_name` varchar(150) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `unit_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `product_code`, `product_name`, `quantity`, `unit_price`) VALUES
(2, 2, 2, 'PR-000002', 'Coca Cola', 1, 3.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(150) NOT NULL,
  `category` varchar(80) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `category`, `description`, `price`, `stock`, `image`, `created_at`) VALUES
(1, 'PR-000001', 'Polos Ashtetics', 'Prendas', 'Polos nuevos, de marca Nike', 15.00, 2, 'f2e105b1ad76164ffd6c155abfa813f3.webp', '2026-10-17 01:21:42'),
(2, 'PR-000002', 'Coca Cola Personal', 'Bebidas', 'Bebida gaseosa refrescante en presentación individual personal para consumo inmediato.', 3.00, 2, '7b9fbce4d80493f3095dbace48a79046.webp', '2026-10-17 01:24:33'),
(3, 'PR-000003', 'Servicio Nauta', 'Tecnologia', 'SERVICIO A SU HOGAR', 20.00, 5, 'cc7b04b14e177d2ec6a455b502d4f9df.jpg', '2026-10-17 01:30:09'),
(4, 'PR-000004', 'Audífonos Wireless', 'Tecnologia', 'Audífonos de alta fidelidad ergonómicos con excelente calidad de sonido en altavoces, ideales para uso diario y dispositivos móviles.', 15.00, 5, '4fd5ba2b7d9ba3df98f27b2302903c7f.jpg', '2026-10-19 13:27:21'),
(5, 'PR-6945A648C7A00B0A', 'Se vende este gato..', 'Juguetes', 'Llevese este gato a un buen precio.. esta choys', 25.00, 12, '24ce97ee7cfac49b8005157e1e6e7c67.jpg', '2026-10-30 08:42:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` tinyint(3) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `sort_order`) VALUES
(49, 4, '4fd5ba2b7d9ba3df98f27b2302903c7f.jpg', 1),
(50, 4, '0dc887635b45ea282c997fb0e673f8c6.jpg', 2),
(740, 3, 'cc7b04b14e177d2ec6a455b502d4f9df.jpg', 1),
(741, 3, 'b96b1077261c2aa0ea537a817b2d30ae.jpg', 2),
(1326, 2, '7b9fbce4d80493f3095dbace48a79046.webp', 1),
(1327, 2, '37711261ca1895d5699e12fbd4f824ec.webp', 2),
(1328, 2, '63f54fdd0b52ce11de533ad1f6058868.webp', 3),
(4377, 1, 'f2e105b1ad76164ffd6c155abfa813f3.webp', 1),
(4378, 1, '093fe0e622d464cdb6cef4232a2f24e7.webp', 2),
(6762, 5, '24ce97ee7cfac49b8005157e1e6e7c67.jpg', 1),
(6763, 5, 'c224206ff6dac65b25602a3c9c21b781.jpg', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `rating` tinyint(3) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `review_votes`
--

CREATE TABLE `review_votes` (
  `review_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `vote` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `superadmin_identity`
--

CREATE TABLE `superadmin_identity` (
  `singleton_id` tinyint(3) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `superadmin_identity`
--

INSERT INTO `superadmin_identity` (`singleton_id`, `user_id`) VALUES
(1, 7785);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(80) NOT NULL,
  `full_name` varchar(120) NOT NULL,
  `email` varchar(190) NOT NULL,
  `phone` varchar(30) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `password_hash` varchar(255) NOT NULL,
  `role` enum('admin','superadmin','user') NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `language` varchar(10) NOT NULL DEFAULT 'es',
  `theme` varchar(30) NOT NULL DEFAULT 'violeta',
  `currency` varchar(3) NOT NULL DEFAULT 'PEN',
  `email_verified_at` datetime DEFAULT NULL,
  `email_verification_token_hash` char(64) DEFAULT NULL,
  `email_verification_expires_at` datetime DEFAULT NULL,
  `totp_secret_ciphertext` varchar(255) DEFAULT NULL,
  `totp_enabled_at` datetime DEFAULT NULL,
  `totp_last_counter` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `full_name`, `email`, `phone`, `address`, `password_hash`, `role`, `created_at`, `language`, `theme`, `currency`, `email_verified_at`, `email_verification_token_hash`, `email_verification_expires_at`, `totp_secret_ciphertext`, `totp_enabled_at`, `totp_last_counter`) VALUES
(1, 'Admin', 'Diego Pacaya Manuyama', 'victoralexicalderonsimarra@gmail.com', '905948589', '', '$2y$10$HWjB/QeTBmo2vBDECYSuPujD27s9GoeZINr7cO2cUHrYHdedIakZi', 'admin', '2026-10-17 01:12:44', 'es', 'azul', 'PEN', '2026-10-26 08:09:14', NULL, NULL, NULL, NULL, 0),
(7785, 'GoStore', 'GoStore', 'deopamay@gmail.com', '', '', '$2y$10$fgrtJ5zt3qozLJU56zPs5erzGMmbfHwAs2OiYr/Qizx07aEklESeG', 'superadmin', '2026-10-30 15:20:44', 'es', 'oscuro', 'PEN', NULL, NULL, NULL, NULL, NULL, 0),
(9274, 'Diego', 'Diego Pacaya Manuyama', 'dexfernandx23@gmail.com', '', '', '$2y$10$RmN3rKS4KdlkGfGasCXqx.p1i.eZa0uvpXJclEgkHL5NPK8XOz3X2', 'user', '2026-10-30 18:08:36', 'es', 'naranja', 'PEN', NULL, NULL, NULL, NULL, NULL, 0),
(9286, 'Daniel', 'Daniel Macuyama Ahuanari', 'daniel@gmail.com', '', '', '$2y$10$VNtiZdh6s.oZr4K6qDNJGeeel57CeSZJHkIAGsO9AXIp.E.L6HKg.', 'user', '2026-10-30 18:09:07', 'es', 'verde', 'PEN', NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_favorites`
--

CREATE TABLE `user_favorites` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_guide_completions`
--

CREATE TABLE `user_guide_completions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `completed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `user_guide_completions`
--

INSERT INTO `user_guide_completions` (`user_id`, `completed_at`) VALUES
(9274, '2026-10-30 18:08:39'),
(9286, '2026-10-30 18:09:09');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `app_permissions`
--
ALTER TABLE `app_permissions`
  ADD PRIMARY KEY (`permission_key`);

--
-- Indices de la tabla `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_audit_log_created` (`created_at`,`id`),
  ADD KEY `idx_audit_log_action` (`action`,`created_at`);

--
-- Indices de la tabla `carousel_images`
--
ALTER TABLE `carousel_images`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carousel_settings`
--
ALTER TABLE `carousel_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_chat_sender_recipient_id` (`sender_user_id`,`recipient_user_id`,`id`),
  ADD KEY `idx_chat_recipient_sender_read` (`recipient_user_id`,`sender_user_id`,`read_at`);

--
-- Indices de la tabla `chat_presence`
--
ALTER TABLE `chat_presence`
  ADD PRIMARY KEY (`user_id`);

--
-- Indices de la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_notifications_recipient_read_created` (`recipient_user_id`,`read_at`,`created_at`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_order_code` (`code`),
  ADD KEY `fk_orders_user` (`user_id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_items_order` (`order_id`),
  ADD KEY `fk_items_product` (`product_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_product_code` (`code`);

--
-- Indices de la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_product_image` (`product_id`,`image`),
  ADD KEY `idx_product_images_order` (`product_id`,`sort_order`,`id`);

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `one_review_per_user_product` (`user_id`,`product_id`),
  ADD KEY `fk_reviews_product` (`product_id`);

--
-- Indices de la tabla `review_votes`
--
ALTER TABLE `review_votes`
  ADD PRIMARY KEY (`review_id`,`user_id`),
  ADD KEY `fk_votes_user` (`user_id`);

--
-- Indices de la tabla `superadmin_identity`
--
ALTER TABLE `superadmin_identity`
  ADD PRIMARY KEY (`singleton_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD PRIMARY KEY (`user_id`,`product_id`),
  ADD KEY `idx_user_favorites_product` (`product_id`);

--
-- Indices de la tabla `user_guide_completions`
--
ALTER TABLE `user_guide_completions`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de la tabla `carousel_images`
--
ALTER TABLE `carousel_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9176;

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10042;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `fk_chat_message_recipient` FOREIGN KEY (`recipient_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_chat_message_sender` FOREIGN KEY (`sender_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `chat_presence`
--
ALTER TABLE `chat_presence`
  ADD CONSTRAINT `fk_chat_presence_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notifications_recipient` FOREIGN KEY (`recipient_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_items_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_items_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `fk_product_images_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `fk_reviews_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reviews_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `review_votes`
--
ALTER TABLE `review_votes`
  ADD CONSTRAINT `fk_votes_review` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_votes_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `superadmin_identity`
--
ALTER TABLE `superadmin_identity`
  ADD CONSTRAINT `fk_superadmin_identity_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `user_favorites`
--
ALTER TABLE `user_favorites`
  ADD CONSTRAINT `fk_user_favorites_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_favorites_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `user_guide_completions`
--
ALTER TABLE `user_guide_completions`
  ADD CONSTRAINT `fk_guide_completion_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
