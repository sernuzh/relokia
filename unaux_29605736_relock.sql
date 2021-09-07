-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql303.unaux.com
-- Generation Time: Sep 07, 2021 at 11:31 AM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unaux_29605736_relock`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Коментатор WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-09-02 11:19:22', '2021-09-02 08:19:22', 'Привіт! Це коментар.\nЩоб почати модерувати, редагувати і видаляти коментарі, перейдіть в розділ Коментарів у Майстерні.\nАватари авторів коментарів завантажуються з сервісу<a href=\"https://uk.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://relock.unaux.com', 'yes'),
(2, 'home', 'http://relock.unaux.com', 'yes'),
(3, 'blogname', 'relokia', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sernuzh@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyoneclone', 'yes'),
(41, 'stylesheet', 'twentytwentyoneclone', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Kiev', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1646122762', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'uk', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:169:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Недавні записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:245:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Останні коментарі</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Архіви</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:158:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Категорії</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(256, 'recovery_mode_email_last_sent', '1630955799', 'yes'),
(283, '_site_transient_timeout_theme_roots', '1631026524', 'no'),
(284, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:20:\"twentytwentyoneclone\";s:7:\"/themes\";}', 'no'),
(235, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1631018584;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"2.1\";s:12:\"twentytwenty\";s:3:\"1.8\";s:15:\"twentytwentyone\";s:3:\"1.4\";s:20:\"twentytwentyoneclone\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.1.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.8.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.4.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(135, 'auth_salt', 'sX:us}z{7<1<:Pm:IXIqNl-)?,b2Pw927V5k&A^GB3)#&|TdlH_>?oHO1]~uOb|@', 'no'),
(136, 'logged_in_key', '%DEQ{{_nf[,`Q~U-!U[unFY(fy~!`*YMM59|EyAt|oj@`[^g:tHYA!0iA~Ee2yrJ', 'no'),
(137, 'logged_in_salt', '|XtkMTz,mw&7X~F*!l1O_%*~JBDC>0^#?^2w}?sY3:f&s|b(blTw1lYCMqT~&)W1', 'no'),
(138, '_site_transient_timeout_browser_0636c5e01a1b1b59e2f960a86a9829b4', '1631175613', 'no'),
(139, '_site_transient_browser_0636c5e01a1b1b59e2f960a86a9829b4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"90.0.4430.72\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(140, '_site_transient_timeout_php_check_3dbf48b9658abaee82651209c2ca7be3', '1631175614', 'no'),
(141, '_site_transient_php_check_3dbf48b9658abaee82651209c2ca7be3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(158, 'finished_updating_comment_type', '1', 'yes'),
(176, '_site_transient_browser_3ae490926f0d82aa0e656c7df0ce1d6e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"86.0.4240.75\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(105, 'cron', 'a:7:{i:1631027968;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1631045968;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1631089167;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1631089213;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1631089214;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1631261968;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:34:\"HTTPS запит невдалий.\";}}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'nonce_key', 'txMLn1$rwHE-1x,0WQy$(R!U^0pN`jRp@6uWg3Qe/@}jf]y0qVHky^[`nG3-AY6/', 'no'),
(116, 'nonce_salt', '*F]t;B/N4bRrg_/%J@0;5I@0K.KzH*hEM<)zO^_!)C:b&s#[ ,p[NQK{MXkMutIa', 'no'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(134, 'auth_key', ':S`/CgK}ELjU}R$::_ICH[2&|*5hqaIgQi 1-3T#O9cd8/TkWDV>#l{b+!5O+1-5', 'no'),
(121, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1630825090;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(122, 'recovery_keys', 'a:1:{s:22:\"ZrtCXpDKEa43PsQbeQtNUS\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BdPaTIbP23p2DqrRkovf9w3z516NE01\";s:10:\"created_at\";i:1630955799;}}', 'yes'),
(234, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/uk/wordpress-5.8.zip\";s:6:\"locale\";s:2:\"uk\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/uk/wordpress-5.8.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1631018578;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}', 'no'),
(274, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1631018584;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:6:\"4.1.12\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/akismet.4.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";s:6:\"tested\";s:3:\"5.8\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:6:\"4.1.10\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(253, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(155, 'can_compress_scripts', '0', 'no'),
(162, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":5,\"critical\":0}', 'yes'),
(175, '_site_transient_timeout_browser_3ae490926f0d82aa0e656c7df0ce1d6e', '1631386472', 'no'),
(254, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(210, 'current_theme', 'Twenty Twenty-One/twentytwentyoneclone', 'yes'),
(211, 'theme_mods_twentytwentyoneclone', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:25:\"display_title_and_tagline\";b:0;}', 'yes'),
(212, 'theme_switched', '', 'yes'),
(281, '_site_transient_timeout_wp_remote_block_patterns_2d940d51455f5e4c1f3360d776ca050a', '1631028324', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(282, '_site_transient_wp_remote_block_patterns_2d940d51455f5e4c1f3360d776ca050a', 'a:13:{i:0;O:8:\"stdClass\":7:{s:2:\"id\";i:184;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:7:\"Heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:290:\"\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We&#8217;re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:12:\"Heading text\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:1:{i:0;s:12:\"core/heading\";}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:402:\"<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.1\"}}} -->\n<h2 class=\"alignwide\" style=\"font-size:48px;line-height:1.1\">We\'re a studio in Berlin with an international practice in architecture, urban planning and interior design. We believe in sharing knowledge and promoting dialogue to increase the creative potential of collaboration.</h2>\n<!-- /wp:heading -->\";}i:1;O:8:\"stdClass\":7:{s:2:\"id\";i:185;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with left-aligned text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1019:\"\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:55%\">\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:29:\"Cover image with quote on top\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1610:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/forest.jpg\",\"dimRatio\":60,\"minHeight\":800,\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-60 has-background-dim\" style=\"min-height:800px\"><img class=\"wp-block-cover__image-background\" alt=\"\" src=\"https://s.w.org/images/core/5.8/forest.jpg\" data-object-fit=\"cover\" /><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"align\":\"wide\",\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"fontSize\":\"64px\"}}} -->\n<h2 class=\"alignwide has-text-color\" style=\"color:#ffe074;font-size:64px\">Forest.</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"55%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:55%\"><!-- wp:spacer {\"height\":330} -->\n<div style=\"height:330px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffe074\"},\"typography\":{\"lineHeight\":\"1.3\",\"fontSize\":\"12px\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffe074;font-size:12px;line-height:1.3\"><em>Even a child knows how valuable the forest is. The fresh, breathtaking smell of trees. Echoing birds flying above that dense magnitude. A stable climate, a sustainable diverse life and a source of culture. Yet, forests and other ecosystems hang in the balance, threatened to become croplands, pasture, and plantations.</em></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:2;O:8:\"stdClass\":7:{s:2:\"id\";i:186;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:35:\"Large header with text and a button\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1055:\"\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:60%\">\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n\n\n\n<div class=\"wp-block-buttons\">\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-column\"></div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:62:\"Large header with background image and text and button on top.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1865:\"<!-- wp:cover {\"url\":\"https://s.w.org/images/core/5.8/art-01.jpg\",\"hasParallax\":true,\"dimRatio\":40,\"customOverlayColor\":\"#000000\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim-40 has-background-dim has-parallax\" style=\"background-image:url(https://s.w.org/images/core/5.8/art-01.jpg);background-color:#000000;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"48px\",\"lineHeight\":\"1.2\"}},\"className\":\"alignwide has-white-color has-text-color\"} -->\n<h2 class=\"alignwide has-white-color has-text-color\" style=\"font-size:48px;line-height:1.2\"><strong><em>Overseas:</em></strong><br><strong><em>1500 — 1960</em></strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"60%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:60%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#ffffff\"}}} -->\n<p class=\"has-text-color\" style=\"color:#ffffff\">An exhibition about the different representations of the ocean throughout time, between the sixteenth and the twentieth century. Taking place in our Open Room in <em>Floor 2</em>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"borderRadius\":0,\"style\":{\"color\":{\"text\":\"#ffffff\",\"background\":\"#000000\"}},\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link has-text-color has-background no-border-radius\" style=\"background-color:#000000;color:#ffffff\">Visit</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div></div>\n<!-- /wp:cover -->\";}i:3;O:8:\"stdClass\":7:{s:2:\"id\";i:196;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:41:\"Media and text in a full height container\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1194:\"\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\">\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What&#8217;s the problem?</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n\n\n\n<div class=\"wp-block-buttons\">\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n</div>\n</div></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Media and text block with image to the left and text and button to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1858:\"<!-- wp:cover {\"customOverlayColor\":\"#ffffff\",\"minHeight\":100,\"minHeightUnit\":\"vh\",\"contentPosition\":\"center center\",\"align\":\"full\"} -->\n<div class=\"wp-block-cover alignfull has-background-dim\" style=\"background-color:#ffffff;min-height:100vh\"><div class=\"wp-block-cover__inner-container\"><!-- wp:media-text {\"mediaLink\":\"https://s.w.org/images/core/5.8/soil.jpg\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"imageFill\":true} -->\n<div class=\"wp-block-media-text alignwide is-stacked-on-mobile is-vertically-aligned-center is-image-fill\" style=\"grid-template-columns:56% auto\"><figure class=\"wp-block-media-text__media\" style=\"background-image:url(https://s.w.org/images/core/5.8/soil.jpg);background-position:50% 50%\"><img src=\"https://s.w.org/images/core/5.8/soil.jpg\" alt=\"Close-up of dried, cracked earth.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":\"32px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000;font-size:32px\"><strong>What\'s the problem?</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":\"17px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:17px\">Trees are more important today than ever before. More than 10,000 products are reportedly made from trees. Through chemistry, the humble woodpile is yielding chemicals, plastics and fabrics that were beyond comprehension when an axe first felled a Texas tree.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:buttons -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-fill\"} -->\n<div class=\"wp-block-button is-style-fill\"><a class=\"wp-block-button__link\">Learn more</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons --></div></div>\n<!-- /wp:media-text --></div></div>\n<!-- /wp:cover -->\";}i:4;O:8:\"stdClass\":7:{s:2:\"id\";i:192;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:37:\"Media and text with image on the left\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:520:\"\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\">\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n\n\n\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the left and text to the right.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:827:\"<!-- wp:media-text {\"align\":\"full\",\"mediaType\":\"image\",\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-media-text alignfull is-stacked-on-mobile is-vertically-aligned-center\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/architecture-04.jpg\" alt=\"Close-up, abstract view of architecture.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"textAlign\":\"center\",\"level\":3,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h3 class=\"has-text-align-center has-text-color\" style=\"color:#000000\"><strong>Open Spaces</strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"align\":\"center\",\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-align-center has-extra-small-font-size\"><a href=\"#\">See case study ↗</a></p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\";}i:5;O:8:\"stdClass\":7:{s:2:\"id\";i:195;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:38:\"Media and text with image on the right\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:685:\"\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\">\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n\n\n\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n</div></div>\n\n\n\n<p></p>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:66:\"Media and text block with image to the right and text to the left.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:6:\"header\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1138:\"<!-- wp:media-text {\"align\":\"full\",\"mediaPosition\":\"right\",\"mediaLink\":\"#\",\"mediaType\":\"image\",\"mediaWidth\":56,\"verticalAlignment\":\"center\",\"className\":\"is-style-default\"} -->\n<div class=\"wp-block-media-text alignfull has-media-on-the-right is-stacked-on-mobile is-vertically-aligned-center is-style-default\" style=\"grid-template-columns:auto 56%\"><figure class=\"wp-block-media-text__media\"><img src=\"https://s.w.org/images/core/5.8/art-02.jpg\" alt=\"A green and brown rural landscape leading into a bright blue ocean and slightly cloudy sky, done in oil paints.\" /></figure><div class=\"wp-block-media-text__content\"><!-- wp:heading {\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h2 class=\"has-text-color\" style=\"color:#000000\"><strong>Shore with Blue Sea</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"17px\"},\"color\":{\"text\":\"#636363\"}}} -->\n<p class=\"has-text-color\" style=\"color:#636363;font-size:17px;line-height:1.1\">Eleanor Harris&nbsp;(American, 1901-1942)</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:6;O:8:\"stdClass\":7:{s:2:\"id\";i:27;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:5:\"Quote\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:656:\"\n<hr class=\"wp-block-separator is-style-default\" />\n\n\n\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img loading=\"lazy\" src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n\n\n\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>&#8220;Contributing makes me feel like I&#8217;m being useful to the planet.&#8221;</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n\n\n\n<hr class=\"wp-block-separator is-style-default\" />\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:0:\"\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:1:{i:0;s:10:\"core/quote\";}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1012:\"<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":150,\"height\":150,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<div class=\"wp-block-image is-style-rounded\"><figure class=\"aligncenter size-large is-resized\"><img src=\"https://s.w.org/images/core/5.8/portrait.jpg\" alt=\"A side profile of a woman in a russet-colored turtleneck and white bag. She looks up with her eyes closed.\" width=\"150\" height=\"150\" /></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:quote {\"align\":\"center\",\"className\":\"is-style-large\"} -->\n<blockquote class=\"wp-block-quote has-text-align-center is-style-large\"><p>\"Contributing makes me feel like I\'m being useful to the planet.\"</p><cite>— Anna Wong, <em>Volunteer</em></cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:separator {\"className\":\"is-style-default\"} -->\n<hr class=\"wp-block-separator is-style-default\" />\n<!-- /wp:separator -->\";}i:7;O:8:\"stdClass\":7:{s:2:\"id\";i:200;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:21:\"Three columns of text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:801:\"\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\">\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n\n\n\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n\n\n\n<p>Stay updated and see our current exhibitions here.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n\n\n\n<p>Get to know our opening times, ticket prices and discounts.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:22:\"Three columns of text.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1496:\"<!-- wp:columns {\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#000000\",\"background\":\"#ffffff\"}}} -->\n<div class=\"wp-block-columns alignfull has-text-color has-background\" style=\"background-color:#ffffff;color:#000000\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"http://wordpress.org\">Virtual Tour ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get a virtual tour of the museum. Ideal for schools and events.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Current Shows ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Stay updated and see our current exhibitions here.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"level\":3,\"style\":{\"typography\":{\"fontSize\":\"24px\",\"lineHeight\":\"1.3\"}}} -->\n<h3 style=\"font-size:24px;line-height:1.3\"><strong><a href=\"https://wordpress.org\">Useful Info ↗</a></strong></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Get to know our opening times, ticket prices and discounts.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:8;O:8:\"stdClass\":7:{s:2:\"id\";i:199;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:34:\"Three columns with images and text\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:2646:\"\n<div class=\"wp-container-61377655956bb wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><div class=\"wp-block-group__inner-container\">\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n\n\n\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n\n\n\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33%\">\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\">\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:67%\">\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n</div>\n\n\n\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man&#8217;s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n</div>\n</div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:77:\"Three columns with images and text, with vertical spacing for an offset look.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"columns\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:3980:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f8f4e4\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f8f4e4\"><!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:heading {\"level\":6,\"style\":{\"color\":{\"text\":\"#000000\"}}} -->\n<h6 class=\"has-text-color\" style=\"color:#000000\">ECOSYSTEM</h6>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"5vw\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:5vw;line-height:1.1\"><strong>Positive growth.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":5} -->\n<div style=\"height:5px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"33.38%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.38%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\"><em>Nature</em>, in the common sense, refers to essences unchanged by man; space, the air, the river, the leaf.&nbsp;<em>Art</em>&nbsp;is applied to the mixture of his will with the same things, as in a house, a canal, a statue, a picture. But his operations taken together are so insignificant, a little chipping, baking, patching, and washing, that in an impression so grand as that of the world on the human mind, they do not vary the result.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33%\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-01.jpg\" alt=\"The sun setting through a dense forest of trees.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"33.62%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:33.62%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-02.jpg\" alt=\"Wind turbines standing on a grassy plain, against a blue sky.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"67%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:67%\"><!-- wp:image {\"align\":\"right\",\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignright size-large\"><img src=\"https://s.w.org/images/core/5.8/outside-03.jpg\" alt=\"The sun shining over a ridge leading down into the shore. In the distance, a car drives down a road.\" /></figure></div>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\",\"width\":\"33%\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\" style=\"flex-basis:33%\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Undoubtedly we have no questions to ask which are unanswerable. We must trust the perfection of the creation so far, as to believe that whatever curiosity the order of things has awakened in our minds, the order of things can satisfy. Every man\'s condition is a solution in hieroglyphic to those inquiries he would put.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns --></div>\n<!-- /wp:group -->\";}i:9;O:8:\"stdClass\":7:{s:2:\"id\";i:201;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:32:\"Three columns with offset images\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1077:\"\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:25%\">\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:45%\">\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n\n\n\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:33:\"Three columns with offset images.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"gallery\";i:1;s:6:\"images\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1753:\"<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-01.jpg\" alt=\"Close-up, abstract view of geometric architecture.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"25%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:25%\"><!-- wp:spacer {\"height\":500} -->\n<div style=\"height:500px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:spacer {\"height\":150} -->\n<div style=\"height:150px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://s.w.org/images/core/5.8/architecture-02.jpg\" alt=\"Close-up, angled view of a window on a white building.\" /></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"45%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:45%\"><!-- wp:image {\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-default\"} -->\n<figure class=\"wp-block-image size-large is-style-default\"><img src=\"https://s.w.org/images/core/5.8/architecture-03.jpg\" alt=\"Close-up of the corner of a white, geometric building with both sharp points and round corners.\" /></figure>\n<!-- /wp:image -->\n\n<!-- wp:spacer {\"height\":285} -->\n<div style=\"height:285px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:10;O:8:\"stdClass\":7:{s:2:\"id\";i:29;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:29:\"Two columns of text and title\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1337:\"\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n\n\n\n<div class=\"wp-block-columns\">\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband&#8217;s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n</div>\n</div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:47:\"Two columns of text preceded by a long heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:1711:\"<!-- wp:heading {\"style\":{\"typography\":{\"fontSize\":38,\"lineHeight\":\"1.4\"}}} -->\n<h2 style=\"font-size:38px;line-height:1.4\"><strong>The voyage had begun, and had begun happily with a soft blue sky, and a calm sea.</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">They followed her on to the deck. All the smoke and the houses had disappeared, and the ship was out in a wide space of sea very fresh and clear though pale in the early light. They had left London sitting on its mud. A very thin line of shadow tapered on the horizon, scarcely thick enough to stand the burden of Paris, which nevertheless rested upon it. They were free of roads, free of mankind, and the same exhilaration at their freedom ran through them all.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"typography\":{\"fontSize\":18}}} -->\n<p style=\"font-size:18px\">The ship was making her way steadily through small waves which slapped her and then fizzled like effervescing water, leaving a little border of bubbles and foam on either side. The colourless October sky above was thinly clouded as if by the trail of wood-fire smoke, and the air was wonderfully salt and brisk. Indeed it was too cold to stand still. Mrs. Ambrose drew her arm within her husband\'s, and as they moved off it could be seen from the way in which her sloping cheek turned up to his that she had something private to communicate.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\";}i:11;O:8:\"stdClass\":7:{s:2:\"id\";i:197;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:39:\"Two columns of text with offset heading\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:1915:\"\n<div class=\"wp-container-6137765598028 wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><div class=\"wp-block-group__inner-container\">\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n\n\n\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\">\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n</div>\n\n\n\n<div class=\"wp-block-column\" style=\"flex-basis:50%\">\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n</div>\n</div>\n\n\n\n<div class=\"wp-block-columns alignwide\">\n<div class=\"wp-block-column\"></div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n</div>\n\n\n\n<div class=\"wp-block-column\">\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n</div>\n</div>\n\n\n\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n</div></div>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:43:\"Two columns of text with an offset heading.\";s:19:\"wpop_viewport_width\";i:1200;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:2:{i:0;s:7:\"columns\";i:1;s:4:\"text\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:2837:\"<!-- wp:group {\"align\":\"full\",\"style\":{\"color\":{\"background\":\"#f2f0e9\"}}} -->\n<div class=\"wp-block-group alignfull has-background\" style=\"background-color:#f2f0e9\"><!-- wp:spacer {\"height\":70} -->\n<div style=\"height:70px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center\"><!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:paragraph {\"style\":{\"typography\":{\"lineHeight\":\"1.1\",\"fontSize\":\"30px\"},\"color\":{\"text\":\"#000000\"}}} -->\n<p class=\"has-text-color\" style=\"color:#000000;font-size:30px;line-height:1.1\"><strong>Oceanic Inspiration</strong></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"width\":\"50%\"} -->\n<div class=\"wp-block-column\" style=\"flex-basis:50%\"><!-- wp:separator {\"customColor\":\"#000000\",\"className\":\"is-style-wide\"} -->\n<hr class=\"wp-block-separator has-text-color has-background is-style-wide\" style=\"background-color:#000000;color:#000000\" />\n<!-- /wp:separator --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:columns {\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide\"><!-- wp:column -->\n<div class=\"wp-block-column\"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">Winding veils round their heads, the women walked on deck. They were now moving steadily down the river, passing the dark shapes of ships at anchor, and London was a swarm of lights with a pale yellow canopy drooping above it. There were the lights of the great theatres, the lights of the long streets, lights that indicated huge squares of domestic comfort, lights that hung high in air.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph {\"style\":{\"color\":{\"text\":\"#000000\"}},\"fontSize\":\"extra-small\"} -->\n<p class=\"has-text-color has-extra-small-font-size\" style=\"color:#000000\">No darkness would ever settle upon those lamps, as no darkness had settled upon them for hundreds of years. It seemed dreadful that the town should blaze for ever in the same spot; dreadful at least to people going away to adventure upon the sea, and beholding it as a circumscribed mound, eternally burnt, eternally scarred. From the deck of the ship the great city appeared a crouched and cowardly figure, a sedentary miser.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":40} -->\n<div style=\"height:40px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:group -->\";}i:12;O:8:\"stdClass\":7:{s:2:\"id\";i:19;s:5:\"title\";O:8:\"stdClass\":1:{s:8:\"rendered\";s:23:\"Two images side by side\";}s:7:\"content\";O:8:\"stdClass\":2:{s:8:\"rendered\";s:647:\"\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n\";s:9:\"protected\";b:0;}s:4:\"meta\";O:8:\"stdClass\":5:{s:10:\"spay_email\";s:0:\"\";s:16:\"wpop_description\";s:41:\"An image gallery with two example images.\";s:19:\"wpop_viewport_width\";i:800;s:16:\"wpop_block_types\";a:0:{}s:11:\"wpop_locale\";s:5:\"en_US\";}s:14:\"category_slugs\";a:1:{i:0;s:7:\"gallery\";}s:13:\"keyword_slugs\";a:1:{i:0;s:4:\"core\";}s:15:\"pattern_content\";s:737:\"<!-- wp:gallery {\"ids\":[null,null],\"linkTo\":\"none\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" alt=\"An aerial view of waves crashing against a shore.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-01.jpg\" data-link=\"#\" /></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" alt=\"An aerial view of a field. A road runs through the upper right corner.\" data-full-url=\"https://s.w.org/images/core/5.8/nature-above-02.jpg\" data-link=\"#\" /></figure></li></ul></figure>\n<!-- /wp:gallery -->\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1631025096:1'),
(4, 1, '_edit_lock', '1630832913:1'),
(17, 17, '_wp_trash_meta_status', 'publish'),
(18, 17, '_wp_trash_meta_time', '1630952361'),
(19, 18, '_edit_lock', '1630952543:1'),
(20, 18, '_wp_trash_meta_status', 'publish'),
(21, 18, '_wp_trash_meta_time', '1630952564'),
(22, 24, '_wp_trash_meta_status', 'publish'),
(23, 24, '_wp_trash_meta_time', '1630957419');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-09-02 11:19:22', '2021-09-02 08:19:22', '[r_test title=”Test work”]This is the description[/r_test]', 'Mini - Wizard', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d1%96%d1%82-%d1%81%d0%b2%d1%96%d1%82', '', '', '2021-09-05 12:04:32', '2021-09-05 09:04:32', '', 0, 'http://relock.unaux.com/?p=1', 0, 'post', '', 1),
(11, 1, '2021-09-05 12:01:17', '2021-09-05 09:01:17', '[r_test]', 'Mini - Wizard', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-09-05 12:01:17', '2021-09-05 09:01:17', '', 1, 'http://relock.unaux.com/?p=11', 0, 'revision', '', 0),
(8, 1, '2021-09-05 11:02:17', '2021-09-05 08:02:17', '[r_test title=”Test work”]This is the description[/r_test]', '', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-09-05 11:02:17', '2021-09-05 08:02:17', '', 1, 'http://relock.unaux.com/?p=8', 0, 'revision', '', 0),
(2, 1, '2021-09-02 11:19:22', '2021-09-02 08:19:22', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці &laquo;Деталі&raquo; власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері &#8212; перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія &laquo;Штучки XYZ&raquo; була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://relock.unaux.com/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-09-02 11:19:22', '2021-09-02 08:19:22', '', 0, 'http://relock.unaux.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-09-02 11:19:22', '2021-09-02 08:19:22', '<!-- wp:heading --><h2>Хто ми</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Наша адреса сайту: http://relock.unaux.com.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Коментарі</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коли відвідувачі залишають коментарі на сайті, ми збираємо дані, що відображаються у формі коментарів, а також IP-адреси відвідувачів та рядку агента-браузера користувача, щоб допомогти виявити спам.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонімний рядок, створений за вашою адресою електронної пошти (також називається хеш), може бути наданий службі Gravatar, щоб дізнатись, чи ви його використовуєте. Політика конфіденційності служби Gravatar доступна тут: https://automattic.com/privacy/. Після схвалення вашого коментаря, ваше зображення профілю буде видно для громадськості в контексті вашого коментарю.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медіафайли</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви завантажуєте зображення на сайт, вам слід уникати завантаження зображень із вбудованими даними про місцезнаходження (EXIF GPS). Відвідувачі сайту можуть завантажувати та витягувати будь-які дані про місцезнаходження із зображень на сайті.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар на нашому сайті, ви можете ввімкнути збереження свого імені, електронної адреси та сайту в файлах cookie. Це для вашої зручності, так що вам не потрібно буде повторно заповнювати ваші дані, коли ви залишатимете наступний коментар. Ці файли cookie зберігатимуться 1 рік.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо у вас є обліковий запис на сайті і ви ввійдете в нього, ми встановимо тимчасовий cookie для визначення підтримки cookies вашим браузером, cookie не містить ніякої особистої інформації і віддаляється при закритті вашого браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Коли ви ввійдете в систему, ми також встановимо декілька файлів cookie, щоб зберегти інформацію про ваш логін та налаштування екрана. Cookie-файли для входу зберігаються 2 дні, а файли cookie-файлів налаштувань екрану - 1 рік. Якщо ви виберете &quot;Запам\'ятати мене&quot;, ваш логін буде зберігатися протягом 2 тижнів. Якщо ви вийдете зі свого облікового запису, файли cookie логіну будуть видалені.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо ви редагуєте або публікуєте статтю, у вашому веб-переглядачі буде збережений додатковий файл cookie. Цей файл cookie не містить особистих даних і просто вказує ідентифікатор статті, яку ви щойно редагували. Його термін дії закінчується через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Вбудований вміст з інших веб-сайтів</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Статті на цьому сайті можуть містити вбудований вміст (наприклад: відео, зображення, статті тощо). Вбудований вміст з інших сайтів веде себе так само, як би користувач відвідав інший сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ці сайти можуть збирати дані про вас, використовувати файли cookie, вбудовані додатки відстеження третіх сторін та стежити за вашою взаємодією з цим вбудованим вмістом. Зокрема відстежувати взаємодію з вбудованим вмістом, якщо у вас є обліковий запис і ви увійшли на цей сайт.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>З ким ми ділимося вашими даними</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви запросите скидання паролю, ваш IP буде вказано в email-повідомленні про скидання.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Як довго ми зберігаємо ваші дані</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар, він та його метадані зберігаються протягом невизначеного терміну. Таким чином, ми можемо автоматично визначати та затверджувати кожен наступний коментар замість того, щоб тримати їх у черзі на модерації.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для користувачів, які реєструються на нашому сайті (якщо такі є), ми зберігаємо надану ними персональну інформацію у їхньому профілі користувача. Всі користувачі можуть переглядати, редагувати або видаляти свої особисті дані в будь-який час (за винятком того, що вони не можуть змінити своє ім\'я користувача). Адміністратори сайту також можуть переглядати та редагувати цю інформацію.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Які права ви маєте відносно своїх даних</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо у вас є обліковий запис на цьому сайті або ви залишили коментарі, ви можете подати запит на отримання експортованого файлу особистих даних які ми зберігаємо про вас, включаючи всі дані, які ви надали нам. Ви також можете вимагати, щоб ми стерли будь-які особисті дані, які ми маємо щодо вас. Це не включає будь-які дані, які ми зобов\'язані зберігати в адміністративних, правових та цілях безпеки.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куди ми відправляємо ваші данні</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коментарі відвідувачів можуть бути перевірені за допомогою служби автоматичного виявлення спаму.</p><!-- /wp:paragraph -->', 'Політика конфіденційності', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-09-02 11:19:22', '2021-09-02 08:19:22', '', 0, 'http://relock.unaux.com/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-09-02 11:20:14', '0000-00-00 00:00:00', '', 'Авточернетка', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-09-02 11:20:14', '0000-00-00 00:00:00', '', 0, 'http://relock.unaux.com/?p=4', 0, 'post', '', 0),
(5, 1, '2021-09-04 22:03:17', '2021-09-04 19:03:17', '[r_test title=\'Test work\']This is the description[/r_test]\n<div class=\"row topper\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row mainn \">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box \">\n<div class=\"row empty-top\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row nav-m\">\n<div class=\"col-sm-2  \">	<i class=\"fa fa-home\"></i></div>\n<div class=\"col-sm-3\" id=\"contactinfo\"> Contact Info</div>\n<div class=\"col-sm-3\" id=\"quantity\"> Quantity</div>\n<div class=\"col-sm-2\" id=\"price\">	Price</div>\n<div class=\"col-sm-2\" id=\"done\">	Done</div>\n</div>\n<div class=\"row dynamical\">\n<div id=\"contactinfo_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Contact Info</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Name</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"name\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"email\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Email</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"email\" class=\"form-control\" id=\"email\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"phone\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Phone</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"phone\"></div>\n</div>\n</form></div>\n<div id=\"quantity_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Quantity</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">quantity</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"number\" max=\"1000\" class=\"form-control\" id=\"quantity_val\"></div>\n</div>\n</form></div>\n<div id=\"price-content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Price</h1>\n<div id=\"price-num\"></div>\n</div>\n<div id=\"done_success_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-success\">Your email was send successfuly</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div id=\"done_warn_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-warn\">We cannot send you email right now. Use alternative way to connect us</div>\n</div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-md-8 grey-box\" id=\"butt-row\">\n<div class=\"row continue-to-done\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-done-btn\">Send</button> <button type=\"button\" class=\"btn btn-light back-to-quantity-btn\">Back</button></div>\n</div>\n<div class=\"row start-again\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary start-again-btn\">Start Again -&gt;</button></div>\n</div>\n<div class=\"row continue-to-price\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-price-btn\">Continue</button> <button type=\"button\" class=\"btn btn-light back-to-contactinfo-btn\">Back</button></div>\n</div>\n<div class=\"row continue-to-quantity\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 continue\"><button type=\"button\" class=\"btn btn-primary continue-to-quantity-btn\">Continue</button></div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div class=\"row botter\">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-10 col-xs-10 col-md-10\">\n<h3>Title</h3>\nThis is the description\n\n</div>\n</div>', '', '', 'publish', 'closed', 'closed', '', 'mini-wizard', '', '', '2021-09-07 17:26:34', '2021-09-07 14:26:34', '', 0, 'http://relock.unaux.com/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-09-04 22:03:17', '2021-09-04 19:03:17', '', 'Mini-Wizard', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-04 22:03:17', '2021-09-04 19:03:17', '', 5, 'http://relock.unaux.com/?p=6', 0, 'revision', '', 0),
(9, 1, '2021-09-05 11:06:10', '2021-09-05 08:06:10', '[r_test title=”Test work”]This is the description[/r_test]', 'Mini-Wizard', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-05 11:06:10', '2021-09-05 08:06:10', '', 5, 'http://relock.unaux.com/?p=9', 0, 'revision', '', 0),
(10, 1, '2021-09-05 11:51:44', '2021-09-05 08:51:44', '[r_test title=”Test work”]This is the description[/r_test]', 'Mini - Wizard', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-09-05 11:51:44', '2021-09-05 08:51:44', '', 1, 'http://relock.unaux.com/?p=10', 0, 'revision', '', 0),
(14, 1, '2021-09-05 12:04:13', '2021-09-05 09:04:13', '[r_test]', 'Mini - Wizard', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-09-05 12:04:13', '2021-09-05 09:04:13', '', 1, 'http://relock.unaux.com/?p=14', 0, 'revision', '', 0),
(12, 1, '2021-09-05 12:02:02', '2021-09-05 09:02:02', '[r_test title=”Test work”]This is the description[/r_test]', 'Mini - Wizard', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-09-05 12:02:02', '2021-09-05 09:02:02', '', 1, 'http://relock.unaux.com/?p=12', 0, 'revision', '', 0),
(19, 1, '2021-09-06 21:39:26', '2021-09-06 18:39:26', '[r_test]', '', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-06 21:39:26', '2021-09-06 18:39:26', '', 5, 'http://relock.unaux.com/?p=19', 0, 'revision', '', 0),
(16, 1, '2021-09-06 21:17:12', '2021-09-06 18:17:12', '<p>[r_test title=”Test work”]This is the description[/r_test]</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-06 21:17:12', '2021-09-06 18:17:12', '', 5, 'http://relock.unaux.com/?p=16', 0, 'revision', '', 0),
(15, 1, '2021-09-05 12:04:32', '2021-09-05 09:04:32', '[r_test title=”Test work”]This is the description[/r_test]', 'Mini - Wizard', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-09-05 12:04:32', '2021-09-05 09:04:32', '', 1, 'http://relock.unaux.com/?p=15', 0, 'revision', '', 0),
(17, 1, '2021-09-06 21:19:21', '2021-09-06 18:19:21', '{\n    \"twentytwentyoneclone::display_title_and_tagline\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-06 18:19:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3d944e7c-8ff0-4416-a7df-2ede9d0c2398', '', '', '2021-09-06 21:19:21', '2021-09-06 18:19:21', '', 0, 'http://relock.unaux.com/?p=17', 0, 'customize_changeset', '', 0),
(18, 1, '2021-09-06 21:22:44', '2021-09-06 18:22:44', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-06 18:22:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b2e3ad9c-d3b6-4668-8d09-c84bae7928d7', '', '', '2021-09-06 21:22:44', '2021-09-06 18:22:44', '', 0, 'http://relock.unaux.com/?p=18', 0, 'customize_changeset', '', 0),
(20, 1, '2021-09-06 21:40:42', '2021-09-06 18:40:42', '[r_test title=”Test work”]This is the description[/r_test]', '', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-06 21:40:42', '2021-09-06 18:40:42', '', 5, 'http://relock.unaux.com/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-09-06 21:59:17', '2021-09-06 18:59:17', '[r_test title=Test work]This is the description[/r_test]', '', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-06 21:59:17', '2021-09-06 18:59:17', '', 5, 'http://relock.unaux.com/?p=21', 0, 'revision', '', 0),
(22, 1, '2021-09-06 22:02:58', '2021-09-06 19:02:58', '[r_test title=\'Test work\']This is the description[/r_test]', '', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-06 22:02:58', '2021-09-06 19:02:58', '', 5, 'http://relock.unaux.com/?p=22', 0, 'revision', '', 0),
(27, 1, '2021-09-07 17:05:55', '2021-09-07 14:05:55', '<div class=\"row topper\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row mainn \">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box \">\n<div class=\"row empty-top\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row nav-m\">\n<div class=\"col-sm-2  \">	<i class=\"fa fa-home\"></i></div>\n<div class=\"col-sm-3\" id=\"contactinfo\"> Contact Info</div>\n<div class=\"col-sm-3\" id=\"quantity\"> Quantity</div>\n<div class=\"col-sm-2\" id=\"price\">	Price</div>\n<div class=\"col-sm-2\" id=\"done\">	Done</div>\n</div>\n<div class=\"row dynamical\">\n<div id=\"contactinfo_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Contact Info</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Name</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"name\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"email\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Email</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"email\" class=\"form-control\" id=\"email\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"phone\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Phone</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"phone\"></div>\n</div>\n</form></div>\n<div id=\"quantity_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Quantity</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">quantity</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"number\" max=\"1000\" class=\"form-control\" id=\"quantity_val\"></div>\n</div>\n</form></div>\n<div id=\"price-content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Price</h1>\n<div id=\"price-num\"></div>\n</div>\n<div id=\"done_success_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-success\">Your email was send successfuly</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div id=\"done_warn_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-warn\">We cannot send you email right now. Use alternative way to connect us</div>\n</div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-md-8 grey-box\">\n<div class=\"row continue-to-done\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-done-btn\">Send</button> <button type=\"button\" class=\"btn btn-light back-to-quantity-btn\">Back</button></div>\n</div>\n<div class=\"row start-again\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary start-again-btn\">Start Again -&gt;</button></div>\n</div>\n<div class=\"row continue-to-price\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-price-btn\">Continue</button> <button type=\"button\" class=\"btn btn-light back-to-contactinfo-btn\">Back</button></div>\n</div>\n<div class=\"row continue-to-quantity\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 continue\"><button type=\"button\" class=\"btn btn-primary continue-to-quantity-btn\">Continue</button></div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div class=\"row botter\">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-10 col-xs-10 col-md-10\">\n<h3>Title</h3>\nThis is the description\n\n</div>\n</div>', '', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-07 17:05:55', '2021-09-07 14:05:55', '', 5, 'http://relock.unaux.com/?p=27', 0, 'revision', '', 0),
(23, 1, '2021-09-06 22:28:47', '2021-09-06 19:28:47', '[r_test title=\'Test work\']This is the description[/r_test]\n<div class=\"container\">\n<div class=\"row topper\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row main \">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box \">\n<div class=\"row empty-top\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row nav-m\">\n<div class=\"col-sm-2  \">	<i class=\"fa fa-home\"></i></div>\n<div class=\"col-sm-3\" id=\"contactinfo\"> Contact Info</div>\n<div class=\"col-sm-3\" id=\"quantity\"> Quantity</div>\n<div class=\"col-sm-2\" id=\"price\">	Price</div>\n<div class=\"col-sm-2\" id=\"done\">	Done</div>\n</div>\n<div class=\"row dynamical\">\n<div id=\"contactinfo_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Contact Info</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Name</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"name\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"email\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Email</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"email\" class=\"form-control\" id=\"email\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"phone\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Phone</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"phone\"></div>\n</div>\n</form>\n\n</div>\n<div id=\"quantity_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Quantity</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">quantity</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"number\" max=\"1000\" class=\"form-control\" id=\"quantity_val\"></div>\n</div>\n</form>\n\n</div>\n<div id=\"price-content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Price</h1>\n<div id=\"price-num\"></div>\n</div>\n<div id=\"done_success_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-success\">Your email was send successfuly</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div id=\"done_warn_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-warn\">We cannot send you email right now. Use alternative way to connect us</div>\n</div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-md-8 grey-box\">\n<div class=\"row continue-to-done\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-done-btn\">Send</button> <button type=\"button\" class=\"btn btn-light back-to-quantity-btn\">Back</button></div>\n</div>\n<div class=\"row start-again\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary start-again-btn\">Start Again -&gt;</button></div>\n</div>\n<div class=\"row continue-to-price\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-price-btn\">Continue</button> <button type=\"button\" class=\"btn btn-light back-to-contactinfo-btn\">Back</button></div>\n</div>\n<div class=\"row continue-to-quantity\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 continue\"><button type=\"button\" class=\"btn btn-primary continue-to-quantity-btn\">Continue</button></div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div class=\"row botter\">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-10 col-xs-10 col-md-10\">\n<h3>Title</h3>\nThis is the description\n\n</div>\n</div>\n</div>', '', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-06 22:28:47', '2021-09-06 19:28:47', '', 5, 'http://relock.unaux.com/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-09-06 22:43:39', '2021-09-06 19:43:39', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-06 19:43:39\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2c38a379-6fa4-483c-95bc-52ad701d437a', '', '', '2021-09-06 22:43:39', '2021-09-06 19:43:39', '', 0, 'http://relock.unaux.com/?p=24', 0, 'customize_changeset', '', 0),
(25, 1, '2021-09-07 16:18:08', '2021-09-07 13:18:08', '[r_test title=\'Test work\']This is the description[/r_test]\n<div class=\"row topper\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row main \">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box \">\n<div class=\"row empty-top\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row nav-m\">\n<div class=\"col-sm-2  \">	<i class=\"fa fa-home\"></i></div>\n<div class=\"col-sm-3\" id=\"contactinfo\"> Contact Info</div>\n<div class=\"col-sm-3\" id=\"quantity\"> Quantity</div>\n<div class=\"col-sm-2\" id=\"price\">	Price</div>\n<div class=\"col-sm-2\" id=\"done\">	Done</div>\n</div>\n<div class=\"row dynamical\">\n<div id=\"contactinfo_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Contact Info</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Name</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"name\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"email\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Email</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"email\" class=\"form-control\" id=\"email\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"phone\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Phone</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"phone\"></div>\n</div>\n</form></div>\n<div id=\"quantity_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Quantity</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">quantity</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"number\" max=\"1000\" class=\"form-control\" id=\"quantity_val\"></div>\n</div>\n</form></div>\n<div id=\"price-content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Price</h1>\n<div id=\"price-num\"></div>\n</div>\n<div id=\"done_success_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-success\">Your email was send successfuly</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div id=\"done_warn_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-warn\">We cannot send you email right now. Use alternative way to connect us</div>\n</div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-md-8 grey-box\">\n<div class=\"row continue-to-done\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-done-btn\">Send</button> <button type=\"button\" class=\"btn btn-light back-to-quantity-btn\">Back</button></div>\n</div>\n<div class=\"row start-again\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary start-again-btn\">Start Again -&gt;</button></div>\n</div>\n<div class=\"row continue-to-price\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-price-btn\">Continue</button> <button type=\"button\" class=\"btn btn-light back-to-contactinfo-btn\">Back</button></div>\n</div>\n<div class=\"row continue-to-quantity\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 continue\"><button type=\"button\" class=\"btn btn-primary continue-to-quantity-btn\">Continue</button></div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div class=\"row botter\">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-10 col-xs-10 col-md-10\">\n<h3>Title</h3>\nThis is the description\n\n</div>\n</div>', '', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-07 16:18:08', '2021-09-07 13:18:08', '', 5, 'http://relock.unaux.com/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-09-07 16:19:55', '2021-09-07 13:19:55', '[r_test title=\'Test work\']This is the description[/r_test]\n<div class=\"row topper\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row mainn \">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box \">\n<div class=\"row empty-top\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row nav-m\">\n<div class=\"col-sm-2  \">	<i class=\"fa fa-home\"></i></div>\n<div class=\"col-sm-3\" id=\"contactinfo\"> Contact Info</div>\n<div class=\"col-sm-3\" id=\"quantity\"> Quantity</div>\n<div class=\"col-sm-2\" id=\"price\">	Price</div>\n<div class=\"col-sm-2\" id=\"done\">	Done</div>\n</div>\n<div class=\"row dynamical\">\n<div id=\"contactinfo_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Contact Info</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Name</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"name\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"email\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Email</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"email\" class=\"form-control\" id=\"email\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"phone\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Phone</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"phone\"></div>\n</div>\n</form></div>\n<div id=\"quantity_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Quantity</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">quantity</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"number\" max=\"1000\" class=\"form-control\" id=\"quantity_val\"></div>\n</div>\n</form></div>\n<div id=\"price-content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Price</h1>\n<div id=\"price-num\"></div>\n</div>\n<div id=\"done_success_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-success\">Your email was send successfuly</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div id=\"done_warn_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-warn\">We cannot send you email right now. Use alternative way to connect us</div>\n</div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-md-8 grey-box\">\n<div class=\"row continue-to-done\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-done-btn\">Send</button> <button type=\"button\" class=\"btn btn-light back-to-quantity-btn\">Back</button></div>\n</div>\n<div class=\"row start-again\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary start-again-btn\">Start Again -&gt;</button></div>\n</div>\n<div class=\"row continue-to-price\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-price-btn\">Continue</button> <button type=\"button\" class=\"btn btn-light back-to-contactinfo-btn\">Back</button></div>\n</div>\n<div class=\"row continue-to-quantity\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 continue\"><button type=\"button\" class=\"btn btn-primary continue-to-quantity-btn\">Continue</button></div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div class=\"row botter\">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-10 col-xs-10 col-md-10\">\n<h3>Title</h3>\nThis is the description\n\n</div>\n</div>', '', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-07 16:19:55', '2021-09-07 13:19:55', '', 5, 'http://relock.unaux.com/?p=26', 0, 'revision', '', 0),
(28, 1, '2021-09-07 17:06:17', '2021-09-07 14:06:17', '[r_test title=\'Test work\']This is the description[/r_test]\n<div class=\"row topper\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row mainn \">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box \">\n<div class=\"row empty-top\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row nav-m\">\n<div class=\"col-sm-2  \">	<i class=\"fa fa-home\"></i></div>\n<div class=\"col-sm-3\" id=\"contactinfo\"> Contact Info</div>\n<div class=\"col-sm-3\" id=\"quantity\"> Quantity</div>\n<div class=\"col-sm-2\" id=\"price\">	Price</div>\n<div class=\"col-sm-2\" id=\"done\">	Done</div>\n</div>\n<div class=\"row dynamical\">\n<div id=\"contactinfo_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Contact Info</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Name</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"name\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"email\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Email</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"email\" class=\"form-control\" id=\"email\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"phone\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Phone</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"phone\"></div>\n</div>\n</form></div>\n<div id=\"quantity_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Quantity</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">quantity</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"number\" max=\"1000\" class=\"form-control\" id=\"quantity_val\"></div>\n</div>\n</form></div>\n<div id=\"price-content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Price</h1>\n<div id=\"price-num\"></div>\n</div>\n<div id=\"done_success_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-success\">Your email was send successfuly</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div id=\"done_warn_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-warn\">We cannot send you email right now. Use alternative way to connect us</div>\n</div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-md-8 grey-box\">\n<div class=\"row continue-to-done\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-done-btn\">Send</button> <button type=\"button\" class=\"btn btn-light back-to-quantity-btn\">Back</button></div>\n</div>\n<div class=\"row start-again\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary start-again-btn\">Start Again -&gt;</button></div>\n</div>\n<div class=\"row continue-to-price\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-price-btn\">Continue</button> <button type=\"button\" class=\"btn btn-light back-to-contactinfo-btn\">Back</button></div>\n</div>\n<div class=\"row continue-to-quantity\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 continue\"><button type=\"button\" class=\"btn btn-primary continue-to-quantity-btn\">Continue</button></div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div class=\"row botter\">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-10 col-xs-10 col-md-10\">\n<h3>Title</h3>\nThis is the description\n\n</div>\n</div>', '', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-07 17:06:17', '2021-09-07 14:06:17', '', 5, 'http://relock.unaux.com/?p=28', 0, 'revision', '', 0),
(30, 1, '2021-09-07 17:26:34', '2021-09-07 14:26:34', '[r_test title=\'Test work\']This is the description[/r_test]\n<div class=\"row topper\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row mainn \">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box \">\n<div class=\"row empty-top\">\n<div class=\"col-sm-12 col-xs-12 col-md-12\"></div>\n</div>\n<div class=\"row nav-m\">\n<div class=\"col-sm-2  \">	<i class=\"fa fa-home\"></i></div>\n<div class=\"col-sm-3\" id=\"contactinfo\"> Contact Info</div>\n<div class=\"col-sm-3\" id=\"quantity\"> Quantity</div>\n<div class=\"col-sm-2\" id=\"price\">	Price</div>\n<div class=\"col-sm-2\" id=\"done\">	Done</div>\n</div>\n<div class=\"row dynamical\">\n<div id=\"contactinfo_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Contact Info</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Name</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"name\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"email\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Email</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"email\" class=\"form-control\" id=\"email\"></div>\n</div>\n<div class=\"form-group row\">\n				    <label for=\"phone\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">Phone</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"text\" class=\"form-control\" id=\"phone\"></div>\n</div>\n</form></div>\n<div id=\"quantity_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Quantity</h1>\n<form>\n<div class=\"form-group row\">\n				    <label for=\"name\" class=\"col-sm-2 col-md-2 col-xs-2 col-form-label\">quantity</label>\n<div class=\"col-sm-9 col-md-9 col-xs-9\">\n				      <input type=\"number\" max=\"1000\" class=\"form-control\" id=\"quantity_val\"></div>\n</div>\n</form></div>\n<div id=\"price-content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Price</h1>\n<div id=\"price-num\"></div>\n</div>\n<div id=\"done_success_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-success\">Your email was send successfuly</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-xs-8 grey-box\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div id=\"done_warn_content\" class=\"col-sm-10 col-xs-10 col-md-10\">\n<h1>Done</h1>\n<div id=\"done-warn\">We cannot send you email right now. Use alternative way to connect us</div>\n</div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-8 col-xs-8 col-md-8 grey-box\" id=\"butt-row\">\n<div class=\"row continue-to-done\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-done-btn\">Send</button> <button type=\"button\" class=\"btn btn-light back-to-quantity-btn\">Back</button></div>\n</div>\n<div class=\"row start-again\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary start-again-btn\">Start Again -&gt;</button></div>\n</div>\n<div class=\"row continue-to-price\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 \"><button type=\"button\" class=\"btn btn-primary continue-to-price-btn\">Continue</button> <button type=\"button\" class=\"btn btn-light back-to-contactinfo-btn\">Back</button></div>\n</div>\n<div class=\"row continue-to-quantity\">\n<div class=\"col-sm-1 col-xs-1 col-md-1\"></div>\n<div class=\"col-sm-11 col-xs-11 col-md-11 continue\"><button type=\"button\" class=\"btn btn-primary continue-to-quantity-btn\">Continue</button></div>\n</div>\n</div>\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n</div>\n<div class=\"row botter\">\n<div class=\"col-sm-2 col-xs-2 col-md-2\"></div>\n<div class=\"col-sm-10 col-xs-10 col-md-10\">\n<h3>Title</h3>\nThis is the description\n\n</div>\n</div>', '', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-07 17:26:34', '2021-09-07 14:26:34', '', 5, 'http://relock.unaux.com/?p=30', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категорії', '%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"289ec9bd262fda01585d3a86f732b3e95ccd1758f07c252d2f4ca5e7876c3db3\";a:4:{s:10:\"expiration\";i:1631780405;s:2:\"ip\";s:12:\"95.46.140.77\";s:2:\"ua\";s:102:\"Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36\";s:5:\"login\";i:1630570805;}s:64:\"c408c85125927d655ac7442b1ca338eb9597feb6ad999bafbcad8d1cf7095f36\";a:4:{s:10:\"expiration\";i:1631991270;s:2:\"ip\";s:15:\"193.178.190.126\";s:2:\"ua\";s:102:\"Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.75 Safari/537.36\";s:5:\"login\";i:1630781670;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"95.46.140.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bc6OhLjYlSPQeh/HZeB7fNJkvhcgX//', 'admin', 'sernuzh@gmail.com', 'http://relock.unaux.com', '2021-09-02 08:19:22', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
