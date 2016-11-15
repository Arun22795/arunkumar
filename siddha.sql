-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2016 at 11:16 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `siddha`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_users`
--

CREATE TABLE IF NOT EXISTS `app_users` (
  `app_user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `device_token` varchar(255) DEFAULT NULL,
  `device_os` enum('Android','iOS','Black Berry','Windows') DEFAULT NULL,
  `device_uuid` varchar(32) DEFAULT NULL,
  `device_version` varchar(16) DEFAULT NULL,
  `device_model` varchar(16) DEFAULT NULL,
  `app_version` varchar(8) DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL,
  PRIMARY KEY (`app_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1224 ;

--
-- Dumping data for table `app_users`
--

INSERT INTO `app_users` (`app_user_id`, `client_id`, `device_token`, `device_os`, `device_uuid`, `device_version`, `device_model`, `app_version`, `last_visit`) VALUES
(111, 1, 'warwa', 'Android', '12', '2.1', 'new', 'eweaw', '0000-00-00 00:00:00'),
(1223, 1, 'WER', 'Android', 'R4', 'WERW', 'RWEERW', 'RWEREW', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE IF NOT EXISTS `branches` (
  `branch_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `branch_client_id` bigint(20) DEFAULT NULL,
  `branch_client_code` varchar(8) DEFAULT NULL,
  `branch_priority` tinyint(4) DEFAULT NULL,
  `branch_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `branches`
--


-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `client_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_code` varchar(8) DEFAULT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(16) NOT NULL,
  `business_type` enum('Shop','Pharamacy') NOT NULL,
  `business_name` varchar(64) NOT NULL,
  `door_number` varchar(64) NOT NULL,
  `address_line_1` varchar(128) DEFAULT NULL,
  `address_line_2` varchar(128) DEFAULT NULL,
  `location` varchar(32) DEFAULT NULL,
  `county` varchar(32) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `postcode` varchar(16) NOT NULL,
  `email_1` varchar(128) DEFAULT NULL,
  `email_2` varchar(128) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `phone_number_1` varchar(16) DEFAULT NULL,
  `phone_number_2` varchar(16) DEFAULT NULL,
  `owner_name` varchar(32) DEFAULT NULL,
  `owner_mobile_number` varchar(16) DEFAULT NULL,
  `owner_email` varchar(128) DEFAULT NULL,
  `person_incharge_name` varchar(32) DEFAULT NULL,
  `person_incharge_mobile` varchar(16) DEFAULT NULL,
  `person_incharge_email` varchar(128) DEFAULT NULL,
  `order_receiving_mobile` varchar(16) DEFAULT NULL,
  `order_receiving_email` varchar(128) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL,
  `logo` varchar(128) DEFAULT NULL,
  `sms_sender_name` varchar(16) NOT NULL,
  `sms_sender_url` text NOT NULL,
  `sms_sender_username` varchar(32) NOT NULL,
  `sms_sender_password` varchar(32) NOT NULL,
  `device_token` text NOT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `client_code` (`client_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `client_code`, `username`, `password`, `business_type`, `business_name`, `door_number`, `address_line_1`, `address_line_2`, `location`, `county`, `country`, `postcode`, `email_1`, `email_2`, `fax`, `phone_number_1`, `phone_number_2`, `owner_name`, `owner_mobile_number`, `owner_email`, `person_incharge_name`, `person_incharge_mobile`, `person_incharge_email`, `order_receiving_mobile`, `order_receiving_email`, `website`, `facebook_link`, `twitter_link`, `reg_date`, `status`, `logo`, `sms_sender_name`, `sms_sender_url`, `sms_sender_username`, `sms_sender_password`, `device_token`) VALUES
