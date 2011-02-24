-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 09, 2011 at 04:35 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ahswt`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `ahstest_access`;
CREATE TABLE `ahstest_access` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `access`
--


-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `ahstest_actions`;
CREATE TABLE `ahstest_actions` (
  `aid` varchar(255) NOT NULL DEFAULT '0',
  `type` varchar(32) NOT NULL DEFAULT '',
  `callback` varchar(255) NOT NULL DEFAULT '',
  `parameters` longtext NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`aid`, `type`, `callback`, `parameters`, `description`) VALUES
('comment_unpublish_action', 'comment', 'comment_unpublish_action', '', 'Unpublish comment'),
('node_publish_action', 'node', 'node_publish_action', '', 'Publish post'),
('node_unpublish_action', 'node', 'node_unpublish_action', '', 'Unpublish post'),
('node_make_sticky_action', 'node', 'node_make_sticky_action', '', 'Make post sticky'),
('node_make_unsticky_action', 'node', 'node_make_unsticky_action', '', 'Make post unsticky'),
('node_promote_action', 'node', 'node_promote_action', '', 'Promote post to front page'),
('node_unpromote_action', 'node', 'node_unpromote_action', '', 'Remove post from front page'),
('node_save_action', 'node', 'node_save_action', '', 'Save post'),
('user_block_user_action', 'user', 'user_block_user_action', '', 'Block current user'),
('user_block_ip_action', 'user', 'user_block_ip_action', '', 'Ban IP address of current user'),
('revisioning_publish_latest_revision_action', 'node', 'revisioning_publish_latest_revision_action', '', 'Publish the most recent pending revision'),
('workflow_select_next_state_action', 'node', 'workflow_select_next_state_action', '', 'Change workflow state of post to next state'),
('comment_publish_action', 'comment', 'comment_publish_action', '', 'Publish comment'),
('backup_migrate_action_backup', '', 'backup_migrate_action_backup', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `actions_aid`
--

DROP TABLE IF EXISTS `ahstest_actions_aid`;
CREATE TABLE `ahstest_actions_aid` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `actions_aid`
--


-- --------------------------------------------------------

--
-- Table structure for table `advanced_help_index`
--

DROP TABLE IF EXISTS `ahstest_advanced_help_index`;
CREATE TABLE `ahstest_advanced_help_index` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL DEFAULT '',
  `topic` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`),
  KEY `language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=177 ;

--
-- Dumping data for table `advanced_help_index`
--

INSERT INTO `advanced_help_index` (`sid`, `module`, `topic`, `language`) VALUES
(1, 'adminrole', 'README.txt', 'en'),
(2, 'admin_menu', 'README.txt', 'en'),
(3, 'advanced_help', 'using-advanced-help', 'en'),
(4, 'advanced_help', 'translation', 'en'),
(5, 'advanced_help', 'ini-file', 'en'),
(6, 'advanced_help', 'why-advanced-help', 'en'),
(7, 'content', 'fields', 'en'),
(8, 'content', 'manage-fields', 'en'),
(9, 'content', 'add', 'en'),
(10, 'content', 'add-new-field', 'en'),
(11, 'content', 'add-existing-field', 'en'),
(12, 'content', 'add-new-group', 'en'),
(13, 'content', 'rearrange', 'en'),
(14, 'content', 'remove', 'en'),
(15, 'content', 'theme', 'en'),
(16, 'content', 'theme-node-templates', 'en'),
(17, 'content', 'theme-field-templates', 'en'),
(18, 'content', 'theme-formatters', 'en'),
(19, 'nodereference', 'nodereference', 'en'),
(20, 'number', 'number', 'en'),
(21, 'optionwidgets', 'optionwidgets', 'en'),
(22, 'text', 'text', 'en'),
(23, 'date_api', 'overview', 'en'),
(24, 'date_api', 'date-api', 'en'),
(25, 'date_api', 'new-features', 'en'),
(26, 'date_api', 'date', 'en'),
(27, 'date_api', 'date-php4', 'en'),
(28, 'date_api', 'date-types', 'en'),
(29, 'date_api', 'date-display', 'en'),
(30, 'date_api', 'date-copy', 'en'),
(31, 'date_api', 'ical-import', 'en'),
(32, 'date_api', 'date-views', 'en'),
(33, 'date_api', 'date-argument', 'en'),
(34, 'date_api', 'date-filter', 'en'),
(35, 'date_api', 'embedding', 'en'),
(36, 'date_api', 'date-repeat-form', 'en'),
(37, 'date_api', 'date-create', 'en'),
(38, 'date_api', 'date-api-functions', 'en'),
(39, 'date_api', 'form-elements', 'en'),
(40, 'date_api', 'date-timezones', 'en'),
(41, 'date_api', 'ical-parser', 'en'),
(42, 'date_api', 'date-views-dates', 'en'),
(102, 'views', 'using-theme', 'en'),
(118, 'webform', 'README.txt', 'en'),
(117, 'taxonomy_defaults', 'README.txt', 'en'),
(101, 'views', 'analyze-theme', 'en'),
(48, 'editview', 'README.txt', 'en'),
(49, 'field_permissions', 'README.txt', 'en'),
(50, 'front_page', 'README.txt', 'en'),
(51, 'gmap', 'setting up', 'en'),
(52, 'gmap', 'filter', 'en'),
(53, 'gmap', 'api', 'en'),
(54, 'gmap', 'array', 'en'),
(55, 'gmap', 'extending', 'en'),
(56, 'jquery_ui', 'README.txt', 'en'),
(57, 'location', 'testing', 'en'),
(58, 'location', 'extending', 'en'),
(59, 'location', 'api_changelog', 'en'),
(60, 'modalframe', 'README.txt', 'en'),
(61, 'clone', 'README.txt', 'en'),
(62, 'revisioning', 'README.txt', 'en'),
(63, 'revision_all', 'README.txt', 'en'),
(64, 'noderelationships', 'README.txt', 'en'),
(65, 'auto_nodetitle', 'README.txt', 'en'),
(66, 'conditional_fields', 'README.txt', 'en'),
(67, 'token', 'README.txt', 'en'),
(68, 'views', 'about', 'en'),
(69, 'views', 'getting-started', 'en'),
(70, 'views', 'example-users-by-role', 'en'),
(71, 'views', 'example-recent-stories', 'en'),
(72, 'views', 'example-user-feed', 'en'),
(73, 'views', 'example-author-block', 'en'),
(74, 'views', 'view-type', 'en'),
(75, 'views', 'display', 'en'),
(76, 'views', 'display-default', 'en'),
(77, 'views', 'display-page', 'en'),
(78, 'views', 'display-block', 'en'),
(79, 'views', 'display-attachment', 'en'),
(80, 'views', 'display-feed', 'en'),
(81, 'views', 'argument', 'en'),
(82, 'views', 'field', 'en'),
(83, 'views', 'sort', 'en'),
(84, 'views', 'filter', 'en'),
(85, 'views', 'relationship', 'en'),
(86, 'views', 'style', 'en'),
(87, 'views', 'style-row', 'en'),
(88, 'views', 'style-list', 'en'),
(89, 'views', 'style-unformatted', 'en'),
(90, 'views', 'style-table', 'en'),
(91, 'views', 'style-grid', 'en'),
(92, 'views', 'style-rss', 'en'),
(93, 'views', 'style-fields', 'en'),
(94, 'views', 'style-node', 'en'),
(95, 'views', 'style-node-rss', 'en'),
(96, 'views', 'style-comment-rss', 'en'),
(97, 'views', 'style-summary-unformatted', 'en'),
(98, 'views', 'style-summary', 'en'),
(99, 'views', 'menu', 'en'),
(100, 'views', 'path', 'en'),
(103, 'views', 'theme-css', 'en'),
(104, 'views', 'overrides', 'en'),
(105, 'views', 'embed', 'en'),
(106, 'views', 'new', 'en'),
(107, 'views', 'updating', 'en'),
(108, 'views', 'api', 'en'),
(109, 'views', 'api-tables', 'en'),
(110, 'views', 'api-default-views', 'en'),
(111, 'views', 'api-handlers', 'en'),
(112, 'views', 'api-plugins', 'en'),
(113, 'views', 'api-example', 'en'),
(114, 'devel', 'README.txt', 'en'),
(115, 'devel', 'README_devel_node_access.txt', 'en'),
(116, 'jquery_update', 'README.txt', 'en'),
(119, 'backup_migrate', 'README.txt', 'en'),
(120, 'content_taxonomy', 'README.txt', 'en'),
(121, 'content_taxonomy_options', 'README.txt', 'en'),
(122, 'ctools', 'about', 'en'),
(123, 'ctools', 'context', 'en'),
(124, 'ctools', 'context-access', 'en'),
(125, 'ctools', 'context-context', 'en'),
(126, 'ctools', 'context-arguments', 'en'),
(127, 'ctools', 'context-relationships', 'en'),
(128, 'ctools', 'context-content', 'en'),
(129, 'ctools', 'plugins', 'en'),
(130, 'ctools', 'plugins-api', 'en'),
(131, 'ctools', 'plugins-creating', 'en'),
(132, 'ctools', 'plugins-implementing', 'en'),
(133, 'ctools', 'export', 'en'),
(134, 'ctools', 'export-ui', 'en'),
(135, 'ctools', 'form', 'en'),
(136, 'ctools', 'wizard', 'en'),
(137, 'ctools', 'ajax', 'en'),
(138, 'ctools', 'object-cache', 'en'),
(139, 'custom_breadcrumbs', 'README.txt', 'en'),
(140, 'filefield', 'README.txt', 'en'),
(141, 'imagefield', 'README.txt', 'en'),
(142, 'jstools', 'README.txt', 'en'),
(143, 'migrate', 'about', 'en'),
(144, 'migrate', 'glossary', 'en'),
(145, 'migrate', 'administration', 'en'),
(146, 'migrate', 'dashboard', 'en'),
(147, 'migrate', 'content-set-edit', 'en'),
(148, 'migrate', 'settings', 'en'),
(149, 'migrate', 'drush-commands', 'en'),
(150, 'migrate', 'api', 'en'),
(151, 'migrate', 'api-crud', 'en'),
(152, 'migrate', 'api-utility', 'en'),
(153, 'migrate', 'api-processing', 'en'),
(154, 'migrate', 'api-hooks', 'en'),
(155, 'migrate', 'configuration', 'en'),
(156, 'module_grants', 'README.txt', 'en'),
(157, 'node_import', 'introduction', 'en'),
(158, 'node_import', 'new-import', 'en'),
(159, 'node_import', 'input-format', 'en'),
(160, 'node_import', 'supported', 'en'),
(161, 'node_import', 'supported-core', 'en'),
(162, 'node_import', 'supported-cck', 'en'),
(163, 'node_import', 'supported-contrib', 'en'),
(164, 'node_import', 'examples', 'en'),
(165, 'schema', 'README.txt', 'en'),
(166, 'smart_tabs', 'README.txt', 'en'),
(167, 'term_permissions', 'README.txt', 'en'),
(168, 'tw', 'about', 'en'),
(169, 'tw', 'installation', 'en'),
(170, 'tw', 'basic-usage', 'en'),
(171, 'tw', 'external-tables', 'en'),
(172, 'tw', 'table-prefixing', 'en'),
(173, 'views_accordion', 'views-accordion-style', 'en'),
(174, 'views_accordion', 'using-views-accordion', 'en'),
(175, 'views_accordion', 'theming-views-accordion', 'en'),
(176, 'views_or', 'README.txt', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `authmap`
--

DROP TABLE IF EXISTS `ahstest_authmap`;
CREATE TABLE `ahstest_authmap` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `authname` varchar(128) NOT NULL DEFAULT '',
  `module` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `authname` (`authname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `authmap`
--


-- --------------------------------------------------------

--
-- Table structure for table `backup_migrate_destinations`
--

