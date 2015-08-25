-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Client: 127.0.0.1
-- Généré le : Mar 25 Août 2015 à 09:46
-- Version du serveur: 5.5.20
-- Version de PHP: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `harnet`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
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
-- Structure de la table `wp_comments`
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
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Monsieur WordPress', '', 'https://wordpress.org/', '', '2015-08-19 15:44:52', '2015-08-19 14:44:52', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0),
(2, 5, 'Monsieur WordPress', '', 'https://wordpress.org/', '', '2015-08-17 15:56:41', '2015-08-17 14:56:41', 'Bonjour, ceci est un commentaire.\nPour supprimer un commentaire, connectez-vous et affichez les commentaires de cet article. Vous pourrez alors les modifier ou les supprimer.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
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
-- Structure de la table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=288 ;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://127.0.0.1/harnet2', 'yes'),
(2, 'home', 'http://127.0.0.1/harnet2', 'yes'),
(3, 'blogname', 'Dr Harnet', 'yes'),
(4, 'blogdescription', 'Africa Market Entry Strategist. Speaker &amp; Author', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'boris@hrseed.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:41:"contact-form-email/contact-form-email.php";i:1;s:41:"wordpress-importer/wordpress-importer.php";i:2;s:43:"wp-conversion-boxes/wp-conversion-boxes.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '1', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:3:{i:0;s:109:"F:\\boris\\repository20015\\drharnet\\drharnet\\www/wp-content/plugins/wp-conversion-boxes/wp-conversion-boxes.php";i:1;s:90:"F:\\boris\\repository20015\\drharnet\\drharnet\\www2/wp-content/themes/skt-full-width/style.css";i:2;s:0:"";}', 'no'),
(41, 'template', 'skt-full-width', 'yes'),
(42, 'stylesheet', 'skt-full-width', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33055', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '7', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33055', 'yes'),
(90, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'WPLANG', 'fr_FR', 'yes'),
(92, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(99, 'cron', 'a:4:{i:1440513896;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1440514005;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1440527880;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(104, '_transient_random_seed', '92fb2fe5f990f6457000d4ac1ac5b9a9', 'yes'),
(110, '_site_transient_timeout_browser_e3d9c0a5da590831cc59aca115b34dd3', '1440600336', 'yes'),
(111, '_site_transient_browser_e3d9c0a5da590831cc59aca115b34dd3', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.155";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(119, 'can_compress_scripts', '1', 'yes'),
(132, 'current_theme', 'SKT Full Width', 'yes'),
(133, 'theme_mods_skt-full-width', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:16:"background_image";s:58:"http://127.0.0.1/harnet2/wp-content/uploads/2015/08/bg.jpg";s:21:"background_attachment";s:5:"fixed";}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(135, '_site_transient_timeout_popular_importers_fr_FR', '1440168455', 'yes'),
(136, '_site_transient_popular_importers_fr_FR', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:86:"Install the Blogger importer to import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:109:"Install the category/tag converter to convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:9:"wpcat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:82:"Install the LiveJournal importer to import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:99:"Install the Movable Type importer to import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:61:"Install the blogroll importer to import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:58:"Install the RSS importer to import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:84:"Install the Tumblr importer to import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:130:"Install the WordPress importer to import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'yes'),
(137, 'recently_activated', 'a:0:{}', 'yes'),
(141, 'category_children', 'a:0:{}', 'yes'),
(145, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(149, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(151, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(152, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(156, 'optionsframework_skt_full_width', 'a:39:{s:4:"logo";s:65:"http://127.0.0.1/harnet2/wp-content/uploads/2015/08/Dr-Harnet.jpg";s:11:"footertext2";s:38:"©2015 Dr Harnet. All Rights Reserved.";s:22:"featured_as_background";b:0;s:16:"navigation_color";s:7:"#ea8e04";s:15:"navigation_icon";s:83:"http://127.0.0.1/harnet2/wp-content/themes/skt-full-width/images/nav-icon-hover.png";s:20:"pagin_grad_top_color";s:7:"#efa332";s:23:"pagin_grad_bottom_color";s:7:"#e84702";s:14:"sidebar-layout";s:4:"left";s:6:"style2";s:0:"";s:11:"sliderefect";s:1:"1";s:6:"slide1";s:73:"http://127.0.0.1/harnet2/wp-content/uploads/2015/08/businessinafrica1.jpg";s:11:"slidetitle1";s:14:"Slider Image 1";s:10:"slidedesc1";s:29:"Small description for slide 1";s:9:"slideurl1";s:6:"#link1";s:6:"slide2";s:0:"";s:11:"slidetitle2";s:14:"Slider Image 2";s:10:"slidedesc2";s:29:"Small description for slide 2";s:9:"slideurl2";s:6:"#link2";s:6:"slide3";s:0:"";s:11:"slidetitle3";s:0:"";s:10:"slidedesc3";s:0:"";s:9:"slideurl3";s:0:"";s:6:"slide4";s:0:"";s:11:"slidetitle4";s:0:"";s:10:"slidedesc4";s:0:"";s:9:"slideurl4";s:0:"";s:6:"slide5";s:0:"";s:11:"slidetitle5";s:0:"";s:10:"slidedesc5";s:0:"";s:9:"slideurl5";s:0:"";s:8:"facebook";s:93:"https://www.facebook.com/pages/Africa-Business-Jumpstart/745276662163866?skip_nax_wizard=true";s:7:"twitter";s:54:"http://twitter.com/https://twitter.com/africajumpstart";s:6:"google";s:51:"https://plus.google.com/106553478086304757836/posts";s:8:"linkedin";s:60:"https://www.linkedin.com/pub/harnet-bokrezion-phd/70/a87/3a1";s:8:"contact1";s:9:"Dr Harnet";s:8:"contact2";s:15:"123 Some Street";s:8:"contact3";s:6:"London";s:8:"contact4";s:12:"100 2000 300";s:8:"contact5";s:17:"info@drharnet.com";}', 'yes'),
(176, '_site_transient_timeout_available_translations', '1440010258', 'yes'),
(177, '_site_transient_available_translations', 'a:63:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 00:32:07";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-12 18:38:38";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3-RC/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 19:15:29";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 16:32:37";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 21:20:44";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 04:19:00";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 17:52:46";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 19:34:34";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 19:59:05";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 11:43:52";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:69:"https://downloads.wordpress.org/translation/core/4.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-12 10:52:32";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 07:47:31";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 22:20:50";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 20:57:21";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-13 23:56:05";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-14 00:38:16";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-16 10:50:33";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 18:40:22";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 09:02:20";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-25 13:39:01";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-05 20:09:08";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 17:44:49";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 09:17:58";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 16:20:55";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 23:34:00";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.7/haz.zip";s:3:"iso";a:1:{i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 15:13:38";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 17:54:39";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 15:21:29";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 13:36:47";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 17:46:00";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 16:41:23";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 08:12:35";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 12:52:27";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 22:59:51";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 07:48:28";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.7/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:45:19";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 13:06:08";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:56:13";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-02 07:53:33";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:63:"https://downloads.wordpress.org/translation/core/4.3-RC/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 16:59:52";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.7/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 17:15:31";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 09:45:23";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 16:44:05";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-26 00:43:12";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 12:37:24";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.7/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 17:16:31";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 18:31:56";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 19:56:35";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 14:10:42";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 09:27:51";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3-RC/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-17 14:18:20";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.7";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.7/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-08-11 11:08:44";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.2.4/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:3:"4.3";s:7:"updated";s:19:"2015-08-18 14:53:34";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.3/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.2.4";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.2.4/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(200, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1440198005', 'yes'),
(201, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:40:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5223";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3269";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3204";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2734";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2503";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2001";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"1906";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1836";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1787";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1769";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1738";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1728";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1621";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1419";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1357";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1299";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1207";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1165";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1150";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1021";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:3:"975";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:3:"942";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:3:"932";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"896";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"865";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"853";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"806";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"791";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"767";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"743";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"738";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"736";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"695";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"687";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"682";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"669";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"649";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"645";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"640";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"639";}}', 'yes'),
(221, '_site_transient_timeout_browser_16923c53238bd8753cd1eb89d4af2e75', '1441025212', 'yes'),
(222, '_site_transient_browser_16923c53238bd8753cd1eb89d4af2e75', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.157";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(233, '_transient_timeout_plugin_slugs', '1440509863', 'no'),
(234, '_transient_plugin_slugs', 'a:5:{i:0;s:19:"akismet/akismet.php";i:1;s:41:"contact-form-email/contact-form-email.php";i:2;s:9:"hello.php";i:3;s:41:"wordpress-importer/wordpress-importer.php";i:4;s:43:"wp-conversion-boxes/wp-conversion-boxes.php";}', 'no'),
(238, 'rewrite_rules', 'a:68:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=7&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(239, 'wpcb_default_box', '0', 'yes'),
(240, 'wpcb_all_posts', '0', 'yes'),
(241, 'wpcb_all_pages', '1', 'yes'),
(242, 'wpcb_enable_credit_link', '0', 'yes'),
(243, 'wpcb_database_version', '1', 'yes'),
(267, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:3:"4.3";s:12:"last_checked";i:1440488070;}', 'yes'),
(268, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1440488078;}', 'yes'),
(269, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1440488078;}', 'yes'),
(282, '_site_transient_timeout_theme_roots', '1440489872', 'yes'),
(283, '_site_transient_theme_roots', 'a:4:{s:14:"skt-full-width";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(285, '_transient_timeout_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '1440531402', 'no'),
(286, '_transient_dash_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: Could not resolve host: feeds.feedburner.com; Host not found</p></div><div class="rss-widget"><p><strong>Erreur RSS&nbsp;:</strong> WP HTTP Error: Could not resolve host: feeds.feedburner.com; Host not found</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(287, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=98 ;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 5, '_wp_trash_meta_status', 'publish'),
(5, 5, '_wp_trash_meta_time', '1439827404'),
(6, 5, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(7, 6, '_wp_page_template', 'page-full-width.php'),
(8, 6, '_wp_trash_meta_status', 'publish'),
(9, 6, '_wp_trash_meta_time', '1439839625'),
(10, 7, '_edit_last', '1'),
(11, 7, '_wp_page_template', 'page-full-width.php'),
(12, 8, '_menu_item_type', 'post_type'),
(13, 8, '_menu_item_menu_item_parent', '0'),
(14, 8, '_menu_item_object_id', '7'),
(15, 8, '_menu_item_object', 'page'),
(16, 8, '_menu_item_target', ''),
(17, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(18, 8, '_menu_item_xfn', ''),
(19, 8, '_menu_item_url', ''),
(20, 9, '_edit_last', '1'),
(21, 9, '_wp_page_template', 'page-full-width.php'),
(22, 10, '_edit_last', '1'),
(23, 10, '_wp_page_template', 'page-full-width.php'),
(24, 11, '_edit_last', '1'),
(25, 11, '_wp_page_template', 'page-full-width.php'),
(26, 13, '_edit_last', '1'),
(27, 13, '_wp_page_template', 'page-full-width.php'),
(28, 15, '_edit_last', '1'),
(29, 15, '_wp_page_template', 'page-full-width.php'),
(30, 17, '_edit_last', '1'),
(31, 17, '_wp_page_template', 'page-full-width.php'),
(32, 18, '_menu_item_type', 'post_type'),
(33, 18, '_menu_item_menu_item_parent', '0'),
(34, 18, '_menu_item_object_id', '17'),
(35, 18, '_menu_item_object', 'page'),
(36, 18, '_menu_item_target', ''),
(37, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(38, 18, '_menu_item_xfn', ''),
(39, 18, '_menu_item_url', ''),
(40, 19, '_menu_item_type', 'post_type'),
(41, 19, '_menu_item_menu_item_parent', '0'),
(42, 19, '_menu_item_object_id', '9'),
(43, 19, '_menu_item_object', 'page'),
(44, 19, '_menu_item_target', ''),
(45, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(46, 19, '_menu_item_xfn', ''),
(47, 19, '_menu_item_url', ''),
(48, 25, '_wp_attached_file', '2015/08/Dr-Harnet-Bokrezion-200x240.jpg'),
(49, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:240;s:4:"file";s:39:"2015/08/Dr-Harnet-Bokrezion-200x240.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"Dr-Harnet-Bokrezion-200x240-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"homepage-thumb";a:4:{s:4:"file";s:39:"Dr-Harnet-Bokrezion-200x240-200x145.jpg";s:5:"width";i:200;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(50, 28, '_edit_last', '1'),
(51, 28, '_wp_page_template', 'page-full-width.php'),
(52, 29, '_menu_item_type', 'post_type'),
(53, 29, '_menu_item_menu_item_parent', '0'),
(54, 29, '_menu_item_object_id', '28'),
(55, 29, '_menu_item_object', 'page'),
(56, 29, '_menu_item_target', ''),
(57, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(58, 29, '_menu_item_xfn', ''),
(59, 29, '_menu_item_url', ''),
(60, 2, '_wp_trash_meta_status', 'publish'),
(61, 2, '_wp_trash_meta_time', '1439996009'),
(62, 28, '_edit_lock', '1439998244:1'),
(65, 7, '_edit_lock', '1440488368:1'),
(66, 9, '_edit_lock', '1440455403:1'),
(67, 17, '_edit_lock', '1439998209:1'),
(68, 1, '_wp_trash_meta_status', 'publish'),
(69, 1, '_wp_trash_meta_time', '1439999010'),
(70, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(71, 41, '_wp_attached_file', '2015/08/businessinafrica.jpg'),
(72, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4000;s:6:"height";i:3000;s:4:"file";s:28:"2015/08/businessinafrica.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"businessinafrica-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"businessinafrica-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:29:"businessinafrica-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"homepage-thumb";a:4:{s:4:"file";s:28:"businessinafrica-240x145.jpg";s:5:"width";i:240;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:61:"Africa’s growth is projected to accelerate in 2014 and 2015";s:17:"created_timestamp";i:1381742460;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:61:"Africa’s growth is projected to accelerate in 2014 and 2015";s:11:"orientation";i:0;}}'),
(73, 42, '_wp_attached_file', '2015/08/africa.jpg'),
(74, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:911;s:4:"file";s:18:"2015/08/africa.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"africa-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"africa-300x142.jpg";s:5:"width";i:300;s:6:"height";i:142;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"africa-1024x486.jpg";s:5:"width";i:1024;s:6:"height";i:486;s:9:"mime-type";s:10:"image/jpeg";}s:14:"homepage-thumb";a:4:{s:4:"file";s:18:"africa-240x145.jpg";s:5:"width";i:240;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(75, 43, '_wp_attached_file', '2015/08/bg.jpg'),
(76, 43, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4256;s:6:"height";i:2832;s:4:"file";s:14:"2015/08/bg.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"bg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"bg-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"bg-1024x681.jpg";s:5:"width";i:1024;s:6:"height";i:681;s:9:"mime-type";s:10:"image/jpeg";}s:14:"homepage-thumb";a:4:{s:4:"file";s:14:"bg-240x145.jpg";s:5:"width";i:240;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(77, 44, '_wp_attached_file', '2015/08/bbg.jpg'),
(78, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:15:"2015/08/bbg.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"bbg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"bbg-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:16:"bbg-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:14:"homepage-thumb";a:4:{s:4:"file";s:15:"bbg-240x145.jpg";s:5:"width";i:240;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(79, 45, '_wp_attached_file', '2015/08/businessinafrica1.jpg'),
(80, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4000;s:6:"height";i:3000;s:4:"file";s:29:"2015/08/businessinafrica1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"businessinafrica1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"businessinafrica1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"businessinafrica1-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"homepage-thumb";a:4:{s:4:"file";s:29:"businessinafrica1-240x145.jpg";s:5:"width";i:240;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(81, 43, '_wp_attachment_is_custom_background', 'skt-full-width'),
(82, 47, '_wp_attached_file', '2015/08/Dr-Harnet.jpg'),
(83, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:240;s:4:"file";s:21:"2015/08/Dr-Harnet.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"Dr-Harnet-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:14:"homepage-thumb";a:4:{s:4:"file";s:21:"Dr-Harnet-200x145.jpg";s:5:"width";i:200;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(84, 48, '_wp_attached_file', '2015/08/businessinafrica2.jpg'),
(85, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4000;s:6:"height";i:3000;s:4:"file";s:29:"2015/08/businessinafrica2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"businessinafrica2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:29:"businessinafrica2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"businessinafrica2-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:14:"homepage-thumb";a:4:{s:4:"file";s:29:"businessinafrica2-240x145.jpg";s:5:"width";i:240;s:6:"height";i:145;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(92, 60, '_wp_attached_file', '2015/08/af.png'),
(93, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:201;s:6:"height";i:64;s:4:"file";s:14:"2015/08/af.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"af-150x64.png";s:5:"width";i:150;s:6:"height";i:64;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(94, 61, '_wp_attached_file', '2015/08/forbesafrica.png'),
(95, 61, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:231;s:6:"height";i:64;s:4:"file";s:24:"2015/08/forbesafrica.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"forbesafrica-150x64.png";s:5:"width";i:150;s:6:"height";i:64;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(96, 62, '_wp_attached_file', '2015/08/howafrica.png'),
(97, 62, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:181;s:6:"height";i:64;s:4:"file";s:21:"2015/08/howafrica.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"howafrica-150x64.png";s:5:"width";i:150;s:6:"height";i:64;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
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
  `post_password` varchar(20) NOT NULL DEFAULT '',
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-08-19 15:44:52', '2015-08-19 14:44:52', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2015-08-19 16:43:30', '2015-08-19 15:43:30', '', 0, 'http://127.0.0.1/harnet2/?p=1', 0, 'post', '', 1),
(2, 1, '2015-08-19 15:44:52', '2015-08-19 14:44:52', 'Voici un exemple de page. Elle est différente d''un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://127.0.0.1/harnet2/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'trash', 'open', 'open', '', 'page-d-exemple', '', '', '2015-08-19 15:53:29', '2015-08-19 14:53:29', '', 0, 'http://127.0.0.1/harnet2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-08-19 15:45:38', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-19 15:45:38', '0000-00-00 00:00:00', '', 0, 'http://127.0.0.1/harnet2/?p=3', 0, 'post', '', 0),
(5, 1, '2015-08-17 15:56:41', '2015-08-17 14:56:41', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde-2', '', '', '2015-08-17 15:56:41', '2015-08-17 14:56:41', '', 0, 'http://www.drharnet.hrseed.com/?p=1', 0, 'post', '', 0),
(6, 1, '2015-08-17 15:56:41', '2015-08-17 14:56:41', 'Voici un exemple de page. Elle est différente d''un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page &laquo;&nbsp;À Propos&nbsp;&raquo; qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant&nbsp;:\n\n<blockquote>Bonjour&nbsp;! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça&nbsp;:\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2&nbsp;000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nEtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://www.drharnet.hrseed.com/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien&nbsp;!', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple-2', '', '', '2015-08-17 15:56:41', '2015-08-17 14:56:41', '', 0, 'http://www.drharnet.hrseed.com/?page_id=2', 0, 'page', '', 0),
(7, 1, '2015-08-17 16:21:41', '2015-08-17 15:21:41', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market entry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\n<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n</ul>\r\nAs featured in:\r\n<table>\r\n<tr>\r\n<td>\r\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/af.png" alt="af" width="126" height="40" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/forbesafrica.png" alt="forbesafrica" width="127" height="35" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/howafrica.png" alt="howafrica" width="127" height="45" /></a>\r\n</td>\r\n</tr>\r\n</table>', 'Increase your success rate in Africa !', '', 'publish', 'closed', 'closed', '', 'increase-your-success-rate-in-africa', '', '', '2015-08-25 08:39:21', '2015-08-25 07:39:21', '', 0, 'http://www.drharnet.hrseed.com/?page_id=4', 0, 'page', '', 0),
(8, 1, '2015-08-19 15:50:33', '2015-08-19 14:50:33', ' ', '', '', 'publish', 'closed', 'closed', '', '8', '', '', '2015-08-19 16:37:31', '2015-08-19 15:37:31', '', 0, 'http://127.0.0.1/harnet2/2015/08/19/', 1, 'nav_menu_item', '', 0),
(9, 1, '2015-08-17 16:30:44', '2015-08-17 15:30:44', '<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n</ul>', 'My Services', '', 'publish', 'closed', 'closed', '', 'my-services', '', '', '2015-08-24 22:41:36', '2015-08-24 21:41:36', '', 0, 'http://www.drharnet.hrseed.com/?page_id=7', 1, 'page', '', 0),
(10, 1, '2015-08-17 16:33:57', '2015-08-17 15:33:57', 'Africa market entry and expansion is a complex undertaking for any company requiring a knowledge of the unique dynamics across Africa''s markets and then figuring out how to turn from a newcomer into a recognised and successful player in a new market.\n\nYou need a road map. A combination of market knowledge and plan of action with a local context.\nAs part of your extended team, I will design a tailor-made Africa Market Entry Strategy that aligns both with your company culture &amp; objectives AND Africa''s realities on the ground - this way you will achieve your ambitious goals efficiently and in the shortest period of time.\n<blockquote>I proudly distinguish myself as an Africa market strategist who sees beyond growth figures and statistics. In order to position yourself and win the market''s confidence your ideas and products need to come to life in an African market milieu. I will develop time-saving strategies with your firm to achieve that both at market entry or at early growth stage.\n\nAfrica market entry done the right way will allow for a future of great possibilities, growth, and superior performance. Your success is my conviction.\n\nAre you thinking of entering new markets in Africa? Contact me today at ......</blockquote>', 'Market Entry Strategy and Expansion', '', 'publish', 'closed', 'closed', '', 'market-entry-strategy-and-expansion', '', '', '2015-08-17 16:33:57', '2015-08-17 15:33:57', '', 9, 'http://www.drharnet.hrseed.com/?page_id=9', 0, 'page', '', 0),
(11, 1, '2015-08-17 16:36:49', '2015-08-17 15:36:49', 'In managing change, many businesses have unique challenges that are not easily solved. To enter new markets is a very complex undertaking and it can be challenging for your team to adapt to that and make decisions swiftly and confidently. Are you losing valuable time leveraging the competitive advantage of early movers because of that? Such special projects typically require complimentary talents by outside participants accustomed to delivering high performance. That''s exactly where I come in.\n \nI train experienced and ambitious Executives and senior management in aspects around \nRapid Africa market appraisal\nAligned market selection\nSmart Africa market entry strategies\nRisk assessment and local risk mitigation strategies\nReliable local partnership building\nStrategic local positioning\nTrade barriers\nPrice localization\nLicensing, , Business Alliance, Joint ventures, Import-Export, Outsourcing\nMarketing strategies\nGrowth strategies for increased success in Africa \n\nI deliver Africa Business Executive Training sessions both in-house (on request) across the globe and as training events (public or by invitation) in Germany, the UK, and the USA.\n', 'Africa Business Executive Training', '', 'publish', 'closed', 'closed', '', 'africa-business-executive-training', '', '', '2015-08-17 16:36:49', '2015-08-17 15:36:49', '', 9, 'http://www.drharnet.hrseed.com/?page_id=11', 1, 'page', '', 0),
(13, 1, '2015-08-17 16:37:42', '2015-08-17 15:37:42', 'My Business Trade Missions and on the ground Start-Up Acceleration Program offer your company an excellent chance to visit your African target market, meet local industry stakeholders, get more insights into the business dynamics on the ground, identify relevant industry opportunities, find potential business partners, and start building your African business venture. You just need to book the flights, I will do the rest. Be ensured to have a hands-on Africa business experience that will catapult you to the next level in your endeavours.\n\nI offer this service to:\n•	Company executives of large businesses and SMEs\n•	Business councils and chambers\n•	Investors\n•	The Start-Up Acceleration Program is also available to entrepreneurs who have a start-up capital > $50,000\n', 'Customized  Business Trade Missions', '', 'publish', 'closed', 'closed', '', 'customized-business-trade-missions', '', '', '2015-08-17 16:37:42', '2015-08-17 15:37:42', '', 9, 'http://www.drharnet.hrseed.com/?page_id=13', 0, 'page', '', 0),
(15, 1, '2015-08-17 16:38:49', '2015-08-17 15:38:49', 'Speaking is one of the best ways to inspire people and motivate them to take action. That''s why I love public speaking. I want your audience to not just know about opportunities in Africa, but to be utterly keen to grab them with both hands. I will be more than honoured to speak at your event - small or large - about business opportunities in Africa''s emerging markets, market entry strategies, and smart ways to increase your success rate in Africa that are too often overlooked.\nI speak at:\nYour corporate event\nAfrica Business and emerging market conferences & seminars\nAcademic institutions and business schools\nBusiness chamber events\n', 'Speaking', '', 'publish', 'closed', 'closed', '', 'speaking', '', '', '2015-08-17 16:38:49', '2015-08-17 15:38:49', '', 9, 'http://www.drharnet.hrseed.com/?page_id=15', 0, 'page', '', 0),
(17, 1, '2015-08-17 16:40:00', '2015-08-17 15:40:00', 'Hi, I am Dr. Harnet Bokrezion, Africa Market Entry Strategist, Speaker & Author.\nI have lived and worked in Great Britain, Eritrea, Sudan, and Germany, mostly as a Senior International Development Consultant for Africa where I worked in UN, EU, and Oxfam funded programs for 14 years. After having my two little children and getting increasingly frustrated with the mainstream approach of ‘helping Africa’, I decided in 2012 to shift from the traditional development context towards an emerging markets and business approach for Africa. \n\nWhat I bring onto the table\n\nIn short: clarity, course, and context. And that will help you make decisions faster and more confidently, mitigate risk, and ultimately save you a lot of money.\n\nWorking with clients from the US, Germany, the UK, Poland, and various African countries, I quickly realized that the biggest hindrance for companies to move forward swiftly and confidently occurred long before they were struggling with challenges on the ground in Africa. I found that the biggest wall was the planning stage for Africa market entry or expansion. Have you chosen the right markets - and on what basis did you make these choices? How and where do you get started? How do you mitigate risk and position your company successfully? How do you prepare your management team?\n\nAs a result, many company executives have frankly made wrong decisions or (so far and too often) none at all. Both will always come at a loss both time and cost-wise. So yes, I have advised company leaders to abandon their early start-up efforts or approaches made so far and to start on a fresh canvas and we managed to turn things around.\n\nI want to bring hands-on Africa market entry strategies into life that are aligned both with your company culture and goals and the realities on Africa''s ground. Doing business in Africa is simply different and while companies from other emerging markets seem to adapt somewhat faster, Western companies in particular will find an additional challenge in both formulating and implementing an Africa market entry strategy that is efficient and very importantly somewhat localized.\n\n\nI work with ambitious and experienced company executives from across the globe - including from within Africa! - who need an extra brain and smart strategies when planning their market entry or expansion in Africa. I also continue to widely share my market insights and tips on publications such as Forbes Africa, Air France / KLM Africa Club, and the DHL sponsored howwemadeitinafrica.com and was honoured to be invited as a speaker at the European Union Development Days in Brussels, and as a panel moderator at the renowned annual Africa Business Conference of the Harvard Business School in Boston. I also co-wrote a book for entrepreneurs titled ''101 Ways To Make Money In Africa'', which you can get on my book site or on Amazon.\n\nAfrica indeed is open for business and I mean it when I say: I am very excited about Africa''s future and about working with you! I would be very happy to hear from you and discuss your company''s goals in Africa. Just drop me an e-mail at XXX\n\nYours, \nDr. Harnet\n', 'About me', '', 'publish', 'closed', 'closed', '', 'about-me', '', '', '2015-08-19 16:30:09', '2015-08-19 15:30:09', '', 0, 'http://www.drharnet.hrseed.com/?page_id=17', 2, 'page', '', 0),
(18, 1, '2015-08-19 15:50:34', '2015-08-19 14:50:34', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2015-08-19 15:50:34', '2015-08-19 14:50:34', '', 0, 'http://127.0.0.1/harnet2/2015/08/19/', 1, 'nav_menu_item', '', 0),
(19, 1, '2015-08-19 15:50:34', '2015-08-19 14:50:34', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2015-08-19 15:50:34', '2015-08-19 14:50:34', '', 0, 'http://127.0.0.1/harnet2/2015/08/19/', 1, 'nav_menu_item', '', 0),
(25, 1, '2015-08-17 19:34:00', '2015-08-17 18:34:00', '', 'Dr-Harnet-Bokrezion-200x240', '', 'inherit', 'open', 'open', '', 'dr-harnet-bokrezion-200x240', '', '', '2015-08-17 19:34:00', '2015-08-17 18:34:00', '', 0, 'http://127.0.0.1/harnet2/wp-content/uploads/2015/08/Dr-Harnet-Bokrezion-200x240.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2015-08-17 20:34:44', '2015-08-17 19:34:44', '[think_contact/]', 'Contact me', '', 'publish', 'open', 'closed', '', 'contact-me', '', '', '2015-08-19 16:30:43', '2015-08-19 15:30:43', '', 0, 'http://www.drharnet.hrseed.com/?page_id=28', 3, 'page', '', 0),
(29, 1, '2015-08-19 15:50:45', '2015-08-19 14:50:45', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2015-08-19 15:50:45', '2015-08-19 14:50:45', '', 0, 'http://127.0.0.1/harnet2/2015/08/19/', 1, 'nav_menu_item', '', 0),
(30, 1, '2015-08-19 15:53:29', '2015-08-19 14:53:29', 'Voici un exemple de page. Elle est différente d''un article de blog, en cela qu''elle restera à la même place, et s''affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et voici mon blog. J''habite à Bordeaux, j''ai un super chien baptisé Russell, et j''aime la vodka-ananas (ainsi que regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme ça :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n''a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur de WordPress, vous devriez vous rendre sur votre <a href="http://127.0.0.1/harnet2/wp-admin/">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d&rsquo;exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2015-08-19 15:53:29', '2015-08-19 14:53:29', '', 2, 'http://127.0.0.1/harnet2/2015/08/19/2-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2015-08-19 16:19:38', '2015-08-19 15:19:38', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\nMy services :\n<ul>\n		<li><a href="http://www.drharnet.hrseed.com/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a>\n</li>\n\n	<li><a href="http://www.drharnet.hrseed.com/africa-business-executive-training/">Africa Business Executive Training</a>\n</li>\n\n	<li><a href="http://www.drharnet.hrseed.com/customized-business-trade-missions/">Business Trade Missions</a>\n</li>\n\n	<li><a href="http://www.drharnet.hrseed.com/speaking/">Speaking</a></li>\n\n</ul>', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-19 16:19:38', '2015-08-19 15:19:38', '', 7, 'http://127.0.0.1/harnet2/2015/08/19/7-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2015-08-19 16:22:02', '2015-08-19 15:22:02', '<a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a>\n\n<a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a>\n\n<a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a>\n\n<a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a>', 'My Services', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2015-08-19 16:22:02', '2015-08-19 15:22:02', '', 9, 'http://127.0.0.1/harnet2/2015/08/19/9-autosave-v1/', 0, 'revision', '', 0),
(34, 1, '2015-08-19 16:22:14', '2015-08-19 15:22:14', '<a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a>\r\n\r\n<a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a>\r\n\r\n<a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a>\r\n\r\n<a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a>', 'My Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-08-19 16:22:14', '2015-08-19 15:22:14', '', 9, 'http://127.0.0.1/harnet2/2015/08/19/9-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2015-08-19 16:25:16', '2015-08-19 15:25:16', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\nMy services :\r\n<ul>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li>&nbsp;\r\n\r\n<a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li>&nbsp;\r\n\r\n<a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n	<li>&nbsp;\r\n\r\n<a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n</ul>', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-19 16:25:16', '2015-08-19 15:25:16', '', 7, 'http://127.0.0.1/harnet2/2015/08/19/7-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2015-08-24 22:36:54', '2015-08-24 21:36:54', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\n<ul class="bmenu">\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\n	<li><a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\n</ul>\nAs featured in:\n<table>\n\n<td>\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/af.png" alt="af" width="126" height="40" /></a>\n</td>\n<td>\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/forbesafrica.png" alt="forbesafrica" width="127" height="35" /></a>\n</td>\n<td>\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/howafrica.png" alt="howafrica" width="127" height="45" /></a>\n</td>\n</tr>\n</table>', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-autosave-v1', '', '', '2015-08-24 22:36:54', '2015-08-24 21:36:54', '', 7, 'http://127.0.0.1/harnet2/2015/08/19/7-autosave-v1/', 0, 'revision', '', 0),
(37, 1, '2015-08-19 16:28:11', '2015-08-19 15:28:11', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\nMy services :\r\n<ul>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n	<li> <a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n</ul>', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-19 16:28:11', '2015-08-19 15:28:11', '', 7, 'http://127.0.0.1/harnet2/2015/08/19/7-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2015-08-19 16:30:09', '2015-08-19 15:30:09', 'Hi, I am Dr. Harnet Bokrezion, Africa Market Entry Strategist, Speaker & Author.\nI have lived and worked in Great Britain, Eritrea, Sudan, and Germany, mostly as a Senior International Development Consultant for Africa where I worked in UN, EU, and Oxfam funded programs for 14 years. After having my two little children and getting increasingly frustrated with the mainstream approach of ‘helping Africa’, I decided in 2012 to shift from the traditional development context towards an emerging markets and business approach for Africa. \n\nWhat I bring onto the table\n\nIn short: clarity, course, and context. And that will help you make decisions faster and more confidently, mitigate risk, and ultimately save you a lot of money.\n\nWorking with clients from the US, Germany, the UK, Poland, and various African countries, I quickly realized that the biggest hindrance for companies to move forward swiftly and confidently occurred long before they were struggling with challenges on the ground in Africa. I found that the biggest wall was the planning stage for Africa market entry or expansion. Have you chosen the right markets - and on what basis did you make these choices? How and where do you get started? How do you mitigate risk and position your company successfully? How do you prepare your management team?\n\nAs a result, many company executives have frankly made wrong decisions or (so far and too often) none at all. Both will always come at a loss both time and cost-wise. So yes, I have advised company leaders to abandon their early start-up efforts or approaches made so far and to start on a fresh canvas and we managed to turn things around.\n\nI want to bring hands-on Africa market entry strategies into life that are aligned both with your company culture and goals and the realities on Africa''s ground. Doing business in Africa is simply different and while companies from other emerging markets seem to adapt somewhat faster, Western companies in particular will find an additional challenge in both formulating and implementing an Africa market entry strategy that is efficient and very importantly somewhat localized.\n\n\nI work with ambitious and experienced company executives from across the globe - including from within Africa! - who need an extra brain and smart strategies when planning their market entry or expansion in Africa. I also continue to widely share my market insights and tips on publications such as Forbes Africa, Air France / KLM Africa Club, and the DHL sponsored howwemadeitinafrica.com and was honoured to be invited as a speaker at the European Union Development Days in Brussels, and as a panel moderator at the renowned annual Africa Business Conference of the Harvard Business School in Boston. I also co-wrote a book for entrepreneurs titled ''101 Ways To Make Money In Africa'', which you can get on my book site or on Amazon.\n\nAfrica indeed is open for business and I mean it when I say: I am very excited about Africa''s future and about working with you! I would be very happy to hear from you and discuss your company''s goals in Africa. Just drop me an e-mail at XXX\n\nYours, \nDr. Harnet\n', 'About me', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2015-08-19 16:30:09', '2015-08-19 15:30:09', '', 17, 'http://127.0.0.1/harnet2/2015/08/19/17-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2015-08-19 16:30:43', '2015-08-19 15:30:43', '[think_contact/]', 'Contact me', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-08-19 16:30:43', '2015-08-19 15:30:43', '', 28, 'http://127.0.0.1/harnet2/2015/08/19/28-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2015-08-19 16:43:30', '2015-08-19 15:43:30', 'Bienvenue dans WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous&nbsp;!', 'Bonjour tout le monde&nbsp;!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2015-08-19 16:43:30', '2015-08-19 15:43:30', '', 1, 'http://127.0.0.1/harnet2/2015/08/19/1-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2015-08-19 17:10:59', '2015-08-19 16:10:59', '', 'Africa’s growth is projected to accelerate in 2014 and 2015', 'Africa’s growth is projected to accelerate in 2014 and 2015', 'inherit', 'open', 'closed', '', 'africas-growth-is-projected-to-accelerate-in-2014-and-2015', '', '', '2015-08-19 17:10:59', '2015-08-19 16:10:59', '', 0, 'http://127.0.0.1/harnet2/wp-content/uploads/2015/08/businessinafrica.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2015-08-19 17:14:24', '2015-08-19 16:14:24', '', 'africa', '', 'inherit', 'open', 'closed', '', 'africa', '', '', '2015-08-19 17:14:24', '2015-08-19 16:14:24', '', 0, 'http://127.0.0.1/harnet2/wp-content/uploads/2015/08/africa.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2015-08-19 17:20:17', '2015-08-19 16:20:17', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg', '', '', '2015-08-19 17:20:17', '2015-08-19 16:20:17', '', 0, 'http://127.0.0.1/harnet2/wp-content/uploads/2015/08/bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2015-08-19 17:20:39', '2015-08-19 16:20:39', '', 'bbg', '', 'inherit', 'open', 'closed', '', 'bbg', '', '', '2015-08-19 17:20:39', '2015-08-19 16:20:39', '', 0, 'http://127.0.0.1/harnet2/wp-content/uploads/2015/08/bbg.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2015-08-19 17:36:28', '2015-08-19 16:36:28', '', 'businessinafrica', '', 'inherit', 'open', 'closed', '', 'businessinafrica', '', '', '2015-08-19 17:36:28', '2015-08-19 16:36:28', '', 0, 'http://127.0.0.1/harnet2/wp-content/uploads/2015/08/businessinafrica1.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2015-08-19 17:40:58', '2015-08-19 16:40:58', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\nMy services :\r\n<ul>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n	<li> <a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n</ul>\r\nAs featured in:\r\n\r\nForbes Africa   ** AIR France Africa Club *** HowwemadeitAfrica', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-19 17:40:58', '2015-08-19 16:40:58', '', 7, 'http://127.0.0.1/harnet2/2015/08/19/7-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2015-08-24 15:15:59', '2015-08-24 14:15:59', '', 'Dr-Harnet', '', 'inherit', 'open', 'closed', '', 'dr-harnet', '', '', '2015-08-24 15:15:59', '2015-08-24 14:15:59', '', 0, 'http://127.0.0.1/harnet2/wp-content/uploads/2015/08/Dr-Harnet.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2015-08-24 16:01:06', '2015-08-24 15:01:06', '', 'businessinafrica2', '', 'inherit', 'open', 'closed', '', 'businessinafrica2', '', '', '2015-08-24 16:01:06', '2015-08-24 15:01:06', '', 0, 'http://127.0.0.1/harnet2/wp-content/uploads/2015/08/businessinafrica2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2015-08-24 16:26:37', '2015-08-24 15:26:37', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\nMy services :\r\n<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n	<li> <a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n</ul>\r\nAs featured in:\r\n\r\nForbes Africa   ** AIR France Africa Club *** HowwemadeitAfrica', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-24 16:26:37', '2015-08-24 15:26:37', '', 7, 'http://127.0.0.1/harnet2/7-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2015-08-24 16:45:33', '2015-08-24 15:45:33', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\nMy services :\r\n<ul class="bmenu2">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n	<li> <a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n</ul>\r\nAs featured in:\r\n\r\nForbes Africa   ** AIR France Africa Club *** HowwemadeitAfrica', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-24 16:45:33', '2015-08-24 15:45:33', '', 7, 'http://127.0.0.1/harnet2/7-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2015-08-24 16:48:17', '2015-08-24 15:48:17', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\nMy services :\r\n<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n	<li> <a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n</ul>\r\nAs featured in:\r\n\r\nForbes Africa   ** AIR France Africa Club *** HowwemadeitAfrica', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-24 16:48:17', '2015-08-24 15:48:17', '', 7, 'http://127.0.0.1/harnet2/7-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2015-08-24 21:53:10', '2015-08-24 20:53:10', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\nMy services :\r\n<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n	\r\n</ul>\r\nAs featured in:\r\n\r\nForbes Africa   ** AIR France Africa Club *** HowwemadeitAfrica', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-24 21:53:10', '2015-08-24 20:53:10', '', 7, 'http://127.0.0.1/harnet2/7-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2015-08-24 21:54:56', '2015-08-24 20:54:56', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\nMy services :\r\n<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n<li><a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n	\r\n</ul>\r\nAs featured in:\r\n\r\nForbes Africa   ** AIR France Africa Club *** HowwemadeitAfrica', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-24 21:54:56', '2015-08-24 20:54:56', '', 7, 'http://127.0.0.1/harnet2/7-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2015-08-24 21:57:24', '2015-08-24 20:57:24', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\n\r\n<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n<li><a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n	\r\n</ul>\r\nAs featured in:\r\n\r\nForbes Africa   ** AIR France Africa Club *** HowwemadeitAfrica', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-24 21:57:24', '2015-08-24 20:57:24', '', 7, 'http://127.0.0.1/harnet2/7-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2015-08-24 22:14:50', '2015-08-24 21:14:50', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\n\r\n<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n<li><a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n	\r\n</ul>\r\nAs featured in:\r\n\r\n<a href="#"><img src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/forbesafrica-300x83.png" alt="forbesafrica"  height="64" class="alignnone size-medium wp-image-56" /></a>   ** <a href="#"><img src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/af.png" alt="af" height="64" class="alignnone size-full wp-image-55" /></a> *** <a href="#"><img src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/howafrica.png" alt="howafrica" height="64" class="alignnone size-full wp-image-57" /></a>', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-24 22:14:50', '2015-08-24 21:14:50', '', 7, 'http://127.0.0.1/harnet2/7-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2015-08-24 22:17:53', '2015-08-24 21:17:53', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\n\r\n<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n<li><a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n	\r\n</ul>\r\nAs featured in:\r\n\r\n<a href="#"><img src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/forbesafrica-300x83.png" alt="forbesafrica"  height="64"  /></a>   ** <a href="#"><img src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/af.png" alt="af" height="64"  /></a> *** <a href="#"><img src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/howafrica.png" alt="howafrica" height="64" ></a>', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-24 22:17:53', '2015-08-24 21:17:53', '', 7, 'http://127.0.0.1/harnet2/7-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2015-08-24 22:24:26', '2015-08-24 21:24:26', '', 'af', '', 'inherit', 'open', 'closed', '', 'af', '', '', '2015-08-24 22:24:26', '2015-08-24 21:24:26', '', 7, 'http://127.0.0.1/harnet2/wp-content/uploads/2015/08/af.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2015-08-24 22:24:52', '2015-08-24 21:24:52', '', 'forbesafrica', '', 'inherit', 'open', 'closed', '', 'forbesafrica', '', '', '2015-08-24 22:24:52', '2015-08-24 21:24:52', '', 7, 'http://127.0.0.1/harnet2/wp-content/uploads/2015/08/forbesafrica.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2015-08-24 22:25:53', '2015-08-24 21:25:53', '', 'howafrica', '', 'inherit', 'open', 'closed', '', 'howafrica', '', '', '2015-08-24 22:25:53', '2015-08-24 21:25:53', '', 7, 'http://127.0.0.1/harnet2/wp-content/uploads/2015/08/howafrica.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2015-08-24 22:27:21', '2015-08-24 21:27:21', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\n\r\n<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n<li><a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n	\r\n</ul>\r\nAs featured in:\r\n<a href="#"><img src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/af.png" alt="af" width="201" height="64" class="alignnone size-full wp-image-60" /></a>\r\n\r\n<a href="#"><img src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/forbesafrica.png" alt="forbesafrica" width="231" height="64" class="alignnone size-medium wp-image-61" /></a>\r\n\r\n<a href="#"><img src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/howafrica.png" alt="howafrica" width="181" height="64" class="alignnone size-medium wp-image-62" /></a>', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-24 22:27:21', '2015-08-24 21:27:21', '', 7, 'http://127.0.0.1/harnet2/7-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2015-08-24 22:31:17', '2015-08-24 21:31:17', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\n\r\n<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n<li><a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n	\r\n</ul>\r\nAs featured in:\r\n<a href="#"><img src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/af.png" alt="af" width="201" height="64"  /></a>\r\n\r\n<a href="#"><img src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/forbesafrica.png" alt="forbesafrica" width="231" height="64" /></a>\r\n\r\n<a href="#"><img src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/howafrica.png" alt="howafrica" width="181" height="64"  /></a>', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-24 22:31:17', '2015-08-24 21:31:17', '', 7, 'http://127.0.0.1/harnet2/7-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2015-08-24 22:34:35', '2015-08-24 21:34:35', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\n<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n</ul>\r\nAs featured in:\r\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/af.png" alt="af" width="126" height="40" /></a>\r\n\r\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/forbesafrica.png" alt="forbesafrica" width="127" height="35" /></a>\r\n\r\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/howafrica.png" alt="howafrica" width="127" height="45" /></a>', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-24 22:34:35', '2015-08-24 21:34:35', '', 7, 'http://127.0.0.1/harnet2/7-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(66, 1, '2015-08-24 22:37:04', '2015-08-24 21:37:04', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market netry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\n<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n</ul>\r\nAs featured in:\r\n<table>\r\n<tr>\r\n<td>\r\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/af.png" alt="af" width="126" height="40" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/forbesafrica.png" alt="forbesafrica" width="127" height="35" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/howafrica.png" alt="howafrica" width="127" height="45" /></a>\r\n</td>\r\n</tr>\r\n</table>', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-24 22:37:04', '2015-08-24 21:37:04', '', 7, 'http://127.0.0.1/harnet2/7-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2015-08-24 22:41:36', '2015-08-24 21:41:36', '<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n</ul>', 'My Services', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-08-24 22:41:36', '2015-08-24 21:41:36', '', 9, 'http://127.0.0.1/harnet2/9-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2015-08-25 08:39:21', '2015-08-25 07:39:21', '<blockquote>Save time, mitigate risk and get started confidently in Africa''s emerging markets. I work with experienced and ambitious executives on tailor-made Africa market entry strategies that work. My job is to enable you to make Africa market entry decisions faster and more confidently while igniting that sense of urgency that could give your company a considerable competitive advantage.</blockquote>\r\n<ul class="bmenu">\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/">Market Entry Strategy and Expansion</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/africa-business-executive-training/">Africa Business Executive Training</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/">Business Trade Missions</a></li>\r\n	<li><a href="http://127.0.0.1/harnet2/my-services/speaking/">Speaking</a></li>\r\n</ul>\r\nAs featured in:\r\n<table>\r\n<tr>\r\n<td>\r\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/af.png" alt="af" width="126" height="40" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/forbesafrica.png" alt="forbesafrica" width="127" height="35" /></a>\r\n</td>\r\n<td>\r\n<a href="#"><img class="" src="http://127.0.0.1/harnet2/wp-content/uploads/2015/08/howafrica.png" alt="howafrica" width="127" height="45" /></a>\r\n</td>\r\n</tr>\r\n</table>', 'Increase your success rate in Africa !', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-08-25 08:39:21', '2015-08-25 07:39:21', '', 7, 'http://127.0.0.1/harnet2/7-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'About', 'about', 0),
(3, 'Contact me', 'contact-me', 0),
(4, 'Home', 'home', 0),
(5, 'My Services', 'my-services', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(8, 4, 0),
(18, 2, 0),
(19, 5, 0),
(29, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'sunrise'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"4483238cb9f2bdaaa4ad4f4efad656377a686fe12a60e7ce93e8a6c2bfe8b4fe";a:4:{s:10:"expiration";i:1441205126;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36";s:5:"login";i:1439995526;}s:64:"429241a6194026dae25ec6aed83abf196f5f3d88acdd678939aaa7a9d9baa7a9";a:4:{s:10:"expiration";i:1440660989;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:109:"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36";s:5:"login";i:1440488189;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'nav_menu_recently_edited', '4'),
(17, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&wplink=1&editor=html'),
(20, 1, 'wp_user-settings-time', '1440452230');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BtdxEAmBU40p8XB0MHWIj326l7F3ff/', 'admin', 'boris@hrseed.com', '', '2015-08-19 14:44:51', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wpcb_tracking`
--

CREATE TABLE IF NOT EXISTS `wp_wpcb_tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL,
  `host` varchar(100) NOT NULL,
  `visitdate` datetime NOT NULL,
  `visitedpage` varchar(255) NOT NULL,
  `referring` varchar(255) NOT NULL,
  `visittype` enum('visit','boxview','click','optin') DEFAULT NULL,
  `box_id` int(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76 ;

--
-- Contenu de la table `wp_wpcb_tracking`
--

INSERT INTO `wp_wpcb_tracking` (`id`, `ip`, `host`, `visitdate`, `visitedpage`, `referring`, `visittype`, `box_id`) VALUES
(1, '127.0.0.1', 'cvtheque', '2015-08-24 14:33:37', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/contact-me/', 'click', 1),
(2, '127.0.0.1', 'cvtheque', '2015-08-24 14:34:42', 'http://127.0.0.1/harnet2/contact-me/', 'http://127.0.0.1/harnet2/', 'visit', 1),
(3, '127.0.0.1', 'cvtheque', '2015-08-24 14:34:50', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/contact-me/', 'visit', 1),
(4, '127.0.0.1', 'cvtheque', '2015-08-24 14:34:59', 'http://127.0.0.1/harnet2/about-me/', 'http://127.0.0.1/harnet2/', 'boxview', 1),
(5, '127.0.0.1', 'cvtheque', '2015-08-24 14:35:52', 'http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(6, '127.0.0.1', 'cvtheque', '2015-08-24 14:36:22', 'http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/', 'http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/', 'boxview', 1),
(7, '127.0.0.1', 'cvtheque', '2015-08-24 14:36:46', 'http://127.0.0.1/harnet2/my-services/speaking/', 'http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/', 'boxview', 1),
(8, '127.0.0.1', 'cvtheque', '2015-08-24 14:42:16', 'http://127.0.0.1/harnet2/my-services/speaking/', 'http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/', 'boxview', 1),
(9, '127.0.0.1', 'cvtheque', '2015-08-24 14:44:09', 'http://127.0.0.1/harnet2/my-services/speaking/', 'http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/', 'boxview', 1),
(10, '127.0.0.1', 'cvtheque', '2015-08-24 14:44:31', 'http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/', 'http://127.0.0.1/harnet2/my-services/speaking/', 'boxview', 1),
(11, '127.0.0.1', 'cvtheque', '2015-08-24 14:44:56', 'http://127.0.0.1/harnet2/about-me/', 'http://127.0.0.1/harnet2/contact-me/', 'boxview', 1),
(12, '127.0.0.1', 'cvtheque', '2015-08-24 14:45:34', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(13, '127.0.0.1', 'cvtheque', '2015-08-24 14:49:16', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(14, '127.0.0.1', 'cvtheque', '2015-08-24 14:51:07', 'http://127.0.0.1/harnet2/about-me/', 'http://127.0.0.1/harnet2/', 'click', 1),
(15, '127.0.0.1', 'cvtheque', '2015-08-24 14:51:34', 'http://127.0.0.1/harnet2/contact-me/', 'http://127.0.0.1/harnet2/about-me/', 'visit', 1),
(16, '127.0.0.1', 'cvtheque', '2015-08-24 14:51:55', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/contact-me/', 'visit', 1),
(17, '127.0.0.1', 'cvtheque', '2015-08-24 14:52:05', 'http://127.0.0.1/harnet2/about-me/', 'http://127.0.0.1/harnet2/', 'boxview', 1),
(18, '127.0.0.1', 'cvtheque', '2015-08-24 14:56:47', 'http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/', 'http://127.0.0.1/harnet2/my-services/speaking/', 'boxview', 1),
(19, '127.0.0.1', 'cvtheque', '2015-08-24 14:59:43', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/wp-admin/customize.php?return=%2Fharnet2%2Fwp-admin%2Fthemes.php%3Fpage%3Dfullwidth-options%26settings-updated%3Dtrue', 'visit', 1),
(20, '127.0.0.1', 'cvtheque', '2015-08-24 15:04:15', 'http://127.0.0.1/harnet2/about-me/', 'http://127.0.0.1/harnet2/', 'visit', 1),
(21, '127.0.0.1', 'cvtheque', '2015-08-24 15:04:27', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(22, '127.0.0.1', 'cvtheque', '2015-08-24 15:06:02', 'http://127.0.0.1/harnet2/about-me/', 'http://127.0.0.1/harnet2/', 'boxview', 1),
(23, '127.0.0.1', 'cvtheque', '2015-08-24 15:06:22', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(24, '127.0.0.1', 'cvtheque', '2015-08-24 15:17:01', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/wp-admin/customize.php?return=%2Fharnet2%2Fwp-admin%2Fupload.php', 'visit', 1),
(25, '127.0.0.1', 'cvtheque', '2015-08-24 15:20:17', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(26, '127.0.0.1', 'cvtheque', '2015-08-24 15:21:51', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/wp-admin/customize.php?return=%2Fharnet2%2Fwp-admin%2Fthemes.php%3Fpage%3Dfullwidth-options%26settings-updated%3Dtrue', 'boxview', 1),
(27, '127.0.0.1', 'cvtheque', '2015-08-24 15:23:33', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/', 'boxview', 1),
(28, '127.0.0.1', 'cvtheque', '2015-08-24 15:37:12', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/', 'visit', 1),
(29, '127.0.0.1', 'cvtheque', '2015-08-24 15:37:25', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/', 'visit', 1),
(30, '127.0.0.1', 'cvtheque', '2015-08-24 15:38:24', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/', 'boxview', 1),
(31, '127.0.0.1', 'cvtheque', '2015-08-24 15:40:32', 'http://127.0.0.1/harnet2/about-me/', 'http://127.0.0.1/harnet2/', 'visit', 1),
(32, '127.0.0.1', 'cvtheque', '2015-08-24 15:40:43', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'visit', 1),
(33, '127.0.0.1', 'cvtheque', '2015-08-24 15:40:51', 'http://127.0.0.1/harnet2/contact-me/', 'http://127.0.0.1/harnet2/', 'visit', 1),
(34, '127.0.0.1', 'cvtheque', '2015-08-24 15:40:59', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/contact-me/', 'boxview', 1),
(35, '127.0.0.1', 'cvtheque', '2015-08-24 15:41:18', 'http://127.0.0.1/harnet2/about-me/', 'http://127.0.0.1/harnet2/', 'visit', 1),
(36, '127.0.0.1', 'cvtheque', '2015-08-24 15:41:26', 'http://127.0.0.1/harnet2/contact-me/', 'http://127.0.0.1/harnet2/about-me/', 'visit', 1),
(37, '127.0.0.1', 'cvtheque', '2015-08-24 15:41:34', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/contact-me/', 'boxview', 1),
(38, '127.0.0.1', 'cvtheque', '2015-08-24 16:02:27', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(39, '127.0.0.1', 'cvtheque', '2015-08-24 16:05:28', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(40, '127.0.0.1', 'cvtheque', '2015-08-24 16:06:27', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/wp-admin/customize.php?return=%2Fharnet2%2Fwp-admin%2Fthemes.php%3Fpage%3Dfullwidth-options%26settings-updated%3Dtrue', 'boxview', 1),
(41, '127.0.0.1', 'cvtheque', '2015-08-24 16:14:20', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(42, '127.0.0.1', 'cvtheque', '2015-08-24 16:27:08', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'visit', 1),
(43, '127.0.0.1', 'cvtheque', '2015-08-24 16:38:39', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'visit', 1),
(44, '127.0.0.1', 'cvtheque', '2015-08-24 16:39:38', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(45, '127.0.0.1', 'cvtheque', '2015-08-24 16:46:09', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'visit', 1),
(46, '127.0.0.1', 'cvtheque', '2015-08-24 21:27:42', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(47, '127.0.0.1', 'cvtheque', '2015-08-24 21:32:37', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(48, '127.0.0.1', 'cvtheque', '2015-08-24 21:32:45', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(49, '127.0.0.1', 'cvtheque', '2015-08-24 21:37:44', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(50, '127.0.0.1', 'cvtheque', '2015-08-24 21:38:47', 'http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/', 'http://127.0.0.1/harnet2/', 'visit', 1),
(51, '127.0.0.1', 'cvtheque', '2015-08-24 21:45:36', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(52, '127.0.0.1', 'cvtheque', '2015-08-24 21:53:40', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'visit', 1),
(53, '127.0.0.1', 'cvtheque', '2015-08-24 21:55:22', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(54, '127.0.0.1', 'cvtheque', '2015-08-24 21:58:28', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(55, '127.0.0.1', 'cvtheque', '2015-08-24 22:15:20', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'visit', 1),
(56, '127.0.0.1', 'cvtheque', '2015-08-24 22:18:18', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'visit', 1),
(57, '127.0.0.1', 'cvtheque', '2015-08-24 22:27:53', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(58, '127.0.0.1', 'cvtheque', '2015-08-24 22:31:45', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'visit', 1),
(59, '127.0.0.1', 'cvtheque', '2015-08-24 22:35:02', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'visit', 1),
(60, '127.0.0.1', 'cvtheque', '2015-08-24 22:37:26', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(61, '127.0.0.1', 'cvtheque', '2015-08-24 22:38:25', 'http://127.0.0.1/harnet2/my-services/', 'http://127.0.0.1/harnet2/', 'boxview', 1),
(62, '127.0.0.1', 'cvtheque', '2015-08-24 23:05:18', 'http://127.0.0.1/harnet2/my-services/', 'http://127.0.0.1/harnet2/', 'boxview', 1),
(63, '127.0.0.1', 'cvtheque', '2015-08-24 23:05:35', 'http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/', 'http://127.0.0.1/harnet2/my-services/', 'boxview', 1),
(64, '127.0.0.1', 'cvtheque', '2015-08-24 23:05:59', 'http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/', 'http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/', 'boxview', 1),
(65, '127.0.0.1', 'cvtheque', '2015-08-24 23:06:17', 'http://127.0.0.1/harnet2/about-me/', 'http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/', 'visit', 1),
(66, '127.0.0.1', 'cvtheque', '2015-08-24 23:06:34', 'http://127.0.0.1/harnet2/contact-me/', 'http://127.0.0.1/harnet2/about-me/', 'visit', 1),
(67, '127.0.0.1', 'cvtheque', '2015-08-24 23:06:44', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/contact-me/', 'boxview', 1),
(68, '127.0.0.1', 'cvtheque', '2015-08-24 23:13:04', 'http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/', 'http://127.0.0.1/harnet2/', 'boxview', 1),
(69, '127.0.0.1', 'cvtheque', '2015-08-24 23:21:07', 'http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/', 'http://127.0.0.1/harnet2/my-services/customized-business-trade-missions/', 'visit', 1),
(70, '127.0.0.1', 'cvtheque', '2015-08-24 23:21:18', 'http://127.0.0.1/harnet2/about-me/', 'http://127.0.0.1/harnet2/my-services/market-entry-strategy-and-expansion/', 'visit', 1),
(71, '127.0.0.1', 'cvtheque', '2015-08-24 23:21:26', 'http://127.0.0.1/harnet2/contact-me/', 'http://127.0.0.1/harnet2/about-me/', 'visit', 1),
(72, '127.0.0.1', 'cvtheque', '2015-08-24 23:21:34', 'http://127.0.0.1/harnet2/about-me/', 'http://127.0.0.1/harnet2/contact-me/', 'visit', 1),
(73, '127.0.0.1', 'cvtheque', '2015-08-24 23:21:42', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/harnet2/about-me/', 'boxview', 1),
(74, '127.0.0.1', 'cvtheque', '2015-08-25 08:34:29', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/home/', 'boxview', 1),
(75, '127.0.0.1', 'cvtheque', '2015-08-25 08:39:40', 'http://127.0.0.1/harnet2/', 'http://127.0.0.1/home/', 'visit', 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_wp_conversion_boxes`
--

CREATE TABLE IF NOT EXISTS `wp_wp_conversion_boxes` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `box_status` int(1) DEFAULT '1',
  `box_name` varchar(80) NOT NULL,
  `box_type` int(9) DEFAULT NULL,
  `box_template` varchar(120) DEFAULT NULL,
  `box_customizations` longtext,
  `box_settings` varchar(350) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `wp_wp_conversion_boxes`
--

INSERT INTO `wp_wp_conversion_boxes` (`id`, `box_status`, `box_name`, `box_type`, `box_template`, `box_customizations`, `box_settings`) VALUES
(1, 1, 'takeAction', 3, 'Black_BG_Blue_Button', 'a:35:{s:15:"button_bg_color";s:7:"#dd9933";s:15:"button_type_css";s:38:".wpcb_button_flat{background:#dd9933;}";s:12:"heading_text";s:19:"Take action today !";s:20:"heading_font_familiy";s:5:"Arial";s:17:"heading_font_size";s:4:"22px";s:19:"heading_line_height";s:4:"30px";s:13:"heading_color";s:4:"#fff";s:13:"heading_align";s:6:"center";s:16:"heading_bg_color";s:0:"";s:12:"content_text";s:211:"Are you interested by anyone of my services ? Strategic advice, Business Mission, Business Training or booking me for speaking ?<br/>\nContact me now ! <br/>\nIf you don\\''t do it now, you may never do it at all...";s:20:"content_font_familiy";s:5:"Arial";s:17:"content_font_size";s:4:"16px";s:19:"content_line_height";s:4:"24px";s:13:"content_align";s:6:"center";s:13:"content_color";s:4:"#fff";s:11:"button_text";s:21:"Contact Dr Harnet now";s:11:"button_link";s:36:"http://127.0.0.1/harnet2/contact-me/";s:19:"button_target_blank";s:5:"false";s:11:"button_type";s:16:"wpcb_button_flat";s:24:"button_text_font_familiy";s:5:"Arial";s:21:"button_text_font_size";s:4:"16px";s:20:"button_border_radius";s:3:"5px";s:12:"button_align";s:6:"center";s:12:"button_width";s:0:"";s:17:"button_text_color";s:4:"#fff";s:19:"box_container_width";s:3:"90%";s:20:"box_container_height";s:0:"";s:24:"box_container_margin_top";s:4:"20px";s:27:"box_container_margin_bottom";s:4:"20px";s:25:"box_container_margin_left";s:4:"20px";s:26:"box_container_margin_right";s:4:"20px";s:26:"box_container_border_width";s:0:"";s:22:"box_container_bg_color";s:7:"#4B4B4B";s:26:"box_container_border_color";s:0:"";s:10:"custom_css";s:0:"";}', 'a:6:{s:11:"box_fade_in";s:1:"1";s:16:"box_fade_in_time";s:1:"1";s:15:"box_make_sticky";s:1:"0";s:21:"wpcb_popup_type_radio";s:1:"0";s:21:"wpcb_popup_option_val";s:1:"0";s:20:"wpcb_popup_frequency";s:2:"10";}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