(1, 'siddha', 'sid', 'arun', 'Shop', 'SIDDHA', '18', 'Annanagar', 'tnagar', 'chennai', '', 'India', '600025', 'siddha@gmail.com', 'siddha1@gmail.com', 'null', '044 93332433\r\n', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null', 'null', NULL, 'active', NULL, 'SB4U', 'http://www.google.com', 'a', 'a123', 'APA91bF_BjUYsZkdpftI69lTnjAB6Ktm-dsyh4KGR3pGJvOTkjGQjYr1h4FzbTaQMNKp48fmgOAiLyWD05nyk1FrNv_2Y-7G9W6K84ZephveQ-DOLe5u7U1s4PjXXrV4lw9RjIUnWXCv');

-- --------------------------------------------------------

--
-- Table structure for table `cms_homepage`
--

CREATE TABLE IF NOT EXISTS `cms_homepage` (
  `cms_homepage_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) NOT NULL,
  `homepage_contents` mediumtext,
  `special_offer_text` varchar(255) DEFAULT NULL,
  `transport` varchar(255) DEFAULT NULL,
  `delivery_areas` varchar(255) DEFAULT NULL,
  `delivery_radius` varchar(255) DEFAULT NULL,
  `home_delivery_terms` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cms_homepage_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cms_homepage`
--

INSERT INTO `cms_homepage` (`cms_homepage_id`, `client_id`, `homepage_contents`, `special_offer_text`, `transport`, `delivery_areas`, `delivery_radius`, `home_delivery_terms`) VALUES
(1, 1, 'Siddha System of Medicine is one of the ancient traditional\r\nsystem of medicine, practiced in the peninsular part of India,\r\npropounded and developed by esoteric immortal personalities,\r\n‘Siddhars’ who defied death, preached the philosophy of Siddha\r\nMedicine and theory of immortality. Agathiyar is believed to be\r\nthe founding father of Siddha Medicine. Eighteen Siddhars are\r\nconsidered to be important in Siddha Medicine.\r\nSiddha Medicine had a history dated several thousand\r\nyears back. It is the crystallization of the rich experiences of Tamil\r\npeople’s long struggle against diseases. This is not only a system\r\nof medical science, but also a part of culture of the society and it\r\nemploys a holistic approach in its treatment methodology and it\r\nhas made enormous contribution to the healthcare of the people.\r\nKayakarpam (special combination of medicine and life\r\nstyle) and Muppu (the universal Salt) are few among the speciality\r\nof Siddha system of medicine.', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cms_homepage_images`
--

CREATE TABLE IF NOT EXISTS `cms_homepage_images` (
  `cms_homepage_image_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL,
  PRIMARY KEY (`cms_homepage_image_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `cms_homepage_images`
--

INSERT INTO `cms_homepage_images` (`cms_homepage_image_id`, `client_id`, `image`, `description`, `status`) VALUES
(27, 1, NULL, NULL, 'show');

-- --------------------------------------------------------

--
-- Table structure for table `cms_opening_hours`
--

CREATE TABLE IF NOT EXISTS `cms_opening_hours` (
  `client_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sunday` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `monday` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tuesday` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wednesday` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thursday` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friday` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saturday` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1316 ;

--
-- Dumping data for table `cms_opening_hours`
--

INSERT INTO `cms_opening_hours` (`client_id`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`) VALUES
(1, '10:00 am to 11:00 pm', '09:00 am to 10:00 pm', '10:00 am to 11:00 pm', '10:00 am to 11:00 pm', '09:00 am to 09:00 pm', '10:00 am to 11:00 pm', '10:00 am to 11:00 pm');

-- --------------------------------------------------------

--
-- Table structure for table `contact_groups`
--

CREATE TABLE IF NOT EXISTS `contact_groups` (
  `contact_group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) DEFAULT NULL,
  `contact_group_name` varchar(64) DEFAULT NULL,
  `status` enum('show','hide') DEFAULT NULL,
  PRIMARY KEY (`contact_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `contact_groups`
--

INSERT INTO `contact_groups` (`contact_group_id`, `client_id`, `contact_group_name`, `status`) VALUES
(34, 1, 'Karnool', 'show'),
(35, 1, 'diseases therapy', 'show'),
(36, 1, 'customers', 'show');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `contact_group_id` bigint(20) NOT NULL,
  `client_id` bigint(20) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `surname` varchar(64) DEFAULT NULL,
  `mobile_number` varchar(16) DEFAULT NULL,
  `email_id` varchar(128) DEFAULT NULL,
  `door_number` varchar(32) DEFAULT NULL,
  `address_line_1` varchar(128) DEFAULT NULL,
  `address_line_2` varchar(128) DEFAULT NULL,
  `post_town` varchar(32) DEFAULT NULL,
  `postcode` varchar(32) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `sms_code` varchar(16) DEFAULT NULL,
  `verified` enum('yes','no') DEFAULT NULL,
  `notes` text,
  `creation_time` date DEFAULT NULL,
  `modification_time` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `idx_contacts_1` (`client_id`,`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `contact_group_id`, `client_id`, `name`, `surname`, `mobile_number`, `email_id`, `door_number`, `address_line_1`, `address_line_2`, `post_town`, `postcode`, `country`, `sms_code`, `verified`, `notes`, `creation_time`, `modification_time`) VALUES
(1, 1, 1, 'arun', 'kumar', '2', 'arun22795@gmail.com', '11', '2', NULL, NULL, '2', 'India', NULL, 'yes', NULL, NULL, NULL),
(2, 2, 1, 'AKASK', 'KUMAR', '1', NULL, '3', '1', NULL, '3', '1', 'India', NULL, 'yes', NULL, NULL, NULL),
(3, 3, 1, 'sasi', 'kumar', '4', NULL, 'trichy', NULL, NULL, NULL, '60030', 'India', NULL, 'yes', NULL, NULL, NULL),
(4, 33, 1, 'dcf', NULL, '455', NULL, '133', NULL, NULL, NULL, '34432', 'India', 'c8235e0d', NULL, NULL, NULL, NULL),
(5, 33, 1, 'fdsfsdf', NULL, '121', NULL, '32', NULL, NULL, NULL, '33', 'India', 'f5352f2f', 'yes', NULL, NULL, NULL),
(6, 33, 1, 'sid', NULL, '12', NULL, '12', NULL, NULL, NULL, '12', 'India', '95a113c0', 'yes', NULL, NULL, NULL),
(7, 33, 1, 'Arun Kumar', NULL, '9790757130', NULL, '38', NULL, NULL, NULL, '600025', 'India', 'a97d1be2', 'yes', NULL, NULL, NULL),
(8, 33, 1, 'TN', NULL, '21', NULL, '21', NULL, NULL, NULL, '21', 'India', '9fd8bbbf', 'yes', NULL, NULL, NULL),
(9, 33, 1, 's', NULL, '6', NULL, '66', NULL, NULL, NULL, '6', 'India', '6960437f', 'yes', NULL, NULL, NULL),
(10, 33, 1, 'go', NULL, '8', NULL, '8', NULL, NULL, NULL, '8', 'India', '63c0cd43', 'yes', NULL, NULL, NULL),
(11, 33, 1, 'deva', NULL, '54', NULL, '34', NULL, NULL, NULL, '600025', 'India', '8ecdb19f', 'yes', NULL, NULL, NULL),
(12, 33, 1, 'fg', NULL, '23', NULL, '23', NULL, NULL, NULL, '23', 'India', 'f1e339b6', 'yes', NULL, NULL, NULL),
(13, 33, 1, 'df', NULL, '56', NULL, '56', NULL, NULL, NULL, '56', 'India', 'e0f63396', 'yes', NULL, NULL, NULL),
(14, 33, 1, 'Gowtham', NULL, '9785664564', NULL, '45', NULL, NULL, NULL, '600025', 'India', 'b54762ec', 'yes', NULL, NULL, NULL),
(15, 33, 1, 'trry', NULL, '2', NULL, '3', NULL, NULL, NULL, '3', 'India', 'b516476c', 'yes', NULL, NULL, NULL),
(16, 33, 1, 'Fazil', NULL, '66546474', NULL, '12', NULL, NULL, NULL, '600056', 'India', '22d41e05', 'yes', NULL, NULL, NULL),
(17, 33, 1, 'Dhoni', NULL, '7', NULL, '7', NULL, NULL, NULL, '7', 'India', 'de7d827b', 'yes', NULL, NULL, NULL),
(18, 35, 1, 'sasidharan', 'null', '45', 'null', '45', 'null', 'null', 'null', '23', 'India', 'e5116949', 'yes', NULL, NULL, '2016-05-26'),
(19, 33, 1, 'bharane', NULL, '9566678905', NULL, '23', NULL, NULL, NULL, '600043', 'India', '7f7b70f0', 'yes', NULL, NULL, NULL),
(20, 33, 1, 'karthik', NULL, '90777668', NULL, '1', NULL, NULL, NULL, '602024', 'India', '6a448a25', 'yes', NULL, NULL, NULL),
(21, 33, 1, 'Balaji', NULL, '12', NULL, '212', NULL, NULL, NULL, '12', 'India', '95a113c0', 'yes', NULL, NULL, NULL),
(22, 33, 1, 'Ni', NULL, '90', NULL, '90', NULL, NULL, NULL, '90', 'India', 'a9d9d943', 'yes', NULL, NULL, NULL),
(23, 33, 1, 'Ten', NULL, '1010', NULL, '10', NULL, NULL, NULL, '10', 'India', '888a2de9', 'yes', NULL, NULL, NULL),
(26, 33, 1, 'arunraj', NULL, '7338952720', NULL, '7', NULL, NULL, NULL, '7', 'India', '67c7efdb', NULL, NULL, NULL, NULL),
(27, 33, 1, 'Sathish', NULL, '23', NULL, '33', NULL, NULL, NULL, '23', 'India', 'f1e339b6', 'yes', NULL, NULL, NULL),
(28, 33, 1, 'Bala', NULL, '9854654645', NULL, '67', NULL, NULL, NULL, '600047', 'India', '6c300461', 'yes', NULL, NULL, NULL),
(29, 33, 1, 'Suji', NULL, '94646546', NULL, '38', NULL, NULL, NULL, '600055', 'India', '4d0d519e', 'yes', NULL, NULL, NULL),
(30, 33, 1, 'Mathew', NULL, '977675756', NULL, '3445', NULL, NULL, NULL, '6000045', 'India', '956cb79b', 'yes', NULL, NULL, NULL),
(31, 33, 1, 'vIJAY', NULL, '976756756', NULL, '4346000', NULL, NULL, NULL, '6000434', 'India', '8874a53d', 'yes', NULL, NULL, NULL),
(32, 36, 1, 'Vishnu', NULL, '87655', NULL, '33', NULL, NULL, NULL, '3242v', NULL, 'c621ba3e', 'yes', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `doctorname` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `mobileno` int(10) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `postcode` varchar(20) NOT NULL,
  `client_id` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorname`, `address`, `mobileno`, `emailid`, `postcode`, `client_id`) VALUES
('Dr. Sasi Kumar ', 'salem', 734432423, 'sasi@gmail.com', '60034', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) NOT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `description` text,
  `status` enum('show','hide') NOT NULL,
  `priority` tinyint(4) DEFAULT NULL,
  `creation_time` datetime NOT NULL,
  `modification_time` datetime NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_id`, `client_id`, `menu_name`, `description`, `status`, `priority`, `creation_time`, `modification_time`) VALUES
(1, 1, 'Diseases', NULL, 'show', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 1, 'Therapy', NULL, 'show', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE IF NOT EXISTS `menu_items` (
  `menu_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `menu_id` bigint(20) NOT NULL,
  `menu_item_name` varchar(255) DEFAULT NULL,
  `description` text,
  `menu_type` enum('simple item','multiline item','sub item') NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `priority` tinyint(4) DEFAULT NULL,
  `status` enum('show','hide') NOT NULL,
  `creation_time` datetime NOT NULL,
  `modification_time` datetime NOT NULL,
  PRIMARY KEY (`menu_item_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`menu_item_id`, `menu_id`, `menu_item_name`, `description`, `menu_type`, `price`, `priority`, `status`, `creation_time`, `modification_time`) VALUES
(1, 2, 'Karnool Therapy', 'Karnool therapy is an unique para surgical treatment carried out for the management of fistula-in-ano.', 'simple item', '100.00', NULL, 'show', '2016-04-10 00:00:00', '0000-00-00 00:00:00'),
(2, 2, 'Leech Therapy', 'It remove toxins from blood using leeches.', 'simple item', '200.00', NULL, 'show', '2016-04-10 00:00:00', '0000-00-00 00:00:00'),
(3, 2, 'Suttigai', 'Burning of the tissues to remove.Abdominal swelling,Kapha disorders etc..', 'simple item', '150.00', NULL, 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 2, 'Poultice', 'It is soft moist mass,herbs often heated and medicated,is spread over the skin to treat an aching.', 'simple item', '90.00', NULL, 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 2, 'Peechu', 'Peechu is done using medicated water/medicated oil to evaculated rectum.', 'simple item', '120.00', NULL, 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 1, 'Diabetes Mellitus', 'Cure diabetes', 'simple item', '10.00', NULL, 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 1, 'Bronchial Asthma', 'Cure asthma', 'simple item', '30.00', NULL, 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 1, 'Tuberculosis', 'Cure Pulmonary Tuberculosis', 'simple item', '50.00', NULL, 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items_sub_items`
--

CREATE TABLE IF NOT EXISTS `menu_items_sub_items` (
  `menu_item_id` bigint(20) NOT NULL,
  `sub_item_id` bigint(20) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `status` enum('show','hide') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_items_sub_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE IF NOT EXISTS `offers` (
  `offer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) NOT NULL,
  `offer_type` enum('image','text') NOT NULL,
  `offer_title` varchar(128) DEFAULT NULL,
  `offer_description` varchar(255) DEFAULT NULL,
  `offer_price` int(10) NOT NULL,
  `image` varchar(128) DEFAULT NULL,
  `priority` tinyint(4) DEFAULT NULL,
  `status` enum('show','hide','expired') NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `creation_time` datetime NOT NULL,
  `modification_time` datetime NOT NULL,
  PRIMARY KEY (`offer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`offer_id`, `client_id`, `offer_type`, `offer_title`, `offer_description`, `offer_price`, `image`, `priority`, `status`, `start_date`, `end_date`, `creation_time`, `modification_time`) VALUES
(1, 1, 'text', 'Karnool ther', 'Para surgical treatement', 2, '', 0, 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-04-10 10:23:00', '2016-05-28 17:07:41'),
(2, 1, 'text', 'Leech therapy', 'Remove toxins from blood', 1, NULL, NULL, 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-04-07 20:30:00', '0000-00-00 00:00:00'),
(3, 1, 'text', 'Suttigai', 'It remove burning tissues', 2, NULL, NULL, 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-04-07 21:48:32', '0000-00-00 00:00:00'),
(4, 1, 'text', 'Nasal Drops', 'Nasal instillation', 4, NULL, NULL, 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-04-10 10:50:08', '0000-00-00 00:00:00'),
(5, 1, 'text', 'Seelai', 'Wound in order to promote healing', 1, NULL, NULL, 'show', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-04-10 10:51:25', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE IF NOT EXISTS `order_master` (
  `order_master_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) NOT NULL,
  `order_amount` decimal(8,2) DEFAULT NULL,
  `discount_amount` decimal(8,2) DEFAULT NULL,
  `net_amount` decimal(8,2) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `modification_time` datetime DEFAULT NULL,
  `order_source` enum('website','facebook','mobile') COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` enum('cash','paypal') COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('New','Rejected','Accepted','Ready') COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_type` enum('Collection','Delivery') COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_time` int(11) NOT NULL,
  `order_token` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`order_master_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=118 ;

--
-- Dumping data for table `order_master`
--

INSERT INTO `order_master` (`order_master_id`, `customer_id`, `client_id`, `order_amount`, `discount_amount`, `net_amount`, `creation_time`, `modification_time`, `order_source`, `payment_type`, `status`, `order_type`, `order_time`, `order_token`) VALUES
(89, 1, 1, '10.00', '0.00', '10.00', '2016-03-24 10:44:22', '2016-03-24 10:44:22', 'mobile', 'cash', 'New', 'Collection', 0, 'tDRqHKxlvy67qpop'),
(90, 1, 1, '30.00', '0.00', '30.00', '2016-03-24 11:24:01', '2016-03-24 11:24:01', 'mobile', 'cash', 'New', 'Collection', 0, 'RtQ5lrU5XcfxEOVU'),
(91, 1, 1, '10.00', '0.00', '10.00', '2016-03-25 07:28:29', '2016-03-25 07:28:29', 'mobile', 'cash', 'Accepted', 'Collection', 0, 'pD6b6ke0IXhE5CyJ'),
(92, 2, 1, '40.00', '0.00', '40.00', '2016-03-26 05:34:19', '2016-03-26 05:34:19', 'mobile', 'cash', 'New', 'Collection', 0, '3pU7FubW49dLBLCj'),
(93, 2, 1, '20.00', '0.00', '20.00', '2016-03-26 05:38:49', '2016-03-26 05:38:49', 'mobile', 'cash', 'Rejected', 'Collection', 0, '2UbdciSgQJ1hcoIt'),
(94, 2, 1, '10.00', '0.00', '10.00', '2016-03-26 05:42:07', '2016-03-26 05:42:07', 'mobile', 'cash', 'New', 'Delivery', 0, 'QK7PaSMl4e4zh6lK'),
(95, 2, 1, '10.00', '0.00', '10.00', '2016-03-26 05:51:54', '2016-03-26 05:51:54', 'mobile', 'cash', 'New', 'Collection', 0, 'NWtRHcx50X7zgelu'),
(96, 2, 1, '10.00', '0.00', '10.00', '2016-03-29 13:16:47', '2016-03-29 13:16:47', 'mobile', 'cash', 'New', 'Delivery', 0, 'E36RFEKbGNkAcbWS'),
(97, 2, 1, '10.00', '0.00', '10.00', '2016-03-29 17:49:37', '2016-03-29 17:49:37', 'mobile', 'cash', 'Ready', 'Delivery', 0, 'ukAw1KuYghw2YjAO'),
(98, 2, 1, '10.00', '0.00', '10.00', '2016-04-01 12:50:09', '2016-04-01 12:50:09', 'mobile', 'cash', 'Ready', 'Delivery', 0, 'CWFEN0P6l1Fu1Fri'),
(99, 2, 1, '140.00', '0.00', '140.00', '2016-04-01 17:00:20', '2016-04-01 17:00:20', 'mobile', 'cash', 'Rejected', 'Collection', 0, 'jYgxELBtRZGm4Xmx'),
(100, 7, 1, '10.00', '0.00', '10.00', '2016-04-01 21:19:04', '2016-04-01 21:19:04', 'mobile', 'cash', 'Rejected', 'Delivery', 0, 'OWX5TyF8weFWk3E8'),
(101, 19, 1, '20.00', '0.00', '20.00', '2016-04-02 10:25:29', '2016-04-02 10:25:29', 'mobile', 'cash', 'Accepted', 'Collection', 12, 'P1odECcDAujJ35xG'),
(102, 20, 1, '24.00', '0.00', '24.00', '2016-04-02 10:41:33', '2016-04-02 10:41:33', 'mobile', 'cash', 'Ready', 'Delivery', 0, 'qmosko7wV67wy3cs'),
(103, 6, 1, '12.00', '0.00', '12.00', '2016-04-04 19:31:26', '2016-04-04 19:31:26', 'mobile', 'cash', 'Accepted', 'Collection', 0, 'dlwFpvGvN47fF6lU'),
(104, 23, 1, '10.00', '0.00', '10.00', '2016-04-07 20:38:29', '2016-04-07 20:38:29', 'mobile', 'cash', 'Accepted', 'Delivery', 0, 'aa0RZyBAGODSVJsg'),
(105, 23, 1, '12.00', '0.00', '12.00', '2016-04-07 20:39:06', '2016-04-07 20:39:06', 'mobile', 'cash', 'Accepted', 'Collection', 0, '2uFWa7NYBfbW24HN'),
(106, 27, 1, '300.00', '0.00', '300.00', '2016-04-10 10:52:56', '2016-04-10 10:52:56', 'mobile', 'cash', 'Accepted', 'Delivery', 0, 'nnuh7CO5AunggiPi'),
(107, 28, 1, '450.00', '0.00', '450.00', '2016-04-10 12:32:19', '2016-04-10 12:32:19', 'mobile', 'cash', 'New', 'Delivery', 0, 'IsMZSvLKVjlmsc0C'),
(108, 28, 1, '100.00', '0.00', '100.00', '2016-04-10 12:35:37', '2016-04-10 12:35:37', 'mobile', 'cash', 'Rejected', 'Collection', 0, 'fuPC8mmXKccDYap8'),
(109, 28, 1, '540.00', '0.00', '540.00', '2016-04-10 13:20:37', '2016-04-10 13:20:37', 'mobile', 'cash', 'Accepted', 'Collection', 0, 'qd1iGHawjoPczCXW'),
(110, 29, 1, '450.00', '0.00', '450.00', '2016-04-10 18:12:50', '2016-04-10 18:12:50', 'mobile', 'cash', 'Rejected', 'Collection', 0, 'fBuVr5W1a0GRIT8t'),
(111, 30, 1, '450.00', '0.00', '450.00', '2016-04-12 13:27:41', '2016-04-12 13:27:41', 'mobile', 'cash', 'Accepted', 'Collection', 0, 'TyFnXP9PnlB9HEA9'),
(112, 31, 1, '300.00', '0.00', '300.00', '2016-04-12 14:36:37', '2016-04-12 14:36:37', 'mobile', 'cash', 'Accepted', 'Delivery', 0, 'ykdPcm1ZLoYhybR9'),
(113, 6, 1, '540.00', '0.00', '540.00', '2016-05-10 17:58:50', '2016-05-10 17:58:50', 'mobile', 'cash', 'New', 'Collection', 0, 'ALs9iLmT8wCyS8lN'),
(114, 6, 1, '10.00', '0.00', '10.00', '2016-05-13 17:35:51', '2016-05-13 17:35:51', 'mobile', 'cash', 'New', 'Collection', 0, 'sTMcqlbi6pL5tu0p'),
(115, 6, 1, '100.00', '0.00', '100.00', '2016-05-18 08:19:09', '2016-05-18 08:19:09', 'mobile', 'cash', 'New', 'Collection', 0, 'oumi2m5dIZoa3YVM'),
(116, 6, 1, '450.00', '0.00', '450.00', '2016-05-21 19:17:11', '2016-05-21 19:17:11', 'mobile', 'cash', 'New', 'Collection', 0, 'P3r55zh2QxBTsOnq'),
(117, 32, 1, '300.00', '0.00', '300.00', '2016-05-27 09:11:47', '2016-05-27 09:11:47', 'mobile', 'cash', 'Accepted', 'Collection', 0, 'BH8uDs92RkZytVJn');

-- --------------------------------------------------------

--
-- Table structure for table `order_transaction`
--

CREATE TABLE IF NOT EXISTS `order_transaction` (
  `order_transaction_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_master_id` bigint(20) NOT NULL,
  `menu_item_id` bigint(20) NOT NULL,
  `sub_item_id` bigint(20) DEFAULT NULL,
  `quantity` tinyint(4) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`order_transaction_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=243 ;

--
-- Dumping data for table `order_transaction`
--

INSERT INTO `order_transaction` (`order_transaction_id`, `order_master_id`, `menu_item_id`, `sub_item_id`, `quantity`, `price`) VALUES
(199, 89, 1, 0, 1, '10.00'),
(200, 90, 1, 0, 3, '10.00'),
(201, 91, 1, 0, 1, '10.00'),
(202, 92, 1, 0, 4, '10.00'),
(203, 93, 1, 0, 2, '10.00'),
(204, 94, 1, 0, 1, '10.00'),
(205, 95, 1, 0, 1, '10.00'),
(206, 96, 1, 0, 1, '10.00'),
(207, 97, 1, 0, 1, '10.00'),
(208, 98, 1, 0, 1, '10.00'),
(209, 99, 1, 0, 14, '10.00'),
(210, 100, 1, 0, 1, '10.00'),
(211, 101, 1, 0, 2, '10.00'),
(212, 102, 2, 0, 2, '12.00'),
(213, 103, 2, 0, 1, '12.00'),
(214, 104, 1, 0, 1, '10.00'),
(215, 105, 2, 0, 1, '12.00'),
(216, 106, 1, 0, 3, '100.00'),
(217, 107, 1, 0, 1, '100.00'),
(218, 107, 2, 0, 1, '200.00'),
(219, 107, 3, 0, 1, '150.00'),
(220, 108, 1, 0, 1, '100.00'),
(221, 109, 1, 0, 1, '100.00'),
(222, 109, 2, 0, 1, '200.00'),
(223, 109, 3, 0, 1, '150.00'),
(224, 109, 4, 0, 1, '90.00'),
(225, 110, 1, 0, 1, '100.00'),
(226, 110, 2, 0, 1, '200.00'),
(227, 110, 3, 0, 1, '150.00'),
(228, 111, 1, 0, 1, '100.00'),
(229, 111, 2, 0, 1, '200.00'),
(230, 111, 3, 0, 1, '150.00'),
(231, 112, 3, 0, 2, '150.00'),
(232, 113, 1, 0, 1, '100.00'),
(233, 113, 2, 0, 1, '200.00'),
(234, 113, 3, 0, 1, '150.00'),
(235, 113, 4, 0, 1, '90.00'),
(236, 114, 6, 0, 1, '10.00'),
(237, 115, 1, 0, 1, '100.00'),
(238, 116, 1, 0, 1, '100.00'),
(239, 116, 2, 0, 1, '200.00'),
(240, 116, 3, 0, 1, '150.00'),
(241, 117, 1, 0, 1, '100.00'),
(242, 117, 2, 0, 1, '200.00');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `customer_id` int(20) NOT NULL,
  `patient_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`customer_id`, `patient_id`) VALUES
(1, 'A123'),
(2, 'b516476c'),
(3, 'ds'),
(4, 'fcfds3');

-- --------------------------------------------------------

--
-- Table structure for table `sms_logs`
--

CREATE TABLE IF NOT EXISTS `sms_logs` (
  `sms_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `mobile_number` varchar(16) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `status` enum('new','failed','delivered') DEFAULT NULL,
  `creation_time` datetime NOT NULL,
  `modification_time` datetime NOT NULL,
  PRIMARY KEY (`sms_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sms_logs`
--


-- --------------------------------------------------------

--
-- Table structure for table `sub_items`
--

CREATE TABLE IF NOT EXISTS `sub_items` (
  `sub_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) NOT NULL,
  `sub_item_name` varchar(255) DEFAULT NULL,
  `status` enum('show','hide') NOT NULL,
  `creation_time` datetime NOT NULL,
  `modification_time` datetime NOT NULL,
  PRIMARY KEY (`sub_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `sub_items`
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
