-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 25, 2022 at 07:37 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `downdetector`
--
CREATE DATABASE IF NOT EXISTS `downdetector` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `downdetector`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user register model', 7, 'add_userregistermodel'),
(26, 'Can change user register model', 7, 'change_userregistermodel'),
(27, 'Can delete user register model', 7, 'delete_userregistermodel'),
(28, 'Can view user register model', 7, 'view_userregistermodel'),
(29, 'Can add server complaints model', 8, 'add_servercomplaintsmodel'),
(30, 'Can change server complaints model', 8, 'change_servercomplaintsmodel'),
(31, 'Can delete server complaints model', 8, 'delete_servercomplaintsmodel'),
(32, 'Can view server complaints model', 8, 'view_servercomplaintsmodel'),
(33, 'Can add server image model', 9, 'add_serverimagemodel'),
(34, 'Can change server image model', 9, 'change_serverimagemodel'),
(35, 'Can delete server image model', 9, 'delete_serverimagemodel'),
(36, 'Can view server image model', 9, 'view_serverimagemodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$sPYKpk9NBxGe4GXHQHbBSJ$C5krtRdIm0DUaXQa5h9cBnN+AKO4k2fwjsZMnxkxKjk=', '2022-01-27 11:50:44.649366', 1, 'dell', '', '', 'sdd@gmail.com', 1, 1, '2022-01-27 11:47:30.943101'),
(2, 'pbkdf2_sha256$260000$td0ubYpGGYTnaiRbEDDGgz$DvoRy+v+ExIWbwTGYDkZyU05jHDa4o1be57FBhOq+nA=', NULL, 1, 'sai', '', '', 'sai@gmail.com', 1, 1, '2022-01-31 10:29:48.169779'),
(3, 'pbkdf2_sha256$260000$GTmUngFufEQl9KsoucFwxm$4SpRTPVU+ChVMPhuBdUpa28f5bp9QASBmai3zWmAcQw=', '2022-02-04 06:09:24.112430', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-02-04 05:50:52.488668'),
(4, 'pbkdf2_sha256$260000$ZYwtfutAfUJR89YJTkxYNv$ZBBss0+hDI9qb6fIA0HdTH+DgMR1hdZxi1/FK8rFEsc=', '2022-02-04 06:15:01.186942', 1, 'tharun', '', '', 'tharun@gmail.com', 1, 1, '2022-02-04 06:10:39.183394'),
(5, 'pbkdf2_sha256$260000$fVebHZJGWBMNwGzs6q4yII$iAggxTOLOQZHJXIuysjwHewF+GEoTp4q4GnxmyOzhqM=', '2022-02-04 06:19:40.870212', 1, 'chintu', '', '', 'chintu@gmail.com', 1, 1, '2022-02-04 06:16:32.719557');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `complaints_details`
--

CREATE TABLE IF NOT EXISTS `complaints_details` (
  `complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Server_name` varchar(100) NOT NULL,
  `Description` longtext NOT NULL,
  `Posted_Date` date NOT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `complaints_details`
--

INSERT INTO `complaints_details` (`complaint_id`, `user_id`, `Category`, `Server_name`, `Description`, `Posted_Date`) VALUES
(1, 9, '', '', '', '2022-02-07'),
(12, 9, 'Airtel', 'Telecommmunication', 'hello airtel', '2022-02-09'),
(13, 9, 'BSNL', 'Telecommmunication', 'hello bsnl', '2022-02-09'),
(14, 9, 'State Bank of India', 'Bank', 'hello state  bank', '2022-02-09'),
(15, 9, 'Bank of Baroda', 'Bank', 'hello bob', '2022-02-09'),
(16, 9, 'Bank of Baroda', 'Bank', 'hello bob', '2022-02-09'),
(17, 9, 'Facebook', 'Social Media', 'hello facebook', '2022-02-10'),
(18, 9, 'Facebook', 'Social Media', 'hii', '2022-02-10'),
(19, 9, 'Whatsapp', 'Social Media', 'hello whatsapp', '2022-02-10'),
(20, 9, 'Whatsapp', 'Social Media', 'hiii whatsapp', '2022-02-10'),
(21, 9, 'Instagram', 'Social Media', 'hello instagram', '2022-02-10'),
(22, 9, 'Instagram', 'Social Media', 'hii instagram', '2022-02-10'),
(23, 9, 'State Bank of India', 'Bank', 'hiiiiii sbi\r\n', '2022-02-10'),
(24, 9, 'Bank of Baroda', 'Bank', 'hiiiiii bob', '2022-02-10'),
(25, 9, 'Bank of India', 'Bank', 'hello boi', '2022-02-10'),
(26, 9, 'Jio', 'Telecommmunication', 'hello jio', '2022-02-10'),
(27, 9, 'Jio', 'Telecommmunication', 'hello jioooo', '2022-02-10'),
(28, 9, 'Whatsapp', 'Social Media', 'hello whatsapp\r\n', '2022-02-10'),
(29, 9, 'Bank of Baroda', 'Bank', 'hello bob', '2022-02-11'),
(30, 9, 'Facebook', 'Social Media', 'hieee facebook', '2022-02-11'),
(31, 9, 'Facebook', 'Social Media', 'hello iam tharu nd want to give complaint on facebook', '2022-02-11'),
(32, 9, 'State Bank of India', 'Bank', 'hi state bank server is slow', '2022-03-24'),
(33, 9, 'State Bank of India', 'Bank', 'hi state bank server is slow', '2022-03-24'),
(34, 9, 'Facebook', 'Social Media', 'Facebook is an American online social media and social networking service owned by Meta Platforms. Founded in 2004 by Mark Zuckerberg with fellow Harvard College students and roommates Eduardo Sajverin, Andrew McCollum, Dustin Moskovitz, and Chris Hughes, its name comes from the face bookdirectobries often given to American university students. Membership was h…', '2022-03-24'),
(35, 9, 'Bank of Baroda', 'Bank', 'hi bank of baroda\r\n\r\n', '2022-03-25'),
(36, 9, 'Facebook', 'Social Media', 'hiiii facebook', '2022-03-25'),
(37, 9, 'State Bank of India', 'Bank', 'hiiii state bank o0f india\r\n', '2022-03-25'),
(38, 9, 'Bank of India', 'Bank', 'hiii bank of india', '2022-03-25'),
(39, 9, 'Bank of India', 'Bank', 'kjhvghfdjhknhjhgf', '2022-03-25');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(8, 'userapp', 'servercomplaintsmodel'),
(9, 'userapp', 'serverimagemodel'),
(7, 'userapp', 'userregistermodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-25 11:25:42.682345'),
(2, 'auth', '0001_initial', '2022-01-25 11:25:57.225947'),
(3, 'admin', '0001_initial', '2022-01-25 11:25:59.867873'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-01-25 11:25:59.962583'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-25 11:26:00.009376'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-01-25 11:26:01.886023'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-01-25 11:26:02.860463'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-01-25 11:26:03.620030'),
(9, 'auth', '0004_alter_user_username_opts', '2022-01-25 11:26:03.660005'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-01-25 11:26:04.416571'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-01-25 11:26:04.441555'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-01-25 11:26:04.479536'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-01-25 11:26:05.284071'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-01-25 11:26:06.156570'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-01-25 11:26:07.070048'),
(16, 'auth', '0011_update_proxy_permissions', '2022-01-25 11:26:07.108026'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-01-25 11:26:07.857596'),
(18, 'sessions', '0001_initial', '2022-01-25 11:26:08.677123'),
(19, 'userapp', '0001_initial', '2022-01-27 11:08:35.631799'),
(20, 'userapp', '0002_servercomplaintsmodel', '2022-02-07 10:39:15.180351'),
(21, 'userapp', '0002_serverimagemodel', '2022-02-08 10:11:12.108867');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4r62cdtp5zwfwm59mikgv02gctmf1fc6', 'eyJ1c2VyX2lkIjo5fQ:1nXLK3:zkDj4bwXTEPzNvtzy4LezxevLFDQeNRkeNkWpxt0dUc', '2022-04-07 11:08:07.543149'),
('ayuvnod6cakyxuwatjoza7f5u0yqley9', '.eJxVjMsOwiAQRf-FtSEDA0Vcuu83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiQuwojT78YUH7ntIN2p3WYZ57YuE8tdkQftcpxTfl4P9--gUq_f2jmjyQIUQFVAmeyKO7Nh6-PgSzKI6DmbIUVmHwGTtqCKR00FrWIl3h_Ksjdm:1nFrs6:ax07p1z4kL_EqF4v1KJ5W43Y3JTPdtnvhI9scENIVxw', '2022-02-18 06:15:02.091995'),
('bjwudaze36le4cc1ugy83g4n0potq33r', '.eJxVjsEOwiAQRP-FsyGwhQIevfcbyMKuUjU0Ke3J-O-2SWP0Om_mZV4i4rqUuDae40jiLLQ4_WYJ84PrDuiO9TbJPNVlHpPcK_KgTQ4T8fNydP8EBVvZ1kEjGO8AjVfKpMBENjjHbM01uGwTE-qeOwbqOWUG5bPtEoMF1AC4Sb8fw_sDmyQ7-g:1nIQQL:t18Ho1xHOiBbtluABdQabsD6V2Ac6ADiIoxAXcWnNe4', '2022-02-25 07:32:57.190515'),
('ln1m03h09lrjyp88hzk2krc7etuicdth', 'eyJ1c2VyX2lkIjo5fQ:1nXMEm:7rc_LTjQbTtP1hr-744dsqnp5Rykpi7-6CfGPpMBOH0', '2022-04-07 12:06:44.177109'),
('massc0coliyfm8wkrpwehwj4jgtiemn6', '.eJxVjDsOwyAQBe9CHSFgYTEp0_sM1sLi4CQCyZ8qyt1jSy6S9s3Me4uBtrUM25LnYWJxFU5cfrdI6ZnrAfhB9d5kanWdpygPRZ50kX3j_Lqd7t9BoaXstQVQHZgxjYBMqDQhhKQNaRctss3Zsw6IHkj5Dnxwu5PYJg3ABkl8vsFgNtY:1nFruQ:3iNdKOmSMXJ2DQBsLBGCEfLNwAMdI_pYjUhbUzpB4yw', '2022-02-18 06:17:26.127888'),
('ucc004c5k6hy4fulrv7sm50xpqobtuje', '.eJxVjDkOwjAUBe_iGlle8EZJzxmsvyQ4gGwpTirE3UmkFNC-mXlvkWFdSl77MOeJxUVYcfrdEOg51B3wA-q9SWp1mSeUuyIP2uWt8fC6Hu7fQYFetjoEzw5CQGuI7cjGx8iK0AA6hjS6GMkbq3SM3uLZq03wiYKmNGpAIz5f4PI3gA:1nFrme:R-LK8zrvJcflNG01i8OM9I4-tdakq92LzqJhUNLJbMQ', '2022-02-18 06:09:24.356583'),
('uno02y722k21v5193wkylszbkmi0zaxi', '.eJxVjDsOwyAQBe9CHSFgYTEp0_sM1sLi4CQCyZ8qyt1jSy6S9s3Me4uBtrUM25LnYWJxFU5cfrdI6ZnrAfhB9d5kanWdpygPRZ50kX3j_Lqd7t9BoaXstQVQHZgxjYBMqDQhhKQNaRctss3Zsw6IHkj5Dnxwu5PYJg3ABkl8vsFgNtY:1nFrwb:X_yrMYlwabNAG7mebfS8AF7NN696O45Tu_p2QgOVuDo', '2022-02-18 06:19:41.105919'),
('v7q3ox0ydcqolww3gr746by3ukad1m0p', 'eyJ1c2VyX2lkIjo5fQ:1nXeHL:3HfINW8cEQuHdfLhGhLlgEdIe3sCp7IEBrv2BOnImpk', '2022-04-08 07:22:35.770271');

-- --------------------------------------------------------

--
-- Table structure for table `server_image`
--

CREATE TABLE IF NOT EXISTS `server_image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `server_name` varchar(100) NOT NULL,
  `server_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `server_image`
--

INSERT INTO `server_image` (`id`, `server_name`, `server_image`) VALUES
(1, 'mnbmknh', ''),
(2, 'kln', ''),
(3, 'hgfhghg', ''),
(4, 'tillu sharath', ''),
(5, 'hgfhghg', ''),
(6, 'Airtel', 'images/bob-card.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `fname`, `lname`, `email`, `password`) VALUES
(1, 'sai', 'tharun', 'sai@gmail.com', '123456'),
(2, 'vinay', 'reddy', 'vin@gmail.com', '1234'),
(3, 'hari', 'babu', 'hari@gmailo.com', '1234567'),
(4, 'hemanth', 'sai', 'saih@gmail.com', '12345'),
(5, 'sai', 'teja', 'teja@gmail.com', '12345678'),
(6, 'sai', 'chintu', 'chintu@gmail.com', 'tarun'),
(7, 'abhi', 'jakka', 'abhi@gmail.com', 'abhi12'),
(8, 'sss', 'ttt', 'stt@gmail.com', 'stttt'),
(9, 'tillu', 'sharath', 'tillu@gmail.com', 'tillu123'),
(10, 'ravi', 'karre', 'ravi@gmail.com', 'ravi123'),
(11, 'ravi', 'karre', 'ravi@gmail.com', 'ravi123'),
(12, 'ravi', 'karre', 'ravi@gmail.com', 'ravi123'),
(16, 'tharun', 'karree', 'tharun@gmail.com', 'hgfjkut'),
(18, 'tillu', 'sharath', 'tillus@gmail.com', 'tillu123'),
(22, 'jhjkh', 'jhbjkhb', 'jhgjgb@gm', 'nbbvjk'),
(23, 'alkjhilj', 'mnbkjhlkj', 'jkbjkhjh@gmail.co', 'we12DF'),
(24, 'tharunk', 'karree', 'tharunhf@gmail.com', 'asas123AS'),
(25, 'tharunf', 'karree', 'tharunsdf@gmail.com', 'dfseDFSFWE2345');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
