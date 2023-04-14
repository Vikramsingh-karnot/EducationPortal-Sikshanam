-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 04:53 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sikshanam`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add subject', 1, 'add_subject'),
(2, 'Can change subject', 1, 'change_subject'),
(3, 'Can delete subject', 1, 'delete_subject'),
(4, 'Can view subject', 1, 'view_subject'),
(5, 'Can add ty sem5', 2, 'add_tysem5'),
(6, 'Can change ty sem5', 2, 'change_tysem5'),
(7, 'Can delete ty sem5', 2, 'delete_tysem5'),
(8, 'Can view ty sem5', 2, 'view_tysem5'),
(9, 'Can add sy sem3', 3, 'add_sysem3'),
(10, 'Can change sy sem3', 3, 'change_sysem3'),
(11, 'Can delete sy sem3', 3, 'delete_sysem3'),
(12, 'Can view sy sem3', 3, 'view_sysem3'),
(13, 'Can add fy sem1', 4, 'add_fysem1'),
(14, 'Can change fy sem1', 4, 'change_fysem1'),
(15, 'Can delete fy sem1', 4, 'delete_fysem1'),
(16, 'Can view fy sem1', 4, 'view_fysem1'),
(17, 'Can add profile', 5, 'add_profile'),
(18, 'Can change profile', 5, 'change_profile'),
(19, 'Can delete profile', 5, 'delete_profile'),
(20, 'Can view profile', 5, 'view_profile'),
(21, 'Can add teacher', 6, 'add_teacher'),
(22, 'Can change teacher', 6, 'change_teacher'),
(23, 'Can delete teacher', 6, 'delete_teacher'),
(24, 'Can view teacher', 6, 'view_teacher'),
(25, 'Can add fybscit', 7, 'add_fybscit'),
(26, 'Can change fybscit', 7, 'change_fybscit'),
(27, 'Can delete fybscit', 7, 'delete_fybscit'),
(28, 'Can view fybscit', 7, 'view_fybscit'),
(29, 'Can add tybscit', 8, 'add_tybscit'),
(30, 'Can change tybscit', 8, 'change_tybscit'),
(31, 'Can delete tybscit', 8, 'delete_tybscit'),
(32, 'Can view tybscit', 8, 'view_tybscit'),
(33, 'Can add sybscit', 9, 'add_sybscit'),
(34, 'Can change sybscit', 9, 'change_sybscit'),
(35, 'Can delete sybscit', 9, 'delete_sybscit'),
(36, 'Can view sybscit', 9, 'view_sybscit'),
(37, 'Can add log entry', 10, 'add_logentry'),
(38, 'Can change log entry', 10, 'change_logentry'),
(39, 'Can delete log entry', 10, 'delete_logentry'),
(40, 'Can view log entry', 10, 'view_logentry'),
(41, 'Can add permission', 11, 'add_permission'),
(42, 'Can change permission', 11, 'change_permission'),
(43, 'Can delete permission', 11, 'delete_permission'),
(44, 'Can view permission', 11, 'view_permission'),
(45, 'Can add group', 12, 'add_group'),
(46, 'Can change group', 12, 'change_group'),
(47, 'Can delete group', 12, 'delete_group'),
(48, 'Can view group', 12, 'view_group'),
(49, 'Can add user', 13, 'add_user'),
(50, 'Can change user', 13, 'change_user'),
(51, 'Can delete user', 13, 'delete_user'),
(52, 'Can view user', 13, 'view_user'),
(53, 'Can add content type', 14, 'add_contenttype'),
(54, 'Can change content type', 14, 'change_contenttype'),
(55, 'Can delete content type', 14, 'delete_contenttype'),
(56, 'Can view content type', 14, 'view_contenttype'),
(57, 'Can add session', 15, 'add_session'),
(58, 'Can change session', 15, 'change_session'),
(59, 'Can delete session', 15, 'delete_session'),
(60, 'Can view session', 15, 'view_session'),
(61, 'Can add fy monday', 16, 'add_fymonday'),
(62, 'Can change fy monday', 16, 'change_fymonday'),
(63, 'Can delete fy monday', 16, 'delete_fymonday'),
(64, 'Can view fy monday', 16, 'view_fymonday'),
(65, 'Can add lydia monday', 17, 'add_lydiamonday'),
(66, 'Can change lydia monday', 17, 'change_lydiamonday'),
(67, 'Can delete lydia monday', 17, 'delete_lydiamonday'),
(68, 'Can view lydia monday', 17, 'view_lydiamonday'),
(69, 'Can add aaron friday', 18, 'add_aaronfriday'),
(70, 'Can change aaron friday', 18, 'change_aaronfriday'),
(71, 'Can delete aaron friday', 18, 'delete_aaronfriday'),
(72, 'Can view aaron friday', 18, 'view_aaronfriday'),
(73, 'Can add aaron monday', 19, 'add_aaronmonday'),
(74, 'Can change aaron monday', 19, 'change_aaronmonday'),
(75, 'Can delete aaron monday', 19, 'delete_aaronmonday'),
(76, 'Can view aaron monday', 19, 'view_aaronmonday'),
(77, 'Can add aaron saturday', 20, 'add_aaronsaturday'),
(78, 'Can change aaron saturday', 20, 'change_aaronsaturday'),
(79, 'Can delete aaron saturday', 20, 'delete_aaronsaturday'),
(80, 'Can view aaron saturday', 20, 'view_aaronsaturday'),
(81, 'Can add aaron thursday', 21, 'add_aaronthursday'),
(82, 'Can change aaron thursday', 21, 'change_aaronthursday'),
(83, 'Can delete aaron thursday', 21, 'delete_aaronthursday'),
(84, 'Can view aaron thursday', 21, 'view_aaronthursday'),
(85, 'Can add aaron tuesday', 22, 'add_aarontuesday'),
(86, 'Can change aaron tuesday', 22, 'change_aarontuesday'),
(87, 'Can delete aaron tuesday', 22, 'delete_aarontuesday'),
(88, 'Can view aaron tuesday', 22, 'view_aarontuesday'),
(89, 'Can add aaron wednesday', 23, 'add_aaronwednesday'),
(90, 'Can change aaron wednesday', 23, 'change_aaronwednesday'),
(91, 'Can delete aaron wednesday', 23, 'delete_aaronwednesday'),
(92, 'Can view aaron wednesday', 23, 'view_aaronwednesday'),
(93, 'Can add ashok friday', 24, 'add_ashokfriday'),
(94, 'Can change ashok friday', 24, 'change_ashokfriday'),
(95, 'Can delete ashok friday', 24, 'delete_ashokfriday'),
(96, 'Can view ashok friday', 24, 'view_ashokfriday'),
(97, 'Can add ashok monday', 25, 'add_ashokmonday'),
(98, 'Can change ashok monday', 25, 'change_ashokmonday'),
(99, 'Can delete ashok monday', 25, 'delete_ashokmonday'),
(100, 'Can view ashok monday', 25, 'view_ashokmonday'),
(101, 'Can add ashok saturday', 26, 'add_ashoksaturday'),
(102, 'Can change ashok saturday', 26, 'change_ashoksaturday'),
(103, 'Can delete ashok saturday', 26, 'delete_ashoksaturday'),
(104, 'Can view ashok saturday', 26, 'view_ashoksaturday'),
(105, 'Can add ashok thursday', 27, 'add_ashokthursday'),
(106, 'Can change ashok thursday', 27, 'change_ashokthursday'),
(107, 'Can delete ashok thursday', 27, 'delete_ashokthursday'),
(108, 'Can view ashok thursday', 27, 'view_ashokthursday'),
(109, 'Can add ashok tuesday', 28, 'add_ashoktuesday'),
(110, 'Can change ashok tuesday', 28, 'change_ashoktuesday'),
(111, 'Can delete ashok tuesday', 28, 'delete_ashoktuesday'),
(112, 'Can view ashok tuesday', 28, 'view_ashoktuesday'),
(113, 'Can add ashok wednesday', 29, 'add_ashokwednesday'),
(114, 'Can change ashok wednesday', 29, 'change_ashokwednesday'),
(115, 'Can delete ashok wednesday', 29, 'delete_ashokwednesday'),
(116, 'Can view ashok wednesday', 29, 'view_ashokwednesday'),
(117, 'Can add lydia friday', 30, 'add_lydiafriday'),
(118, 'Can change lydia friday', 30, 'change_lydiafriday'),
(119, 'Can delete lydia friday', 30, 'delete_lydiafriday'),
(120, 'Can view lydia friday', 30, 'view_lydiafriday'),
(121, 'Can add lydia saturday', 31, 'add_lydiasaturday'),
(122, 'Can change lydia saturday', 31, 'change_lydiasaturday'),
(123, 'Can delete lydia saturday', 31, 'delete_lydiasaturday'),
(124, 'Can view lydia saturday', 31, 'view_lydiasaturday'),
(125, 'Can add lydia thursday', 32, 'add_lydiathursday'),
(126, 'Can change lydia thursday', 32, 'change_lydiathursday'),
(127, 'Can delete lydia thursday', 32, 'delete_lydiathursday'),
(128, 'Can view lydia thursday', 32, 'view_lydiathursday'),
(129, 'Can add lydia tuesday', 33, 'add_lydiatuesday'),
(130, 'Can change lydia tuesday', 33, 'change_lydiatuesday'),
(131, 'Can delete lydia tuesday', 33, 'delete_lydiatuesday'),
(132, 'Can view lydia tuesday', 33, 'view_lydiatuesday'),
(133, 'Can add lydia wednesday', 34, 'add_lydiawednesday'),
(134, 'Can change lydia wednesday', 34, 'change_lydiawednesday'),
(135, 'Can delete lydia wednesday', 34, 'delete_lydiawednesday'),
(136, 'Can view lydia wednesday', 34, 'view_lydiawednesday'),
(137, 'Can add melissa friday', 35, 'add_melissafriday'),
(138, 'Can change melissa friday', 35, 'change_melissafriday'),
(139, 'Can delete melissa friday', 35, 'delete_melissafriday'),
(140, 'Can view melissa friday', 35, 'view_melissafriday'),
(141, 'Can add melissa monday', 36, 'add_melissamonday'),
(142, 'Can change melissa monday', 36, 'change_melissamonday'),
(143, 'Can delete melissa monday', 36, 'delete_melissamonday'),
(144, 'Can view melissa monday', 36, 'view_melissamonday'),
(145, 'Can add melissa saturday', 37, 'add_melissasaturday'),
(146, 'Can change melissa saturday', 37, 'change_melissasaturday'),
(147, 'Can delete melissa saturday', 37, 'delete_melissasaturday'),
(148, 'Can view melissa saturday', 37, 'view_melissasaturday'),
(149, 'Can add melissa thursday', 38, 'add_melissathursday'),
(150, 'Can change melissa thursday', 38, 'change_melissathursday'),
(151, 'Can delete melissa thursday', 38, 'delete_melissathursday'),
(152, 'Can view melissa thursday', 38, 'view_melissathursday'),
(153, 'Can add melissa tuesday', 39, 'add_melissatuesday'),
(154, 'Can change melissa tuesday', 39, 'change_melissatuesday'),
(155, 'Can delete melissa tuesday', 39, 'delete_melissatuesday'),
(156, 'Can view melissa tuesday', 39, 'view_melissatuesday'),
(157, 'Can add melissa wednesday', 40, 'add_melissawednesday'),
(158, 'Can change melissa wednesday', 40, 'change_melissawednesday'),
(159, 'Can delete melissa wednesday', 40, 'delete_melissawednesday'),
(160, 'Can view melissa wednesday', 40, 'view_melissawednesday'),
(161, 'Can add rachana friday', 41, 'add_rachanafriday'),
(162, 'Can change rachana friday', 41, 'change_rachanafriday'),
(163, 'Can delete rachana friday', 41, 'delete_rachanafriday'),
(164, 'Can view rachana friday', 41, 'view_rachanafriday'),
(165, 'Can add rachana monday', 42, 'add_rachanamonday'),
(166, 'Can change rachana monday', 42, 'change_rachanamonday'),
(167, 'Can delete rachana monday', 42, 'delete_rachanamonday'),
(168, 'Can view rachana monday', 42, 'view_rachanamonday'),
(169, 'Can add rachana saturday', 43, 'add_rachanasaturday'),
(170, 'Can change rachana saturday', 43, 'change_rachanasaturday'),
(171, 'Can delete rachana saturday', 43, 'delete_rachanasaturday'),
(172, 'Can view rachana saturday', 43, 'view_rachanasaturday'),
(173, 'Can add rachana thursday', 44, 'add_rachanathursday'),
(174, 'Can change rachana thursday', 44, 'change_rachanathursday'),
(175, 'Can delete rachana thursday', 44, 'delete_rachanathursday'),
(176, 'Can view rachana thursday', 44, 'view_rachanathursday'),
(177, 'Can add rachana tuesday', 45, 'add_rachanatuesday'),
(178, 'Can change rachana tuesday', 45, 'change_rachanatuesday'),
(179, 'Can delete rachana tuesday', 45, 'delete_rachanatuesday'),
(180, 'Can view rachana tuesday', 45, 'view_rachanatuesday'),
(181, 'Can add rachana wednesday', 46, 'add_rachanawednesday'),
(182, 'Can change rachana wednesday', 46, 'change_rachanawednesday'),
(183, 'Can delete rachana wednesday', 46, 'delete_rachanawednesday'),
(184, 'Can view rachana wednesday', 46, 'view_rachanawednesday'),
(185, 'Can add roy friday', 47, 'add_royfriday'),
(186, 'Can change roy friday', 47, 'change_royfriday'),
(187, 'Can delete roy friday', 47, 'delete_royfriday'),
(188, 'Can view roy friday', 47, 'view_royfriday'),
(189, 'Can add roy monday', 48, 'add_roymonday'),
(190, 'Can change roy monday', 48, 'change_roymonday'),
(191, 'Can delete roy monday', 48, 'delete_roymonday'),
(192, 'Can view roy monday', 48, 'view_roymonday'),
(193, 'Can add roy saturday', 49, 'add_roysaturday'),
(194, 'Can change roy saturday', 49, 'change_roysaturday'),
(195, 'Can delete roy saturday', 49, 'delete_roysaturday'),
(196, 'Can view roy saturday', 49, 'view_roysaturday'),
(197, 'Can add roy thursday', 50, 'add_roythursday'),
(198, 'Can change roy thursday', 50, 'change_roythursday'),
(199, 'Can delete roy thursday', 50, 'delete_roythursday'),
(200, 'Can view roy thursday', 50, 'view_roythursday'),
(201, 'Can add roy tuesday', 51, 'add_roytuesday'),
(202, 'Can change roy tuesday', 51, 'change_roytuesday'),
(203, 'Can delete roy tuesday', 51, 'delete_roytuesday'),
(204, 'Can view roy tuesday', 51, 'view_roytuesday'),
(205, 'Can add roy wednesday', 52, 'add_roywednesday'),
(206, 'Can change roy wednesday', 52, 'change_roywednesday'),
(207, 'Can delete roy wednesday', 52, 'delete_roywednesday'),
(208, 'Can view roy wednesday', 52, 'view_roywednesday'),
(209, 'Can add subhash friday', 53, 'add_subhashfriday'),
(210, 'Can change subhash friday', 53, 'change_subhashfriday'),
(211, 'Can delete subhash friday', 53, 'delete_subhashfriday'),
(212, 'Can view subhash friday', 53, 'view_subhashfriday'),
(213, 'Can add subhash monday', 54, 'add_subhashmonday'),
(214, 'Can change subhash monday', 54, 'change_subhashmonday'),
(215, 'Can delete subhash monday', 54, 'delete_subhashmonday'),
(216, 'Can view subhash monday', 54, 'view_subhashmonday'),
(217, 'Can add subhash saturday', 55, 'add_subhashsaturday'),
(218, 'Can change subhash saturday', 55, 'change_subhashsaturday'),
(219, 'Can delete subhash saturday', 55, 'delete_subhashsaturday'),
(220, 'Can view subhash saturday', 55, 'view_subhashsaturday'),
(221, 'Can add subhash thursday', 56, 'add_subhashthursday'),
(222, 'Can change subhash thursday', 56, 'change_subhashthursday'),
(223, 'Can delete subhash thursday', 56, 'delete_subhashthursday'),
(224, 'Can view subhash thursday', 56, 'view_subhashthursday'),
(225, 'Can add subhash tuesday', 57, 'add_subhashtuesday'),
(226, 'Can change subhash tuesday', 57, 'change_subhashtuesday'),
(227, 'Can delete subhash tuesday', 57, 'delete_subhashtuesday'),
(228, 'Can view subhash tuesday', 57, 'view_subhashtuesday'),
(229, 'Can add subhash wednesday', 58, 'add_subhashwednesday'),
(230, 'Can change subhash wednesday', 58, 'change_subhashwednesday'),
(231, 'Can delete subhash wednesday', 58, 'delete_subhashwednesday'),
(232, 'Can view subhash wednesday', 58, 'view_subhashwednesday'),
(233, 'Can add ty wednesday', 59, 'add_tywednesday'),
(234, 'Can change ty wednesday', 59, 'change_tywednesday'),
(235, 'Can delete ty wednesday', 59, 'delete_tywednesday'),
(236, 'Can view ty wednesday', 59, 'view_tywednesday'),
(237, 'Can add ty tuesday', 60, 'add_tytuesday'),
(238, 'Can change ty tuesday', 60, 'change_tytuesday'),
(239, 'Can delete ty tuesday', 60, 'delete_tytuesday'),
(240, 'Can view ty tuesday', 60, 'view_tytuesday'),
(241, 'Can add ty thursday', 61, 'add_tythursday'),
(242, 'Can change ty thursday', 61, 'change_tythursday'),
(243, 'Can delete ty thursday', 61, 'delete_tythursday'),
(244, 'Can view ty thursday', 61, 'view_tythursday'),
(245, 'Can add ty saturday', 62, 'add_tysaturday'),
(246, 'Can change ty saturday', 62, 'change_tysaturday'),
(247, 'Can delete ty saturday', 62, 'delete_tysaturday'),
(248, 'Can view ty saturday', 62, 'view_tysaturday'),
(249, 'Can add ty monday', 63, 'add_tymonday'),
(250, 'Can change ty monday', 63, 'change_tymonday'),
(251, 'Can delete ty monday', 63, 'delete_tymonday'),
(252, 'Can view ty monday', 63, 'view_tymonday'),
(253, 'Can add ty friday', 64, 'add_tyfriday'),
(254, 'Can change ty friday', 64, 'change_tyfriday'),
(255, 'Can delete ty friday', 64, 'delete_tyfriday'),
(256, 'Can view ty friday', 64, 'view_tyfriday'),
(257, 'Can add sy wednesday', 65, 'add_sywednesday'),
(258, 'Can change sy wednesday', 65, 'change_sywednesday'),
(259, 'Can delete sy wednesday', 65, 'delete_sywednesday'),
(260, 'Can view sy wednesday', 65, 'view_sywednesday'),
(261, 'Can add sy tuesday', 66, 'add_sytuesday'),
(262, 'Can change sy tuesday', 66, 'change_sytuesday'),
(263, 'Can delete sy tuesday', 66, 'delete_sytuesday'),
(264, 'Can view sy tuesday', 66, 'view_sytuesday'),
(265, 'Can add sy thursday', 67, 'add_sythursday'),
(266, 'Can change sy thursday', 67, 'change_sythursday'),
(267, 'Can delete sy thursday', 67, 'delete_sythursday'),
(268, 'Can view sy thursday', 67, 'view_sythursday'),
(269, 'Can add sy saturday', 68, 'add_sysaturday'),
(270, 'Can change sy saturday', 68, 'change_sysaturday'),
(271, 'Can delete sy saturday', 68, 'delete_sysaturday'),
(272, 'Can view sy saturday', 68, 'view_sysaturday'),
(273, 'Can add sy monday', 69, 'add_symonday'),
(274, 'Can change sy monday', 69, 'change_symonday'),
(275, 'Can delete sy monday', 69, 'delete_symonday'),
(276, 'Can view sy monday', 69, 'view_symonday'),
(277, 'Can add sy friday', 70, 'add_syfriday'),
(278, 'Can change sy friday', 70, 'change_syfriday'),
(279, 'Can delete sy friday', 70, 'delete_syfriday'),
(280, 'Can view sy friday', 70, 'view_syfriday'),
(281, 'Can add fy wednesday', 71, 'add_fywednesday'),
(282, 'Can change fy wednesday', 71, 'change_fywednesday'),
(283, 'Can delete fy wednesday', 71, 'delete_fywednesday'),
(284, 'Can view fy wednesday', 71, 'view_fywednesday'),
(285, 'Can add fy tuesday', 72, 'add_fytuesday'),
(286, 'Can change fy tuesday', 72, 'change_fytuesday'),
(287, 'Can delete fy tuesday', 72, 'delete_fytuesday'),
(288, 'Can view fy tuesday', 72, 'view_fytuesday'),
(289, 'Can add fy thursday', 73, 'add_fythursday'),
(290, 'Can change fy thursday', 73, 'change_fythursday'),
(291, 'Can delete fy thursday', 73, 'delete_fythursday'),
(292, 'Can view fy thursday', 73, 'view_fythursday'),
(293, 'Can add fy saturday', 74, 'add_fysaturday'),
(294, 'Can change fy saturday', 74, 'change_fysaturday'),
(295, 'Can delete fy saturday', 74, 'delete_fysaturday'),
(296, 'Can view fy saturday', 74, 'view_fysaturday'),
(297, 'Can add fy friday', 75, 'add_fyfriday'),
(298, 'Can change fy friday', 75, 'change_fyfriday'),
(299, 'Can delete fy friday', 75, 'delete_fyfriday'),
(300, 'Can view fy friday', 75, 'view_fyfriday'),
(301, 'Can add role', 76, 'add_role'),
(302, 'Can change role', 76, 'change_role'),
(303, 'Can delete role', 76, 'delete_role'),
(304, 'Can view role', 76, 'view_role'),
(305, 'Can add fy papers', 77, 'add_fypapers'),
(306, 'Can change fy papers', 77, 'change_fypapers'),
(307, 'Can delete fy papers', 77, 'delete_fypapers'),
(308, 'Can view fy papers', 77, 'view_fypapers'),
(309, 'Can add sy papers', 78, 'add_sypapers'),
(310, 'Can change sy papers', 78, 'change_sypapers'),
(311, 'Can delete sy papers', 78, 'delete_sypapers'),
(312, 'Can view sy papers', 78, 'view_sypapers'),
(313, 'Can add sy notes', 79, 'add_synotes'),
(314, 'Can change sy notes', 79, 'change_synotes'),
(315, 'Can delete sy notes', 79, 'delete_synotes'),
(316, 'Can view sy notes', 79, 'view_synotes'),
(317, 'Can add ty notes', 80, 'add_tynotes'),
(318, 'Can change ty notes', 80, 'change_tynotes'),
(319, 'Can delete ty notes', 80, 'delete_tynotes'),
(320, 'Can view ty notes', 80, 'view_tynotes'),
(321, 'Can add fy notes', 81, 'add_fynotes'),
(322, 'Can change fy notes', 81, 'change_fynotes'),
(323, 'Can delete fy notes', 81, 'delete_fynotes'),
(324, 'Can view fy notes', 81, 'view_fynotes'),
(325, 'Can add ty papers', 82, 'add_typapers'),
(326, 'Can change ty papers', 82, 'change_typapers'),
(327, 'Can delete ty papers', 82, 'delete_typapers'),
(328, 'Can view ty papers', 82, 'view_typapers'),
(329, 'Can add notes', 83, 'add_notes'),
(330, 'Can change notes', 83, 'change_notes'),
(331, 'Can delete notes', 83, 'delete_notes'),
(332, 'Can view notes', 83, 'view_notes'),
(333, 'Can add papers', 84, 'add_papers'),
(334, 'Can change papers', 84, 'change_papers'),
(335, 'Can delete papers', 84, 'delete_papers'),
(336, 'Can view papers', 84, 'view_papers');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$zzDJj2tukJYg$1tYbsRxEvUc0mqQ++CYKEi4EjtmJVhvA/IZCNZzZp2E=', '2021-04-24 10:18:56.213258', 1, 'tejas', 'Tejas', 'Powar', 'tejaspowar1402@gmail.com', 1, 1, '2021-04-05 13:01:45.000000'),
(2, 'pbkdf2_sha256$216000$7PcadmS4gc8R$PYS4vPQcghdt84Q79a9zwrz1/XfvZEcQUXBTMVzSrA8=', '2021-04-24 10:52:39.641689', 0, 'tejas_1402', 'Tejas', 'Powar', 'tejasvpowar@gmail.com', 0, 1, '2021-04-05 13:12:09.767662'),
(3, 'pbkdf2_sha256$216000$7j7Q9CdFJB1R$lrdRZ4tj7mZo1JamZreoNBVux5/Rx8ufLdGaRrBHZy8=', '2021-04-19 17:34:35.091512', 0, 'austin', 'Austin', 'Baretto', 'ausbaretto@gmail.com', 0, 1, '2021-04-05 13:29:55.120455'),
(4, 'pbkdf2_sha256$216000$T3ZfFABKxN4t$450akFpg4cJapDwzikB6g+1jc8TYRaq8LVxI8K64COo=', '2021-04-08 14:04:50.044100', 0, 'vivek', 'Vivek', 'Singh', 'vsingh@gmail.com', 0, 1, '2021-04-05 13:30:55.806272'),
(5, 'pbkdf2_sha256$216000$Kar8qGhpTFhH$VovSFt2jmJnaAch4kKplQ9VGIefjN72EKg72ixg2ShE=', '2021-04-24 12:10:30.166623', 0, 'lydia', 'Lydia', 'Fernandes', 'lydia@gmail.com', 0, 1, '2021-04-06 15:52:31.038004'),
(6, 'pbkdf2_sha256$216000$5lKMav9jNA54$4tMwRfs90YbN+ccY3y1Mr8uhWt49/Bd5ofXuRvZrWP4=', '2021-04-07 15:32:40.837284', 0, 'floyd', 'Floyd', 'Gracias', 'floyd@gmail.com', 0, 1, '2021-04-06 15:58:03.331988'),
(7, 'pbkdf2_sha256$216000$pcZOCqpyuahA$kESdJWyPhcJO9497eeNo6UX6TB1+Hj28q4l1Vc2PUkk=', '2021-04-07 10:38:15.113353', 0, 'bingi', 'Ashok', 'Bingi', 'abingi@gmail.com', 0, 1, '2021-04-06 15:58:59.001873'),
(8, 'pbkdf2_sha256$216000$3vROu2d17m4Z$8Lweo7NFDr4hGdAmU4dPhdW1SfbACxuCsF+zUgAf4U8=', '2021-04-06 16:00:39.681837', 0, 'rachana', 'Rachana', 'Pandey', 'rp@gmail.com', 0, 1, '2021-04-06 16:00:23.136824'),
(9, 'pbkdf2_sha256$216000$TYhDWd341Irm$nZtllll6/pCpdcEYfDvbqyml26tWcFku1jW+XSjetlk=', '2021-04-24 10:47:49.134657', 0, 'melissa', 'Melissa', 'Fernandes', 'melissafer@gmail.com', 0, 1, '2021-04-06 16:01:47.906907'),
(10, 'pbkdf2_sha256$216000$b0ddoDKK8sX6$pUxvcU4D1KIVBwgS1KEBPOYX/vLh3Xyj8JXXTw2FF0U=', '2021-04-06 16:03:17.317005', 0, 'subhash', 'Subhash', 'Kumar', 'subhashkumar@gmail.com', 0, 1, '2021-04-06 16:03:13.695485'),
(11, 'pbkdf2_sha256$216000$aKfGZDrDoezf$lFUmvv5wGzwpT27tvvmpZqtvQZ95yDXWstTB6uV0ASs=', '2021-04-24 10:45:14.001908', 0, 'roy', 'Roy', 'Thomas', 'roythomas@gmail.com', 0, 1, '2021-04-06 16:04:34.416346'),
(12, 'pbkdf2_sha256$216000$oboiCBymHHTI$Vg0RH8Gi4o3YKVFTb8qoNnstFzYt1VF+N9qgN5zyQzs=', '2021-04-23 17:39:00.663456', 0, 'aaron', 'Aaron', 'Johns', 'aaron.johns@gmail.com', 0, 1, '2021-04-18 16:14:57.341304'),
(13, 'pbkdf2_sha256$216000$PBnEKpKS23Qj$q6ugbFTp4UTnfHVpHaD3BVOeUmm6G8y8AT+mSR5hiV0=', '2021-04-21 14:33:03.866042', 0, 'Rohan', 'rohan', 'sharma', 'rohan@gmail.com', 0, 1, '2021-04-21 14:32:46.912563');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-04-05 13:03:21.620910', '1', 'tejas', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 13, 1),
(2, '2021-04-06 17:01:08.399590', 'SITS0101', 'SITS0101-Professional Communication Skills', 1, '[{\"added\": {}}]', 4, 1),
(3, '2021-04-06 17:02:21.046406', 'STIS0102', 'STIS0102-Applied Mathematics-1', 1, '[{\"added\": {}}]', 4, 1),
(4, '2021-04-06 17:03:59.550647', 'SITS0505', 'SITS0505-Introduction to AI', 1, '[{\"added\": {}}]', 2, 1),
(5, '2021-04-07 15:43:46.806402', 'SITS0104', 'SITS0104-The Art of Programming', 1, '[{\"added\": {}}]', 4, 1),
(6, '2021-04-18 15:19:07.476624', '1', 'Android Prog. Pracs-8:00-9:00', 1, '[{\"added\": {}}]', 17, 1),
(7, '2021-04-18 15:19:36.468956', '1', 'Android Prog. Pracs-8:00 - 9:00', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 17, 1),
(8, '2021-04-18 15:19:43.740909', '1', 'Android Prog. Pracs-8:00-9:00', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 17, 1),
(9, '2021-04-18 15:23:14.513576', '2', 'Image Processing-11:50am-12:30pm', 1, '[{\"added\": {}}]', 17, 1),
(10, '2021-04-18 15:23:22.881474', '1', 'Android Prog. Pracs-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 17, 1),
(11, '2021-04-18 15:24:18.290178', '3', 'Computer Graphics-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 17, 1),
(12, '2021-04-18 15:24:35.409930', '1', 'Android Prog. Pracs-08:00am-09:00am', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 17, 1),
(13, '2021-04-18 16:06:54.359250', '1', 'C++-8:00-9:00', 1, '[{\"added\": {}}]', 16, 1),
(14, '2021-04-18 16:07:17.542243', '1', 'C++-8:00-9:00', 2, '[{\"changed\": {\"fields\": [\"LydiaStatus\"]}}]', 16, 1),
(15, '2021-04-18 16:12:42.684573', '1', 'C++-8:00-9:00', 3, '', 16, 1),
(16, '2021-04-18 16:13:48.781766', '1', 'C++-8:00am-9:00am', 1, '[{\"added\": {}}]', 42, 1),
(17, '2021-04-18 16:16:40.994625', '1', 'C++-8:00am-9:00am', 1, '[{\"added\": {}}]', 19, 1),
(18, '2021-04-18 16:17:37.251151', '2', 'Cloud Computing-11:00am-11:50am', 1, '[{\"added\": {}}]', 19, 1),
(19, '2021-04-18 16:18:37.301905', '3', 'Modern OS-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 19, 1),
(20, '2021-04-18 16:19:46.671521', '1', 'MPMC-09:00am-11:00am', 1, '[{\"added\": {}}]', 36, 1),
(21, '2021-04-18 16:20:54.211944', '1', 'Applied Maths - II-11:50am-12:30pm', 1, '[{\"added\": {}}]', 25, 1),
(22, '2021-04-18 16:22:08.557892', '1', 'STOR-11:50am-12:30pm', 1, '[{\"added\": {}}]', 48, 1),
(23, '2021-04-18 16:22:53.622020', '2', 'Descriptive Stats-12:30pm-01:30pm', 1, '[{\"added\": {}}]', 48, 1),
(24, '2021-04-18 16:23:56.036338', '2', 'C++-08:00am-09:00am', 1, '[{\"added\": {}}]', 16, 1),
(25, '2021-04-18 16:24:53.653915', '3', 'MPMC-08:00am-11:00am', 1, '[{\"added\": {}}]', 16, 1),
(26, '2021-04-18 16:25:54.268109', '4', 'Applied Maths - II-11:50am-12:30pm', 1, '[{\"added\": {}}]', 16, 1),
(27, '2021-04-18 16:26:50.150183', '5', 'Descriptive Stats-12:30pm-01:30pm', 1, '[{\"added\": {}}]', 16, 1),
(28, '2021-04-18 16:27:14.717326', '6', 'Computer Graphics-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 16, 1),
(29, '2021-04-18 16:34:21.098925', '1', 'MPMC-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 36, 1),
(30, '2021-04-18 16:34:50.350018', '2', 'MPMC-10:00am-11:00am', 1, '[{\"added\": {}}]', 36, 1),
(31, '2021-04-18 16:35:41.750450', '3', 'MPMC-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 16, 1),
(32, '2021-04-18 16:36:02.875843', '7', 'MPMC-10:00am-11:00am', 1, '[{\"added\": {}}]', 16, 1),
(33, '2021-04-18 16:36:29.863575', '7', 'MPMC-10:00am-11:00am', 2, '[]', 16, 1),
(34, '2021-04-18 16:37:22.184127', '7', 'MPMC-10:00am-11:00am', 2, '[]', 16, 1),
(35, '2021-04-19 12:22:35.419179', '7', 'MPMC-10:00am-11:00am', 3, '', 16, 1),
(36, '2021-04-19 12:22:35.424163', '6', 'Computer Graphics-01:30pm-02:30pm', 3, '', 16, 1),
(37, '2021-04-19 12:22:35.427154', '5', 'Descriptive Stats-12:30pm-01:30pm', 3, '', 16, 1),
(38, '2021-04-19 12:22:35.429149', '4', 'Applied Maths - II-11:50am-12:30pm', 3, '', 16, 1),
(39, '2021-04-19 12:22:35.432143', '3', 'MPMC-09:00am-10:00am', 3, '', 16, 1),
(40, '2021-04-19 12:48:36.167354', '8', 'MPMC-09:00am-10:00am', 1, '[{\"added\": {}}]', 16, 1),
(41, '2021-04-19 12:49:53.250027', '9', 'MPMC-10:00am-11:00am', 1, '[{\"added\": {}}]', 16, 1),
(42, '2021-04-19 13:01:57.509954', '10', '--11:50am-12:30pm', 1, '[{\"added\": {}}]', 16, 1),
(43, '2021-04-19 13:02:10.696635', '10', '--11:50am-12:30pm', 2, '[]', 16, 1),
(44, '2021-04-19 13:14:00.568684', '11', 'AM - II-11:50am-12:30pm', 1, '[{\"added\": {}}]', 16, 1),
(45, '2021-04-19 13:14:55.542038', '12', 'DS-12:30pm-01:30pm', 1, '[{\"added\": {}}]', 16, 1),
(46, '2021-04-19 13:18:03.614236', '13', 'CG-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 16, 1),
(47, '2021-04-19 13:18:58.692361', '14', '---02:30pm-03:30pm', 1, '[{\"added\": {}}]', 16, 1),
(48, '2021-04-19 13:19:22.227717', '15', '---03:30pm-04:30pm', 1, '[{\"added\": {}}]', 16, 1),
(49, '2021-04-19 13:22:54.754506', '15', '--03:30pm-04:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 16, 1),
(50, '2021-04-19 13:23:04.891388', '14', '--02:30pm-03:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 16, 1),
(51, '2021-04-19 13:52:11.575019', '1', 'CG-8:00am-9:00am', 1, '[{\"added\": {}}]', 72, 1),
(52, '2021-04-19 13:52:28.239254', '2', 'SPC-09:00am-10:00am', 1, '[{\"added\": {}}]', 72, 1),
(53, '2021-04-19 13:52:49.866827', '3', 'CG-11:00am-11:50am', 1, '[{\"added\": {}}]', 72, 1),
(54, '2021-04-19 13:53:15.799244', '3', 'CG-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 72, 1),
(55, '2021-04-19 13:53:33.000870', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 72, 1),
(56, '2021-04-19 13:54:17.309973', '5', 'C++-11:50am-12:30pm', 1, '[{\"added\": {}}]', 72, 1),
(57, '2021-04-19 13:55:03.255728', '6', 'AM - II-12:30pm-01:30pm', 1, '[{\"added\": {}}]', 72, 1),
(58, '2021-04-19 14:04:08.676773', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 72, 1),
(59, '2021-04-19 14:04:42.848223', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 72, 1),
(60, '2021-04-19 14:08:03.716317', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 72, 1),
(61, '2021-04-19 14:14:56.030764', '1', 'MPMC-8:00am-9:00am', 1, '[{\"added\": {}}]', 71, 1),
(62, '2021-04-19 14:15:14.189911', '2', 'SPC-09:00am-10:00am', 1, '[{\"added\": {}}]', 71, 1),
(63, '2021-04-19 14:15:29.979702', '3', 'MPMC-10:00am-11:00am', 1, '[{\"added\": {}}]', 71, 1),
(64, '2021-04-19 14:16:14.823409', '1', 'CG-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 71, 1),
(65, '2021-04-19 14:16:22.288106', '3', 'CG-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 71, 1),
(66, '2021-04-19 14:16:54.072914', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 71, 1),
(67, '2021-04-19 14:17:24.703962', '1', 'MPMC-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 71, 1),
(68, '2021-04-19 14:17:34.891231', '2', 'MPMC-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 71, 1),
(69, '2021-04-19 14:17:47.106948', '3', 'DS-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 71, 1),
(70, '2021-04-19 14:18:12.312293', '5', 'AM - II-11:50am-12:30pm', 1, '[{\"added\": {}}]', 71, 1),
(71, '2021-04-19 14:18:28.948439', '6', 'CG-12:30pm-01:30pm', 1, '[{\"added\": {}}]', 71, 1),
(72, '2021-04-19 14:18:47.308809', '7', 'C++-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 71, 1),
(73, '2021-04-19 14:19:07.336646', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 71, 1),
(74, '2021-04-19 14:19:28.722183', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 71, 1),
(75, '2021-04-19 14:20:15.426266', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 73, 1),
(76, '2021-04-19 14:20:28.738020', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 73, 1),
(77, '2021-04-19 14:20:41.902451', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 73, 1),
(78, '2021-04-19 14:21:01.734893', '4', '--11:50am-12:30pm', 1, '[{\"added\": {}}]', 73, 1),
(79, '2021-04-19 14:21:16.668224', '4', '--11:00am-11:50am', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 73, 1),
(80, '2021-04-19 14:21:46.203139', '5', 'DS-11:50am-12:30pm', 1, '[{\"added\": {}}]', 73, 1),
(81, '2021-04-19 14:22:01.028172', '6', 'C++-12:30pm-01:30pm', 1, '[{\"added\": {}}]', 73, 1),
(82, '2021-04-19 14:22:28.700939', '7', 'CG-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 73, 1),
(83, '2021-04-19 14:23:09.561668', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 73, 1),
(84, '2021-04-19 14:23:53.011093', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 73, 1),
(85, '2021-04-19 14:24:47.820018', '1', 'C++/MPMC-8:00am-9:00am', 1, '[{\"added\": {}}]', 75, 1),
(86, '2021-04-19 14:25:01.729165', '2', 'C++/MPMC-09:00am-10:00am', 1, '[{\"added\": {}}]', 75, 1),
(87, '2021-04-19 14:25:12.948934', '3', 'C++/MPMC-10:00am-11:00am', 1, '[{\"added\": {}}]', 75, 1),
(88, '2021-04-19 14:25:34.279159', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 75, 1),
(89, '2021-04-19 14:27:31.768995', '5', 'AM - II-11:50am-12:30pm', 1, '[{\"added\": {}}]', 75, 1),
(90, '2021-04-19 14:27:57.840876', '6', 'DS-12:30pm-01:30pm', 1, '[{\"added\": {}}]', 75, 1),
(91, '2021-04-19 14:28:11.999602', '7', 'SPC-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 75, 1),
(92, '2021-04-19 14:28:24.221233', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 75, 1),
(93, '2021-04-19 14:28:36.482916', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 75, 1),
(94, '2021-04-19 14:29:18.817785', '1', 'C++/CG-08:00am-09:00am', 1, '[{\"added\": {}}]', 74, 1),
(95, '2021-04-19 14:29:30.076281', '2', 'C++/CG-09:00am-10:00am', 1, '[{\"added\": {}}]', 74, 1),
(96, '2021-04-19 14:29:45.316147', '3', 'C++/CG-10:00am-11:00am', 1, '[{\"added\": {}}]', 74, 1),
(97, '2021-04-19 14:30:17.751869', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 74, 1),
(98, '2021-04-19 14:30:53.586889', '5', 'AM - II-11:50am-12:30pm', 1, '[{\"added\": {}}]', 74, 1),
(99, '2021-04-19 14:31:06.105996', '6', 'SPC-12:30pm-01:30pm', 1, '[{\"added\": {}}]', 74, 1),
(100, '2021-04-19 14:32:04.022747', '6', 'SPC-11:50am-12:30pm', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 74, 1),
(101, '2021-04-19 14:32:14.382939', '7', '--12:30pm-01:30pm', 1, '[{\"added\": {}}]', 74, 1),
(102, '2021-04-19 14:32:25.931693', '8', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 74, 1),
(103, '2021-04-19 14:32:35.297232', '9', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 74, 1),
(104, '2021-04-19 14:32:52.654374', '10', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 74, 1),
(105, '2021-04-19 14:39:15.860148', '10', '--03:30pm-04:30pm', 3, '', 74, 1),
(106, '2021-04-19 16:40:23.358785', '210302', 'roy', 2, '[]', 6, 1),
(107, '2021-04-19 16:40:55.304857', '210301', 'subhash', 2, '[]', 6, 1),
(108, '2021-04-19 16:41:31.931242', '210105', 'melissa', 2, '[]', 6, 1),
(109, '2021-04-19 16:42:14.686221', '210104', 'rachana', 2, '[]', 6, 1),
(110, '2021-04-19 16:42:49.140685', '210103', 'bingi', 2, '[]', 6, 1),
(111, '2021-04-19 16:42:57.221814', '210102', 'floyd', 3, '', 6, 1),
(112, '2021-04-19 16:43:07.264411', '210101', 'lydia', 2, '[]', 6, 1),
(113, '2021-04-19 16:59:33.300807', '1', 'Fy', 1, '[{\"added\": {}}]', 76, 1),
(114, '2021-04-19 16:59:40.984772', '2', 'Sy', 1, '[{\"added\": {}}]', 76, 1),
(115, '2021-04-19 16:59:48.055523', '3', 'Ty', 1, '[{\"added\": {}}]', 76, 1),
(116, '2021-04-19 16:59:54.624493', '4', 'Prof', 1, '[{\"added\": {}}]', 76, 1),
(117, '2021-04-19 17:00:13.077643', '4', 'Prof', 3, '', 76, 1),
(118, '2021-04-19 17:34:17.261343', '1', 'AP-8:00am-9:00am', 1, '[{\"added\": {}}]', 69, 1),
(119, '2021-04-19 17:43:17.337806', '3', 'Computer Graphics-01:30pm-02:30pm', 3, '', 17, 1),
(120, '2021-04-19 17:43:17.341797', '2', 'Image Processing-11:50am-12:30pm', 3, '', 17, 1),
(121, '2021-04-19 17:43:17.342793', '1', 'Android Prog. Pracs-08:00am-09:00am', 3, '', 17, 1),
(122, '2021-04-19 17:43:48.569123', '4', 'C++-8:00am-9:00am', 1, '[{\"added\": {}}]', 17, 1),
(123, '2021-04-19 18:06:16.674055', '4', 'C++-8:00am-9:00am', 3, '', 17, 1),
(124, '2021-04-19 18:07:15.639064', '5', 'AP-8:00am-9:00am', 1, '[{\"added\": {}}]', 17, 1),
(125, '2021-04-19 18:07:42.054224', '6', 'AP-09:00am-10:00am', 1, '[{\"added\": {}}]', 17, 1),
(126, '2021-04-19 18:25:25.528390', '7', 'None-10:00am-11:00am', 1, '[{\"added\": {}}]', 17, 1),
(127, '2021-04-19 18:25:41.230746', '7', '--10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(128, '2021-04-19 18:26:37.183373', '8', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 17, 1),
(129, '2021-04-19 18:27:44.148217', '9', 'IP & DL-11:50am-12:30pm', 1, '[{\"added\": {}}]', 17, 1),
(130, '2021-04-19 18:28:27.953758', '10', '--12:30pm-01:30pm', 1, '[{\"added\": {}}]', 17, 1),
(131, '2021-04-19 18:28:58.372893', '11', 'CG-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 17, 1),
(132, '2021-04-19 18:29:20.779852', '12', '_-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 17, 1),
(133, '2021-04-19 18:29:31.085431', '13', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 17, 1),
(134, '2021-04-19 18:30:54.399883', '6', 'AP PRAC-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(135, '2021-04-19 18:31:15.129592', '5', 'AP Prac-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(136, '2021-04-19 18:31:23.463222', '6', 'AP Prac-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(137, '2021-04-19 18:33:03.918018', '1', 'CG-8:00am-9:00am', 1, '[{\"added\": {}}]', 33, 1),
(138, '2021-04-19 18:33:34.204469', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 33, 1),
(139, '2021-04-19 18:33:50.591841', '3', 'CG-10:00am-11:00am', 1, '[{\"added\": {}}]', 33, 1),
(140, '2021-04-19 18:34:20.309057', '4', 'IP & DL-11:00am-11:50am', 1, '[{\"added\": {}}]', 33, 1),
(141, '2021-04-19 18:34:35.630249', '5', '--11:50am-12:30pm', 1, '[{\"added\": {}}]', 33, 1),
(142, '2021-04-19 18:34:45.431769', '6', '--12:30pm-01:30pm', 1, '[{\"added\": {}}]', 33, 1),
(143, '2021-04-19 18:35:04.166096', '7', 'AP-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 33, 1),
(144, '2021-04-19 18:35:20.183508', '8', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 33, 1),
(145, '2021-04-19 18:35:30.515631', '9', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 33, 1),
(146, '2021-04-19 18:35:39.462541', '10', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 33, 1),
(147, '2021-04-19 18:36:12.272154', '1', 'AP Prac-08:00am-09:00am', 1, '[{\"added\": {}}]', 34, 1),
(148, '2021-04-19 18:36:26.344537', '2', 'AP Prac-09:00am-10:00am', 1, '[{\"added\": {}}]', 34, 1),
(149, '2021-04-19 18:36:36.993200', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 34, 1),
(150, '2021-04-19 18:36:55.849510', '4', 'AP-11:00am-11:50am', 1, '[{\"added\": {}}]', 34, 1),
(151, '2021-04-19 18:37:08.642088', '5', '--11:50am-12:30pm', 1, '[{\"added\": {}}]', 34, 1),
(152, '2021-04-19 18:37:24.457841', '6', 'CG-12:30pm-01:30pm', 1, '[{\"added\": {}}]', 34, 1),
(153, '2021-04-19 18:37:36.165444', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 34, 1),
(154, '2021-04-19 18:37:45.019868', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 34, 1),
(155, '2021-04-19 18:37:52.853381', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 34, 1),
(156, '2021-04-19 18:38:15.115803', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 32, 1),
(157, '2021-04-19 18:38:24.345155', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 32, 1),
(158, '2021-04-19 18:38:58.611977', '3', 'CG-10:00am-11:00am', 1, '[{\"added\": {}}]', 32, 1),
(159, '2021-04-19 18:39:26.383012', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 32, 1),
(160, '2021-04-19 18:39:35.521305', '5', '--11:50am-12:30pm', 1, '[{\"added\": {}}]', 32, 1),
(161, '2021-04-19 18:39:43.586866', '6', '--12:30pm-01:30pm', 1, '[{\"added\": {}}]', 32, 1),
(162, '2021-04-19 18:40:01.519732', '7', 'IP & DL-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 32, 1),
(163, '2021-04-19 18:40:14.857688', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 32, 1),
(164, '2021-04-19 18:40:25.075311', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 32, 1),
(165, '2021-04-19 18:40:59.437589', '1', 'DS Prac-08:00am-09:00am', 1, '[{\"added\": {}}]', 30, 1),
(166, '2021-04-19 18:41:13.600658', '2', 'DS Prac-09:00am-10:00am', 1, '[{\"added\": {}}]', 30, 1),
(167, '2021-04-19 18:41:24.879756', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 30, 1),
(168, '2021-04-19 18:41:33.422211', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 30, 1),
(169, '2021-04-19 18:42:51.270337', '5', 'AP-11:50am-12:30pm', 1, '[{\"added\": {}}]', 30, 1),
(170, '2021-04-19 18:43:02.815473', '6', '--12:30pm-01:30pm', 1, '[{\"added\": {}}]', 30, 1),
(171, '2021-04-19 18:43:11.185215', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 30, 1),
(172, '2021-04-19 18:43:19.619359', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 30, 1),
(173, '2021-04-19 18:43:29.845614', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 30, 1),
(174, '2021-04-19 18:44:06.145360', '1', 'CG Prac-08:00am-09:00am', 1, '[{\"added\": {}}]', 31, 1),
(175, '2021-04-19 18:44:21.362540', '2', 'CG Prac-09:00am-10:00am', 1, '[{\"added\": {}}]', 31, 1),
(176, '2021-04-19 18:44:38.035760', '3', 'CG Prac-10:00am-11:00am', 1, '[{\"added\": {}}]', 31, 1),
(177, '2021-04-19 18:45:04.132520', '4', 'AP-11:00am-11:50am', 1, '[{\"added\": {}}]', 31, 1),
(178, '2021-04-19 18:45:25.176430', '5', 'IP & DL-11:50am-12:30pm', 1, '[{\"added\": {}}]', 31, 1),
(179, '2021-04-19 18:45:39.391168', '6', '--12:30pm-01:30pm', 1, '[{\"added\": {}}]', 31, 1),
(180, '2021-04-19 18:46:05.604848', '7', 'Project-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 31, 1),
(181, '2021-04-19 18:46:27.327039', '8', 'Project-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 31, 1),
(182, '2021-04-19 18:46:41.553477', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 31, 1),
(183, '2021-04-19 18:47:40.039372', '10', '--03:30pm-04:30pm', 3, '', 33, 1),
(184, '2021-04-19 18:48:12.786531', '8', '--02:30pm-03:30pm', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 33, 1),
(185, '2021-04-19 18:48:21.267001', '9', '--03:30pm-04:30pm', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 33, 1),
(186, '2021-04-19 18:51:57.761423', '6', 'AP Prac-09:00am-10:00am', 2, '[]', 17, 1),
(187, '2021-04-20 12:14:39.466973', '5', 'AP Prac-8:00am-9:00am', 2, '[]', 17, 1),
(188, '2021-04-20 12:14:45.620947', '6', 'AP Prac-09:00am-10:00am', 2, '[]', 17, 1),
(189, '2021-04-20 12:24:25.067151', '11', 'CG-01:30pm-02:30pm', 2, '[]', 17, 1),
(190, '2021-04-20 12:25:25.162755', '11', 'CG-01:30pm-02:30pm', 2, '[]', 17, 1),
(191, '2021-04-20 12:29:18.656384', '17', 'None-None', 3, '', 17, 1),
(192, '2021-04-20 12:29:18.660983', '16', 'None-None', 3, '', 17, 1),
(193, '2021-04-20 12:29:18.663986', '15', 'None-None', 3, '', 17, 1),
(194, '2021-04-20 12:29:18.666747', '14', 'None-None', 3, '', 17, 1),
(195, '2021-04-20 12:29:36.982068', '6', 'AP-Prac-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(196, '2021-04-20 12:29:44.792344', '5', 'AP-Prac-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(197, '2021-04-20 12:29:59.647859', '9', 'IP&DL-11:50am-12:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(198, '2021-04-20 12:30:10.256744', '12', '--02:30pm-03:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(199, '2021-04-20 12:31:27.348534', '11', 'CG-01:30pm-02:30pm', 2, '[]', 17, 1),
(200, '2021-04-20 12:31:37.895322', '13', '--03:30pm-04:30pm', 2, '[]', 17, 1),
(201, '2021-04-20 12:34:31.157982', '5', 'AP_Prac-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(202, '2021-04-20 12:34:40.505804', '6', 'AP_Prac-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(203, '2021-04-20 12:35:50.585383', '5', 'ApPractical-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(204, '2021-04-20 12:35:55.675614', '5', 'ApPractical-8:00am-9:00am', 2, '[]', 17, 1),
(205, '2021-04-20 12:36:12.773032', '6', 'ApPractical-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(206, '2021-04-20 12:36:32.722407', '5', 'IP&DL-11:50am-12:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 31, 1),
(207, '2021-04-20 12:38:51.413181', '11', 'C G-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(208, '2021-04-20 12:39:27.954715', '11', 'CG-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(209, '2021-04-20 12:39:35.106416', '9', 'IP & DL-11:50am-12:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(210, '2021-04-20 12:39:49.321525', '6', 'AP Prac-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(211, '2021-04-20 12:40:04.324029', '5', 'AP Prac-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(212, '2021-04-20 12:40:12.101614', '5', 'AP-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(213, '2021-04-20 12:41:37.357135', '5', 'AP Prac-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(214, '2021-04-20 12:41:48.120978', '6', 'AP Prac-09:00am-10:00am', 2, '[]', 17, 1),
(215, '2021-04-20 12:42:18.832307', '5', 'IP & DL-11:50am-12:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 31, 1),
(216, '2021-04-20 12:42:25.844882', '5', 'IP & DL-11:50am-12:30pm', 2, '[]', 31, 1),
(217, '2021-04-20 12:46:24.960393', '5', 'AP PRAC-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(218, '2021-04-20 12:46:48.048771', '5', 'AP Prac-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(219, '2021-04-20 12:59:51.858127', '6', 'AP Prac 1-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(220, '2021-04-20 12:59:59.379571', '5', 'AP Prac 1-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(221, '2021-04-20 13:00:06.230028', '6', 'AP Prac 2-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(222, '2021-04-20 13:00:15.871550', '5', 'AP Prac I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(223, '2021-04-20 13:00:23.510591', '6', 'AP Prac II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 17, 1),
(224, '2021-04-20 13:37:53.426442', '1', 'CG I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 33, 1),
(225, '2021-04-20 13:38:02.316799', '3', 'CG II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 33, 1),
(226, '2021-04-20 13:38:30.601323', '1', 'AP Prac I-08:00am-09:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 34, 1),
(227, '2021-04-20 13:38:37.348681', '2', 'AP Prac II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 34, 1),
(228, '2021-04-20 13:39:10.902247', '1', 'DS Prac I-08:00am-09:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 30, 1),
(229, '2021-04-20 13:39:17.548338', '2', 'DS Prac II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 30, 1),
(230, '2021-04-20 13:39:36.971144', '1', 'CG Prac I-08:00am-09:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 31, 1),
(231, '2021-04-20 13:39:43.287780', '2', 'CG Prac II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 31, 1),
(232, '2021-04-20 13:39:49.490400', '3', 'CG Prac III-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 31, 1),
(233, '2021-04-20 13:39:59.620344', '7', 'Project I-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 31, 1),
(234, '2021-04-20 13:40:05.331599', '8', 'Project II-02:30pm-03:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 31, 1),
(235, '2021-04-20 14:32:51.558741', '5', 'AP Prac I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 17, 1),
(236, '2021-04-20 14:33:09.584072', '11', 'CG-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 17, 1),
(237, '2021-04-20 14:33:16.390298', '9', 'IP & DL-11:50am-12:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 17, 1),
(238, '2021-04-20 14:33:23.902151', '6', 'AP Prac II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 17, 1),
(239, '2021-04-20 14:33:31.859234', '5', 'AP Prac I-8:00am-9:00am', 2, '[]', 17, 1),
(240, '2021-04-20 14:42:09.434544', '13', 'CG-01:30pm-02:30pm', 2, '[]', 16, 1),
(241, '2021-04-20 14:43:20.604795', '13', 'CG-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubTeacher\", \"LydiaStatus\"]}}]', 16, 1),
(242, '2021-04-20 15:46:00.008556', '11', 'CG-01:30pm-02:30pm', 2, '[]', 17, 1),
(243, '2021-04-20 15:51:26.197692', '5', 'AP Prac I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"Class\"]}}]', 17, 1),
(244, '2021-04-20 15:51:35.229339', '11', 'CG-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"Class\"]}}]', 17, 1),
(245, '2021-04-20 15:52:15.242680', '11', 'CG-01:30pm-02:30pm', 2, '[]', 17, 1),
(246, '2021-04-20 15:52:21.461652', '9', 'IP & DL-11:50am-12:30pm', 2, '[{\"changed\": {\"fields\": [\"Class\"]}}]', 17, 1),
(247, '2021-04-20 15:52:29.269499', '6', 'AP Prac II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"Class\"]}}]', 17, 1),
(248, '2021-04-20 15:52:33.390879', '5', 'AP Prac I-8:00am-9:00am', 2, '[]', 17, 1),
(249, '2021-04-20 15:52:42.890613', '11', 'CG-01:30pm-02:30pm', 2, '[]', 17, 1),
(250, '2021-04-20 15:52:52.687855', '13', '--03:30pm-04:30pm', 2, '[]', 17, 1),
(251, '2021-04-20 15:52:59.080263', '13', '--03:30pm-04:30pm', 2, '[]', 17, 1),
(252, '2021-04-20 16:57:08.719926', '11', 'CG-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 17, 1),
(253, '2021-04-20 17:21:25.309058', '11', 'CG-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 17, 1),
(254, '2021-04-20 17:21:44.123252', '12', 'DS-12:30pm-01:30pm', 2, '[{\"changed\": {\"fields\": [\"LydiaStatus\"]}}]', 16, 1),
(255, '2021-04-20 17:21:52.300664', '15', '--03:30pm-04:30pm', 2, '[{\"changed\": {\"fields\": [\"LydiaStatus\"]}}]', 16, 1),
(256, '2021-04-20 17:21:56.755450', '15', '--03:30pm-04:30pm', 2, '[]', 16, 1),
(257, '2021-04-20 17:22:02.855510', '14', '--02:30pm-03:30pm', 2, '[{\"changed\": {\"fields\": [\"LydiaStatus\"]}}]', 16, 1),
(258, '2021-04-20 17:22:06.867343', '12', 'DS-12:30pm-01:30pm', 2, '[]', 16, 1),
(259, '2021-04-20 17:22:12.156515', '12', 'DS-12:30pm-01:30pm', 2, '[]', 16, 1),
(260, '2021-04-20 17:22:16.515983', '12', 'DS-12:30pm-01:30pm', 2, '[]', 16, 1),
(261, '2021-04-20 17:22:22.398050', '12', 'DS-12:30pm-01:30pm', 2, '[]', 16, 1),
(262, '2021-04-20 17:22:27.603878', '11', 'AM - II-11:50am-12:30pm', 2, '[{\"changed\": {\"fields\": [\"LydiaStatus\"]}}]', 16, 1),
(263, '2021-04-20 17:22:35.317648', '10', '--11:50am-12:30pm', 2, '[{\"changed\": {\"fields\": [\"LydiaStatus\"]}}]', 16, 1),
(264, '2021-04-20 17:22:41.463352', '9', 'MPMC-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"LydiaStatus\"]}}]', 16, 1),
(265, '2021-04-20 17:22:49.906106', '8', 'MPMC-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"LydiaStatus\"]}}]', 16, 1),
(266, '2021-04-20 17:33:10.999588', '1', 'CG I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 72, 1),
(267, '2021-04-20 17:33:17.532815', '3', 'CG II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 72, 1),
(268, '2021-04-20 17:33:36.685629', '3', 'CG II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(269, '2021-04-20 17:37:01.430347', '1', 'CG I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(270, '2021-04-20 17:37:40.125534', '3', 'CG2-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 72, 1),
(271, '2021-04-20 17:37:46.458514', '1', 'CG1-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 72, 1),
(272, '2021-04-20 17:38:42.011767', '1', 'CG1-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 33, 1),
(273, '2021-04-20 17:38:49.127840', '3', 'CG2-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 33, 1),
(274, '2021-04-20 17:38:56.712893', '1', 'CG1-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(275, '2021-04-20 17:41:06.559910', '3', 'CG2-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(276, '2021-04-20 17:41:16.552962', '1', 'CG1-8:00am-9:00am', 2, '[]', 33, 1),
(277, '2021-04-20 17:41:21.683942', '3', 'CG2-10:00am-11:00am', 2, '[]', 33, 1),
(278, '2021-04-20 17:42:03.211114', '3', 'CG-II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 72, 1),
(279, '2021-04-20 17:42:12.776296', '1', 'CG-I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 72, 1),
(280, '2021-04-20 17:42:34.954026', '1', 'CG-I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 33, 1),
(281, '2021-04-20 17:42:44.622998', '3', 'CG-II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 33, 1),
(282, '2021-04-20 17:42:50.586313', '1', 'CG-I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(283, '2021-04-20 17:42:56.151670', '3', 'CG-II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(284, '2021-04-20 17:45:22.335689', '1', 'CG-I-8:00am-9:00am', 2, '[]', 72, 1),
(285, '2021-04-20 17:45:33.491066', '1', 'CG-I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(286, '2021-04-20 17:45:40.124746', '3', 'CG-II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(287, '2021-04-20 18:02:44.919663', '1', 'CG-I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(288, '2021-04-20 18:02:51.202396', '3', 'CG-II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(289, '2021-04-20 18:03:42.462288', '1', 'CG-I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(290, '2021-04-20 18:03:49.721922', '3', 'CG-II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(291, '2021-04-20 18:03:56.579499', '1', 'CG-I-8:00am-9:00am', 2, '[]', 33, 1),
(292, '2021-04-20 18:15:57.168544', '1', 'CG-I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(293, '2021-04-20 18:17:02.450555', '3', 'CG-II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(294, '2021-04-20 18:17:14.876033', '3', 'CG-II-10:00am-11:00am', 2, '[]', 33, 1),
(295, '2021-04-20 18:17:36.508731', '3', 'CG-II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(296, '2021-04-20 18:18:17.971074', '1', 'CG-I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(297, '2021-04-20 18:53:20.560405', '3', 'C++ & CG-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 74, 1),
(298, '2021-04-20 18:53:29.202137', '2', 'C++ & CG-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 74, 1),
(299, '2021-04-20 18:53:38.213516', '1', 'C++ & CG-08:00am-09:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 74, 1),
(300, '2021-04-20 18:53:51.895506', '3', 'C++ & MPMC-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 75, 1),
(301, '2021-04-20 18:54:01.263451', '2', 'C++ & MPMC-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 75, 1),
(302, '2021-04-20 18:54:09.603249', '1', 'C++ & MPMC-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 75, 1),
(303, '2021-04-20 18:55:32.392165', '1', 'C++ & MPMC - I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 75, 1),
(304, '2021-04-20 18:55:39.523354', '2', 'C++ & MPMC - II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 75, 1),
(305, '2021-04-20 18:55:47.227054', '3', 'C++ & MPMC - III-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 75, 1),
(306, '2021-04-20 18:56:04.071378', '8', 'MPMC - I-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 16, 1),
(307, '2021-04-20 18:56:11.102999', '9', 'MPMC - II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 16, 1),
(308, '2021-04-20 18:56:28.483061', '1', 'C++ & CG - I-08:00am-09:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 74, 1),
(309, '2021-04-20 18:56:35.903364', '2', 'C++ & CG - II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 74, 1),
(310, '2021-04-20 18:56:46.578346', '3', 'C++ & CG - III-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 74, 1),
(311, '2021-04-20 18:57:21.023131', '1', 'MPMC - I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 71, 1),
(312, '2021-04-20 18:57:27.400516', '2', 'MPMC - II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 71, 1),
(313, '2021-04-20 19:11:28.125218', '11', 'CG-01:30pm-02:30pm', 2, '[]', 17, 1),
(314, '2021-04-20 19:11:33.441785', '9', 'IP & DL-11:50am-12:30pm', 2, '[]', 17, 1),
(315, '2021-04-20 19:11:38.010325', '6', 'AP Prac II-09:00am-10:00am', 2, '[]', 17, 1),
(316, '2021-04-20 19:11:46.476944', '13', 'CG-01:30pm-02:30pm', 2, '[]', 16, 1),
(317, '2021-04-20 19:24:21.048335', '13', 'CG-01:30pm-02:30pm', 2, '[]', 16, 1),
(318, '2021-04-20 20:00:55.256271', '1', 'CG-I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubTeacher\"]}}]', 72, 1),
(319, '2021-04-20 20:01:05.529228', '3', 'CG-II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubTeacher\"]}}]', 72, 1),
(320, '2021-04-20 20:01:37.499058', '6', 'CG-12:30pm-01:30pm', 2, '[{\"changed\": {\"fields\": [\"SubTeacher\"]}}]', 71, 1),
(321, '2021-04-20 20:03:50.195387', '7', 'CG-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubTeacher\"]}}]', 73, 1),
(322, '2021-04-20 20:04:22.134841', '1', 'CG Prac I-08:00am-09:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 31, 1),
(323, '2021-04-20 20:04:27.676991', '2', 'CG Prac II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 31, 1),
(324, '2021-04-20 20:04:31.812314', '3', 'CG Prac III-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 31, 1),
(325, '2021-04-20 20:08:09.786347', '1', 'C++ & CG - I-08:00am-09:00am', 2, '[{\"changed\": {\"fields\": [\"SubTeacher\"]}}]', 74, 1),
(326, '2021-04-20 20:08:15.758988', '2', 'C++ & CG - II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubTeacher\"]}}]', 74, 1),
(327, '2021-04-20 20:08:22.700339', '3', 'C++ & CG - III-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubTeacher\"]}}]', 74, 1),
(328, '2021-04-20 20:10:01.462700', '5', 'AP Prac I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 17, 1),
(329, '2021-04-20 20:10:07.410330', '6', 'AP Prac II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 17, 1),
(330, '2021-04-20 20:10:25.916450', '9', 'IP & DL-11:50am-12:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 17, 1),
(331, '2021-04-20 20:10:38.680717', '11', 'CG-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 17, 1),
(332, '2021-04-20 20:11:11.237252', '1', 'CG-I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(333, '2021-04-20 20:11:19.024461', '3', 'CG-II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(334, '2021-04-20 20:11:50.801078', '2', 'AP Prac II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 34, 1),
(335, '2021-04-20 20:12:13.019375', '1', 'DS Prac I-08:00am-09:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 30, 1),
(336, '2021-04-20 20:13:25.917663', '5', 'AM - II-11:50am-12:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 75, 1),
(337, '2021-04-21 11:04:24.246336', 'SITS0104', 'SITS0104-Art of Programming', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 4, 1),
(338, '2021-04-21 14:03:14.470503', '11', 'CG-01:30pm-02:30pm', 2, '[]', 17, 1),
(339, '2021-04-21 14:03:19.657224', '9', 'IP & DL-11:50am-12:30pm', 2, '[]', 17, 1),
(340, '2021-04-21 14:03:24.664442', '6', 'AP Prac II-09:00am-10:00am', 2, '[]', 17, 1),
(341, '2021-04-21 14:03:49.301275', '4', 'IP & DL-11:00am-11:50am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(342, '2021-04-21 14:04:07.061707', '7', 'AP-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 33, 1),
(343, '2021-04-21 14:04:44.201497', '1', 'AP Prac I-08:00am-09:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 34, 1),
(344, '2021-04-21 14:04:54.636567', '4', 'AP-11:00am-11:50am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 34, 1),
(345, '2021-04-21 14:05:06.366775', '6', 'CG-12:30pm-01:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 34, 1),
(346, '2021-04-21 14:05:58.015852', '3', 'CG-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 32, 1),
(347, '2021-04-21 14:07:15.205429', '7', 'IP & DL-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 32, 1),
(348, '2021-04-21 14:07:53.517849', '2', 'DS Prac II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 30, 1),
(349, '2021-04-21 14:08:03.352711', '5', 'AP-11:50am-12:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 30, 1),
(350, '2021-04-21 14:08:20.291760', '8', 'Project II-02:30pm-03:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 31, 1),
(351, '2021-04-21 14:08:26.612977', '7', 'Project I-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 31, 1),
(352, '2021-04-21 14:08:49.041284', '5', 'IP & DL-11:50am-12:30pm', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 31, 1),
(353, '2021-04-21 14:08:55.471879', '4', 'AP-11:00am-11:50am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 31, 1),
(354, '2021-04-21 14:09:00.110242', '3', 'CG Prac III-10:00am-11:00am', 2, '[]', 31, 1),
(355, '2021-04-22 15:13:05.693523', '1', 'AP-8:00am-9:00am', 2, '[]', 69, 1),
(356, '2021-04-22 15:13:33.449278', '2', 'AP Pracs II-09:00am-10:00am', 1, '[{\"added\": {}}]', 69, 1),
(357, '2021-04-22 15:13:58.450075', '1', 'AP Pracs I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\", \"SubStatus\"]}}]', 69, 1),
(358, '2021-04-22 15:14:12.917021', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 69, 1),
(359, '2021-04-22 15:14:27.784067', '4', 'SE-11:00am-11:50am', 1, '[{\"added\": {}}]', 69, 1),
(360, '2021-04-22 15:14:43.990844', '5', 'STOR-11:50am-12:30am', 1, '[{\"added\": {}}]', 69, 1),
(361, '2021-04-22 15:14:57.500317', '5', 'STOR-11:50am-12:30am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 69, 1),
(362, '2021-04-22 15:15:21.235511', '2', 'C++-08:00am-09:00am', 2, '[]', 16, 1),
(363, '2021-04-22 15:15:31.877601', '5', 'STOR-11:50am-12:30am', 2, '[]', 69, 1),
(364, '2021-04-22 15:15:38.729459', '4', 'SE-11:00am-11:50am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 69, 1),
(365, '2021-04-22 15:15:42.585514', '3', '--10:00am-11:00am', 2, '[]', 69, 1),
(366, '2021-04-22 15:15:48.596106', '2', 'AP Pracs II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 69, 1),
(367, '2021-04-22 15:15:54.130499', '1', 'AP Pracs I-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubStatus\"]}}]', 69, 1),
(368, '2021-04-22 15:16:11.657628', '6', 'CFC-12:30am-01:30pm', 1, '[{\"added\": {}}]', 69, 1),
(369, '2021-04-22 15:16:23.958375', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 69, 1),
(370, '2021-04-22 15:16:36.289311', '8', 'MOS-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 69, 1),
(371, '2021-04-22 15:16:56.966633', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 69, 1),
(372, '2021-04-22 15:17:46.623958', '1', 'STOR & MOS Pracs I-08:00am-09:00am', 1, '[{\"added\": {}}]', 66, 1),
(373, '2021-04-22 15:18:24.455903', '1', 'STOR & MOS Pracs I-08:00am-09:00am', 2, '[{\"changed\": {\"fields\": [\"SubTeacher\"]}}]', 66, 1),
(374, '2021-04-22 15:18:42.198185', '2', 'STOR & MOS Pracs II-09:00am-10:00am', 1, '[{\"added\": {}}]', 66, 1),
(375, '2021-04-22 15:18:51.229356', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 66, 1),
(376, '2021-04-22 15:19:02.540719', '4', 'MOS-11:00am-11:50am', 1, '[{\"added\": {}}]', 66, 1),
(377, '2021-04-22 15:19:14.311591', '5', 'DS-11:50am-12:30am', 1, '[{\"added\": {}}]', 66, 1),
(378, '2021-04-22 15:19:21.976874', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 66, 1),
(379, '2021-04-22 15:19:35.213309', '7', 'AP-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 66, 1),
(380, '2021-04-22 15:19:49.090912', '8', 'SE-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 66, 1),
(381, '2021-04-22 15:19:57.680458', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 66, 1),
(382, '2021-04-22 15:20:18.275076', '1', 'AP Pracs I-08:00am-09:00am', 1, '[{\"added\": {}}]', 65, 1),
(383, '2021-04-22 15:20:28.587942', '2', 'AP Pracs II-09:00am-10:00am', 1, '[{\"added\": {}}]', 65, 1),
(384, '2021-04-22 15:20:36.463112', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 65, 1),
(385, '2021-04-22 15:20:49.369665', '4', 'AP-11:00am-11:50am', 1, '[{\"added\": {}}]', 65, 1),
(386, '2021-04-22 15:21:01.523299', '5', 'STOR-11:50am-12:30am', 1, '[{\"added\": {}}]', 65, 1),
(387, '2021-04-22 15:21:11.714348', '6', 'CFC-12:30am-01:30pm', 1, '[{\"added\": {}}]', 65, 1),
(388, '2021-04-22 15:21:20.970001', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 65, 1),
(389, '2021-04-22 15:21:33.691542', '8', 'DS-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 65, 1),
(390, '2021-04-22 15:21:51.292255', '9', 'DS II-03:30pm-04:30pm', 1, '[{\"added\": {}}]', 65, 1),
(391, '2021-04-22 15:21:57.316209', '8', 'DS I-02:30pm-03:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 65, 1),
(392, '2021-04-22 15:22:25.897906', '1', 'CFC-08:00am-09:00am', 1, '[{\"added\": {}}]', 67, 1),
(393, '2021-04-22 15:22:43.510951', '2', 'DS & MOS Pracs I-09:00am-10:00am', 1, '[{\"added\": {}}]', 67, 1),
(394, '2021-04-22 15:23:03.967233', '3', 'DS & MOS Pracs II-10:00am-11:00am', 1, '[{\"added\": {}}]', 67, 1),
(395, '2021-04-22 15:23:17.591731', '4', 'DS-11:00am-11:50am', 1, '[{\"added\": {}}]', 67, 1),
(396, '2021-04-22 15:23:32.405434', '5', 'MOS-11:50am-12:30am', 1, '[{\"added\": {}}]', 67, 1),
(397, '2021-04-22 15:23:40.312355', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 67, 1),
(398, '2021-04-22 15:23:52.082794', '7', 'STOR-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 67, 1),
(399, '2021-04-22 15:24:08.148990', '8', 'SE-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 67, 1),
(400, '2021-04-22 15:24:17.918061', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 67, 1),
(401, '2021-04-22 15:25:43.891867', '1', 'STOR & DS Pracs I-08:00am-09:00am', 1, '[{\"added\": {}}]', 70, 1),
(402, '2021-04-22 15:25:59.897906', '2', 'STOR & DS Pracs II-09:00am-10:00am', 1, '[{\"added\": {}}]', 70, 1),
(403, '2021-04-22 15:26:08.445075', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 70, 1),
(404, '2021-04-22 15:26:19.624365', '4', 'AP-11:00am-11:50am', 1, '[{\"added\": {}}]', 70, 1),
(405, '2021-04-22 15:26:35.225780', '5', 'SE-11:50am-12:30am', 1, '[{\"added\": {}}]', 70, 1),
(406, '2021-04-22 15:26:43.230658', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 70, 1),
(407, '2021-04-22 15:26:57.106938', '7', 'MOS I-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 70, 1),
(408, '2021-04-22 15:27:10.278933', '8', 'MOS II-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 70, 1),
(409, '2021-04-22 15:27:20.491842', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 70, 1),
(410, '2021-04-22 15:29:33.700587', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 68, 1),
(411, '2021-04-22 15:29:40.155316', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 68, 1),
(412, '2021-04-22 15:29:46.352378', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 68, 1),
(413, '2021-04-22 15:29:59.913166', '4', 'AP-11:00am-11:50am', 1, '[{\"added\": {}}]', 68, 1),
(414, '2021-04-22 15:30:13.862910', '5', 'STOR-11:50am-12:30am', 1, '[{\"added\": {}}]', 68, 1),
(415, '2021-04-22 15:30:24.183358', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 68, 1),
(416, '2021-04-22 15:30:35.432921', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 68, 1),
(417, '2021-04-22 15:30:41.923326', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 68, 1),
(418, '2021-04-22 15:30:50.288689', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 68, 1),
(419, '2021-04-22 15:32:01.321179', '1', 'AJ & BD Pracs i-08:00am-09:00am', 1, '[{\"added\": {}}]', 63, 1),
(420, '2021-04-22 15:32:20.529182', '2', 'AJ & BD Pracs II-09:00am-10:00am', 1, '[{\"added\": {}}]', 63, 1),
(421, '2021-04-22 15:32:25.940315', '1', 'AJ & BD Pracs I-08:00am-09:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 63, 1),
(422, '2021-04-22 15:33:02.923031', '3', 'AJ & BD Pracs III-10:00am-11:00am', 1, '[{\"added\": {}}]', 63, 1),
(423, '2021-04-22 15:33:19.798352', '4', 'Cloud-11:00am-11:50am', 1, '[{\"added\": {}}]', 63, 1),
(424, '2021-04-22 15:33:39.763363', '5', 'IP-11:50am-12:30am', 1, '[{\"added\": {}}]', 63, 1),
(425, '2021-04-22 15:33:51.455022', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 63, 1),
(426, '2021-04-22 15:34:28.109227', '7', 'Adv. Java-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 63, 1),
(427, '2021-04-22 15:34:38.305473', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 63, 1),
(428, '2021-04-22 15:34:44.474310', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 63, 1),
(429, '2021-04-22 15:35:30.098400', '1', 'AJ Pracs I-08:00am-09:00am', 1, '[{\"added\": {}}]', 60, 1),
(430, '2021-04-22 15:35:48.529065', '2', 'AJ Pracs II-09:00am-10:00am', 1, '[{\"added\": {}}]', 60, 1),
(431, '2021-04-22 15:36:01.070291', '3', 'AJ Pracs III-10:00am-11:00am', 1, '[{\"added\": {}}]', 60, 1),
(432, '2021-04-22 15:36:18.558363', '4', 'IP-11:00am-11:50am', 1, '[{\"added\": {}}]', 60, 1),
(433, '2021-04-22 15:36:38.360211', '5', 'ST-11:50am-12:30am', 1, '[{\"added\": {}}]', 60, 1),
(434, '2021-04-22 15:36:44.966212', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 60, 1),
(435, '2021-04-22 15:36:59.570415', '7', 'Cloud-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 60, 1),
(436, '2021-04-22 15:37:11.053233', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 60, 1),
(437, '2021-04-22 15:37:17.687527', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 60, 1),
(438, '2021-04-22 15:37:50.324639', '1', 'BD Pracs I-08:00am-09:00am', 1, '[{\"added\": {}}]', 59, 1),
(439, '2021-04-22 15:38:03.852255', '2', 'BD Pracs II-09:00am-10:00am', 1, '[{\"added\": {}}]', 59, 1),
(440, '2021-04-22 15:38:16.149404', '3', 'BD Pracs III-10:00am-11:00am', 1, '[{\"added\": {}}]', 59, 1),
(441, '2021-04-22 15:39:03.032652', '4', 'Cloud-11:00am-11:50am', 1, '[{\"added\": {}}]', 59, 1),
(442, '2021-04-22 15:39:15.947477', '5', 'Adv. Java-11:50am-12:30am', 1, '[{\"added\": {}}]', 59, 1),
(443, '2021-04-22 15:39:29.243312', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 59, 1),
(444, '2021-04-22 15:39:36.599342', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 59, 1),
(445, '2021-04-22 15:39:43.869541', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 59, 1),
(446, '2021-04-22 15:39:52.640359', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 59, 1),
(447, '2021-04-22 15:40:18.070188', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 61, 1),
(448, '2021-04-22 15:40:23.183392', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 61, 1),
(449, '2021-04-22 15:40:28.757317', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 61, 1),
(450, '2021-04-22 15:40:42.741512', '4', 'ST-11:00am-11:50am', 1, '[{\"added\": {}}]', 61, 1),
(451, '2021-04-22 15:40:56.136640', '5', 'Adv. Java-12:30am-01:30pm', 1, '[{\"added\": {}}]', 61, 1),
(452, '2021-04-22 15:41:16.492453', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 61, 1),
(453, '2021-04-22 15:41:26.639254', '6', '--01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 61, 1),
(454, '2021-04-22 15:41:41.646358', '5', 'Adv. Java-11:50am-12:30am', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 61, 1),
(455, '2021-04-22 15:41:47.388309', '6', '--12:30am-01:30pm', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 61, 1),
(456, '2021-04-22 15:42:06.339398', '7', 'IP-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 61, 1),
(457, '2021-04-22 15:42:19.592393', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 61, 1),
(458, '2021-04-22 15:42:29.169670', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 61, 1),
(459, '2021-04-22 15:44:16.039307', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 64, 1),
(460, '2021-04-22 15:44:21.759683', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 64, 1),
(461, '2021-04-22 15:44:27.328400', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 64, 1),
(462, '2021-04-22 15:44:44.065753', '4', 'ST-11:00am-11:50am', 1, '[{\"added\": {}}]', 64, 1),
(463, '2021-04-22 15:45:01.697790', '5', 'Cloud-11:50am-12:30am', 1, '[{\"added\": {}}]', 64, 1),
(464, '2021-04-22 15:45:15.767298', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 64, 1),
(465, '2021-04-22 15:45:46.049784', '7', 'Adv. Java-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 64, 1),
(466, '2021-04-22 15:46:02.023519', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 64, 1),
(467, '2021-04-22 15:46:12.328606', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 64, 1),
(468, '2021-04-22 15:46:28.797516', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 62, 1),
(469, '2021-04-22 15:46:36.058768', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 62, 1),
(470, '2021-04-22 15:46:42.292370', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 62, 1),
(471, '2021-04-22 15:47:00.220728', '4', 'ST-11:00am-11:50am', 1, '[{\"added\": {}}]', 62, 1),
(472, '2021-04-22 15:48:24.468552', '5', 'IP-12:30am-01:30pm', 1, '[{\"added\": {}}]', 62, 1),
(473, '2021-04-22 15:48:38.629525', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 62, 1),
(474, '2021-04-22 15:48:47.494568', '5', 'IP-11:50am-12:30am', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 62, 1),
(475, '2021-04-22 15:49:16.090803', '7', 'Project-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 62, 1),
(476, '2021-04-22 15:49:35.282775', '8', 'Project-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 62, 1),
(477, '2021-04-22 15:49:54.980892', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 62, 1),
(478, '2021-04-22 15:50:05.309656', '7', 'Project I-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 62, 1),
(479, '2021-04-22 15:50:23.448959', '8', 'Project II-02:30pm-03:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 62, 1),
(480, '2021-04-22 18:30:15.395055', '3', 'Modern OS-02:30pm-03:30pm', 3, '', 19, 1),
(481, '2021-04-22 18:30:15.399046', '2', 'Cloud Computing-11:00am-11:50am', 3, '', 19, 1),
(482, '2021-04-22 18:31:13.090629', '1', 'Applied Maths - II-11:50am-12:30pm', 3, '', 25, 1),
(483, '2021-04-22 18:31:23.461603', '2', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 25, 1),
(484, '2021-04-22 18:31:32.033294', '3', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 25, 1),
(485, '2021-04-22 18:31:41.082864', '4', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 25, 1);
INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(486, '2021-04-22 18:32:02.298186', '5', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 25, 1),
(487, '2021-04-22 18:32:30.274121', '6', 'AM II-11:50am-12:30am', 1, '[{\"added\": {}}]', 25, 1),
(488, '2021-04-22 18:32:38.187096', '7', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 25, 1),
(489, '2021-04-22 18:32:47.030230', '8', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 25, 1),
(490, '2021-04-22 18:32:56.297123', '9', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 25, 1),
(491, '2021-04-22 18:33:05.433950', '10', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 25, 1),
(492, '2021-04-22 18:33:56.312610', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 28, 1),
(493, '2021-04-22 18:34:03.667112', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 28, 1),
(494, '2021-04-22 18:34:10.738618', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 28, 1),
(495, '2021-04-22 18:34:18.451818', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 28, 1),
(496, '2021-04-22 18:34:29.447937', '5', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 28, 1),
(497, '2021-04-22 18:34:47.081511', '6', 'AM II-12:30am-01:30pm', 1, '[{\"added\": {}}]', 28, 1),
(498, '2021-04-22 18:35:02.993957', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 28, 1),
(499, '2021-04-22 18:35:13.329925', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 28, 1),
(500, '2021-04-22 18:35:22.390834', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 28, 1),
(501, '2021-04-22 18:35:34.637378', '6', 'AM II-11:50am-12:30am', 2, '[{\"changed\": {\"fields\": [\"Uname\"]}}]', 25, 1),
(502, '2021-04-22 18:36:00.301814', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 29, 1),
(503, '2021-04-22 18:36:10.912062', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 29, 1),
(504, '2021-04-22 18:36:20.697193', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 29, 1),
(505, '2021-04-22 18:36:41.982476', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 29, 1),
(506, '2021-04-22 18:36:55.694097', '5', 'AM II-11:50am-12:30am', 1, '[{\"added\": {}}]', 29, 1),
(507, '2021-04-22 18:37:05.031426', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 29, 1),
(508, '2021-04-22 18:37:14.096537', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 29, 1),
(509, '2021-04-22 18:37:24.284110', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 29, 1),
(510, '2021-04-22 18:37:33.248551', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 29, 1),
(511, '2021-04-22 18:37:53.414115', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 27, 1),
(512, '2021-04-22 18:38:00.990182', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 27, 1),
(513, '2021-04-22 18:38:08.965341', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 27, 1),
(514, '2021-04-22 18:38:16.797290', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 27, 1),
(515, '2021-04-22 18:38:25.562293', '5', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 27, 1),
(516, '2021-04-22 18:38:33.776147', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 27, 1),
(517, '2021-04-22 18:38:43.557145', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 27, 1),
(518, '2021-04-22 18:38:55.233470', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 27, 1),
(519, '2021-04-22 18:39:04.564151', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 27, 1),
(520, '2021-04-22 18:42:29.471817', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 24, 1),
(521, '2021-04-22 18:42:36.301147', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 24, 1),
(522, '2021-04-22 18:42:44.683430', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 24, 1),
(523, '2021-04-22 18:42:55.225700', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 24, 1),
(524, '2021-04-22 18:43:09.937558', '5', 'AM II-11:50am-12:30am', 1, '[{\"added\": {}}]', 24, 1),
(525, '2021-04-22 18:43:20.552597', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 24, 1),
(526, '2021-04-22 18:43:30.970829', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 24, 1),
(527, '2021-04-22 18:43:39.292961', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 24, 1),
(528, '2021-04-22 18:43:48.698514', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 24, 1),
(529, '2021-04-22 18:44:03.925335', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 26, 1),
(530, '2021-04-22 18:44:13.579276', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 26, 1),
(531, '2021-04-22 18:44:22.325069', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 26, 1),
(532, '2021-04-22 18:44:31.152370', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 26, 1),
(533, '2021-04-22 18:44:43.601045', '5', 'AM II-11:50am-12:30am', 1, '[{\"added\": {}}]', 26, 1),
(534, '2021-04-22 18:44:51.889600', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 26, 1),
(535, '2021-04-22 18:45:00.749141', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 26, 1),
(536, '2021-04-22 18:45:11.081735', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 26, 1),
(537, '2021-04-22 18:45:20.483011', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 26, 1),
(538, '2021-04-22 18:55:59.792747', '2', 'MPMC-10:00am-11:00am', 3, '', 36, 1),
(539, '2021-04-22 18:55:59.796792', '1', 'MPMC-09:00am-10:00am', 3, '', 36, 1),
(540, '2021-04-22 18:56:10.344823', '3', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 36, 1),
(541, '2021-04-22 18:56:56.272228', '4', 'MPMC Prac I-09:00am-10:00am', 1, '[{\"added\": {}}]', 36, 1),
(542, '2021-04-22 18:57:13.297225', '5', 'MPMC Prac II-10:00am-11:00am', 1, '[{\"added\": {}}]', 36, 1),
(543, '2021-04-22 18:57:29.258614', '6', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 36, 1),
(544, '2021-04-22 18:57:37.752909', '7', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 36, 1),
(545, '2021-04-22 18:57:46.871601', '8', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 36, 1),
(546, '2021-04-22 18:57:55.193575', '9', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 36, 1),
(547, '2021-04-22 18:58:10.047386', '5', 'MPMC II-10:00am-11:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 36, 1),
(548, '2021-04-22 18:58:18.219356', '4', 'MPMC I-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 36, 1),
(549, '2021-04-22 18:58:28.781520', '10', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 36, 1),
(550, '2021-04-22 18:58:38.296804', '11', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 36, 1),
(551, '2021-04-22 18:58:55.336725', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 39, 1),
(552, '2021-04-22 18:59:04.515614', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 39, 1),
(553, '2021-04-22 18:59:13.689385', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 39, 1),
(554, '2021-04-22 18:59:22.085667', '4', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 39, 1),
(555, '2021-04-22 18:59:34.124792', '4', '--11:00am-11:50am', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 39, 1),
(556, '2021-04-22 18:59:43.310581', '5', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 39, 1),
(557, '2021-04-22 18:59:51.527286', '6', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 39, 1),
(558, '2021-04-22 19:00:00.152575', '6', '--12:30am-01:30pm', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 39, 1),
(559, '2021-04-22 19:00:08.403926', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 39, 1),
(560, '2021-04-22 19:00:17.373091', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 39, 1),
(561, '2021-04-22 19:00:26.864533', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 39, 1),
(562, '2021-04-22 19:01:00.933445', '1', 'MPMC I-08:00am-09:00am', 1, '[{\"added\": {}}]', 40, 1),
(563, '2021-04-22 19:01:21.523592', '2', 'MPMC II-09:00am-10:00am', 1, '[{\"added\": {}}]', 40, 1),
(564, '2021-04-22 19:01:32.218497', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 40, 1),
(565, '2021-04-22 19:01:40.070221', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 40, 1),
(566, '2021-04-22 19:01:49.777302', '5', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 40, 1),
(567, '2021-04-22 19:01:58.122139', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 40, 1),
(568, '2021-04-22 19:02:08.550978', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 40, 1),
(569, '2021-04-22 19:02:16.000811', '8', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 40, 1),
(570, '2021-04-22 19:02:25.454735', '8', '--02:30pm-03:30pm', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 40, 1),
(571, '2021-04-22 19:02:35.947196', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 40, 1),
(572, '2021-04-22 19:02:59.020695', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 38, 1),
(573, '2021-04-22 19:03:10.756814', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 38, 1),
(574, '2021-04-22 19:03:20.291834', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 38, 1),
(575, '2021-04-22 19:03:30.315930', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 38, 1),
(576, '2021-04-22 19:03:40.035901', '5', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 38, 1),
(577, '2021-04-22 19:03:48.210659', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 38, 1),
(578, '2021-04-22 19:03:57.631647', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 38, 1),
(579, '2021-04-22 19:04:07.534811', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 38, 1),
(580, '2021-04-22 19:04:16.809177', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 38, 1),
(581, '2021-04-22 19:05:28.273093', '1', 'MPMC Prac I-08:00am-09:00am', 1, '[{\"added\": {}}]', 35, 1),
(582, '2021-04-22 19:05:43.729615', '2', 'MPMC Prac II-09:00am-10:00am', 1, '[{\"added\": {}}]', 35, 1),
(583, '2021-04-22 19:05:58.610853', '3', 'MPMC Prac III-10:00am-11:00am', 1, '[{\"added\": {}}]', 35, 1),
(584, '2021-04-22 19:06:13.192735', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 35, 1),
(585, '2021-04-22 19:06:23.216220', '5', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 35, 1),
(586, '2021-04-22 19:06:31.879586', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 35, 1),
(587, '2021-04-22 19:06:41.657898', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 35, 1),
(588, '2021-04-22 19:06:57.470328', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 35, 1),
(589, '2021-04-22 19:07:07.735985', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 35, 1),
(590, '2021-04-22 19:07:38.463503', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 37, 1),
(591, '2021-04-22 19:07:46.094212', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 37, 1),
(592, '2021-04-22 19:07:55.025058', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 37, 1),
(593, '2021-04-22 19:08:06.145529', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 37, 1),
(594, '2021-04-22 19:08:15.315397', '5', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 37, 1),
(595, '2021-04-22 19:08:23.400639', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 37, 1),
(596, '2021-04-22 19:08:34.292398', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 37, 1),
(597, '2021-04-22 19:08:42.781604', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 37, 1),
(598, '2021-04-22 19:08:52.487706', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 37, 1),
(599, '2021-04-23 09:29:17.989731', '2', 'Descriptive Stats-12:30pm-01:30pm', 3, '', 48, 1),
(600, '2021-04-23 09:29:17.998706', '1', 'STOR-11:50am-12:30pm', 3, '', 48, 1),
(601, '2021-04-23 09:29:39.044236', '3', 'Big Data Pracs I-08:00am-09:00am', 1, '[{\"added\": {}}]', 48, 1),
(602, '2021-04-23 09:30:02.612176', '4', 'Big Data Pracs II-09:00am-10:00am', 1, '[{\"added\": {}}]', 48, 1),
(603, '2021-04-23 09:30:17.898186', '3', 'BD Pracs I-08:00am-09:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 48, 1),
(604, '2021-04-23 09:30:27.107416', '4', 'BD Pracs II-09:00am-10:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 48, 1),
(605, '2021-04-23 09:30:40.289332', '5', 'BD Pracs III-10:00am-11:00am', 1, '[{\"added\": {}}]', 48, 1),
(606, '2021-04-23 09:30:55.393224', '6', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 48, 1),
(607, '2021-04-23 09:31:21.245254', '7', 'STOR-11:50am-12:30am', 1, '[{\"added\": {}}]', 48, 1),
(608, '2021-04-23 09:31:36.582243', '8', 'DS-12:30am-01:30pm', 1, '[{\"added\": {}}]', 48, 1),
(609, '2021-04-23 09:31:41.001352', '7', 'STOR-11:50am-12:30am', 2, '[]', 48, 1),
(610, '2021-04-23 09:31:52.238138', '9', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 48, 1),
(611, '2021-04-23 09:32:09.160423', '10', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 48, 1),
(612, '2021-04-23 09:32:19.167579', '11', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 48, 1),
(613, '2021-04-23 09:32:51.466557', '1', 'STOR Pracs I-08:00am-09:00am', 1, '[{\"added\": {}}]', 51, 1),
(614, '2021-04-23 09:33:09.705076', '2', 'STOR Pracs II-09:00am-10:00am', 1, '[{\"added\": {}}]', 51, 1),
(615, '2021-04-23 09:33:30.989507', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 51, 1),
(616, '2021-04-23 09:33:47.862533', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 51, 1),
(617, '2021-04-23 09:34:19.238138', '5', 'ST-11:50am-12:30am', 1, '[{\"added\": {}}]', 51, 1),
(618, '2021-04-23 09:34:30.321990', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 51, 1),
(619, '2021-04-23 09:34:43.270251', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 51, 1),
(620, '2021-04-23 09:34:52.961324', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 51, 1),
(621, '2021-04-23 09:35:02.530337', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 51, 1),
(622, '2021-04-23 09:35:38.726500', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 52, 1),
(623, '2021-04-23 09:35:48.037493', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 52, 1),
(624, '2021-04-23 09:36:11.930145', '3', 'DS Pracs-10:00am-11:00am', 1, '[{\"added\": {}}]', 52, 1),
(625, '2021-04-23 09:36:24.363788', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 52, 1),
(626, '2021-04-23 09:36:46.432441', '5', 'STOR-11:50am-12:30am', 1, '[{\"added\": {}}]', 52, 1),
(627, '2021-04-23 09:37:00.831518', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 52, 1),
(628, '2021-04-23 09:37:09.979411', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 52, 1),
(629, '2021-04-23 09:37:19.140719', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 52, 1),
(630, '2021-04-23 09:37:28.456377', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 52, 1),
(631, '2021-04-23 09:38:15.405138', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 50, 1),
(632, '2021-04-23 09:38:23.996496', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 50, 1),
(633, '2021-04-23 09:38:32.540853', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 50, 1),
(634, '2021-04-23 09:38:53.092291', '4', 'ST-11:00am-11:50am', 1, '[{\"added\": {}}]', 50, 1),
(635, '2021-04-23 09:39:24.113088', '5', 'DS-11:50am-12:30am', 1, '[{\"added\": {}}]', 50, 1),
(636, '2021-04-23 09:39:39.117787', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 50, 1),
(637, '2021-04-23 09:39:56.892426', '7', 'STOR-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 50, 1),
(638, '2021-04-23 09:40:06.429104', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 50, 1),
(639, '2021-04-23 09:40:15.699227', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 50, 1),
(640, '2021-04-23 09:40:48.930490', '1', 'STOR I-08:00am-09:00am', 1, '[{\"added\": {}}]', 47, 1),
(641, '2021-04-23 09:41:05.540567', '2', 'STOR II-09:00am-10:00am', 1, '[{\"added\": {}}]', 47, 1),
(642, '2021-04-23 09:41:20.059576', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 47, 1),
(643, '2021-04-23 09:41:29.159666', '4', 'ST-11:00am-11:50am', 1, '[{\"added\": {}}]', 47, 1),
(644, '2021-04-23 09:42:18.918876', '5', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 47, 1),
(645, '2021-04-23 09:42:48.324522', '6', 'DS-12:30am-01:30pm', 1, '[{\"added\": {}}]', 47, 1),
(646, '2021-04-23 09:43:12.899450', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 47, 1),
(647, '2021-04-23 09:43:24.528139', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 47, 1),
(648, '2021-04-23 09:43:34.036231', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 47, 1),
(649, '2021-04-23 09:43:58.885170', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 49, 1),
(650, '2021-04-23 09:44:07.011738', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 49, 1),
(651, '2021-04-23 09:44:15.479617', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 49, 1),
(652, '2021-04-23 09:44:24.677711', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 49, 1),
(653, '2021-04-23 09:44:46.880879', '5', 'STOR-11:50am-12:30am', 1, '[{\"added\": {}}]', 49, 1),
(654, '2021-04-23 09:45:01.361888', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 49, 1),
(655, '2021-04-23 09:45:18.893692', '7', 'Project I-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 49, 1),
(656, '2021-04-23 09:45:33.544538', '8', 'Project II-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 49, 1),
(657, '2021-04-23 09:45:43.829587', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 49, 1),
(658, '2021-04-23 09:46:45.741744', '1', 'AJ Pracs I-08:00am-09:00am', 1, '[{\"added\": {}}]', 54, 1),
(659, '2021-04-23 09:47:01.182870', '2', 'AJ Pracs II-09:00am-10:00am', 1, '[{\"added\": {}}]', 54, 1),
(660, '2021-04-23 09:47:15.226389', '3', 'AJ Pracs III-10:00am-11:00am', 1, '[{\"added\": {}}]', 54, 1),
(661, '2021-04-23 09:47:29.869921', '4', 'SE-11:00am-11:50am', 1, '[{\"added\": {}}]', 54, 1),
(662, '2021-04-23 09:47:41.636795', '5', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 54, 1),
(663, '2021-04-23 09:47:48.895485', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 54, 1),
(664, '2021-04-23 09:48:12.492549', '7', 'Adv. Java-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 54, 1),
(665, '2021-04-23 09:48:24.307616', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 54, 1),
(666, '2021-04-23 09:48:32.571180', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 54, 1),
(667, '2021-04-23 09:49:38.525607', '1', 'AJ Pracs I-08:00am-09:00am', 1, '[{\"added\": {}}]', 57, 1),
(668, '2021-04-23 09:49:50.962985', '2', 'AJ Pracs II-09:00am-10:00am', 1, '[{\"added\": {}}]', 57, 1),
(669, '2021-04-23 09:50:03.003714', '3', 'AJ Pracs III-10:00am-11:00am', 1, '[{\"added\": {}}]', 57, 1),
(670, '2021-04-23 09:50:14.410472', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 57, 1),
(671, '2021-04-23 09:50:29.122779', '5', 'DS-11:50am-12:30am', 1, '[{\"added\": {}}]', 57, 1),
(672, '2021-04-23 09:50:43.559385', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 57, 1),
(673, '2021-04-23 09:50:52.019150', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 57, 1),
(674, '2021-04-23 09:51:05.290683', '8', 'SE-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 57, 1),
(675, '2021-04-23 09:51:15.854938', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 57, 1),
(676, '2021-04-23 09:51:47.038869', '1', 'BD Pracs I-08:00am-09:00am', 1, '[{\"added\": {}}]', 58, 1),
(677, '2021-04-23 09:51:59.817050', '2', 'BD Pracs II-09:00am-10:00am', 1, '[{\"added\": {}}]', 58, 1),
(678, '2021-04-23 09:52:12.260771', '3', 'BD Pracs III-10:00am-11:00am', 1, '[{\"added\": {}}]', 58, 1),
(679, '2021-04-23 09:52:29.167628', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 58, 1),
(680, '2021-04-23 09:52:37.559630', '5', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 58, 1),
(681, '2021-04-23 09:52:45.450803', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 58, 1),
(682, '2021-04-23 09:52:54.473605', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 58, 1),
(683, '2021-04-23 09:53:15.183238', '8', 'DS-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 58, 1),
(684, '2021-04-23 09:53:22.374805', '8', 'DS I-02:30pm-03:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 58, 1),
(685, '2021-04-23 09:53:36.774128', '9', 'DS II-03:30pm-04:30pm', 1, '[{\"added\": {}}]', 58, 1),
(686, '2021-04-23 09:54:04.621568', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 56, 1),
(687, '2021-04-23 09:54:49.125860', '2', 'DS Pracs I-09:00am-10:00am', 1, '[{\"added\": {}}]', 56, 1),
(688, '2021-04-23 09:55:04.135325', '3', 'DS Pracs II-10:00am-11:00am', 1, '[{\"added\": {}}]', 56, 1),
(689, '2021-04-23 09:55:27.143443', '4', 'DS I-11:50am-12:30am', 1, '[{\"added\": {}}]', 56, 1),
(690, '2021-04-23 09:55:37.872549', '4', 'DS I-11:00am-11:50am', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 56, 1),
(691, '2021-04-23 09:55:55.908924', '5', 'Adv. Java-11:50am-12:30am', 1, '[{\"added\": {}}]', 56, 1),
(692, '2021-04-23 09:56:09.952991', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 56, 1),
(693, '2021-04-23 09:56:18.068031', '7', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 56, 1),
(694, '2021-04-23 09:56:33.418326', '8', 'SE-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 56, 1),
(695, '2021-04-23 09:56:43.833688', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 56, 1),
(696, '2021-04-23 09:57:14.695177', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 53, 1),
(697, '2021-04-23 09:57:23.424230', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 53, 1),
(698, '2021-04-23 09:57:31.507115', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 53, 1),
(699, '2021-04-23 09:57:41.176093', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 53, 1),
(700, '2021-04-23 09:58:04.071933', '5', 'SE-11:50am-12:30am', 1, '[{\"added\": {}}]', 53, 1),
(701, '2021-04-23 09:58:37.314651', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 53, 1),
(702, '2021-04-23 09:58:53.195305', '7', 'Adv. Java-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 53, 1),
(703, '2021-04-23 09:59:05.000039', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 53, 1),
(704, '2021-04-23 09:59:13.028777', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 53, 1),
(705, '2021-04-23 09:59:45.100568', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 55, 1),
(706, '2021-04-23 09:59:52.334607', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 55, 1),
(707, '2021-04-23 10:00:03.291085', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 55, 1),
(708, '2021-04-23 10:00:16.609949', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 55, 1),
(709, '2021-04-23 10:00:24.713112', '5', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 55, 1),
(710, '2021-04-23 10:00:33.121047', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 55, 1),
(711, '2021-04-23 10:00:45.978917', '7', 'Project I-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 55, 1),
(712, '2021-04-23 10:01:03.712730', '8', 'Project II-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 55, 1),
(713, '2021-04-23 10:01:11.900925', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 55, 1),
(714, '2021-04-23 10:10:51.147655', '1', '--8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 19, 1),
(715, '2021-04-23 10:11:14.263030', '4', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 19, 1),
(716, '2021-04-23 10:11:44.355597', '5', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 19, 1),
(717, '2021-04-23 10:11:57.956536', '6', 'Cloud-11:00am-11:50am', 1, '[{\"added\": {}}]', 19, 1),
(718, '2021-04-23 10:17:52.144027', '1', '--8:00am-9:00am', 2, '[]', 19, 1),
(719, '2021-04-23 10:17:56.395205', '6', 'Cloud-11:00am-11:50am', 2, '[]', 19, 1),
(720, '2021-04-23 10:18:14.349042', '7', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 19, 1),
(721, '2021-04-23 10:18:22.782631', '8', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 19, 1),
(722, '2021-04-23 10:18:30.077435', '9', '--01:30pm-02:30pm', 1, '[{\"added\": {}}]', 19, 1),
(723, '2021-04-23 10:18:41.904969', '10', 'MOS-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 19, 1),
(724, '2021-04-23 10:18:50.095663', '11', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 19, 1),
(725, '2021-04-23 10:19:41.445653', '1', 'MOS Pracs I-08:00am-09:00am', 1, '[{\"added\": {}}]', 22, 1),
(726, '2021-04-23 10:19:59.166813', '2', 'MOS Pracs II-09:00am-10:00am', 1, '[{\"added\": {}}]', 22, 1),
(727, '2021-04-23 10:20:13.275515', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 22, 1),
(728, '2021-04-23 10:20:27.289601', '4', 'MOS-11:00am-11:50am', 1, '[{\"added\": {}}]', 22, 1),
(729, '2021-04-23 10:22:40.106991', '1', 'C++-8:00am-9:00am', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 19, 1),
(730, '2021-04-23 10:23:00.868956', '5', 'C++-11:50am-12:30am', 1, '[{\"added\": {}}]', 22, 1),
(731, '2021-04-23 10:23:13.125105', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 22, 1),
(732, '2021-04-23 10:23:46.433693', '7', 'Cloud-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 22, 1),
(733, '2021-04-23 10:23:57.034860', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 22, 1),
(734, '2021-04-23 10:24:15.396029', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 22, 1),
(735, '2021-04-23 10:24:34.639457', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 23, 1),
(736, '2021-04-23 10:24:41.944653', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 23, 1),
(737, '2021-04-23 10:24:51.296150', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 23, 1),
(738, '2021-04-23 10:25:08.405082', '4', 'Cloud-11:00am-11:50am', 1, '[{\"added\": {}}]', 23, 1),
(739, '2021-04-23 10:25:21.025166', '5', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 23, 1),
(740, '2021-04-23 10:25:34.163785', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 23, 1),
(741, '2021-04-23 10:25:52.670105', '7', 'Cloud-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 23, 1),
(742, '2021-04-23 10:26:08.245794', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 23, 1),
(743, '2021-04-23 10:26:16.322832', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 23, 1),
(744, '2021-04-23 10:26:34.439776', '7', 'C++-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"SubName\"]}}]', 23, 1),
(745, '2021-04-23 10:27:02.742776', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 21, 1),
(746, '2021-04-23 10:27:22.026566', '2', 'MOS Pracs I-09:00am-10:00am', 1, '[{\"added\": {}}]', 21, 1),
(747, '2021-04-23 10:27:36.364782', '3', 'MOS Pracs II-10:00am-11:00am', 1, '[{\"added\": {}}]', 21, 1),
(748, '2021-04-23 10:27:41.208832', '2', 'MOS Pracs I-09:00am-10:00am', 2, '[]', 21, 1),
(749, '2021-04-23 10:28:25.885184', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 21, 1),
(750, '2021-04-23 10:28:45.491255', '5', 'MOS-11:50am-12:30am', 1, '[{\"added\": {}}]', 21, 1),
(751, '2021-04-23 10:29:03.271802', '6', 'C++-12:30am-01:30pm', 1, '[{\"added\": {}}]', 21, 1),
(752, '2021-04-23 10:29:26.461873', '7', 'Cloud-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 21, 1),
(753, '2021-04-23 10:29:45.344269', '8', '--02:30pm-03:30pm', 1, '[{\"added\": {}}]', 21, 1),
(754, '2021-04-23 10:29:56.559232', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 21, 1),
(755, '2021-04-23 10:59:00.586690', '1', '--l08:00am-09:00am', 1, '[{\"added\": {}}]', 18, 1),
(756, '2021-04-23 10:59:08.826549', '1', '--l08:00am-09:00am', 2, '[]', 18, 1),
(757, '2021-04-23 10:59:15.916557', '1', '--l08:00am-09:00am', 2, '[]', 18, 1),
(758, '2021-04-23 10:59:54.415984', '1', '--l08:00am-09:00am', 3, '', 18, 1),
(759, '2021-04-23 11:00:03.915300', '2', '--l08:00am-09:00am', 1, '[{\"added\": {}}]', 18, 1),
(760, '2021-04-23 11:00:34.287119', '2', '--l08:00am-09:00am', 2, '[]', 18, 1),
(761, '2021-04-23 11:01:51.765785', '3', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 18, 1),
(762, '2021-04-23 11:02:36.980028', '4', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 18, 1),
(763, '2021-04-23 11:02:45.389926', '5', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 18, 1),
(764, '2021-04-23 11:03:02.474675', '6', 'Cloud-11:50am-12:30am', 1, '[{\"added\": {}}]', 18, 1),
(765, '2021-04-23 11:03:18.779870', '7', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 18, 1),
(766, '2021-04-23 11:03:41.619902', '8', 'MOS I-12:30am-01:30pm', 1, '[{\"added\": {}}]', 18, 1),
(767, '2021-04-23 11:03:51.058069', '8', 'MOS I-01:30pm-02:30pm', 2, '[{\"changed\": {\"fields\": [\"Time\"]}}]', 18, 1),
(768, '2021-04-23 11:04:03.174794', '9', 'MOS II-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 18, 1),
(769, '2021-04-23 11:04:11.996721', '10', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 18, 1),
(770, '2021-04-23 11:04:37.040809', '1', '--08:00am-09:00am', 1, '[{\"added\": {}}]', 20, 1),
(771, '2021-04-23 11:04:44.304696', '2', '--09:00am-10:00am', 1, '[{\"added\": {}}]', 20, 1),
(772, '2021-04-23 11:04:52.998868', '3', '--10:00am-11:00am', 1, '[{\"added\": {}}]', 20, 1),
(773, '2021-04-23 11:05:01.539734', '4', '--11:00am-11:50am', 1, '[{\"added\": {}}]', 20, 1),
(774, '2021-04-23 11:05:10.062817', '5', '--11:50am-12:30am', 1, '[{\"added\": {}}]', 20, 1),
(775, '2021-04-23 11:05:25.197624', '6', '--12:30am-01:30pm', 1, '[{\"added\": {}}]', 20, 1),
(776, '2021-04-23 11:05:38.409651', '7', 'Project I-01:30pm-02:30pm', 1, '[{\"added\": {}}]', 20, 1),
(777, '2021-04-23 11:05:49.908493', '8', 'Project II-02:30pm-03:30pm', 1, '[{\"added\": {}}]', 20, 1),
(778, '2021-04-23 11:05:57.286058', '9', '--03:30pm-04:30pm', 1, '[{\"added\": {}}]', 20, 1),
(779, '2021-04-23 11:10:08.792898', '1', 'C++-8:00am-9:00am', 3, '', 42, 1),
(780, '2021-04-23 17:23:48.470733', '1', 'Console', 1, '[{\"added\": {}}]', 77, 1),
(781, '2021-04-23 17:24:40.961545', '1', 'Console', 3, '', 77, 1),
(782, '2021-04-23 17:53:27.755533', '2', 'Hello', 1, '[{\"added\": {}}]', 77, 1),
(783, '2021-04-23 17:57:06.205749', '2', 'Hello', 2, '[]', 77, 1),
(784, '2021-04-23 18:03:55.329832', '2', 'Hello', 2, '[]', 77, 1),
(785, '2021-04-23 19:12:27.983644', '5', 'vikram', 3, '', 77, 1),
(786, '2021-04-23 19:12:28.032318', '4', 'Tejas', 3, '', 77, 1),
(787, '2021-04-23 19:12:28.034312', '3', 'Hello1', 3, '', 77, 1),
(788, '2021-04-23 19:12:28.036307', '2', 'Hello', 3, '', 77, 1),
(789, '2021-04-24 09:06:01.206079', '1', 'fybscit-Papers', 3, '', 84, 1),
(790, '2021-04-24 09:28:51.368638', '1', 'tybscit-Sy', 3, '', 83, 1),
(791, '2021-04-24 09:29:02.087753', '5', 'sybscit-Prof', 3, '', 84, 1),
(792, '2021-04-24 09:29:02.090745', '4', 'fybscit-karnotkamalsinghf', 3, '', 84, 1),
(793, '2021-04-24 09:29:02.091743', '3', 'fybscit-karnotkamalsingh', 3, '', 84, 1),
(794, '2021-04-24 09:29:02.093737', '2', 'sybscit-Prof', 3, '', 84, 1),
(795, '2021-04-24 09:41:04.799176', '2', 'fybscit-notes1', 3, '', 83, 1),
(796, '2021-04-24 09:41:15.959100', '6', 'fybscit-p1', 3, '', 84, 1),
(797, '2021-04-24 10:05:01.621272', '3', 'fybscit-fyyy', 1, '[{\"added\": {}}]', 83, 1),
(798, '2021-04-24 10:05:19.232458', '4', 'sybscit-syyy', 1, '[{\"added\": {}}]', 83, 1),
(799, '2021-04-24 10:05:41.006631', '5', 'tybscit-tyyy', 1, '[{\"added\": {}}]', 83, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(10, 'admin', 'logentry'),
(12, 'auth', 'group'),
(11, 'auth', 'permission'),
(13, 'auth', 'user'),
(14, 'contenttypes', 'contenttype'),
(18, 'portal', 'aaronfriday'),
(19, 'portal', 'aaronmonday'),
(20, 'portal', 'aaronsaturday'),
(21, 'portal', 'aaronthursday'),
(22, 'portal', 'aarontuesday'),
(23, 'portal', 'aaronwednesday'),
(24, 'portal', 'ashokfriday'),
(25, 'portal', 'ashokmonday'),
(26, 'portal', 'ashoksaturday'),
(27, 'portal', 'ashokthursday'),
(28, 'portal', 'ashoktuesday'),
(29, 'portal', 'ashokwednesday'),
(75, 'portal', 'fyfriday'),
(16, 'portal', 'fymonday'),
(81, 'portal', 'fynotes'),
(77, 'portal', 'fypapers'),
(74, 'portal', 'fysaturday'),
(4, 'portal', 'fysem1'),
(73, 'portal', 'fythursday'),
(72, 'portal', 'fytuesday'),
(71, 'portal', 'fywednesday'),
(30, 'portal', 'lydiafriday'),
(17, 'portal', 'lydiamonday'),
(31, 'portal', 'lydiasaturday'),
(32, 'portal', 'lydiathursday'),
(33, 'portal', 'lydiatuesday'),
(34, 'portal', 'lydiawednesday'),
(35, 'portal', 'melissafriday'),
(36, 'portal', 'melissamonday'),
(37, 'portal', 'melissasaturday'),
(38, 'portal', 'melissathursday'),
(39, 'portal', 'melissatuesday'),
(40, 'portal', 'melissawednesday'),
(83, 'portal', 'notes'),
(84, 'portal', 'papers'),
(41, 'portal', 'rachanafriday'),
(42, 'portal', 'rachanamonday'),
(43, 'portal', 'rachanasaturday'),
(44, 'portal', 'rachanathursday'),
(45, 'portal', 'rachanatuesday'),
(46, 'portal', 'rachanawednesday'),
(76, 'portal', 'role'),
(47, 'portal', 'royfriday'),
(48, 'portal', 'roymonday'),
(49, 'portal', 'roysaturday'),
(50, 'portal', 'roythursday'),
(51, 'portal', 'roytuesday'),
(52, 'portal', 'roywednesday'),
(53, 'portal', 'subhashfriday'),
(54, 'portal', 'subhashmonday'),
(55, 'portal', 'subhashsaturday'),
(56, 'portal', 'subhashthursday'),
(57, 'portal', 'subhashtuesday'),
(58, 'portal', 'subhashwednesday'),
(1, 'portal', 'subject'),
(70, 'portal', 'syfriday'),
(69, 'portal', 'symonday'),
(79, 'portal', 'synotes'),
(78, 'portal', 'sypapers'),
(68, 'portal', 'sysaturday'),
(3, 'portal', 'sysem3'),
(67, 'portal', 'sythursday'),
(66, 'portal', 'sytuesday'),
(65, 'portal', 'sywednesday'),
(64, 'portal', 'tyfriday'),
(63, 'portal', 'tymonday'),
(80, 'portal', 'tynotes'),
(82, 'portal', 'typapers'),
(62, 'portal', 'tysaturday'),
(2, 'portal', 'tysem5'),
(61, 'portal', 'tythursday'),
(60, 'portal', 'tytuesday'),
(59, 'portal', 'tywednesday'),
(15, 'sessions', 'session'),
(7, 'users', 'fybscit'),
(5, 'users', 'profile'),
(9, 'users', 'sybscit'),
(6, 'users', 'teacher'),
(8, 'users', 'tybscit');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-05 12:59:20.812039'),
(2, 'auth', '0001_initial', '2021-04-05 12:59:22.866276'),
(3, 'admin', '0001_initial', '2021-04-05 12:59:29.757405'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-05 12:59:32.900558'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-05 12:59:32.992630'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-05 12:59:34.053627'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-05 12:59:35.030590'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-05 12:59:35.240946'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-05 12:59:35.338951'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-05 12:59:36.518775'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-05 12:59:36.570161'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-05 12:59:36.647167'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-05 12:59:36.966141'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-05 12:59:37.120054'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-05 12:59:37.340190'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-05 12:59:37.423215'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-04-05 12:59:37.765213'),
(18, 'users', '0001_initial', '2021-04-05 12:59:38.200570'),
(19, 'users', '0002_student', '2021-04-05 12:59:39.554272'),
(20, 'users', '0003_auto_20210317_0117', '2021-04-05 12:59:42.783685'),
(21, 'users', '0004_student_stream', '2021-04-05 12:59:46.307674'),
(22, 'users', '0005_teacher_stream', '2021-04-05 12:59:47.071716'),
(23, 'users', '0006_auto_20210317_1112', '2021-04-05 12:59:47.542133'),
(24, 'users', '0007_auto_20210317_1114', '2021-04-05 12:59:48.031155'),
(25, 'users', '0008_auto_20210318_0714', '2021-04-05 12:59:49.291984'),
(26, 'users', '0009_auto_20210318_0815', '2021-04-05 12:59:51.249890'),
(27, 'users', '0010_auto_20210321_0932', '2021-04-05 12:59:51.344893'),
(28, 'users', '0011_auto_20210321_1744', '2021-04-05 12:59:51.915927'),
(29, 'users', '0012_sybscit_tybscit', '2021-04-05 12:59:53.564871'),
(30, 'users', '0013_auto_20210321_2024', '2021-04-05 12:59:55.248656'),
(31, 'users', '0014_auto_20210321_2034', '2021-04-05 12:59:55.976695'),
(32, 'users', '0015_auto_20210403_0900', '2021-04-05 12:59:57.042420'),
(33, 'portal', '0001_initial', '2021-04-05 12:59:57.364102'),
(34, 'portal', '0002_auto_20210313_1441', '2021-04-05 12:59:59.083621'),
(35, 'portal', '0003_fysem1_sysem3_tysem5', '2021-04-05 13:00:00.687705'),
(36, 'portal', '0004_auto_20210403_0900', '2021-04-05 13:00:29.203512'),
(37, 'portal', '0005_auto_20210403_1034', '2021-04-05 13:00:30.489371'),
(38, 'portal', '0006_auto_20210404_0853', '2021-04-05 13:00:34.372128'),
(39, 'portal', '0007_auto_20210404_1406', '2021-04-05 13:00:42.392470'),
(40, 'sessions', '0001_initial', '2021-04-05 13:00:52.827944'),
(41, 'portal', '0008_fymonday_lydiamonday', '2021-04-18 13:24:15.261858'),
(42, 'portal', '0009_auto_20210418_1956', '2021-04-18 14:27:25.092612'),
(43, 'portal', '0010_auto_20210418_2117', '2021-04-18 15:48:02.898090'),
(44, 'portal', '0011_auto_20210418_2136', '2021-04-18 16:06:29.019414'),
(45, 'portal', '0012_auto_20210419_1803', '2021-04-19 12:33:42.083635'),
(46, 'portal', '0013_auto_20210419_1830', '2021-04-19 13:00:28.187281'),
(47, 'portal', '0014_auto_20210419_1920', '2021-04-19 13:51:21.637145'),
(48, 'portal', '0015_auto_20210419_1944', '2021-04-19 14:14:44.915853'),
(49, 'portal', '0016_role', '2021-04-19 16:58:05.941716'),
(50, 'portal', '0017_auto_20210419_2353', '2021-04-19 18:23:35.798400'),
(51, 'portal', '0018_auto_20210420_1944', '2021-04-20 14:14:40.638815'),
(52, 'portal', '0019_auto_20210420_1955', '2021-04-20 14:26:00.743839'),
(53, 'portal', '0020_lydiamonday_class', '2021-04-20 15:51:10.859050'),
(54, 'portal', '0021_remove_lydiamonday_class', '2021-04-20 16:08:30.988311'),
(55, 'portal', '0022_auto_20210420_2208', '2021-04-20 16:38:55.207209'),
(56, 'portal', '0023_auto_20210420_2231', '2021-04-20 17:05:44.751021'),
(57, 'portal', '0024_auto_20210420_2255', '2021-04-20 17:25:34.266977'),
(58, 'portal', '0025_auto_20210420_2255', '2021-04-20 17:25:34.381508'),
(59, 'portal', '0026_auto_20210420_2257', '2021-04-20 17:27:05.318841'),
(60, 'portal', '0027_auto_20210421_0018', '2021-04-20 18:48:28.237130'),
(61, 'portal', '0028_auto_20210423_1547', '2021-04-23 10:17:22.534086'),
(62, 'portal', '0028_auto_20210423_1546', '2021-04-23 17:13:41.369118'),
(63, 'portal', '0029_auto_20210423_2132', '2021-04-23 17:13:41.374139'),
(64, 'portal', '0030_auto_20210423_2138', '2021-04-23 17:13:41.378094'),
(65, 'portal', '0031_role', '2021-04-23 17:16:36.598814'),
(66, 'portal', '0032_delete_role', '2021-04-23 17:16:36.615767'),
(67, 'portal', '0033_role', '2021-04-23 17:16:36.645688'),
(68, 'portal', '0034_delete_role', '2021-04-23 17:16:36.660647'),
(69, 'portal', '0035_role', '2021-04-23 17:16:36.702535'),
(70, 'portal', '0036_delete_role', '2021-04-23 17:16:36.718492'),
(71, 'portal', '0037_fypapers', '2021-04-23 17:21:02.350060'),
(72, 'portal', '0038_fynotes_synotes_sypapers_tynotes_typapers', '2021-04-23 17:28:34.370692'),
(73, 'portal', '0039_auto_20210424_0131', '2021-04-23 20:01:27.294642'),
(74, 'portal', '0040_auto_20210424_0141', '2021-04-23 20:11:59.596228'),
(75, 'portal', '0041_auto_20210424_0150', '2021-04-23 20:20:35.969978'),
(76, 'portal', '0042_auto_20210424_1439', '2021-04-24 09:10:03.674699'),
(77, 'portal', '0043_auto_20210424_1446', '2021-04-24 09:16:59.923616'),
(78, 'portal', '0044_auto_20210424_1449', '2021-04-24 09:19:13.271273'),
(79, 'portal', '0045_auto_20210424_1505', '2021-04-24 09:35:25.528869');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('15myijhvclny0nnu9sqojeu5dxe7q6qv', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1la2Dm:sX42s0DRiDqD1p830WttbUYmc0id0iWCrOnJrIPm85s', '2021-05-07 20:16:14.134549'),
('1kshb99xf752a2yjfdv6gerskhmf8kqc', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1laG4U:UFqNrn9KKhY7Ug0MUw2Gi52qgH_z7KmiahYpVcM5uLw', '2021-05-08 11:03:34.684979'),
('2iua9umhur88du1toa7fwzg2rc16expe', '.eJxVjEEOwiAQRe_C2hDAoYBL956BMMMgVUOT0q6Md7dNutDtf-_9t4hpXWpcO89xzOIitDj9bpjoyW0H-ZHafZI0tWUeUe6KPGiXtynz63q4fwc19brVgKC0AmAK2Zti-Vw4G3IM3gTNRjnlnIdUAiENFrzfGCqfByBlUYvPF9pIN6s:1laEad:FQ6cgYFZMhaD88LDcpUstDtN9oy6nNzyra1efuCtaVo', '2021-05-08 09:28:39.636745'),
('47sb35xo3d0by8hwlc9ps4rr39begkg8', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1la23N:anMMn2EcwV8TluNDBajnKR1P3g8ccPBgrfnMKsIZpf0', '2021-05-07 20:05:29.199141'),
('4c1bs5b24x2pdxq993kryep2haa12wp4', 'e30:1lUA48:2AxK-XJxvP33zkWGCjpuWbeR_AN27pMvV80u-hLawoo', '2021-04-21 15:26:00.646595'),
('4n2tolfbqen64ymswliemb2i48pwt2a0', '.eJxVjEEOwiAQRe_C2hDAoYBL956BMMMgVUOT0q6Md7dNutDtf-_9t4hpXWpcO89xzOIitDj9bpjoyW0H-ZHafZI0tWUeUe6KPGiXtynz63q4fwc19brVgKC0AmAK2Zti-Vw4G3IM3gTNRjnlnIdUAiENFrzfGCqfByBlUYvPF9pIN6s:1lZs75:FuMTxArb1z4y5Ghi4oCSb24nH_mWR81XsvIUbtOYk_I', '2021-05-07 09:28:39.736723'),
('5n39t8fb86qdz2dmm4shnxw02d8q5v98', '.eJxVjEEOwiAQRe_C2hDAoYBL956BMMMgVUOT0q6Md7dNutDtf-_9t4hpXWpcO89xzOIitDj9bpjoyW0H-ZHafZI0tWUeUe6KPGiXtynz63q4fwc19brVgKC0AmAK2Zti-Vw4G3IM3gTNRjnlnIdUAiENFrzfGCqfByBlUYvPF9pIN6s:1la0w9:FN9k66WLHvF2fpohyuOfanCZzi0Kj73_UWYmOcBt2gU', '2021-05-07 18:53:57.119115'),
('5tnhwkm0wvjw5iqg570pzeqjbj2oje59', '.eJxVjEEOwiAQRe_C2hDAoYBL956BMMMgVUOT0q6Md7dNutDtf-_9t4hpXWpcO89xzOIitDj9bpjoyW0H-ZHafZI0tWUeUe6KPGiXtynz63q4fwc19brVgKC0AmAK2Zti-Vw4G3IM3gTNRjnlnIdUAiENFrzfGCqfByBlUYvPF9pIN6s:1laFNI:efNPlli5jeIRVv3UPD5pC1mYPyu3dFN20FoloOY5V4s', '2021-05-08 10:18:56.230209'),
('5zrsj70dcdf6ndm8xw31c8gl0g1g1e59', '.eJxVjDsOwjAQBe_iGll2_F1K-pzBWu8aHEC2lE-FuDtESgHtm5n3Egm3taZtKXOaWJzFIE6_W0Z6lLYDvmO7dUm9rfOU5a7Igy5y7Fyel8P9O6i41G-tHQ6ZoyINyljluBhNFMC5yAaiNx6GTMGiQcJggwViiFj46i1CiOL9AcqMN4g:1lZ7Ft:B3n5fegxrRMxzzTM-RvRzVDvZcPqgzkw5m5k8DmfbyY', '2021-05-05 07:26:37.855390'),
('61k9ovc1ppw14v2qjvdafg9fm6gazj08', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1lZBt1:O2OO_Gc6sUJe0wFvrlO1WUHwbnIuDKwlt8iTzVBcqtQ', '2021-05-05 12:23:19.324269'),
('924klowjy7l12chkdnyf7nfel1warblh', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1lZBBP:HnUR6S_apsr4RXAISbWstIfjpGrQD121HTxy7C_RK40', '2021-05-05 11:38:15.514002'),
('9i1a68pmfwl60wa9jpxdegvjfrhdbdmr', '.eJxVjEEOwiAQRe_C2hDAoYBL956BMMMgVUOT0q6Md7dNutDtf-_9t4hpXWpcO89xzOIitDj9bpjoyW0H-ZHafZI0tWUeUe6KPGiXtynz63q4fwc19brVgKC0AmAK2Zti-Vw4G3IM3gTNRjnlnIdUAiENFrzfGCqfByBlUYvPF9pIN6s:1lYtgB:qFGnhqt4UosK9RXFEKg2ZXj09hsfFVhCkL8uPtBcvb8', '2021-05-04 16:56:51.536102'),
('a3lw4rcnaa0gulf55hqeh8uocf0dxg27', '.eJxVjDsOwjAQBe_iGll2_F1K-pzBWu8aHEC2lE-FuDtESgHtm5n3Egm3taZtKXOaWJzFIE6_W0Z6lLYDvmO7dUm9rfOU5a7Igy5y7Fyel8P9O6i41G-tHQ6ZoyINyljluBhNFMC5yAaiNx6GTMGiQcJggwViiFj46i1CiOL9AcqMN4g:1lYUN5:6NBKbP294POUIs5wSyTLLxfgzi5r7pJgbCUgYpOPhsM', '2021-05-03 13:55:27.135410'),
('b2hj08veqqpi21uoj7nj2am4mbwkzo0v', '.eJxVjDsOwjAQBe_iGll2_F1K-pzBWu8aHEC2lE-FuDtESgHtm5n3Egm3taZtKXOaWJzFIE6_W0Z6lLYDvmO7dUm9rfOU5a7Igy5y7Fyel8P9O6i41G-tHQ6ZoyINyljluBhNFMC5yAaiNx6GTMGiQcJggwViiFj46i1CiOL9AcqMN4g:1lZPtx:R_5OU8R-lscyS4Bnokv-p3t7zPwbkx4p-6bboJl_fc0', '2021-05-06 03:21:13.591167'),
('c0vyznetm57csxyo3wy7mwj6samoouwv', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1laGNx:aLVWzsPTrSzbkOgmoxFL00TPOgwOQwIHb0o3Qf5Lfvc', '2021-05-08 11:23:41.180240'),
('e2z97v9hxvi1236rdsw2m19a7q6t7g6e', '.eJxVjEEOwiAUBe_C2hAKn9K6dO8Zms8DpGogKe3KeHdt0oVu38y8l5h4W_O0tbhMcxBnQeL0u3nGI5YdhDuXW5WoZV1mL3dFHrTJaw3xeTncv4PMLX_rQWMMhnv2Fsl6uITUOQNw5wayJkEpIOhkR9YR6C0ZpbSLhois8uL9AQ01OFA:1lU0Qd:IlHq76NaAfK169YhkZSNAIASoLY-VqolrpCIJ3JyQEo', '2021-04-21 05:08:35.214106'),
('fn18u3jm6soinojfxm3wlgu97viaj620', '.eJxVjDsOwjAQBe_iGll2_F1K-pzBWu8aHEC2lE-FuDtESgHtm5n3Egm3taZtKXOaWJzFIE6_W0Z6lLYDvmO7dUm9rfOU5a7Igy5y7Fyel8P9O6i41G-tHQ6ZoyINyljluBhNFMC5yAaiNx6GTMGiQcJggwViiFj46i1CiOL9AcqMN4g:1lZPqf:3-_1_KLGDGf3so6HSjecxC8HCXggHN1Ed69I9g0RCCs', '2021-05-06 03:17:49.085886'),
('ft8woeipy2yrlr3oqxbzrwrpm7ey2gmx', '.eJxVjEEOwiAQRe_C2hDAoYBL956BMMMgVUOT0q6Md7dNutDtf-_9t4hpXWpcO89xzOIitDj9bpjoyW0H-ZHafZI0tWUeUe6KPGiXtynz63q4fwc19brVgKC0AmAK2Zti-Vw4G3IM3gTNRjnlnIdUAiENFrzfGCqfByBlUYvPF9pIN6s:1lUWee:4iFIRhYkMpCLHNUDYHsMHvLf6TMcMS4Cu30KUtNUijQ', '2021-04-22 15:33:12.033613'),
('ib57l9judi040q03dh69iwbms6vci7c5', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1laG61:DRPlLXyLr7G6AniRKTdRvD5ZVr-mHX1TJl-DSustvNg', '2021-05-08 11:05:09.961533'),
('icpyf0ab1vl41ejrihm6tm0cw1tu7pqo', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1lZELR:xmQIdTQAlytsY7OG4JBxj-riIJxvoWvwln1liehfs-E', '2021-05-05 15:00:49.700398'),
('ihrmisp5ypszw3g2ab4eg3kcvo6b0gou', '.eJxVjEEOwiAQRe_C2hDAoYBL956BMMMgVUOT0q6Md7dNutDtf-_9t4hpXWpcO89xzOIitDj9bpjoyW0H-ZHafZI0tWUeUe6KPGiXtynz63q4fwc19brVgKC0AmAK2Zti-Vw4G3IM3gTNRjnlnIdUAiENFrzfGCqfByBlUYvPF9pIN6s:1lYpF2:F75V1TSOOu75f4n7JVprsZ_bGc8MdQcRjJ1-Frb7In0', '2021-05-04 12:12:32.014867'),
('jqy1a0sch1zly1ijr94qhls2hofqkngn', '.eJxVjDsOwjAQBe_iGll2_F1K-pzBWu8aHEC2lE-FuDtESgHtm5n3Egm3taZtKXOaWJzFIE6_W0Z6lLYDvmO7dUm9rfOU5a7Igy5y7Fyel8P9O6i41G-tHQ6ZoyINyljluBhNFMC5yAaiNx6GTMGiQcJggwViiFj46i1CiOL9AcqMN4g:1lYB4Q:VemXLPVsttOJKQ_jiWj2hvvpiL1Jzi5xbNnWxd6vA8A', '2021-05-02 17:18:54.207498'),
('kvsaqbmkvrd7wlnhfsx2hf4iyr0tdqnb', '.eJxVjEEOwiAQRe_C2hDAoYBL956BMMMgVUOT0q6Md7dNutDtf-_9t4hpXWpcO89xzOIitDj9bpjoyW0H-ZHafZI0tWUeUe6KPGiXtynz63q4fwc19brVgKC0AmAK2Zti-Vw4G3IM3gTNRjnlnIdUAiENFrzfGCqfByBlUYvPF9pIN6s:1lYpGh:pNDpYlFxqJVRDee8ApN3xZ81TxkmfK_ZuCBzEgc3GPQ', '2021-05-04 12:14:15.031188'),
('l7ujutoyejcq3tpeomaobsr1f03tg8fj', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1lZEIF:DxjS-4C10rdiG3otgodGuXwDngK8wD0GS0awZw0rb_4', '2021-05-05 14:57:31.464193'),
('lts1feqnl7c7mpd9iyqju8k8b7wc93gc', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1lYYvF:cZZU3eKee9N5rmx5h5HT8x7yeZ1HLNgBsvT008N9gt0', '2021-05-03 18:47:01.071762'),
('lzg9hz16zy74mmlur98c7ph8wqawzdpn', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1lZD77:YywpsJWQyzVftxQ5EzDQGEB5shIGsjbb_VrSAGX8VCM', '2021-05-05 13:41:57.303457'),
('m60glrhkkg9e2dkuohg66bqmzejwk6p7', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1lZ8wq:MMh6eMWWQ96mWwcMsN1eaawoYg2wvlMsWhUV9IH7esY', '2021-05-05 09:15:04.418533'),
('m750cfxjhvmh93rz4vg1x48s70q6l9qu', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1lYZ1w:mwkmzREEckDBSWFnYmmaGaXhX7kvcpxpUzZNNAmPE9c', '2021-05-03 18:53:56.936025'),
('m93x35x59cvetu81f2wnkvpgclxdib12', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1laH7G:cLIKGZHjOdKRSo2Tlxq3GtASkg9VXYW75I3spiD18E0', '2021-05-08 12:10:30.173615'),
('nespjn5xh9pokhcuey5q2r14afye8ovs', '.eJxVjDsOwjAQBe_iGll2_F1K-pzBWu8aHEC2lE-FuDtESgHtm5n3Egm3taZtKXOaWJzFIE6_W0Z6lLYDvmO7dUm9rfOU5a7Igy5y7Fyel8P9O6i41G-tHQ6ZoyINyljluBhNFMC5yAaiNx6GTMGiQcJggwViiFj46i1CiOL9AcqMN4g:1lU5vH:WIyaT9JQJoAKApzskhDqpYrExr1FDYuEML9g5TqoveA', '2021-04-21 11:00:35.055268'),
('nvu6dvv9cvmy8t0g70orji8o9mnfhth5', '.eJxVjDsOwjAQBe_iGll2_F1K-pzBWu8aHEC2lE-FuDtESgHtm5n3Egm3taZtKXOaWJzFIE6_W0Z6lLYDvmO7dUm9rfOU5a7Igy5y7Fyel8P9O6i41G-tHQ6ZoyINyljluBhNFMC5yAaiNx6GTMGiQcJggwViiFj46i1CiOL9AcqMN4g:1lYs68:lpIB9qofIW9a1e0IxFshVi2_4GhQSpW0T0SSZvEJOJY', '2021-05-04 15:15:32.790120'),
('oijqsbzb25l5jv01xtx2uuej0f58f23c', '.eJxVjEEOwiAQRe_C2hDAoYBL956BMMMgVUOT0q6Md7dNutDtf-_9t4hpXWpcO89xzOIitDj9bpjoyW0H-ZHafZI0tWUeUe6KPGiXtynz63q4fwc19brVgKC0AmAK2Zti-Vw4G3IM3gTNRjnlnIdUAiENFrzfGCqfByBlUYvPF9pIN6s:1lYvUV:nCsuI2s0dnPrKOSfmQNcxL-6DAoVIr6GfFh2pdDxcIk', '2021-05-04 18:52:55.450754'),
('rjhs72mme3irielve4olkts97gu8415w', '.eJxVjDsOwjAQBe_iGll2_F1K-pzBWu8aHEC2lE-FuDtESgHtm5n3Egm3taZtKXOaWJzFIE6_W0Z6lLYDvmO7dUm9rfOU5a7Igy5y7Fyel8P9O6i41G-tHQ6ZoyINyljluBhNFMC5yAaiNx6GTMGiQcJggwViiFj46i1CiOL9AcqMN4g:1lYAsk:_JMy260XtkmiMK5bdVeDhUG9lYphzEba3ACL4vJZw1I', '2021-05-02 17:06:50.608431'),
('skmkfnywub3hqbjavndf1shdm5l11gt5', '.eJxVjDsOwjAQBe_iGll2_F1K-pzBWu8aHEC2lE-FuDtESgHtm5n3Egm3taZtKXOaWJzFIE6_W0Z6lLYDvmO7dUm9rfOU5a7Igy5y7Fyel8P9O6i41G-tHQ6ZoyINyljluBhNFMC5yAaiNx6GTMGiQcJggwViiFj46i1CiOL9AcqMN4g:1lZCag:MZJgSXzL98OQ4zuam45RDOb7z1SRtb077iCMQCdJAA8', '2021-05-05 13:08:26.004971'),
('u5mj6798a22cc3sfwsk6tjy3xivt1ktm', '.eJxVjDsOwjAQBe_iGll2_F1K-pzBWu8aHEC2lE-FuDtESgHtm5n3Egm3taZtKXOaWJzFIE6_W0Z6lLYDvmO7dUm9rfOU5a7Igy5y7Fyel8P9O6i41G-tHQ6ZoyINyljluBhNFMC5yAaiNx6GTMGiQcJggwViiFj46i1CiOL9AcqMN4g:1lYAu7:-8VEXSaIwWHf8XkGLpbkUoEjmkVXya-HNdsKct1IhVM', '2021-05-02 17:08:15.005697'),
('x92uoejkwxfzydl3uqmbha08taoj3fzx', '.eJxVjE0OwiAYRO_C2hBafkSX7nsGMvCBVA0kpV0Z7y5NutBkVjNv3ps5bGt2W4uLm4ldmWan384jPGPZB3qg3CsPtazL7PmO8GNtfKoUX7eD_RNktNzfUIO8KFBAsMmHniGRHz2SShDw3UQYRQAMyJ61NMZAwypDUego2ecLSPM6HA:1lYwp0:5c1Ah0W4_t1DfcGhLHpWeYVPEoKcOA6WAc40KWyPQdg', '2021-05-04 20:18:10.990678'),
('yg81hl4nbb4v5i7a6kcluu1nclt5a0bd', '.eJxVjDsOwjAQBe_iGll2_F1K-pzBWu8aHEC2lE-FuDtESgHtm5n3Egm3taZtKXOaWJzFIE6_W0Z6lLYDvmO7dUm9rfOU5a7Igy5y7Fyel8P9O6i41G-tHQ6ZoyINyljluBhNFMC5yAaiNx6GTMGiQcJggwViiFj46i1CiOL9AcqMN4g:1lYUTD:STCkjxm-DB5GdbUCniIPqw7J8U5sCS8giBhnrGznJDI', '2021-05-03 14:01:47.399169'),
('zkkvqdrscud1u75nrrtavubwyla3mpv1', '.eJxVjEEOwiAQRe_C2hDAoYBL956BMMMgVUOT0q6Md7dNutDtf-_9t4hpXWpcO89xzOIitDj9bpjoyW0H-ZHafZI0tWUeUe6KPGiXtynz63q4fwc19brVgKC0AmAK2Zti-Vw4G3IM3gTNRjnlnIdUAiENFrzfGCqfByBlUYvPF9pIN6s:1la1DC:nE9-Xj31QMYkv9BPkYI4Y91R1TLT6EVD_T02vVoEY_Y', '2021-05-07 19:11:34.957126');

-- --------------------------------------------------------

--
-- Table structure for table `portal_aaronfriday`
--

CREATE TABLE `portal_aaronfriday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_aaronfriday`
--

INSERT INTO `portal_aaronfriday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(2, '-', NULL, '08:00am-09:00am', NULL),
(3, '-', NULL, '09:00am-10:00am', NULL),
(4, '-', NULL, '10:00am-11:00am', NULL),
(5, '-', NULL, '11:00am-11:50am', NULL),
(6, 'Cloud', NULL, '11:50am-12:30am', 12),
(7, '-', NULL, '12:30am-01:30pm', NULL),
(8, 'MOS I', NULL, '01:30pm-02:30pm', 12),
(9, 'MOS II', NULL, '02:30pm-03:30pm', 12),
(10, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_aaronmonday`
--

CREATE TABLE `portal_aaronmonday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_aaronmonday`
--

INSERT INTO `portal_aaronmonday` (`id`, `SubName`, `Time`, `uname_id`, `SubStatus`) VALUES
(1, 'C++', '8:00am-9:00am', 12, NULL),
(4, '-', '09:00am-10:00am', NULL, NULL),
(5, '-', '10:00am-11:00am', NULL, NULL),
(6, 'Cloud', '11:00am-11:50am', 12, NULL),
(7, '-', '11:50am-12:30am', NULL, NULL),
(8, '-', '12:30am-01:30pm', NULL, NULL),
(9, '-', '01:30pm-02:30pm', NULL, NULL),
(10, 'MOS', '02:30pm-03:30pm', NULL, NULL),
(11, '-', '03:30pm-04:30pm', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_aaronsaturday`
--

CREATE TABLE `portal_aaronsaturday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_aaronsaturday`
--

INSERT INTO `portal_aaronsaturday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, '-', NULL, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'Project I', NULL, '01:30pm-02:30pm', 12),
(8, 'Project II', NULL, '02:30pm-03:30pm', 12),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_aaronthursday`
--

CREATE TABLE `portal_aaronthursday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_aaronthursday`
--

INSERT INTO `portal_aaronthursday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, 'MOS Pracs I', NULL, '09:00am-10:00am', 12),
(3, 'MOS Pracs II', NULL, '10:00am-11:00am', 12),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'MOS', NULL, '11:50am-12:30am', 12),
(6, 'C++', NULL, '12:30am-01:30pm', 12),
(7, 'Cloud', NULL, '01:30pm-02:30pm', 12),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_aarontuesday`
--

CREATE TABLE `portal_aarontuesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_aarontuesday`
--

INSERT INTO `portal_aarontuesday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, 'MOS Pracs I', NULL, '08:00am-09:00am', 12),
(2, 'MOS Pracs II', NULL, '09:00am-10:00am', 12),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, 'MOS', NULL, '11:00am-11:50am', NULL),
(5, 'C++', NULL, '11:50am-12:30am', 12),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'Cloud', NULL, '01:30pm-02:30pm', 12),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_aaronwednesday`
--

CREATE TABLE `portal_aaronwednesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_aaronwednesday`
--

INSERT INTO `portal_aaronwednesday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, 'Cloud', NULL, '11:00am-11:50am', 12),
(5, '-', NULL, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'C++', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_ashokfriday`
--

CREATE TABLE `portal_ashokfriday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_ashokfriday`
--

INSERT INTO `portal_ashokfriday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'AM II', NULL, '11:50am-12:30am', 7),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_ashokmonday`
--

CREATE TABLE `portal_ashokmonday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_ashokmonday`
--

INSERT INTO `portal_ashokmonday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(2, '-', NULL, '08:00am-09:00am', NULL),
(3, '-', NULL, '09:00am-10:00am', NULL),
(4, '-', NULL, '10:00am-11:00am', NULL),
(5, '-', NULL, '11:00am-11:50am', NULL),
(6, 'AM II', NULL, '11:50am-12:30am', 7),
(7, '-', NULL, '12:30am-01:30pm', NULL),
(8, '-', NULL, '01:30pm-02:30pm', NULL),
(9, '-', NULL, '02:30pm-03:30pm', NULL),
(10, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_ashoksaturday`
--

CREATE TABLE `portal_ashoksaturday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_ashoksaturday`
--

INSERT INTO `portal_ashoksaturday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'AM II', NULL, '11:50am-12:30am', 7),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_ashokthursday`
--

CREATE TABLE `portal_ashokthursday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_ashokthursday`
--

INSERT INTO `portal_ashokthursday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, '-', NULL, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_ashoktuesday`
--

CREATE TABLE `portal_ashoktuesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_ashoktuesday`
--

INSERT INTO `portal_ashoktuesday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, '-', NULL, '11:50am-12:30am', NULL),
(6, 'AM II', NULL, '12:30am-01:30pm', 7),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_ashokwednesday`
--

CREATE TABLE `portal_ashokwednesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_ashokwednesday`
--

INSERT INTO `portal_ashokwednesday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'AM II', NULL, '11:50am-12:30am', 7),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_fyfriday`
--

CREATE TABLE `portal_fyfriday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_fyfriday`
--

INSERT INTO `portal_fyfriday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, 'C++ & MPMC - I', NULL, '8:00am-9:00am', NULL),
(2, 'C++ & MPMC - II', NULL, '09:00am-10:00am', NULL),
(3, 'C++ & MPMC - III', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'AM - II', NULL, '11:50am-12:30pm', NULL),
(6, 'DS', NULL, '12:30pm-01:30pm', NULL),
(7, 'SPC', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_fymonday`
--

CREATE TABLE `portal_fymonday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_fymonday`
--

INSERT INTO `portal_fymonday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(2, 'C++', 210005, '08:00am-09:00am', NULL),
(8, 'MPMC - I', 210105, '09:00am-10:00am', NULL),
(9, 'MPMC - II', 210105, '10:00am-11:00am', NULL),
(10, '-', NULL, '11:50am-12:30pm', NULL),
(11, 'AM - II', NULL, '11:50am-12:30pm', NULL),
(12, 'DS', NULL, '12:30pm-01:30pm', NULL),
(13, 'CG', 210101, '01:30pm-02:30pm', 'active'),
(14, '-', NULL, '02:30pm-03:30pm', NULL),
(15, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_fysaturday`
--

CREATE TABLE `portal_fysaturday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_fysaturday`
--

INSERT INTO `portal_fysaturday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, 'C++ & CG - I', 210101, '08:00am-09:00am', 'active'),
(2, 'C++ & CG - II', 210101, '09:00am-10:00am', 'active'),
(3, 'C++ & CG - III', 210101, '10:00am-11:00am', 'active'),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'AM - II', NULL, '11:50am-12:30pm', NULL),
(6, 'SPC', NULL, '11:50am-12:30pm', NULL),
(7, '-', NULL, '12:30pm-01:30pm', NULL),
(8, '-', NULL, '01:30pm-02:30pm', NULL),
(9, '-', NULL, '02:30pm-03:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_fysem1`
--

CREATE TABLE `portal_fysem1` (
  `subId` varchar(20) NOT NULL,
  `subName` varchar(50) NOT NULL,
  `subQuote` varchar(255) NOT NULL,
  `subImage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_fysem1`
--

INSERT INTO `portal_fysem1` (`subId`, `subName`, `subQuote`, `subImage`) VALUES
('SITS0101', 'Professional Communication Skills', 'The art of communication is the language of leadership', 'FY_Subjects_Images/PCS_P4EP7Jw.jpeg'),
('SITS0104', 'Art of Programming', 'Programming is an art', 'FY_Subjects_Images/AOP_2mpbNKU.jpg'),
('STIS0102', 'Applied Mathematics-1', 'Applied Mathematics will always need pure mathematics just as anteaters will always need ants', 'FY_Subjects_Images/AM1_SXU5KJd.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `portal_fysem1_substudents`
--

CREATE TABLE `portal_fysem1_substudents` (
  `id` int(11) NOT NULL,
  `fysem1_id` varchar(20) NOT NULL,
  `fybscit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_fysem1_substudents`
--

INSERT INTO `portal_fysem1_substudents` (`id`, `fysem1_id`, `fybscit_id`) VALUES
(1, 'SITS0101', 185039),
(3, 'SITS0104', 185039),
(2, 'STIS0102', 185039);

-- --------------------------------------------------------

--
-- Table structure for table `portal_fysem1_subteacher`
--

CREATE TABLE `portal_fysem1_subteacher` (
  `id` int(11) NOT NULL,
  `fysem1_id` varchar(20) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_fysem1_subteacher`
--

INSERT INTO `portal_fysem1_subteacher` (`id`, `fysem1_id`, `teacher_id`) VALUES
(3, 'SITS0104', 210101),
(2, 'STIS0102', 210103);

-- --------------------------------------------------------

--
-- Table structure for table `portal_fythursday`
--

CREATE TABLE `portal_fythursday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_fythursday`
--

INSERT INTO `portal_fythursday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'DS', NULL, '11:50am-12:30pm', NULL),
(6, 'C++', NULL, '12:30pm-01:30pm', NULL),
(7, 'CG', 210101, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_fytuesday`
--

CREATE TABLE `portal_fytuesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_fytuesday`
--

INSERT INTO `portal_fytuesday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, 'CG-I', 210101, '8:00am-9:00am', 'Active'),
(2, 'SPC', NULL, '09:00am-10:00am', NULL),
(3, 'CG II', 210101, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'C++', NULL, '11:50am-12:30pm', NULL),
(6, 'AM - II', NULL, '12:30pm-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_fywednesday`
--

CREATE TABLE `portal_fywednesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_fywednesday`
--

INSERT INTO `portal_fywednesday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, 'MPMC - I', NULL, '8:00am-9:00am', NULL),
(2, 'MPMC - II', NULL, '09:00am-10:00am', NULL),
(3, 'DS', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'AM - II', NULL, '11:50am-12:30pm', NULL),
(6, 'CG', 210101, '12:30pm-01:30pm', 'active'),
(7, 'C++', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_lydiafriday`
--

CREATE TABLE `portal_lydiafriday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_lydiafriday`
--

INSERT INTO `portal_lydiafriday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, 'DS Prac I', NULL, '08:00am-09:00am', 5),
(2, 'DS Prac II', NULL, '09:00am-10:00am', 5),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'AP', NULL, '11:50am-12:30pm', 5),
(6, '-', NULL, '12:30pm-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_lydiamonday`
--

CREATE TABLE `portal_lydiamonday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_lydiamonday`
--

INSERT INTO `portal_lydiamonday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(5, 'AP Prac I', NULL, '8:00am-9:00am', 5),
(6, 'AP Prac II', NULL, '09:00am-10:00am', 5),
(7, '-', NULL, '10:00am-11:00am', NULL),
(8, '-', NULL, '11:00am-11:50am', NULL),
(9, 'IP & DL', NULL, '11:50am-12:30pm', 5),
(10, '-', NULL, '12:30pm-01:30pm', NULL),
(11, 'CG', NULL, '01:30pm-02:30pm', 5),
(12, '-', NULL, '02:30pm-03:30pm', NULL),
(13, '-', NULL, '03:30pm-04:30pm', NULL),
(18, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_lydiasaturday`
--

CREATE TABLE `portal_lydiasaturday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_lydiasaturday`
--

INSERT INTO `portal_lydiasaturday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, 'CG Prac I', NULL, '08:00am-09:00am', 5),
(2, 'CG Prac II', NULL, '09:00am-10:00am', 5),
(3, 'CG Prac III', NULL, '10:00am-11:00am', 5),
(4, 'AP', NULL, '11:00am-11:50am', 5),
(5, 'IP & DL', NULL, '11:50am-12:30pm', 5),
(6, '-', NULL, '12:30pm-01:30pm', NULL),
(7, 'Project I', NULL, '01:30pm-02:30pm', 5),
(8, 'Project II', NULL, '02:30pm-03:30pm', 5),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_lydiathursday`
--

CREATE TABLE `portal_lydiathursday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_lydiathursday`
--

INSERT INTO `portal_lydiathursday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, 'CG', NULL, '10:00am-11:00am', 5),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, '-', NULL, '11:50am-12:30pm', NULL),
(6, '-', NULL, '12:30pm-01:30pm', NULL),
(7, 'IP & DL', NULL, '01:30pm-02:30pm', 5),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_lydiatuesday`
--

CREATE TABLE `portal_lydiatuesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_lydiatuesday`
--

INSERT INTO `portal_lydiatuesday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, 'CG-I', NULL, '8:00am-9:00am', 5),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, 'CG-II', NULL, '10:00am-11:00am', 5),
(4, 'IP & DL', NULL, '11:00am-11:50am', 5),
(5, '-', NULL, '11:50am-12:30pm', NULL),
(6, '-', NULL, '12:30pm-01:30pm', NULL),
(7, 'AP', NULL, '01:30pm-02:30pm', 5),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_lydiawednesday`
--

CREATE TABLE `portal_lydiawednesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_lydiawednesday`
--

INSERT INTO `portal_lydiawednesday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, 'AP Prac I', NULL, '08:00am-09:00am', 5),
(2, 'AP Prac II', NULL, '09:00am-10:00am', 5),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, 'AP', NULL, '11:00am-11:50am', 5),
(5, '-', NULL, '11:50am-12:30pm', NULL),
(6, 'CG', NULL, '12:30pm-01:30pm', 5),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_melissafriday`
--

CREATE TABLE `portal_melissafriday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_melissafriday`
--

INSERT INTO `portal_melissafriday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, 'MPMC Prac I', NULL, '08:00am-09:00am', 9),
(2, 'MPMC Prac II', NULL, '09:00am-10:00am', 9),
(3, 'MPMC Prac III', NULL, '10:00am-11:00am', 9),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, '-', NULL, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_melissamonday`
--

CREATE TABLE `portal_melissamonday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_melissamonday`
--

INSERT INTO `portal_melissamonday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(3, '-', NULL, '08:00am-09:00am', NULL),
(4, 'MPMC I', NULL, '09:00am-10:00am', 9),
(5, 'MPMC II', NULL, '10:00am-11:00am', 9),
(6, '-', NULL, '11:00am-11:50am', NULL),
(7, '-', NULL, '11:50am-12:30am', NULL),
(8, '-', NULL, '12:30am-01:30pm', NULL),
(9, '-', NULL, '01:30pm-02:30pm', NULL),
(10, '-', NULL, '02:30pm-03:30pm', NULL),
(11, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_melissasaturday`
--

CREATE TABLE `portal_melissasaturday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_melissasaturday`
--

INSERT INTO `portal_melissasaturday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, '-', NULL, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_melissathursday`
--

CREATE TABLE `portal_melissathursday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_melissathursday`
--

INSERT INTO `portal_melissathursday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, '-', NULL, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_melissatuesday`
--

CREATE TABLE `portal_melissatuesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_melissatuesday`
--

INSERT INTO `portal_melissatuesday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, '-', NULL, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_melissawednesday`
--

CREATE TABLE `portal_melissawednesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_melissawednesday`
--

INSERT INTO `portal_melissawednesday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, 'MPMC I', NULL, '08:00am-09:00am', 9),
(2, 'MPMC II', NULL, '09:00am-10:00am', 9),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, '-', NULL, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_notes`
--

CREATE TABLE `portal_notes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Class` varchar(20) DEFAULT NULL,
  `note` varchar(100) NOT NULL,
  `professor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_notes`
--

INSERT INTO `portal_notes` (`id`, `name`, `Class`, `note`, `professor_id`) VALUES
(3, 'fyyy', 'fybscit', 'notes/cropped-1920-1080-774486.jpg', 210101),
(4, 'syyy', 'sybscit', 'notes/DATA_VISUALIZATION_PRACTICALS.pdf', 210103),
(5, 'tyyy', 'tybscit', 'notes/DATA_VISUALIZATION_PRACTICALS_H2rTdoc.pdf', 210104),
(6, 'hello', 'fybscit', 'notes/Java_1.pdf', 210101),
(7, 'R1p1', 'tybscit', 'notes/Covid19_list_20200701.pdf', 210302),
(8, 'm1my fav teacher', 'sybscit', 'notes/Appointment_Recieptt.pdf', 210105);

-- --------------------------------------------------------

--
-- Table structure for table `portal_papers`
--

CREATE TABLE `portal_papers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `Class` varchar(20) DEFAULT NULL,
  `paper` varchar(100) NOT NULL,
  `professor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_papers`
--

INSERT INTO `portal_papers` (`id`, `name`, `Class`, `paper`, `professor_id`) VALUES
(7, 'Paperr', 'fybscit', 'paper/Rathore_Textiles_Logo.png', 210101),
(8, 'Paper2', 'sybscit', 'paper/Untitled_document.pdf', 210101);

-- --------------------------------------------------------

--
-- Table structure for table `portal_rachanafriday`
--

CREATE TABLE `portal_rachanafriday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `portal_rachanamonday`
--

CREATE TABLE `portal_rachanamonday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `portal_rachanasaturday`
--

CREATE TABLE `portal_rachanasaturday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `portal_rachanathursday`
--

CREATE TABLE `portal_rachanathursday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `portal_rachanatuesday`
--

CREATE TABLE `portal_rachanatuesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `portal_rachanawednesday`
--

CREATE TABLE `portal_rachanawednesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `portal_royfriday`
--

CREATE TABLE `portal_royfriday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_royfriday`
--

INSERT INTO `portal_royfriday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, 'STOR I', NULL, '08:00am-09:00am', 11),
(2, 'STOR II', NULL, '09:00am-10:00am', 11),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, 'ST', NULL, '11:00am-11:50am', NULL),
(5, '-', NULL, '11:50am-12:30am', NULL),
(6, 'DS', NULL, '12:30am-01:30pm', 11),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_roymonday`
--

CREATE TABLE `portal_roymonday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_roymonday`
--

INSERT INTO `portal_roymonday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(3, 'BD Pracs I', NULL, '08:00am-09:00am', 11),
(4, 'BD Pracs II', NULL, '09:00am-10:00am', 11),
(5, 'BD Pracs III', NULL, '10:00am-11:00am', 11),
(6, '-', NULL, '11:00am-11:50am', 11),
(7, 'STOR', NULL, '11:50am-12:30am', 11),
(8, 'DS', NULL, '12:30am-01:30pm', 11),
(9, '-', NULL, '01:30pm-02:30pm', NULL),
(10, '-', NULL, '02:30pm-03:30pm', NULL),
(11, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_roysaturday`
--

CREATE TABLE `portal_roysaturday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_roysaturday`
--

INSERT INTO `portal_roysaturday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'STOR', NULL, '11:50am-12:30am', 11),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'Project I', NULL, '01:30pm-02:30pm', 11),
(8, 'Project II', NULL, '02:30pm-03:30pm', 11),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_roythursday`
--

CREATE TABLE `portal_roythursday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_roythursday`
--

INSERT INTO `portal_roythursday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, 'ST', NULL, '11:00am-11:50am', 11),
(5, 'DS', NULL, '11:50am-12:30am', 11),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'STOR', NULL, '01:30pm-02:30pm', 11),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_roytuesday`
--

CREATE TABLE `portal_roytuesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_roytuesday`
--

INSERT INTO `portal_roytuesday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, 'STOR Pracs I', NULL, '08:00am-09:00am', 11),
(2, 'STOR Pracs II', NULL, '09:00am-10:00am', 11),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'ST', NULL, '11:50am-12:30am', 11),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_roywednesday`
--

CREATE TABLE `portal_roywednesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_roywednesday`
--

INSERT INTO `portal_roywednesday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, 'DS Pracs', NULL, '10:00am-11:00am', 11),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'STOR', NULL, '11:50am-12:30am', 11),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_subhashfriday`
--

CREATE TABLE `portal_subhashfriday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_subhashfriday`
--

INSERT INTO `portal_subhashfriday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'SE', NULL, '11:50am-12:30am', 10),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'Adv. Java', NULL, '01:30pm-02:30pm', 10),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_subhashmonday`
--

CREATE TABLE `portal_subhashmonday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_subhashmonday`
--

INSERT INTO `portal_subhashmonday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, 'AJ Pracs I', NULL, '08:00am-09:00am', 10),
(2, 'AJ Pracs II', NULL, '09:00am-10:00am', 10),
(3, 'AJ Pracs III', NULL, '10:00am-11:00am', 10),
(4, 'SE', NULL, '11:00am-11:50am', 10),
(5, '-', NULL, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'Adv. Java', NULL, '01:30pm-02:30pm', 10),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_subhashsaturday`
--

CREATE TABLE `portal_subhashsaturday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_subhashsaturday`
--

INSERT INTO `portal_subhashsaturday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, '-', NULL, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'Project I', NULL, '01:30pm-02:30pm', 10),
(8, 'Project II', NULL, '02:30pm-03:30pm', 10),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_subhashthursday`
--

CREATE TABLE `portal_subhashthursday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_subhashthursday`
--

INSERT INTO `portal_subhashthursday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, 'DS Pracs I', NULL, '09:00am-10:00am', 10),
(3, 'DS Pracs II', NULL, '10:00am-11:00am', 10),
(4, 'DS I', NULL, '11:00am-11:50am', 10),
(5, 'Adv. Java', NULL, '11:50am-12:30am', 10),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, 'SE', NULL, '02:30pm-03:30pm', 10),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_subhashtuesday`
--

CREATE TABLE `portal_subhashtuesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_subhashtuesday`
--

INSERT INTO `portal_subhashtuesday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, 'AJ Pracs I', NULL, '08:00am-09:00am', 10),
(2, 'AJ Pracs II', NULL, '09:00am-10:00am', 10),
(3, 'AJ Pracs III', NULL, '10:00am-11:00am', 10),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, 'DS', NULL, '11:50am-12:30am', 10),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, 'SE', NULL, '02:30pm-03:30pm', 10),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_subhashwednesday`
--

CREATE TABLE `portal_subhashwednesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) DEFAULT NULL,
  `SubStatus` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `uname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_subhashwednesday`