DROP TABLE IF EXISTS `ahstest_backup_migrate_destinations`;
CREATE TABLE `ahstest_backup_migrate_destinations` (
  `destination_id` varchar(32) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` text NOT NULL,
  `settings` text NOT NULL,
  PRIMARY KEY (`destination_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backup_migrate_destinations`
--

INSERT INTO `backup_migrate_destinations` (`destination_id`, `name`, `type`, `location`, `settings`) VALUES
('dfe2f1bc22473aca2000f26501e294dd', 'backups', 'file', 'backups', 'a:2:{s:5:"chmod";s:0:"";s:5:"chgrp";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `backup_migrate_profiles`
--

DROP TABLE IF EXISTS `ahstest_backup_migrate_profiles`;
CREATE TABLE `ahstest_backup_migrate_profiles` (
  `profile_id` varchar(32) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `append_timestamp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timestamp_format` varchar(14) NOT NULL,
  `filters` text NOT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backup_migrate_profiles`
--

INSERT INTO `backup_migrate_profiles` (`profile_id`, `name`, `filename`, `append_timestamp`, `timestamp_format`, `filters`) VALUES
('default', 'ahs', '[site-name]', 1, 'Y-m-d\\TH-i-s', 'a:10:{s:11:"compression";s:4:"none";s:21:"notify_success_enable";i:0;s:20:"notify_success_email";s:14:"you@yourdomain";s:21:"notify_failure_enable";i:0;s:20:"notify_failure_email";s:14:"you@yourdomain";s:18:"utils_site_offline";i:0;s:26:"utils_site_offline_message";s:112:"Austin Historical Survey is currently under maintenance. We should be back shortly. Thank you for your patience.";s:14:"exclude_tables";a:0:{}s:13:"nodata_tables";a:25:{s:5:"cache";s:5:"cache";s:11:"cache_block";s:11:"cache_block";s:13:"cache_content";s:13:"cache_content";s:12:"cache_filter";s:12:"cache_filter";s:10:"cache_form";s:10:"cache_form";s:12:"cache_gc_map";s:12:"cache_gc_map";s:13:"cache_gc_smap";s:13:"cache_gc_smap";s:19:"cache_gmaps_geocode";s:19:"cache_gmaps_geocode";s:15:"cache_gmaps_map";s:15:"cache_gmaps_map";s:16:"cache_gmaps_smap";s:16:"cache_gmaps_smap";s:14:"cache_location";s:14:"cache_location";s:10:"cache_menu";s:10:"cache_menu";s:10:"cache_page";s:10:"cache_page";s:11:"cache_rules";s:11:"cache_rules";s:12:"cache_update";s:12:"cache_update";s:11:"cache_views";s:11:"cache_views";s:16:"cache_views_data";s:16:"cache_views_data";s:13:"devel_queries";s:13:"devel_queries";s:11:"devel_times";s:11:"devel_times";s:14:"search_dataset";s:14:"search_dataset";s:12:"search_index";s:12:"search_index";s:12:"search_total";s:12:"search_total";s:8:"sessions";s:8:"sessions";s:18:"views_object_cache";s:18:"views_object_cache";s:8:"watchdog";s:8:"watchdog";}s:17:"utils_lock_tables";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `backup_migrate_schedules`
--

DROP TABLE IF EXISTS `ahstest_backup_migrate_schedules`;
CREATE TABLE `ahstest_backup_migrate_schedules` (
  `schedule_id` varchar(32) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `source_id` varchar(32) NOT NULL DEFAULT 'db',
  `destination_id` varchar(32) NOT NULL DEFAULT '0',
  `profile_id` varchar(32) NOT NULL DEFAULT '0',
  `keep` int(11) NOT NULL DEFAULT '0',
  `period` int(11) NOT NULL DEFAULT '0',
  `last_run` int(11) NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cron` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`schedule_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backup_migrate_schedules`
--


-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `ahstest_batch`;
CREATE TABLE `ahstest_batch` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `batch` longtext,
  PRIMARY KEY (`bid`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `batch`
--


-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `ahstest_blocks`;
CREATE TABLE `ahstest_blocks` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(64) NOT NULL DEFAULT '',
  `delta` varchar(32) NOT NULL DEFAULT '0',
  `theme` varchar(64) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  `region` varchar(64) NOT NULL DEFAULT '',
  `custom` tinyint(4) NOT NULL DEFAULT '0',
  `throttle` tinyint(4) NOT NULL DEFAULT '0',
  `visibility` tinyint(4) NOT NULL DEFAULT '0',
  `pages` text NOT NULL,
  `title` varchar(64) NOT NULL DEFAULT '',
  `cache` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `tmd` (`theme`,`module`,`delta`),
  KEY `list` (`theme`,`status`,`region`,`weight`,`module`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`bid`, `module`, `delta`, `theme`, `status`, `weight`, `region`, `custom`, `throttle`, `visibility`, `pages`, `title`, `cache`) VALUES
(1, 'user', '0', 'garland', 1, 0, 'left', 0, 0, 0, '', '', -1),
(2, 'user', '1', 'garland', 1, 0, 'left', 0, 0, 0, '', '', -1),
(3, 'system', '0', 'garland', 1, 10, 'footer', 0, 0, 0, '', '', -1),
(4, 'system', '0', 'zen', 0, -16, '', 0, 0, 0, '', '', -1),
(8, 'menu', 'primary-links', 'zen', 0, -15, '', 0, 0, 0, '', '', -1),
(10, 'node', '0', 'zen', 0, -11, '', 0, 0, 0, '', '', -1),
(11, 'user', '2', 'zen', 0, -9, '', 0, 0, 0, '', '', 1),
(12, 'user', '3', 'zen', 0, -8, '', 0, 0, 0, '', '', -1),
(13, 'menu', 'devel', 'zen', 0, -24, '', 0, 0, 0, '', '', -1),
(17, 'revisioning', '0', 'zen', 1, -26, 'left', 0, 0, 0, '', '', -1),
(14, 'menu', 'gmaps_devel', 'zen', 0, -27, '', 0, 0, 0, '', '', -1),
(23, 'search', '0', 'zen', 0, -17, '', 0, 0, 0, '', '<none>', -1),
(22, 'views', 'tcad_id-block_1', 'zen', 0, -19, '', 0, 0, 1, 'node/70', '', -1),
(25, 'gmap_location', '1', 'zen', 0, -10, '', 0, 0, 0, '', '', -1),
(24, 'gmap_location', '0', 'zen', 1, -13, 'content_bottom', 0, 0, 1, 'node/99', '<none>', -1),
(31, 'views', 'property_map-block_1', 'zen', 0, -18, '', 0, 0, 1, 'node/*', '<none>', -1),
(37, 'profile', '0', 'zen', 0, -13, '', 0, 0, 0, '', '', 5),
(36, 'comment', '0', 'zen', 0, -12, '', 0, 0, 0, '', '', 1),
(9, 'menu', 'secondary-links', 'zen', 0, -14, '', 0, 0, 0, '', '', -1),
(40, 'views', 'location_block_fields-block_1', 'zen', 1, -24, 'content_bottom', 0, 0, 1, 'node/*', '', -1),
(47, 'views', 'Pending_Contributions-block_1', 'zen', 0, -20, '', 0, 0, 0, '', 'My Pending Contributions', -1),
(48, 'views', 'Recent_Contributions-block_1', 'zen', 0, -28, '', 0, 0, 0, '', 'My Published Contributions', -1),
(38, 'views', 'location_block-block_1', 'zen', 1, -26, 'content_bottom', 0, 0, 2, '<?php\r\n$desired_type = ''property'';\r\n\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n   $match1 = ($node->type == $desired_type);\r\n  }\r\n\r\nif ($match1) {\r\nreturn TRUE;\r\n}\r\n\r\n?>', '', -1),
(52, 'views', 'Editall-block_1', 'zen', 1, -14, 'content_bottom', 0, 0, 2, '<?php\r\n$match=FALSE;\r\n$url = request_uri();\r\nif (strpos($url, "editall")) {\r\n  $match = TRUE;\r\n}\r\nreturn $match;\r\n?>', '', -1),
(50, 'views', 'Main_Property_Record-block_1', 'zen', 0, -21, '', 0, 0, 2, '<?php\r\n$match=FALSE;\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n  if ($node->type == ''property''){$match=TRUE;}\r\n}\r\n\r\n$url = request_uri();\r\nif (strpos($url, "editall")) {$match = FALSE;}\r\n\r\nreturn $match;\r\n?>', '', -1),
(51, 'views', 'Edit_all_tab-block_1', 'zen', 0, -26, '', 0, 0, 2, '<?php\r\n$match=FALSE;\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n  if ($node->type == ''property''){$match=TRUE;}\r\n}\r\n\r\n$url = request_uri();\r\nif (strpos($url, "editall")) {$match = FALSE;}\r\n\r\nreturn $match;\r\n?>', '', -1),
(55, 'views', 'Main_Field_Pending-block_1', 'zen', 1, -20, 'content_bottom', 0, 0, 2, '<?php\r\n$match=FALSE;\r\n$url = request_uri();\r\nif (strpos($url, "revisions")) {\r\n  $match = TRUE;\r\n}\r\nreturn $match;\r\n?>', '', -1),
(5, 'user', '0', 'zen', 1, -20, 'header', 0, 0, 0, '', '', -1),
(57, 'menu', 'menu-title', 'zen', 1, -19, 'header', 0, 0, 0, '', '', -1),
(58, 'menu', 'menu-auth-user-bar', 'zen', 0, -6, '', 0, 0, 0, '', '', -1),
(6, 'user', '1', 'zen', 1, -21, 'header', 0, 0, 0, '', '', -1),
(59, 'block', '2', 'zen', 1, -22, 'footer', 0, 0, 0, '', '', -1),
(60, 'menu', 'menu-field-type-menu', 'zen', 0, -7, '', 0, 0, 0, '', '', -1),
(61, 'block', '3', 'zen', 1, -23, 'content_bottom', 0, 0, 2, '<?php\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n   return $node->type == ''property'';\r\n}\r\n\r\n?>', '', -1),
(64, 'views', '7dda0356b4a374633f66e63e2de6ceff', 'zen', 1, -18, 'content_bottom', 0, 0, 2, '<?php\r\n$match=FALSE;\r\n$url = request_uri();\r\n$nid = $node->nid;\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n  if ($node->type == ''property''){$match=TRUE;}\r\n}\r\nif (!strpos($url, $nid . "/two")){$match = FALSE;}\r\n\r\nreturn $match;\r\n?>', '', -1),
(63, 'views', '9cfa92c3435dbb4613864944bdb805ca', 'zen', 1, -19, 'content_bottom', 0, 0, 2, '<?php\r\n$match=FALSE;\r\n$url = request_uri();\r\n$nid = $node->nid;\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n  if ($node->type == ''property''){$match=TRUE;}\r\n}\r\nif (strpos($url, "editall")) {$match = FALSE;}\r\nif (strpos($url, $nid . "/two")){$match = FALSE;}\r\nif (strpos($url, $nid . "/three")){$match = FALSE;}\r\nif (strpos($url, $nid . "/four")){$match = FALSE;}\r\n\r\nreturn $match;\r\n?>', '', -1),
(65, 'views', '6d8e72a01bc483a5d98d51d4aeed50f3', 'zen', 1, -17, 'content_bottom', 0, 0, 2, '<?php\r\n$match=FALSE;\r\n$url = request_uri();\r\n$nid = $node->nid;\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n  if ($node->type == ''property''){$match=TRUE;}\r\n}\r\nif (!strpos($url, $nid . "/three")){$match = FALSE;}\r\n\r\nreturn $match;\r\n?>', '', -1),
(66, 'views', 'Main_Property_Record_4-block_1', 'zen', 1, -16, 'content_bottom', 0, 0, 2, '<?php\r\n$match=FALSE;\r\n$url = request_uri();\r\n$nid = $node->nid;\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n  if ($node->type == ''property''){$match=TRUE;}\r\n}\r\nif (!strpos($url, $nid . "/four")){$match = FALSE;}\r\n\r\nreturn $match;\r\n?>', '', -1),
(67, 'block', '4', 'zen', 1, -22, 'content_bottom', 0, 0, 2, '<?php\r\n\r\n$match=FALSE;\r\n$url = request_uri();\r\nif (strpos($url, "/view")) {\r\n  $match = TRUE;\r\n}\r\nreturn $match;\r\n?>', '', -1),
(68, 'block', '5', 'zen', 1, -28, 'content_bottom', 0, 0, 2, '<?php\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n   return $node->type == ''property'';\r\n}\r\n\r\n?>', '', -1),
(49, 'views', 'Main_Field_Revisions-block_1', 'zen', 1, -15, 'content_bottom', 0, 0, 2, '<?php\r\n$match = TRUE;\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n  $type = $node->type;\r\n  if ($type == ''property'' || $type == ''forum''){$match = FALSE;}\r\n}\r\nreturn $match;\r\n?>', '', -1),
(72, 'devel', '0', 'zen', 0, -5, '', 0, 0, 0, '', '', 1),
(73, 'devel', '2', 'zen', 1, -24, 'left', 0, 0, 0, 'devel/php', '', 1),
(82, 'views', 'LHD_status_block-block_1', 'zen', 1, -21, 'content_bottom', 0, 0, 2, '<?php\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n   return $node->type == ''property'';\r\n}', '', -1),
(83, 'views', 'location_block_lhd-block_1', 'zen', 1, -27, 'content_top', 0, 0, 0, '<?php\r\n$desired_url = ''lhd'';\r\n$url = request_uri();\r\nif (strpos($url, $desired_url)) {\r\n  $match1 = TRUE;\r\n}\r\n\r\nif ($match1) {\r\nreturn TRUE;\r\n}\r\n\r\n?>', '', -1),
(84, 'image_attach', '0', 'zen', 0, -4, '', 0, 0, 1, 'node/*', '', 1),
(85, 'image', '0', 'zen', 0, -3, '', 0, 0, 0, '', '', 1),
(77, 'views', 'Photo_Block-block_1', 'zen', 1, -27, 'content_bottom', 0, 0, 2, '<?php\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n   return $node->type == ''property'';\r\n}\r\n\r\n?>', '', -1),
(78, 'block', '9', 'zen', 0, -22, '', 0, 0, 2, '<?php\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n   return $node->type == ''property'';\r\n}\r\n\r\n?>', '', -1),
(79, 'views', 'pending_revision_block-block_1', 'zen', 1, -25, 'left', 0, 0, 0, '', 'My Pending Contributions', -1),
(86, 'image', '1', 'zen', 0, -2, '', 0, 0, 0, '', '', 1),
(91, 'forum', '1', 'zen', 0, 0, '', 0, 0, 0, '', '', 1),
(90, 'forum', '0', 'zen', 0, -1, '', 0, 0, 0, '', '', 1),
(89, 'block', '10', 'zen', 0, -23, '', 0, 0, 0, '', 'User Help', -1),
(54, 'views', 'comments-block_1', 'zen', 1, -12, 'content_bottom', 0, 0, 2, '<?php\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n   $node = node_load(arg(1));\r\n   if ($node->type == ''forum''){\r\n   return TRUE;\r\n   }else{\r\n   return FALSE;\r\n   }\r\n}', 'Discussion', -1),
(53, 'commentblock', 'comment_form', 'zen', 1, -11, 'content_bottom', 0, 0, 2, '<?php\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n   $node = node_load(arg(1));\r\n   if ($node->type == ''forum''){\r\n   return TRUE;\r\n   }else{\r\n   return FALSE;\r\n   }\r\n}', 'Add your thoughts', 1),
(92, 'block', '11', 'zen', 1, -27, 'left', 0, 0, 2, '<?php\r\nglobal $user;\r\nif ($user->uid > 0) {return FALSE;}\r\nelse {return TRUE;}\r\n?>', 'Welcome', -1),
(93, 'user_help', '0', 'zen', 1, -28, 'content_top', 0, 0, 0, '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blocks_roles`
--

DROP TABLE IF EXISTS `ahstest_blocks_roles`;
CREATE TABLE `ahstest_blocks_roles` (
  `module` varchar(64) NOT NULL,
  `delta` varchar(32) NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`module`,`delta`,`rid`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blocks_roles`
--

INSERT INTO `blocks_roles` (`module`, `delta`, `rid`) VALUES
('block', '4', 3),
('block', '4', 4),
('block', '5', 2),
('block', '5', 3),
('block', '5', 4),
('block', '6', 1),
('block', '9', 2),
('block', '9', 3),
('block', '9', 4),
('devel', '2', 3),
('devel_node_access', '0', 3),
('menu', 'devel', 3),
('revisioning', '0', 3),
('revisioning', '0', 4),
('views', 'Edit_all_tab-block_1', 2),
('views', 'Edit_all_tab-block_1', 3),
('views', 'Edit_all_tab-block_1', 4),
('views', 'location_block_fields-block_1', 1),
('views', 'location_block_fields-block_1', 2),
('views', 'location_block_fields-block_1', 3),
('views', 'location_block_fields-block_1', 4),
('views', 'Main_Field_Pending-block_1', 3),
('views', 'Main_Field_Pending-block_1', 4),
('views', 'Pending_Contributions-block_1', 2),
('views', 'pending_revision_block-block_1', 2),
('views', 'Recent_Contributions-block_1', 2),
('views', 'test_revisions-block_1', 1),
('views', 'test_revisions-block_1', 2),
('views', 'test_revisions-block_1', 3),
('views', 'test_revisions-block_1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `block_access_roles`
--

DROP TABLE IF EXISTS `ahstest_block_access_roles`;
CREATE TABLE `ahstest_block_access_roles` (
  `module` varchar(64) NOT NULL,
  `delta` varchar(32) NOT NULL,
  `rid` int(10) unsigned NOT NULL,
  `permission` varchar(32) NOT NULL,
  PRIMARY KEY (`module`,`delta`,`rid`,`permission`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `block_access_roles`
--

INSERT INTO `block_access_roles` (`module`, `delta`, `rid`, `permission`) VALUES
('views', 'test_revisions-block_1', 1, 'view'),
('views', 'test_revisions-block_1', 2, 'view'),
('views', 'test_revisions-block_1', 3, 'view'),
('views', 'test_revisions-block_1', 4, 'view'),
('views', 'test_revisions_field-block_1', 1, 'view'),
('views', 'test_revisions_field-block_1', 2, 'view'),
('views', 'test_revisions_field-block_1', 3, 'view'),
('views', 'test_revisions_field-block_1', 4, 'view');

-- --------------------------------------------------------

--
-- Table structure for table `boxes`
--

DROP TABLE IF EXISTS `ahstest_boxes`;
CREATE TABLE `ahstest_boxes` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext,
  `info` varchar(128) NOT NULL DEFAULT '',
  `format` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `info` (`info`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `boxes`
--

INSERT INTO `boxes` (`bid`, `body`, `info`, `format`) VALUES
(2, 'Beta version developed and hosted by University of Texas at Austin<br/>&copy; <?php echo date(''Y'');?> University of Texas<br/><b>WebTool@austin.utexas.edu</b><br/>512.471.xxxx', 'footer', 3),
(3, '<?php\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n  $nid = $node->nid;\r\n}\r\n$url = request_uri();\r\n\r\n$pi_class = "active";\r\n$hd_class = "inactive";\r\n$ahu_class = "inactive";\r\n$pd_class = "inactive";\r\n\r\nif (strpos($url, $nid . "/two")) {\r\n$pi_class = "inactive";\r\n$hd_class = "active";\r\n}\r\n\r\nif (strpos($url, $nid . "/three")) {\r\n$pi_class = "inactive";\r\n$ahu_class = "active";\r\n}\r\n\r\nif (strpos($url, $nid . "/four")) {\r\n$pi_class = "inactive";\r\n$pd_class = "active";\r\n}\r\n\r\n$url_to_rm = strstr($url, $nid);\r\n$url_trim = str_replace($url_to_rm, '''', $url) . $nid;\r\n\r\n?>\r\n<table id="field-type-menu"><tr><td id="pi" class="<?php print $pi_class; ?>"><a href="<?php print $url_trim ?>">General Information</a></td><td id="hd" class="<?php print $hd_class; ?>"><a href="<?php print $url_trim ?>/two">Significance and Designations</a></td><td id="ahu" class="<?php print $ahu_class; ?>"><a href="<?php print $url_trim ?>/three">History</a></td><td id="pd" class="<?php print $pd_class; ?>"><a href="<?php print $url_trim ?>/four">Architectural Features</a></td></tr></table>\r\n\r\n', 'field type menu', 3),
(4, '<span id="publish_tab"><a href="publish">Publish</a></span><span id="delete_tab"><a href="delete">Delete</a></span>', 'Publish Tab', 2),
(5, '<span id="LHD_tab"><a href="<?php print base_path()?>lhd?nid=<?php print arg(1);?>">Local Historic District Form</a></span>', 'LHD Form Tab', 3),
(10, 'Contextual User Help text goes here', 'Help_Block', 1),
(11, 'Please log in or create an account to contribute.', 'Welcome', 1),
(9, '<?php\r\nif ( arg(0) == ''node'' && is_numeric(arg(1)) ) {\r\n  $node = node_load(arg(1));\r\n  $nid = $node->nid;\r\n}\r\n?>\r\n\r\n<span id="LHD_tab"><a href="add/fieldnode-photos?nid=<?php print $nid;?>">add more photos...</a></span>', 'add more photos link', 3);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `ahstest_comments`;
CREATE TABLE `ahstest_comments` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `nid` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(64) NOT NULL DEFAULT '',
  `comment` longtext NOT NULL,
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `format` smallint(6) NOT NULL DEFAULT '0',
  `thread` varchar(255) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `mail` varchar(64) DEFAULT NULL,
  `homepage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `pid` (`pid`),
  KEY `nid` (`nid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `conditional_fields`
--

DROP TABLE IF EXISTS `ahstest_conditional_fields`;
CREATE TABLE `ahstest_conditional_fields` (
  `control_field_name` varchar(32) NOT NULL DEFAULT '',
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(127) NOT NULL DEFAULT '',
  `trigger_values` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conditional_fields`
--

INSERT INTO `conditional_fields` (`control_field_name`, `field_name`, `type`, `trigger_values`) VALUES
('field_at_original_location', 'field_original_location_desc', 'fieldnode_at_original_location', 'a:1:{s:3:"Yes";s:3:"Yes";}'),
('field_at_original_location', 'field_date_moved', 'fieldnode_at_original_location', 'a:1:{s:3:"Yes";s:3:"Yes";}'),
('field_est_act', 'field_constr_date', 'fieldnode_constr_date', 'a:1:{s:6:"Actual";s:6:"Actual";}'),
('field_est_act', 'field_construction_early', 'fieldnode_constr_date', 'a:1:{s:9:"Estimated";s:9:"Estimated";}'),
('field_est_act', 'field_construction_late', 'fieldnode_constr_date', 'a:1:{s:9:"Estimated";s:9:"Estimated";}'),
('field_elig_nr', 'field_justify_nr_elig', 'fieldnode_nat_reg', 'a:1:{s:30:"Eligible for National Register";s:30:"Eligible for National Register";}'),
('field_design_nr_dist', 'field_design_nr_dist_id', 'fieldnode_nr_dist', 'a:2:{s:42:"Contributing to National Register District";s:42:"Contributing to National Register District";s:45:"Noncontributing to National Register District";s:45:"Noncontributing to National Register District";}'),
('field_design_nr_dist', 'field_justify_nr_elig_cont', 'fieldnode_nr_dist', 'a:1:{s:55:"Eligible for Contributing to National Register District";s:55:"Eligible for Contributing to National Register District";}'),
('field_stylistic_influences', 'field_other', 'fieldnode_stylistic_influences', 'a:1:{s:5:"Other";s:5:"Other";}'),
('field_historic_uses', 'field_other', 'fieldnode_historic_uses', 'a:12:{s:14:"DOMESTIC-Other";s:14:"DOMESTIC-Other";s:14:"COMMERCE-Other";s:14:"COMMERCE-Other";s:12:"SOCIAL-Other";s:12:"SOCIAL-Other";s:16:"GOVERNMENT-Other";s:16:"GOVERNMENT-Other";s:15:"EDUCATION-Other";s:15:"EDUCATION-Other";s:14:"RELIGION-Other";s:14:"RELIGION-Other";s:13:"CULTURE-Other";s:13:"CULTURE-Other";s:17:"AGRICULTURE-Other";s:17:"AGRICULTURE-Other";s:14:"INDUSTRY-Other";s:14:"INDUSTRY-Other";s:17:"HEALTH CARE-Other";s:17:"HEALTH CARE-Other";s:13:"DEFENSE-Other";s:13:"DEFENSE-Other";s:5:"Other";s:5:"Other";}'),
('field_current_use_primary', 'field_other', 'fieldnode_current_uses_primary', 'a:12:{s:14:"DOMESTIC-Other";s:14:"DOMESTIC-Other";s:14:"COMMERCE-Other";s:14:"COMMERCE-Other";s:12:"SOCIAL-Other";s:12:"SOCIAL-Other";s:16:"GOVERNMENT-Other";s:16:"GOVERNMENT-Other";s:15:"EDUCATION-Other";s:15:"EDUCATION-Other";s:14:"RELIGION-Other";s:14:"RELIGION-Other";s:13:"CULTURE-Other";s:13:"CULTURE-Other";s:17:"AGRICULTURE-Other";s:17:"AGRICULTURE-Other";s:14:"INDUSTRY-Other";s:14:"INDUSTRY-Other";s:17:"HEALTH CARE-Other";s:17:"HEALTH CARE-Other";s:13:"DEFENSE-Other";s:13:"DEFENSE-Other";s:5:"Other";s:5:"Other";}'),
('field_construction', 'field_other', 'fieldnode_construction', 'a:1:{s:5:"Other";s:5:"Other";}'),
('field_wall_facade', 'field_other', 'fieldnode_wall_facade', 'a:1:{s:5:"other";s:5:"other";}'),
('field_chimney_material', 'field_other', 'fieldnode_chimneys', 'a:1:{s:5:"other";s:5:"other";}'),
('field_window_type', 'field_windows_type_other', 'fieldnode_windows', 'a:1:{s:5:"other";s:5:"other";}'),
('field_doortype', 'field_other', 'fieldnode_doors', 'a:1:{s:5:"other";s:5:"other";}'),
('field_foundationtype', 'field_other', 'fieldnode_foundation', 'a:1:{s:5:"other";s:5:"other";}'),
('field_plantype', 'field_other', 'fieldnode_plan', 'a:1:{s:5:"other";s:5:"other";}'),
('field_porches_post_material', 'field_porches_pier_type', 'fieldnode_porches', 'a:1:{s:8:"On Piers";s:8:"On Piers";}'),
('field_rooftype', 'field_other', 'fieldnode_rooftype', 'a:1:{s:5:"other";s:5:"other";}'),
('field_roofmaterials', 'field_other', 'fieldnode_roofmaterials', 'a:1:{s:5:"other";s:5:"other";}'),
('field_landscapefeatures', 'field_other', 'fieldnode_landscapefeatures', 'a:1:{s:5:"other";s:5:"other";}'),
('field_integrity_main', 'field_integrity_location', 'fieldnode_integrity', 'a:1:{s:8:"Location";s:8:"Location";}'),
('field_integrity_main', 'field_integrity_design', 'fieldnode_integrity', 'a:1:{s:6:"Design";s:6:"Design";}'),
('field_integrity_main', 'field_integrity_materials', 'fieldnode_integrity', 'a:1:{s:9:"Materials";s:9:"Materials";}'),
('field_integrity_main', 'field_integrity_workmanship', 'fieldnode_integrity', 'a:1:{s:11:"Workmanship";s:11:"Workmanship";}'),
('field_integrity_main', 'field_integrity_setting', 'fieldnode_integrity', 'a:1:{s:7:"Setting";s:7:"Setting";}'),
('field_integrity_main', 'field_integrity_feeling', 'fieldnode_integrity', 'a:1:{s:7:"Feeling";s:7:"Feeling";}'),
('field_integrity_main', 'field_integrity_association', 'fieldnode_integrity', 'a:1:{s:11:"Association";s:11:"Association";}'),
('field_windows_material', 'field_windows_material_other', 'fieldnode_windows', 'a:1:{s:5:"other";s:5:"other";}'),
('field_porches', 'field_porchtype', 'fieldnode_porches', 'a:1:{s:3:"Yes";s:3:"Yes";}'),
('field_porches', 'field_porches_roof', 'fieldnode_porches', 'a:1:{s:3:"Yes";s:3:"Yes";}'),
('field_porches_post_material', 'field_porches_post_other', 'fieldnode_porches', 'a:1:{s:5:"other";s:5:"other";}'),
('field_porches', 'field_porches_post', 'fieldnode_porches', 'a:1:{s:3:"Yes";s:3:"Yes";}'),
('field_porches_post', 'field_porches_post_material', 'fieldnode_porches', 'a:1:{s:5:"posts";s:5:"posts";}'),
('field_porches', 'field_porches_rail_material', 'fieldnode_porches', 'a:1:{s:3:"Yes";s:3:"Yes";}'),
('field_landscapefeatures', 'field_fence_height', 'fieldnode_landscapefeatures', 'a:1:{s:5:"Fence";s:5:"Fence";}'),
('field_landscapefeatures', 'field_fence_material', 'fieldnode_landscapefeatures', 'a:1:{s:5:"Fence";s:5:"Fence";}'),
('field_landscapefeatures', 'field_wall_height', 'fieldnode_landscapefeatures', 'a:1:{s:4:"Wall";s:4:"Wall";}'),
('field_landscapefeatures', 'field_wall_material', 'fieldnode_landscapefeatures', 'a:1:{s:4:"Wall";s:4:"Wall";}'),
('field_outbuildings', 'field_out_garage_single', 'fieldnode_outbuildings', 'a:1:{s:19:"Single Story Garage";s:19:"Single Story Garage";}'),
('field_outbuildings', 'field_out_garage_apt', 'fieldnode_outbuildings', 'a:1:{s:16:"Garage Apartment";s:16:"Garage Apartment";}'),
('field_outbuildings', 'field_out_garage_wall', 'fieldnode_outbuildings', 'a:2:{s:19:"Single Story Garage";s:19:"Single Story Garage";s:16:"Garage Apartment";s:16:"Garage Apartment";}'),
('field_outbuildings', 'field_out_garage_rooftype', 'fieldnode_outbuildings', 'a:2:{s:19:"Single Story Garage";s:19:"Single Story Garage";s:16:"Garage Apartment";s:16:"Garage Apartment";}'),
('field_outbuildings', 'field_out_garage_roofmaterial', 'fieldnode_outbuildings', 'a:2:{s:19:"Single Story Garage";s:19:"Single Story Garage";s:16:"Garage Apartment";s:16:"Garage Apartment";}'),
('field_outbuildings', 'field_out_barn', 'fieldnode_outbuildings', 'a:1:{s:4:"Barn";s:4:"Barn";}'),
('field_outbuildings', 'field_out_shed', 'fieldnode_outbuildings', 'a:1:{s:4:"Shed";s:4:"Shed";}'),
('field_porches_pier_type', 'field_porches_pier_other', 'fieldnode_porches', 'a:1:{s:5:"other";s:5:"other";}'),
('field_outbuildings', 'field_other', 'fieldnode_outbuildings', 'a:1:{s:5:"other";s:5:"other";}'),
('field_at_original_location', 'field_original_location_desc', 'fieldnode_at_original_location', 'a:1:{s:3:"Yes";s:3:"Yes";}'),
('field_porchtype', 'field_porchtype_other', 'fieldnode_porches', 'a:1:{s:5:"other";s:5:"other";}'),
('field_porches_roof', 'field_porches_roof_other', 'fieldnode_porches', 'a:1:{s:5:"other";s:5:"other";}'),
('field_porches_rail_material', 'field_porches_rail_other', 'fieldnode_porches', 'a:1:{s:5:"other";s:5:"other";}'),
('field_dormertype', 'field_other', 'fieldnode_dormertype', 'a:1:{s:5:"other";s:5:"other";}'),
('field_contr_lhd', 'field_contr_lhd_justif', 'fieldnode_contr_lhd', 'a:1:{s:2:"no";s:2:"no";}'),
('field_contr_lhd_justif', 'field_other', 'fieldnode_contr_lhd', 'a:1:{s:5:"other";s:5:"other";}'),
('field_survey_effort', 'field_other', 'fieldnode_survey_effort', 'a:1:{s:5:"other";s:5:"other";}'),
('field_is_tcad', 'field_tcad_id', 'fieldnode_tcad_id', 'a:1:{s:3:"Yes";s:3:"Yes";}'),
('field_at_original_location', 'field_date_moved', 'fieldnode_at_original_location', 'a:1:{s:3:"Yes";s:3:"Yes";}'),
('field_est_act', 'field_constr_date', 'fieldnode_constr_date', 'a:1:{s:6:"Actual";s:6:"Actual";}'),
('field_est_act', 'field_construction_early', 'fieldnode_constr_date', 'a:1:{s:9:"Estimated";s:9:"Estimated";}'),
('field_est_act', 'field_construction_late', 'fieldnode_constr_date', 'a:1:{s:9:"Estimated";s:9:"Estimated";}'),
('field_elig_nr', 'field_justify_nr_elig', 'fieldnode_nat_reg', 'a:1:{s:30:"Eligible for National Register";s:30:"Eligible for National Register";}'),
('field_design_nr_dist', 'field_design_nr_dist_id', 'fieldnode_nr_dist', 'a:2:{s:42:"Contributing to National Register District";s:42:"Contributing to National Register District";s:45:"Noncontributing to National Register District";s:45:"Noncontributing to National Register District";}'),
('field_design_nr_dist', 'field_justify_nr_elig_cont', 'fieldnode_nr_dist', 'a:1:{s:55:"Eligible for Contributing to National Register District";s:55:"Eligible for Contributing to National Register District";}'),
('field_stylistic_influences', 'field_other', 'fieldnode_stylistic_influences', 'a:1:{s:5:"Other";s:5:"Other";}'),
('field_historic_uses', 'field_other', 'fieldnode_historic_uses', 'a:12:{s:14:"DOMESTIC-Other";s:14:"DOMESTIC-Other";s:14:"COMMERCE-Other";s:14:"COMMERCE-Other";s:12:"SOCIAL-Other";s:12:"SOCIAL-Other";s:16:"GOVERNMENT-Other";s:16:"GOVERNMENT-Other";s:15:"EDUCATION-Other";s:15:"EDUCATION-Other";s:14:"RELIGION-Other";s:14:"RELIGION-Other";s:13:"CULTURE-Other";s:13:"CULTURE-Other";s:17:"AGRICULTURE-Other";s:17:"AGRICULTURE-Other";s:14:"INDUSTRY-Other";s:14:"INDUSTRY-Other";s:17:"HEALTH CARE-Other";s:17:"HEALTH CARE-Other";s:13:"DEFENSE-Other";s:13:"DEFENSE-Other";s:5:"Other";s:5:"Other";}'),
('field_current_use_primary', 'field_other', 'fieldnode_current_uses_primary', 'a:12:{s:14:"DOMESTIC-Other";s:14:"DOMESTIC-Other";s:14:"COMMERCE-Other";s:14:"COMMERCE-Other";s:12:"SOCIAL-Other";s:12:"SOCIAL-Other";s:16:"GOVERNMENT-Other";s:16:"GOVERNMENT-Other";s:15:"EDUCATION-Other";s:15:"EDUCATION-Other";s:14:"RELIGION-Other";s:14:"RELIGION-Other";s:13:"CULTURE-Other";s:13:"CULTURE-Other";s:17:"AGRICULTURE-Other";s:17:"AGRICULTURE-Other";s:14:"INDUSTRY-Other";s:14:"INDUSTRY-Other";s:17:"HEALTH CARE-Other";s:17:"HEALTH CARE-Other";s:13:"DEFENSE-Other";s:13:"DEFENSE-Other";s:5:"Other";s:5:"Other";}'),
('field_construction', 'field_other', 'fieldnode_construction', 'a:1:{s:5:"Other";s:5:"Other";}'),
('field_wall_facade', 'field_other', 'fieldnode_wall_facade', 'a:1:{s:5:"other";s:5:"other";}'),
('field_chimney_material', 'field_other', 'fieldnode_chimneys', 'a:1:{s:5:"other";s:5:"other";}'),
('field_window_type', 'field_windows_type_other', 'fieldnode_windows', 'a:1:{s:5:"other";s:5:"other";}'),
('field_doortype', 'field_other', 'fieldnode_doors', 'a:1:{s:5:"other";s:5:"other";}'),
('field_foundationtype', 'field_other', 'fieldnode_foundation', 'a:1:{s:5:"other";s:5:"other";}'),
('field_plantype', 'field_other', 'fieldnode_plan', 'a:1:{s:5:"other";s:5:"other";}'),
('field_porches_post_material', 'field_porches_pier_type', 'fieldnode_porches', 'a:1:{s:8:"On Piers";s:8:"On Piers";}'),
('field_rooftype', 'field_other', 'fieldnode_rooftype', 'a:1:{s:5:"other";s:5:"other";}'),
('field_roofmaterials', 'field_other', 'fieldnode_roofmaterials', 'a:1:{s:5:"other";s:5:"other";}'),
('field_landscapefeatures', 'field_other', 'fieldnode_landscapefeatures', 'a:1:{s:5:"other";s:5:"other";}'),
('field_integrity_main', 'field_integrity_location', 'fieldnode_integrity', 'a:1:{s:8:"Location";s:8:"Location";}'),
('field_integrity_main', 'field_integrity_design', 'fieldnode_integrity', 'a:1:{s:6:"Design";s:6:"Design";}'),
('field_integrity_main', 'field_integrity_materials', 'fieldnode_integrity', 'a:1:{s:9:"Materials";s:9:"Materials";}'),
('field_integrity_main', 'field_integrity_workmanship', 'fieldnode_integrity', 'a:1:{s:11:"Workmanship";s:11:"Workmanship";}'),
('field_integrity_main', 'field_integrity_setting', 'fieldnode_integrity', 'a:1:{s:7:"Setting";s:7:"Setting";}'),
('field_integrity_main', 'field_integrity_feeling', 'fieldnode_integrity', 'a:1:{s:7:"Feeling";s:7:"Feeling";}'),
('field_integrity_main', 'field_integrity_association', 'fieldnode_integrity', 'a:1:{s:11:"Association";s:11:"Association";}'),
('field_windows_material', 'field_windows_material_other', 'fieldnode_windows', 'a:1:{s:5:"other";s:5:"other";}'),
('field_porches', 'field_porchtype', 'fieldnode_porches', 'a:1:{s:3:"Yes";s:3:"Yes";}'),
('field_porches', 'field_porches_roof', 'fieldnode_porches', 'a:1:{s:3:"Yes";s:3:"Yes";}'),
('field_porches_post_material', 'field_porches_post_other', 'fieldnode_porches', 'a:1:{s:5:"other";s:5:"other";}'),
('field_porches', 'field_porches_post', 'fieldnode_porches', 'a:1:{s:3:"Yes";s:3:"Yes";}'),
('field_porches_post', 'field_porches_post_material', 'fieldnode_porches', 'a:1:{s:5:"posts";s:5:"posts";}'),
('field_porches', 'field_porches_rail_material', 'fieldnode_porches', 'a:1:{s:3:"Yes";s:3:"Yes";}'),
('field_landscapefeatures', 'field_fence_height', 'fieldnode_landscapefeatures', 'a:1:{s:5:"Fence";s:5:"Fence";}'),
('field_landscapefeatures', 'field_fence_material', 'fieldnode_landscapefeatures', 'a:1:{s:5:"Fence";s:5:"Fence";}'),
('field_landscapefeatures', 'field_wall_height', 'fieldnode_landscapefeatures', 'a:1:{s:4:"Wall";s:4:"Wall";}'),
('field_landscapefeatures', 'field_wall_material', 'fieldnode_landscapefeatures', 'a:1:{s:4:"Wall";s:4:"Wall";}'),
('field_outbuildings', 'field_out_garage_single', 'fieldnode_outbuildings', 'a:1:{s:19:"Single Story Garage";s:19:"Single Story Garage";}'),
('field_outbuildings', 'field_out_garage_apt', 'fieldnode_outbuildings', 'a:1:{s:16:"Garage Apartment";s:16:"Garage Apartment";}'),
('field_outbuildings', 'field_out_garage_wall', 'fieldnode_outbuildings', 'a:2:{s:19:"Single Story Garage";s:19:"Single Story Garage";s:16:"Garage Apartment";s:16:"Garage Apartment";}'),
('field_outbuildings', 'field_out_garage_rooftype', 'fieldnode_outbuildings', 'a:2:{s:19:"Single Story Garage";s:19:"Single Story Garage";s:16:"Garage Apartment";s:16:"Garage Apartment";}'),
('field_outbuildings', 'field_out_garage_roofmaterial', 'fieldnode_outbuildings', 'a:2:{s:19:"Single Story Garage";s:19:"Single Story Garage";s:16:"Garage Apartment";s:16:"Garage Apartment";}'),
('field_outbuildings', 'field_out_barn', 'fieldnode_outbuildings', 'a:1:{s:4:"Barn";s:4:"Barn";}'),
('field_outbuildings', 'field_out_shed', 'fieldnode_outbuildings', 'a:1:{s:4:"Shed";s:4:"Shed";}'),
('field_porches_pier_type', 'field_porches_pier_other', 'fieldnode_porches', 'a:1:{s:5:"other";s:5:"other";}'),
('field_outbuildings', 'field_other', 'fieldnode_outbuildings', 'a:1:{s:5:"other";s:5:"other";}'),
('field_porchtype', 'field_porchtype_other', 'fieldnode_porches', 'a:1:{s:5:"other";s:5:"other";}'),
('field_porches_roof', 'field_porches_roof_other', 'fieldnode_porches', 'a:1:{s:5:"other";s:5:"other";}'),
('field_porches_rail_material', 'field_porches_rail_other', 'fieldnode_porches', 'a:1:{s:5:"other";s:5:"other";}'),
('field_dormertype', 'field_other', 'fieldnode_dormertype', 'a:1:{s:5:"other";s:5:"other";}'),
('field_contr_lhd', 'field_contr_lhd_justif', 'fieldnode_contr_lhd', 'a:1:{s:2:"no";s:2:"no";}'),
('field_contr_lhd_justif', 'field_other', 'fieldnode_contr_lhd', 'a:1:{s:5:"other";s:5:"other";}'),
('field_survey_effort', 'field_other', 'fieldnode_survey_effort', 'a:1:{s:5:"other";s:5:"other";}'),
('field_is_tcad', 'field_tcad_id', 'fieldnode_tcad_id', 'a:1:{s:3:"Yes";s:3:"Yes";}');

-- --------------------------------------------------------

--
-- Table structure for table `content_access`
--

DROP TABLE IF EXISTS `ahstest_content_access`;
CREATE TABLE `ahstest_content_access` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `settings` mediumtext,
  PRIMARY KEY (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_access`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_alterations_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_alterations_ref`;
CREATE TABLE `ahstest_content_field_alterations_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_alterations_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_alterations_ref_nid` (`field_alterations_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_alterations_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_architect`
--

DROP TABLE IF EXISTS `ahstest_content_field_architect`;
CREATE TABLE `ahstest_content_field_architect` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_architect_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_architect`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_architect_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_architect_ref`;
CREATE TABLE `ahstest_content_field_architect_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_architect_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_architect_ref_nid` (`field_architect_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_architect_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_at_original_location_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_at_original_location_ref`;
CREATE TABLE `ahstest_content_field_at_original_location_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_at_original_location_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_at_original_location_ref_nid` (`field_at_original_location_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_at_original_location_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_back_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_back_ref`;
CREATE TABLE `ahstest_content_field_back_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_back_ref_nid` int(10) unsigned DEFAULT NULL,
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_back_ref_nid` (`field_back_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_back_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_basement_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_basement_ref`;
CREATE TABLE `ahstest_content_field_basement_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_basement_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_basement_ref_nid` (`field_basement_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_basement_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_builder`
--

DROP TABLE IF EXISTS `ahstest_content_field_builder`;
CREATE TABLE `ahstest_content_field_builder` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_builder_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_builder`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_builder_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_builder_ref`;
CREATE TABLE `ahstest_content_field_builder_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_builder_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_builder_ref_nid` (`field_builder_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_builder_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_chimneys_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_chimneys_ref`;
CREATE TABLE `ahstest_content_field_chimneys_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_chimneys_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_chimneys_ref_nid` (`field_chimneys_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_chimneys_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_chimney_material`
--

DROP TABLE IF EXISTS `ahstest_content_field_chimney_material`;
CREATE TABLE `ahstest_content_field_chimney_material` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_chimney_material_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_chimney_material`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_construction`
--

DROP TABLE IF EXISTS `ahstest_content_field_construction`;
CREATE TABLE `ahstest_content_field_construction` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_construction_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_construction`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_construction_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_construction_ref`;
CREATE TABLE `ahstest_content_field_construction_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_construction_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_construction_ref_nid` (`field_construction_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_construction_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_constr_date_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_constr_date_ref`;
CREATE TABLE `ahstest_content_field_constr_date_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_constr_date_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_constr_date_ref_nid` (`field_constr_date_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_constr_date_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_contr_lhd_justif`
--

DROP TABLE IF EXISTS `ahstest_content_field_contr_lhd_justif`;
CREATE TABLE `ahstest_content_field_contr_lhd_justif` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_contr_lhd_justif_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_contr_lhd_justif`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_contr_lhd_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_contr_lhd_ref`;
CREATE TABLE `ahstest_content_field_contr_lhd_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_contr_lhd_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_contr_lhd_ref_nid` (`field_contr_lhd_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_contr_lhd_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_current_name`
--

DROP TABLE IF EXISTS `ahstest_content_field_current_name`;
CREATE TABLE `ahstest_content_field_current_name` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_current_name_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_current_name`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_current_name_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_current_name_ref`;
CREATE TABLE `ahstest_content_field_current_name_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_current_name_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_current_name_ref_nid` (`field_current_name_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_current_name_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_current_occupants`
--

DROP TABLE IF EXISTS `ahstest_content_field_current_occupants`;
CREATE TABLE `ahstest_content_field_current_occupants` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_current_occupants_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_current_occupants`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_current_occupants_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_current_occupants_ref`;
CREATE TABLE `ahstest_content_field_current_occupants_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_current_occupants_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_current_occupants_ref_nid` (`field_current_occupants_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_current_occupants_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_current_use_primary`
--

DROP TABLE IF EXISTS `ahstest_content_field_current_use_primary`;
CREATE TABLE `ahstest_content_field_current_use_primary` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_current_use_primary_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_current_use_primary`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_current_use_primary_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_current_use_primary_ref`;
CREATE TABLE `ahstest_content_field_current_use_primary_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_current_use_primary_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_current_use_primary_ref_nid` (`field_current_use_primary_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_current_use_primary_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_data_review_level`
--

DROP TABLE IF EXISTS `ahstest_content_field_data_review_level`;
CREATE TABLE `ahstest_content_field_data_review_level` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_data_review_level_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_data_review_level`
--

INSERT INTO `content_field_data_review_level` (`vid`, `nid`, `field_data_review_level_value`) VALUES
(2701, 2500, 2),
(2690, 2525, NULL),
(2665, 2500, NULL),
(2664, 2499, NULL),
(2700, 2499, 2),
(2699, 2498, 2);

-- --------------------------------------------------------

--
-- Table structure for table `content_field_doors_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_doors_ref`;
CREATE TABLE `ahstest_content_field_doors_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_doors_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_doors_ref_nid` (`field_doors_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_doors_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_doortype`
--

DROP TABLE IF EXISTS `ahstest_content_field_doortype`;
CREATE TABLE `ahstest_content_field_doortype` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_doortype_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_doortype`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_dormertype`
--

DROP TABLE IF EXISTS `ahstest_content_field_dormertype`;
CREATE TABLE `ahstest_content_field_dormertype` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_dormertype_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_dormertype`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_dormertype_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_dormertype_ref`;
CREATE TABLE `ahstest_content_field_dormertype_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_dormertype_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_dormertype_ref_nid` (`field_dormertype_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_dormertype_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_fence_material`
--

DROP TABLE IF EXISTS `ahstest_content_field_fence_material`;
CREATE TABLE `ahstest_content_field_fence_material` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_fence_material_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_fence_material`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_foundationtype`
--

DROP TABLE IF EXISTS `ahstest_content_field_foundationtype`;
CREATE TABLE `ahstest_content_field_foundationtype` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_foundationtype_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_foundationtype`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_foundation_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_foundation_ref`;
CREATE TABLE `ahstest_content_field_foundation_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_foundation_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_foundation_ref_nid` (`field_foundation_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_foundation_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_geog_lgl_descrp_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_geog_lgl_descrp_ref`;
CREATE TABLE `ahstest_content_field_geog_lgl_descrp_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_geog_lgl_descrp_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_geog_lgl_descrp_ref_nid` (`field_geog_lgl_descrp_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_geog_lgl_descrp_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_historic_name`
--

DROP TABLE IF EXISTS `ahstest_content_field_historic_name`;
CREATE TABLE `ahstest_content_field_historic_name` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_historic_name_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_historic_name`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_historic_name_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_historic_name_ref`;
CREATE TABLE `ahstest_content_field_historic_name_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_historic_name_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_historic_name_ref_nid` (`field_historic_name_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_historic_name_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_historic_uses`
--

DROP TABLE IF EXISTS `ahstest_content_field_historic_uses`;
CREATE TABLE `ahstest_content_field_historic_uses` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_historic_uses_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_historic_uses`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_historic_uses_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_historic_uses_ref`;
CREATE TABLE `ahstest_content_field_historic_uses_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_historic_uses_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_historic_uses_ref_nid` (`field_historic_uses_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_historic_uses_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_integrity_main`
--

DROP TABLE IF EXISTS `ahstest_content_field_integrity_main`;
CREATE TABLE `ahstest_content_field_integrity_main` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_integrity_main_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_integrity_main`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_integrity_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_integrity_ref`;
CREATE TABLE `ahstest_content_field_integrity_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_integrity_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_integrity_ref_nid` (`field_integrity_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_integrity_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_is_tcad`
--

DROP TABLE IF EXISTS `ahstest_content_field_is_tcad`;
CREATE TABLE `ahstest_content_field_is_tcad` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_is_tcad_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_is_tcad`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_landscapefeatures`
--

DROP TABLE IF EXISTS `ahstest_content_field_landscapefeatures`;
CREATE TABLE `ahstest_content_field_landscapefeatures` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_landscapefeatures_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_landscapefeatures`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_landscapefeatures_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_landscapefeatures_ref`;
CREATE TABLE `ahstest_content_field_landscapefeatures_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_landscapefeatures_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_landscapefeatures_ref_nid` (`field_landscapefeatures_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_landscapefeatures_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_nat_reg_dist_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_nat_reg_dist_ref`;
CREATE TABLE `ahstest_content_field_nat_reg_dist_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_nat_reg_dist_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_nat_reg_dist_ref_nid` (`field_nat_reg_dist_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_nat_reg_dist_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_nat_reg_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_nat_reg_ref`;
CREATE TABLE `ahstest_content_field_nat_reg_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_nat_reg_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_nat_reg_ref_nid` (`field_nat_reg_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_nat_reg_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_other`
--

DROP TABLE IF EXISTS `ahstest_content_field_other`;
CREATE TABLE `ahstest_content_field_other` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_other_value` longtext,
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_other`
--

INSERT INTO `content_field_other` (`vid`, `nid`, `field_other_value`, `delta`) VALUES
(1873, 1773, NULL, 0),
(1850, 1751, NULL, 0),
(3728, 3533, NULL, 0),
(3730, 3535, NULL, 0),
(3764, 3569, NULL, 0),
(3766, 3571, NULL, 0),
(3800, 3605, NULL, 0),
(3802, 3607, NULL, 0),
(3836, 3641, NULL, 0),
(3838, 3643, NULL, 0),
(3872, 3677, NULL, 0),
(3874, 3679, NULL, 0),
(3915, 3716, NULL, 0),
(3917, 3718, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `content_field_outbuildings`
--

DROP TABLE IF EXISTS `ahstest_content_field_outbuildings`;
CREATE TABLE `ahstest_content_field_outbuildings` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_outbuildings_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_outbuildings`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_outbuildings_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_outbuildings_ref`;
CREATE TABLE `ahstest_content_field_outbuildings_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_outbuildings_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_outbuildings_ref_nid` (`field_outbuildings_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_outbuildings_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_ownership_type_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_ownership_type_ref`;
CREATE TABLE `ahstest_content_field_ownership_type_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_ownership_type_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_ownership_type_ref_nid` (`field_ownership_type_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_ownership_type_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_owner_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_owner_ref`;
CREATE TABLE `ahstest_content_field_owner_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_owner_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_owner_ref_nid` (`field_owner_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_owner_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_past_occupants`
--

DROP TABLE IF EXISTS `ahstest_content_field_past_occupants`;
CREATE TABLE `ahstest_content_field_past_occupants` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_past_occupants_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_past_occupants`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_past_occupants_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_past_occupants_ref`;
CREATE TABLE `ahstest_content_field_past_occupants_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_past_occupants_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_past_occupants_ref_nid` (`field_past_occupants_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_past_occupants_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_past_owners`
--

DROP TABLE IF EXISTS `ahstest_content_field_past_owners`;
CREATE TABLE `ahstest_content_field_past_owners` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_past_owners_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_past_owners`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_past_owners_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_past_owners_ref`;
CREATE TABLE `ahstest_content_field_past_owners_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_past_owners_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_past_owners_ref_nid` (`field_past_owners_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_past_owners_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_plantype`
--

DROP TABLE IF EXISTS `ahstest_content_field_plantype`;
CREATE TABLE `ahstest_content_field_plantype` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_plantype_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_plantype`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_plan_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_plan_ref`;
CREATE TABLE `ahstest_content_field_plan_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_plan_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_plan_ref_nid` (`field_plan_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_plan_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_porches_pier_other`
--

DROP TABLE IF EXISTS `ahstest_content_field_porches_pier_other`;
CREATE TABLE `ahstest_content_field_porches_pier_other` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_porches_pier_other_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_porches_pier_other`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_porches_pier_type`
--

DROP TABLE IF EXISTS `ahstest_content_field_porches_pier_type`;
CREATE TABLE `ahstest_content_field_porches_pier_type` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_porches_pier_type_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_porches_pier_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_porches_post_material`
--

DROP TABLE IF EXISTS `ahstest_content_field_porches_post_material`;
CREATE TABLE `ahstest_content_field_porches_post_material` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_porches_post_material_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_porches_post_material`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_porches_rail_material`
--

DROP TABLE IF EXISTS `ahstest_content_field_porches_rail_material`;
CREATE TABLE `ahstest_content_field_porches_rail_material` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_porches_rail_material_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_porches_rail_material`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_porches_rail_other`
--

DROP TABLE IF EXISTS `ahstest_content_field_porches_rail_other`;
CREATE TABLE `ahstest_content_field_porches_rail_other` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_porches_rail_other_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_porches_rail_other`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_porches_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_porches_ref`;
CREATE TABLE `ahstest_content_field_porches_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_porches_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_porches_ref_nid` (`field_porches_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_porches_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_porches_roof`
--

DROP TABLE IF EXISTS `ahstest_content_field_porches_roof`;
CREATE TABLE `ahstest_content_field_porches_roof` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_porches_roof_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_porches_roof`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_porchtype`
--

DROP TABLE IF EXISTS `ahstest_content_field_porchtype`;
CREATE TABLE `ahstest_content_field_porchtype` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_porchtype_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_porchtype`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_roofmaterials`
--

DROP TABLE IF EXISTS `ahstest_content_field_roofmaterials`;
CREATE TABLE `ahstest_content_field_roofmaterials` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_roofmaterials_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_roofmaterials`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_roofmaterials_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_roofmaterials_ref`;
CREATE TABLE `ahstest_content_field_roofmaterials_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_roofmaterials_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_roofmaterials_ref_nid` (`field_roofmaterials_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_roofmaterials_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_rooftype`
--

DROP TABLE IF EXISTS `ahstest_content_field_rooftype`;
CREATE TABLE `ahstest_content_field_rooftype` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_rooftype_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_rooftype`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_rooftype_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_rooftype_ref`;
CREATE TABLE `ahstest_content_field_rooftype_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_rooftype_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_rooftype_ref_nid` (`field_rooftype_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_rooftype_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_sources`
--

DROP TABLE IF EXISTS `ahstest_content_field_sources`;
CREATE TABLE `ahstest_content_field_sources` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_sources_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_sources`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_status_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_status_ref`;
CREATE TABLE `ahstest_content_field_status_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_status_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_status_ref_nid` (`field_status_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_status_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_stories_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_stories_ref`;
CREATE TABLE `ahstest_content_field_stories_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_stories_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_stories_ref_nid` (`field_stories_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_stories_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_stylistic_influences`
--

DROP TABLE IF EXISTS `ahstest_content_field_stylistic_influences`;
CREATE TABLE `ahstest_content_field_stylistic_influences` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_stylistic_influences_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_stylistic_influences`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_stylistic_influences_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_stylistic_influences_ref`;
CREATE TABLE `ahstest_content_field_stylistic_influences_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_stylistic_influences_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_stylistic_influences_ref_nid` (`field_stylistic_influences_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_stylistic_influences_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_survey_effort`
--

DROP TABLE IF EXISTS `ahstest_content_field_survey_effort`;
CREATE TABLE `ahstest_content_field_survey_effort` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_survey_effort_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_survey_effort`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_survey_effort_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_survey_effort_ref`;
CREATE TABLE `ahstest_content_field_survey_effort_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_survey_effort_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_survey_effort_ref_nid` (`field_survey_effort_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_survey_effort_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_tcad_id_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_tcad_id_ref`;
CREATE TABLE `ahstest_content_field_tcad_id_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_tcad_id_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_tcad_id_ref_nid` (`field_tcad_id_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_tcad_id_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_wall_facade`
--

DROP TABLE IF EXISTS `ahstest_content_field_wall_facade`;
CREATE TABLE `ahstest_content_field_wall_facade` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_wall_facade_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_wall_facade`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_wall_facade_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_wall_facade_ref`;
CREATE TABLE `ahstest_content_field_wall_facade_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_wall_facade_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_wall_facade_ref_nid` (`field_wall_facade_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_wall_facade_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_wall_material`
--

DROP TABLE IF EXISTS `ahstest_content_field_wall_material`;
CREATE TABLE `ahstest_content_field_wall_material` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_wall_material_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_wall_material`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_windows_material`
--

DROP TABLE IF EXISTS `ahstest_content_field_windows_material`;
CREATE TABLE `ahstest_content_field_windows_material` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_windows_material_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_windows_material`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_windows_ref`
--

DROP TABLE IF EXISTS `ahstest_content_field_windows_ref`;
CREATE TABLE `ahstest_content_field_windows_ref` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_windows_ref_nid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`),
  KEY `field_windows_ref_nid` (`field_windows_ref_nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_windows_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_field_window_type`
--

DROP TABLE IF EXISTS `ahstest_content_field_window_type`;
CREATE TABLE `ahstest_content_field_window_type` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `delta` int(10) unsigned NOT NULL DEFAULT '0',
  `field_window_type_value` longtext,
  PRIMARY KEY (`vid`,`delta`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_field_window_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_group`
--

DROP TABLE IF EXISTS `ahstest_content_group`;
CREATE TABLE `ahstest_content_group` (
  `group_type` varchar(32) NOT NULL DEFAULT 'standard',
  `type_name` varchar(32) NOT NULL DEFAULT '',
  `group_name` varchar(32) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `settings` mediumtext NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type_name`,`group_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_group`
--

INSERT INTO `content_group` (`group_type`, `type_name`, `group_name`, `label`, `settings`, `weight`) VALUES
('standard', 'property', 'group_prop_id', 'Property Identification', 'a:2:{s:4:"form";a:2:{s:5:"style";s:18:"fieldset_collapsed";s:11:"description";s:0:"";}s:7:"display";a:9:{s:6:"weight";s:2:"32";s:5:"label";s:5:"above";s:6:"teaser";a:2:{s:6:"format";s:8:"no_style";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}s:11:"description";s:0:"";i:4;a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}}}', 33),
('standard', 'property', 'group_hist_des', 'Historic Designations', 'a:2:{s:4:"form";a:2:{s:5:"style";s:18:"fieldset_collapsed";s:11:"description";s:0:"";}s:7:"display";a:9:{s:6:"weight";s:2:"33";s:5:"label";s:5:"above";s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}s:11:"description";s:0:"";i:4;a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}}}', 34),
('standard', 'property', 'group_arch_hist_uses', 'Architectural History and Uses', 'a:2:{s:4:"form";a:2:{s:5:"style";s:18:"fieldset_collapsed";s:11:"description";s:0:"";}s:7:"display";a:9:{s:6:"weight";s:2:"34";s:5:"label";s:5:"above";s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}s:11:"description";s:0:"";i:4;a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}}}', 35),
('standard', 'property', 'group_photo_docs', 'Photographs and Documents', 'a:2:{s:4:"form";a:2:{s:5:"style";s:18:"fieldset_collapsed";s:11:"description";s:0:"";}s:7:"display";a:9:{s:6:"weight";s:2:"35";s:5:"label";s:5:"above";s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}s:11:"description";s:0:"";i:4;a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:8:"fieldset";s:7:"exclude";i:0;}}}', 36);

-- --------------------------------------------------------

--
-- Table structure for table `content_group_fields`
--

DROP TABLE IF EXISTS `ahstest_content_group_fields`;
CREATE TABLE `ahstest_content_group_fields` (
  `type_name` varchar(32) NOT NULL DEFAULT '',
  `group_name` varchar(32) NOT NULL DEFAULT '',
  `field_name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`type_name`,`group_name`,`field_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_group_fields`
--

INSERT INTO `content_group_fields` (`type_name`, `group_name`, `field_name`) VALUES
('property', 'group_arch_hist_uses', 'field_alterations_ref'),
('property', 'group_arch_hist_uses', 'field_architect_ref'),
('property', 'group_arch_hist_uses', 'field_at_original_location_ref'),
('property', 'group_arch_hist_uses', 'field_basement_ref'),
('property', 'group_arch_hist_uses', 'field_builder_ref'),
('property', 'group_arch_hist_uses', 'field_chimneys_ref'),
('property', 'group_arch_hist_uses', 'field_construction_ref'),
('property', 'group_arch_hist_uses', 'field_constr_date_ref'),
('property', 'group_arch_hist_uses', 'field_doors_ref'),
('property', 'group_arch_hist_uses', 'field_dormertype_ref'),
('property', 'group_arch_hist_uses', 'field_foundation_ref'),
('property', 'group_arch_hist_uses', 'field_historic_name_ref'),
('property', 'group_arch_hist_uses', 'field_historic_uses_ref'),
('property', 'group_arch_hist_uses', 'field_landscapefeatures_ref'),
('property', 'group_arch_hist_uses', 'field_outbuildings_ref'),
('property', 'group_arch_hist_uses', 'field_past_occupants_ref'),
('property', 'group_arch_hist_uses', 'field_past_owners_ref'),
('property', 'group_arch_hist_uses', 'field_plan_ref'),
('property', 'group_arch_hist_uses', 'field_porches_ref'),
('property', 'group_arch_hist_uses', 'field_roofmaterials_ref'),
('property', 'group_arch_hist_uses', 'field_rooftype_ref'),
('property', 'group_arch_hist_uses', 'field_stories_ref'),
('property', 'group_arch_hist_uses', 'field_stylistic_influences_ref'),
('property', 'group_arch_hist_uses', 'field_wall_facade_ref'),
('property', 'group_arch_hist_uses', 'field_windows_ref'),
('property', 'group_hist_des', 'field_contr_lhd_ref'),
('property', 'group_hist_des', 'field_integrity_ref'),
('property', 'group_hist_des', 'field_nat_reg_dist_ref'),
('property', 'group_hist_des', 'field_nat_reg_ref'),
('property', 'group_prop_id', 'field_current_name_ref'),
('property', 'group_prop_id', 'field_current_occupants_ref'),
('property', 'group_prop_id', 'field_current_use_primary_ref'),
('property', 'group_prop_id', 'field_geog_lgl_descrp_ref'),
('property', 'group_prop_id', 'field_ownership_type_ref'),
('property', 'group_prop_id', 'field_owner_ref'),
('property', 'group_prop_id', 'field_status_ref'),
('property', 'group_prop_id', 'field_survey_effort_ref'),
('property', 'group_prop_id', 'field_tcad_id_ref');

-- --------------------------------------------------------

--
-- Table structure for table `content_node_field`
--

DROP TABLE IF EXISTS `ahstest_content_node_field`;
CREATE TABLE `ahstest_content_node_field` (
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(127) NOT NULL DEFAULT '',
  `global_settings` mediumtext NOT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `multiple` tinyint(4) NOT NULL DEFAULT '0',
  `db_storage` tinyint(4) NOT NULL DEFAULT '1',
  `module` varchar(127) NOT NULL DEFAULT '',
  `db_columns` mediumtext NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_node_field`
--

INSERT INTO `content_node_field` (`field_name`, `type`, `global_settings`, `required`, `multiple`, `db_storage`, `module`, `db_columns`, `active`, `locked`) VALUES
('field_status', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:20:"Existing\r\nDemolished";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 1, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_at_original_location_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:30:"fieldnode_at_original_location";s:30:"fieldnode_at_original_location";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_at_original_location', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:7:"No\r\nYes";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_constr_date', 'number_integer', 'a:7:{s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:3:"min";s:1:"0";s:3:"max";s:4:"9999";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'number', 'a:1:{s:5:"value";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:8:"sortable";b:1;}}', 1, 0),
('field_geog_lgl_descrp', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_original_location_desc', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_prop_type', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:33:"Site\r\nBuilding\r\nStructure\r\nObject";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 1, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_tcad_id', 'number_integer', 'a:7:{s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:3:"min";s:6:"100000";s:3:"max";s:6:"999999";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'number', 'a:1:{s:5:"value";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:8:"sortable";b:1;}}', 1, 0),
('field_geog_lgl_descrp_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:25:"fieldnode_geog_lgl_descrp";s:25:"fieldnode_geog_lgl_descrp";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:8:"edit own";s:8:"edit own";s:8:"view own";s:8:"view own";s:4:"edit";i:0;s:4:"view";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_constr_date_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:21:"fieldnode_constr_date";s:21:"fieldnode_constr_date";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_tcad_id_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:17:"fieldnode_tcad_id";s:17:"fieldnode_tcad_id";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:8:"edit own";s:8:"edit own";s:4:"view";s:4:"view";s:8:"view own";s:8:"view own";}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_back_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:42:{s:8:"property";s:8:"property";s:7:"webform";i:0;s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_dormertype";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:19:"fieldnode_contr_lhd";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:23:"fieldnode_survey_effort";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:16:"fieldnode_photos";i:0;s:4:"page";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_date_moved', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_current_name', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_current_name_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:22:"fieldnode_current_name";s:22:"fieldnode_current_name";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_historic_name', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_historic_name_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:23:"fieldnode_historic_name";s:23:"fieldnode_historic_name";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_backref_6ed3d0d14912213f37', 'noderelationships_backref', 'a:3:{s:13:"referrer_type";s:8:"property";s:14:"referrer_field";s:30:"field_at_original_location_ref";s:17:"field_permissions";s:0:"";}', 0, 0, 1, 'noderelationships', 'a:0:{}', 1, 0),
('field_est_act', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:17:"Estimated\r\nActual";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_construction_early', 'number_integer', 'a:7:{s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:3:"min";s:1:"0";s:3:"max";s:4:"9999";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'number', 'a:1:{s:5:"value";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:8:"sortable";b:1;}}', 1, 0),
('field_construction_late', 'number_integer', 'a:7:{s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:3:"min";s:1:"0";s:3:"max";s:4:"9999";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'number', 'a:1:{s:5:"value";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:8:"sortable";b:1;}}', 1, 0),
('field_owner_name', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_owner_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:15:"fieldnode_owner";s:15:"fieldnode_owner";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_nat_reg_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:17:"fieldnode_nat_reg";s:17:"fieldnode_nat_reg";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_elig_nr', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:88:"Not Eligible for National Register\r\nEligible for National Register\r\nOn National Register";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_justify_nr_elig', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_design_nr_dist', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:185:"Not Within National Register District\r\nContributing to National Register District\r\nNoncontributing to National Register District\r\nEligible for Contributing to National Register District";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_design_nr_dist_id', 'number_integer', 'a:7:{s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'number', 'a:1:{s:5:"value";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:8:"sortable";b:1;}}', 1, 0),
('field_justify_nr_elig_cont', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_nat_reg_dist_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:41:{s:17:"fieldnode_nr_dist";s:17:"fieldnode_nr_dist";s:7:"webform";i:0;s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_dormertype";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:16:"fieldnode_photos";i:0;s:4:"page";i:0;s:8:"property";i:0;s:19:"fieldnode_contr_lhd";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_ownership_type', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:96:"Private - For Profit\r\nPrivate - Not for Profit\r\nPublic - Local\r\nPublic - State\r\nPublic - Federal";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_current_use_primary', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:1666:"DOMESTIC-Single Dwelling\r\nDOMESTIC-Multiple Dwelling\r\nDOMESTIC-Ancillary\r\nDOMESTIC-Hotel\r\nDOMESTIC-Institutional Housing\r\nDOMESTIC-Camp\r\nDOMESTIC-Other\r\nCOMMERCE-Business\r\nCOMMERCE-Financial Institution\r\nCOMMERCE-Department Store\r\nCOMMERCE-Specialty Store\r\nCOMMERCE-Food & Drink\r\nCOMMERCE-Professional\r\nCOMMERCE-Organizational\r\nCOMMERCE-Warehouse\r\nCOMMERCE-Other\r\nSOCIAL-Meeting Hall\r\nSOCIAL-Clubhouse\r\nSOCIAL-Civic\r\nSOCIAL-Other\r\nGOVERNMENT-Capitol\r\nGOVERNMENT-Courthouse\r\nGOVERNMENT-City Hall\r\nGOVERNMENT-Correctional Facility\r\nGOVERNMENT-Fire Station\r\nGOVERNMENT-Office\r\nGOVERNMENT-Post Office\r\nGOVERNMENT-Public Works\r\nGOVERNMENT-Other\r\nEDUCATION-School\r\nEDUCATION-College\r\nEDUCATION-Library\r\nEDUCATION-Research Facility\r\nEDUCATION-Other\r\nRELIGION-Mission\r\nRELIGION-Church\r\nRELIGION-Temple\r\nRELIGION-Synagogue\r\nRELIGION-Mosque\r\nRELIGION-Residence\r\nRELIGION-Other\r\nCULTURE-Theater\r\nCULTURE-Auditorium\r\nCULTURE-Museum\r\nCULTURE-Music Facility\r\nCULTURE-Sports Facility\r\nCULTURE-Outdoor Recreation\r\nCULTURE-Fair\r\nCULTURE-Other\r\nAGRICULTURE-Processing\r\nAGRICULTURE-Barn\r\nAGRICULTURE-Animal Facility\r\nAGRICULTURE-Crop Storage\r\nAGRICULTURE-Horticultural Facility\r\nAGRICULTURE-Outbuilding\r\nAGRICULTURE-Other\r\nINDUSTRY-Manufacturing Facility\r\nINDUSTRY-Extractive Facility\r\nINDUSTRY-Energy Facility\r\nINDUSTRY-Communications Facility\r\nINDUSTRY-Storage\r\nINDUSTRY-Other\r\nHEALTH CARE-Hospital\r\nHEALTH CARE-Clinic\r\nHEATLH CARE-Rest Home\r\nHEALTH CARE-Resort/Sanitarium\r\nHEALTH CARE-Office\r\nHEALTH CARE-Other\r\nDEFENSE-Armory\r\nDEFENSE-Fortification\r\nDEFENSE-Military Facility\r\nDEFENSE-Coast Guard Facility\r\nDEFENSE-Naval Facility\r\nDEFENSE-Air Facility\r\nDEFENSE-Other\r\nVACANT\r\nOther";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_ownership_type_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:24:"fieldnode_ownership_type";s:24:"fieldnode_ownership_type";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_past_owners', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_past_owners_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:21:"fieldnode_past_owners";s:21:"fieldnode_past_owners";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_current_occupants', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_current_occupants_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:27:"fieldnode_current_occupants";s:27:"fieldnode_current_occupants";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_past_occupants', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_past_occupants_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:24:"fieldnode_past_occupants";s:24:"fieldnode_past_occupants";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_current_use_primary_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:30:"fieldnode_current_uses_primary";s:30:"fieldnode_current_uses_primary";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_historic_uses', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:1666:"DOMESTIC-Single Dwelling\r\nDOMESTIC-Multiple Dwelling\r\nDOMESTIC-Ancillary\r\nDOMESTIC-Hotel\r\nDOMESTIC-Institutional Housing\r\nDOMESTIC-Camp\r\nDOMESTIC-Other\r\nCOMMERCE-Business\r\nCOMMERCE-Financial Institution\r\nCOMMERCE-Department Store\r\nCOMMERCE-Specialty Store\r\nCOMMERCE-Food & Drink\r\nCOMMERCE-Professional\r\nCOMMERCE-Organizational\r\nCOMMERCE-Warehouse\r\nCOMMERCE-Other\r\nSOCIAL-Meeting Hall\r\nSOCIAL-Clubhouse\r\nSOCIAL-Civic\r\nSOCIAL-Other\r\nGOVERNMENT-Capitol\r\nGOVERNMENT-Courthouse\r\nGOVERNMENT-City Hall\r\nGOVERNMENT-Correctional Facility\r\nGOVERNMENT-Fire Station\r\nGOVERNMENT-Office\r\nGOVERNMENT-Post Office\r\nGOVERNMENT-Public Works\r\nGOVERNMENT-Other\r\nEDUCATION-School\r\nEDUCATION-College\r\nEDUCATION-Library\r\nEDUCATION-Research Facility\r\nEDUCATION-Other\r\nRELIGION-Mission\r\nRELIGION-Church\r\nRELIGION-Temple\r\nRELIGION-Synagogue\r\nRELIGION-Mosque\r\nRELIGION-Residence\r\nRELIGION-Other\r\nCULTURE-Theater\r\nCULTURE-Auditorium\r\nCULTURE-Museum\r\nCULTURE-Music Facility\r\nCULTURE-Sports Facility\r\nCULTURE-Outdoor Recreation\r\nCULTURE-Fair\r\nCULTURE-Other\r\nAGRICULTURE-Processing\r\nAGRICULTURE-Barn\r\nAGRICULTURE-Animal Facility\r\nAGRICULTURE-Crop Storage\r\nAGRICULTURE-Horticultural Facility\r\nAGRICULTURE-Outbuilding\r\nAGRICULTURE-Other\r\nINDUSTRY-Manufacturing Facility\r\nINDUSTRY-Extractive Facility\r\nINDUSTRY-Energy Facility\r\nINDUSTRY-Communications Facility\r\nINDUSTRY-Storage\r\nINDUSTRY-Other\r\nHEALTH CARE-Hospital\r\nHEALTH CARE-Clinic\r\nHEATLH CARE-Rest Home\r\nHEALTH CARE-Resort/Sanitarium\r\nHEALTH CARE-Office\r\nHEALTH CARE-Other\r\nDEFENSE-Armory\r\nDEFENSE-Fortification\r\nDEFENSE-Military Facility\r\nDEFENSE-Coast Guard Facility\r\nDEFENSE-Naval Facility\r\nDEFENSE-Air Facility\r\nDEFENSE-Other\r\nVACANT\r\nOther";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_historic_uses_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:23:"fieldnode_historic_uses";s:23:"fieldnode_historic_uses";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_stylistic_influences', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:388:"Log Traditional\r\nGreek Revival\r\nItalianate\r\nSecond Empire\r\nEastlake\r\nQueen Anne\r\nShingle\r\nRomanesque Revival\r\nFolk Victorian\r\nColonial Revival\r\nExotic Revival\r\nGothic Revival\r\nTudor Revival\r\nNeo-Classical\r\nBeaux Arts\r\nMission\r\nMonterey\r\nPueblo Revival\r\nSpanish Colonial\r\nPrairie\r\nCraftsman\r\nArt Deco\r\nModerne\r\nInternational\r\nPost-war Modern\r\nRanch Style\r\nCommercial Style\r\nNo Style\r\nOther";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_stylistic_influences_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:30:"fieldnode_stylistic_influences";s:30:"fieldnode_stylistic_influences";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_other', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_architect', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_architect_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:19:"fieldnode_architect";s:19:"fieldnode_architect";s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_builder', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_builder_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:17:"fieldnode_builder";s:17:"fieldnode_builder";s:19:"fieldnode_architect";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_construction', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:45:"Frame\r\nAdobe\r\nSolid Brick\r\nSolid Stone\r\nOther";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_construction_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:22:"fieldnode_construction";s:22:"fieldnode_construction";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_wall_facade', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:51:"Wood\r\nStucco\r\nBrick\r\nStone\r\nSynthetic Siding\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_wall_facade_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:21:"fieldnode_wall_facade";s:21:"fieldnode_wall_facade";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_windows_material', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:35:"Wood\r\nSteel\r\nAluminum\r\nVinyl\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_windows_type_other', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_chimney_material', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:19:"Brick\r\nStone\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_chimneys_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:23:{s:18:"fieldnode_chimneys";s:18:"fieldnode_chimneys";s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_data_review_level', 'content_taxonomy', 'a:6:{s:14:"save_term_node";i:0;s:3:"vid";s:1:"1";s:6:"parent";s:1:"0";s:15:"parent_php_code";s:0:"";s:5:"depth";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 0, 'content_taxonomy', 'a:1:{s:5:"value";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:8:"sortable";b:0;}}', 1, 0),
('field_window_type', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:58:"Fixed\r\nCasement\r\nSingle Hung Sash\r\nDouble Hung Sash\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0);
INSERT INTO `content_node_field` (`field_name`, `type`, `global_settings`, `required`, `multiple`, `db_storage`, `module`, `db_columns`, `active`, `locked`) VALUES
('field_status_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:16:"fieldnode_status";s:16:"fieldnode_status";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_sources', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_photos', 'filefield', 'a:4:{s:10:"list_field";s:1:"0";s:12:"list_default";i:1;s:17:"description_field";s:1:"0";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'filefield', 'a:3:{s:3:"fid";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"list";a:4:{s:4:"type";s:3:"int";s:4:"size";s:4:"tiny";s:8:"not null";b:0;s:5:"views";b:1;}s:4:"data";a:3:{s:4:"type";s:4:"text";s:9:"serialize";b:1;s:5:"views";b:1;}}', 1, 0),
('field_doortype', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:94:"Single-door primary entrance\r\nDouble-door primary entrance\r\nGlazing\r\nTransom\r\nSidelites\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_porchtype', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:64:"Full width\r\nPartial width\r\nIndependent\r\nInset\r\nWraparound\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_porchtype_other', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_foundationtype', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:40:"Pier and beam\r\nStone\r\nBrick\r\nSlab\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_alt_windows', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_alt_doors', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_alt_porch', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_alt_materials', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_alt_additions', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_alt_roof', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_dates_altered', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_stories', 'number_decimal', 'a:10:{s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:3:"min";s:1:"1";s:3:"max";s:3:"199";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:9:"precision";s:2:"10";s:5:"scale";s:1:"0";s:7:"decimal";s:1:".";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'number', 'a:1:{s:5:"value";a:5:{s:4:"type";s:7:"numeric";s:9:"precision";s:2:"10";s:5:"scale";s:1:"0";s:8:"not null";b:0;s:8:"sortable";b:1;}}', 1, 0),
('field_plantype', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:116:"L plan\r\nT plan\r\n2 room\r\nOpen\r\nModified L-plan\r\nCenter passage\r\nShotgun\r\nIrregular\r\nFour Square\r\nRectangular\r\nother\r\n";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_rooftype', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:35:"Gable\r\nHipped\r\nFlat\r\nGambrel\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_dormertype', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:35:"Gable\r\nHipped\r\nFlat\r\nGambrel\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_roofmaterials', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:40:"Composition Shingles\r\nTile\r\nMetal\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_basementtype', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:26:"None\r\nPartial\r\nFull\r\nOther";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_dimensions', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_landscapefeatures', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:63:"Sidewalks\r\nTerracing\r\nDrives\r\nWell\r\nGardens\r\nFence\r\nWall\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_integrity_main', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:71:"Location\r\nDesign\r\nMaterials\r\nWorkmanship\r\nSetting\r\nFeeling\r\nAssociation";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_integrity_location', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_integrity_design', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_integrity_materials', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_integrity_workmanship', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_integrity_setting', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_integrity_feeling', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_integrity_association', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_integrity_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:19:"fieldnode_integrity";s:19:"fieldnode_integrity";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_windows_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:17:"fieldnode_windows";s:17:"fieldnode_windows";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_doors_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:15:"fieldnode_doors";s:15:"fieldnode_doors";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_porches_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:17:"fieldnode_porches";s:17:"fieldnode_porches";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_foundation_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:20:"fieldnode_foundation";s:20:"fieldnode_foundation";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_alterations_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:21:"fieldnode_alterations";s:21:"fieldnode_alterations";s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_stories_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:17:"fieldnode_stories";s:17:"fieldnode_stories";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_plan_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:14:"fieldnode_plan";s:14:"fieldnode_plan";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_rooftype_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:18:"fieldnode_rooftype";s:18:"fieldnode_rooftype";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_roofmaterials_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:23:"fieldnode_roofmaterials";s:23:"fieldnode_roofmaterials";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_basement_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:18:"fieldnode_basement";s:18:"fieldnode_basement";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_outbuildings_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:22:"fieldnode_outbuildings";s:22:"fieldnode_outbuildings";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_landscapefeatures_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:37:{s:27:"fieldnode_landscapefeatures";s:27:"fieldnode_landscapefeatures";s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_photo_descp', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_owner_addr', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_chimneys_int_num', 'number_integer', 'a:7:{s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:3:"min";s:1:"0";s:3:"max";s:2:"99";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'number', 'a:1:{s:5:"value";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:8:"sortable";b:1;}}', 1, 0),
('field_chimneys_ext_num', 'number_integer', 'a:7:{s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:3:"min";s:1:"0";s:3:"max";s:2:"99";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'number', 'a:1:{s:5:"value";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:8:"sortable";b:1;}}', 1, 0),
('field_windows_material_other', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_windows_screens', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:7:"Yes\r\nNo";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_porches', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:16:"No\r\nYes\r\nUnknown";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_porches_roof', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:23:"Gable\r\nHip\r\nShed\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_porches_roof_other', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_porches_post', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:47:"none|No Posts\r\nposts|Has Posts\r\nunknown|Unknown";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_porches_post_material', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:87:"Brick\r\nMetal\r\nSquare Wood\r\nTurned Wood\r\nBox Columns\r\nClassical Columns\r\nOn piers\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_dormertype_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:40:{s:20:"fieldnode_dormertype";s:20:"fieldnode_dormertype";s:7:"webform";i:0;s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:16:"fieldnode_photos";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_porches_post_other', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_porches_pier_type', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:28:"Brick\r\nMetal\r\nTapered\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_porches_pier_other', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_porches_rail_material', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:38:"Metal\r\nSquare Wood\r\nTurned Wood\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_porches_rail_other', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_fence_height', 'number_integer', 'a:7:{s:6:"prefix";s:0:"";s:6:"suffix";s:2:"in";s:3:"min";s:0:"";s:3:"max";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'number', 'a:1:{s:5:"value";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:8:"sortable";b:1;}}', 1, 0),
('field_fence_material', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_wall_height', 'number_integer', 'a:7:{s:6:"prefix";s:0:"";s:6:"suffix";s:2:"in";s:3:"min";s:0:"";s:3:"max";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'number', 'a:1:{s:5:"value";a:3:{s:4:"type";s:3:"int";s:8:"not null";b:0;s:8:"sortable";b:1;}}', 1, 0),
('field_wall_material', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_out_garage_single', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:1:"2";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:7:"varchar";s:6:"length";s:1:"2";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_outbuildings', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:56:"Single Story Garage\r\nGarage Apartment\r\nBarn\r\nShed\r\nother";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_out_garage_apt', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:1:"2";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:7:"varchar";s:6:"length";s:1:"2";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_out_garage_wall', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_out_garage_rooftype', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_out_garage_roofmaterial', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_out_barn', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:1:"2";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:7:"varchar";s:6:"length";s:1:"2";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0);
INSERT INTO `content_node_field` (`field_name`, `type`, `global_settings`, `required`, `multiple`, `db_storage`, `module`, `db_columns`, `active`, `locked`) VALUES
('field_out_shed', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:1:"2";s:14:"allowed_values";s:0:"";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:6:"create";i:0;s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:7:"varchar";s:6:"length";s:1:"2";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_contr_lhd', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:16:"yes\r\nno\r\nunknown";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 0, 1, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_contr_lhd_justif', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:92:"integrity|Not Intact/Major Alterations/Low Integrity\r\nnewer|Newer than 50 Years\r\nother|Other";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_survey_effort_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:42:{s:23:"fieldnode_survey_effort";s:23:"fieldnode_survey_effort";s:7:"webform";i:0;s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_dormertype";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:19:"fieldnode_contr_lhd";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:16:"fieldnode_photos";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";s:6:"create";s:4:"edit";s:4:"edit";s:4:"view";s:4:"view";s:8:"edit own";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_contr_lhd_ref', 'nodereference', 'a:4:{s:19:"referenceable_types";a:42:{s:19:"fieldnode_contr_lhd";s:19:"fieldnode_contr_lhd";s:7:"webform";i:0;s:21:"fieldnode_alterations";i:0;s:19:"fieldnode_architect";i:0;s:18:"fieldnode_basement";i:0;s:17:"fieldnode_builder";i:0;s:18:"fieldnode_chimneys";i:0;s:22:"fieldnode_construction";i:0;s:21:"fieldnode_constr_date";i:0;s:22:"fieldnode_current_name";i:0;s:27:"fieldnode_current_occupants";i:0;s:30:"fieldnode_current_uses_primary";i:0;s:15:"fieldnode_doors";i:0;s:20:"fieldnode_dormertype";i:0;s:20:"fieldnode_foundation";i:0;s:23:"fieldnode_historic_name";i:0;s:23:"fieldnode_historic_uses";i:0;s:19:"fieldnode_integrity";i:0;s:27:"fieldnode_landscapefeatures";i:0;s:25:"fieldnode_geog_lgl_descrp";i:0;s:17:"fieldnode_nat_reg";i:0;s:17:"fieldnode_nr_dist";i:0;s:30:"fieldnode_at_original_location";i:0;s:22:"fieldnode_outbuildings";i:0;s:15:"fieldnode_owner";i:0;s:24:"fieldnode_ownership_type";i:0;s:24:"fieldnode_past_occupants";i:0;s:21:"fieldnode_past_owners";i:0;s:14:"fieldnode_plan";i:0;s:17:"fieldnode_porches";i:0;s:23:"fieldnode_roofmaterials";i:0;s:18:"fieldnode_rooftype";i:0;s:16:"fieldnode_status";i:0;s:17:"fieldnode_stories";i:0;s:30:"fieldnode_stylistic_influences";i:0;s:23:"fieldnode_survey_effort";i:0;s:17:"fieldnode_tcad_id";i:0;s:21:"fieldnode_wall_facade";i:0;s:17:"fieldnode_windows";i:0;s:16:"fieldnode_photos";i:0;s:4:"page";i:0;s:8:"property";i:0;}s:13:"advanced_view";s:2:"--";s:18:"advanced_view_args";s:0:"";s:17:"field_permissions";a:5:{s:4:"view";s:4:"view";s:8:"view own";s:8:"view own";s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;}}', 0, 1, 0, 'nodereference', 'a:1:{s:3:"nid";a:4:{s:4:"type";s:3:"int";s:8:"unsigned";b:1;s:8:"not null";b:0;s:5:"index";b:1;}}', 1, 0),
('field_survey_effort', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:100:"none|None\r\naldridge_place|Aldridge Place\r\nbuddington|Buddington\r\ngrooms|Grooms Addition\r\nother|Other";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0),
('field_is_tcad', 'text', 'a:5:{s:15:"text_processing";s:1:"0";s:10:"max_length";s:0:"";s:14:"allowed_values";s:3:"Yes";s:18:"allowed_values_php";s:0:"";s:17:"field_permissions";a:5:{s:6:"create";i:0;s:4:"edit";i:0;s:8:"edit own";i:0;s:4:"view";i:0;s:8:"view own";i:0;}}', 0, 1, 0, 'text', 'a:1:{s:5:"value";a:5:{s:4:"type";s:4:"text";s:4:"size";s:3:"big";s:8:"not null";b:0;s:8:"sortable";b:1;s:5:"views";b:1;}}', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `content_node_field_instance`
--

DROP TABLE IF EXISTS `ahstest_content_node_field_instance`;
CREATE TABLE `ahstest_content_node_field_instance` (
  `field_name` varchar(32) NOT NULL DEFAULT '',
  `type_name` varchar(32) NOT NULL DEFAULT '',
  `weight` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `widget_type` varchar(32) NOT NULL DEFAULT '',
  `widget_settings` mediumtext NOT NULL,
  `display_settings` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `widget_module` varchar(127) NOT NULL DEFAULT '',
  `widget_active` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_name`,`type_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_node_field_instance`
--

INSERT INTO `content_node_field_instance` (`field_name`, `type_name`, `weight`, `label`, `widget_type`, `widget_settings`, `display_settings`, `description`, `widget_module`, `widget_active`) VALUES
('field_location', 'property', -4, 'location', 'gmaps_content_anp', 'a:3:{s:5:"gmaps";a:9:{s:5:"input";a:6:{s:15:"enable_geocoder";i:1;s:7:"use_map";i:1;s:11:"collapsible";i:1;s:9:"collapsed";s:2:"-1";s:14:"input_disabled";i:0;s:12:"tabbed_parts";s:2:"-1";}s:4:"meta";a:5:{s:8:"taxonomy";a:3:{s:8:"location";b:1;s:6:"letter";b:1;s:4:"show";a:4:{s:9:"continent";b:1;s:9:"last_part";b:0;s:5:"parts";a:8:{i:0;i:1;s:7:"country";b:0;s:9:"adminarea";b:0;s:12:"subadminarea";b:0;s:8:"locality";b:0;s:11:"deplocality";b:0;s:10:"postalcode";b:0;s:12:"thoroughfare";b:0;}s:5:"empty";b:0;}}s:6:"search";a:5:{s:13:"address_index";i:1;s:15:"address_snippet";i:1;s:13:"point_snippet";i:1;s:14:"refloc_snippet";i:1;s:13:"geoip_snippet";i:1;}s:4:"meta";a:4:{s:13:"geo_placename";i:1;s:10:"geo_region";i:1;s:12:"geo_position";i:1;s:4:"icbm";i:1;}s:3:"rss";a:3:{s:3:"w3c";i:0;s:6:"simple";i:1;s:3:"gml";i:1;}s:4:"link";a:2:{s:6:"teaser";a:2:{s:7:"content";a:3:{s:4:"show";s:3:"all";s:7:"address";s:5:"plain";s:5:"point";s:5:"plain";}s:8:"distance";a:4:{s:4:"show";s:3:"min";s:6:"refloc";i:1;s:7:"viewloc";b:0;s:5:"geoip";b:1;}}s:4:"full";a:2:{s:7:"content";a:3:{s:4:"show";s:3:"all";s:7:"address";s:5:"plain";s:5:"point";s:5:"plain";}s:8:"distance";a:4:{s:4:"show";s:3:"min";s:6:"refloc";i:1;s:7:"viewloc";b:0;s:5:"geoip";b:1;}}}}s:9:"formatter";a:5:{s:4:"show";s:3:"anp";s:7:"address";a:5:{s:13:"user_settings";i:1;s:7:"country";s:4:"name";s:5:"state";s:0:"";s:4:"flag";s:0:"";s:14:"taxonomy_links";i:0;}s:5:"point";a:7:{s:13:"user_settings";i:1;s:6:"format";s:2:"dd";s:9:"elevation";s:1:"1";s:7:"dd_prec";s:1:"6";s:8:"dms_prec";s:1:"0";s:9:"cart_prec";s:1:"2";s:14:"elevation_prec";s:1:"0";}s:3:"map";a:5:{s:3:"map";s:1:"5";s:10:"static_map";s:1:"1";s:5:"cache";i:1;s:13:"cache_expires";s:1:"0";s:7:"content";s:7:"default";}s:9:"map_links";a:9:{s:11:"google_find";i:0;s:22:"google_directions_from";i:0;s:20:"google_directions_to";i:0;s:10:"yahoo_find";i:0;s:21:"yahoo_directions_from";i:0;s:19:"yahoo_directions_to";i:0;s:13:"mapquest_find";i:0;s:24:"mapquest_directions_from";i:0;s:22:"mapquest_directions_to";i:0;}}s:17:"allowed_countries";a:1:{s:2:"US";s:2:"US";}s:8:"map_type";s:5:"earth";s:13:"enable_bounds";i:0;s:9:"enable_3D";i:0;s:10:"enable_pov";i:0;s:14:"enable_privacy";i:0;}s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";O:8:"stdClass":3:{s:6:"search";s:0:"";s:7:"address";O:8:"stdClass":7:{s:7:"country";s:0:"";s:9:"adminarea";s:0:"";s:12:"subadminarea";s:0:"";s:8:"locality";s:0:"";s:11:"deplocality";s:0:"";s:10:"postalcode";s:0:"";s:12:"thoroughfare";s:0:"";}s:5:"point";O:8:"stdClass":5:{s:8:"latitude";s:0:"";s:9:"longitude";s:0:"";s:9:"elevation";s:1:"0";s:6:"bounds";a:0:{}s:8:"map_type";s:5:"earth";}}}}s:17:"default_value_php";N;}', 'a:5:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'gmaps_content', 0),
('field_prop_type', 'property', 31, 'Property Type', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:4:"Site";}}s:17:"default_value_php";N;}', 'a:7:{s:6:"weight";s:2:"31";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:6:"inline";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_back_ref', 'fieldnode_tcad_id', 13, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"13";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_constr_date_ref', 'property', 64, 'Construction Date', 'nodereference_autocreate', 'a:3:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1702";}}s:17:"default_value_php";N;s:18:"autocomplete_match";s:8:"contains";}', 'a:9:{s:6:"weight";s:2:"64";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:6:"inline";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_tcad_id_ref', 'property', 34, 'TCAD ID', 'nodereference_autocreate', 'a:14:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2040";}}s:17:"default_value_php";N;s:24:"enable_constr_date_title";i:0;s:36:"enable_constr_date_field_constr_date";i:0;s:28:"enable_geog_lgl_descrp_title";i:0;s:44:"enable_geog_lgl_descrp_field_geog_lgl_descrp";i:0;s:17:"enable_page_title";i:0;s:21:"enable_property_title";i:0;s:31:"enable_property_field_prop_type";i:0;s:28:"enable_property_field_status";i:0;s:20:"enable_tcad_id_title";i:1;s:28:"enable_tcad_id_field_tcad_id";i:1;s:18:"autocomplete_match";s:8:"contains";s:4:"size";i:60;}', 'a:7:{s:6:"weight";s:2:"74";s:6:"parent";s:13:"group_prop_id";s:5:"label";a:1:{s:6:"format";s:6:"inline";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_at_original_location', 'fieldnode_at_original_location', 26, 'Has Property Moved from Original Location?', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"26";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_at_original_location_ref', 'property', 62, 'Original Location', 'nodereference_autocreate', 'a:4:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1700";}}s:17:"default_value_php";N;s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";}', 'a:9:{s:6:"weight";s:2:"62";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:6:"inline";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_original_location_desc', 'fieldnode_at_original_location', 27, 'Description of Original Location', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:60:"default_value_widget][field_original_location_desc][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"27";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_constr_date', 'fieldnode_constr_date', -1, 'Actual Construction Year', 'number', 'a:2:{s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:49:"default_value_widget][field_constr_date][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'number', 1),
('field_geog_lgl_descrp', 'fieldnode_geog_lgl_descrp', 19, 'Legal Description', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"30";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:1:" ";s:14:"_error_element";s:53:"default_value_widget][field_geog_lgl_descrp][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:6:"weight";s:1:"8";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_tcad_id', 'fieldnode_tcad_id', 11, 'Travis County Assessors District ID', 'number', 'a:2:{s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_tcad_id][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:6:"weight";s:2:"11";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:6:"inline";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'number', 1),
('field_sources', 'fieldnode_construction', 5, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"5";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_geog_lgl_descrp_ref', 'property', 35, 'Legal Description', 'nodereference_autocreate', 'a:3:{s:18:"autocomplete_match";s:8:"contains";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1643";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"75";s:6:"parent";s:13:"group_prop_id";s:5:"label";a:1:{s:6:"format";s:6:"inline";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_current_name', 'fieldnode_current_name', 6, 'Current Name', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:1:" ";s:14:"_error_element";s:50:"default_value_widget][field_current_name][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_date_moved', 'fieldnode_at_original_location', 28, 'Date Moved', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:48:"default_value_widget][field_date_moved][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"28";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_current_name_ref', 'property', 36, 'Current Name', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1644";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"76";s:6:"parent";s:13:"group_prop_id";s:5:"label";a:1:{s:6:"format";s:6:"inline";}s:6:"teaser";a:2:{s:6:"format";s:5:"views";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_back_ref', 'fieldnode_current_name', 8, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"5";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_historic_name', 'fieldnode_historic_name', -2, 'Historic Name', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:51:"default_value_widget][field_historic_name][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_historic_name_ref', 'property', 58, 'Historic Name', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1696";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"58";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:6:"inline";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_backref_6ed3d0d14912213f37', 'fieldnode_at_original_location', 29, 'Back references from Original Location in property', 'noderelationships_backref', 'a:0:{}', 'a:9:{s:6:"weight";s:2:"29";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'noderelationships', 1),
('field_est_act', 'fieldnode_constr_date', -2, 'Estimated or Actual Construction Year', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_construction_early', 'fieldnode_constr_date', 0, 'Earliest Estimated Construction Year', 'number', 'a:2:{s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:56:"default_value_widget][field_construction_early][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'number', 1),
('field_construction_late', 'fieldnode_constr_date', 1, 'Latest Estimated Construction Year', 'number', 'a:2:{s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:55:"default_value_widget][field_construction_late][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'number', 1),
('field_owner_name', 'fieldnode_owner', 34, 'Current Owner Name', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:48:"default_value_widget][field_owner_name][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"26";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_owner_ref', 'property', 37, 'Current Owner', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1690";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"77";s:6:"parent";s:13:"group_prop_id";s:5:"label";a:1:{s:6:"format";s:6:"inline";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_elig_nr', 'fieldnode_nat_reg', -2, 'Eligible for National Register', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:34:"Not Eligible for National Register";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_justify_nr_elig', 'fieldnode_nat_reg', -1, 'Justification for National Register Eligibility', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:53:"default_value_widget][field_justify_nr_elig][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_nat_reg_ref', 'property', 82, 'National Register Status', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1694";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"82";s:6:"parent";s:14:"group_hist_des";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_design_nr_dist', 'fieldnode_nr_dist', 26, 'National Register District Status', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"26";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_design_nr_dist_id', 'fieldnode_nr_dist', 27, 'National Register District ID', 'number', 'a:2:{s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:55:"default_value_widget][field_design_nr_dist_id][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"27";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'number', 1),
('field_justify_nr_elig_cont', 'fieldnode_nr_dist', 28, 'Justification for Eligibility for Contributing to National Register District', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:58:"default_value_widget][field_justify_nr_elig_cont][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"28";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_nat_reg_dist_ref', 'property', 83, 'National Register District Status', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"3959";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"83";s:6:"parent";s:14:"group_hist_des";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_ownership_type_ref', 'property', 38, 'Ownership Type', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1691";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"78";s:6:"parent";s:13:"group_prop_id";s:5:"label";a:1:{s:6:"format";s:6:"inline";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_past_owners', 'fieldnode_past_owners', 33, 'Past Owners', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:49:"default_value_widget][field_past_owners][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"33";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_current_use_primary', 'fieldnode_current_uses_primary', -2, 'Current Land Uses', 'optionwidgets_select', 'a:4:{s:4:"rows";N;s:4:"size";N;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_ownership_type', 'fieldnode_ownership_type', 26, 'Ownership Type', 'optionwidgets_select', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"26";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_past_owners_ref', 'property', 59, 'Past Owners', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1697";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"59";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_current_occupants', 'fieldnode_current_occupants', -2, 'Current Occupants', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:55:"default_value_widget][field_current_occupants][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_current_occupants_ref', 'property', 39, 'Current Occupants', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1692";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"79";s:6:"parent";s:13:"group_prop_id";s:5:"label";a:1:{s:6:"format";s:6:"inline";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_past_occupants', 'fieldnode_past_occupants', 26, 'Past Occupants', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:52:"default_value_widget][field_past_occupants][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"26";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_past_occupants_ref', 'property', 60, 'Past Occupants', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1698";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"60";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_current_use_primary_ref', 'property', 40, 'Current Uses', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1693";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"80";s:6:"parent";s:13:"group_prop_id";s:5:"label";a:1:{s:6:"format";s:6:"inline";}s:6:"teaser";a:2:{s:6:"format";s:5:"views";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_historic_uses', 'fieldnode_historic_uses', 26, 'Historic Uses', 'optionwidgets_select', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"26";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_historic_uses_ref', 'property', 61, 'Historic Uses', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1699";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"61";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_stylistic_influences', 'fieldnode_stylistic_influences', 26, 'Stylistic Influences', 'optionwidgets_select', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"26";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_stylistic_influences_ref', 'property', 63, 'Stylistic Influences', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1701";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"63";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_other', 'fieldnode_stylistic_influences', 27, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"27";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_other', 'fieldnode_historic_uses', 27, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"27";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_other', 'fieldnode_current_uses_primary', -1, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_architect', 'fieldnode_architect', -1, 'Architect(s)', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:47:"default_value_widget][field_architect][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_architect_ref', 'property', 65, 'Architect(s)', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1703";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"65";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_builder', 'fieldnode_builder', 26, 'Builder(s)', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_builder][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"26";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_builder_ref', 'property', 66, 'Builder(s)', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1704";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"66";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_construction', 'fieldnode_construction', -2, 'Construction', 'optionwidgets_select', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_other', 'fieldnode_construction', -1, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_construction_ref', 'property', 67, 'Construction', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1705";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"67";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_wall_facade', 'fieldnode_wall_facade', 26, 'Wall Facade', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"26";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_other', 'fieldnode_wall_facade', 27, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"27";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_wall_facade_ref', 'property', 68, 'Wall Facade', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1706";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"68";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_porches', 'fieldnode_porches', -1, 'Has Porches', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_windows_material_other', 'fieldnode_windows', 2, 'Other Window Frame Material', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:60:"default_value_widget][field_windows_material_other][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_windows_material', 'fieldnode_windows', 1, 'Window Frame Material', 'optionwidgets_buttons', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_chimney_material', 'fieldnode_chimneys', 2, 'Chimney Material', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_other', 'fieldnode_chimneys', 3, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_chimneys_ref', 'property', 69, 'Chimneys', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"1707";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"69";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_photos', 'fieldnode_photos', 31, 'field-photos', 'imagefield_widget', 'a:14:{s:15:"file_extensions";s:16:"png gif jpg jpeg";s:9:"file_path";s:19:"[location-street_N]";s:18:"progress_indicator";s:3:"bar";s:21:"max_filesize_per_file";s:0:"";s:21:"max_filesize_per_node";s:0:"";s:14:"max_resolution";s:1:"0";s:14:"min_resolution";s:1:"0";s:3:"alt";s:0:"";s:10:"custom_alt";i:0;s:5:"title";s:0:"";s:12:"custom_title";i:0;s:10:"title_type";s:9:"textfield";s:13:"default_image";N;s:17:"use_default_image";i:0;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:11:"image_plain";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:11:"image_plain";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:11:"image_plain";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:11:"image_plain";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:11:"image_plain";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:11:"image_plain";s:7:"exclude";i:0;}}', '', 'imagefield', 1);
INSERT INTO `content_node_field_instance` (`field_name`, `type_name`, `weight`, `label`, `widget_type`, `widget_settings`, `display_settings`, `description`, `widget_module`, `widget_active`) VALUES
('field_sources', 'fieldnode_architect', 1, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_photo_descp', 'fieldnode_photos', 32, 'field-Description', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:49:"default_value_widget][field_photo_descp][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_sources', 'fieldnode_tcad_id', 12, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"12";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_sources', 'fieldnode_status', 28, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"28";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_status', 'fieldnode_status', 27, 'Status', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:8:"Existing";}}s:17:"default_value_php";N;}', 'a:7:{s:6:"weight";s:2:"27";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:6:"inline";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_back_ref', 'fieldnode_geog_lgl_descrp', 21, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"10";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_architect', 6, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"6";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_builder', 33, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"33";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_chimneys', 10, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"8";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_construction', 6, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"6";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_constr_date', 9, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"9";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_current_occupants', 5, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"5";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_current_uses_primary', 6, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"6";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_historic_name', 5, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"5";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_sources', 'fieldnode_historic_name', 4, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"4";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_sources', 'fieldnode_current_uses_primary', 5, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"5";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_sources', 'fieldnode_current_occupants', 4, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"4";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_sources', 'fieldnode_current_name', 7, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"4";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_sources', 'fieldnode_constr_date', 8, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"8";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_sources', 'fieldnode_chimneys', 9, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"7";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_sources', 'fieldnode_builder', 35, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"35";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_sources', 'fieldnode_historic_uses', 34, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"34";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_back_ref', 'fieldnode_historic_uses', 36, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"36";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_sources', 'fieldnode_geog_lgl_descrp', 20, 'sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"9";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, websites, newspapers, archives, oral history, firsthand knowledge, or even "overheard on the bus."', 'text', 1),
('field_sources', 'fieldnode_nat_reg', 6, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"6";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_back_ref', 'fieldnode_nat_reg', 5, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"5";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_sources', 'fieldnode_nr_dist', 35, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"35";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_back_ref', 'fieldnode_nr_dist', 37, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"37";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_sources', 'fieldnode_at_original_location', 35, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"35";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_back_ref', 'fieldnode_at_original_location', 37, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"37";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_sources', 'fieldnode_owner', 36, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"33";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_back_ref', 'fieldnode_owner', 37, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"35";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_sources', 'fieldnode_ownership_type', 33, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"33";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_back_ref', 'fieldnode_ownership_type', 35, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"35";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_sources', 'fieldnode_past_occupants', 33, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"33";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_back_ref', 'fieldnode_past_occupants', 35, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"35";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_sources', 'fieldnode_past_owners', 40, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"40";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_back_ref', 'fieldnode_past_owners', 42, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"42";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_sources', 'fieldnode_stylistic_influences', 34, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"34";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_back_ref', 'fieldnode_stylistic_influences', 36, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"36";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_sources', 'fieldnode_wall_facade', 34, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"34";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_back_ref', 'fieldnode_wall_facade', 36, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"36";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_status', 29, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";N;}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"29";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_status_ref', 'property', 33, 'Status', 'nodereference_autocreate', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2041";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"73";s:6:"parent";s:13:"group_prop_id";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:5:"views";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_window_type', 'fieldnode_windows', -1, 'Window Type', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_windows_type_other', 'fieldnode_windows', 0, 'Other Window Type', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:56:"default_value_widget][field_windows_type_other][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_data_review_level', 'fieldnode_windows', -2, 'Data Review Level', 'content_taxonomy_options', 'a:4:{s:12:"group_parent";s:1:"0";s:10:"show_depth";i:0;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'content_taxonomy_options', 1),
('field_sources', 'fieldnode_windows', 4, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_doortype', 'fieldnode_doors', 42, 'Door Type', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_other', 'fieldnode_doors', 43, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_data_review_level', 'fieldnode_doors', 41, 'Data Review Level', 'content_taxonomy_options', 'a:4:{s:12:"group_parent";s:1:"0";s:10:"show_depth";i:0;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'content_taxonomy_options', 1),
('field_sources', 'fieldnode_doors', 44, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_porchtype', 'fieldnode_porches', 0, 'Porch Type', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_porchtype_other', 'fieldnode_porches', 2, 'Other Porch Type', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:53:"default_value_widget][field_porchtype_other][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_data_review_level', 'fieldnode_porches', -2, 'Data Review Level', 'content_taxonomy_options', 'a:4:{s:12:"group_parent";s:1:"0";s:10:"show_depth";i:0;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'content_taxonomy_options', 1),
('field_sources', 'fieldnode_porches', 12, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_foundationtype', 'fieldnode_foundation', 52, 'Foundation Type', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_other', 'fieldnode_foundation', 53, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_sources', 'fieldnode_foundation', 54, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_data_review_level', 'fieldnode_foundation', 51, 'Data Review Level', 'content_taxonomy_options', 'a:4:{s:12:"group_parent";s:1:"0";s:10:"show_depth";i:0;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'content_taxonomy_options', 1),
('field_alt_windows', 'fieldnode_alterations', 47, 'Windows', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:49:"default_value_widget][field_alt_windows][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_sources', 'fieldnode_alterations', 54, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_alt_doors', 'fieldnode_alterations', 48, 'Doors', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:47:"default_value_widget][field_alt_doors][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_sources', 'fieldnode_photos', 34, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1);
INSERT INTO `content_node_field_instance` (`field_name`, `type_name`, `weight`, `label`, `widget_type`, `widget_settings`, `display_settings`, `description`, `widget_module`, `widget_active`) VALUES
('field_alt_porch', 'fieldnode_alterations', 49, 'Porch', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:47:"default_value_widget][field_alt_porch][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_alt_materials', 'fieldnode_alterations', 50, 'Materials', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:51:"default_value_widget][field_alt_materials][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_alt_additions', 'fieldnode_alterations', 51, 'Additions', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:51:"default_value_widget][field_alt_additions][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_alt_roof', 'fieldnode_alterations', 52, 'Roof', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:46:"default_value_widget][field_alt_roof][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_other', 'fieldnode_alterations', 53, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_dates_altered', 'fieldnode_alterations', 46, 'Dates Altered', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:51:"default_value_widget][field_dates_altered][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_stories', 'fieldnode_stories', 31, 'Number of Stories', 'number', 'a:2:{s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_stories][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'number', 1),
('field_sources', 'fieldnode_stories', 32, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_plantype', 'fieldnode_plan', 33, 'Plan Type', 'optionwidgets_buttons', 'a:4:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;s:4:"rows";i:5;s:4:"size";s:2:"60";}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_data_review_level', 'fieldnode_plan', 32, 'Data Review Level', 'content_taxonomy_options', 'a:4:{s:12:"group_parent";s:1:"0";s:10:"show_depth";i:0;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'content_taxonomy_options', 1),
('field_other', 'fieldnode_plan', 34, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_sources', 'fieldnode_plan', 35, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_rooftype', 'fieldnode_rooftype', 43, 'Roof Type', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_data_review_level', 'fieldnode_rooftype', 42, 'Data Review Level', 'content_taxonomy_options', 'a:4:{s:12:"group_parent";s:1:"0";s:10:"show_depth";i:0;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'content_taxonomy_options', 1),
('field_other', 'fieldnode_dormertype', -2, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_other', 'fieldnode_rooftype', 45, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_data_review_level', 'fieldnode_dormertype', -4, 'Data Review Level', 'content_taxonomy_options', 'a:4:{s:12:"group_parent";s:1:"0";s:10:"show_depth";i:0;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'content_taxonomy_options', 1),
('field_sources', 'fieldnode_rooftype', 46, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_roofmaterials', 'fieldnode_roofmaterials', 33, 'Roof Materials', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_data_review_level', 'fieldnode_roofmaterials', 32, 'Data Review Level', 'content_taxonomy_options', 'a:4:{s:12:"group_parent";s:1:"0";s:10:"show_depth";i:0;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'content_taxonomy_options', 1),
('field_other', 'fieldnode_roofmaterials', 34, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_sources', 'fieldnode_roofmaterials', 35, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_basementtype', 'fieldnode_basement', 33, 'Basement Type', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_data_review_level', 'fieldnode_basement', 32, 'Data Review Level', 'content_taxonomy_options', 'a:4:{s:12:"group_parent";s:1:"0";s:10:"show_depth";i:0;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'content_taxonomy_options', 1),
('field_dimensions', 'fieldnode_basement', 34, 'Dimensions', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:48:"default_value_widget][field_dimensions][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_sources', 'fieldnode_basement', 35, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_contr_lhd', 'fieldnode_contr_lhd', 31, 'Contributing to Existing or Potential Local Historic District', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_dormertype_ref', 'property', 79, 'Dormer Type', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"3882";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_dormertype', 'fieldnode_dormertype', -3, 'Dormer Type', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_data_review_level', 'fieldnode_outbuildings', -2, 'Data Review Level', 'content_taxonomy_options', 'a:4:{s:12:"group_parent";s:1:"0";s:10:"show_depth";i:0;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'content_taxonomy_options', 1),
('field_back_ref', 'fieldnode_dormertype', 7, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_other', 'fieldnode_outbuildings', 7, 'Other Outbuildings', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_sources', 'fieldnode_outbuildings', 8, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_landscapefeatures', 'fieldnode_landscapefeatures', -1, 'Landscape Features', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_other', 'fieldnode_landscapefeatures', 0, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_data_review_level', 'fieldnode_landscapefeatures', -2, 'Data Review Level', 'content_taxonomy_options', 'a:4:{s:12:"group_parent";s:1:"0";s:10:"show_depth";i:0;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'content_taxonomy_options', 1),
('field_sources', 'fieldnode_landscapefeatures', 5, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_integrity_main', 'fieldnode_integrity', 41, 'Integrity of', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_data_review_level', 'fieldnode_integrity', 40, 'Data Review Level', 'content_taxonomy_options', 'a:4:{s:12:"group_parent";s:1:"0";s:10:"show_depth";i:0;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-2";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'content_taxonomy_options', 1),
('field_integrity_location', 'fieldnode_integrity', 42, 'Location Description', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:56:"default_value_widget][field_integrity_location][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_integrity_design', 'fieldnode_integrity', 43, 'Design Description', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:54:"default_value_widget][field_integrity_design][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_sources', 'fieldnode_integrity', 49, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_integrity_materials', 'fieldnode_integrity', 44, 'Materials Description', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:57:"default_value_widget][field_integrity_materials][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_integrity_workmanship', 'fieldnode_integrity', 45, 'Workmanship Description', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:59:"default_value_widget][field_integrity_workmanship][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_integrity_setting', 'fieldnode_integrity', 46, 'Setting Description', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:55:"default_value_widget][field_integrity_setting][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_integrity_feeling', 'fieldnode_integrity', 47, 'Feeling Description', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:55:"default_value_widget][field_integrity_feeling][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_integrity_association', 'fieldnode_integrity', 48, 'Association Description', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:59:"default_value_widget][field_integrity_association][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_integrity_ref', 'property', 81, 'Integrity', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2042";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"81";s:6:"parent";s:14:"group_hist_des";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_windows_ref', 'property', 70, 'Windows', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2043";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"70";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_doors_ref', 'property', 71, 'Doors', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2044";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"71";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_porches_ref', 'property', 73, 'Porches', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2045";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"72";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_foundation_ref', 'property', 74, 'Foundation', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2046";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"73";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_alterations_ref', 'property', 75, 'Alterations', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2047";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"74";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_stories_ref', 'property', 76, 'Stories', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2048";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"75";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_plan_ref', 'property', 77, 'Plan', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2049";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"76";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_rooftype_ref', 'property', 78, 'Roof Type', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2050";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"77";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_roofmaterials_ref', 'property', 80, 'Roof Materials', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2051";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"78";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_basement_ref', 'property', 81, 'Basement', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2052";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"79";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_outbuildings_ref', 'property', 82, 'Outbuildings', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2053";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"80";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_landscapefeatures_ref', 'property', 83, 'Landscape Features', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"2054";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"81";s:6:"parent";s:20:"group_arch_hist_uses";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:1;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_back_ref', 'fieldnode_integrity', 58, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_alterations', 63, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_basement', 44, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_doors', 53, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_foundation', 63, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_landscapefeatures', 13, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_outbuildings', 16, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_plan', 44, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1);
INSERT INTO `content_node_field_instance` (`field_name`, `type_name`, `weight`, `label`, `widget_type`, `widget_settings`, `display_settings`, `description`, `widget_module`, `widget_active`) VALUES
('field_back_ref', 'fieldnode_porches', 20, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_roofmaterials', 44, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_rooftype', 55, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_stories', 41, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_windows', 13, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_back_ref', 'fieldnode_photos', 36, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_is_tcad', 'fieldnode_tcad_id', 10, 'This property is located on a parcel listed with the Travis Central Assessors District', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";i:0;}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"10";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_chimneys_int_num', 'fieldnode_chimneys', -2, 'Number of Internal Chimneys', 'number', 'a:2:{s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:54:"default_value_widget][field_chimneys_int_num][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'number', 1),
('field_owner_addr', 'fieldnode_owner', 35, 'Current Owner Address', 'text_textarea', 'a:4:{s:4:"rows";s:1:"3";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:48:"default_value_widget][field_owner_addr][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_chimneys_ext_num', 'fieldnode_chimneys', -1, 'Number of External Chimneys', 'number', 'a:2:{s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:54:"default_value_widget][field_chimneys_ext_num][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'number', 1),
('field_windows_screens', 'fieldnode_windows', 3, 'Has Decorative Screens', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_porches_roof', 'fieldnode_porches', 3, 'Porch Roof Type', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_porches_roof_other', 'fieldnode_porches', 4, 'Other Porch Roof Type', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:56:"default_value_widget][field_porches_roof_other][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_porches_post', 'fieldnode_porches', 5, 'Porch Posts', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_porches_post_material', 'fieldnode_porches', 6, 'Porch Post Material', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_porches_post_other', 'fieldnode_porches', 7, 'Other Porch Post Material', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:56:"default_value_widget][field_porches_post_other][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_porches_pier_type', 'fieldnode_porches', 8, 'Type of Porch Piers', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_porches_pier_other', 'fieldnode_porches', 9, 'Other Porch Pier Type', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:56:"default_value_widget][field_porches_pier_other][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_porches_rail_material', 'fieldnode_porches', 10, 'Porch Rail Material', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_porches_rail_other', 'fieldnode_porches', 11, 'Other Porch Rail Material', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:56:"default_value_widget][field_porches_rail_other][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_fence_height', 'fieldnode_landscapefeatures', 1, 'Fence Height', 'number', 'a:2:{s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:50:"default_value_widget][field_fence_height][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'number', 1),
('field_fence_material', 'fieldnode_landscapefeatures', 2, 'Fence Material', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:52:"default_value_widget][field_fence_material][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_wall_height', 'fieldnode_landscapefeatures', 3, 'Wall Height', 'number', 'a:2:{s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:49:"default_value_widget][field_wall_height][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'number', 1),
('field_wall_material', 'fieldnode_landscapefeatures', 4, 'Wall Material', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:51:"default_value_widget][field_wall_material][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_out_garage_single', 'fieldnode_outbuildings', 0, 'Number of Single Story Garages', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:55:"default_value_widget][field_out_garage_single][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_outbuildings', 'fieldnode_outbuildings', -1, 'Outbuildings', 'optionwidgets_buttons', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";N;}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_out_garage_apt', 'fieldnode_outbuildings', 1, 'Number of Garage Apartments', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:52:"default_value_widget][field_out_garage_apt][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_out_garage_wall', 'fieldnode_outbuildings', 2, 'Garage Wall Material', 'text_textfield', 'a:4:{s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:53:"default_value_widget][field_out_garage_wall][0][value";}}s:17:"default_value_php";N;s:4:"rows";i:5;s:4:"size";s:2:"60";}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_out_garage_rooftype', 'fieldnode_outbuildings', 3, 'Garage Roof Type', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:57:"default_value_widget][field_out_garage_rooftype][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_out_garage_roofmaterial', 'fieldnode_outbuildings', 4, 'Garage Roof Material', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:61:"default_value_widget][field_out_garage_roofmaterial][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_out_barn', 'fieldnode_outbuildings', 5, 'Number of Barns', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:46:"default_value_widget][field_out_barn][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_out_shed', 'fieldnode_outbuildings', 6, 'Number of Sheds', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:46:"default_value_widget][field_out_shed][0][value";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_sources', 'fieldnode_dormertype', -1, 'Sources', 'text_textarea', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:45:"default_value_widget][field_sources][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";i:0;s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', 'Examples of sources may include books, newspapers, archives, oral history, firsthand knowledge, or even "overhead on the bus."', 'text', 1),
('field_contr_lhd_justif', 'fieldnode_contr_lhd', 32, 'If not contributing, what is the justification', 'optionwidgets_buttons', 'a:4:{s:4:"rows";s:1:"5";s:4:"size";i:60;s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_other', 'fieldnode_contr_lhd', 33, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"-1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_back_ref', 'fieldnode_contr_lhd', 42, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:1:"1";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1),
('field_contr_lhd_ref', 'property', 84, 'Contributing to Existing or Potential Local Historic District', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"4139";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_survey_effort_ref', 'property', 32, 'Survey Effort', 'nodereference_autocreate', 'a:2:{s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:4:"4058";}}s:17:"default_value_php";N;}', 'a:7:{s:5:"label";a:2:{s:6:"format";s:5:"above";s:7:"exclude";i:0;}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference_autocreate', 1),
('field_survey_effort', 'fieldnode_survey_effort', 31, 'Survey Effort', 'optionwidgets_select', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:5:"value";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"31";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'optionwidgets', 1),
('field_other', 'fieldnode_survey_effort', 32, 'Other', 'text_textfield', 'a:4:{s:4:"rows";i:5;s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:2:{s:5:"value";s:0:"";s:14:"_error_element";s:43:"default_value_widget][field_other][0][value";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"32";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'text', 1),
('field_back_ref', 'fieldnode_survey_effort', 41, 'Back Reference', 'nodereference_select', 'a:4:{s:18:"autocomplete_match";s:8:"contains";s:4:"size";s:2:"60";s:13:"default_value";a:1:{i:0;a:1:{s:3:"nid";s:0:"";}}s:17:"default_value_php";N;}', 'a:9:{s:6:"weight";s:2:"41";s:6:"parent";s:0:"";s:5:"label";a:1:{s:6:"format";s:5:"above";}s:6:"teaser";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:4:"full";a:2:{s:6:"format";s:6:"hidden";s:7:"exclude";i:0;}i:4;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:2;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}i:3;a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}s:5:"token";a:2:{s:6:"format";s:7:"default";s:7:"exclude";i:0;}}', '', 'nodereference', 1);

-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_alterations`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_alterations`;
CREATE TABLE `ahstest_content_type_fieldnode_alterations` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_alt_windows_value` longtext,
  `field_alt_doors_value` longtext,
  `field_alt_porch_value` longtext,
  `field_alt_materials_value` longtext,
  `field_alt_additions_value` longtext,
  `field_alt_roof_value` longtext,
  `field_dates_altered_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_alterations`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_architect`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_architect`;
CREATE TABLE `ahstest_content_type_fieldnode_architect` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_architect`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_at_original_location`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_at_original_location`;
CREATE TABLE `ahstest_content_type_fieldnode_at_original_location` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_at_original_location_value` longtext,
  `field_original_location_desc_value` longtext,
  `field_date_moved_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_at_original_location`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_basement`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_basement`;
CREATE TABLE `ahstest_content_type_fieldnode_basement` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_basementtype_value` longtext,
  `field_dimensions_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_basement`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_builder`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_builder`;
CREATE TABLE `ahstest_content_type_fieldnode_builder` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_builder`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_chimneys`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_chimneys`;
CREATE TABLE `ahstest_content_type_fieldnode_chimneys` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_chimneys_int_num_value` int(11) DEFAULT NULL,
  `field_chimneys_ext_num_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_chimneys`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_construction`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_construction`;
CREATE TABLE `ahstest_content_type_fieldnode_construction` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_construction`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_constr_date`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_constr_date`;
CREATE TABLE `ahstest_content_type_fieldnode_constr_date` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_constr_date_value` int(11) DEFAULT NULL,
  `field_est_act_value` longtext,
  `field_construction_early_value` int(11) DEFAULT NULL,
  `field_construction_late_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_constr_date`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_contr_lhd`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_contr_lhd`;
CREATE TABLE `ahstest_content_type_fieldnode_contr_lhd` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_contr_lhd_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_contr_lhd`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_current_name`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_current_name`;
CREATE TABLE `ahstest_content_type_fieldnode_current_name` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_current_name`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_current_occupants`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_current_occupants`;
CREATE TABLE `ahstest_content_type_fieldnode_current_occupants` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_current_occupants`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_current_uses_primary`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_current_uses_primary`;
CREATE TABLE `ahstest_content_type_fieldnode_current_uses_primary` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_current_uses_primary`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_doors`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_doors`;
CREATE TABLE `ahstest_content_type_fieldnode_doors` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_doors`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_dormertype`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_dormertype`;
CREATE TABLE `ahstest_content_type_fieldnode_dormertype` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_dormertype`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_foundation`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_foundation`;
CREATE TABLE `ahstest_content_type_fieldnode_foundation` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_foundation`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_geog_lgl_descrp`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_geog_lgl_descrp`;
CREATE TABLE `ahstest_content_type_fieldnode_geog_lgl_descrp` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_geog_lgl_descrp_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_geog_lgl_descrp`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_historic_name`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_historic_name`;
CREATE TABLE `ahstest_content_type_fieldnode_historic_name` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_historic_name`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_historic_uses`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_historic_uses`;
CREATE TABLE `ahstest_content_type_fieldnode_historic_uses` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_historic_uses`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_integrity`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_integrity`;
CREATE TABLE `ahstest_content_type_fieldnode_integrity` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_integrity_location_value` longtext,
  `field_integrity_design_value` longtext,
  `field_integrity_materials_value` longtext,
  `field_integrity_workmanship_value` longtext,
  `field_integrity_setting_value` longtext,
  `field_integrity_feeling_value` longtext,
  `field_integrity_association_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_integrity`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_landscapefeatures`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_landscapefeatures`;
CREATE TABLE `ahstest_content_type_fieldnode_landscapefeatures` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_fence_height_value` int(11) DEFAULT NULL,
  `field_wall_height_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_landscapefeatures`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_nat_reg`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_nat_reg`;
CREATE TABLE `ahstest_content_type_fieldnode_nat_reg` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_elig_nr_value` longtext,
  `field_justify_nr_elig_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_nat_reg`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_nr_dist`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_nr_dist`;
CREATE TABLE `ahstest_content_type_fieldnode_nr_dist` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_design_nr_dist_value` longtext,
  `field_design_nr_dist_id_value` int(11) DEFAULT NULL,
  `field_justify_nr_elig_cont_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_nr_dist`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_outbuildings`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_outbuildings`;
CREATE TABLE `ahstest_content_type_fieldnode_outbuildings` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_out_garage_single_value` varchar(2) DEFAULT NULL,
  `field_out_garage_apt_value` varchar(2) DEFAULT NULL,
  `field_out_garage_rooftype_value` longtext,
  `field_out_garage_roofmaterial_value` longtext,
  `field_out_barn_value` varchar(2) DEFAULT NULL,
  `field_out_shed_value` varchar(2) DEFAULT NULL,
  `field_out_garage_wall_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_outbuildings`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_owner`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_owner`;
CREATE TABLE `ahstest_content_type_fieldnode_owner` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_owner_name_value` longtext,
  `field_owner_addr_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_owner`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_ownership_type`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_ownership_type`;
CREATE TABLE `ahstest_content_type_fieldnode_ownership_type` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_ownership_type_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_ownership_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_past_occupants`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_past_occupants`;
CREATE TABLE `ahstest_content_type_fieldnode_past_occupants` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_past_occupants`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_past_owners`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_past_owners`;
CREATE TABLE `ahstest_content_type_fieldnode_past_owners` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_past_owners`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_photos`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_photos`;
CREATE TABLE `ahstest_content_type_fieldnode_photos` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_photos_fid` int(11) DEFAULT NULL,
  `field_photos_list` tinyint(4) DEFAULT NULL,
  `field_photos_data` text,
  `field_photo_descp_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_photos`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_plan`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_plan`;
CREATE TABLE `ahstest_content_type_fieldnode_plan` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_plan`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_porches`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_porches`;
CREATE TABLE `ahstest_content_type_fieldnode_porches` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_porches_value` longtext,
  `field_porchtype_other_value` longtext,
  `field_porches_roof_other_value` longtext,
  `field_porches_post_other_value` longtext,
  `field_porches_post_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_porches`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_roofmaterials`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_roofmaterials`;
CREATE TABLE `ahstest_content_type_fieldnode_roofmaterials` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_roofmaterials`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_rooftype`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_rooftype`;
CREATE TABLE `ahstest_content_type_fieldnode_rooftype` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_rooftype`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_status`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_status`;
CREATE TABLE `ahstest_content_type_fieldnode_status` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_status_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_status`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_stories`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_stories`;
CREATE TABLE `ahstest_content_type_fieldnode_stories` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_stories_value` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_stories`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_stylistic_influences`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_stylistic_influences`;
CREATE TABLE `ahstest_content_type_fieldnode_stylistic_influences` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_stylistic_influences`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_survey_effort`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_survey_effort`;
CREATE TABLE `ahstest_content_type_fieldnode_survey_effort` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_survey_effort`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_tcad_id`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_tcad_id`;
CREATE TABLE `ahstest_content_type_fieldnode_tcad_id` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_tcad_id_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_tcad_id`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_wall_facade`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_wall_facade`;
CREATE TABLE `ahstest_content_type_fieldnode_wall_facade` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_wall_facade`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_fieldnode_windows`
--

DROP TABLE IF EXISTS `ahstest_content_type_fieldnode_windows`;
CREATE TABLE `ahstest_content_type_fieldnode_windows` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_windows_type_other_value` longtext,
  `field_windows_material_other_value` longtext,
  `field_windows_screens_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_fieldnode_windows`
--


-- --------------------------------------------------------

--
-- Table structure for table `content_type_property`
--

DROP TABLE IF EXISTS `ahstest_content_type_property`;
CREATE TABLE `ahstest_content_type_property` (
  `vid` int(10) unsigned NOT NULL DEFAULT '0',
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `field_prop_type_value` longtext,
  PRIMARY KEY (`vid`),
  KEY `nid` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_type_property`
--


-- --------------------------------------------------------

--
-- Table structure for table `corresponding_node_references`
--

DROP TABLE IF EXISTS `ahstest_corresponding_node_references`;
CREATE TABLE `ahstest_corresponding_node_references` (
  `node_types_content_fields` varchar(200) NOT NULL DEFAULT '',
  `enabled` int(10) unsigned NOT NULL DEFAULT '0',
  `single` int(10) unsigned NOT NULL DEFAULT '0',
  `single2` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`node_types_content_fields`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `corresponding_node_references`
--

INSERT INTO `corresponding_node_references` (`node_types_content_fields`, `enabled`, `single`, `single2`) VALUES
('property*field_tcad_id_ref*fieldnode_tcad_id*field_back_ref', 1, 0, 1),
('property*field_geog_lgl_descrp_ref*fieldnode_geog_lgl_descrp*field_back_ref', 1, 0, 1),
('fieldnode_current_name*field_back_ref*property*field_current_name_ref', 1, 1, 0),
('property*field_at_original_location_ref*fieldnode_at_original_location*field_back_ref', 1, 0, 1),
('property*field_constr_date_ref*fieldnode_constr_date*field_back_ref', 1, 0, 1),
('fieldnode_architect*field_back_ref*property*field_architect_ref', 1, 1, 0),
('fieldnode_builder*field_back_ref*property*field_builder_ref', 1, 1, 0),
('fieldnode_chimneys*field_back_ref*property*field_chimneys_ref', 1, 1, 0),
('fieldnode_construction*field_back_ref*property*field_construction_ref', 1, 1, 0),
('fieldnode_current_occupants*field_back_ref*property*field_current_occupants_ref', 1, 1, 0),
('fieldnode_current_uses_primary*field_back_ref*property*field_current_use_primary_ref', 1, 1, 0),
('fieldnode_historic_name*field_back_ref*property*field_historic_name_ref', 1, 1, 0),
('fieldnode_historic_uses*field_back_ref*property*field_historic_uses_ref', 1, 1, 0),
('fieldnode_nat_reg*field_back_ref*property*field_nat_reg_ref', 1, 1, 0),
('fieldnode_nr_dist*field_back_ref*property*field_nat_reg_dist_ref', 1, 1, 0),
('fieldnode_owner*field_back_ref*property*field_owner_ref', 1, 1, 0),
('fieldnode_ownership_type*field_back_ref*property*field_ownership_type_ref', 1, 1, 0),
('fieldnode_past_occupants*field_back_ref*property*field_past_occupants_ref', 1, 1, 0),
('fieldnode_past_owners*field_back_ref*property*field_past_owners_ref', 1, 1, 0),
('fieldnode_stylistic_influences*field_back_ref*property*field_stylistic_influences_ref', 1, 1, 0),
('fieldnode_wall_facade*field_back_ref*property*field_wall_facade_ref', 1, 1, 0),
('fieldnode_status*field_back_ref*property*field_status_ref', 1, 1, 0),
('fieldnode_integrity*field_back_ref*property*field_integrity_ref', 1, 1, 0),
('fieldnode_alterations*field_back_ref*property*field_alterations_ref', 1, 1, 0),
('fieldnode_basement*field_back_ref*property*field_basement_ref', 1, 1, 0),
('fieldnode_doors*field_back_ref*property*field_doors_ref', 1, 1, 0),
('fieldnode_foundation*field_back_ref*property*field_foundation_ref', 1, 1, 0),
('fieldnode_landscapefeatures*field_back_ref*property*field_landscapefeatures_ref', 1, 1, 0),
('fieldnode_outbuildings*field_back_ref*property*field_outbuildings_ref', 1, 1, 0),
('fieldnode_plan*field_back_ref*property*field_plan_ref', 1, 1, 0),
('fieldnode_porches*field_back_ref*property*field_porches_ref', 1, 1, 0),
('fieldnode_roofmaterials*field_back_ref*property*field_roofmaterials_ref', 1, 1, 0),
('fieldnode_rooftype*field_back_ref*property*field_rooftype_ref', 1, 1, 0),
('fieldnode_stories*field_back_ref*property*field_stories_ref', 1, 1, 0),
('fieldnode_windows*field_back_ref*property*field_windows_ref', 1, 1, 0),
('fieldnode_photos*field_back_ref*property*field_photos_ref', 0, 0, 0),
('fieldnode_dormertype*field_back_ref*property*field_dormertype_ref', 1, 1, 0),
('fieldnode_lhd*field_back_ref*property*field_lhd', 0, 0, 0),
('fieldnode_lhd*field_back_ref*property*field_lhd_ref', 0, 0, 0),
('fieldnode_contr_lhd*field_back_ref*property*field_lhd_ref', 0, 0, 0),
('fieldnode_contr_lhd*field_back_ref*property*field_contr_lhd_ref', 1, 1, 0),
('fieldnode_survey_effort*field_back_ref*property*field_survey_effort_ref', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `custom_breadcrumb`
--

DROP TABLE IF EXISTS `ahstest_custom_breadcrumb`;
CREATE TABLE `ahstest_custom_breadcrumb` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titles` varchar(255) NOT NULL DEFAULT '',
  `paths` varchar(255) DEFAULT NULL,
  `visibility_php` mediumtext NOT NULL,
  `node_type` varchar(64) DEFAULT 'AND',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `custom_breadcrumb`
--

INSERT INTO `custom_breadcrumb` (`bid`, `titles`, `paths`, `visibility_php`, `node_type`) VALUES
(1, 'Home', '<front>', 'return TRUE;', 'property'),
(2, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_geog_lgl_descrp'),
(3, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_tcad_id'),
(4, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_current_name'),
(5, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_owner'),
(6, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_ownership_type'),
(7, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_current_uses_primary'),
(8, 'Home\r\nProperty Record', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_architect'),
(9, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_builder'),
(10, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_chimneys'),
(11, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_construction'),
(12, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_constr_date'),
(13, 'Home\r\nProperty Record', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_historic_name'),
(14, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_historic_uses'),
(15, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_nat_reg'),
(16, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_nr_dist'),
(17, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_at_original_location'),
(18, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_past_occupants'),
(19, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_past_owners'),
(20, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]', 'return TRUE;', 'fieldnode_status'),
(21, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]', 'return TRUE;', 'fieldnode_stylistic_influences'),
(22, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_current_occupants'),
(23, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_alterations'),
(24, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_basement'),
(25, 'Home\r\nProperty Record', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_doors'),
(26, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_foundation'),
(27, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_integrity'),
(28, 'Home\r\nProperty Record', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_landscapefeatures'),
(29, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]', 'return TRUE;', 'fieldnode_outbuildings'),
(30, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]', 'return TRUE;', 'fieldnode_plan'),
(31, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_porches'),
(32, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_roofmaterials'),
(33, 'Home\r\nProperty Record', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_rooftype'),
(34, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_stories'),
(35, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_wall_facade'),
(36, 'Home\r\nProperty Record\r\n', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_windows'),
(37, 'Home\r\nProperty Record', '<front>\r\nnode/[field_back_ref-nid]\r\n', 'return TRUE;', 'fieldnode_dormertype');

-- --------------------------------------------------------

--
-- Table structure for table `custom_breadcrumbsapi`
--

DROP TABLE IF EXISTS `ahstest_custom_breadcrumbsapi`;
CREATE TABLE `ahstest_custom_breadcrumbsapi` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `titles` varchar(255) NOT NULL DEFAULT '',
  `paths` varchar(255) DEFAULT NULL,
  `visibility_php` mediumtext NOT NULL,
  `module_page` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  KEY `language` (`language`),
  KEY `module_language` (`module_page`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `custom_breadcrumbsapi`
--


-- --------------------------------------------------------

--
-- Table structure for table `custom_breadcrumbs_paths`
--

DROP TABLE IF EXISTS `ahstest_custom_breadcrumbs_paths`;
CREATE TABLE `ahstest_custom_breadcrumbs_paths` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `titles` varchar(255) NOT NULL DEFAULT '',
  `paths` varchar(255) DEFAULT NULL,
  `visibility_php` mediumtext NOT NULL,
  `specific_path` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  KEY `language` (`language`),
  KEY `path_language` (`specific_path`,`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `custom_breadcrumbs_paths`
--

INSERT INTO `custom_breadcrumbs_paths` (`bid`, `name`, `titles`, `paths`, `visibility_php`, `specific_path`, `language`) VALUES
(1, '<none>', '<none>', '', '', '<none>', '');

-- --------------------------------------------------------

--
-- Table structure for table `custom_breadcrumbs_views`
--

DROP TABLE IF EXISTS `ahstest_custom_breadcrumbs_views`;
CREATE TABLE `ahstest_custom_breadcrumbs_views` (
  `bid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `titles` varchar(255) NOT NULL DEFAULT '',
  `paths` varchar(255) DEFAULT NULL,
  `visibility_php` mediumtext NOT NULL,
  `views_path` varchar(255) NOT NULL,
  `language` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  KEY `language` (`language`),
  KEY `vpath_language` (`views_path`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `custom_breadcrumbs_views`
--


-- --------------------------------------------------------

--
-- Table structure for table `date_formats`
--

DROP TABLE IF EXISTS `ahstest_date_formats`;
CREATE TABLE `ahstest_date_formats` (
  `dfid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `format` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` varchar(200) NOT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`dfid`),
  UNIQUE KEY `formats` (`format`,`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `date_formats`
--

INSERT INTO `date_formats` (`dfid`, `format`, `type`, `locked`) VALUES
(1, 'Y-m-d H:i', 'short', 1),
(2, 'm/d/Y - H:i', 'short', 1),
(3, 'd/m/Y - H:i', 'short', 1),
(4, 'Y/m/d - H:i', 'short', 1),
(5, 'd.m.Y - H:i', 'short', 1),
(6, 'm/d/Y - g:ia', 'short', 1),
(7, 'd/m/Y - g:ia', 'short', 1),
(8, 'Y/m/d - g:ia', 'short', 1),
(9, 'M j Y - H:i', 'short', 1),
(10, 'j M Y - H:i', 'short', 1),
(11, 'Y M j - H:i', 'short', 1),
(12, 'M j Y - g:ia', 'short', 1),
(13, 'j M Y - g:ia', 'short', 1),
(14, 'Y M j - g:ia', 'short', 1),
(15, 'D, Y-m-d H:i', 'medium', 1),
(16, 'D, m/d/Y - H:i', 'medium', 1),
(17, 'D, d/m/Y - H:i', 'medium', 1),
(18, 'D, Y/m/d - H:i', 'medium', 1),
(19, 'F j, Y - H:i', 'medium', 1),
(20, 'j F, Y - H:i', 'medium', 1),
(21, 'Y, F j - H:i', 'medium', 1),
(22, 'D, m/d/Y - g:ia', 'medium', 1),
(23, 'D, d/m/Y - g:ia', 'medium', 1),
(24, 'D, Y/m/d - g:ia', 'medium', 1),
(25, 'F j, Y - g:ia', 'medium', 1),
(26, 'j F Y - g:ia', 'medium', 1),
(27, 'Y, F j - g:ia', 'medium', 1),
(28, 'j. F Y - G:i', 'medium', 1),
(29, 'l, F j, Y - H:i', 'long', 1),
(30, 'l, j F, Y - H:i', 'long', 1),
(31, 'l, Y,  F j - H:i', 'long', 1),
(32, 'l, F j, Y - g:ia', 'long', 1),
(33, 'l, j F Y - g:ia', 'long', 1),
(34, 'l, Y,  F j - g:ia', 'long', 1),
(35, 'l, j. F Y - G:i', 'long', 1);

-- --------------------------------------------------------

--
-- Table structure for table `date_format_locale`
--

DROP TABLE IF EXISTS `ahstest_date_format_locale`;
CREATE TABLE `ahstest_date_format_locale` (
  `format` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` varchar(200) NOT NULL,
  `language` varchar(12) NOT NULL,
  PRIMARY KEY (`type`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `date_format_locale`
--


-- --------------------------------------------------------

--
-- Table structure for table `date_format_types`
--

DROP TABLE IF EXISTS `ahstest_date_format_types`;
CREATE TABLE `ahstest_date_format_types` (
  `type` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `date_format_types`
--

INSERT INTO `date_format_types` (`type`, `title`, `locked`) VALUES
('long', 'Long', 1),
('medium', 'Medium', 1),
('short', 'Short', 1);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `ahstest_files`;
CREATE TABLE `ahstest_files` (
  `fid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `filemime` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `uid` (`uid`),
  KEY `status` (`status`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=120 ;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`fid`, `uid`, `filename`, `filepath`, `filemime`, `filesize`, `status`, `timestamp`) VALUES
(1, 1, 'icon-1.gif', 'sites/default/files/gmaps/icons/icon-1.gif', 'image/gif', 673, 1, 1276462233),
(2, 1, 'icon-2.png', 'sites/default/files/gmaps/icons/icon-2.png', 'image/png', 145, 1, 1276462233),
(3, 1, 'icon-3.png', 'sites/default/files/gmaps/icons/icon-3.png', 'image/png', 144, 1, 1276462233),
(4, 1, 'icon-4.png', 'sites/default/files/gmaps/icons/icon-4.png', 'image/png', 244, 1, 1276462233),
(5, 1, 'icon-5.png', 'sites/default/files/gmaps/icons/icon-5.png', 'image/png', 244, 1, 1276462233),
(6, 1, 'icon-6.png', 'sites/default/files/gmaps/icons/icon-6.png', 'image/png', 284, 1, 1276462233),
(7, 1, 'icon-7.png', 'sites/default/files/gmaps/icons/icon-7.png', 'image/png', 284, 1, 1276462233),
(8, 1, 'icon-8.png', 'sites/default/files/gmaps/icons/icon-8.png', 'image/png', 384, 1, 1276462233),
(9, 1, 'icon-9.png', 'sites/default/files/gmaps/icons/icon-9.png', 'image/png', 384, 1, 1276462233),
(10, 1, 'icon-10.png', 'sites/default/files/gmaps/icons/icon-10.png', 'image/png', 512, 1, 1276462233),
(11, 1, 'icon-11.png', 'sites/default/files/gmaps/icons/icon-11.png', 'image/png', 512, 1, 1276462233),
(12, 1, 'icon-12.png', 'sites/default/files/gmaps/icons/icon-12.png', 'image/png', 993, 1, 1276462233),
(13, 1, 'transparent-13.png', 'sites/default/files/gmaps/icons/transparent-13.png', 'image/png', 148, 1, 1276462233),
(14, 1, 'icon-14.png', 'sites/default/files/gmaps/icons/icon-14.png', 'image/png', 1121, 1, 1276462233),
(15, 1, 'transparent-15.png', 'sites/default/files/gmaps/icons/transparent-15.png', 'image/png', 148, 1, 1276462233),
(16, 1, 'icon-16.png', 'sites/default/files/gmaps/icons/icon-16.png', 'image/png', 1231, 1, 1276462233),
(17, 1, 'transparent-17.png', 'sites/default/files/gmaps/icons/transparent-17.png', 'image/png', 148, 1, 1276462233),
(18, 1, 'icon-18.png', 'sites/default/files/gmaps/icons/icon-18.png', 'image/png', 1151, 1, 1276462233),
(19, 1, 'transparent-19.png', 'sites/default/files/gmaps/icons/transparent-19.png', 'image/png', 148, 1, 1276462233),
(20, 1, 'icon-20.png', 'sites/default/files/gmaps/icons/icon-20.png', 'image/png', 1007, 1, 1276462233),
(21, 1, 'transparent-21.png', 'sites/default/files/gmaps/icons/transparent-21.png', 'image/png', 148, 1, 1276462233),
(22, 1, 'icon-22.png', 'sites/default/files/gmaps/icons/icon-22.png', 'image/png', 1049, 1, 1276462233),
(23, 1, 'transparent-23.png', 'sites/default/files/gmaps/icons/transparent-23.png', 'image/png', 148, 1, 1276462233),
(24, 1, 'icon-24.png', 'sites/default/files/gmaps/icons/icon-24.png', 'image/png', 1224, 1, 1276462233),
(25, 1, 'transparent-25.png', 'sites/default/files/gmaps/icons/transparent-25.png', 'image/png', 148, 1, 1276462233),
(26, 1, 'icon-26.png', 'sites/default/files/gmaps/icons/icon-26.png', 'image/png', 1268, 1, 1276462233),
(27, 1, 'transparent-27.png', 'sites/default/files/gmaps/icons/transparent-27.png', 'image/png', 148, 1, 1276462233),
(28, 1, 'icon-28.png', 'sites/default/files/gmaps/icons/icon-28.png', 'image/png', 1187, 1, 1276462233),
(29, 1, 'transparent-29.png', 'sites/default/files/gmaps/icons/transparent-29.png', 'image/png', 148, 1, 1276462233),
(30, 1, 'icon-30.png', 'sites/default/files/gmaps/icons/icon-30.png', 'image/png', 1216, 1, 1276462233),
(31, 1, 'transparent-31.png', 'sites/default/files/gmaps/icons/transparent-31.png', 'image/png', 148, 1, 1276462233),
(32, 1, 'icon-32.png', 'sites/default/files/gmaps/icons/icon-32.png', 'image/png', 1224, 1, 1276462233),
(33, 1, 'transparent-33.png', 'sites/default/files/gmaps/icons/transparent-33.png', 'image/png', 148, 1, 1276462233),
(34, 1, 'icon-34.png', 'sites/default/files/gmaps/icons/icon-34.png', 'image/png', 1155, 1, 1276462233),
(35, 1, 'transparent-35.png', 'sites/default/files/gmaps/icons/transparent-35.png', 'image/png', 148, 1, 1276462233),
(36, 1, 'icon-36.png', 'sites/default/files/gmaps/icons/icon-36.png', 'image/png', 1042, 1, 1276462233),
(37, 1, 'transparent-37.png', 'sites/default/files/gmaps/icons/transparent-37.png', 'image/png', 148, 1, 1276462233),
(38, 1, 'icon-38.png', 'sites/default/files/gmaps/icons/icon-38.png', 'image/png', 1085, 1, 1276462233),
(39, 1, 'transparent-39.png', 'sites/default/files/gmaps/icons/transparent-39.png', 'image/png', 148, 1, 1276462233),
(40, 1, 'icon-40.png', 'sites/default/files/gmaps/icons/icon-40.png', 'image/png', 1154, 1, 1276462233),
(41, 1, 'transparent-41.png', 'sites/default/files/gmaps/icons/transparent-41.png', 'image/png', 148, 1, 1276462233),
(42, 1, 'icon-42.png', 'sites/default/files/gmaps/icons/icon-42.png', 'image/png', 1131, 1, 1276462233),
(43, 1, 'transparent-43.png', 'sites/default/files/gmaps/icons/transparent-43.png', 'image/png', 148, 1, 1276462233),
(44, 1, 'icon-44.png', 'sites/default/files/gmaps/icons/icon-44.png', 'image/png', 3003, 1, 1276462233),
(45, 1, 'icon-45.png', 'sites/default/files/gmaps/icons/icon-45.png', 'image/png', 3259, 1, 1276462234),
(46, 1, 'icon-46.png', 'sites/default/files/gmaps/icons/icon-46.png', 'image/png', 3956, 1, 1276462234),
(47, 1, 'icon-47.png', 'sites/default/files/gmaps/icons/icon-47.png', 'image/png', 3956, 1, 1276462234),
(48, 1, 'icon-48.png', 'sites/default/files/gmaps/icons/icon-48.png', 'image/png', 3956, 1, 1276462234),
(49, 1, 'icon-49.png', 'sites/default/files/gmaps/icons/icon-49.png', 'image/png', 1030, 1, 1276462234),
(50, 1, 'icon-50.png', 'sites/default/files/gmaps/icons/icon-50.png', 'image/png', 1512, 1, 1276462234),
(51, 1, 'icon-51.png', 'sites/default/files/gmaps/icons/icon-51.png', 'image/png', 2202, 1, 1276462234),
(52, 1, 'icon-52.png', 'sites/default/files/gmaps/icons/icon-52.png', 'image/png', 1448, 1, 1276462234),
(53, 1, 'icon-53.png', 'sites/default/files/gmaps/icons/icon-53.png', 'image/png', 2161, 1, 1276462234),
(54, 1, 'icon-54.png', 'sites/default/files/gmaps/icons/icon-54.png', 'image/png', 2999, 1, 1276462234),
(55, 1, 'icon-55.png', 'sites/default/files/gmaps/icons/icon-55.png', 'image/png', 1392, 1, 1276462234),
(56, 1, 'icon-56.png', 'sites/default/files/gmaps/icons/icon-56.png', 'image/png', 2076, 1, 1276462234),
(57, 1, 'icon-57.png', 'sites/default/files/gmaps/icons/icon-57.png', 'image/png', 2928, 1, 1276462234),
(79, 1, 'Granger.jpg', 'c:/wamp/tmp/Granger.jpg', 'image/jpeg', 83816, 0, 1295729145),
(73, 1, 'sampleof1984survey-edit02-juststreet.csv', 'sites/default/files/imports/sampleof1984survey-edit02-juststreet.csv', 'text/csv', 54149, 1, 1294949439),
(71, 1, 'sampleof1984survey.csv', 'sites/default/files/imports/sampleof1984survey.csv', 'text/csv', 289760, 1, 1294864842),
(72, 1, 'sampleof1984survey-edit01.csv', 'sites/default/files/imports/sampleof1984survey-edit01.csv', 'text/csv', 341367, 1, 1294866257),
(117, 1, 'buddington.jpg', 'c:/wamp/tmp/buddington.jpg', 'image/jpeg', 66251, 0, 1297038321),
(76, 1, 'ney.jpg', 'c:/wamp/tmp/ney.jpg', 'image/jpeg', 227064, 0, 1295729124),
(90, 3, 'Granger.jpg', 'c:/wamp/tmp/Granger.jpg', 'image/jpeg', 83816, 0, 1296059686),
(82, 1, 'HobbyStateOfficeBuilding.JPG', 'c:/wamp/tmp/HobbyStateOfficeBuilding.JPG', 'image/jpeg', 64550, 0, 1295729957),
(86, 3, 'Granger.jpg', 'c:/wamp/tmp/Granger.jpg', 'image/jpeg', 83816, 0, 1296059320),
(93, 1, 'ney.jpg', 'c:/wamp/tmp/ney.jpg', 'image/jpeg', 227064, 0, 1296584914),
(96, 3, 'HobbyStateOfficeBuilding.JPG', 'c:/wamp/tmp/HobbyStateOfficeBuilding.JPG', 'image/jpeg', 64550, 0, 1296585955),
(99, 1, 'buddington.jpg', 'c:/wamp/tmp/buddington.jpg', 'image/jpeg', 66251, 0, 1296586116),
(102, 1, 'buddington.jpg', 'c:/wamp/tmp/buddington.jpg', 'image/jpeg', 66251, 0, 1296586161),
(105, 3, 'buddington.jpg', 'c:/wamp/tmp/buddington.jpg', 'image/jpeg', 66251, 0, 1296586206),
(108, 1, 'HobbyStateOfficeBuilding.JPG', 'c:/wamp/tmp/HobbyStateOfficeBuilding.JPG', 'image/jpeg', 64550, 0, 1296587087),
(111, 1, 'HobbyStateOfficeBuilding.JPG', 'c:/wamp/tmp/HobbyStateOfficeBuilding.JPG', 'image/jpeg', 64550, 0, 1296587171),
(114, 3, 'Granger.jpg', 'c:/wamp/tmp/Granger.jpg', 'image/jpeg', 83816, 0, 1296666955);

-- --------------------------------------------------------

--
-- Table structure for table `filters`
--

DROP TABLE IF EXISTS `ahstest_filters`;
CREATE TABLE `ahstest_filters` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `format` int(11) NOT NULL DEFAULT '0',
  `module` varchar(64) NOT NULL DEFAULT '',
  `delta` tinyint(4) NOT NULL DEFAULT '0',
  `weight` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `fmd` (`format`,`module`,`delta`),
  KEY `list` (`format`,`weight`,`module`,`delta`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `filters`
--

INSERT INTO `filters` (`fid`, `format`, `module`, `delta`, `weight`) VALUES
(1, 1, 'filter', 2, 0),
(2, 1, 'filter', 0, 1),
(3, 1, 'filter', 1, 2),
(4, 1, 'filter', 3, 10),
(5, 2, 'filter', 2, 0),
(6, 2, 'filter', 1, 1),
(7, 2, 'filter', 3, 10),
(8, 3, 'php', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `filter_formats`
--

DROP TABLE IF EXISTS `ahstest_filter_formats`;
CREATE TABLE `ahstest_filter_formats` (
  `format` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `roles` varchar(255) NOT NULL DEFAULT '',
  `cache` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`format`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `filter_formats`
--

INSERT INTO `filter_formats` (`format`, `name`, `roles`, `cache`) VALUES
(1, 'Filtered HTML', ',1,2,', 1),
(2, 'Full HTML', '', 1),
(3, 'PHP code', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `flood`
--

DROP TABLE IF EXISTS `ahstest_flood`;
CREATE TABLE `ahstest_flood` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `event` varchar(64) NOT NULL DEFAULT '',
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fid`),
  KEY `allow` (`event`,`hostname`,`timestamp`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=146 ;

--
-- Dumping data for table `flood`
--

INSERT INTO `flood` (`fid`, `event`, `hostname`, `timestamp`) VALUES
(1, 'zen_rebuild_registry_warning', '127.0.0.1', 1297029851),
(2, 'zen_rebuild_registry_warning', '127.0.0.1', 1297029887),
(3, 'zen_rebuild_registry_warning', '127.0.0.1', 1297029890),
(4, 'zen_rebuild_registry_warning', '127.0.0.1', 1297033531),
(5, 'zen_rebuild_registry_warning', '127.0.0.1', 1297033534),
(6, 'zen_rebuild_registry_warning', '127.0.0.1', 1297033667),
(7, 'zen_rebuild_registry_warning', '127.0.0.1', 1297033811),
(8, 'zen_rebuild_registry_warning', '127.0.0.1', 1297033859),
(9, 'zen_rebuild_registry_warning', '127.0.0.1', 1297033871),
(10, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034111),
(11, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034123),
(12, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034260),
(13, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034285),
(14, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034398),
(15, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034422),
(16, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034427),
(17, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034434),
(18, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034441),
(19, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034474),
(20, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034477),
(21, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034549),
(22, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034822),
(23, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034825),
(24, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034839),
(25, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034911),
(26, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034912),
(27, 'zen_rebuild_registry_warning', '127.0.0.1', 1297034993),
(28, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035005),
(29, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035006),
(30, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035027),
(31, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035028),
(32, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035044),
(33, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035044),
(34, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035050),
(35, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035051),
(36, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035116),
(37, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035120),
(38, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035123),
(39, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035124),
(40, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035163),
(41, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035256),
(42, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035270),
(43, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035271),
(44, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035587),
(45, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035634),
(46, 'zen_rebuild_registry_warning', '127.0.0.1', 1297035679),
(47, 'zen_rebuild_registry_warning', '127.0.0.1', 1297036964),
(48, 'zen_rebuild_registry_warning', '127.0.0.1', 1297036986),
(49, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037187),
(50, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037196),
(51, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037196),
(52, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037202),
(53, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037203),
(54, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037212),
(55, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037213),
(56, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037226),
(57, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037227),
(58, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037231),
(59, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037235),
(60, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037262),
(61, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037296),
(62, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037316),
(63, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037327),
(64, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037328),
(65, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037831),
(66, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037844),
(67, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037921),
(68, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037922),
(69, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037965),
(70, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037971),
(71, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037981),
(72, 'zen_rebuild_registry_warning', '127.0.0.1', 1297037981),
(73, 'zen_rebuild_registry_warning', '127.0.0.1', 1297038016),
(74, 'zen_rebuild_registry_warning', '127.0.0.1', 1297038036),
(75, 'zen_rebuild_registry_warning', '127.0.0.1', 1297038037),
(76, 'zen_rebuild_registry_warning', '127.0.0.1', 1297038062),
(77, 'zen_rebuild_registry_warning', '127.0.0.1', 1297038066),
(78, 'zen_rebuild_registry_warning', '127.0.0.1', 1297038085),
(79, 'zen_rebuild_registry_warning', '127.0.0.1', 1297038085),
(80, 'zen_rebuild_registry_warning', '127.0.0.1', 1297038357),
(81, 'zen_rebuild_registry_warning', '127.0.0.1', 1297186850),
(82, 'zen_rebuild_registry_warning', '127.0.0.1', 1297186890),
(83, 'zen_rebuild_registry_warning', '127.0.0.1', 1297186912),
(84, 'zen_rebuild_registry_warning', '127.0.0.1', 1297187962),
(85, 'zen_rebuild_registry_warning', '127.0.0.1', 1297187968),
(86, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188040),
(87, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188072),
(88, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188781),
(89, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188804),
(90, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188804),
(91, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188826),
(92, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188828),
(93, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188876),
(94, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188889),
(95, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188889),
(96, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188906),
(97, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188915),
(98, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188980),
(99, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188981),
(100, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188987),
(101, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188988),
(102, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188994),
(103, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188995),
(104, 'zen_rebuild_registry_warning', '127.0.0.1', 1297188999),
(105, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189000),
(106, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189008),
(107, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189009),
(108, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189017),
(109, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189017),
(110, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189022),
(111, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189023),
(112, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189030),
(113, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189031),
(114, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189035),
(115, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189036),
(116, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189046),
(117, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189047),
(118, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189061),
(119, 'zen_rebuild_registry_warning', '127.0.0.1', 1297189061),
(120, 'zen_rebuild_registry_warning', '127.0.0.1', 1297190528),
(121, 'zen_rebuild_registry_warning', '127.0.0.1', 1297190603),
(122, 'zen_rebuild_registry_warning', '127.0.0.1', 1297190749),
(123, 'zen_rebuild_registry_warning', '127.0.0.1', 1297190788),
(124, 'zen_rebuild_registry_warning', '127.0.0.1', 1297190807),
(125, 'zen_rebuild_registry_warning', '127.0.0.1', 1297191048),
(126, 'zen_rebuild_registry_warning', '127.0.0.1', 1297191054),
(127, 'zen_rebuild_registry_warning', '127.0.0.1', 1297191060),
(128, 'zen_rebuild_registry_warning', '127.0.0.1', 1297191067),
(129, 'zen_rebuild_registry_warning', '127.0.0.1', 1297191067),
(130, 'zen_rebuild_registry_warning', '127.0.0.1', 1297204039),
(131, 'zen_rebuild_registry_warning', '127.0.0.1', 1297207456),
(132, 'zen_rebuild_registry_warning', '127.0.0.1', 1297221818),
(133, 'zen_rebuild_registry_warning', '127.0.0.1', 1297221826),
(134, 'zen_rebuild_registry_warning', '127.0.0.1', 1297221840),
(135, 'zen_rebuild_registry_warning', '127.0.0.1', 1297221846),
(136, 'zen_rebuild_registry_warning', '127.0.0.1', 1297221854),
(137, 'zen_rebuild_registry_warning', '127.0.0.1', 1297221858),
(138, 'zen_rebuild_registry_warning', '127.0.0.1', 1297221862),
(139, 'zen_rebuild_registry_warning', '127.0.0.1', 1297221867),
(140, 'zen_rebuild_registry_warning', '127.0.0.1', 1297221884),
(141, 'zen_rebuild_registry_warning', '127.0.0.1', 1297221888),
(142, 'zen_rebuild_registry_warning', '127.0.0.1', 1297221909),
(143, 'zen_rebuild_registry_warning', '127.0.0.1', 1297221911),
(144, 'zen_rebuild_registry_warning', '127.0.0.1', 1297224151),
(145, 'zen_rebuild_registry_warning', '127.0.0.1', 1297224155);
