-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 01, 2023 at 10:35 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `hesk_attachments`
--

CREATE TABLE `hesk_attachments` (
  `att_id` mediumint(8) UNSIGNED NOT NULL,
  `ticket_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `saved_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hesk_attachments`
--

INSERT INTO `hesk_attachments` (`att_id`, `ticket_id`, `saved_name`, `real_name`, `size`, `type`) VALUES
(1, 'PU6-5H8-UTAR', 'PU6-5H8-UTAR_1cf942f4a7fefaff9605f9da0b6451fb.jpg', 'IMG-20230202-WA0042.jpg', 96300, '0'),
(2, 'W4N-8AD-3494', 'W4N-8AD-3494_07bd368ddbe7bdd7ac18f9487465006e.png', 'Flag.PNG', 19364, '0');

-- --------------------------------------------------------

--
-- Table structure for table `hesk_auth_tokens`
--

CREATE TABLE `hesk_auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` char(12) DEFAULT NULL,
  `token` char(64) DEFAULT NULL,
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expires` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_banned_emails`
--

CREATE TABLE `hesk_banned_emails` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `banned_by` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_banned_ips`
--

CREATE TABLE `hesk_banned_ips` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `ip_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ip_display` varchar(100) NOT NULL,
  `banned_by` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_categories`
--

CREATE TABLE `hesk_categories` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cat_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `autoassign` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `autoassign_config` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `priority` enum('0','1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3',
  `default_due_date_amount` int(11) DEFAULT NULL,
  `default_due_date_unit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hesk_categories`
--

INSERT INTO `hesk_categories` (`id`, `name`, `cat_order`, `autoassign`, `autoassign_config`, `type`, `priority`, `default_due_date_amount`, `default_due_date_unit`) VALUES
(1, 'General', 10, '1', NULL, '0', '3', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hesk_custom_fields`
--

CREATE TABLE `hesk_custom_fields` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `use` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `place` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `req` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `category` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `value` text COLLATE utf8_unicode_ci,
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '10'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hesk_custom_fields`
--

INSERT INTO `hesk_custom_fields` (`id`, `use`, `place`, `type`, `req`, `category`, `name`, `value`, `order`) VALUES
(1, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(2, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(3, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(4, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(5, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(6, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(7, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(8, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(9, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(10, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(11, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(12, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(13, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(14, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(15, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(16, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(17, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(18, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(19, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(20, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(21, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(22, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(23, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(24, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(25, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(26, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(27, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(28, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(29, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(30, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(31, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(32, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(33, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(34, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(35, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(36, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(37, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(38, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(39, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(40, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(41, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(42, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(43, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(44, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(45, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(46, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(47, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(48, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(49, '0', '0', 'text', '0', NULL, '', NULL, 1000),
(50, '0', '0', 'text', '0', NULL, '', NULL, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `hesk_custom_statuses`
--

CREATE TABLE `hesk_custom_statuses` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `can_customers_change` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '10'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_kb_articles`
--

CREATE TABLE `hesk_kb_articles` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` smallint(5) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `keywords` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `rating` float NOT NULL DEFAULT '0',
  `votes` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `views` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `type` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `html` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `sticky` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `art_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `history` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `attachments` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hesk_kb_articles`
--

INSERT INTO `hesk_kb_articles` (`id`, `catid`, `dt`, `author`, `subject`, `content`, `keywords`, `rating`, `votes`, `views`, `type`, `html`, `sticky`, `art_order`, `history`, `attachments`) VALUES
(1, 1, '2023-02-13 17:55:45', 1, 'How to Install VPN', '<p>Testing ....</p>', '', 0, 0, 8, '0', '1', '0', 10, '<li class=\"smaller\">2023-02-13 20:55:44 | submitted by Ronald Omondi (admin)</li>', '');

-- --------------------------------------------------------

--
-- Table structure for table `hesk_kb_attachments`
--

CREATE TABLE `hesk_kb_attachments` (
  `att_id` mediumint(8) UNSIGNED NOT NULL,
  `saved_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_kb_categories`
--

CREATE TABLE `hesk_kb_categories` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent` smallint(5) UNSIGNED NOT NULL,
  `articles` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `articles_private` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `articles_draft` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cat_order` smallint(5) UNSIGNED NOT NULL,
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hesk_kb_categories`
--

INSERT INTO `hesk_kb_categories` (`id`, `name`, `parent`, `articles`, `articles_private`, `articles_draft`, `cat_order`, `type`) VALUES
(1, 'Knowledgebase', 0, 1, 0, 0, 10, '0');

-- --------------------------------------------------------

--
-- Table structure for table `hesk_logins`
--

CREATE TABLE `hesk_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `number` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `last_attempt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_log_overdue`
--

CREATE TABLE `hesk_log_overdue` (
  `id` int(10) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ticket` mediumint(8) UNSIGNED NOT NULL,
  `category` smallint(5) UNSIGNED NOT NULL,
  `priority` enum('0','1','2','3') COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `owner` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `due_date` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00',
  `comments` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_mail`
--

CREATE TABLE `hesk_mail` (
  `id` int(10) UNSIGNED NOT NULL,
  `from` smallint(5) UNSIGNED NOT NULL,
  `to` smallint(5) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `deletedby` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hesk_mail`
--

INSERT INTO `hesk_mail` (`id`, `from`, `to`, `subject`, `message`, `dt`, `read`, `deletedby`) VALUES
(1, 9999, 1, 'Hesk quick start guide', '</p><div style=\"text-align:justify; padding-left: 10px; padding-right: 10px;\">\n\n<h2 style=\"padding-left:0px\">Welcome to Hesk, an excellent tool for improving your customer support!</h2>\n\n<h3>Below is a short guide to help you get started.</h3>\n\n&nbsp;\n\n<div class=\"main__content notice-flash \">\n<div class=\"notification orange\">\nAn up-to-date and expanded guide is available at <a href=\"https://www.hesk.com/knowledgebase/?article=109\" target=\"_blank\">Hesk online Quick Start Guide</a>.</div>\n</div>\n\n&nbsp;\n\n<h3>&raquo; Step #1: Set up your profile</h3>\n\n<ol>\n<li>go to <a href=\"profile.php\">Profile</a>,</li>\n<li>set your name and email address.</li>\n</ol>\n\n&nbsp;\n\n<h3>&raquo; Step #2: Configure Hesk</h3>\n\n<ol>\n<li>go to <a href=\"admin_settings_general.php\">Settings</a>,</li>\n<li>for a quick start, modify these settings on the \"General\" tab:<br><br>\n<b>Website title</b> - enter the title of your main website (not your help desk),<br>\n<b>Website URL</b> - enter the URL of your main website,<br>\n<b>Webmaster email</b> - enter an alternative email address people can contact in case your Hesk database is down<br>&nbsp;\n</li>\n<li>you can come back to the settings page later and explore all the options. To view details about a setting, click the [?]</li>\n</ol>\n\n&nbsp;\n\n<h3>&raquo; Step #3: Add support categories</h3>\n\n<p>Go to <a href=\"manage_categories.php\">Categories</a> to add support ticket categories.</p>\n<p>You cannot delete the default category, but you can rename it.</p>\n\n&nbsp;\n\n<h3>&raquo; Step #4: Add your support team members</h3>\n\n<p>Go to <a href=\"manage_users.php\">Team</a> to create new support staff accounts.</p>\n<p>You can use two user types in Hesk:</p>\n<ul>\n<li><b>Administrators</b> who have full access to all Hesk features</li>\n<li><b>Staff</b> who you can restrict access to categories and features</li>\n</ul>\n\n&nbsp;\n\n<h3>&raquo; Step #5: Useful tools</h3>\n\n<p>You can do a lot in the <a href=\"banned_emails.php\">Tools</a> section, for example:</p>\n<ul>\n<li>create custom ticket statuses,</li>\n<li>add custom input fields to the &quot;Submit a ticket&quot; form,</li>\n<li>make public announcements (Service messages),</li>\n<li>modify email templates,</li>\n<li>ban disruptive customers,</li>\n<li>and more.</li>\n</ul>\n\n&nbsp;\n\n<h3>&raquo; Step #6: Create a Knowledgebase</h3>\n\n<p>A Knowledgebase is a collection of articles, guides, and answers to frequently asked questions, usually organized in multiple categories.</p>\n<p>A clear and comprehensive knowledgebase can drastically reduce the number of support tickets you receive, thereby saving you significant time and effort in the long run.</p>\n<p>Go to <a href=\"manage_knowledgebase.php\">Knowledgebase</a> to create categories and write articles for your knowledgebase.</p>\n\n&nbsp;\n\n<h3>&raquo; Step #7: Don\'t repeat yourself</h3>\n\n<p>Sometimes several support tickets address the same issues - allowing you to use pre-written (&quot;canned&quot;) responses.</p>\n<p>To compose canned responses, go to the <a href=\"manage_canned.php\">Templates &gt; Responses</a> page.</p>\n<p>Similarly, you can create <a href=\"manage_ticket_templates.php\">Templates &gt; Tickets</a> if your staff will be submitting support tickets on the client\'s behalf, for example, from telephone conversations.</p>\n\n&nbsp;\n\n<h3>&raquo; Step #8: Secure your help desk</h3>\n\n<p>Make sure your help desk is as secure as possible by going through the <a href=\"https://www.hesk.com/knowledgebase/?article=82\">Hesk security checklist</a>.</p>\n\n&nbsp;\n\n<h3>&raquo; Step #9: Stay updated</h3>\n\n<p>Hesk regularly receives improvements and bug fixes; make sure you know about them!</p>\n<ul>\n<li>for fast notifications, <a href=\"https://twitter.com/HESKdotCOM\">follow us on <b>Twitter</b></a></li>\n<li>for email notifications, subscribe to our low-volume zero-spam <a href=\"https://www.hesk.com/newsletter.php\">newsletter</a></li>\n</ul>\n\n&nbsp;\n\n<h3>&raquo; Step #10: Look professional</h3>\n\n<p>To not only support Hesk development but also look more professional, <a href=\"https://www.hesk.com/get/hesk3-license\">remove &quot;Powered by&quot; links</a> from your help desk.</p>\n\n&nbsp;\n\n<h3>&raquo; Step #11: Too much hassle? Switch to Hesk Cloud for the ultimate experience</h3>\n\n<p>Experience the best of Hesk by moving your help desk into the Hesk Cloud:</p>\n<ul>\n<li>exclusive advanced modules,</li>\n<li>automated updates,</li>\n<li>free migration of your existing Hesk tickets and settings,</li>\n<li>we take care of maintenance, server setup and optimization, backups, and more!</li>\n</ul>\n\n<p>&nbsp;<br><a href=\"https://www.hesk.com/get/hesk3-cloud\" class=\"btn btn--blue-border\" style=\"text-decoration:none\">Click here to learn more about Hesk Cloud</a></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>Again, welcome to Hesk, and enjoy using it!</p>\n\n<p>Klemen Stirn<br>\nFounder<br>\n<a href=\"https://www.hesk.com\">https://www.hesk.com</a></p>\n\n<p>&nbsp;</p>\n\n</div><p>', '2023-02-13 17:46:24', '0', 9999);

-- --------------------------------------------------------

--
-- Table structure for table `hesk_mfa_backup_codes`
--

CREATE TABLE `hesk_mfa_backup_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_mfa_verification_tokens`
--

CREATE TABLE `hesk_mfa_verification_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_notes`
--

CREATE TABLE `hesk_notes` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `ticket` mediumint(8) UNSIGNED NOT NULL,
  `who` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `attachments` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_oauth_providers`
--

CREATE TABLE `hesk_oauth_providers` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `authorization_url` text NOT NULL,
  `token_url` text NOT NULL,
  `client_id` text NOT NULL,
  `client_secret` text NOT NULL,
  `scope` text NOT NULL,
  `no_val_ssl` tinyint(4) NOT NULL DEFAULT '0',
  `verified` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_oauth_tokens`
--

CREATE TABLE `hesk_oauth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `token_value` text,
  `token_type` varchar(32) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expires` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_online`
--

CREATE TABLE `hesk_online` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tmp` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_pipe_loops`
--

CREATE TABLE `hesk_pipe_loops` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hits` smallint(1) UNSIGNED NOT NULL DEFAULT '0',
  `message_hash` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_replies`
--

CREATE TABLE `hesk_replies` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `replyto` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `message_html` mediumtext COLLATE utf8_unicode_ci,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attachments` mediumtext COLLATE utf8_unicode_ci,
  `staffid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `rating` enum('1','5') COLLATE utf8_unicode_ci DEFAULT NULL,
  `read` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hesk_replies`
--

INSERT INTO `hesk_replies` (`id`, `replyto`, `name`, `message`, `message_html`, `dt`, `attachments`, `staffid`, `rating`, `read`) VALUES
(1, 1, 'Ronald Omondi', 'testing', 'testing', '2023-02-13 17:58:16', '', 1, NULL, '1'),
(2, 2, 'Ronald Omondi', 'solved', 'solved', '2023-02-21 14:36:53', '', 1, NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `hesk_reply_drafts`
--

CREATE TABLE `hesk_reply_drafts` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner` smallint(5) UNSIGNED NOT NULL,
  `ticket` mediumint(8) UNSIGNED NOT NULL,
  `message` mediumtext CHARACTER SET utf8 NOT NULL,
  `message_html` mediumtext CHARACTER SET utf8,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_reset_password`
--

CREATE TABLE `hesk_reset_password` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `user` smallint(5) UNSIGNED NOT NULL,
  `hash` char(40) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_service_messages`
--

CREATE TABLE `hesk_service_messages` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` enum('0','1','2','3','4') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `type` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_std_replies`
--

CREATE TABLE `hesk_std_replies` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `message_html` mediumtext COLLATE utf8_unicode_ci,
  `reply_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_temp_attachments`
--

CREATE TABLE `hesk_temp_attachments` (
  `att_id` mediumint(8) UNSIGNED NOT NULL,
  `unique_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `saved_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `real_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `expires_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_temp_attachments_limits`
--

CREATE TABLE `hesk_temp_attachments_limits` (
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `upload_count` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `last_upload_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_tickets`
--

CREATE TABLE `hesk_tickets` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `trackid` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `category` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `priority` enum('0','1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '3',
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `message_html` mediumtext COLLATE utf8_unicode_ci,
  `dt` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00',
  `lastchange` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `firstreply` timestamp NULL DEFAULT NULL,
  `closedat` timestamp NULL DEFAULT NULL,
  `articles` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `openedby` mediumint(8) DEFAULT '0',
  `firstreplyby` smallint(5) UNSIGNED DEFAULT NULL,
  `closedby` mediumint(8) DEFAULT NULL,
  `replies` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `staffreplies` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `owner` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `assignedby` mediumint(8) DEFAULT NULL,
  `time_worked` time NOT NULL DEFAULT '00:00:00',
  `lastreplier` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `replierid` smallint(5) UNSIGNED DEFAULT NULL,
  `archive` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `locked` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `attachments` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `merged` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `history` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom1` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom2` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom3` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom4` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom5` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom6` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom7` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom8` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom9` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom10` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom11` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom12` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom13` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom14` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom15` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom16` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom17` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom18` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom19` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom20` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom21` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom22` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom23` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom24` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom25` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom26` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom27` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom28` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom29` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom30` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom31` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom32` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom33` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom34` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom35` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom36` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom37` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom38` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom39` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom40` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom41` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom42` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom43` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom44` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom45` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom46` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom47` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom48` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom49` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `custom50` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `overdue_email_sent` tinyint(1) DEFAULT '0',
  `satisfaction_email_sent` tinyint(1) DEFAULT '0',
  `satisfaction_email_dt` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hesk_tickets`
--

INSERT INTO `hesk_tickets` (`id`, `trackid`, `name`, `email`, `category`, `priority`, `subject`, `message`, `message_html`, `dt`, `lastchange`, `firstreply`, `closedat`, `articles`, `ip`, `language`, `status`, `openedby`, `firstreplyby`, `closedby`, `replies`, `staffreplies`, `owner`, `assignedby`, `time_worked`, `lastreplier`, `replierid`, `archive`, `locked`, `attachments`, `merged`, `history`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`, `custom11`, `custom12`, `custom13`, `custom14`, `custom15`, `custom16`, `custom17`, `custom18`, `custom19`, `custom20`, `custom21`, `custom22`, `custom23`, `custom24`, `custom25`, `custom26`, `custom27`, `custom28`, `custom29`, `custom30`, `custom31`, `custom32`, `custom33`, `custom34`, `custom35`, `custom36`, `custom37`, `custom38`, `custom39`, `custom40`, `custom41`, `custom42`, `custom43`, `custom44`, `custom45`, `custom46`, `custom47`, `custom48`, `custom49`, `custom50`, `due_date`, `overdue_email_sent`, `satisfaction_email_sent`, `satisfaction_email_dt`) VALUES
(1, 'PU6-5H8-UTAR', 'Dennis Omondi', 'test@customer.com', 1, '2', 'VPN not installing', 'Find attached screenshot', 'Find attached screenshot', '2023-02-13 17:57:01', '2023-02-13 17:58:16', '2023-02-13 17:58:16', '2023-02-13 17:58:16', NULL, '127.0.0.1', NULL, 3, 0, 1, 1, 1, 1, 1, -1, '00:00:27', '1', 1, '0', '0', '1#IMG-20230202-WA0042.jpg,', '', '<li class=\"smaller\">2023-02-13 20:57:01 | submitted by Customer</li><li class=\"smaller\">2023-02-13 20:57:01 | automatically assigned to Ronald Omondi (admin)</li><li class=\"smaller\">2023-02-13 20:58:16 | status changed to Resolved by Ronald Omondi (admin)</li>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 0, NULL),
(2, 'W4N-8AD-3494', 'Dennis Omondi', 'test@customer.com', 1, '1', 'software installation', 'testing...', 'testing...', '2023-02-21 14:34:11', '2023-02-21 14:36:53', '2023-02-21 14:36:53', '2023-02-21 14:36:53', NULL, '127.0.0.1', NULL, 3, 0, 1, 1, 1, 1, 1, -1, '00:01:17', '1', 1, '0', '0', '2#Flag.PNG,', '', '<li class=\"smaller\">2023-02-21 17:34:11 | submitted by Customer</li><li class=\"smaller\">2023-02-21 17:34:11 | automatically assigned to Ronald Omondi (admin)</li><li class=\"smaller\">2023-02-21 17:36:53 | status changed to Resolved by Ronald Omondi (admin)</li>', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hesk_ticket_templates`
--

CREATE TABLE `hesk_ticket_templates` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `message_html` mediumtext COLLATE utf8_unicode_ci,
  `tpl_order` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hesk_users`
--

CREATE TABLE `hesk_users` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `user` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `isadmin` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `signature` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `afterreply` enum('0','1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `autostart` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `autoreload` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `notify_customer_new` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_customer_reply` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `show_suggested` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_new_unassigned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_new_my` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_reply_unassigned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_reply_my` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_assigned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_pm` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_note` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_overdue_unassigned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `notify_overdue_my` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `default_list` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoassign` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `heskprivileges` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ratingneg` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `ratingpos` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `rating` float NOT NULL DEFAULT '0',
  `replies` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mfa_enrollment` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `mfa_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hesk_users`
--

INSERT INTO `hesk_users` (`id`, `user`, `pass`, `isadmin`, `name`, `email`, `signature`, `language`, `categories`, `afterreply`, `autostart`, `autoreload`, `notify_customer_new`, `notify_customer_reply`, `show_suggested`, `notify_new_unassigned`, `notify_new_my`, `notify_reply_unassigned`, `notify_reply_my`, `notify_assigned`, `notify_pm`, `notify_note`, `notify_overdue_unassigned`, `notify_overdue_my`, `default_list`, `autoassign`, `heskprivileges`, `ratingneg`, `ratingpos`, `rating`, `replies`, `mfa_enrollment`, `mfa_secret`) VALUES
(1, 'admin', '$2y$10$jKFWPx.2AGvCsfEVJcu6l.ZkaXZt80OFGCyd2K15nz7ofVT/boClq', '1', 'Ronald Omondi', 'admin@example.com', '', NULL, '', '0', '1', 0, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '1', '', 0, 0, 0, 2, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hesk_attachments`
--
ALTER TABLE `hesk_attachments`
  ADD PRIMARY KEY (`att_id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `hesk_auth_tokens`
--
ALTER TABLE `hesk_auth_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hesk_banned_emails`
--
ALTER TABLE `hesk_banned_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `hesk_banned_ips`
--
ALTER TABLE `hesk_banned_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hesk_categories`
--
ALTER TABLE `hesk_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `hesk_custom_fields`
--
ALTER TABLE `hesk_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `useType` (`use`,`type`);

--
-- Indexes for table `hesk_custom_statuses`
--
ALTER TABLE `hesk_custom_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hesk_kb_articles`
--
ALTER TABLE `hesk_kb_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `sticky` (`sticky`),
  ADD KEY `type` (`type`);
ALTER TABLE `hesk_kb_articles` ADD FULLTEXT KEY `subject` (`subject`,`content`,`keywords`);

--
-- Indexes for table `hesk_kb_attachments`
--
ALTER TABLE `hesk_kb_attachments`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `hesk_kb_categories`
--
ALTER TABLE `hesk_kb_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `hesk_logins`
--
ALTER TABLE `hesk_logins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `hesk_log_overdue`
--
ALTER TABLE `hesk_log_overdue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket` (`ticket`),
  ADD KEY `category` (`category`),
  ADD KEY `priority` (`priority`),
  ADD KEY `status` (`status`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `hesk_mail`
--
ALTER TABLE `hesk_mail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from` (`from`),
  ADD KEY `to` (`to`,`read`,`deletedby`);

--
-- Indexes for table `hesk_mfa_backup_codes`
--
ALTER TABLE `hesk_mfa_backup_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hesk_mfa_verification_tokens`
--
ALTER TABLE `hesk_mfa_verification_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `verification_token` (`verification_token`);

--
-- Indexes for table `hesk_notes`
--
ALTER TABLE `hesk_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticketid` (`ticket`);

--
-- Indexes for table `hesk_oauth_providers`
--
ALTER TABLE `hesk_oauth_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hesk_oauth_tokens`
--
ALTER TABLE `hesk_oauth_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hesk_online`
--
ALTER TABLE `hesk_online`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `dt` (`dt`);

--
-- Indexes for table `hesk_pipe_loops`
--
ALTER TABLE `hesk_pipe_loops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`,`hits`);

--
-- Indexes for table `hesk_replies`
--
ALTER TABLE `hesk_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replyto` (`replyto`),
  ADD KEY `dt` (`dt`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `hesk_reply_drafts`
--
ALTER TABLE `hesk_reply_drafts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`),
  ADD KEY `ticket` (`ticket`);

--
-- Indexes for table `hesk_reset_password`
--
ALTER TABLE `hesk_reset_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `hesk_service_messages`
--
ALTER TABLE `hesk_service_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `hesk_std_replies`
--
ALTER TABLE `hesk_std_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hesk_temp_attachments`
--
ALTER TABLE `hesk_temp_attachments`
  ADD PRIMARY KEY (`att_id`);

--
-- Indexes for table `hesk_temp_attachments_limits`
--
ALTER TABLE `hesk_temp_attachments_limits`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `hesk_tickets`
--
ALTER TABLE `hesk_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trackid` (`trackid`),
  ADD KEY `archive` (`archive`),
  ADD KEY `categories` (`category`),
  ADD KEY `statuses` (`status`),
  ADD KEY `owner` (`owner`),
  ADD KEY `openedby` (`openedby`,`firstreplyby`,`closedby`),
  ADD KEY `dt` (`dt`);

--
-- Indexes for table `hesk_ticket_templates`
--
ALTER TABLE `hesk_ticket_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hesk_users`
--
ALTER TABLE `hesk_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autoassign` (`autoassign`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hesk_attachments`
--
ALTER TABLE `hesk_attachments`
  MODIFY `att_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hesk_auth_tokens`
--
ALTER TABLE `hesk_auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_banned_emails`
--
ALTER TABLE `hesk_banned_emails`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_banned_ips`
--
ALTER TABLE `hesk_banned_ips`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_categories`
--
ALTER TABLE `hesk_categories`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hesk_kb_articles`
--
ALTER TABLE `hesk_kb_articles`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hesk_kb_attachments`
--
ALTER TABLE `hesk_kb_attachments`
  MODIFY `att_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_kb_categories`
--
ALTER TABLE `hesk_kb_categories`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hesk_logins`
--
ALTER TABLE `hesk_logins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hesk_log_overdue`
--
ALTER TABLE `hesk_log_overdue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_mail`
--
ALTER TABLE `hesk_mail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hesk_mfa_backup_codes`
--
ALTER TABLE `hesk_mfa_backup_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_mfa_verification_tokens`
--
ALTER TABLE `hesk_mfa_verification_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_notes`
--
ALTER TABLE `hesk_notes`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_oauth_providers`
--
ALTER TABLE `hesk_oauth_providers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_oauth_tokens`
--
ALTER TABLE `hesk_oauth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_online`
--
ALTER TABLE `hesk_online`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_pipe_loops`
--
ALTER TABLE `hesk_pipe_loops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_replies`
--
ALTER TABLE `hesk_replies`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hesk_reply_drafts`
--
ALTER TABLE `hesk_reply_drafts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_reset_password`
--
ALTER TABLE `hesk_reset_password`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_service_messages`
--
ALTER TABLE `hesk_service_messages`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_std_replies`
--
ALTER TABLE `hesk_std_replies`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_temp_attachments`
--
ALTER TABLE `hesk_temp_attachments`
  MODIFY `att_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hesk_tickets`
--
ALTER TABLE `hesk_tickets`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hesk_ticket_templates`
--
ALTER TABLE `hesk_ticket_templates`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hesk_users`
--
ALTER TABLE `hesk_users`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