--

INSERT INTO `portal_subhashwednesday` (`id`, `SubName`, `SubStatus`, `Time`, `uname_id`) VALUES
(1, 'BD Pracs I', NULL, '08:00am-09:00am', 10),
(2, 'BD Pracs II', NULL, '09:00am-10:00am', 10),
(3, 'BD Pracs III', NULL, '10:00am-11:00am', 10),
(4, '-', NULL, '11:00am-11:50am', NULL),
(5, '-', NULL, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, 'DS I', NULL, '02:30pm-03:30pm', 10),
(9, 'DS II', NULL, '03:30pm-04:30pm', 10);

-- --------------------------------------------------------

--
-- Table structure for table `portal_subject`
--

CREATE TABLE `portal_subject` (
  `id` int(11) NOT NULL,
  `sid` varchar(6) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `squote` longtext NOT NULL,
  `simgurl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `portal_syfriday`
--

CREATE TABLE `portal_syfriday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_syfriday`
--

INSERT INTO `portal_syfriday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, 'STOR & DS Pracs I', 210302, '08:00am-09:00am', NULL),
(2, 'STOR & DS Pracs II', 210302, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, 'AP', 210101, '11:00am-11:50am', NULL),
(5, 'SE', 210301, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'MOS I', 210005, '01:30pm-02:30pm', NULL),
(8, 'MOS II', 210005, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_symonday`
--

CREATE TABLE `portal_symonday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_symonday`
--

INSERT INTO `portal_symonday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, 'AP Pracs I', 210101, '8:00am-9:00am', NULL),
(2, 'AP Pracs II', 210101, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, 'SE', 210301, '11:00am-11:50am', NULL),
(5, 'STOR', 210302, '11:50am-12:30am', NULL),
(6, 'CFC', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, 'MOS', 210005, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_sysaturday`
--

CREATE TABLE `portal_sysaturday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_sysaturday`
--

INSERT INTO `portal_sysaturday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, 'AP', 210101, '11:00am-11:50am', NULL),
(5, 'STOR', 210302, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_sysem3`
--

CREATE TABLE `portal_sysem3` (
  `subId` varchar(20) NOT NULL,
  `subName` varchar(50) NOT NULL,
  `subQuote` varchar(255) NOT NULL,
  `subImage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `portal_sysem3_substudents`
--

CREATE TABLE `portal_sysem3_substudents` (
  `id` int(11) NOT NULL,
  `sysem3_id` varchar(20) NOT NULL,
  `sybscit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `portal_sysem3_subteacher`
--

CREATE TABLE `portal_sysem3_subteacher` (
  `id` int(11) NOT NULL,
  `sysem3_id` varchar(20) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `portal_sythursday`
--

CREATE TABLE `portal_sythursday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_sythursday`
--

INSERT INTO `portal_sythursday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, 'CFC', NULL, '08:00am-09:00am', NULL),
(2, 'DS & MOS Pracs I', 210301, '09:00am-10:00am', NULL),
(3, 'DS & MOS Pracs II', 210301, '10:00am-11:00am', NULL),
(4, 'DS', 210301, '11:00am-11:50am', NULL),
(5, 'MOS', 210005, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'STOR', 210302, '01:30pm-02:30pm', NULL),
(8, 'SE', 210301, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_sytuesday`
--

CREATE TABLE `portal_sytuesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_sytuesday`
--

INSERT INTO `portal_sytuesday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, 'STOR & MOS Pracs I', 210302, '08:00am-09:00am', NULL),
(2, 'STOR & MOS Pracs II', 210302, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, 'MOS', 210005, '11:00am-11:50am', NULL),
(5, 'DS', 210301, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'AP', 210101, '01:30pm-02:30pm', NULL),
(8, 'SE', 210301, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_sywednesday`
--

CREATE TABLE `portal_sywednesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_sywednesday`
--

INSERT INTO `portal_sywednesday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, 'AP Pracs I', 210101, '08:00am-09:00am', NULL),
(2, 'AP Pracs II', 210101, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, 'AP', 210101, '11:00am-11:50am', NULL),
(5, 'STOR', 210302, '11:50am-12:30am', NULL),
(6, 'CFC', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, 'DS I', 210301, '02:30pm-03:30pm', NULL),
(9, 'DS II', 210301, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_tyfriday`
--

CREATE TABLE `portal_tyfriday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_tyfriday`
--

INSERT INTO `portal_tyfriday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, 'ST', 210302, '11:00am-11:50am', NULL),
(5, 'Cloud', 210005, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'Adv. Java', 210301, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_tymonday`
--

CREATE TABLE `portal_tymonday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_tymonday`
--

INSERT INTO `portal_tymonday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, 'AJ & BD Pracs I', 210302, '08:00am-09:00am', NULL),
(2, 'AJ & BD Pracs II', 210302, '09:00am-10:00am', NULL),
(3, 'AJ & BD Pracs III', 210302, '10:00am-11:00am', NULL),
(4, 'Cloud', 210005, '11:00am-11:50am', NULL),
(5, 'IP', 210101, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'Adv. Java', 210301, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_tysaturday`
--

CREATE TABLE `portal_tysaturday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_tysaturday`
--

INSERT INTO `portal_tysaturday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, 'ST', 210302, '11:00am-11:50am', NULL),
(5, 'IP', 210101, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'Project I', NULL, '01:30pm-02:30pm', NULL),
(8, 'Project II', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_tysem5`
--

CREATE TABLE `portal_tysem5` (
  `subId` varchar(20) NOT NULL,
  `subName` varchar(50) NOT NULL,
  `subQuote` varchar(255) NOT NULL,
  `subImage` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_tysem5`
--

INSERT INTO `portal_tysem5` (`subId`, `subName`, `subQuote`, `subImage`) VALUES
('SITS0505', 'Introduction to AI', 'AI is the future', 'TY_Subjects_Images/AI_dOjO02Z.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `portal_tysem5_substudents`
--

CREATE TABLE `portal_tysem5_substudents` (
  `id` int(11) NOT NULL,
  `tysem5_id` varchar(20) NOT NULL,
  `tybscit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_tysem5_substudents`
--

INSERT INTO `portal_tysem5_substudents` (`id`, `tysem5_id`, `tybscit_id`) VALUES
(1, 'SITS0505', 185056);

-- --------------------------------------------------------

--
-- Table structure for table `portal_tysem5_subteacher`
--

CREATE TABLE `portal_tysem5_subteacher` (
  `id` int(11) NOT NULL,
  `tysem5_id` varchar(20) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_tysem5_subteacher`
--

INSERT INTO `portal_tysem5_subteacher` (`id`, `tysem5_id`, `teacher_id`) VALUES
(1, 'SITS0505', 210101);

-- --------------------------------------------------------

--
-- Table structure for table `portal_tythursday`
--

CREATE TABLE `portal_tythursday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_tythursday`
--

INSERT INTO `portal_tythursday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, '-', NULL, '08:00am-09:00am', NULL),
(2, '-', NULL, '09:00am-10:00am', NULL),
(3, '-', NULL, '10:00am-11:00am', NULL),
(4, 'ST', 210302, '11:00am-11:50am', NULL),
(5, 'Adv. Java', 210301, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'IP', 210101, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_tytuesday`
--

CREATE TABLE `portal_tytuesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_tytuesday`
--

INSERT INTO `portal_tytuesday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, 'AJ Pracs I', 210301, '08:00am-09:00am', NULL),
(2, 'AJ Pracs II', 210301, '09:00am-10:00am', NULL),
(3, 'AJ Pracs III', 210301, '10:00am-11:00am', NULL),
(4, 'IP', 210101, '11:00am-11:50am', NULL),
(5, 'ST', 210302, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, 'Cloud', 210005, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `portal_tywednesday`
--

CREATE TABLE `portal_tywednesday` (
  `id` int(11) NOT NULL,
  `SubName` varchar(20) NOT NULL,
  `SubTeacher_id` int(11) DEFAULT NULL,
  `Time` varchar(20) NOT NULL,
  `SubStatus` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portal_tywednesday`
--

INSERT INTO `portal_tywednesday` (`id`, `SubName`, `SubTeacher_id`, `Time`, `SubStatus`) VALUES
(1, 'BD Pracs I', 210301, '08:00am-09:00am', NULL),
(2, 'BD Pracs II', 210301, '09:00am-10:00am', NULL),
(3, 'BD Pracs III', 210301, '10:00am-11:00am', NULL),
(4, 'Cloud', 210005, '11:00am-11:50am', NULL),
(5, 'Adv. Java', 210301, '11:50am-12:30am', NULL),
(6, '-', NULL, '12:30am-01:30pm', NULL),
(7, '-', NULL, '01:30pm-02:30pm', NULL),
(8, '-', NULL, '02:30pm-03:30pm', NULL),
(9, '-', NULL, '03:30pm-04:30pm', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_fybscit`
--

CREATE TABLE `users_fybscit` (
  `uid` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `uname_id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_fybscit`
--

INSERT INTO `users_fybscit` (`uid`, `city`, `uname_id`, `role`) VALUES
(185039, 'Mumbai', 2, 'fyStudent');

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

CREATE TABLE `users_profile` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_profile`
--

INSERT INTO `users_profile` (`id`, `image`, `user_id`) VALUES
(1, 'default.jpg', 1),
(2, 'default.jpg', 2),
(3, 'default.jpg', 3),
(4, 'default.jpg', 4),
(5, 'default.jpg', 5),
(6, 'default.jpg', 6),
(7, 'default.jpg', 7),
(8, 'default.jpg', 8),
(9, 'default.jpg', 9),
(10, 'default.jpg', 10),
(11, 'default.jpg', 11),
(12, 'default.jpg', 12),
(13, 'default.jpg', 13);

-- --------------------------------------------------------

--
-- Table structure for table `users_sybscit`
--

CREATE TABLE `users_sybscit` (
  `uid` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `uname_id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_sybscit`
--

INSERT INTO `users_sybscit` (`uid`, `city`, `uname_id`, `role`) VALUES
(185007, 'Mumbai', 3, 'syStudent');

-- --------------------------------------------------------

--
-- Table structure for table `users_teacher`
--

CREATE TABLE `users_teacher` (
  `uid` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `uname_id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_teacher`
--

INSERT INTO `users_teacher` (`uid`, `city`, `uname_id`, `role`) VALUES
(210005, 'Mumbai', 12, 'Teacher'),
(210101, 'Mumbai', 5, 'Teacher'),
(210103, 'Navi-Mumbai', 7, 'Teacher'),
(210104, 'Thane', 8, 'Teacher'),
(210105, 'Palghar', 9, 'Teacher'),
(210301, 'Thane', 10, 'Teacher'),
(210302, 'Thane', 11, 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `users_tybscit`
--

CREATE TABLE `users_tybscit` (
  `uid` int(11) NOT NULL,
  `city` varchar(20) NOT NULL,
  `uname_id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_tybscit`
--

INSERT INTO `users_tybscit` (`uid`, `city`, `uname_id`, `role`) VALUES
(185056, 'Thane', 4, 'tyStudent'),
(212155, 'Mumbai', 13, 'tyStudent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `portal_aaronfriday`
--
ALTER TABLE `portal_aaronfriday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_aaronfriday_uname_id_9f6a962d_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_aaronmonday`
--
ALTER TABLE `portal_aaronmonday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_aaronmonday_uname_id_955e4ca0_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_aaronsaturday`
--
ALTER TABLE `portal_aaronsaturday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_aaronsaturday_uname_id_85cd9e72_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_aaronthursday`
--
ALTER TABLE `portal_aaronthursday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_aaronthursday_uname_id_40929fff_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_aarontuesday`
--
ALTER TABLE `portal_aarontuesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_aarontuesday_uname_id_b734a4b6_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_aaronwednesday`
--
ALTER TABLE `portal_aaronwednesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_aaronwednesday_uname_id_6ffd868a_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_ashokfriday`
--
ALTER TABLE `portal_ashokfriday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_ashokfriday_uname_id_2641f487_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_ashokmonday`
--
ALTER TABLE `portal_ashokmonday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_ashokmonday_uname_id_ae172d7e_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_ashoksaturday`
--
ALTER TABLE `portal_ashoksaturday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_ashoksaturday_uname_id_20f29d76_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_ashokthursday`
--
ALTER TABLE `portal_ashokthursday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_ashokthursday_uname_id_2cb8e4af_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_ashoktuesday`
--
ALTER TABLE `portal_ashoktuesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_ashoktuesday_uname_id_e8cf429b_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_ashokwednesday`
--
ALTER TABLE `portal_ashokwednesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_ashokwednesday_uname_id_6c4867e4_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_fyfriday`
--
ALTER TABLE `portal_fyfriday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_fyfriday_SubTeacher_id_664ade01` (`SubTeacher_id`);

--
-- Indexes for table `portal_fymonday`
--
ALTER TABLE `portal_fymonday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_fymonday_SubTeacher_id_2c4bfd78` (`SubTeacher_id`);

--
-- Indexes for table `portal_fysaturday`
--
ALTER TABLE `portal_fysaturday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_fysaturday_SubTeacher_id_178e144a` (`SubTeacher_id`);

--
-- Indexes for table `portal_fysem1`
--
ALTER TABLE `portal_fysem1`
  ADD PRIMARY KEY (`subId`);

--
-- Indexes for table `portal_fysem1_substudents`
--
ALTER TABLE `portal_fysem1_substudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portal_fysem1_subStudents_fysem1_id_fybscit_id_5112029a_uniq` (`fysem1_id`,`fybscit_id`),
  ADD KEY `portal_fysem1_subStu_fybscit_id_d221f500_fk_users_fyb` (`fybscit_id`);

--
-- Indexes for table `portal_fysem1_subteacher`
--
ALTER TABLE `portal_fysem1_subteacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portal_fysem1_subTeacher_fysem1_id_teacher_id_1dae5dcb_uniq` (`fysem1_id`,`teacher_id`),
  ADD KEY `portal_fysem1_subTea_teacher_id_ea87282e_fk_users_tea` (`teacher_id`);

--
-- Indexes for table `portal_fythursday`
--
ALTER TABLE `portal_fythursday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_fythursday_SubTeacher_id_2aa2e51c` (`SubTeacher_id`);

--
-- Indexes for table `portal_fytuesday`
--
ALTER TABLE `portal_fytuesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_fytuesday_SubTeacher_id_b4820236` (`SubTeacher_id`);

--
-- Indexes for table `portal_fywednesday`
--
ALTER TABLE `portal_fywednesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_fywednesday_SubTeacher_id_ca8cc107` (`SubTeacher_id`);

--
-- Indexes for table `portal_lydiafriday`
--
ALTER TABLE `portal_lydiafriday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_lydiafriday_uname_id_48a04e82_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_lydiamonday`
--
ALTER TABLE `portal_lydiamonday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_lydiamonday_uname_id_2a863517_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_lydiasaturday`
--
ALTER TABLE `portal_lydiasaturday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_lydiasaturday_uname_id_418867e0_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_lydiathursday`
--
ALTER TABLE `portal_lydiathursday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_lydiathursday_uname_id_2c4f3dff_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_lydiatuesday`
--
ALTER TABLE `portal_lydiatuesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_lydiatuesday_uname_id_c4260e23_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_lydiawednesday`
--
ALTER TABLE `portal_lydiawednesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_lydiawednesday_uname_id_5804a1dd_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_melissafriday`
--
ALTER TABLE `portal_melissafriday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_melissafriday_uname_id_6cb196de_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_melissamonday`
--
ALTER TABLE `portal_melissamonday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_melissamonday_uname_id_ab5ac6a3_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_melissasaturday`
--
ALTER TABLE `portal_melissasaturday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_melissasaturday_uname_id_7deee681_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_melissathursday`
--
ALTER TABLE `portal_melissathursday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_melissathursday_uname_id_4267c238_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_melissatuesday`
--
ALTER TABLE `portal_melissatuesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_melissatuesday_uname_id_9545ea56_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_melissawednesday`
--
ALTER TABLE `portal_melissawednesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_melissawednesday_uname_id_a00f36d6_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_notes`
--
ALTER TABLE `portal_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_notes_professor_id_a4fe5dd1_fk_users_teacher_uid` (`professor_id`);

--
-- Indexes for table `portal_papers`
--
ALTER TABLE `portal_papers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_papers_professor_id_0a4c80be_fk_users_teacher_uid` (`professor_id`);

--
-- Indexes for table `portal_rachanafriday`
--
ALTER TABLE `portal_rachanafriday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_rachanafriday_uname_id_0de11dfc_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_rachanamonday`
--
ALTER TABLE `portal_rachanamonday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_rachanamonday_uname_id_e598089d_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_rachanasaturday`
--
ALTER TABLE `portal_rachanasaturday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_rachanasaturday_uname_id_f5d463d6_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_rachanathursday`
--
ALTER TABLE `portal_rachanathursday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_rachanathursday_uname_id_37fb1767_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_rachanatuesday`
--
ALTER TABLE `portal_rachanatuesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_rachanatuesday_uname_id_33daa712_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_rachanawednesday`
--
ALTER TABLE `portal_rachanawednesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_rachanawednesday_uname_id_2e586116_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_royfriday`
--
ALTER TABLE `portal_royfriday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_royfriday_uname_id_678b169b_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_roymonday`
--
ALTER TABLE `portal_roymonday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_roymonday_uname_id_12ca0cff_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_roysaturday`
--
ALTER TABLE `portal_roysaturday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_roysaturday_uname_id_ad3c1a34_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_roythursday`
--
ALTER TABLE `portal_roythursday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_roythursday_uname_id_26132667_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_roytuesday`
--
ALTER TABLE `portal_roytuesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_roytuesday_uname_id_2189467b_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_roywednesday`
--
ALTER TABLE `portal_roywednesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_roywednesday_uname_id_ecd1a109_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_subhashfriday`
--
ALTER TABLE `portal_subhashfriday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_subhashfriday_uname_id_f851b18e_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_subhashmonday`
--
ALTER TABLE `portal_subhashmonday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_subhashmonday_uname_id_d9081070_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_subhashsaturday`
--
ALTER TABLE `portal_subhashsaturday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_subhashsaturday_uname_id_d1ae82b6_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_subhashthursday`
--
ALTER TABLE `portal_subhashthursday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_subhashthursday_uname_id_43a50aa0_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_subhashtuesday`
--
ALTER TABLE `portal_subhashtuesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_subhashtuesday_uname_id_7d360886_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_subhashwednesday`
--
ALTER TABLE `portal_subhashwednesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_subhashwednesday_uname_id_3632ff7f_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `portal_subject`
--
ALTER TABLE `portal_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portal_syfriday`
--
ALTER TABLE `portal_syfriday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_syfriday_SubTeacher_id_8909c0e5` (`SubTeacher_id`);

--
-- Indexes for table `portal_symonday`
--
ALTER TABLE `portal_symonday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_symonday_SubTeacher_id_e776be41` (`SubTeacher_id`);

--
-- Indexes for table `portal_sysaturday`
--
ALTER TABLE `portal_sysaturday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_sysaturday_SubTeacher_id_744c509c` (`SubTeacher_id`);

--
-- Indexes for table `portal_sysem3`
--
ALTER TABLE `portal_sysem3`
  ADD PRIMARY KEY (`subId`);

--
-- Indexes for table `portal_sysem3_substudents`
--
ALTER TABLE `portal_sysem3_substudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portal_sysem3_subStudents_sysem3_id_sybscit_id_6e3a1c88_uniq` (`sysem3_id`,`sybscit_id`),
  ADD KEY `portal_sysem3_subStu_sybscit_id_58e9c60b_fk_users_syb` (`sybscit_id`);

--
-- Indexes for table `portal_sysem3_subteacher`
--
ALTER TABLE `portal_sysem3_subteacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portal_sysem3_subTeacher_sysem3_id_teacher_id_3e1e9c2a_uniq` (`sysem3_id`,`teacher_id`),
  ADD KEY `portal_sysem3_subTea_teacher_id_6d458d88_fk_users_tea` (`teacher_id`);

--
-- Indexes for table `portal_sythursday`
--
ALTER TABLE `portal_sythursday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_sythursday_SubTeacher_id_10f065c7` (`SubTeacher_id`);

--
-- Indexes for table `portal_sytuesday`
--
ALTER TABLE `portal_sytuesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_sytuesday_SubTeacher_id_2ef1c9fb` (`SubTeacher_id`);

--
-- Indexes for table `portal_sywednesday`
--
ALTER TABLE `portal_sywednesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_sywednesday_SubTeacher_id_5b070589` (`SubTeacher_id`);

--
-- Indexes for table `portal_tyfriday`
--
ALTER TABLE `portal_tyfriday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_tyfriday_SubTeacher_id_c42bb903` (`SubTeacher_id`);

--
-- Indexes for table `portal_tymonday`
--
ALTER TABLE `portal_tymonday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_tymonday_SubTeacher_id_cfc487eb` (`SubTeacher_id`);

--
-- Indexes for table `portal_tysaturday`
--
ALTER TABLE `portal_tysaturday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_tysaturday_SubTeacher_id_24dcdca7` (`SubTeacher_id`);

--
-- Indexes for table `portal_tysem5`
--
ALTER TABLE `portal_tysem5`
  ADD PRIMARY KEY (`subId`);

--
-- Indexes for table `portal_tysem5_substudents`
--
ALTER TABLE `portal_tysem5_substudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portal_tysem5_subStudents_tysem5_id_tybscit_id_52869e12_uniq` (`tysem5_id`,`tybscit_id`),
  ADD KEY `portal_tysem5_subStu_tybscit_id_ec6883b9_fk_users_tyb` (`tybscit_id`);

--
-- Indexes for table `portal_tysem5_subteacher`
--
ALTER TABLE `portal_tysem5_subteacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `portal_tysem5_subTeacher_tysem5_id_teacher_id_14f7016f_uniq` (`tysem5_id`,`teacher_id`),
  ADD KEY `portal_tysem5_subTea_teacher_id_b330b6ba_fk_users_tea` (`teacher_id`);

--
-- Indexes for table `portal_tythursday`
--
ALTER TABLE `portal_tythursday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_tythursday_SubTeacher_id_2c4e05be` (`SubTeacher_id`);

--
-- Indexes for table `portal_tytuesday`
--
ALTER TABLE `portal_tytuesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_tytuesday_SubTeacher_id_ad8532ed` (`SubTeacher_id`);

--
-- Indexes for table `portal_tywednesday`
--
ALTER TABLE `portal_tywednesday`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portal_tywednesday_SubTeacher_id_ec5bdc86` (`SubTeacher_id`);

--
-- Indexes for table `users_fybscit`
--
ALTER TABLE `users_fybscit`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `users_fybscit_uname_id_3e5099ed_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `users_sybscit`
--
ALTER TABLE `users_sybscit`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `users_sybscit_uname_id_8bbf7969_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `users_teacher`
--
ALTER TABLE `users_teacher`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `users_teacher_uname_id_36a3ea6c_fk_auth_user_id` (`uname_id`);

--
-- Indexes for table `users_tybscit`
--
ALTER TABLE `users_tybscit`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `users_tybscit_uname_id_633b1e37_fk_auth_user_id` (`uname_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `portal_aaronfriday`
--
ALTER TABLE `portal_aaronfriday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `portal_aaronmonday`
--
ALTER TABLE `portal_aaronmonday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `portal_aaronsaturday`
--
ALTER TABLE `portal_aaronsaturday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_aaronthursday`
--
ALTER TABLE `portal_aaronthursday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_aarontuesday`
--
ALTER TABLE `portal_aarontuesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_aaronwednesday`
--
ALTER TABLE `portal_aaronwednesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_ashokfriday`
--
ALTER TABLE `portal_ashokfriday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_ashokmonday`
--
ALTER TABLE `portal_ashokmonday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `portal_ashoksaturday`
--
ALTER TABLE `portal_ashoksaturday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_ashokthursday`
--
ALTER TABLE `portal_ashokthursday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_ashoktuesday`
--
ALTER TABLE `portal_ashoktuesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_ashokwednesday`
--
ALTER TABLE `portal_ashokwednesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_fyfriday`
--
ALTER TABLE `portal_fyfriday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_fymonday`
--
ALTER TABLE `portal_fymonday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `portal_fysaturday`
--
ALTER TABLE `portal_fysaturday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `portal_fysem1_substudents`
--
ALTER TABLE `portal_fysem1_substudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portal_fysem1_subteacher`
--
ALTER TABLE `portal_fysem1_subteacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `portal_fythursday`
--
ALTER TABLE `portal_fythursday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_fytuesday`
--
ALTER TABLE `portal_fytuesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_fywednesday`
--
ALTER TABLE `portal_fywednesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_lydiafriday`
--
ALTER TABLE `portal_lydiafriday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_lydiamonday`
--
ALTER TABLE `portal_lydiamonday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `portal_lydiasaturday`
--
ALTER TABLE `portal_lydiasaturday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_lydiathursday`
--
ALTER TABLE `portal_lydiathursday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_lydiatuesday`
--
ALTER TABLE `portal_lydiatuesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `portal_lydiawednesday`
--
ALTER TABLE `portal_lydiawednesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_melissafriday`
--
ALTER TABLE `portal_melissafriday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_melissamonday`
--
ALTER TABLE `portal_melissamonday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `portal_melissasaturday`
--
ALTER TABLE `portal_melissasaturday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_melissathursday`
--
ALTER TABLE `portal_melissathursday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_melissatuesday`
--
ALTER TABLE `portal_melissatuesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_melissawednesday`
--
ALTER TABLE `portal_melissawednesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_notes`
--
ALTER TABLE `portal_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `portal_papers`
--
ALTER TABLE `portal_papers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `portal_rachanafriday`
--
ALTER TABLE `portal_rachanafriday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_rachanamonday`
--
ALTER TABLE `portal_rachanamonday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portal_rachanasaturday`
--
ALTER TABLE `portal_rachanasaturday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_rachanathursday`
--
ALTER TABLE `portal_rachanathursday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_rachanatuesday`
--
ALTER TABLE `portal_rachanatuesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_rachanawednesday`
--
ALTER TABLE `portal_rachanawednesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_royfriday`
--
ALTER TABLE `portal_royfriday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_roymonday`
--
ALTER TABLE `portal_roymonday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `portal_roysaturday`
--
ALTER TABLE `portal_roysaturday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_roythursday`
--
ALTER TABLE `portal_roythursday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_roytuesday`
--
ALTER TABLE `portal_roytuesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_roywednesday`
--
ALTER TABLE `portal_roywednesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_subhashfriday`
--
ALTER TABLE `portal_subhashfriday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_subhashmonday`
--
ALTER TABLE `portal_subhashmonday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_subhashsaturday`
--
ALTER TABLE `portal_subhashsaturday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_subhashthursday`
--
ALTER TABLE `portal_subhashthursday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_subhashtuesday`
--
ALTER TABLE `portal_subhashtuesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_subhashwednesday`
--
ALTER TABLE `portal_subhashwednesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_subject`
--
ALTER TABLE `portal_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_syfriday`
--
ALTER TABLE `portal_syfriday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_symonday`
--
ALTER TABLE `portal_symonday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_sysaturday`
--
ALTER TABLE `portal_sysaturday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_sysem3_substudents`
--
ALTER TABLE `portal_sysem3_substudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_sysem3_subteacher`
--
ALTER TABLE `portal_sysem3_subteacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portal_sythursday`
--
ALTER TABLE `portal_sythursday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_sytuesday`
--
ALTER TABLE `portal_sytuesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_sywednesday`
--
ALTER TABLE `portal_sywednesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_tyfriday`
--
ALTER TABLE `portal_tyfriday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_tymonday`
--
ALTER TABLE `portal_tymonday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_tysaturday`
--
ALTER TABLE `portal_tysaturday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_tysem5_substudents`
--
ALTER TABLE `portal_tysem5_substudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portal_tysem5_subteacher`
--
ALTER TABLE `portal_tysem5_subteacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portal_tythursday`
--
ALTER TABLE `portal_tythursday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_tytuesday`
--
ALTER TABLE `portal_tytuesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `portal_tywednesday`
--
ALTER TABLE `portal_tywednesday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_aaronfriday`
--
ALTER TABLE `portal_aaronfriday`
  ADD CONSTRAINT `portal_aaronfriday_uname_id_9f6a962d_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_aaronmonday`
--
ALTER TABLE `portal_aaronmonday`
  ADD CONSTRAINT `portal_aaronmonday_uname_id_955e4ca0_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_aaronsaturday`
--
ALTER TABLE `portal_aaronsaturday`
  ADD CONSTRAINT `portal_aaronsaturday_uname_id_85cd9e72_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_aaronthursday`
--
ALTER TABLE `portal_aaronthursday`
  ADD CONSTRAINT `portal_aaronthursday_uname_id_40929fff_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_aarontuesday`
--
ALTER TABLE `portal_aarontuesday`
  ADD CONSTRAINT `portal_aarontuesday_uname_id_b734a4b6_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_aaronwednesday`
--
ALTER TABLE `portal_aaronwednesday`
  ADD CONSTRAINT `portal_aaronwednesday_uname_id_6ffd868a_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_ashokfriday`
--
ALTER TABLE `portal_ashokfriday`
  ADD CONSTRAINT `portal_ashokfriday_uname_id_2641f487_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_ashokmonday`
--
ALTER TABLE `portal_ashokmonday`
  ADD CONSTRAINT `portal_ashokmonday_uname_id_ae172d7e_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_ashoksaturday`
--
ALTER TABLE `portal_ashoksaturday`
  ADD CONSTRAINT `portal_ashoksaturday_uname_id_20f29d76_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_ashokthursday`
--
ALTER TABLE `portal_ashokthursday`
  ADD CONSTRAINT `portal_ashokthursday_uname_id_2cb8e4af_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_ashoktuesday`
--
ALTER TABLE `portal_ashoktuesday`
  ADD CONSTRAINT `portal_ashoktuesday_uname_id_e8cf429b_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_ashokwednesday`
--
ALTER TABLE `portal_ashokwednesday`
  ADD CONSTRAINT `portal_ashokwednesday_uname_id_6c4867e4_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_fyfriday`
--
ALTER TABLE `portal_fyfriday`
  ADD CONSTRAINT `portal_fyfriday_SubTeacher_id_664ade01_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_fymonday`
--
ALTER TABLE `portal_fymonday`
  ADD CONSTRAINT `portal_fymonday_SubTeacher_id_2c4bfd78_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_fysaturday`
--
ALTER TABLE `portal_fysaturday`
  ADD CONSTRAINT `portal_fysaturday_SubTeacher_id_178e144a_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_fysem1_substudents`
--
ALTER TABLE `portal_fysem1_substudents`
  ADD CONSTRAINT `portal_fysem1_subStu_fybscit_id_d221f500_fk_users_fyb` FOREIGN KEY (`fybscit_id`) REFERENCES `users_fybscit` (`uid`),
  ADD CONSTRAINT `portal_fysem1_subStu_fysem1_id_2d9676ef_fk_portal_fy` FOREIGN KEY (`fysem1_id`) REFERENCES `portal_fysem1` (`subId`);

--
-- Constraints for table `portal_fysem1_subteacher`
--
ALTER TABLE `portal_fysem1_subteacher`
  ADD CONSTRAINT `portal_fysem1_subTea_fysem1_id_cc233c06_fk_portal_fy` FOREIGN KEY (`fysem1_id`) REFERENCES `portal_fysem1` (`subId`),
  ADD CONSTRAINT `portal_fysem1_subTea_teacher_id_ea87282e_fk_users_tea` FOREIGN KEY (`teacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_fythursday`
--
ALTER TABLE `portal_fythursday`
  ADD CONSTRAINT `portal_fythursday_SubTeacher_id_2aa2e51c_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_fytuesday`
--
ALTER TABLE `portal_fytuesday`
  ADD CONSTRAINT `portal_fytuesday_SubTeacher_id_b4820236_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_fywednesday`
--
ALTER TABLE `portal_fywednesday`
  ADD CONSTRAINT `portal_fywednesday_SubTeacher_id_ca8cc107_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_lydiafriday`
--
ALTER TABLE `portal_lydiafriday`
  ADD CONSTRAINT `portal_lydiafriday_uname_id_48a04e82_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_lydiamonday`
--
ALTER TABLE `portal_lydiamonday`
  ADD CONSTRAINT `portal_lydiamonday_uname_id_2a863517_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_lydiasaturday`
--
ALTER TABLE `portal_lydiasaturday`
  ADD CONSTRAINT `portal_lydiasaturday_uname_id_418867e0_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_lydiathursday`
--
ALTER TABLE `portal_lydiathursday`
  ADD CONSTRAINT `portal_lydiathursday_uname_id_2c4f3dff_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_lydiatuesday`
--
ALTER TABLE `portal_lydiatuesday`
  ADD CONSTRAINT `portal_lydiatuesday_uname_id_c4260e23_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_lydiawednesday`
--
ALTER TABLE `portal_lydiawednesday`
  ADD CONSTRAINT `portal_lydiawednesday_uname_id_5804a1dd_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_melissafriday`
--
ALTER TABLE `portal_melissafriday`
  ADD CONSTRAINT `portal_melissafriday_uname_id_6cb196de_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_melissamonday`
--
ALTER TABLE `portal_melissamonday`
  ADD CONSTRAINT `portal_melissamonday_uname_id_ab5ac6a3_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_melissasaturday`
--
ALTER TABLE `portal_melissasaturday`
  ADD CONSTRAINT `portal_melissasaturday_uname_id_7deee681_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_melissathursday`
--
ALTER TABLE `portal_melissathursday`
  ADD CONSTRAINT `portal_melissathursday_uname_id_4267c238_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_melissatuesday`
--
ALTER TABLE `portal_melissatuesday`
  ADD CONSTRAINT `portal_melissatuesday_uname_id_9545ea56_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_melissawednesday`
--
ALTER TABLE `portal_melissawednesday`
  ADD CONSTRAINT `portal_melissawednesday_uname_id_a00f36d6_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_notes`
--
ALTER TABLE `portal_notes`
  ADD CONSTRAINT `portal_notes_professor_id_a4fe5dd1_fk_users_teacher_uid` FOREIGN KEY (`professor_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_papers`
--
ALTER TABLE `portal_papers`
  ADD CONSTRAINT `portal_papers_professor_id_0a4c80be_fk_users_teacher_uid` FOREIGN KEY (`professor_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_rachanafriday`
--
ALTER TABLE `portal_rachanafriday`
  ADD CONSTRAINT `portal_rachanafriday_uname_id_0de11dfc_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_rachanamonday`
--
ALTER TABLE `portal_rachanamonday`
  ADD CONSTRAINT `portal_rachanamonday_uname_id_e598089d_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_rachanasaturday`
--
ALTER TABLE `portal_rachanasaturday`
  ADD CONSTRAINT `portal_rachanasaturday_uname_id_f5d463d6_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_rachanathursday`
--
ALTER TABLE `portal_rachanathursday`
  ADD CONSTRAINT `portal_rachanathursday_uname_id_37fb1767_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_rachanatuesday`
--
ALTER TABLE `portal_rachanatuesday`
  ADD CONSTRAINT `portal_rachanatuesday_uname_id_33daa712_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_rachanawednesday`
--
ALTER TABLE `portal_rachanawednesday`
  ADD CONSTRAINT `portal_rachanawednesday_uname_id_2e586116_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_royfriday`
--
ALTER TABLE `portal_royfriday`
  ADD CONSTRAINT `portal_royfriday_uname_id_678b169b_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_roymonday`
--
ALTER TABLE `portal_roymonday`
  ADD CONSTRAINT `portal_roymonday_uname_id_12ca0cff_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_roysaturday`
--
ALTER TABLE `portal_roysaturday`
  ADD CONSTRAINT `portal_roysaturday_uname_id_ad3c1a34_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_roythursday`
--
ALTER TABLE `portal_roythursday`
  ADD CONSTRAINT `portal_roythursday_uname_id_26132667_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_roytuesday`
--
ALTER TABLE `portal_roytuesday`
  ADD CONSTRAINT `portal_roytuesday_uname_id_2189467b_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_roywednesday`
--
ALTER TABLE `portal_roywednesday`
  ADD CONSTRAINT `portal_roywednesday_uname_id_ecd1a109_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_subhashfriday`
--
ALTER TABLE `portal_subhashfriday`
  ADD CONSTRAINT `portal_subhashfriday_uname_id_f851b18e_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_subhashmonday`
--
ALTER TABLE `portal_subhashmonday`
  ADD CONSTRAINT `portal_subhashmonday_uname_id_d9081070_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_subhashsaturday`
--
ALTER TABLE `portal_subhashsaturday`
  ADD CONSTRAINT `portal_subhashsaturday_uname_id_d1ae82b6_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_subhashthursday`
--
ALTER TABLE `portal_subhashthursday`
  ADD CONSTRAINT `portal_subhashthursday_uname_id_43a50aa0_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_subhashtuesday`
--
ALTER TABLE `portal_subhashtuesday`
  ADD CONSTRAINT `portal_subhashtuesday_uname_id_7d360886_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_subhashwednesday`
--
ALTER TABLE `portal_subhashwednesday`
  ADD CONSTRAINT `portal_subhashwednesday_uname_id_3632ff7f_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `portal_syfriday`
--
ALTER TABLE `portal_syfriday`
  ADD CONSTRAINT `portal_syfriday_SubTeacher_id_8909c0e5_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_symonday`
--
ALTER TABLE `portal_symonday`
  ADD CONSTRAINT `portal_symonday_SubTeacher_id_e776be41_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_sysaturday`
--
ALTER TABLE `portal_sysaturday`
  ADD CONSTRAINT `portal_sysaturday_SubTeacher_id_744c509c_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_sysem3_substudents`
--
ALTER TABLE `portal_sysem3_substudents`
  ADD CONSTRAINT `portal_sysem3_subStu_sybscit_id_58e9c60b_fk_users_syb` FOREIGN KEY (`sybscit_id`) REFERENCES `users_sybscit` (`uid`),
  ADD CONSTRAINT `portal_sysem3_subStu_sysem3_id_e8b84c76_fk_portal_sy` FOREIGN KEY (`sysem3_id`) REFERENCES `portal_sysem3` (`subId`);

--
-- Constraints for table `portal_sysem3_subteacher`
--
ALTER TABLE `portal_sysem3_subteacher`
  ADD CONSTRAINT `portal_sysem3_subTea_sysem3_id_b3214f5a_fk_portal_sy` FOREIGN KEY (`sysem3_id`) REFERENCES `portal_sysem3` (`subId`),
  ADD CONSTRAINT `portal_sysem3_subTea_teacher_id_6d458d88_fk_users_tea` FOREIGN KEY (`teacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_sythursday`
--
ALTER TABLE `portal_sythursday`
  ADD CONSTRAINT `portal_sythursday_SubTeacher_id_10f065c7_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_sytuesday`
--
ALTER TABLE `portal_sytuesday`
  ADD CONSTRAINT `portal_sytuesday_SubTeacher_id_2ef1c9fb_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_sywednesday`
--
ALTER TABLE `portal_sywednesday`
  ADD CONSTRAINT `portal_sywednesday_SubTeacher_id_5b070589_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_tyfriday`
--
ALTER TABLE `portal_tyfriday`
  ADD CONSTRAINT `portal_tyfriday_SubTeacher_id_c42bb903_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_tymonday`
--
ALTER TABLE `portal_tymonday`
  ADD CONSTRAINT `portal_tymonday_SubTeacher_id_cfc487eb_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_tysaturday`
--
ALTER TABLE `portal_tysaturday`
  ADD CONSTRAINT `portal_tysaturday_SubTeacher_id_24dcdca7_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_tysem5_substudents`
--
ALTER TABLE `portal_tysem5_substudents`
  ADD CONSTRAINT `portal_tysem5_subStu_tybscit_id_ec6883b9_fk_users_tyb` FOREIGN KEY (`tybscit_id`) REFERENCES `users_tybscit` (`uid`),
  ADD CONSTRAINT `portal_tysem5_subStu_tysem5_id_e15d56ba_fk_portal_ty` FOREIGN KEY (`tysem5_id`) REFERENCES `portal_tysem5` (`subId`);

--
-- Constraints for table `portal_tysem5_subteacher`
--
ALTER TABLE `portal_tysem5_subteacher`
  ADD CONSTRAINT `portal_tysem5_subTea_teacher_id_b330b6ba_fk_users_tea` FOREIGN KEY (`teacher_id`) REFERENCES `users_teacher` (`uid`),
  ADD CONSTRAINT `portal_tysem5_subTea_tysem5_id_5aad531e_fk_portal_ty` FOREIGN KEY (`tysem5_id`) REFERENCES `portal_tysem5` (`subId`);

--
-- Constraints for table `portal_tythursday`
--
ALTER TABLE `portal_tythursday`
  ADD CONSTRAINT `portal_tythursday_SubTeacher_id_2c4e05be_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_tytuesday`
--
ALTER TABLE `portal_tytuesday`
  ADD CONSTRAINT `portal_tytuesday_SubTeacher_id_ad8532ed_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `portal_tywednesday`
--
ALTER TABLE `portal_tywednesday`
  ADD CONSTRAINT `portal_tywednesday_SubTeacher_id_ec5bdc86_fk_users_teacher_uid` FOREIGN KEY (`SubTeacher_id`) REFERENCES `users_teacher` (`uid`);

--
-- Constraints for table `users_fybscit`
--
ALTER TABLE `users_fybscit`
  ADD CONSTRAINT `users_fybscit_uname_id_3e5099ed_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD CONSTRAINT `users_profile_user_id_2112e78d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `users_sybscit`
--
ALTER TABLE `users_sybscit`
  ADD CONSTRAINT `users_sybscit_uname_id_8bbf7969_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `users_teacher`
--
ALTER TABLE `users_teacher`
  ADD CONSTRAINT `users_teacher_uname_id_36a3ea6c_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `users_tybscit`
--
ALTER TABLE `users_tybscit`
  ADD CONSTRAINT `users_tybscit_uname_id_633b1e37_fk_auth_user_id` FOREIGN KEY (`uname_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
