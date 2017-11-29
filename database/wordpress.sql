-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 29, 2017 at 09:44 AM
-- Server version: 5.5.34
-- PHP Version: 5.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-15 07:31:42', '2017-11-15 07:31:42', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 16, '1', 'hoanggneio@gmaiol.com', '', '::1', '2017-11-29 06:18:42', '2017-11-29 06:18:42', 'fsefesfsefefsef', 0, 'post-trashed', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=312 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:82/wordpress', 'yes'),
(2, 'home', 'http://localhost:82/wordpress', 'yes'),
(3, 'blogname', 'Wordpress 4.8.3', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '3', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '4', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:93:"C:\\Program Files (x86)\\VertrigoServ\\www\\wordpress/wp-content/themes/twentyseventeen/style.css";i:2;s:0:"";}', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'monsterid', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:5:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;s:6:"number";i:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:3;s:9:"show_date";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:5:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:7:{i:0;s:8:"search-2";i:1;s:12:"categories-2";i:2;s:14:"recent-posts-2";i:3;s:10:"archives-2";i:4;s:17:"recent-comments-2";i:5;s:6:"meta-2";i:6;s:7:"pages-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"sortby";s:10:"post_title";s:7:"exclude";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:4:{i:1511983903;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1512027116;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1512027426;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:2:{s:3:"top";i:0;s:6:"social";i:0;}}', 'yes'),
(113, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.8.3";s:12:"last_checked";i:1511940721;}', 'no'),
(114, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1511940721;}', 'no'),
(117, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1511940721;}', 'no'),
(119, 'can_compress_scripts', '1', 'no'),
(132, '_transient_timeout_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '1510775053', 'no'),
(133, '_transient_dash_v2_a5a61dcab273495c31cd79aafebbdc74', '<div class="rss-widget"><p><strong>Lỗi RSS:</strong> WP HTTP Error: cURL error 6: Could not resolve host: vi.wordpress.org</p></div><div class="rss-widget"><p><strong>Lỗi RSS:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(139, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1511978760', 'no'),
(140, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 6: Could not resolve host: planet.wordpress.org</p></div>', 'no'),
(215, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes'),
(227, '_transient_timeout_plugin_slugs', '1512025922', 'no'),
(228, '_transient_plugin_slugs', 'a:2:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";}', 'no'),
(229, 'recently_activated', 'a:0:{}', 'yes'),
(269, '_site_transient_timeout_theme_roots', '1511945539', 'no'),
(270, '_site_transient_theme_roots', 'a:3:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(299, 'category_children', 'a:4:{i:3;a:1:{i:0;i:4;}i:5;a:3:{i:0;i:6;i:1;i:7;i:2;i:8;}i:10;a:4:{i:0;i:11;i:1;i:12;i:2;i:14;i:3;i:15;}i:13;a:3:{i:0;i:16;i:1;i:17;i:2;i:18;}}', 'yes'),
(311, '_transient_is_multi_author', '1', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=593 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1510731386:1'),
(4, 5, '_wp_attached_file', '2017/11/tải-xuống.jpg'),
(5, 5, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:275;s:6:"height";i:183;s:4:"file";s:25:"2017/11/tải-xuống.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"tải-xuống-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:25:"tải-xuống-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(6, 4, '_oembed_6d43fb1dfdc5782201457a4d3e70d393', '{{unknown}}'),
(8, 7, '_oembed_6156055921b7de9af4d85a6b105b5f09', '{{unknown}}'),
(9, 7, '_edit_last', '1'),
(11, 7, '_edit_lock', '1510731731:1'),
(14, 16, '_edit_lock', '1511935733:2'),
(15, 16, '_edit_last', '2'),
(17, 20, '_edit_lock', '1511944056:1'),
(18, 20, '_edit_last', '1'),
(20, 22, '_edit_lock', '1511944162:1'),
(21, 22, '_edit_last', '1'),
(23, 25, '_edit_lock', '1511937068:1'),
(24, 25, '_edit_last', '1'),
(25, 26, '_edit_lock', '1511944009:1'),
(26, 26, '_edit_last', '1'),
(28, 27, '_edit_lock', '1511936994:5'),
(29, 29, '_edit_lock', '1511948556:3'),
(30, 29, '_edit_last', '3'),
(32, 32, '_edit_lock', '1511937031:4'),
(33, 32, '_edit_last', '4'),
(36, 35, '_edit_lock', '1511936794:2'),
(37, 36, '_edit_lock', '1511937318:4'),
(38, 37, '_edit_lock', '1511941546:1'),
(39, 38, '_edit_lock', '1511937181:5'),
(40, 38, '_edit_last', '3'),
(41, 41, '_edit_lock', '1511945925:3'),
(42, 41, '_edit_last', '3'),
(43, 42, '_edit_lock', '1511945908:3'),
(45, 37, '_edit_last', '2'),
(46, 45, '_edit_lock', '1511937186:5'),
(47, 45, '_edit_last', '3'),
(48, 42, '_edit_last', '3'),
(50, 48, '_edit_lock', '1511936820:1'),
(51, 48, '_edit_last', '1'),
(52, 50, '_edit_lock', '1511937033:3'),
(53, 50, '_edit_last', '3'),
(56, 16, '_wp_trash_meta_status', 'publish'),
(57, 16, '_wp_trash_meta_time', '1511937000'),
(58, 16, '_wp_desired_post_slug', 'mua-dong'),
(59, 16, '_wp_trash_meta_comments_status', 'a:1:{i:2;s:1:"0";}'),
(60, 7, '_wp_trash_meta_status', 'publish'),
(61, 7, '_wp_trash_meta_time', '1511937001'),
(62, 7, '_wp_desired_post_slug', '7'),
(63, 4, '_wp_trash_meta_status', 'publish'),
(64, 4, '_wp_trash_meta_time', '1511937001'),
(65, 4, '_wp_desired_post_slug', 'cao-dang-cong-nghe-thu-duc'),
(68, 55, '_edit_lock', '1511944324:1'),
(69, 55, '_edit_last', '1'),
(71, 61, '_edit_lock', '1511937375:4'),
(72, 60, '_edit_lock', '1511943595:1'),
(73, 61, '_edit_last', '4'),
(74, 60, '_edit_last', '1'),
(75, 64, '_edit_lock', '1511945167:4'),
(76, 65, '_edit_last', '4'),
(77, 65, '_edit_lock', '1511937408:4'),
(78, 64, '_edit_last', '4'),
(79, 66, '_edit_lock', '1511937709:5'),
(80, 69, '_edit_lock', '1511947797:1'),
(81, 69, '_edit_last', '1'),
(82, 70, '_edit_last', '4'),
(83, 70, '_edit_lock', '1511937437:4'),
(85, 72, '_edit_last', '4'),
(86, 72, '_edit_lock', '1511937467:4'),
(89, 76, '_edit_last', '4'),
(90, 76, '_edit_lock', '1511937477:4'),
(91, 77, '_edit_lock', '1511937317:2'),
(92, 77, '_edit_last', '2'),
(93, 80, '_edit_lock', '1511945916:4'),
(94, 80, '_edit_last', '4'),
(95, 66, '_edit_last', '5'),
(97, 83, '_edit_last', '4'),
(98, 83, '_edit_lock', '1511937638:5'),
(99, 77, '_wp_trash_meta_status', 'publish'),
(100, 77, '_wp_trash_meta_time', '1511937688'),
(101, 77, '_wp_desired_post_slug', 'lee6-truyen-doc-quan-go-di-len'),
(102, 2, '_edit_lock', '1511937353:2'),
(103, 38, '_wp_trash_meta_status', 'publish'),
(104, 38, '_wp_trash_meta_time', '1511937745'),
(105, 38, '_wp_desired_post_slug', '1-nguoi-ta-noi'),
(106, 88, '_edit_last', '4'),
(107, 88, '_edit_lock', '1511941484:1'),
(108, 45, '_wp_trash_meta_status', 'publish'),
(109, 45, '_wp_trash_meta_time', '1511937783'),
(110, 45, '_wp_desired_post_slug', '2-dang-ngoc-anh-hay-noi'),
(111, 90, '_edit_last', '4'),
(112, 90, '_edit_lock', '1511937651:4'),
(113, 50, '_wp_trash_meta_status', 'publish'),
(114, 50, '_wp_trash_meta_time', '1511937825'),
(115, 50, '_wp_desired_post_slug', '3-moi-nguoi-mot-noi'),
(116, 92, '_edit_last', '4'),
(117, 92, '_edit_lock', '1511937692:4'),
(120, 80, '_wp_trash_meta_status', 'draft'),
(121, 80, '_wp_trash_meta_time', '1511937952'),
(122, 80, '_wp_desired_post_slug', ''),
(123, 98, '_edit_lock', '1511938078:3'),
(124, 98, '_edit_last', '2'),
(129, 80, '_wp_old_slug', '__trashed'),
(130, 98, '_wp_trash_meta_status', 'publish'),
(131, 98, '_wp_trash_meta_time', '1511938236'),
(132, 98, '_wp_desired_post_slug', 'nang-mua-dong'),
(133, 25, '_wp_trash_meta_status', 'publish'),
(134, 25, '_wp_trash_meta_time', '1511938275'),
(135, 25, '_wp_desired_post_slug', '2-cuoc-song-xanh'),
(136, 104, '_menu_item_type', 'post_type'),
(137, 104, '_menu_item_menu_item_parent', '0'),
(138, 104, '_menu_item_object_id', '88'),
(139, 104, '_menu_item_object', 'page'),
(140, 104, '_menu_item_target', ''),
(141, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(142, 104, '_menu_item_xfn', ''),
(143, 104, '_menu_item_url', ''),
(144, 104, '_menu_item_orphaned', '1511938735'),
(145, 105, '_menu_item_type', 'post_type'),
(146, 105, '_menu_item_menu_item_parent', '0'),
(147, 105, '_menu_item_object_id', '90'),
(148, 105, '_menu_item_object', 'page'),
(149, 105, '_menu_item_target', ''),
(150, 105, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(151, 105, '_menu_item_xfn', ''),
(152, 105, '_menu_item_url', ''),
(153, 105, '_menu_item_orphaned', '1511938741'),
(154, 106, '_menu_item_type', 'post_type'),
(155, 106, '_menu_item_menu_item_parent', '0'),
(156, 106, '_menu_item_object_id', '92'),
(157, 106, '_menu_item_object', 'page'),
(158, 106, '_menu_item_target', ''),
(159, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(160, 106, '_menu_item_xfn', ''),
(161, 106, '_menu_item_url', ''),
(162, 106, '_menu_item_orphaned', '1511938744'),
(163, 107, '_menu_item_type', 'post_type'),
(164, 107, '_menu_item_menu_item_parent', '0'),
(165, 107, '_menu_item_object_id', '37'),
(166, 107, '_menu_item_object', 'page'),
(167, 107, '_menu_item_target', ''),
(168, 107, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(169, 107, '_menu_item_xfn', ''),
(170, 107, '_menu_item_url', ''),
(171, 107, '_menu_item_orphaned', '1511938747'),
(172, 108, '_menu_item_type', 'post_type'),
(173, 108, '_menu_item_menu_item_parent', '0'),
(174, 108, '_menu_item_object_id', '60'),
(175, 108, '_menu_item_object', 'page'),
(176, 108, '_menu_item_target', ''),
(177, 108, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(178, 108, '_menu_item_xfn', ''),
(179, 108, '_menu_item_url', ''),
(180, 108, '_menu_item_orphaned', '1511938751'),
(181, 109, '_menu_item_type', 'post_type'),
(182, 109, '_menu_item_menu_item_parent', '0'),
(183, 109, '_menu_item_object_id', '65'),
(184, 109, '_menu_item_object', 'page'),
(185, 109, '_menu_item_target', ''),
(186, 109, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(187, 109, '_menu_item_xfn', ''),
(188, 109, '_menu_item_url', ''),
(189, 109, '_menu_item_orphaned', '1511938760'),
(190, 110, '_menu_item_type', 'post_type'),
(191, 110, '_menu_item_menu_item_parent', '0'),
(192, 110, '_menu_item_object_id', '61'),
(193, 110, '_menu_item_object', 'page'),
(194, 110, '_menu_item_target', ''),
(195, 110, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(196, 110, '_menu_item_xfn', ''),
(197, 110, '_menu_item_url', ''),
(198, 110, '_menu_item_orphaned', '1511938762'),
(199, 111, '_menu_item_type', 'post_type'),
(200, 111, '_menu_item_menu_item_parent', '0'),
(201, 111, '_menu_item_object_id', '70'),
(202, 111, '_menu_item_object', 'page'),
(203, 111, '_menu_item_target', ''),
(204, 111, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(205, 111, '_menu_item_xfn', ''),
(206, 111, '_menu_item_url', ''),
(207, 111, '_menu_item_orphaned', '1511938765'),
(316, 125, '_wp_trash_meta_status', 'publish'),
(317, 125, '_wp_trash_meta_time', '1511939290'),
(318, 128, '_menu_item_type', 'post_type'),
(319, 128, '_menu_item_menu_item_parent', '0'),
(320, 128, '_menu_item_object_id', '92'),
(321, 128, '_menu_item_object', 'page'),
(322, 128, '_menu_item_target', ''),
(323, 128, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(324, 128, '_menu_item_xfn', ''),
(325, 128, '_menu_item_url', ''),
(326, 128, '_menu_item_orphaned', '1511940305'),
(327, 129, '_menu_item_type', 'post_type'),
(328, 129, '_menu_item_menu_item_parent', '0'),
(329, 129, '_menu_item_object_id', '90'),
(330, 129, '_menu_item_object', 'page'),
(331, 129, '_menu_item_target', ''),
(332, 129, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(333, 129, '_menu_item_xfn', ''),
(334, 129, '_menu_item_url', ''),
(335, 129, '_menu_item_orphaned', '1511940305'),
(336, 130, '_menu_item_type', 'post_type'),
(337, 130, '_menu_item_menu_item_parent', '0'),
(338, 130, '_menu_item_object_id', '88'),
(339, 130, '_menu_item_object', 'page'),
(340, 130, '_menu_item_target', ''),
(341, 130, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(342, 130, '_menu_item_xfn', ''),
(343, 130, '_menu_item_url', ''),
(344, 130, '_menu_item_orphaned', '1511940305'),
(345, 131, '_menu_item_type', 'post_type'),
(346, 131, '_menu_item_menu_item_parent', '0'),
(347, 131, '_menu_item_object_id', '83'),
(348, 131, '_menu_item_object', 'page'),
(349, 131, '_menu_item_target', ''),
(350, 131, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(351, 131, '_menu_item_xfn', ''),
(352, 131, '_menu_item_url', ''),
(353, 131, '_menu_item_orphaned', '1511940305'),
(354, 132, '_menu_item_type', 'post_type'),
(355, 132, '_menu_item_menu_item_parent', '0'),
(356, 132, '_menu_item_object_id', '76'),
(357, 132, '_menu_item_object', 'page'),
(358, 132, '_menu_item_target', ''),
(359, 132, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(360, 132, '_menu_item_xfn', ''),
(361, 132, '_menu_item_url', ''),
(362, 132, '_menu_item_orphaned', '1511940305'),
(363, 133, '_menu_item_type', 'post_type'),
(364, 133, '_menu_item_menu_item_parent', '0'),
(365, 133, '_menu_item_object_id', '72'),
(366, 133, '_menu_item_object', 'page'),
(367, 133, '_menu_item_target', ''),
(368, 133, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(369, 133, '_menu_item_xfn', ''),
(370, 133, '_menu_item_url', ''),
(371, 133, '_menu_item_orphaned', '1511940305'),
(372, 134, '_menu_item_type', 'post_type'),
(373, 134, '_menu_item_menu_item_parent', '0'),
(374, 134, '_menu_item_object_id', '70'),
(375, 134, '_menu_item_object', 'page'),
(376, 134, '_menu_item_target', ''),
(377, 134, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(378, 134, '_menu_item_xfn', ''),
(379, 134, '_menu_item_url', ''),
(380, 134, '_menu_item_orphaned', '1511940305'),
(381, 135, '_menu_item_type', 'post_type'),
(382, 135, '_menu_item_menu_item_parent', '0'),
(383, 135, '_menu_item_object_id', '65'),
(384, 135, '_menu_item_object', 'page'),
(385, 135, '_menu_item_target', ''),
(386, 135, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(387, 135, '_menu_item_xfn', ''),
(388, 135, '_menu_item_url', ''),
(389, 135, '_menu_item_orphaned', '1511940305'),
(390, 136, '_menu_item_type', 'post_type'),
(391, 136, '_menu_item_menu_item_parent', '0'),
(392, 136, '_menu_item_object_id', '61'),
(393, 136, '_menu_item_object', 'page'),
(394, 136, '_menu_item_target', ''),
(395, 136, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(396, 136, '_menu_item_xfn', ''),
(397, 136, '_menu_item_url', ''),
(398, 136, '_menu_item_orphaned', '1511940305'),
(399, 137, '_menu_item_type', 'post_type'),
(400, 137, '_menu_item_menu_item_parent', '0'),
(401, 137, '_menu_item_object_id', '66'),
(402, 137, '_menu_item_object', 'page'),
(403, 137, '_menu_item_target', ''),
(404, 137, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(405, 137, '_menu_item_xfn', ''),
(406, 137, '_menu_item_url', ''),
(407, 137, '_menu_item_orphaned', '1511940305'),
(408, 138, '_menu_item_type', 'post_type'),
(409, 138, '_menu_item_menu_item_parent', '0'),
(410, 138, '_menu_item_object_id', '60'),
(411, 138, '_menu_item_object', 'page'),
(412, 138, '_menu_item_target', ''),
(413, 138, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(414, 138, '_menu_item_xfn', ''),
(415, 138, '_menu_item_url', ''),
(416, 138, '_menu_item_orphaned', '1511940306'),
(417, 139, '_menu_item_type', 'post_type'),
(418, 139, '_menu_item_menu_item_parent', '0'),
(419, 139, '_menu_item_object_id', '37'),
(420, 139, '_menu_item_object', 'page'),
(421, 139, '_menu_item_target', ''),
(422, 139, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(423, 139, '_menu_item_xfn', ''),
(424, 139, '_menu_item_url', ''),
(425, 139, '_menu_item_orphaned', '1511940306'),
(426, 140, '_menu_item_type', 'post_type'),
(427, 140, '_menu_item_menu_item_parent', '0'),
(428, 140, '_menu_item_object_id', '2'),
(429, 140, '_menu_item_object', 'page'),
(430, 140, '_menu_item_target', ''),
(431, 140, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(432, 140, '_menu_item_xfn', ''),
(433, 140, '_menu_item_url', ''),
(434, 140, '_menu_item_orphaned', '1511940306');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=160 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-15 07:31:42', '2017-11-15 07:31:42', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-11-15 07:31:42', '2017-11-15 07:31:42', '', 0, 'http://localhost:82/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-15 07:31:42', '2017-11-15 07:31:42', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:82/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-11-15 07:31:42', '2017-11-15 07:31:42', '', 0, 'http://localhost:82/wordpress/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-11-15 07:38:39', '2017-11-15 07:38:39', 'https://www.youtube.com/watch?v=buoA4HaoHP8', 'Cao dang cong nghe thu duc', '', 'trash', 'open', 'open', '', 'cao-dang-cong-nghe-thu-duc__trashed', '', '', '2017-11-29 06:30:01', '2017-11-29 06:30:01', '', 0, 'http://localhost:82/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2017-11-15 07:37:32', '2017-11-15 07:37:32', '', 'tải xuống', '', 'inherit', 'open', 'closed', '', 'tai-xuong', '', '', '2017-11-15 07:37:32', '2017-11-15 07:37:32', '', 4, 'http://localhost:82/wordpress/wp-content/uploads/2017/11/tải-xuống.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2017-11-15 07:38:39', '2017-11-15 07:38:39', 'https://www.youtube.com/watch?v=buoA4HaoHP8', 'Cao dang cong nghe thu duc', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2017-11-15 07:38:39', '2017-11-15 07:38:39', '', 4, 'http://localhost:82/wordpress/2017/11/15/4-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2017-11-15 07:40:47', '2017-11-15 07:40:47', '<iframe src="https://www.youtube.com/embed/qoAqfdlgKmw" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>', 'Manchester United', '', 'trash', 'open', 'open', '', '7__trashed', '', '', '2017-11-29 06:30:01', '2017-11-29 06:30:01', '', 0, 'http://localhost:82/wordpress/?p=7', 0, 'post', '', 0),
(8, 1, '2017-11-15 07:40:47', '2017-11-15 07:40:47', 'https://www.youtube.com/watch?v=qoAqfdlgKmw\r\n\r\n&nbsp;', '', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-15 07:40:47', '2017-11-15 07:40:47', '', 7, 'http://localhost:82/wordpress/2017/11/15/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2017-11-15 07:41:07', '2017-11-15 07:41:07', 'https://www.youtube.com/watch?v=qoAqfdlgKmw\r\n\r\n&nbsp;', 'Manchester United', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-15 07:41:07', '2017-11-15 07:41:07', '', 7, 'http://localhost:82/wordpress/2017/11/15/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-11-15 07:42:09', '2017-11-15 07:42:09', '<iframe src="https://www.youtube.com/embed/qoAqfdlgKmw" width="560" height="315" frameborder="0" allowfullscreen="allowfullscreen"></iframe>', 'Manchester United', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2017-11-15 07:42:09', '2017-11-15 07:42:09', '', 7, 'http://localhost:82/wordpress/2017/11/15/7-revision-v1/', 0, 'revision', '', 0),
(14, 2, '2017-11-29 06:05:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:05:48', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=14', 0, 'post', '', 0),
(15, 4, '2017-11-29 06:10:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:10:24', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=15', 0, 'post', '', 0),
(16, 2, '2017-11-29 06:11:14', '2017-11-29 06:11:14', 'sgfhhgvdgj', 'Mua dong', '', 'trash', 'open', 'open', '', 'mua-dong__trashed', '', '', '2017-11-29 06:30:00', '2017-11-29 06:30:00', '', 0, 'http://localhost:82/wordpress/?p=16', 0, 'post', '', 0),
(17, 2, '2017-11-29 06:11:14', '2017-11-29 06:11:14', 'sgfhhgvdgj', 'Mua dong', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2017-11-29 06:11:14', '2017-11-29 06:11:14', '', 16, 'http://localhost:82/wordpress/2017/11/29/16-revision-v1/', 0, 'revision', '', 0),
(18, 5, '2017-11-29 06:12:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:12:55', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=18', 0, 'post', '', 0),
(19, 5, '2017-11-29 06:13:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:13:02', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=19', 0, 'page', '', 0),
(20, 4, '2017-11-29 06:22:03', '2017-11-29 06:22:03', 'Nhìn vào hư không... ngước vô định vào xa xăm\r\nThở dài tiếc nuối biết bao ân hận... với một người\r\nNặng lời nhau đau vỡ trái tim, người tổn thương.. đi rồi\r\nNhận ra phải sống xa anh chẳng dễ dàng\r\n\r\nOng đã biết... cần hoa lấy mật\r\nBiết đợi nắng.. sưởi ấm mỗi ngày\r\nEm giờ không trẻ con như trước\r\nsẽ không để lạc nhau dù một bước\r\n\r\nChorus:\r\nNếu quá khứ có trở lại\r\nHứa với anh - sẽ chẳng còn sự khờ dại và\r\nsẽ yêu anh êm đềm vững chãi\r\nGió thôi gợn sóng trả lại mặt hồ yên ả\r\n\r\nCó những nỗi nhớ lấn át\r\nChẳng biết vui bao giờ để nở nụ cười buồn\r\nTrái tim em bây giờ chẳng khác,\r\nCó cả thế giới nhưng trong lòng lại chơi vơi\r\nVì anh chính là cả cuộc đời\r\n(anh chiếm hết cả cuộc đời)\r\n\r\nGiang tấu:\r\nTừ lâu tôi nghĩ rằng bao ngốc nghếch chịu đựng vì yêu ai cũng trải qua\r\nNgười yêu dỗi hờn hay trách móc là quan tâm đến ta.\r\nChẳng hiểu sao hai đứa cứ xa dần, thương nhưng vẫn không sao lại gần nữa...\r\n\r\nChorus cuối:\r\nNhắm mắt nhớ phút đắm đuối\r\nLúc đôi môi anh thì thầm gọi nhẹ "babe"\r\nThắm thiết hôn từ sau\r\nCó những cảm giác ám ảnh chẳng thề phai màu...\r\n\r\n(I just cant stop missing you bae...)\r\nNhưng không - ta đã kết thúc\r\nChẳng thể nói ra lời thật lòng muộn màng để nói câu\r\n"Em xin lỗi..."\r\nBuông xuôi quá khứ chấp nhận vùi bao nhớ thương\r\ndù ngọt đắng... cũng chỉ vì anh\r\n\r\nEnd:\r\nNặng lời nhau đau vỡ trái tim, người tổn thương.. không về', '1. Sống Xa Anh Chẳng Dễ Dàng - Bảo Anh', '', 'publish', 'open', 'open', '', '1-song-xa-anh-chang-de-dang-bao-anh', '', '', '2017-11-29 08:29:46', '2017-11-29 08:29:46', '', 0, 'http://localhost:82/wordpress/?p=20', 0, 'post', '', 0),
(21, 4, '2017-11-29 06:22:03', '2017-11-29 06:22:03', 'Nhìn vào hư không... ngước vô định vào xa xăm\r\nThở dài tiếc nuối biết bao ân hận... với một người\r\nNặng lời nhau đau vỡ trái tim, người tổn thương.. đi rồi\r\nNhận ra phải sống xa anh chẳng dễ dàng\r\n\r\nOng đã biết... cần hoa lấy mật\r\nBiết đợi nắng.. sưởi ấm mỗi ngày\r\nEm giờ không trẻ con như trước\r\nsẽ không để lạc nhau dù một bước\r\n\r\nChorus:\r\nNếu quá khứ có trở lại\r\nHứa với anh - sẽ chẳng còn sự khờ dại và\r\nsẽ yêu anh êm đềm vững chãi\r\nGió thôi gợn sóng trả lại mặt hồ yên ả\r\n\r\nCó những nỗi nhớ lấn át\r\nChẳng biết vui bao giờ để nở nụ cười buồn\r\nTrái tim em bây giờ chẳng khác,\r\nCó cả thế giới nhưng trong lòng lại chơi vơi\r\nVì anh chính là cả cuộc đời\r\n(anh chiếm hết cả cuộc đời)\r\n\r\nGiang tấu:\r\nTừ lâu tôi nghĩ rằng bao ngốc nghếch chịu đựng vì yêu ai cũng trải qua\r\nNgười yêu dỗi hờn hay trách móc là quan tâm đến ta.\r\nChẳng hiểu sao hai đứa cứ xa dần, thương nhưng vẫn không sao lại gần nữa...\r\n\r\nChorus cuối:\r\nNhắm mắt nhớ phút đắm đuối\r\nLúc đôi môi anh thì thầm gọi nhẹ "babe"\r\nThắm thiết hôn từ sau\r\nCó những cảm giác ám ảnh chẳng thề phai màu...\r\n\r\n(I just cant stop missing you bae...)\r\nNhưng không - ta đã kết thúc\r\nChẳng thể nói ra lời thật lòng muộn màng để nói câu\r\n"Em xin lỗi..."\r\nBuông xuôi quá khứ chấp nhận vùi bao nhớ thương\r\ndù ngọt đắng... cũng chỉ vì anh\r\n\r\nEnd:\r\nNặng lời nhau đau vỡ trái tim, người tổn thương.. không về', '1. Sống Xa Anh Chẳng Dễ Dàng - Bảo Anh', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2017-11-29 06:22:03', '2017-11-29 06:22:03', '', 20, 'http://localhost:82/wordpress/2017/11/29/20-revision-v1/', 0, 'revision', '', 0),
(22, 4, '2017-11-29 06:22:57', '2017-11-29 06:22:57', 'Trái tim của em rất đau\r\nChỉ muốn buông tình ta ở đây\r\nVì cho đến giờ chẳng có ai biết em tồn tại\r\nNhững lần chào nhau bối rối\r\nNgười ở bên cạnh anh chẳng nghi ngờ\r\nLòng em lại chẳng nhẹ nhàng\r\nChorus:\r\nLời biệt ly buồn đến mấy cũng không thể nào làm cho em gục ngã đến mức tuyệt vọng\r\nChỉ là vết thương sâu một chút thôi anh àh\r\nNgày mà anh tìm đến, em tin anh thật lòng\r\nVà yêu em bằng những cảm xúc tự nguyện\r\nLàm em quá yêu nên mù quáng đến yếu lòng\r\nLà ngày chúng ta bắt đầu những sai lầm\r\nDù cho bây giờ trái tim anh dành hết cho em và yêu em rất nhiều\r\nNhưng sau này sẽ ra sao?\r\nEm không thể cố tiếp tục nữa ...\r\n(Chẳng bao giờ em trách anh\r\nChỉ biết im lặng như thế thôi\r\nKhóc trong lòng không nói ra... mới xót xa)\r\nLời 2:\r\nSáng nay mình em trước gương\r\nChợt nhớ một người em rất thương\r\nMột người đã làm cuộc sống em khác đi rất nhiều\r\nNếu sau này anh vẫn thế\r\nThì hãy trân trọng người ở bên cạnh\r\nVà yêu người ấy thật nhiều', '2. Trái Tim Em Cũng Biết Đau  - Bảo Anh', '', 'publish', 'open', 'open', '', '2-trai-tim-em-cung-biet-dau-bao-anh', '', '', '2017-11-29 08:31:38', '2017-11-29 08:31:38', '', 0, 'http://localhost:82/wordpress/?p=22', 0, 'post', '', 0),
(23, 1, '2017-11-29 06:15:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:15:32', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=23', 0, 'post', '', 0),
(24, 4, '2017-11-29 06:22:57', '2017-11-29 06:22:57', 'Trái tim của em rất đau\r\nChỉ muốn buông tình ta ở đây\r\nVì cho đến giờ chẳng có ai biết em tồn tại\r\nNhững lần chào nhau bối rối\r\nNgười ở bên cạnh anh chẳng nghi ngờ\r\nLòng em lại chẳng nhẹ nhàng\r\nChorus:\r\nLời biệt ly buồn đến mấy cũng không thể nào làm cho em gục ngã đến mức tuyệt vọng\r\nChỉ là vết thương sâu một chút thôi anh àh\r\nNgày mà anh tìm đến, em tin anh thật lòng\r\nVà yêu em bằng những cảm xúc tự nguyện\r\nLàm em quá yêu nên mù quáng đến yếu lòng\r\nLà ngày chúng ta bắt đầu những sai lầm\r\nDù cho bây giờ trái tim anh dành hết cho em và yêu em rất nhiều\r\nNhưng sau này sẽ ra sao?\r\nEm không thể cố tiếp tục nữa ...\r\n(Chẳng bao giờ em trách anh\r\nChỉ biết im lặng như thế thôi\r\nKhóc trong lòng không nói ra... mới xót xa)\r\nLời 2:\r\nSáng nay mình em trước gương\r\nChợt nhớ một người em rất thương\r\nMột người đã làm cuộc sống em khác đi rất nhiều\r\nNếu sau này anh vẫn thế\r\nThì hãy trân trọng người ở bên cạnh\r\nVà yêu người ấy thật nhiều', '2. Trái Tim Em Cũng Biết Đau  - Bảo Anh', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2017-11-29 06:22:57', '2017-11-29 06:22:57', '', 22, 'http://localhost:82/wordpress/2017/11/29/22-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2017-11-29 06:17:50', '2017-11-29 06:17:50', 'sự sống của con người là tuyet dep hùng vĩ nhất thời đại chấm chấm chấm hãy trân trọng sự sống của mình đừng để sự sống trôi qua vô nghĩa nhé .............', '12.cuộc sống xanh', '', 'trash', 'open', 'open', '', '2-cuoc-song-xanh__trashed', '', '', '2017-11-29 06:51:15', '2017-11-29 06:51:15', '', 0, 'http://localhost:82/wordpress/?p=25', 0, 'post', '', 0),
(26, 4, '2017-11-29 06:23:44', '2017-11-29 06:23:44', 'Em là ai từ đâu bước đến nơi đây dịu dàng chân phương\r\nEm là ai tựa như ánh nắng ban mai ngọt ngào trong sương\r\nNgắm em thật lâu con tim anh yếu mềm\r\nĐắm say từ phút đó từng giây trôi yêu thêm.\r\n\r\nBao ngày qua bình minh đánh thức xua tan bộn bề nơi anh\r\nBao ngày qua niềm thương nỗi nhớ bay theo bầu trời trong xanh\r\nLiếc đôi hàng mi mong manh anh thẫn thờ\r\nMuốn hôn nhẹ mái tóc bờ môi em, anh mơ.\r\n\r\n[ĐK:]\r\nCầm tay anh, dựa vai anh\r\nKề bên anh nơi này có anh\r\nGió mang câu tình ca\r\nNgàn ánh sao vụt qua nhẹ ôm lấy em\r\n(Yêu em thương em con tim anh chân thành).\r\n\r\nCầm tay anh, dựa vai anh\r\nKề bên anh nơi này có anh\r\nKhép đôi mi thật lâu\r\nNguyện mãi bên cạnh nhau\r\nYêu say đắm như ngày đầu.\r\n\r\nMùa xuân đến bình yên cho anh những giấc mơ\r\nHạ lưu giữ ngày mưa ngọt ngào nên thơ\r\nMùa thu lá vàng rơi đông sang anh nhớ em\r\nTình yêu bé nhỏ xin dành tặng riêng em.\r\n\r\n[Rap:]\r\nCòn đó tiếng nói ấy bên tai vấn vương bao ngày qua\r\nÁnh mắt bối rối nhớ thương bao ngày qua\r\nYêu em anh thẫn thờ, con tim bâng khuâng đâu có ngờ\r\nChẳng bao giờ phải mong chờ\r\nĐợi ai trong chiều hoàng hôn mờ\r\nĐắm chìm hoà vào vần thơ\r\nNgắm nhìn khờ dại mộng mơ\r\nĐừng bước vội vàng rồi làm ngơ\r\nLạnh lùng đó làm bộ dạng thờ ơ\r\nNhìn anh đi em nha\r\nHướng nụ cười cho riêng anh nha\r\nĐơn giản là yêu con tim anh lên tiếng thôi.\r\n\r\n* Uhhhhhhhh nhớ thương em\r\nUhhhhhhhh nhớ thương em lắm\r\nAhhhhhhh phía sau chân trời\r\nCó ai băng qua lối về cùng em đi trên đoạn đường dài.', '3. Nơi Này Có Anh - Sơn Tùng M-TP', '', 'publish', 'open', 'open', '', '3-noi-nay-co-anh-son-tung-m-tp', '', '', '2017-11-29 08:29:10', '2017-11-29 08:29:10', '', 0, 'http://localhost:82/wordpress/?p=26', 0, 'post', '', 0),
(27, 5, '2017-11-29 06:20:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:20:10', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=27', 0, 'post', '', 0),
(28, 4, '2017-11-29 06:23:44', '2017-11-29 06:23:44', 'Em là ai từ đâu bước đến nơi đây dịu dàng chân phương\r\nEm là ai tựa như ánh nắng ban mai ngọt ngào trong sương\r\nNgắm em thật lâu con tim anh yếu mềm\r\nĐắm say từ phút đó từng giây trôi yêu thêm.\r\n\r\nBao ngày qua bình minh đánh thức xua tan bộn bề nơi anh\r\nBao ngày qua niềm thương nỗi nhớ bay theo bầu trời trong xanh\r\nLiếc đôi hàng mi mong manh anh thẫn thờ\r\nMuốn hôn nhẹ mái tóc bờ môi em, anh mơ.\r\n\r\n[ĐK:]\r\nCầm tay anh, dựa vai anh\r\nKề bên anh nơi này có anh\r\nGió mang câu tình ca\r\nNgàn ánh sao vụt qua nhẹ ôm lấy em\r\n(Yêu em thương em con tim anh chân thành).\r\n\r\nCầm tay anh, dựa vai anh\r\nKề bên anh nơi này có anh\r\nKhép đôi mi thật lâu\r\nNguyện mãi bên cạnh nhau\r\nYêu say đắm như ngày đầu.\r\n\r\nMùa xuân đến bình yên cho anh những giấc mơ\r\nHạ lưu giữ ngày mưa ngọt ngào nên thơ\r\nMùa thu lá vàng rơi đông sang anh nhớ em\r\nTình yêu bé nhỏ xin dành tặng riêng em.\r\n\r\n[Rap:]\r\nCòn đó tiếng nói ấy bên tai vấn vương bao ngày qua\r\nÁnh mắt bối rối nhớ thương bao ngày qua\r\nYêu em anh thẫn thờ, con tim bâng khuâng đâu có ngờ\r\nChẳng bao giờ phải mong chờ\r\nĐợi ai trong chiều hoàng hôn mờ\r\nĐắm chìm hoà vào vần thơ\r\nNgắm nhìn khờ dại mộng mơ\r\nĐừng bước vội vàng rồi làm ngơ\r\nLạnh lùng đó làm bộ dạng thờ ơ\r\nNhìn anh đi em nha\r\nHướng nụ cười cho riêng anh nha\r\nĐơn giản là yêu con tim anh lên tiếng thôi.\r\n\r\n* Uhhhhhhhh nhớ thương em\r\nUhhhhhhhh nhớ thương em lắm\r\nAhhhhhhh phía sau chân trời\r\nCó ai băng qua lối về cùng em đi trên đoạn đường dài.', '3. Nơi Này Có Anh - Sơn Tùng M-TP', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-11-29 06:23:44', '2017-11-29 06:23:44', '', 26, 'http://localhost:82/wordpress/2017/11/29/26-revision-v1/', 0, 'revision', '', 0),
(29, 4, '2017-11-29 06:24:18', '2017-11-29 06:24:18', 'Ngọt lắm những lúc em nắm đôi tay\r\nVà hứa sẽ mãi yêu chỉ anh đây\r\nTừ khi em qua nơi này\r\nAnh thấy vui biết mấy\r\nRồi nắng sớm mới ấm vẫn chưa vơi\r\nCon tim vang tiếng ca vui cười\r\nVì em mang niềm vui tới nơi anh\r\nNhư người may mắn nhất trên đời\r\n\r\nNào đâu.....\r\nChẳng đc bấy lâu\r\nLại phải xa cách nhau\r\nCố nén nỗi đau khi cơn mưa ngâu vụn vỡ\r\nĐêm về lại mơ\r\nSớm ra lại bơ vơ còn xa em là nhớ\r\n\r\nChỉ là đôi môi\r\nChỉ là..\r\nVài câu yêu thương thôi mà\r\nEm đã khiến anh yêu em mãi không thể phai phôi\r\nAnh mong em đừng thay đổi\r\nVì anh đã quá yêu em mất rồi\r\nVì yêu em ,xa em quanh anh chỉ còn bóng tối\r\nChờ đợi ngày mai\r\nChờ...\r\nMột ngày gần trong tương lai\r\nChờ...\r\nNgày 2 ta đc sánh đôi vai được bên nhau mãi mãi\r\ndẫu ..\r\nAnh có làm gì sai\r\nCũng sẽ không một ai có thể chia 2 ta chung bước mãi\r\ntrên một con đường dài.....\r\n\r\nĐếm,đếm,đếm,đếm,đếm,.......\r\nAnh đếm ngày xa em\r\n......\r\nRap :\r\n\r\n1,2,3,4,5,6,7 ...ngày trôi,\r\nBiết em giờ có nhớ về anh hay nhớ về ai\r\nBao ngày thật là dài khi anh không có em ở bên cạnh\r\nAnh cảm thấy rất giá lạnh\r\nMà làm sao cho em hiểu thấu khi mình không ở bên nhau\r\n...\r\nMonday ..tuesday...wednesday...thursday...friday ...saturday...sun day..\r\nOh week\r\nAnh... chẳng thể nghĩ về ai chỉ nghĩ về em\r\nNỗi buồn thì anh không thể đếm\r\nNỗi nhớ em thì lại càng tăng thêm\r\nNgọt ngào đôi môi không thể nếm\r\nPhải làm sao khi không em mỗi đêm...', '4. Đếm Ngày Xa Em - OnlyC , Lou Hoàng', '', 'publish', 'open', 'open', '', '4-dem-ngay-xa-em-onlyc-lou-hoang', '', '', '2017-11-29 09:01:52', '2017-11-29 09:01:52', '', 0, 'http://localhost:82/wordpress/?p=29', 0, 'post', '', 0),
(30, 3, '2017-11-29 06:19:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:19:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=30', 0, 'post', '', 0),
(31, 4, '2017-11-29 06:24:18', '2017-11-29 06:24:18', 'Ngọt lắm những lúc em nắm đôi tay\r\nVà hứa sẽ mãi yêu chỉ anh đây\r\nTừ khi em qua nơi này\r\nAnh thấy vui biết mấy\r\nRồi nắng sớm mới ấm vẫn chưa vơi\r\nCon tim vang tiếng ca vui cười\r\nVì em mang niềm vui tới nơi anh\r\nNhư người may mắn nhất trên đời\r\n\r\nNào đâu.....\r\nChẳng đc bấy lâu\r\nLại phải xa cách nhau\r\nCố nén nỗi đau khi cơn mưa ngâu vụn vỡ\r\nĐêm về lại mơ\r\nSớm ra lại bơ vơ còn xa em là nhớ\r\n\r\n\r\nChỉ là đôi môi\r\nChỉ là..\r\nVài câu yêu thương thôi mà\r\nEm đã khiến anh yêu em mãi không thể phai phôi\r\nAnh mong em đừng thay đổi\r\nVì anh đã quá yêu em mất rồi\r\nVì yêu em ,xa em quanh anh chỉ còn bóng tối\r\nChờ đợi ngày mai\r\nChờ...\r\nMột ngày gần trong tương lai\r\nChờ...\r\nNgày 2 ta đc sánh đôi vai được bên nhau mãi mãi\r\ndẫu ..\r\nAnh có làm gì sai\r\nCũng sẽ không một ai có thể chia 2 ta chung bước mãi\r\ntrên một con đường dài.....\r\n\r\nĐếm,đếm,đếm,đếm,đếm,.......\r\nAnh đếm ngày xa em\r\n......\r\nRap :\r\n\r\n1,2,3,4,5,6,7 ...ngày trôi,\r\nBiết em giờ có nhớ về anh hay nhớ về ai\r\nBao ngày thật là dài khi anh không có em ở bên cạnh\r\nAnh cảm thấy rất giá lạnh\r\nMà làm sao cho em hiểu thấu khi mình không ở bên nhau\r\n...\r\nMonday ..tuesday...wednesday...thursday...friday ...saturday...sun day..\r\nOh week\r\nAnh... chẳng thể nghĩ về ai chỉ nghĩ về em\r\nNỗi buồn thì anh không thể đếm\r\nNỗi nhớ em thì lại càng tăng thêm\r\nNgọt ngào đôi môi không thể nếm\r\nPhải làm sao khi không em mỗi đêm...', '4. Đếm Ngày Xa Em - OnlyC , Lou Hoàng', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2017-11-29 06:24:18', '2017-11-29 06:24:18', '', 29, 'http://localhost:82/wordpress/2017/11/29/29-revision-v1/', 0, 'revision', '', 0),
(32, 4, '2017-11-29 06:25:09', '2017-11-29 06:25:09', 'Chạm nhẹ vào đôi mắt\r\nChạm nhẹ vào bờ vai\r\nChạm nhẹ vào đôi môi\r\nNgày mai xa anh rồi\r\n\r\nChạm nhẹ vào trí nhớ\r\nChạm nhẹ vào cơn mơ\r\nMình đã chạm khẽ vào nhau những ngày ngây thơ\r\n\r\nAnh yêu cô gái nhỏ bé\r\nTin vào những lời bài hát\r\nTin rằng nếu khóc trong mưa sẽ bớt đau hơn\r\nAnh yêu cô gái năm ấy\r\nTin vào những điều viển vông\r\nRằng tay và tay sẽ nắm lấy nhau tận cuối cuộc đời\r\n\r\nThời gian xoá đi những ngây thơ những điều vội vàng như trong giấc mơ\r\nĐể lại những cơn đau vu vơ chẳng còn bất ngờ\r\nMột mai sớm kia em có thấy giữa lồng ngực mình đau khi nhớ anh\r\nThì đừng vội khóc hãy xiết tay anh nơi e bình yên\r\n\r\nĐừng hôn nếu môi em chưa quên dư vị ngọt ngào hai ta đã trao\r\nĐừng ôm nếu em thấy anh ta chẳng thể vỗ về\r\nĐừng tin nếu chia tay anh ta nói rằng mình không xứng đáng với em\r\nVà đừng vội khóc anh vẫn ở đây cho em bình yên\r\nChạm khẽ tim anh một chút thôi mai xa rồi', '5. Chạm Khẽ Tim Anh Một Chút Thôi - Noo Phước Thịnh', '', 'publish', 'open', 'open', '', '5-cham-khe-tim-anh-mot-chut-thoi-noo-phuoc-thinh', '', '', '2017-11-29 06:25:09', '2017-11-29 06:25:09', '', 0, 'http://localhost:82/wordpress/?p=32', 0, 'post', '', 0),
(33, 1, '2017-11-29 06:17:50', '2017-11-29 06:17:50', 'sự sống của con người là tuyet dep hùng vĩ nhất thời đại chấm chấm chấm hãy trân trọng sự sống của mình đừng để sự sống trôi qua vô nghĩa nhé .............', '2.cuộc sống xanh', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-11-29 06:17:50', '2017-11-29 06:17:50', '', 25, 'http://localhost:82/wordpress/2017/11/29/25-revision-v1/', 0, 'revision', '', 0),
(34, 4, '2017-11-29 06:25:09', '2017-11-29 06:25:09', 'Chạm nhẹ vào đôi mắt\r\nChạm nhẹ vào bờ vai\r\nChạm nhẹ vào đôi môi\r\nNgày mai xa anh rồi\r\n\r\nChạm nhẹ vào trí nhớ\r\nChạm nhẹ vào cơn mơ\r\nMình đã chạm khẽ vào nhau những ngày ngây thơ\r\n\r\nAnh yêu cô gái nhỏ bé\r\nTin vào những lời bài hát\r\nTin rằng nếu khóc trong mưa sẽ bớt đau hơn\r\nAnh yêu cô gái năm ấy\r\nTin vào những điều viển vông\r\nRằng tay và tay sẽ nắm lấy nhau tận cuối cuộc đời\r\n\r\nThời gian xoá đi những ngây thơ những điều vội vàng như trong giấc mơ\r\nĐể lại những cơn đau vu vơ chẳng còn bất ngờ\r\nMột mai sớm kia em có thấy giữa lồng ngực mình đau khi nhớ anh\r\nThì đừng vội khóc hãy xiết tay anh nơi e bình yên\r\n\r\nĐừng hôn nếu môi em chưa quên dư vị ngọt ngào hai ta đã trao\r\nĐừng ôm nếu em thấy anh ta chẳng thể vỗ về\r\nĐừng tin nếu chia tay anh ta nói rằng mình không xứng đáng với em\r\nVà đừng vội khóc anh vẫn ở đây cho em bình yên\r\nChạm khẽ tim anh một chút thôi mai xa rồi', '5. Chạm Khẽ Tim Anh Một Chút Thôi - Noo Phước Thịnh', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-11-29 06:25:09', '2017-11-29 06:25:09', '', 32, 'http://localhost:82/wordpress/2017/11/29/32-revision-v1/', 0, 'revision', '', 0),
(35, 2, '2017-11-29 06:23:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:23:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=35', 0, 'post', '', 0),
(36, 4, '2017-11-29 06:32:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:32:56', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=36', 0, 'page', '', 0),
(37, 2, '2017-11-29 06:34:20', '2017-11-29 06:34:20', 'Cuộc sống mỗi chúng ta không chỉ có một màu, mà có rất nhiều màu sắc, lúc vui, lúc buồn, lúc tức giận....', '4. Cuộc sống muôn màu', '', 'publish', 'closed', 'closed', '', '4-cuoc-song-muon-mau', '', '', '2017-11-29 06:34:20', '2017-11-29 06:34:20', '', 0, 'http://localhost:82/wordpress/?page_id=37', 0, 'page', '', 0),
(38, 3, '2017-11-29 06:30:44', '2017-11-29 06:30:44', 'Day la trng so 1', '1. Nguoi ta noi', '', 'trash', 'closed', 'closed', '', '1-nguoi-ta-noi__trashed', '', '', '2017-11-29 06:42:25', '2017-11-29 06:42:25', '', 0, 'http://localhost:82/wordpress/?page_id=38', 0, 'page', '', 0),
(39, 1, '2017-11-29 06:27:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:27:38', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=39', 0, 'post', '', 0),
(40, 1, '2017-11-29 06:27:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:27:45', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=40', 0, 'post', '', 0),
(41, 1, '2017-11-29 06:28:28', '2017-11-29 06:28:28', 'không có nội dung gi để bàn', '6.Bài post số 6', '', 'publish', 'open', 'open', '', 'bai-post-so-6', '', '', '2017-11-29 09:01:04', '2017-11-29 09:01:04', '', 0, 'http://localhost:82/wordpress/?p=41', 0, 'post', '', 0),
(42, 5, '2017-11-29 06:33:20', '2017-11-29 06:33:20', '<h3 class="title" style="text-align: center;">Gặp tác giả đề xuất cải tiến ‘Giáo dục’ thành ‘Záo zụk’</h3>\r\n<h3 class="title" style="text-align: center;"><strong>PGS.TS Bùi Hiền, tác giả của đề xuất cải tiến chữ cái Tiếng Việt, cho biết ông bị nhiều người chỉ trích, thậm chí nói rằng bị điên dù chưa hiểu rõ câu chuyện.</strong></h3>\r\nVietNamNet đã có cuộc trao đổi PGS.TS <a href="http://vietnamnet.vn/bui-hien-tag165089.html">Bùi Hiền</a>, nguyên Phó Hiệu trưởng Trường ĐH Sư phạm Ngoại ngữ Hà Nội, nguyên Phó Viện trưởng Viện Nội dung và Phương pháp dạy - học phổ thông.\r\n<div class="clearfix HeadCateBG"></div>\r\n<div class="ArticleDetail"></div>', '8. Gặp tác giả đề xuất cải tiến ‘Giáo dục’ thành ‘Záo zụk’', '', 'publish', 'open', 'open', '', '7-gap-tac-gia-de-xuat-cai-tien-giao-duc-thanh-zao-zuk', '', '', '2017-11-29 09:00:45', '2017-11-29 09:00:45', '', 0, 'http://localhost:82/wordpress/?p=42', 0, 'post', '', 0),
(43, 4, '2017-11-29 06:35:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:35:19', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=43', 0, 'page', '', 0),
(44, 3, '2017-11-29 06:30:44', '2017-11-29 06:30:44', 'Day la trng so 1', '1. Nguoi ta noi', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2017-11-29 06:30:44', '2017-11-29 06:30:44', '', 38, 'http://localhost:82/wordpress/2017/11/29/38-revision-v1/', 0, 'revision', '', 0),
(45, 3, '2017-11-29 06:31:22', '2017-11-29 06:31:22', 'Daay laf trpg web ve wordpresss dau tien', '2. Dang Ngoc Anh Hay Noi', '', 'trash', 'closed', 'closed', '', '2-dang-ngoc-anh-hay-noi__trashed', '', '', '2017-11-29 06:43:03', '2017-11-29 06:43:03', '', 0, 'http://localhost:82/wordpress/?page_id=45', 0, 'page', '', 0),
(46, 1, '2017-11-29 06:28:28', '2017-11-29 06:28:28', 'không có nội dung gi để bàn', 'Bài post số 6', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-11-29 06:28:28', '2017-11-29 06:28:28', '', 41, 'http://localhost:82/wordpress/2017/11/29/41-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-11-29 06:28:50', '2017-11-29 06:28:50', 'không có nội dung gi để bàn', '6.Bài post số 6', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-11-29 06:28:50', '2017-11-29 06:28:50', '', 41, 'http://localhost:82/wordpress/2017/11/29/41-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-11-29 06:29:20', '2017-11-29 06:29:20', 'noi dung gi day ta', '7. bài post số 7', '', 'publish', 'open', 'open', '', '7-bai-post-so-7', '', '', '2017-11-29 06:29:20', '2017-11-29 06:29:20', '', 0, 'http://localhost:82/wordpress/?p=48', 0, 'post', '', 0),
(49, 3, '2017-11-29 06:31:22', '2017-11-29 06:31:22', 'Daay laf trpg web ve wordpresss dau tien', '2. Dang Ngoc Anh Hay Noi', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2017-11-29 06:31:22', '2017-11-29 06:31:22', '', 45, 'http://localhost:82/wordpress/2017/11/29/45-revision-v1/', 0, 'revision', '', 0),
(50, 3, '2017-11-29 06:32:54', '2017-11-29 06:32:54', 'Nhơ lại ngày nào bàn tay mình nắm bàn tay, hẹ thề nhau chi giờ đây đường ai nấy về, biết trước thì đã không quen không yêu rồi, để hôm nay buồn.....', '3. Moi nguoi mot noi', '', 'trash', 'closed', 'closed', '', '3-moi-nguoi-mot-noi__trashed', '', '', '2017-11-29 06:43:45', '2017-11-29 06:43:45', '', 0, 'http://localhost:82/wordpress/?page_id=50', 0, 'page', '', 0),
(51, 1, '2017-11-29 06:29:20', '2017-11-29 06:29:20', 'noi dung gi day ta', '7. bài post số 7', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2017-11-29 06:29:20', '2017-11-29 06:29:20', '', 48, 'http://localhost:82/wordpress/2017/11/29/48-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2017-11-29 06:29:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:29:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=52', 0, 'post', '', 0),
(53, 5, '2017-11-29 06:33:20', '2017-11-29 06:33:20', '<h3 class="title" style="text-align: center;">Gặp tác giả đề xuất cải tiến ‘Giáo dục’ thành ‘Záo zụk’</h3>\r\n<strong>PGS.TS Bùi Hiền, tác giả của đề xuất cải tiến chữ cái Tiếng Việt, cho biết ông bị nhiều người chỉ trích, thậm chí nói rằng bị điên dù chưa hiểu rõ câu chuyện.</strong>\r\n\r\nVietNamNet đã có cuộc trao đổi PGS.TS <a href="http://vietnamnet.vn/bui-hien-tag165089.html">Bùi Hiền</a>, nguyên Phó Hiệu trưởng Trường ĐH Sư phạm Ngoại ngữ Hà Nội, nguyên Phó Viện trưởng Viện Nội dung và Phương pháp dạy - học phổ thông.\r\n<div class="clearfix HeadCateBG">\r\n<div class="CateTitle left"><a class="Name f-14 bold" href="http://vietnamnet.vn/vn/giao-duc/">Giáo dục</a></div>\r\n<span class="subcate  f-n f-14  m-l-5 left">&gt; <a class="red bold" href="http://vietnamnet.vn/vn/giao-duc/khoa-hoc/">Khoa học</a></span></div>\r\n<div class="ArticleDetail">\r\n<div class="m-t-10 bold f-15"></div>\r\n<h1 class="title">Gặp tác giả đề xuất cải tiến ‘Giáo dục’ thành ‘Záo zụk’</h1>\r\n<div class="ArticleDateTime"><span class="ArticleDate">28/11/2017  14:25 GMT+7</span></div>\r\n<div id="ArticleContent" class="ArticleContent">\r\n\r\n<strong><img class="logo-small" title="" src="http://f.imgs.vietnamnet.vn/logo.gif" alt="" />PGS.TS Bùi Hiền, tác giả của đề xuất cải tiến chữ cái Tiếng Việt, cho biết ông bị nhiều người chỉ trích, thậm chí nói rằng bị điên dù chưa hiểu rõ câu chuyện.</strong>\r\n\r\nVietNamNet đã có cuộc trao đổi PGS.TS <a href="http://vietnamnet.vn/bui-hien-tag165089.html">Bùi Hiền</a>, nguyên Phó Hiệu trưởng Trường ĐH Sư phạm Ngoại ngữ Hà Nội, nguyên Phó Viện trưởng Viện Nội dung và Phương pháp dạy - học phổ thông.\r\n\r\n<strong>"Họ nói tôi bị điên"</strong>\r\n\r\n<em>Những ngày qua thông tin về đề xuất cải cách chữ quốc ngữ như cải biến giảm số lượng phụ âm từ 38 xuống còn 31 ký tự của ông đã gây ra nhiều tranh luận. Ông nhìn nhận những ý kiến đó ra sao?</em>\r\n\r\n- Tôi có biết có 3 luồng ý kiến. Những nhận xét thật nghiêm túc mang tính khoa học, đi vào chuyên môn thì chưa có ai có phần trao đổi thực sự với tôi. Bởi muốn nhận xét đúng thì phải xem toàn bộ phương án của tôi.\r\n\r\n<em>Thứ hai</em> là những nhận xét chung chung thì cũng có nhưng không nhiều, bởi thực sự toàn văn phương án cái tiến của tôi cũng đã được đăng lên đâu. Các bản đăng chỉ là tóm tắt và chưa được đầy đủ. Do đó người ta không có cơ sở để nhận xét thật chính xác, có logic.\r\n\r\n</div>\r\n</div>', '7. Gặp tác giả đề xuất cải tiến ‘Giáo dục’ thành ‘Záo zụk’', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2017-11-29 06:33:20', '2017-11-29 06:33:20', '', 42, 'http://localhost:82/wordpress/2017/11/29/42-revision-v1/', 0, 'revision', '', 0),
(54, 5, '2017-11-29 06:33:44', '2017-11-29 06:33:44', '<h3 class="title" style="text-align: center;">Gặp tác giả đề xuất cải tiến ‘Giáo dục’ thành ‘Záo zụk’</h3>\r\n<strong>PGS.TS Bùi Hiền, tác giả của đề xuất cải tiến chữ cái Tiếng Việt, cho biết ông bị nhiều người chỉ trích, thậm chí nói rằng bị điên dù chưa hiểu rõ câu chuyện.</strong>\r\n\r\nVietNamNet đã có cuộc trao đổi PGS.TS <a href="http://vietnamnet.vn/bui-hien-tag165089.html">Bùi Hiền</a>, nguyên Phó Hiệu trưởng Trường ĐH Sư phạm Ngoại ngữ Hà Nội, nguyên Phó Viện trưởng Viện Nội dung và Phương pháp dạy - học phổ thông.\r\n<div class="clearfix HeadCateBG">\r\n<div class="CateTitle left"><a class="Name f-14 bold" href="http://vietnamnet.vn/vn/giao-duc/">Giáo dục</a></div>\r\n<span class="subcate f-n f-14 m-l-5 left">&gt; <a class="red bold" href="http://vietnamnet.vn/vn/giao-duc/khoa-hoc/">Khoa học</a></span>\r\n\r\n</div>\r\n<div class="ArticleDetail">\r\n<div class="m-t-10 bold f-15"></div>\r\n<h1 class="title">Gặp tác giả đề xuất cải tiến ‘Giáo dục’ thành ‘Záo zụk’</h1>\r\n<div class="ArticleDateTime"><span class="ArticleDate">28/11/2017  14:25 GMT+7</span></div>\r\n<div id="ArticleContent" class="ArticleContent">\r\n\r\n<strong><img class="logo-small" title="" src="http://f.imgs.vietnamnet.vn/logo.gif" alt="" />PGS.TS Bùi Hiền, tác giả của đề xuất cải tiến chữ cái Tiếng Việt, cho biết ông bị nhiều người chỉ trích, thậm chí nói rằng bị điên dù chưa hiểu rõ câu chuyện.</strong>\r\n\r\nVietNamNet đã có cuộc trao đổi PGS.TS <a href="http://vietnamnet.vn/bui-hien-tag165089.html">Bùi Hiền</a>, nguyên Phó Hiệu trưởng Trường ĐH Sư phạm Ngoại ngữ Hà Nội, nguyên Phó Viện trưởng Viện Nội dung và Phương pháp dạy - học phổ thông.\r\n\r\n<strong>"Họ nói tôi bị điên"</strong>\r\n\r\n<em>Những ngày qua thông tin về đề xuất cải cách chữ quốc ngữ như cải biến giảm số lượng phụ âm từ 38 xuống còn 31 ký tự của ông đã gây ra nhiều tranh luận. Ông nhìn nhận những ý kiến đó ra sao?</em>\r\n\r\n- Tôi có biết có 3 luồng ý kiến. Những nhận xét thật nghiêm túc mang tính khoa học, đi vào chuyên môn thì chưa có ai có phần trao đổi thực sự với tôi. Bởi muốn nhận xét đúng thì phải xem toàn bộ phương án của tôi.\r\n\r\n<em>Thứ hai</em> là những nhận xét chung chung thì cũng có nhưng không nhiều, bởi thực sự toàn văn phương án cái tiến của tôi cũng đã được đăng lên đâu. Các bản đăng chỉ là tóm tắt và chưa được đầy đủ. Do đó người ta không có cơ sở để nhận xét thật chính xác, có logic.\r\n\r\n</div>\r\n</div>', '8. Gặp tác giả đề xuất cải tiến ‘Giáo dục’ thành ‘Záo zụk’', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2017-11-29 06:33:44', '2017-11-29 06:33:44', '', 42, 'http://localhost:82/wordpress/2017/11/29/42-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2017-11-29 06:31:01', '2017-11-29 06:31:01', 'du kien thuc khong nhiu nhung chia se cho cac ban de su ly no', '9. tai lieu wordpress tham khảo congdongshop.com nhé', '', 'publish', 'open', 'open', '', '9-tai-lieu-wordpress-tham-khao-congdongshop-com-nhe', '', '', '2017-11-29 08:34:09', '2017-11-29 08:34:09', '', 0, 'http://localhost:82/wordpress/?p=55', 0, 'post', '', 0),
(56, 5, '2017-11-29 06:34:11', '2017-11-29 06:34:11', '<h3 class="title" style="text-align: center;">Gặp tác giả đề xuất cải tiến ‘Giáo dục’ thành ‘Záo zụk’</h3>\r\n<h3></h3>\r\n<h3 class="title" style="text-align: center;"><strong>PGS.TS Bùi Hiền, tác giả của đề xuất cải tiến chữ cái Tiếng Việt, cho biết ông bị nhiều người chỉ trích, thậm chí nói rằng bị điên dù chưa hiểu rõ câu chuyện.</strong></h3>\r\nVietNamNet đã có cuộc trao đổi PGS.TS <a href="http://vietnamnet.vn/bui-hien-tag165089.html">Bùi Hiền</a>, nguyên Phó Hiệu trưởng Trường ĐH Sư phạm Ngoại ngữ Hà Nội, nguyên Phó Viện trưởng Viện Nội dung và Phương pháp dạy - học phổ thông.\r\n<div class="clearfix HeadCateBG">\r\n<div class="CateTitle left"><a class="Name f-14 bold" href="http://vietnamnet.vn/vn/giao-duc/">Giáo dục</a></div>\r\n<span class="subcate f-n f-14 m-l-5 left">&gt; <a class="red bold" href="http://vietnamnet.vn/vn/giao-duc/khoa-hoc/">Khoa học</a></span>\r\n\r\n</div>\r\n<div class="ArticleDetail">\r\n<div class="m-t-10 bold f-15"></div>\r\n<h1 class="title">Gặp tác giả đề xuất cải tiến ‘Giáo dục’ thành ‘Záo zụk’</h1>\r\n<div class="ArticleDateTime"><span class="ArticleDate">28/11/2017  14:25 GMT+7</span></div>\r\n<div id="ArticleContent" class="ArticleContent">\r\n\r\n<strong><img class="logo-small" title="" src="http://f.imgs.vietnamnet.vn/logo.gif" alt="" />PGS.TS Bùi Hiền, tác giả của đề xuất cải tiến chữ cái Tiếng Việt, cho biết ông bị nhiều người chỉ trích, thậm chí nói rằng bị điên dù chưa hiểu rõ câu chuyện.</strong>\r\n\r\nVietNamNet đã có cuộc trao đổi PGS.TS <a href="http://vietnamnet.vn/bui-hien-tag165089.html">Bùi Hiền</a>, nguyên Phó Hiệu trưởng Trường ĐH Sư phạm Ngoại ngữ Hà Nội, nguyên Phó Viện trưởng Viện Nội dung và Phương pháp dạy - học phổ thông.\r\n\r\n<strong>"Họ nói tôi bị điên"</strong>\r\n\r\n<em>Những ngày qua thông tin về đề xuất cải cách chữ quốc ngữ như cải biến giảm số lượng phụ âm từ 38 xuống còn 31 ký tự của ông đã gây ra nhiều tranh luận. Ông nhìn nhận những ý kiến đó ra sao?</em>\r\n\r\n- Tôi có biết có 3 luồng ý kiến. Những nhận xét thật nghiêm túc mang tính khoa học, đi vào chuyên môn thì chưa có ai có phần trao đổi thực sự với tôi. Bởi muốn nhận xét đúng thì phải xem toàn bộ phương án của tôi.\r\n\r\n<em>Thứ hai</em> là những nhận xét chung chung thì cũng có nhưng không nhiều, bởi thực sự toàn văn phương án cái tiến của tôi cũng đã được đăng lên đâu. Các bản đăng chỉ là tóm tắt và chưa được đầy đủ. Do đó người ta không có cơ sở để nhận xét thật chính xác, có logic.\r\n\r\n</div>\r\n</div>', '8. Gặp tác giả đề xuất cải tiến ‘Giáo dục’ thành ‘Záo zụk’', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2017-11-29 06:34:11', '2017-11-29 06:34:11', '', 42, 'http://localhost:82/wordpress/2017/11/29/42-revision-v1/', 0, 'revision', '', 0),
(57, 3, '2017-11-29 06:32:54', '2017-11-29 06:32:54', 'Nhơ lại ngày nào bàn tay mình nắm bàn tay, hẹ thề nhau chi giờ đây đường ai nấy về, biết trước thì đã không quen không yêu rồi, để hôm nay buồn.....', '3. Moi nguoi mot noi', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2017-11-29 06:32:54', '2017-11-29 06:32:54', '', 50, 'http://localhost:82/wordpress/2017/11/29/50-revision-v1/', 0, 'revision', '', 0),
(58, 2, '2017-11-29 06:34:20', '2017-11-29 06:34:20', 'Cuộc sống mỗi chúng ta không chỉ có một màu, mà có rất nhiều màu sắc, lúc vui, lúc buồn, lúc tức giận....', '4. Cuộc sống muôn màu', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2017-11-29 06:34:20', '2017-11-29 06:34:20', '', 37, 'http://localhost:82/wordpress/2017/11/29/37-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-11-29 06:31:01', '2017-11-29 06:31:01', 'du kien thuc khong nhiu nhung chia se cho cac ban de su ly no', '9.tai lieu wordpress tham khảo congdongshop.com nhé', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-11-29 06:31:01', '2017-11-29 06:31:01', '', 55, 'http://localhost:82/wordpress/2017/11/29/55-revision-v1/', 0, 'revision', '', 0),
(60, 2, '2017-11-29 06:35:29', '2017-11-29 06:35:29', '', '5. Cửa sổ tâm hồn bạn', '', 'publish', 'closed', 'closed', '', '5-cua-so-tam-hon-ban', '', '', '2017-11-29 07:52:43', '2017-11-29 07:52:43', '', 0, 'http://localhost:82/wordpress/?page_id=60', 0, 'page', '', 0),
(61, 4, '2017-11-29 06:38:29', '2017-11-29 06:38:29', '<p class="body-text">Lần đầu tiên Larry Ellison xây dựng một công ty phần mềm đã trở lại vào năm 1977 khi ông đồng sáng lập của Software Development Laboratories. Đây chính là cơ hội khiến ông được dự án "Oracle" với CIA, công ty sau này trở thành Oracle Systems Corporation.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/9_149273.jpg" data-desc="" data-index="8"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/9_149273.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 9" /></a></p>\r\n<p class="body-text"><em>Larry Ellison.</em></p>\r\n<p class="body-text">Ellison đã không bao giờ phù hợp với khuôn mẫu điển hình của một ai đó trong ngành công nghiệp khoa học máy tính. Ellison luôn có thú vui cực kỳ "sang chảnh" những với du thuyền và biệt thự đắt tiền.</p>\r\n<p class="body-text">Tuy nhiên, khối tài sản lên tới $ 52,28 tỷ đô la giúp ông thoải mái chi tiêu cho những sở thích "tốn kém" này.</p>', '7. Larry Ellison - 52,28 tỷ USD', '', 'publish', 'closed', 'closed', '', '7-larry-ellison-5228-ty-usd', '', '', '2017-11-29 06:38:29', '2017-11-29 06:38:29', '', 0, 'http://localhost:82/wordpress/?page_id=61', 0, 'page', '', 0),
(62, 4, '2017-11-29 06:38:29', '2017-11-29 06:38:29', '<p class="body-text">Lần đầu tiên Larry Ellison xây dựng một công ty phần mềm đã trở lại vào năm 1977 khi ông đồng sáng lập của Software Development Laboratories. Đây chính là cơ hội khiến ông được dự án "Oracle" với CIA, công ty sau này trở thành Oracle Systems Corporation.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/9_149273.jpg" data-desc="" data-index="8"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/9_149273.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 9" /></a></p>\r\n<p class="body-text"><em>Larry Ellison.</em></p>\r\n<p class="body-text">Ellison đã không bao giờ phù hợp với khuôn mẫu điển hình của một ai đó trong ngành công nghiệp khoa học máy tính. Ellison luôn có thú vui cực kỳ "sang chảnh" những với du thuyền và biệt thự đắt tiền.</p>\r\n<p class="body-text">Tuy nhiên, khối tài sản lên tới $ 52,28 tỷ đô la giúp ông thoải mái chi tiêu cho những sở thích "tốn kém" này.</p>', '7. Larry Ellison - 52,28 tỷ USD', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2017-11-29 06:38:29', '2017-11-29 06:38:29', '', 61, 'http://localhost:82/wordpress/2017/11/29/61-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2017-11-29 06:31:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:31:44', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=63', 0, 'post', '', 0),
(64, 1, '2017-11-29 06:33:02', '2017-11-29 06:33:02', 'cong dong shop chuyen cung cap them cho anh em sài. wordpress dùng để dễ sử lý , dễ sài không cần biết code', '10. theme xin lien hệ congdongshop.com nha anh em', '', 'publish', 'open', 'open', '', '10-theme-xin-lien-he-congdongshop-com-nha-anh-em', '', '', '2017-11-29 06:45:23', '2017-11-29 06:45:23', '', 0, 'http://localhost:82/wordpress/?p=64', 0, 'post', '', 0),
(65, 4, '2017-11-29 06:39:11', '2017-11-29 06:39:11', '<p class="body-text">Vào năm 1990, sự sáp nhập của Corporacíon Industrial Carso và Grupo Inbursa đã tạo ra tập đoàn Grupo Carso - thuộc sở hữu của Carlos Slim Helú và trong ba năm liên tiếp, ông được đánh giá là người giàu nhất trên thế giới.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/10_184644.jpg" data-desc="" data-index="9"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/10_184644.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 10" /></a></p>\r\n<p class="body-text"><em><strong>Carlos Slim Helú.</strong></em></p>\r\n<p class="body-text">Tập đoàn Grupo Carso tham ra nhiều ngành công nghiệp khác nhau, từ dịch vụ y tế đến tài chính. Sự kiện đáng ghi nhớ nhất của Grupo Carso là vào năm 1990, khi nước Mexico quyết định tư nhân hóa công ty điện thoại và viễn thông quốc gia. Tuy không phải là một chuyên gia kỹ thuật, không biết sử dụng tiếng Anh lẫn máy tính nhưng Caros Slim vẫn quyết định liều lĩnh đem hết số vốn của mình đi “đặt cược” khi thành lập Tập đoàn viễn thông Texmex.</p>\r\n<p class="body-text">Đến thời điểm hiện tại, Texmex là một trong những Tập đoàn viễn thông đầu tiên trên thế giới sử dụng dịch vụ Internet ADSL. Thông qua Texmex, Slim nắm giữ 90% các cuộc gọi điện thoại tại Mexico.</p>\r\n<p class="body-text">Tính đến năm 2017, Carlos Slim Helú có tổng tài sản lên tới 54,58 tỷ đô la.</p>', '6. Carlos Slim Helú - 54,58 tỷ USD', '', 'publish', 'closed', 'closed', '', '6-carlos-slim-helu-5458-ty-usd', '', '', '2017-11-29 06:39:11', '2017-11-29 06:39:11', '', 0, 'http://localhost:82/wordpress/?page_id=65', 0, 'page', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(66, 5, '2017-11-29 06:37:39', '2017-11-29 06:37:39', 'Vì thế, tôi đưa ra đề xuất thay đổi giá trị âm vị của 11 chữ cái hiện có: C = Ch, Tr; D = Đ; G = G, Gh; F = Ph; K = C, Q, K; Q = Ng, Ngh; R = R; S = S; X = Kh; W =Th; Z = d, gi, r. Vì âm "nhờ" (nh) chưa có kí tự mới thay thế, nên trong văn bản tạm thời dùng kí tự “ n’ ” để biểu đạt.\r\n\r\n<em>Ông nghĩ hệ thống chữ mới theo cải tiến của ông thì sẽ có ưu việt gì so với hệ thống chữ viết hiện hành?</em>', '11. Chữ Quốc Ngữ', '', 'publish', 'closed', 'closed', '', '11-chu-quoc-ngu', '', '', '2017-11-29 06:37:39', '2017-11-29 06:37:39', '', 0, 'http://localhost:82/wordpress/?page_id=66', 0, 'page', '', 0),
(67, 4, '2017-11-29 06:39:11', '2017-11-29 06:39:11', '<p class="body-text">Vào năm 1990, sự sáp nhập của Corporacíon Industrial Carso và Grupo Inbursa đã tạo ra tập đoàn Grupo Carso - thuộc sở hữu của Carlos Slim Helú và trong ba năm liên tiếp, ông được đánh giá là người giàu nhất trên thế giới.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/10_184644.jpg" data-desc="" data-index="9"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/10_184644.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 10" /></a></p>\r\n<p class="body-text"><em><strong>Carlos Slim Helú.</strong></em></p>\r\n<p class="body-text">Tập đoàn Grupo Carso tham ra nhiều ngành công nghiệp khác nhau, từ dịch vụ y tế đến tài chính. Sự kiện đáng ghi nhớ nhất của Grupo Carso là vào năm 1990, khi nước Mexico quyết định tư nhân hóa công ty điện thoại và viễn thông quốc gia. Tuy không phải là một chuyên gia kỹ thuật, không biết sử dụng tiếng Anh lẫn máy tính nhưng Caros Slim vẫn quyết định liều lĩnh đem hết số vốn của mình đi “đặt cược” khi thành lập Tập đoàn viễn thông Texmex.</p>\r\n<p class="body-text">Đến thời điểm hiện tại, Texmex là một trong những Tập đoàn viễn thông đầu tiên trên thế giới sử dụng dịch vụ Internet ADSL. Thông qua Texmex, Slim nắm giữ 90% các cuộc gọi điện thoại tại Mexico.</p>\r\n<p class="body-text">Tính đến năm 2017, Carlos Slim Helú có tổng tài sản lên tới 54,58 tỷ đô la.</p>', '6. Carlos Slim Helú - 54,58 tỷ USD', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2017-11-29 06:39:11', '2017-11-29 06:39:11', '', 65, 'http://localhost:82/wordpress/2017/11/29/65-revision-v1/', 0, 'revision', '', 0),
(68, 2, '2017-11-29 06:35:29', '2017-11-29 06:35:29', 'hãy trân trọng những gì đang có.', '5. Cửa sổ tâm hồn bạn', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-11-29 06:35:29', '2017-11-29 06:35:29', '', 60, 'http://localhost:82/wordpress/2017/11/29/60-revision-v1/', 0, 'revision', '', 0),
(69, 3, '2017-11-29 06:35:02', '2017-11-29 06:35:02', 'hời gian sau này, tuy tôi đã chuyển về công tác giảng dạy – nghiên cứu tại Khoa Khoa học Xã hội và Nhân văn của trường nhưng tôi vẫn luôn được thầy quan tâm, động viên.\r\n\r\nNhân tháng 11 có nhiều ý nghĩa với ngành giáo dục, tôi muốn bày tỏ chút tâm sự lòng mình, về người thầy đã cho tôi nhiều bài học vào đời.\r\n<div id="InRead" class="InRead"></div>\r\n<div id="pqc_video_giuabai_tto" class="pqc_video_giuabai_tto"></div>\r\nNhững bài học từ thầy, của thầy, không đơn giản là những lời nói, mà được tôi cảm nhận từ chính những hành xử của thầy trong cuộc sống. Qua cách xử thế, thầy dạy tôi những bài học về sự thấu đạt khi ta đặt vấn đề cần giải quyết trong bức tranh nhiều góc độ của chính nó.\r\n\r\nNghĩ ngược xong thì cũng nên nghĩ xuôi. Sau khi đánh giá thuận lợi thì cũng nên thẳng thắn nhìn nhận khó khăn. Điều gì, việc gì cũng cần suy nghĩ cặn kẽ trong tất cả những tình huống, những khả năng có thể xảy đến, và những kịch bản giải pháp cho từng tình huống đó.\r\n\r\nCó thể nói, thầy là một trong những người sếp để lại trong tôi nhiều ấn tượng đẹp.\r\n\r\nCòn nhớ năm đó, đơn vị thiết kế dàn trang mà tạp chí thuê ngoài đã quên thiết kế dòng chữ ISSN ngay trang bìa của tạp chí. Ấn phẩm thì đã in hàng trăm bản. Giữa trưa hè đổ lửa, dù tuổi cao, thầy vẫn trực tiếp cùng tôi đến nhà in để liên hệ chỉnh sửa.\r\n\r\nThầy không nặng lời truy cứu các bên liên quan đã xao lãng để vô tình xảy ra sự cố đáng tiếc, mà chỉ nhiệt tâm lo lắng cho tạp chí, tìm mọi cách để giải quyết sự việc. Cuối cùng, tạp chí vẫn phát hành đúng kỳ hạn trong “trang phục” chỉn chu, chính xác như vốn dĩ.\r\n\r\nBài học đó đã theo tôi chừng ấy thời gian, và sẽ còn bên tôi suốt những năm tháng sau này. Đó là chỉ khi tâm trí chúng ta gạt qua niềm bực tức, sự nóng giận thì chúng ta mới có đủ sáng suốt để giải quyết những nan đề trong cuộc sống, nơi mà ở đó đòi hỏi sự tỉnh táo của lý trí và niềm mến thương của tình cảm.\r\n\r\nBài học mà tôi tâm đắc từ thầy là lối sống chậm, thư thái. Còn nhớ có lần tôi đến thăm thầy nằm viện, dù sức khỏe có nhiều điều khó khăn trở ngại nhưng thầy vẫn dành thời gian để đọc báo, đọc sách.\r\n\r\nNếu là người trẻ như tôi, những khi thân thể ốm đau, thường vẻ ngoài thì nhăn nhó khó chịu, trong lòng thì cảm thấy bức bối, chán chường khôn tả.\r\n\r\nNhìn hình ảnh thầy bình thản lật từng trang sách, giở từng trang báo, mặc trong thân mình đang gánh chịu những cơn đau của bệnh tật, của tuổi tác, lòng tôi không khỏi dâng lên niềm thán phục.\r\n\r\nThầy khiến tôi nhận ra rằng trong bất kỳ hoàn cảnh không như ý nào, ngoài việc tìm ra nguyên nhân để giải quyết thì chúng ta còn rất cần một tâm thế tiếp nhận tích cực. Tâm thế ấy sẽ soi lối chúng ta tìm đến ngọn nguồn của an yên, thanh thản.\r\n\r\nVì cuộc sống là chuỗi đan xen của những điều như ý và bất như ý, thế nên hãy sẵn lòng đón nhận những điều gập ghềnh chông gai bằng thái độ như đối với những điều hợp nhãn, hợp lòng.\r\n\r\nVà tôi biết, không chỉ tôi, nhiều người cũng đã, đang và sẽ kính trọng thầy – người thầy luôn tạo cảm giác thân thiện, không khí hòa nhã cho những ai cộng tác cùng…', '11. Thầy dạy tôi bình tĩnh sống ở đời', '', 'publish', 'open', 'open', '', '10-thay-day-toi-binh-tinh-song-o-doi', '', '', '2017-11-29 09:31:09', '2017-11-29 09:31:09', '', 0, 'http://localhost:82/wordpress/?p=69', 0, 'post', '', 0),
(70, 4, '2017-11-29 06:39:39', '2017-11-29 06:39:39', '<p class="body-text"></p>\r\n<p class="body-text">Charles Koch - anh trai của David Koch đồng thời là đồng sở hữu của Koch Industries, Inc. và cũng là Phó chủ tịch điều hành tập đoàn. Năm 2017, tổng tài sản của Charles Koch ước tính khoảng 48,38 tỷ đô la.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/8_143957.jpg" data-desc="" data-index="7"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/8_143957.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 8" /></a></p>\r\n<p class="body-text"><em><strong>Charles Koch.</strong></em></p>', '8. Charles Koch - 48,38 tỷ USD', '', 'publish', 'closed', 'closed', '', '8-charles-koch-4838-ty-usd', '', '', '2017-11-29 06:39:39', '2017-11-29 06:39:39', '', 0, 'http://localhost:82/wordpress/?page_id=70', 0, 'page', '', 0),
(71, 4, '2017-11-29 06:39:39', '2017-11-29 06:39:39', '<p class="body-text"></p>\r\n<p class="body-text">Charles Koch - anh trai của David Koch đồng thời là đồng sở hữu của Koch Industries, Inc. và cũng là Phó chủ tịch điều hành tập đoàn. Năm 2017, tổng tài sản của Charles Koch ước tính khoảng 48,38 tỷ đô la.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/8_143957.jpg" data-desc="" data-index="7"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/8_143957.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 8" /></a></p>\r\n<p class="body-text"><em><strong>Charles Koch.</strong></em></p>', '8. Charles Koch - 48,38 tỷ USD', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2017-11-29 06:39:39', '2017-11-29 06:39:39', '', 70, 'http://localhost:82/wordpress/2017/11/29/70-revision-v1/', 0, 'revision', '', 0),
(72, 4, '2017-11-29 06:39:59', '2017-11-29 06:39:59', '<p class="body-text"></p>\r\n<p class="body-text">David Koch là một kỹ sư hóa học và sau đó trở thành chủ tịch của Koch Engineering vào năm 1979. Ông là đồng sở hữu của Koch Industries,Inc cùng với anh trai Charles.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/7_130959.jpg" data-desc="" data-index="6"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/7_130959.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 7" /></a></p>\r\n<p class="body-text"><strong>David Koch.</strong></p>\r\n<p class="body-text">David đã trở thành một người khổng lồ trên các phương tiện truyền thông do những nhận xét rất công khai của ông trong giới chính trị. Chính sách bảo thủ của ông đã đụng độ trực diện với chương trình nghị sự của Donald Trump trong cuộc đua tổng thống năm 2016.</p>\r\n<p class="body-text">Hiện tại, tổng giá trị tài sản thực của David Koch ước tính lên tơis 48,38 tỷ đô la.</p>', '9. David Koch – $48.38 tỷ USD', '', 'publish', 'closed', 'closed', '', '9-david-koch-48-38-ty-usd', '', '', '2017-11-29 06:39:59', '2017-11-29 06:39:59', '', 0, 'http://localhost:82/wordpress/?page_id=72', 0, 'page', '', 0),
(73, 3, '2017-11-29 06:35:02', '2017-11-29 06:35:02', 'hời gian sau này, tuy tôi đã chuyển về công tác giảng dạy – nghiên cứu tại Khoa Khoa học Xã hội và Nhân văn của trường nhưng tôi vẫn luôn được thầy quan tâm, động viên.\r\n\r\nNhân tháng 11 có nhiều ý nghĩa với ngành giáo dục, tôi muốn bày tỏ chút tâm sự lòng mình, về người thầy đã cho tôi nhiều bài học vào đời.\r\n<div id="InRead" class="InRead"></div>\r\n<div id="pqc_video_giuabai_tto" class="pqc_video_giuabai_tto"></div>\r\nNhững bài học từ thầy, của thầy, không đơn giản là những lời nói, mà được tôi cảm nhận từ chính những hành xử của thầy trong cuộc sống. Qua cách xử thế, thầy dạy tôi những bài học về sự thấu đạt khi ta đặt vấn đề cần giải quyết trong bức tranh nhiều góc độ của chính nó.\r\n\r\nNghĩ ngược xong thì cũng nên nghĩ xuôi. Sau khi đánh giá thuận lợi thì cũng nên thẳng thắn nhìn nhận khó khăn. Điều gì, việc gì cũng cần suy nghĩ cặn kẽ trong tất cả những tình huống, những khả năng có thể xảy đến, và những kịch bản giải pháp cho từng tình huống đó.\r\n\r\nCó thể nói, thầy là một trong những người sếp để lại trong tôi nhiều ấn tượng đẹp.\r\n\r\nCòn nhớ năm đó, đơn vị thiết kế dàn trang mà tạp chí thuê ngoài đã quên thiết kế dòng chữ ISSN ngay trang bìa của tạp chí. Ấn phẩm thì đã in hàng trăm bản. Giữa trưa hè đổ lửa, dù tuổi cao, thầy vẫn trực tiếp cùng tôi đến nhà in để liên hệ chỉnh sửa.\r\n\r\nThầy không nặng lời truy cứu các bên liên quan đã xao lãng để vô tình xảy ra sự cố đáng tiếc, mà chỉ nhiệt tâm lo lắng cho tạp chí, tìm mọi cách để giải quyết sự việc. Cuối cùng, tạp chí vẫn phát hành đúng kỳ hạn trong “trang phục” chỉn chu, chính xác như vốn dĩ.\r\n\r\nBài học đó đã theo tôi chừng ấy thời gian, và sẽ còn bên tôi suốt những năm tháng sau này. Đó là chỉ khi tâm trí chúng ta gạt qua niềm bực tức, sự nóng giận thì chúng ta mới có đủ sáng suốt để giải quyết những nan đề trong cuộc sống, nơi mà ở đó đòi hỏi sự tỉnh táo của lý trí và niềm mến thương của tình cảm.\r\n\r\nBài học mà tôi tâm đắc từ thầy là lối sống chậm, thư thái. Còn nhớ có lần tôi đến thăm thầy nằm viện, dù sức khỏe có nhiều điều khó khăn trở ngại nhưng thầy vẫn dành thời gian để đọc báo, đọc sách.\r\n\r\nNếu là người trẻ như tôi, những khi thân thể ốm đau, thường vẻ ngoài thì nhăn nhó khó chịu, trong lòng thì cảm thấy bức bối, chán chường khôn tả.\r\n\r\nNhìn hình ảnh thầy bình thản lật từng trang sách, giở từng trang báo, mặc trong thân mình đang gánh chịu những cơn đau của bệnh tật, của tuổi tác, lòng tôi không khỏi dâng lên niềm thán phục.\r\n\r\nThầy khiến tôi nhận ra rằng trong bất kỳ hoàn cảnh không như ý nào, ngoài việc tìm ra nguyên nhân để giải quyết thì chúng ta còn rất cần một tâm thế tiếp nhận tích cực. Tâm thế ấy sẽ soi lối chúng ta tìm đến ngọn nguồn của an yên, thanh thản.\r\n\r\nVì cuộc sống là chuỗi đan xen của những điều như ý và bất như ý, thế nên hãy sẵn lòng đón nhận những điều gập ghềnh chông gai bằng thái độ như đối với những điều hợp nhãn, hợp lòng.\r\n\r\nVà tôi biết, không chỉ tôi, nhiều người cũng đã, đang và sẽ kính trọng thầy – người thầy luôn tạo cảm giác thân thiện, không khí hòa nhã cho những ai cộng tác cùng…', '10. Thầy dạy tôi bình tĩnh sống ở đời', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2017-11-29 06:35:02', '2017-11-29 06:35:02', '', 69, 'http://localhost:82/wordpress/2017/11/29/69-revision-v1/', 0, 'revision', '', 0),
(74, 4, '2017-11-29 06:39:59', '2017-11-29 06:39:59', '<p class="body-text"></p>\r\n<p class="body-text">David Koch là một kỹ sư hóa học và sau đó trở thành chủ tịch của Koch Engineering vào năm 1979. Ông là đồng sở hữu của Koch Industries,Inc cùng với anh trai Charles.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/7_130959.jpg" data-desc="" data-index="6"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/7_130959.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 7" /></a></p>\r\n<p class="body-text"><strong>David Koch.</strong></p>\r\n<p class="body-text">David đã trở thành một người khổng lồ trên các phương tiện truyền thông do những nhận xét rất công khai của ông trong giới chính trị. Chính sách bảo thủ của ông đã đụng độ trực diện với chương trình nghị sự của Donald Trump trong cuộc đua tổng thống năm 2016.</p>\r\n<p class="body-text">Hiện tại, tổng giá trị tài sản thực của David Koch ước tính lên tơis 48,38 tỷ đô la.</p>', '9. David Koch – $48.38 tỷ USD', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2017-11-29 06:39:59', '2017-11-29 06:39:59', '', 72, 'http://localhost:82/wordpress/2017/11/29/72-revision-v1/', 0, 'revision', '', 0),
(75, 3, '2017-11-29 06:35:20', '2017-11-29 06:35:20', 'hời gian sau này, tuy tôi đã chuyển về công tác giảng dạy – nghiên cứu tại Khoa Khoa học Xã hội và Nhân văn của trường nhưng tôi vẫn luôn được thầy quan tâm, động viên.\r\n\r\nNhân tháng 11 có nhiều ý nghĩa với ngành giáo dục, tôi muốn bày tỏ chút tâm sự lòng mình, về người thầy đã cho tôi nhiều bài học vào đời.\r\n<div id="InRead" class="InRead"></div>\r\n<div id="pqc_video_giuabai_tto" class="pqc_video_giuabai_tto"></div>\r\nNhững bài học từ thầy, của thầy, không đơn giản là những lời nói, mà được tôi cảm nhận từ chính những hành xử của thầy trong cuộc sống. Qua cách xử thế, thầy dạy tôi những bài học về sự thấu đạt khi ta đặt vấn đề cần giải quyết trong bức tranh nhiều góc độ của chính nó.\r\n\r\nNghĩ ngược xong thì cũng nên nghĩ xuôi. Sau khi đánh giá thuận lợi thì cũng nên thẳng thắn nhìn nhận khó khăn. Điều gì, việc gì cũng cần suy nghĩ cặn kẽ trong tất cả những tình huống, những khả năng có thể xảy đến, và những kịch bản giải pháp cho từng tình huống đó.\r\n\r\nCó thể nói, thầy là một trong những người sếp để lại trong tôi nhiều ấn tượng đẹp.\r\n\r\nCòn nhớ năm đó, đơn vị thiết kế dàn trang mà tạp chí thuê ngoài đã quên thiết kế dòng chữ ISSN ngay trang bìa của tạp chí. Ấn phẩm thì đã in hàng trăm bản. Giữa trưa hè đổ lửa, dù tuổi cao, thầy vẫn trực tiếp cùng tôi đến nhà in để liên hệ chỉnh sửa.\r\n\r\nThầy không nặng lời truy cứu các bên liên quan đã xao lãng để vô tình xảy ra sự cố đáng tiếc, mà chỉ nhiệt tâm lo lắng cho tạp chí, tìm mọi cách để giải quyết sự việc. Cuối cùng, tạp chí vẫn phát hành đúng kỳ hạn trong “trang phục” chỉn chu, chính xác như vốn dĩ.\r\n\r\nBài học đó đã theo tôi chừng ấy thời gian, và sẽ còn bên tôi suốt những năm tháng sau này. Đó là chỉ khi tâm trí chúng ta gạt qua niềm bực tức, sự nóng giận thì chúng ta mới có đủ sáng suốt để giải quyết những nan đề trong cuộc sống, nơi mà ở đó đòi hỏi sự tỉnh táo của lý trí và niềm mến thương của tình cảm.\r\n\r\nBài học mà tôi tâm đắc từ thầy là lối sống chậm, thư thái. Còn nhớ có lần tôi đến thăm thầy nằm viện, dù sức khỏe có nhiều điều khó khăn trở ngại nhưng thầy vẫn dành thời gian để đọc báo, đọc sách.\r\n\r\nNếu là người trẻ như tôi, những khi thân thể ốm đau, thường vẻ ngoài thì nhăn nhó khó chịu, trong lòng thì cảm thấy bức bối, chán chường khôn tả.\r\n\r\nNhìn hình ảnh thầy bình thản lật từng trang sách, giở từng trang báo, mặc trong thân mình đang gánh chịu những cơn đau của bệnh tật, của tuổi tác, lòng tôi không khỏi dâng lên niềm thán phục.\r\n\r\nThầy khiến tôi nhận ra rằng trong bất kỳ hoàn cảnh không như ý nào, ngoài việc tìm ra nguyên nhân để giải quyết thì chúng ta còn rất cần một tâm thế tiếp nhận tích cực. Tâm thế ấy sẽ soi lối chúng ta tìm đến ngọn nguồn của an yên, thanh thản.\r\n\r\nVì cuộc sống là chuỗi đan xen của những điều như ý và bất như ý, thế nên hãy sẵn lòng đón nhận những điều gập ghềnh chông gai bằng thái độ như đối với những điều hợp nhãn, hợp lòng.\r\n\r\nVà tôi biết, không chỉ tôi, nhiều người cũng đã, đang và sẽ kính trọng thầy – người thầy luôn tạo cảm giác thân thiện, không khí hòa nhã cho những ai cộng tác cùng…', '11. Thầy dạy tôi bình tĩnh sống ở đời', '', 'inherit', 'closed', 'closed', '', '69-revision-v1', '', '', '2017-11-29 06:35:20', '2017-11-29 06:35:20', '', 69, 'http://localhost:82/wordpress/2017/11/29/69-revision-v1/', 0, 'revision', '', 0),
(76, 4, '2017-11-29 06:40:19', '2017-11-29 06:40:19', '<p class="body-text"></p>\r\n<p class="body-text">Michael "Mike" Bloomberg đã sáng lập ra Bloomberg L.P. là một công ty trị giá hàng tỷ USD liên quan đến phần mềm tài chính, dữ liệu và phần mềm truyền thông.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/6_126247.jpg" data-desc="" data-index="5"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/6_126247.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 6" /></a></p>\r\n<p class="body-text"><em><strong>Michael Bloomberg.</strong></em></p>\r\n<p class="body-text">Đến năm 2017, Bloomberg có tài sản ước tính lên tới 47,5 tỷ đô la và được xếp hạng là một trong những người giàu nhất thế giới.</p>', '10. Michael Bloomberg - 47,5 tỷ USD', '', 'publish', 'closed', 'closed', '', '10-michael-bloomberg-475-ty-usd', '', '', '2017-11-29 06:40:19', '2017-11-29 06:40:19', '', 0, 'http://localhost:82/wordpress/?page_id=76', 0, 'page', '', 0),
(77, 2, '2017-11-29 06:36:57', '2017-11-29 06:36:57', 'tác giả: Nguyễn nhật ánh', '6. Truyện đọc Quán gò đi lên', '', 'trash', 'closed', 'closed', '', 'lee6-truyen-doc-quan-go-di-len__trashed', '', '', '2017-11-29 06:41:28', '2017-11-29 06:41:28', '', 0, 'http://localhost:82/wordpress/?page_id=77', 0, 'page', '', 0),
(78, 1, '2017-11-29 06:33:02', '2017-11-29 06:33:02', 'cong dong shop chuyen cung cap them cho anh em sài. wordpress dùng để dễ sử lý , dễ sài không cần biết code', '10.theme xin lien hệ congdongshop.com nha anh em', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2017-11-29 06:33:02', '2017-11-29 06:33:02', '', 64, 'http://localhost:82/wordpress/2017/11/29/64-revision-v1/', 0, 'revision', '', 0),
(79, 4, '2017-11-29 06:40:19', '2017-11-29 06:40:19', '<p class="body-text"></p>\r\n<p class="body-text">Michael "Mike" Bloomberg đã sáng lập ra Bloomberg L.P. là một công ty trị giá hàng tỷ USD liên quan đến phần mềm tài chính, dữ liệu và phần mềm truyền thông.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/6_126247.jpg" data-desc="" data-index="5"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/6_126247.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 6" /></a></p>\r\n<p class="body-text"><em><strong>Michael Bloomberg.</strong></em></p>\r\n<p class="body-text">Đến năm 2017, Bloomberg có tài sản ước tính lên tới 47,5 tỷ đô la và được xếp hạng là một trong những người giàu nhất thế giới.</p>', '10. Michael Bloomberg - 47,5 tỷ USD', '', 'inherit', 'closed', 'closed', '', '76-revision-v1', '', '', '2017-11-29 06:40:19', '2017-11-29 06:40:19', '', 76, 'http://localhost:82/wordpress/2017/11/29/76-revision-v1/', 0, 'revision', '', 0),
(80, 3, '2017-11-29 06:37:23', '2017-11-29 06:37:23', '<h3>Bao giờ hết kẹt xe, ngập nước?</h3>\r\nTừng là người phụ trách lĩnh vực khoa học công nghệ của thành phố, Bí thư Thành uỷ Nguyễn Thiện Nhân bày tỏ nhiều kỳ vọng vào thành phố thông minh. Ông cho rằng TP.HCM - nơi đầu tiên trong cả nước thực hiện đề án là hoàn toàn đúng bởi đây là thành phố tích tụ nhiều bức xúc nhất.\r\n\r\n“Người dân hỏi bao giờ hết kẹt xe, bao giờ hết ngập nước? Có trả lời được không? Chúng ta chưa trả lời được vì dự báo chưa sát và chưa mô phỏng được”, Bí thư Nguyễn Thiện Nhân nói.\r\n\r\nÔng Nhân cho rằng bản chất làm đô thị thông minh là để "bớt giật mình" vì mọi thứ dự báo được. “Dự báo không tính bằng tay được, phải dùng máy tính, phần mềm”, ông Nhân nhấn mạnh.\r\n<table class="picture" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="pic"><img src="https://znews-photo-td.zadn.vn/w1024/Uploaded/pcwvopbb/2017_11_27/ho_sau_zing_2.jpg" alt="Do thi thong minh: Chiec dua than co giup Sai Gon het ket xe va ngap? hinh anh 1" width="2048" height="1365" /></td>\r\n</tr>\r\n<tr>\r\n<td class="pCaption caption">Thành phố thông minh có thể đưa ra dự báo nhưng đến bao giờ hết kẹt xe ngập nước vẫn là câu hỏi còn bỏ ngỏ. Ảnh: <em>Tùng Tin.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nÔng Nhân kỳ vọng thành phố thông minh có thể tác động đến những lĩnh vực cụ thể như chôn lấp rác, tăng số lượng rác tái chế và giảm chôn lấp. Bên cạnh đó, hệ thống cảm biến không khí cho phép dự báo mức độ sạch của môi trường sống.\r\n\r\nTheo ông Nguyễn Thiện Nhân, bốn mục tiêu mà đề án đặt ra là: TP cần phát triển kinh tế cao và bền vững. Môi trường sống của người dân phải tốt, hạ tầng, chất lượng không khí. Bản thân người dân phát huy tối đa quyền giám sát chính quyền của mình.\r\n\r\nTrong khi đó, Chủ tịch UBND TP Nguyễn Thành Phong gọi thành phố thông minh là luồng gió mới, là giải pháp phát triển phi truyền thống để nâng cao tăng trưởng cho thành phố. Theo ông Phong, thành phố thông minh cùng với những cơ chế đặc thù mà Quốc hội vừa thông qua chính là động lực phát triển mới.\r\n<h3>Cả Sài Gòn trong chiếc điện thoại</h3>\r\nĐể thực hiện thành phố thông minh, Phó chủ tịch UBND TP.HCM Trần Vĩnh Tuyến nói rằng người dân cần làm quen với điện thoại thông minh để biết được các cảnh báo chống ngập, kẹt xe hay tình hình giao thông. Người dân phải tương tác với chính quyền để xây dựng thành phố thông minh.\r\n\r\n“Tất cả mọi tiện ích chỉ nằm gọn trong chiếc điện thoại. Không thể nói rằng mình không biết dùng điện thoại thông minh, vì cháu bé 3 tuổi đã biết dùng”, ông Tuyến nói.\r\n<table class="picture" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="pic"><img src="https://znews-photo-td.zadn.vn/w1024/Uploaded/pcwvopbb/2017_11_27/trung_thit_ga_2_zing.jpg" alt="Do thi thong minh: Chiec dua than co giup Sai Gon het ket xe va ngap? hinh anh 2" width="1980" height="1324" /></td>\r\n</tr>\r\n<tr>\r\n<td class="pCaption caption">Người dân có thể truy xuất được "quê quán" của từng loại thực phẩm. Ảnh: <em>Lê Quân.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nVới giao thông thông minh, người dân sẽ sử dụng vé điện tử cho cả loại hình giao thông công cộng như xe buýt, metro. Một bản đồ xe buýt được gọi là busmap có tính tương tác với người dùng cũng nằm gọn trong chiếc điện thoại.\r\n\r\nTheo Phó chủ tịch UBND TP, điều tra mới nhất cho thấy 82% người dân thành phố dùng điện thoại thông minh. Từ đó, những người thực hiện dự án đặt mục tiêu phấn đấu 100% người dân đang dùng điện thoại thông minh sử dụng 1 phần mềm tiện ích.\r\n\r\nKhi nói về việc tích hợp thông tin đô thị và cơ chế bảo mật của nó, Bí thư Nguyễn Thiện Nhân cho rằng dù có thể mua nhưng công nghệ tiên tiến nhất thì người Việt Nam phải tự thực hiện phần việc này cho mình. Đó là cách để bảo vệ thông tin của thành phố, tránh bị các đối thủ sao chép và khai thác. “Thành phố phải có ''đám mây'' của mình”, ông Nhân nói.\r\n<table class="picture" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="pic"><img src="https://znews-photo-td.zadn.vn/w1024/Uploaded/pcwvopbb/2017_11_27/CVArtboard_1.jpg" alt="Do thi thong minh: Chiec dua than co giup Sai Gon het ket xe va ngap? hinh anh 3" width="1920" height="1080" /></td>\r\n</tr>\r\n<tr>\r\n<td class="pCaption caption">Những người trẻ ở TP.HCM đang bỏ nhiều thời gian để trải nghiệm "cuộc sống mạng". Đồ hoạ: <em>Minh Trí.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nTiến tới, TP.HCM sẽ xây dựng Trung tâm điều hành đô thị thông minh. Trung tâm là nơi sẽ tổng hợp tất cả các nguồn thông tin, dữ liệu hàng ngày của thành phố trên tất cả các lĩnh vực, qua đó giúp ứng cứu, xử lý tình huống.\r\n\r\nNgoài ra, Trung tâm An toàn thông tin sẽ đảm bảo an toàn thông tin mạng, đánh giá rủi ro, giám sát, phát hiện tấn công, cảnh báo sớm, ngăn chặn kịp thời và ứng cứu các sự cố liên quan đến an toàn thông tin cũng như an toàn cho các hệ thống thông tin và các hệ thống tự động hoá, hệ thống giám sát, điều khiển các cơ sở hạ tầng, dữ liệu trọng yếu của TP.\r\n\r\nÔng Nguyễn Thiện Nhân đánh giá những người trẻ ở TP.HCM đã thực sự sống trên mạng. Ở đó, họ kết bạn, học tập và tìm kiếm các cơ hội cho cuộc đời mình. “Không gian mạng để mỗi người sống trên đó là một nguyên tắc của đô thị thông minh. Lớp trẻ hiện nay đã ở trên mạng rồi”, ông Nhân bày tỏ.', '12 Đô thị thông minh: Chiếc đũa thần có giúp Sài Gòn hết kẹt xe và ngập?', '', 'publish', 'open', 'open', '', '12-do-thi-thong-minh-chiec-dua-than-co-giup-sai-gon-het-ket-xe-va-ngap', '', '', '2017-11-29 08:53:28', '2017-11-29 08:53:28', '', 0, 'http://localhost:82/wordpress/?p=80', 0, 'post', '', 0),
(81, 1, '2017-11-29 06:33:29', '2017-11-29 06:33:29', 'sự sống của con người là tuyet dep hùng vĩ nhất thời đại chấm chấm chấm hãy trân trọng sự sống của mình đừng để sự sống trôi qua vô nghĩa nhé .............', '12.cuộc sống xanh', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-11-29 06:33:29', '2017-11-29 06:33:29', '', 25, 'http://localhost:82/wordpress/2017/11/29/25-revision-v1/', 0, 'revision', '', 0),
(82, 2, '2017-11-29 06:36:57', '2017-11-29 06:36:57', 'tác giả: Nguyễn nhật ánh', 'lee6. Truyện đọc Quán gò đi lên', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-11-29 06:36:57', '2017-11-29 06:36:57', '', 77, 'http://localhost:82/wordpress/2017/11/29/77-revision-v1/', 0, 'revision', '', 0),
(83, 4, '2017-11-29 06:41:15', '2017-11-29 06:41:15', '<p class="body-text"></p>\r\n<p class="body-text">Larry Page là một trong những người đồng sáng lập của Google. Và hiện tại là giám đốc điều hành của Alphabet - công ty mẹ của Google. Giống như nhiều tỷ phú khác, Page không chỉ tập trung vào ngành công nghiệp khoa học máy tính để tiếp tục xây dựng tài sản của mình. Anh ta đã đầu tư vào các công ty công nghệ mới. Đến 2017, tổng tài sản của Larry Page ước tính vào khoảng 41,5 tỷ đô la.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/4_134505.jpg" data-desc="" data-index="3"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/4_134505.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 4" /></a></p>\r\n<p class="body-text"><em>Larry Page.</em></p>', '12. Larry Page - 41,5 tỷ USD', '', 'publish', 'closed', 'closed', '', '12-larry-page-415-ty-usd', '', '', '2017-11-29 06:41:15', '2017-11-29 06:41:15', '', 0, 'http://localhost:82/wordpress/?page_id=83', 0, 'page', '', 0),
(84, 5, '2017-11-29 06:37:39', '2017-11-29 06:37:39', 'Vì thế, tôi đưa ra đề xuất thay đổi giá trị âm vị của 11 chữ cái hiện có: C = Ch, Tr; D = Đ; G = G, Gh; F = Ph; K = C, Q, K; Q = Ng, Ngh; R = R; S = S; X = Kh; W =Th; Z = d, gi, r. Vì âm "nhờ" (nh) chưa có kí tự mới thay thế, nên trong văn bản tạm thời dùng kí tự “ n’ ” để biểu đạt.\r\n\r\n<em>Ông nghĩ hệ thống chữ mới theo cải tiến của ông thì sẽ có ưu việt gì so với hệ thống chữ viết hiện hành?</em>', '11. Chữ Quốc Ngữ', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2017-11-29 06:37:39', '2017-11-29 06:37:39', '', 66, 'http://localhost:82/wordpress/2017/11/29/66-revision-v1/', 0, 'revision', '', 0),
(86, 4, '2017-11-29 06:41:15', '2017-11-29 06:41:15', '<p class="body-text"></p>\r\n<p class="body-text">Larry Page là một trong những người đồng sáng lập của Google. Và hiện tại là giám đốc điều hành của Alphabet - công ty mẹ của Google. Giống như nhiều tỷ phú khác, Page không chỉ tập trung vào ngành công nghiệp khoa học máy tính để tiếp tục xây dựng tài sản của mình. Anh ta đã đầu tư vào các công ty công nghệ mới. Đến 2017, tổng tài sản của Larry Page ước tính vào khoảng 41,5 tỷ đô la.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/4_134505.jpg" data-desc="" data-index="3"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/4_134505.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 4" /></a></p>\r\n<p class="body-text"><em>Larry Page.</em></p>', '12. Larry Page - 41,5 tỷ USD', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2017-11-29 06:41:15', '2017-11-29 06:41:15', '', 83, 'http://localhost:82/wordpress/2017/11/29/83-revision-v1/', 0, 'revision', '', 0),
(87, 2, '2017-11-29 06:37:38', '2017-11-29 06:37:38', 'tác giả: Nguyễn nhật ánh', '6. Truyện đọc Quán gò đi lên', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2017-11-29 06:37:38', '2017-11-29 06:37:38', '', 77, 'http://localhost:82/wordpress/2017/11/29/77-revision-v1/', 0, 'revision', '', 0),
(88, 4, '2017-11-29 06:42:38', '2017-11-29 06:42:38', '<p class="body-text"></p>\r\n<p class="body-text">Bill Gates là một trong những cá nhân nổi tiếng nhất trên thế giới và đã luôn chiếm vị trí số 1 tại bảng xếp hạng top 10 tỷ phú giàu nhất thế giới trên Forbes nhiều năm qua.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/15_188635.jpg" data-desc="" data-index="14"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/15_188635.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 15" /></a></p>\r\n<p class="body-text"><em><strong>Bill Gates.</strong></em></p>\r\n<p class="body-text">Bill Gates nổi tiếng với việc sáng lập Microsoft - công ty phần mềm máy tính lớn nhất thế giới. Điều ấn tướng khi nói về Bill Gates đó là trong khi các tỷ phú khác đã sử dụng hàng "núi tiền" để cố gắng thu hút thêm quyền lực và ảnh hưởng chính trị của mình thì Gates lại mang tài sản của mình đi làm từ thiện và giúp đỡ những người nghèo khổ khắp thế giới.</p>\r\n<p class="body-text">Một trong những nỗ lực gần đây nhất của ông là giải quyết vấn đề thiếu nước sạch trên thế giới. Vào năm 2015, Bill Gates đã nỗ lực hết mình để thúc đẩy bộ xử lý đa năng được thiết kế để biến chất thải rắn của con người thành nước uống.</p>\r\n<p class="body-text">Năm 2017, tổng tài sản của Bill Gates có giá trị ròng khoảng 86 tỷ USD và tiếp tục giữ vững vị trí là người giàu nhất thế giới.</p>', '1. Bill Gates - 86 tỷ USD', '', 'publish', 'closed', 'closed', '', '1-bill-gates-86-ty-usd', '', '', '2017-11-29 06:42:38', '2017-11-29 06:42:38', '', 0, 'http://localhost:82/wordpress/?page_id=88', 0, 'page', '', 0),
(89, 4, '2017-11-29 06:42:38', '2017-11-29 06:42:38', '<p class="body-text"></p>\r\n<p class="body-text">Bill Gates là một trong những cá nhân nổi tiếng nhất trên thế giới và đã luôn chiếm vị trí số 1 tại bảng xếp hạng top 10 tỷ phú giàu nhất thế giới trên Forbes nhiều năm qua.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/15_188635.jpg" data-desc="" data-index="14"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/15_188635.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 15" /></a></p>\r\n<p class="body-text"><em><strong>Bill Gates.</strong></em></p>\r\n<p class="body-text">Bill Gates nổi tiếng với việc sáng lập Microsoft - công ty phần mềm máy tính lớn nhất thế giới. Điều ấn tướng khi nói về Bill Gates đó là trong khi các tỷ phú khác đã sử dụng hàng "núi tiền" để cố gắng thu hút thêm quyền lực và ảnh hưởng chính trị của mình thì Gates lại mang tài sản của mình đi làm từ thiện và giúp đỡ những người nghèo khổ khắp thế giới.</p>\r\n<p class="body-text">Một trong những nỗ lực gần đây nhất của ông là giải quyết vấn đề thiếu nước sạch trên thế giới. Vào năm 2015, Bill Gates đã nỗ lực hết mình để thúc đẩy bộ xử lý đa năng được thiết kế để biến chất thải rắn của con người thành nước uống.</p>\r\n<p class="body-text">Năm 2017, tổng tài sản của Bill Gates có giá trị ròng khoảng 86 tỷ USD và tiếp tục giữ vững vị trí là người giàu nhất thế giới.</p>', '1. Bill Gates - 86 tỷ USD', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2017-11-29 06:42:38', '2017-11-29 06:42:38', '', 88, 'http://localhost:82/wordpress/2017/11/29/88-revision-v1/', 0, 'revision', '', 0),
(90, 4, '2017-11-29 06:43:11', '2017-11-29 06:43:11', '<p class="body-text"></p>\r\n<p class="body-text">Warren Edward Buffett sinh ngày 30/8/1930 tại Omaha, Nebraska, Hoa Kỳ - là một nhà đầu tư, doanh nhân nổi tiếng nhất tại Mỹ.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/14_199109.jpg" data-desc="" data-index="13"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/14_199109.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 14" /></a></p>\r\n<p class="body-text"><em>Warren Buffett.</em></p>\r\n<p class="body-text">Được coi là nhà đầu tư thành công nhất thế giới, cổ đông lớn nhất kiêm giám đốc hãng Berkshire Hathaway, đã từ nhiều năm nay Warren Buffett được tạp chí Forbes xếp ở vị trí người giàu thứ hai thế giới chỉ sau Bill Gates.</p>\r\n<p class="body-text">Ông được gọi là "Huyền thoại đến từ Omaha" do sự kiên định trong triết lý đầu tư theo giá trị cũng như lối sống tiết kiệm dù sở hữu khối tài sản khổng lồ.</p>\r\n<p class="body-text">Chẳng hạn tiền lương năm 2006 của ông chỉ là 100 nghìn USD, một con số rất nhỏ so với các nhà quản trị ở các hãng có cùng tầm cỡ Berkshire Hathaway;</p>\r\n<p class="body-text">Khác hẳn với những tỷ phú khác, Warren Buffett sống giản dị tại ngôi nhà mua từ năm 1958 ở Omaha với giá 31.500 USD (bây giờ giá trị khoảng 700.000 USD) dù ông còn sở hữu một căn khác giá 4 triệu USD tại Laguna Beach, tiểu bang California.</p>\r\n<p class="body-text">Đến 2017, tổng tài sản của Warren Buffett ước tính đạt 76,6 tỷ đô la Mỹ.</p>', '2. Warren Buffett - 75,6 tỷ USD', '', 'publish', 'closed', 'closed', '', '2-warren-buffett-756-ty-usd', '', '', '2017-11-29 06:43:11', '2017-11-29 06:43:11', '', 0, 'http://localhost:82/wordpress/?page_id=90', 0, 'page', '', 0),
(91, 4, '2017-11-29 06:43:11', '2017-11-29 06:43:11', '<p class="body-text"></p>\r\n<p class="body-text">Warren Edward Buffett sinh ngày 30/8/1930 tại Omaha, Nebraska, Hoa Kỳ - là một nhà đầu tư, doanh nhân nổi tiếng nhất tại Mỹ.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/14_199109.jpg" data-desc="" data-index="13"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/14_199109.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 14" /></a></p>\r\n<p class="body-text"><em>Warren Buffett.</em></p>\r\n<p class="body-text">Được coi là nhà đầu tư thành công nhất thế giới, cổ đông lớn nhất kiêm giám đốc hãng Berkshire Hathaway, đã từ nhiều năm nay Warren Buffett được tạp chí Forbes xếp ở vị trí người giàu thứ hai thế giới chỉ sau Bill Gates.</p>\r\n<p class="body-text">Ông được gọi là "Huyền thoại đến từ Omaha" do sự kiên định trong triết lý đầu tư theo giá trị cũng như lối sống tiết kiệm dù sở hữu khối tài sản khổng lồ.</p>\r\n<p class="body-text">Chẳng hạn tiền lương năm 2006 của ông chỉ là 100 nghìn USD, một con số rất nhỏ so với các nhà quản trị ở các hãng có cùng tầm cỡ Berkshire Hathaway;</p>\r\n<p class="body-text">Khác hẳn với những tỷ phú khác, Warren Buffett sống giản dị tại ngôi nhà mua từ năm 1958 ở Omaha với giá 31.500 USD (bây giờ giá trị khoảng 700.000 USD) dù ông còn sở hữu một căn khác giá 4 triệu USD tại Laguna Beach, tiểu bang California.</p>\r\n<p class="body-text">Đến 2017, tổng tài sản của Warren Buffett ước tính đạt 76,6 tỷ đô la Mỹ.</p>', '2. Warren Buffett - 75,6 tỷ USD', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2017-11-29 06:43:11', '2017-11-29 06:43:11', '', 90, 'http://localhost:82/wordpress/2017/11/29/90-revision-v1/', 0, 'revision', '', 0),
(92, 4, '2017-11-29 06:43:54', '2017-11-29 06:43:54', '<p class="body-text"></p>\r\n<p class="body-text">Jeff Bezos là người sáng lập ra Amazon.com - công ty thương mại điện tử hàng đầu thế giới, nhưng ít ai biết từ buổi ban đầu Jeff Bezos xây dựng Amazon.com chỉ để bán sách trực tuyến.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/13_129036.jpg" data-desc="" data-index="12"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/13_129036.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 13" /></a></p>\r\n<p class="body-text"><em>Jeff Bezos.</em></p>\r\n<p class="body-text">Ngày nay, Amazon bán bất cứ thứ gì có thể bán được. Vào năm 2015, công ty Amazon đã đạt được doanh thu khoảng 100 tỷ đô la/năm.</p>\r\n<p class="body-text">Đến năm 2017, Bezos đã tổng tài sản ước tính khoảng là 72,8 tỷ đô la. Bên cạnh Amazon, Bezos có một công ty hàng không tên là Blue Origin. Mục tiêu của Blue Origin là trở thành hãng du lịch vũ trụ giúp mọi người có thể bay vào vũ trụ đơn giản như đi du lịch từ quốc gia này đến quốc gia khác.</p>', '3. Jeff Bezos - 72,8 tỷ USD', '', 'publish', 'closed', 'closed', '', '3-jeff-bezos-728-ty-usd', '', '', '2017-11-29 06:43:54', '2017-11-29 06:43:54', '', 0, 'http://localhost:82/wordpress/?page_id=92', 0, 'page', '', 0),
(93, 4, '2017-11-29 06:43:54', '2017-11-29 06:43:54', '<p class="body-text"></p>\r\n<p class="body-text">Jeff Bezos là người sáng lập ra Amazon.com - công ty thương mại điện tử hàng đầu thế giới, nhưng ít ai biết từ buổi ban đầu Jeff Bezos xây dựng Amazon.com chỉ để bán sách trực tuyến.</p>\r\n<p class="body-image"><a class="photo" href="https://baomoi-photo-2-td.zadn.vn/w1000_r1m/17/06/10/70/22498336/13_129036.jpg" data-desc="" data-index="12"><img src="https://baomoi-photo-2-td.zadn.vn/w700_r1m/17/06/10/70/22498336/13_129036.jpg" alt="Top 15 tỷ phú giàu nhất thế giới năm 2017 - Ảnh 13" /></a></p>\r\n<p class="body-text"><em>Jeff Bezos.</em></p>\r\n<p class="body-text">Ngày nay, Amazon bán bất cứ thứ gì có thể bán được. Vào năm 2015, công ty Amazon đã đạt được doanh thu khoảng 100 tỷ đô la/năm.</p>\r\n<p class="body-text">Đến năm 2017, Bezos đã tổng tài sản ước tính khoảng là 72,8 tỷ đô la. Bên cạnh Amazon, Bezos có một công ty hàng không tên là Blue Origin. Mục tiêu của Blue Origin là trở thành hãng du lịch vũ trụ giúp mọi người có thể bay vào vũ trụ đơn giản như đi du lịch từ quốc gia này đến quốc gia khác.</p>', '3. Jeff Bezos - 72,8 tỷ USD', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2017-11-29 06:43:54', '2017-11-29 06:43:54', '', 92, 'http://localhost:82/wordpress/2017/11/29/92-revision-v1/', 0, 'revision', '', 0),
(94, 2, '2017-11-29 06:40:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:40:53', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?page_id=94', 0, 'page', '', 0),
(95, 4, '2017-11-29 06:45:23', '2017-11-29 06:45:23', 'cong dong shop chuyen cung cap them cho anh em sài. wordpress dùng để dễ sử lý , dễ sài không cần biết code', '10. theme xin lien hệ congdongshop.com nha anh em', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2017-11-29 06:45:23', '2017-11-29 06:45:23', '', 64, 'http://localhost:82/wordpress/2017/11/29/64-revision-v1/', 0, 'revision', '', 0),
(96, 4, '2017-11-29 06:45:35', '2017-11-29 06:45:35', 'du kien thuc khong nhiu nhung chia se cho cac ban de su ly no', '9. tai lieu wordpress tham khảo congdongshop.com nhé', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2017-11-29 06:45:35', '2017-11-29 06:45:35', '', 55, 'http://localhost:82/wordpress/2017/11/29/55-revision-v1/', 0, 'revision', '', 0),
(97, 4, '2017-11-29 06:45:52', '2017-11-29 06:45:52', '', '12', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2017-11-29 06:45:52', '2017-11-29 06:45:52', '', 80, 'http://localhost:82/wordpress/2017/11/29/80-revision-v1/', 0, 'revision', '', 0),
(98, 2, '2017-11-29 06:42:34', '2017-11-29 06:42:34', '', 'Nang mua dong', '', 'trash', 'open', 'open', '', 'nang-mua-dong__trashed', '', '', '2017-11-29 06:50:36', '2017-11-29 06:50:36', '', 0, 'http://localhost:82/wordpress/?p=98', 0, 'post', '', 0),
(99, 2, '2017-11-29 06:42:34', '2017-11-29 06:42:34', '', 'Nang mua dong', '', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2017-11-29 06:42:34', '2017-11-29 06:42:34', '', 98, 'http://localhost:82/wordpress/2017/11/29/98-revision-v1/', 0, 'revision', '', 0),
(100, 5, '2017-11-29 06:44:39', '2017-11-29 06:44:39', '<h3 class="title" style="text-align: center;">Gặp tác giả đề xuất cải tiến ‘Giáo dục’ thành ‘Záo zụk’</h3>\r\n<h3 class="title" style="text-align: center;"><strong>PGS.TS Bùi Hiền, tác giả của đề xuất cải tiến chữ cái Tiếng Việt, cho biết ông bị nhiều người chỉ trích, thậm chí nói rằng bị điên dù chưa hiểu rõ câu chuyện.</strong></h3>\r\nVietNamNet đã có cuộc trao đổi PGS.TS <a href="http://vietnamnet.vn/bui-hien-tag165089.html">Bùi Hiền</a>, nguyên Phó Hiệu trưởng Trường ĐH Sư phạm Ngoại ngữ Hà Nội, nguyên Phó Viện trưởng Viện Nội dung và Phương pháp dạy - học phổ thông.\r\n<div class="clearfix HeadCateBG"></div>\r\n<div class="ArticleDetail"></div>', '8. Gặp tác giả đề xuất cải tiến ‘Giáo dục’ thành ‘Záo zụk’', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2017-11-29 06:44:39', '2017-11-29 06:44:39', '', 42, 'http://localhost:82/wordpress/2017/11/29/42-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(101, 3, '2017-11-29 06:46:25', '2017-11-29 06:46:25', '', '12 Đô thị thông minh: Chiếc đũa thần có giúp Sài Gòn hết kẹt xe và ngập?', '', 'inherit', 'closed', 'closed', '', '80-autosave-v1', '', '', '2017-11-29 06:46:25', '2017-11-29 06:46:25', '', 80, 'http://localhost:82/wordpress/2017/11/29/80-autosave-v1/', 0, 'revision', '', 0),
(102, 3, '2017-11-29 06:46:42', '2017-11-29 06:46:42', '<h3>Bao giờ hết kẹt xe, ngập nước?</h3>\r\nTừng là người phụ trách lĩnh vực khoa học công nghệ của thành phố, Bí thư Thành uỷ Nguyễn Thiện Nhân bày tỏ nhiều kỳ vọng vào thành phố thông minh. Ông cho rằng TP.HCM - nơi đầu tiên trong cả nước thực hiện đề án là hoàn toàn đúng bởi đây là thành phố tích tụ nhiều bức xúc nhất.\r\n\r\n“Người dân hỏi bao giờ hết kẹt xe, bao giờ hết ngập nước? Có trả lời được không? Chúng ta chưa trả lời được vì dự báo chưa sát và chưa mô phỏng được”, Bí thư Nguyễn Thiện Nhân nói.\r\n\r\nÔng Nhân cho rằng bản chất làm đô thị thông minh là để "bớt giật mình" vì mọi thứ dự báo được. “Dự báo không tính bằng tay được, phải dùng máy tính, phần mềm”, ông Nhân nhấn mạnh.\r\n<table class="picture" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="pic"><img src="https://znews-photo-td.zadn.vn/w1024/Uploaded/pcwvopbb/2017_11_27/ho_sau_zing_2.jpg" alt="Do thi thong minh: Chiec dua than co giup Sai Gon het ket xe va ngap? hinh anh 1" width="2048" height="1365" /></td>\r\n</tr>\r\n<tr>\r\n<td class="pCaption caption">Thành phố thông minh có thể đưa ra dự báo nhưng đến bao giờ hết kẹt xe ngập nước vẫn là câu hỏi còn bỏ ngỏ. Ảnh: <em>Tùng Tin.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nÔng Nhân kỳ vọng thành phố thông minh có thể tác động đến những lĩnh vực cụ thể như chôn lấp rác, tăng số lượng rác tái chế và giảm chôn lấp. Bên cạnh đó, hệ thống cảm biến không khí cho phép dự báo mức độ sạch của môi trường sống.\r\n\r\nTheo ông Nguyễn Thiện Nhân, bốn mục tiêu mà đề án đặt ra là: TP cần phát triển kinh tế cao và bền vững. Môi trường sống của người dân phải tốt, hạ tầng, chất lượng không khí. Bản thân người dân phát huy tối đa quyền giám sát chính quyền của mình.\r\n\r\nTrong khi đó, Chủ tịch UBND TP Nguyễn Thành Phong gọi thành phố thông minh là luồng gió mới, là giải pháp phát triển phi truyền thống để nâng cao tăng trưởng cho thành phố. Theo ông Phong, thành phố thông minh cùng với những cơ chế đặc thù mà Quốc hội vừa thông qua chính là động lực phát triển mới.\r\n<h3>Cả Sài Gòn trong chiếc điện thoại</h3>\r\nĐể thực hiện thành phố thông minh, Phó chủ tịch UBND TP.HCM Trần Vĩnh Tuyến nói rằng người dân cần làm quen với điện thoại thông minh để biết được các cảnh báo chống ngập, kẹt xe hay tình hình giao thông. Người dân phải tương tác với chính quyền để xây dựng thành phố thông minh.\r\n\r\n“Tất cả mọi tiện ích chỉ nằm gọn trong chiếc điện thoại. Không thể nói rằng mình không biết dùng điện thoại thông minh, vì cháu bé 3 tuổi đã biết dùng”, ông Tuyến nói.\r\n<table class="picture" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="pic"><img src="https://znews-photo-td.zadn.vn/w1024/Uploaded/pcwvopbb/2017_11_27/trung_thit_ga_2_zing.jpg" alt="Do thi thong minh: Chiec dua than co giup Sai Gon het ket xe va ngap? hinh anh 2" width="1980" height="1324" /></td>\r\n</tr>\r\n<tr>\r\n<td class="pCaption caption">Người dân có thể truy xuất được "quê quán" của từng loại thực phẩm. Ảnh: <em>Lê Quân.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nVới giao thông thông minh, người dân sẽ sử dụng vé điện tử cho cả loại hình giao thông công cộng như xe buýt, metro. Một bản đồ xe buýt được gọi là busmap có tính tương tác với người dùng cũng nằm gọn trong chiếc điện thoại.\r\n\r\nTheo Phó chủ tịch UBND TP, điều tra mới nhất cho thấy 82% người dân thành phố dùng điện thoại thông minh. Từ đó, những người thực hiện dự án đặt mục tiêu phấn đấu 100% người dân đang dùng điện thoại thông minh sử dụng 1 phần mềm tiện ích.\r\n\r\nKhi nói về việc tích hợp thông tin đô thị và cơ chế bảo mật của nó, Bí thư Nguyễn Thiện Nhân cho rằng dù có thể mua nhưng công nghệ tiên tiến nhất thì người Việt Nam phải tự thực hiện phần việc này cho mình. Đó là cách để bảo vệ thông tin của thành phố, tránh bị các đối thủ sao chép và khai thác. “Thành phố phải có ''đám mây'' của mình”, ông Nhân nói.\r\n<table class="picture" align="center">\r\n<tbody>\r\n<tr>\r\n<td class="pic"><img src="https://znews-photo-td.zadn.vn/w1024/Uploaded/pcwvopbb/2017_11_27/CVArtboard_1.jpg" alt="Do thi thong minh: Chiec dua than co giup Sai Gon het ket xe va ngap? hinh anh 3" width="1920" height="1080" /></td>\r\n</tr>\r\n<tr>\r\n<td class="pCaption caption">Những người trẻ ở TP.HCM đang bỏ nhiều thời gian để trải nghiệm "cuộc sống mạng". Đồ hoạ: <em>Minh Trí.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\nTiến tới, TP.HCM sẽ xây dựng Trung tâm điều hành đô thị thông minh. Trung tâm là nơi sẽ tổng hợp tất cả các nguồn thông tin, dữ liệu hàng ngày của thành phố trên tất cả các lĩnh vực, qua đó giúp ứng cứu, xử lý tình huống.\r\n\r\nNgoài ra, Trung tâm An toàn thông tin sẽ đảm bảo an toàn thông tin mạng, đánh giá rủi ro, giám sát, phát hiện tấn công, cảnh báo sớm, ngăn chặn kịp thời và ứng cứu các sự cố liên quan đến an toàn thông tin cũng như an toàn cho các hệ thống thông tin và các hệ thống tự động hoá, hệ thống giám sát, điều khiển các cơ sở hạ tầng, dữ liệu trọng yếu của TP.\r\n\r\nÔng Nguyễn Thiện Nhân đánh giá những người trẻ ở TP.HCM đã thực sự sống trên mạng. Ở đó, họ kết bạn, học tập và tìm kiếm các cơ hội cho cuộc đời mình. “Không gian mạng để mỗi người sống trên đó là một nguyên tắc của đô thị thông minh. Lớp trẻ hiện nay đã ở trên mạng rồi”, ông Nhân bày tỏ.', '12 Đô thị thông minh: Chiếc đũa thần có giúp Sài Gòn hết kẹt xe và ngập?', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2017-11-29 06:46:42', '2017-11-29 06:46:42', '', 80, 'http://localhost:82/wordpress/2017/11/29/80-revision-v1/', 0, 'revision', '', 0),
(103, 3, '2017-11-29 06:46:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 06:46:47', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=103', 0, 'post', '', 0),
(104, 4, '2017-11-29 06:58:55', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:58:55', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=104', 1, 'nav_menu_item', '', 0),
(105, 4, '2017-11-29 06:59:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:59:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=105', 1, 'nav_menu_item', '', 0),
(106, 4, '2017-11-29 06:59:03', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:59:03', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=106', 1, 'nav_menu_item', '', 0),
(107, 4, '2017-11-29 06:59:07', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:59:07', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=107', 1, 'nav_menu_item', '', 0),
(108, 4, '2017-11-29 06:59:11', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:59:11', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=108', 1, 'nav_menu_item', '', 0),
(109, 4, '2017-11-29 06:59:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:59:20', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=109', 1, 'nav_menu_item', '', 0),
(110, 4, '2017-11-29 06:59:22', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:59:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=110', 1, 'nav_menu_item', '', 0),
(111, 4, '2017-11-29 06:59:25', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 06:59:25', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=111', 1, 'nav_menu_item', '', 0),
(124, 1, '2017-11-29 07:00:12', '0000-00-00 00:00:00', '{\n    "show_on_front": {\n        "value": "posts",\n        "type": "option",\n        "user_id": 1\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'e7adc80d-474d-4703-bfb5-0a6a55624468', '', '', '2017-11-29 07:00:12', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=124', 0, 'customize_changeset', '', 0),
(125, 3, '2017-11-29 07:08:09', '2017-11-29 07:08:09', '{"nav_menu_item[112]":{"value":{"menu_item_parent":0,"object_id":88,"object":"page","type":"post_type","type_label":"Page","url":"http:\\/\\/localhost:82\\/wordpress\\/1-bill-gates-86-ty-usd\\/","title":"1. Bill Gates \\u2013 86 t\\u1ef7 USD","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":2,"position":2,"status":"publish","original_title":"1. Bill Gates \\u2013 86 t\\u1ef7 USD","_invalid":false},"type":"nav_menu_item","user_id":3},"nav_menu_item[113]":{"value":{"menu_item_parent":0,"object_id":90,"object":"page","type":"post_type","type_label":"Page","url":"http:\\/\\/localhost:82\\/wordpress\\/2-warren-buffett-756-ty-usd\\/","title":"2. Warren Buffett \\u2013 75,6 t\\u1ef7 USD","target":"","attr_title":"","description":"","classes":"","xfn":"","nav_menu_term_id":2,"position":1,"status":"publish","original_title":"2. Warren Buffett \\u2013 75,6 t\\u1ef7 USD","_invalid":false},"type":"nav_menu_item","user_id":3},"nav_menu_item[121]":{"value":false,"type":"nav_menu_item","user_id":3},"nav_menu_item[122]":{"value":false,"type":"nav_menu_item","user_id":3},"nav_menu_item[123]":{"value":false,"type":"nav_menu_item","user_id":3}}', '', '', 'trash', 'closed', 'closed', '', 'bdc0977b-6e20-4e90-8178-9be700ce8252', '', '', '2017-11-29 07:08:09', '2017-11-29 07:08:10', '', 0, 'http://localhost:82/wordpress/?p=125', 0, 'customize_changeset', '', 0),
(126, 5, '2017-11-29 07:08:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-29 07:08:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=126', 0, 'post', '', 0),
(127, 3, '2017-11-29 07:11:08', '0000-00-00 00:00:00', '{"show_on_front":{"value":"posts","type":"option","user_id":3}}', '', '', 'auto-draft', 'closed', 'closed', '', '644e7856-39c9-4bf8-9a39-78105509d95b', '', '', '2017-11-29 07:11:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=127', 0, 'customize_changeset', '', 0),
(128, 3, '2017-11-29 07:25:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:25:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=128', 1, 'nav_menu_item', '', 0),
(129, 3, '2017-11-29 07:25:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:25:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=129', 1, 'nav_menu_item', '', 0),
(130, 3, '2017-11-29 07:25:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:25:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=130', 1, 'nav_menu_item', '', 0),
(131, 3, '2017-11-29 07:25:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:25:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=131', 1, 'nav_menu_item', '', 0),
(132, 3, '2017-11-29 07:25:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:25:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=132', 1, 'nav_menu_item', '', 0),
(133, 3, '2017-11-29 07:25:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:25:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=133', 1, 'nav_menu_item', '', 0),
(134, 3, '2017-11-29 07:25:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:25:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=134', 1, 'nav_menu_item', '', 0),
(135, 3, '2017-11-29 07:25:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:25:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=135', 1, 'nav_menu_item', '', 0),
(136, 3, '2017-11-29 07:25:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:25:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=136', 1, 'nav_menu_item', '', 0),
(137, 3, '2017-11-29 07:25:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:25:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=137', 1, 'nav_menu_item', '', 0),
(138, 3, '2017-11-29 07:25:05', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:25:05', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=138', 1, 'nav_menu_item', '', 0),
(139, 3, '2017-11-29 07:25:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:25:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=139', 1, 'nav_menu_item', '', 0),
(140, 3, '2017-11-29 07:25:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-11-29 07:25:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:82/wordpress/?p=140', 1, 'nav_menu_item', '', 0),
(157, 1, '2017-11-29 07:47:35', '2017-11-29 07:47:35', '<?php\r\n/**\r\n * Template part for displaying page content in page.php\r\n *\r\n * @link https://codex.wordpress.org/Template_Hierarchy\r\n *\r\n * @package WordPress\r\n * @subpackage Twenty_Seventeen\r\n * @since 1.0\r\n * @version 1.0\r\n */\r\n\r\n?>\r\n\r\n<article id="post-<?php the_ID(); ?>" <?php post_class(); ?> style="width:45%; float:left; padding:0 10px 0 0;">\r\n	<header class="entry-header">\r\n		<?php the_title( ''<h1 class="entry-title">'', ''</h1>'' ); ?>\r\n		<?php twentyseventeen_edit_link( get_the_ID() ); ?>\r\n	</header><!-- .entry-header -->\r\n	<div class="entry-content">\r\n		<?php\r\n			the_content();\r\n\r\n			wp_link_pages( array(\r\n				''before'' => ''<div class="page-links">'' . __( ''Pages:'', ''twentyseventeen'' ),\r\n				''after''  => ''</div>'',\r\n			) );\r\n		?>\r\n	</div><!-- .entry-content -->\r\n</article><!-- #post-## -->\r\n', '5. Cửa sổ tâm hồn bạn', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-11-29 07:47:35', '2017-11-29 07:47:35', '', 60, 'http://localhost:82/wordpress/2017/11/29/60-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2017-11-29 07:48:29', '2017-11-29 07:48:29', '<article id="post-<?php the_ID(); ?>" <?php post_class(); ?> style="width:45%; float:left; padding:0 10px 0 0;">\r\n	<header class="entry-header">\r\n		<?php the_title( ''<h1 class="entry-title">'', ''</h1>'' ); ?>\r\n		<?php twentyseventeen_edit_link( get_the_ID() ); ?>\r\n	</header><!-- .entry-header -->\r\n	<div class="entry-content">\r\n		<?php\r\n			the_content();\r\n\r\n			wp_link_pages( array(\r\n				''before'' => ''<div class="page-links">'' . __( ''Pages:'', ''twentyseventeen'' ),\r\n				''after''  => ''</div>'',\r\n			) );\r\n		?>\r\n	</div><!-- .entry-content -->\r\n</article><!-- #post-## -->\r\n', '5. Cửa sổ tâm hồn bạn', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-11-29 07:48:29', '2017-11-29 07:48:29', '', 60, 'http://localhost:82/wordpress/2017/11/29/60-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2017-11-29 07:52:43', '2017-11-29 07:52:43', '', '5. Cửa sổ tâm hồn bạn', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2017-11-29 07:52:43', '2017-11-29 07:52:43', '', 60, 'http://localhost:82/wordpress/2017/11/29/60-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'hhhh', 'hhhh', 0),
(4, 'jhjhg', 'jhjhg', 0),
(5, 'ha noi', 'ha-noi', 0),
(6, 'ba dinh', 'ba-dinh', 0),
(7, 'ho hoan kiem', 'ho-hoan-kiem', 0),
(8, 'quang truong ba dinh', 'quang-truong-ba-dinh', 0),
(9, 'ho chi minh', 'ho-chi-minh', 0),
(10, 'Cat Root', 'cat-root', 0),
(11, 'sub cat', 'sub-cat', 0),
(12, 'sub cat1', 'sub-cat1', 0),
(13, 'da nang', 'da-nang', 0),
(14, 'sub cat 2', 'sub-cat-2', 0),
(15, 'sub cat 3', 'sub-cat-3', 0),
(16, 'da nang so 1', 'da-nang-so-1', 0),
(17, 'da nang so 2', 'da-nang-so-2', 0),
(18, 'da nang so 3', 'da-nang-so-3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 1, 0),
(7, 1, 0),
(16, 1, 0),
(20, 3, 0),
(20, 4, 0),
(20, 5, 0),
(20, 7, 0),
(20, 8, 0),
(22, 1, 0),
(22, 3, 0),
(22, 4, 0),
(22, 5, 0),
(22, 7, 0),
(22, 8, 0),
(25, 1, 0),
(26, 1, 0),
(26, 3, 0),
(26, 4, 0),
(26, 7, 0),
(29, 15, 0),
(32, 1, 0),
(41, 1, 0),
(41, 8, 0),
(41, 9, 0),
(41, 11, 0),
(41, 12, 0),
(41, 13, 0),
(41, 14, 0),
(41, 15, 0),
(42, 5, 0),
(42, 10, 0),
(48, 1, 0),
(55, 1, 0),
(55, 5, 0),
(55, 7, 0),
(55, 9, 0),
(55, 13, 0),
(64, 1, 0),
(69, 1, 0),
(69, 10, 0),
(69, 13, 0),
(69, 14, 0),
(69, 16, 0),
(80, 1, 0),
(80, 3, 0),
(80, 5, 0),
(98, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 10),
(3, 3, 'category', '', 0, 4),
(4, 4, 'category', '', 3, 3),
(5, 5, 'category', 'sadasda', 0, 5),
(6, 6, 'category', '', 5, 0),
(7, 7, 'category', '', 5, 4),
(8, 8, 'category', '', 5, 3),
(9, 9, 'category', '', 0, 2),
(10, 10, 'category', '', 0, 2),
(11, 11, 'category', '', 10, 1),
(12, 12, 'category', '', 10, 1),
(13, 13, 'category', '', 0, 3),
(14, 14, 'category', '', 10, 2),
(15, 15, 'category', '', 10, 2),
(16, 16, 'category', '', 13, 1),
(17, 17, 'category', '', 13, 0),
(18, 18, 'category', '', 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=95 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"1269007133ff1af10143ac2b3bb565b08fe5ae744235295878edcf5a58f09318";a:4:{s:10:"expiration";i:1512108931;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511936131;}}'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '23'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(18, 1, 'wp_user-settings-time', '1511944430'),
(19, 2, 'nickname', 'anhdn'),
(20, 2, 'first_name', 'anhdn'),
(21, 2, 'last_name', 'anhdn'),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'true'),
(24, 2, 'comment_shortcuts', 'false'),
(25, 2, 'admin_color', 'fresh'),
(26, 2, 'use_ssl', '0'),
(27, 2, 'show_admin_bar_front', 'true'),
(28, 2, 'locale', ''),
(29, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(30, 2, 'wp_user_level', '10'),
(31, 2, 'dismissed_wp_pointers', ''),
(32, 2, 'session_tokens', 'a:1:{s:64:"e397f477199df7bd9ac9a6f3ccbd326b626239f3d581adadac80d62418c0c3e7";a:4:{s:10:"expiration";i:1512108346;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511935546;}}'),
(33, 2, 'wp_dashboard_quick_press_last_post_id', '14'),
(34, 3, 'nickname', 'nghiephv'),
(35, 3, 'first_name', 'Nghiệp'),
(36, 3, 'last_name', 'Hoàng'),
(37, 3, 'description', ''),
(38, 3, 'rich_editing', 'true'),
(39, 3, 'comment_shortcuts', 'false'),
(40, 3, 'admin_color', 'fresh'),
(41, 3, 'use_ssl', '0'),
(42, 3, 'show_admin_bar_front', 'true'),
(43, 3, 'locale', ''),
(44, 3, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(45, 3, 'wp_user_level', '10'),
(46, 3, 'dismissed_wp_pointers', ''),
(47, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(48, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(49, 4, 'nickname', 'vannd'),
(50, 4, 'first_name', 'van'),
(51, 4, 'last_name', 'nguyen'),
(52, 4, 'description', ''),
(53, 4, 'rich_editing', 'true'),
(54, 4, 'comment_shortcuts', 'false'),
(55, 4, 'admin_color', 'fresh'),
(56, 4, 'use_ssl', '0'),
(57, 4, 'show_admin_bar_front', 'true'),
(58, 4, 'locale', ''),
(59, 4, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(60, 4, 'wp_user_level', '10'),
(61, 4, 'dismissed_wp_pointers', ''),
(62, 5, 'nickname', 'tanlm'),
(63, 5, 'first_name', 'tan'),
(64, 5, 'last_name', 'le'),
(65, 5, 'description', ''),
(66, 5, 'rich_editing', 'true'),
(67, 5, 'comment_shortcuts', 'false'),
(68, 5, 'admin_color', 'fresh'),
(69, 5, 'use_ssl', '0'),
(70, 5, 'show_admin_bar_front', 'true'),
(71, 5, 'locale', ''),
(72, 5, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(73, 5, 'wp_user_level', '10'),
(74, 5, 'dismissed_wp_pointers', ''),
(75, 5, 'session_tokens', 'a:1:{s:64:"d5dbde323f1457498754e4e59e9017b79daa4b75a434eb972a3ac56149436584";a:4:{s:10:"expiration";i:1512108773;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511935973;}}'),
(76, 5, 'wp_dashboard_quick_press_last_post_id', '18'),
(77, 4, 'session_tokens', 'a:1:{s:64:"6a39a1c698c85f98ee45af295d85b001e815845023ed45089087ec676d354ba7";a:4:{s:10:"expiration";i:1512108623;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1511935823;}}'),
(78, 4, 'wp_dashboard_quick_press_last_post_id', '15'),
(79, 3, 'session_tokens', 'a:1:{s:64:"860ad920d7d4b13a0f8ec31f226fc6497e334a862e03e7b5468e9b9ea3d6fb1d";a:4:{s:10:"expiration";i:1512109161;s:2:"ip";s:3:"::1";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36";s:5:"login";i:1511936361;}}'),
(80, 3, 'wp_dashboard_quick_press_last_post_id', '30'),
(81, 4, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(82, 4, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(83, 4, 'nav_menu_recently_edited', '2'),
(84, 3, 'wp_user-settings', 'mfold=o'),
(85, 3, 'wp_user-settings-time', '1511939007'),
(86, 2, 'wp_user-settings', 'mfold=o'),
(87, 2, 'wp_user-settings-time', '1511939402'),
(88, 3, 'nav_menu_recently_edited', '2'),
(89, 3, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(90, 3, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(91, 2, 'nav_menu_recently_edited', '2'),
(92, 2, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(93, 2, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(94, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bafo6Tv79eAc8.M6ZenpIlTSN83LYA.', 'admin', 'poelun208@gmail.com', '', '2017-11-15 07:31:42', '', 0, 'admin'),
(2, 'anhdn', '$P$B886g8Kw4E4PaBOnlB/d8gm09xq6bq.', 'anhdn', 'anhdn@gmail.com', '', '2017-11-15 07:45:14', '1510731915:$P$BLyWi6JDwjzXxktB1CvfYFgeVztkz6.', 0, 'anhdn anhdn'),
(3, 'nghiephv', '$P$BB3F2pSDfNeIz.YqHGsyXLUv8rwDbI0', 'nghiephv', 'hoangnghiep169@gmail.com', '', '2017-11-15 07:46:51', '1510732012:$P$Bw81r1UDhodePC7vy35d1lfUQznkcm.', 0, 'Hoàng Nghiệp'),
(4, 'vannd', '$P$BrIheHiYBDqOQGjEsjMNRK/s8fPRDp1', 'vannd', 'duynguyen1109gl@gmail.com', '', '2017-11-15 07:48:06', '1510732087:$P$BLHFb.SvaAWf/12rHqeE1tOGNSttgR/', 0, 'van nguyen'),
(5, 'tanlm', '$P$BeA44xwEuGaENAjQEaHlM/iKZ0tHlE0', 'tanlm', 'minhtantt7@gmail.com', '', '2017-11-15 07:48:44', '1510732125:$P$B13lMO3a19E6lw74BHBaoyY4p/sff60', 0, 'tan le');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
