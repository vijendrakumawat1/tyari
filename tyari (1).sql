-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2022 at 11:24 PM
-- Server version: 5.7.39-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tyari`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `allcourse`
--

CREATE TABLE `allcourse` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `coursename` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allcourse`
--

INSERT INTO `allcourse` (`id`, `slug`, `coursename`, `created_at`, `updated_at`) VALUES
(17, 'school', 'School', '2022-03-12 01:18:03', '2022-03-12 01:18:03'),
(21, 'competitive-exams', 'Competitive Exams', '2022-04-13 19:21:42', '2022-04-13 19:21:42'),
(22, 'neet-ug', 'NEET-UG', '2022-04-13 19:22:47', '2022-04-13 19:22:47'),
(23, 'agriculture', 'Agriculture', '2022-04-13 19:23:39', '2022-04-13 19:23:39'),
(24, 'olympiads', 'Olympiads', '2022-04-13 19:25:57', '2022-04-13 19:25:57'),
(25, 'cuet', 'CUET', '2022-04-13 19:42:15', '2022-04-13 19:42:15'),
(26, 'ntse', 'NTSE', '2022-04-13 19:48:39', '2022-04-13 19:48:39'),
(27, 'kvpy', 'KVPY', '2022-04-13 19:48:52', '2022-04-13 19:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_comments`
--

CREATE TABLE `announcement_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `batch_id` int(10) UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attempts`
--

CREATE TABLE `attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `package_id` int(11) UNSIGNED DEFAULT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `test_id` int(11) UNSIGNED NOT NULL,
  `start` varchar(30) DEFAULT NULL,
  `end` varchar(30) DEFAULT NULL,
  `score` decimal(5,3) NOT NULL DEFAULT '0.000',
  `negative` decimal(5,3) NOT NULL DEFAULT '0.000',
  `attempt` int(10) NOT NULL DEFAULT '0',
  `totalQues` int(10) DEFAULT NULL,
  `totalRight` int(10) NOT NULL DEFAULT '0',
  `totalWrong` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attempts`
--

INSERT INTO `attempts` (`id`, `student_id`, `package_id`, `course_id`, `test_id`, `start`, `end`, `score`, `negative`, `attempt`, `totalQues`, `totalRight`, `totalWrong`, `status`, `created_at`, `updated_at`, `remark`) VALUES
(620, 5, 1, 2, 5, '18-09-2022 04:51 PM', '18-09-2022 04:51 PM', -48.370, 49.170, 150, 150, 1, 149, 1, '2022-09-18 11:21:58', '2022-11-01 14:41:02', NULL),
(621, 5, 1, 2, 5, '27-10-2022 09:28 AM', '27-10-2022 09:29 AM', -49.500, 49.500, 150, 150, 0, 150, 1, '2022-10-27 03:59:05', '2022-11-01 14:41:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discription` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `slug`, `course_id`, `title`, `image`, `page`, `discription`, `created_at`, `updated_at`) VALUES
(3, 'slide', NULL, 'CLASSWALA', 'image/image1666005985.png', 'Application', NULL, '2022-07-21 20:19:14', '2022-10-17 18:26:25'),
(4, 'slide-2', NULL, 'CLASSWALA 2', 'image/image1658848030.jpg', 'Application', NULL, '2022-07-21 20:22:52', '2022-07-26 22:07:10'),
(38, 'class-just-a-click-away', NULL, 'Class Just a Click Away', 'image/image1663736774.png', 'Website', 'We aim to provide the finest education at rock bottom prices. This made us stand out from all others in the edtech field. Today many coaching institutes and other education platforms are providing education but to whom? Only those who can afford e-books, live videos, mock tests, crash courses, etc.', '2022-09-21 12:06:14', '2022-10-10 15:45:06'),
(39, 'ww', NULL, 'ww', 'image/image1666075715.jpg', 'Application', NULL, '2022-10-18 13:48:35', '2022-10-18 13:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `heading` varchar(200) DEFAULT NULL,
  `category` varchar(234) DEFAULT NULL,
  `heading_one` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `imagetwo` varchar(200) DEFAULT NULL,
  `discription` longtext,
  `discription_two` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `slug`, `heading`, `category`, `heading_one`, `image`, `imagetwo`, `discription`, `discription_two`, `created_at`, `updated_at`) VALUES
(5, 'determining-the-true-goal-of-a-good-education-is-difficult', 'Determining the true goal of a good education is difficult.', 'English', 'Determining the true goal of a good education is difficult.', 'blog/image1663671437.png', 'blog/imagetwo1663671437.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.\r\n\r\nPraesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.\r\n\r\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi nulla quis nibh. Quisque a lectus.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. malesuada erat ut turpis. Suspendisse urna nibh, viverra non semper suscipit.', '2022-03-10 05:17:01', '2022-10-08 19:44:46'),
(6, 'what-is-lifelong-learning-and-how-could-it-help-your-learning', 'REET Online Course', 'Hindi', 'What is lifelong learning and how could it help your learning?', 'blog/image1663671620.png', 'blog/imagetwo1663671620.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.\r\n\r\nPraesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.\r\n\r\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi nulla quis nibh. Quisque a lectus.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. malesuada erat ut turpis. Suspendisse urna nibh, viverra non semper suscipit.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore dolore magna aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.\r\n\r\nPraesent dapibus, neque id cursus faucibus, tortor neque egestas auguae, eu vulputate magna eros eu Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.\r\n\r\nPhasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi nulla quis nibh. Quisque a lectus.\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec odio. Quisque volutpat mattis eros. malesuada erat ut turpis. Suspendisse urna nibh, viverra non semper suscipit.', '2022-03-10 06:11:55', '2022-10-08 19:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `chapters`
--

CREATE TABLE `chapters` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `course_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sequance` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mobile`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(3, 'aman', 'admin@gmail.com', '7867756565', NULL, 'hello', '2022-03-12 05:00:24', '2022-03-12 05:00:24'),
(31, 'kamal', 'admin@gmail.com', '9856563423', NULL, 'welcome', '2022-03-14 00:54:19', '2022-03-14 00:54:19');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discription` longtext COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float DEFAULT '0',
  `discount` float DEFAULT '0',
  `sequence` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `slug`, `title`, `discription`, `image`, `price`, `discount`, `sequence`, `created_at`, `updated_at`) VALUES
(1, 'banking-exams', 'Banking Exams', 'Banking Exams', 'image/image1666079199.png', 0, 0, 2, '2022-07-07 16:47:06', '2022-10-18 14:46:39'),
(2, 'teaching-exams', 'Teaching Exams', 'Teaching Exams', 'image/image1658847506.png', 0, 0, 1, '2022-07-15 14:41:59', '2022-07-26 21:58:26'),
(3, 'SSC-exams', 'SSC Exams', 'SSC Exams', 'image/image1666077615.png', 0, 0, 3, '2022-07-19 18:48:00', '2022-10-18 14:46:27'),
(5, 'defence-exams', 'Defence Exams', 'Defence Exams', 'image/image1666079143.png', 0, 0, 4, '2022-07-19 18:57:39', '2022-10-18 14:45:43'),
(6, 'cuet', 'CUET', NULL, 'image/image1658847291.png', 0, 0, 5, '2022-07-26 21:54:51', '2022-07-26 21:55:23'),
(7, 'rajasthan-police-exams', 'Rajasthan Police Exams', NULL, 'image/image1666079124.png', 0, 0, 6, '2022-07-27 11:50:55', '2022-10-18 14:45:24'),
(8, 'agriculture-exam', 'Agriculture Exam', NULL, 'image/image1666078741.png', 0, 0, 7, '2022-08-16 14:26:44', '2022-10-18 14:39:01');

-- --------------------------------------------------------

--
-- Table structure for table `coursesdetails`
--

CREATE TABLE `coursesdetails` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `course_name_slug` varchar(200) DEFAULT NULL,
  `course_name` varchar(200) DEFAULT NULL,
  `subcourse_name` varchar(200) DEFAULT NULL,
  `subsubcourse_name` varchar(200) DEFAULT NULL,
  `heading` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `discription_one` longtext,
  `discription_two` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursesdetails`
--

INSERT INTO `coursesdetails` (`id`, `slug`, `course_name_slug`, `course_name`, `subcourse_name`, `subsubcourse_name`, `heading`, `image`, `discription_one`, `discription_two`, `created_at`, `updated_at`) VALUES
(41, 'rahul', NULL, 'school', 'class-6', NULL, 'REET Online Course', 'http://classwala.parkensolution.com/storage/image/image1649938494.jpg', 'Online coaching is helping many students worldwide access the facilities required for the robust preparation of competitive exams.', 'This online course has been developed by placing the facilities of the students at the focal point and prepared with utmost care and under guidance of subject specialists. The latest advancements in the EdTech industry have made it easy to learn at the candidate\'s convenience.\r\n\r\nA firm foundation laid on the subjects can ease students\' future journey in achieving more significant goals. With this vision, we have devised the Utkarsh Foundation programs for class X students. The program prepares them for school and various competitive and scholarship examinations such as NTSE / Olympiads', '2022-04-14 19:14:54', '2022-04-14 19:17:59');

-- --------------------------------------------------------

--
-- Table structure for table `course_notes`
--

CREATE TABLE `course_notes` (
  `id` int(10) NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `chapter_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file` text COLLATE utf8_unicode_ci,
  `video` text COLLATE utf8_unicode_ci,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pay` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpayed',
  `discription` longtext COLLATE utf8_unicode_ci,
  `sequence` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doubts`
--

CREATE TABLE `doubts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `doubt` longtext COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doubt_comments`
--

CREATE TABLE `doubt_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `doubt_id` int(10) UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci,
  `file` text COLLATE utf8_unicode_ci,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ebook_notes`
--

CREATE TABLE `ebook_notes` (
  `id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ebookNotesSubject_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `discription` longtext COLLATE utf8mb4_unicode_ci,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `byname` varchar(244) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ebook_notes`
--

INSERT INTO `ebook_notes` (`id`, `slug`, `type`, `ebookNotesSubject_id`, `title`, `file`, `image`, `price`, `discount`, `discription`, `language`, `byname`, `created_at`, `updated_at`) VALUES
(1, 'neet-book', '', NULL, 'Neet Book', 'book/book1665662880.pdf', 'bookImage/bookImage1665726971.png', 1, 1, 'Testing Book Desc', NULL, 'Classwala', '2022-10-13 19:08:00', '2022-10-15 13:54:20');

-- --------------------------------------------------------

--
-- Table structure for table `ebook_notes_subjectlist`
--

CREATE TABLE `ebook_notes_subjectlist` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `heading` varchar(200) DEFAULT NULL,
  `discription` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `heading`, `discription`, `created_at`, `updated_at`) VALUES
(4, 'How to register for a future learn account', 'Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat amet conse ctetur adipisicing elit, sed do aliqua. Ut enim ad minim.', '2022-03-04 06:33:51', '2022-03-04 06:33:51'),
(5, 'How to join a free course?', 'Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat amet conse ctetur adipisicing elit, sed do aliqua. Ut enim ad minim.', '2022-03-04 06:34:42', '2022-03-04 06:34:42'),
(6, 'How to start a course on Eduon?', 'Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat amet conse ctetur adipisicing elit, sed do aliqua. Ut enim ad minim.', '2022-03-04 06:37:49', '2022-03-05 03:50:32'),
(7, 'What time will my course start?', 'Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat amet conse ctetur adipisicing elit, sed do aliqua. Ut enim ad minim.', '2022-03-04 06:39:03', '2022-03-05 03:55:08');

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discription` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`id`, `slug`, `title`, `image`, `link`, `discription`, `created_at`, `updated_at`) VALUES
(1, 'testing-feed', 'Testing Feed', 'image/image1658571395.jpg', 'https://www.google.com/', NULL, '2022-07-23 17:06:22', '2022-07-23 17:16:35'),
(2, 'feed-test-2', 'feed Test 2', 'image/image1658571331.jpg', 'https://www.google.com/', NULL, '2022-07-23 17:08:48', '2022-07-23 17:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`, `created_at`, `updated_at`) VALUES
(22, 'storage/gallery/image1663679037.jpg', '2022-09-20 20:03:57', '2022-09-20 20:03:57'),
(23, 'storage/gallery/image1663679152.jpg', '2022-09-20 20:05:52', '2022-09-20 20:05:52'),
(24, 'storage/gallery/image1663679159.jpg', '2022-09-20 20:05:59', '2022-09-20 20:05:59'),
(25, 'storage/gallery/image1663679170.jpg', '2022-09-20 20:06:10', '2022-09-20 20:06:10');

-- --------------------------------------------------------

--
-- Table structure for table `gk_current_affairs`
--

CREATE TABLE `gk_current_affairs` (
  `id` int(11) NOT NULL,
  `location` varchar(200) DEFAULT NULL,
  `page` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `file` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `homeallround`
--

CREATE TABLE `homeallround` (
  `id` int(11) NOT NULL,
  `heading` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homeallround`
--

INSERT INTO `homeallround` (`id`, `heading`, `image`, `created_at`, `updated_at`) VALUES
(2, 'English Spoken Classes', 'http://classwala.parkensolution.com/storage/image/image1649831751.png', '2022-03-08 02:02:56', '2022-04-13 13:35:51'),
(3, 'Yoga Classes', 'http://classwala.parkensolution.com/storage/image/image1649831786.png', '2022-03-08 02:03:28', '2022-04-13 13:36:26'),
(4, 'Story Writing', 'http://classwala.parkensolution.com/storage/image/image1649831804.png', '2022-03-08 02:03:55', '2022-04-13 13:36:44'),
(5, 'Speaking English', 'http://classwala.parkensolution.com/storage/image/image1649831818.png', '2022-03-08 02:04:22', '2022-04-13 13:36:58');

-- --------------------------------------------------------

--
-- Table structure for table `homemakes`
--

CREATE TABLE `homemakes` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `heading` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homemakes`
--

INSERT INTO `homemakes` (`id`, `slug`, `heading`, `image`, `discription`, `created_at`, `updated_at`) VALUES
(3, NULL, 'Quizzes & Tests', NULL, 'Regular quizzes and periodic tests are available for assessment.', '2022-03-14 01:05:45', '2022-03-14 01:05:45'),
(4, NULL, 'Audio Lectures', NULL, 'Audio Mode feature that allows the students to listen to the recorded lectures with minimum data consumption.', '2022-03-14 01:06:33', '2022-09-20 19:30:50'),
(5, NULL, 'E-Notes', NULL, 'E-notes with text features like highlight the text, add self-notes, read in Night-Mode & web search the e- content.', '2022-03-14 01:07:00', '2022-03-14 01:07:00'),
(6, NULL, 'Smart Classes on 4K Panel', NULL, 'Video Lectures recorded on 4K Interactive Panel for clarity.', '2022-03-14 01:14:40', '2022-03-14 01:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `homesubscribe`
--

CREATE TABLE `homesubscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homesubscribe`
--

INSERT INTO `homesubscribe` (`id`, `email`, `created_at`, `updated_at`) VALUES
(2, 'kamal@gmail.com', '2022-03-14 03:16:19', '2022-03-14 03:16:19'),
(3, 'admin@gmail.com', '2022-07-07 23:19:58', '2022-07-07 23:19:58'),
(4, 'skghosliya@gmail.com', '2022-10-01 15:48:05', '2022-10-01 15:48:05'),
(5, 'skghosliya@gmail.com', '2022-10-01 15:48:13', '2022-10-01 15:48:13'),
(6, 'deepukumar77048@gmail.com', '2022-10-18 16:22:17', '2022-10-18 16:22:17'),
(7, NULL, '2022-10-30 15:53:45', '2022-10-30 15:53:45'),
(8, '03125936718', '2022-10-30 15:53:55', '2022-10-30 15:53:55'),
(9, '03125936718', '2022-10-30 15:53:56', '2022-10-30 15:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `homeupcomingcourses`
--

CREATE TABLE `homeupcomingcourses` (
  `id` int(11) NOT NULL,
  `heading` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(12) NOT NULL,
  `news_id` int(12) NOT NULL,
  `status` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `news_id`, `status`, `created_at`, `updated_at`) VALUES
(4, 63, 1, 1, '2022-10-04 03:24:16', '2022-10-04 03:24:24'),
(8, 62, 1, 1, '2022-10-04 13:24:41', '2022-10-04 13:24:41'),
(10, 62, 3, 1, '2022-10-04 14:28:43', '2022-10-04 14:28:43'),
(17, 62, 2, 1, '2022-10-04 14:57:52', '2022-10-04 14:57:52'),
(49, 7, 1, 1, '2022-10-06 18:09:56', '2022-10-06 18:09:56'),
(51, 7, 3, 1, '2022-10-07 14:09:29', '2022-10-07 14:09:29'),
(58, 34, 3, 1, '2022-10-08 20:35:39', '2022-10-08 20:35:39'),
(60, 34, 1, 1, '2022-10-08 20:36:18', '2022-10-08 20:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `live_classes`
--

CREATE TABLE `live_classes` (
  `id` int(11) NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `teacher` varchar(243) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_classes`
--

INSERT INTO `live_classes` (`id`, `slug`, `course_id`, `title`, `url`, `file`, `price`, `date`, `time`, `teacher`, `created_at`, `updated_at`) VALUES
(1, 'teacher-exam-live-class', '2', 'teacher exam live class', 'https://www.youtube.com/watch?v=5sl9kDnFTbg', 'liveclass/liveclass1660289915.jpg', NULL, '2022-10-14', '17:57:00', '4,3', '2022-08-10 16:13:38', '2022-10-14 12:53:21'),
(2, 'live-class-2', '2', 'live class 2', '', 'file/liveclass1666979716.jpeg', NULL, '2022-10-31', '17:57:00', '32,3', '2022-08-10 16:17:36', '2022-10-29 00:55:16'),
(4, 'algorthiam', '2', 'ALGORTHIAM', '', 'file/liveclass1665723990.png', NULL, '2022-10-14', '15:57:00', '33,32', '2022-10-13 16:21:13', '2022-10-14 12:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `live_class_subject`
--

CREATE TABLE `live_class_subject` (
  `id` int(10) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discription` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_class_subject`
--

INSERT INTO `live_class_subject` (`id`, `slug`, `title`, `image`, `price`, `discription`, `created_at`, `updated_at`) VALUES
(2, 'ssc-maths', 'SSC Maths', NULL, NULL, 'SSC Maths', '2022-10-13 16:19:31', '2022-10-13 16:19:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_23_110718_entrust_setup_tables', 1),
(4, '2020_06_07_042520_create_admin_notifications_table', 1),
(5, '2020_06_07_042552_create_notifications_table', 1),
(6, '2020_09_20_081345_create_doubts_table', 2),
(7, '2020_09_20_082819_create_courses_table', 3),
(10, '2020_09_20_090416_create_notes_table', 4),
(11, '2020_09_20_105417_create_batchs_table', 4),
(12, '2020_09_20_105417_create_course_notes_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(13) NOT NULL,
  `title` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video` text COLLATE utf8_unicode_ci,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `discription` longtext COLLATE utf8_unicode_ci,
  `sequence` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `slug`, `title`, `video`, `image`, `discription`, `sequence`, `created_at`, `updated_at`) VALUES
(3, 'reet-2022-strategy', 'REET 2022 STRATEGY', 'fIj8h_LCN7A', 'video/video1665311485.jpg', NULL, NULL, '2022-10-09 17:31:25', '2022-10-10 14:33:48'),
(4, 'reet-2022-strategy-1', 'REET 2022 STRATEGY', 'fIj8h_LCN7A', 'video/video1665311502.jpg', NULL, NULL, '2022-10-09 17:31:42', '2022-10-10 14:33:33'),
(5, 'reet-2022-strategy-2', 'REET 2022 STRATEGY', 'fIj8h_LCN7A', 'video/video1665312265.jpg', NULL, NULL, '2022-10-09 17:44:25', '2022-10-10 14:31:01');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `reciver_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) UNSIGNED NOT NULL,
  `slug` text NOT NULL,
  `courseId` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `duration` int(10) NOT NULL,
  `testCount` int(10) NOT NULL,
  `tests` varchar(255) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` mediumtext,
  `pdf` varchar(255) DEFAULT NULL,
  `banner` varchar(50) DEFAULT NULL,
  `keyworld` text NOT NULL,
  `is_schedule` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0 - Not Schedules, 1- Scheduled',
  `start_date_time` int(255) DEFAULT NULL,
  `end_date_time` int(255) DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '1' COMMENT '0=Inactive, 1=Active',
  `trading` int(13) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `slug`, `courseId`, `title`, `duration`, `testCount`, `tests`, `teacher`, `price`, `description`, `pdf`, `banner`, `keyworld`, `is_schedule`, `start_date_time`, `end_date_time`, `status`, `trading`, `created_at`, `updated_at`) VALUES
(8, 'demo-package-1', 2, '3rd Grade Hindi', 120, 21, '5,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26', '32', 999, 'demo purpose', 'pdf1667293543.pdf', 'banner_1667319174.png', 'reet,teacher,ctet', 0, NULL, NULL, 1, 1, '2022-11-01 09:05:43', '2022-11-01 16:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `body`, `status`, `created_at`, `updated_at`) VALUES
(3, 'about-us', 'About Us', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><p><b>Pragyays Career Institute</b> comes from living life, accessing information, observing, reflection and being inspired by wise and courageous elders in the community. Education in its true sense should form character; increase the strength of mind; expand the intellect and make on sand on one&rsquo;s own feet. The supreme art of the teachers is to awake joy in creative expression and knowledge. The congenial and cordial atmosphere is inevitable to arise interest in the students to enable them to withstand viscidities in pursuit of education. Our aim is quality education for all. The education, we impart among our students help them find lasting solutions to many challenges confronting the world today. We lay emphasis on the fact that quality is never an accident; it is always the result of high intention, sincere effort, intelligent direction and skillful execution; it represents the wise choice of many alternatives.</p>\n\n<p>&agrave;&curren;&micro;&agrave;&curren;&iquest;&agrave;&curren;&brvbar;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&macr;&agrave;&curren;&frac34; &agrave;&curren;&brvbar;&agrave;&curren;&brvbar;&agrave;&curren;&frac34;&agrave;&curren;&curren;&agrave;&curren;&iquest; &agrave;&curren;&micro;&agrave;&curren;&iquest;&agrave;&curren;&uml;&agrave;&curren;&macr;&agrave;&curren;&sbquo; &agrave;&curren;&micro;&agrave;&curren;&iquest;&agrave;&curren;&uml;&agrave;&curren;&macr;&agrave;&curren;&frac34;&agrave;&curren;&brvbar;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141; &agrave;&curren;&macr;&agrave;&curren;&frac34;&agrave;&curren;&curren;&agrave;&curren;&iquest; &agrave;&curren;&ordf;&agrave;&curren;&frac34;&agrave;&curren;&curren;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&deg;&agrave;&curren;&curren;&agrave;&curren;&frac34;&agrave;&curren;&reg;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&yen;&curren; &agrave;&curren;&ordf;&agrave;&curren;&frac34;&agrave;&curren;&curren;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&deg;&agrave;&curren;&curren;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&micro;&agrave;&curren;&frac34;&agrave;&curren;&brvbar;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&sect;&agrave;&curren;&uml;&agrave;&curren;&reg;&agrave;&curren;&frac34;&agrave;&curren;&ordf;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&uml;&agrave;&yen;&lsaquo;&agrave;&curren;&curren;&agrave;&curren;&iquest; &agrave;&curren;&sect;&agrave;&curren;&uml;&agrave;&curren;&frac34;&agrave;&curren;&brvbar;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&sect;&agrave;&curren;&deg;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&reg;&agrave;&curren;&sbquo; &agrave;&curren;&curren;&agrave;&curren;&curren;&agrave;&curren;&fnof; &agrave;&curren;&cedil;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#129;&agrave;&curren;&ndash;&agrave;&curren;&reg;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&yen;&yen;<br><b>&agrave;&curren;&shy;&agrave;&curren;&frac34;&agrave;&curren;&micro;&agrave;&curren;&frac34;&agrave;&curren;&deg;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&yen; :</b><br>\n&agrave;&curren;&micro;&agrave;&curren;&iquest;&agrave;&curren;&brvbar;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&macr;&agrave;&curren;&frac34; &agrave;&curren;&cedil;&agrave;&yen;&Dagger; &agrave;&curren;&micro;&agrave;&curren;&iquest;&agrave;&curren;&uml;&agrave;&curren;&macr; (&agrave;&curren;&uml;&agrave;&curren;&reg;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&deg;&agrave;&curren;&curren;&agrave;&curren;&frac34;) &agrave;&curren;&dagger;&agrave;&curren;&curren;&agrave;&yen;&euro; &agrave;&curren;&sup1;&agrave;&yen;&circ;, &agrave;&curren;&micro;&agrave;&curren;&iquest;&agrave;&curren;&uml;&agrave;&curren;&macr; &agrave;&curren;&cedil;&agrave;&yen;&Dagger; &agrave;&curren;&ordf;&agrave;&curren;&frac34;&agrave;&curren;&curren;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&deg;&agrave;&curren;&curren;&agrave;&curren;&frac34; (&agrave;&curren;&cedil;&agrave;&curren;&oelig;&agrave;&curren;&uml;&agrave;&curren;&curren;&agrave;&curren;&frac34;) &agrave;&curren;&dagger;&agrave;&curren;&curren;&agrave;&yen;&euro; &agrave;&curren;&sup1;&agrave;&yen;&circ; &agrave;&curren;&ordf;&agrave;&curren;&frac34;&agrave;&curren;&curren;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&deg;&agrave;&curren;&curren;&agrave;&curren;&frac34; &agrave;&curren;&cedil;&agrave;&yen;&Dagger; &agrave;&curren;&sect;&agrave;&curren;&uml; &agrave;&curren;&bull;&agrave;&yen;&euro; &agrave;&curren;&ordf;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&deg;&agrave;&curren;&frac34;&agrave;&curren;&ordf;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&curren;&agrave;&curren;&iquest; &agrave;&curren;&sup1;&agrave;&yen;&lsaquo;&agrave;&curren;&curren;&agrave;&yen;&euro; &agrave;&curren;&sup1;&agrave;&yen;&circ;, &agrave;&curren;&sect;&agrave;&curren;&uml; &agrave;&curren;&cedil;&agrave;&yen;&Dagger; &agrave;&curren;&sect;&agrave;&curren;&deg;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&reg; &agrave;&curren;&rdquo;&agrave;&curren;&deg; &agrave;&curren;&sect;&agrave;&curren;&deg;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&reg; &agrave;&curren;&cedil;&agrave;&yen;&Dagger; &agrave;&curren;&cedil;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#129;&agrave;&curren;&ndash; &agrave;&curren;&bull;&agrave;&yen;&euro; &agrave;&curren;&ordf;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&deg;&agrave;&curren;&frac34;&agrave;&curren;&ordf;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&curren;&agrave;&curren;&iquest; &agrave;&curren;&sup1;&agrave;&yen;&lsaquo;&agrave;&curren;&curren;&agrave;&yen;&euro; &agrave;&curren;&sup1;&agrave;&yen;&circ; &agrave;&yen;&curren;</p>\n\n<p><b>With</b> the mission to empower the students to become excellent human resources and to contribute meaningfully to the Society and Nation, Pragyay Career Institute established in 2020 in Jaipur. The students are moulded as future technocrats and business leaders. The institution has an enviable track of academic excellence. Our selection record reflects the versatile talent of our students. I am proud of our history, our values &amp; high academic standards achieved by our students. As I walk through the portals of this institution, I am captivated by enthusiasm of our students, the expertise of our staff and uniqueness of what we offer to community. I hope you will feel the same of joyful discovery as you more along with us. So I welcome you to join our family and experience the new ways of learning.</p>\n\n<p>&agrave;&curren;&reg;&agrave;&curren;&frac34;&agrave;&curren;&curren;&agrave;&yen;&Dagger;&agrave;&curren;&micro; &agrave;&curren;&deg;&agrave;&curren;&bull;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&middot;&agrave;&curren;&curren;&agrave;&curren;&iquest; &agrave;&curren;&ordf;&agrave;&curren;&iquest;&agrave;&curren;&curren;&agrave;&yen;&Dagger;&agrave;&curren;&micro; &agrave;&curren;&sup1;&agrave;&curren;&iquest;&agrave;&curren;&curren;&agrave;&yen;&Dagger; &agrave;&curren;&uml;&agrave;&curren;&iquest;&agrave;&curren;&macr;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#129;&agrave;&curren;&sbquo;&agrave;&curren;&bull;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&curren;&agrave;&yen;&Dagger; &agrave;&curren;&bull;&agrave;&curren;&frac34;&agrave;&curren;&uml;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&curren;&agrave;&yen;&Dagger;&agrave;&curren;&micro; &agrave;&curren;&scaron;&agrave;&curren;&frac34;&agrave;&curren;&ordf;&agrave;&curren;&iquest; &agrave;&curren;&deg;&agrave;&curren;&reg;&agrave;&curren;&macr;&agrave;&curren;&curren;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&macr;&agrave;&curren;&ordf;&agrave;&curren;&uml;&agrave;&yen;&euro;&agrave;&curren;&macr; &agrave;&curren;&ndash;&agrave;&yen;&Dagger;&agrave;&curren;&brvbar;&agrave;&curren;&reg;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141; &agrave;&yen;&curren; &agrave;&curren;&sup2;&agrave;&curren;&bull;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&middot;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&reg;&agrave;&yen;&euro;&agrave;&curren;&sbquo; &agrave;&curren;&curren;&agrave;&curren;&uml;&agrave;&yen;&lsaquo;&agrave;&curren;&curren;&agrave;&curren;&iquest; &agrave;&curren;&micro;&agrave;&curren;&iquest;&agrave;&curren;&curren;&agrave;&curren;&uml;&agrave;&yen;&lsaquo;&agrave;&curren;&curren;&agrave;&curren;&iquest; &agrave;&curren;&scaron; &agrave;&curren;&brvbar;&agrave;&curren;&iquest;&agrave;&curren;&bull;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&middot;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#129; &agrave;&curren;&bull;&agrave;&yen;&euro;&agrave;&curren;&deg;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&curren;&agrave;&curren;&iquest;&agrave;&curren;&reg;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141; &agrave;&curren;&bull;&agrave;&curren;&iquest;&agrave;&curren;&sbquo; &agrave;&curren;&bull;&agrave;&curren;&iquest;&agrave;&curren;&sbquo; &agrave;&curren;&uml; &agrave;&curren;&cedil;&agrave;&curren;&frac34;&agrave;&curren;&sect;&agrave;&curren;&macr;&agrave;&curren;&curren;&agrave;&curren;&iquest; &agrave;&curren;&bull;&agrave;&curren;&sup2;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&ordf;&agrave;&curren;&sup2;&agrave;&curren;&curren;&agrave;&yen;&Dagger;&agrave;&curren;&micro; &agrave;&curren;&micro;&agrave;&curren;&iquest;&agrave;&curren;&brvbar;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&macr;&agrave;&curren;&frac34; &agrave;&yen;&yen;<br><b>&agrave;&curren;&shy;&agrave;&curren;&frac34;&agrave;&curren;&micro;&agrave;&curren;&frac34;&agrave;&curren;&deg;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&yen; :</b><br>\n&agrave;&curren;&micro;&agrave;&curren;&iquest;&agrave;&curren;&brvbar;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&macr;&agrave;&curren;&frac34; &agrave;&curren;&reg;&agrave;&curren;&frac34;&agrave;&curren;&curren;&agrave;&curren;&frac34; &agrave;&curren;&bull;&agrave;&yen;&euro; &agrave;&curren;&curren;&agrave;&curren;&deg;&agrave;&curren;&sup1; &agrave;&curren;&deg;&agrave;&curren;&bull;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&middot;&agrave;&curren;&pound; &agrave;&curren;&bull;&agrave;&curren;&deg;&agrave;&curren;&curren;&agrave;&yen;&euro; &agrave;&curren;&sup1;&agrave;&yen;&circ;, &agrave;&curren;&ordf;&agrave;&curren;&iquest;&agrave;&curren;&curren;&agrave;&curren;&frac34; &agrave;&curren;&bull;&agrave;&yen;&euro; &agrave;&curren;&curren;&agrave;&curren;&deg;&agrave;&curren;&sup1; &agrave;&curren;&sup1;&agrave;&curren;&iquest;&agrave;&curren;&curren; &agrave;&curren;&bull;&agrave;&curren;&deg;&agrave;&curren;&curren;&agrave;&yen;&euro; &agrave;&curren;&sup1;&agrave;&yen;&circ;, &agrave;&curren;&ordf;&agrave;&curren;&curren;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&uml;&agrave;&yen;&euro; &agrave;&curren;&bull;&agrave;&yen;&euro; &agrave;&curren;&curren;&agrave;&curren;&deg;&agrave;&curren;&sup1; &agrave;&curren;&yen;&agrave;&curren;&bull;&agrave;&curren;&frac34;&agrave;&curren;&uml; &agrave;&curren;&brvbar;&agrave;&yen;&sbquo;&agrave;&curren;&deg; &agrave;&curren;&bull;&agrave;&curren;&deg;&agrave;&curren;&bull;&agrave;&yen;&Dagger; &agrave;&curren;&reg;&agrave;&curren;&uml; &agrave;&curren;&bull;&agrave;&yen;&lsaquo; &agrave;&curren;&deg;&agrave;&yen;&euro;&agrave;&curren;&Acirc;&Acirc;&Acirc;&#157;&agrave;&curren;&frac34;&agrave;&curren;&curren;&agrave;&yen;&euro; &agrave;&curren;&sup1;&agrave;&yen;&circ;, &agrave;&curren;&para;&agrave;&yen;&lsaquo;&agrave;&curren;&shy;&agrave;&curren;&frac34; &agrave;&curren;&ordf;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&deg;&agrave;&curren;&frac34;&agrave;&curren;&ordf;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&curren; &agrave;&curren;&bull;&agrave;&curren;&deg;&agrave;&curren;&frac34;&agrave;&curren;&curren;&agrave;&yen;&euro; &agrave;&curren;&sup1;&agrave;&yen;&circ;, &agrave;&curren;&rdquo;&agrave;&curren;&deg; &agrave;&curren;&scaron;&agrave;&curren;&frac34;&agrave;&curren;&deg;&agrave;&yen;&lsaquo;&agrave;&curren;&sbquo; &agrave;&curren;&brvbar;&agrave;&curren;&iquest;&agrave;&curren;&para;&agrave;&curren;&frac34;&agrave;&curren;&ldquo;&agrave;&curren;&sbquo; &agrave;&curren;&reg;&agrave;&yen;&Dagger;&agrave;&curren;&sbquo; &agrave;&curren;&bull;&agrave;&yen;&euro;&agrave;&curren;&deg;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&curren;&agrave;&curren;&iquest; &agrave;&curren;&laquo;&agrave;&yen;&circ;&agrave;&curren;&sup2;&agrave;&curren;&frac34;&agrave;&curren;&curren;&agrave;&yen;&euro; &agrave;&curren;&sup1;&agrave;&yen;&circ; &agrave;&yen;&curren; &agrave;&curren;&cedil;&agrave;&curren;&scaron;&agrave;&curren;&reg;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#129;&agrave;&curren;&scaron;, &agrave;&curren;&bull;&agrave;&curren;&sup2;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&ordf;&agrave;&curren;&micro;&agrave;&yen;&fnof;&agrave;&curren;&bull;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&middot; &agrave;&curren;&bull;&agrave;&yen;&euro; &agrave;&curren;&curren;&agrave;&curren;&deg;&agrave;&curren;&sup1; &agrave;&curren;&macr;&agrave;&curren;&sup1; &agrave;&curren;&micro;&agrave;&curren;&iquest;&agrave;&curren;&brvbar;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&macr;&agrave;&curren;&frac34; &agrave;&curren;&bull;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&macr;&agrave;&curren;&frac34; &agrave;&curren;&bull;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&macr;&agrave;&curren;&frac34; &agrave;&curren;&cedil;&agrave;&curren;&iquest;&agrave;&curren;&brvbar;&agrave;&yen;&Acirc;&Acirc;&Acirc;&#141;&agrave;&curren;&sect; &agrave;&curren;&uml;&agrave;&curren;&sup1;&agrave;&yen;&euro;&agrave;&curren;&sbquo; &agrave;&curren;&bull;&agrave;&curren;&deg;&agrave;&curren;&curren;&agrave;&yen;&euro; !</p></body></html>\n', '1', '2019-09-16 09:33:44', '2021-09-20 19:24:03'),
(4, 'contact-us', 'Contact Us', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><ul>\r\n	<li class=\"wow fadeInUp\"><span class=\"icon\"><img alt=\"Icon\" src=\"http://pragyay.rceconline.com/img/location-pin.svg\" style=\"width: 50%;\"></span>\r\n	<p>Po Box 3284; Jaipur</p>\r\n	</li>\r\n	<li class=\"wow fadeInUp\"><span class=\"icon\"><img alt=\"Icon\" src=\"http://pragyay.rceconline.com/img/phone-call.svg\" style=\"width: 50%;\"></span>\r\n	<p>+91-9772601777, +91-9772602777</p>\r\n	</li>\r\n	<li class=\"wow fadeInUp\"><span class=\"icon\"><img alt=\"Icon\" src=\"http://pragyay.rceconline.com/img/envelope.svg\" style=\"width: 50%;\"></span>\r\n	<p class=\"email\">info@pragyay.com</p>\r\n	</li>\r\n</ul></body></html>\n', '1', '2019-09-16 10:34:35', '2020-10-04 22:11:26'),
(5, 'help', 'Help', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></body></html>\n', '1', '2019-09-16 10:40:28', '2020-06-16 22:02:31'),
(6, 'terms-and-conditions', 'Terms and conditions', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><p>By downloading or using the app, these terms will automatically apply to you &ndash; you should make sure therefore that you read them carefully before using the app. You&rsquo;re not allowed to copy, or modify the app, any part of the app, or our trademarks in any way. You&rsquo;re not allowed to attempt to extract the source code of the app, and you also shouldn&rsquo;t try to translate the app into other languages, or make derivative versions. The app itself, and all the trade marks, copyright, database rights and other intellectual property rights related to it, still belong to .</p>\r\n\r\n<h3>Links to other websites:</h3>\r\n\r\n<p><br>\r\npragyay.com has links to others websites and to the original source of the content but it does not mean we are responsible for the content in the linked website and neither does the site indoors the view expressed by the linked website. The users are therefore recommended to read the privacy policy and terms and condition.</p>\r\n\r\n<h3>Google Play Services</h3>\r\n\r\n<p><br>\r\nYou should be aware that there are certain things that will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi, or provided by your mobile network provider, but cannot take responsibility for the app not working at full functionality if you don&rsquo;t have access to Wi-Fi, and you don&rsquo;t have any of your data allowance left.</p>\r\n\r\n<h3>Refund Policy</h3>\r\n\r\n<p><br>\r\nCancellation and refund of any course fee/Charges once made by filling the admission form at user request shall not be allowed for refund under any circumstances but user may change the course before starting the batch, Next Batch and Teachers will be allotted according to the availability.</p>\r\n\r\n<h3>Copyright</h3>\r\n\r\n<p><br>\r\nAll efforts have been made by Pragyay Digital Classes to make the information on this website and Mobile Application &ldquo;Pragyay The Learning App &rdquo; for accuracy and authentication. The information and course videos provided on www.pragyay.com and &ldquo;Pragyay The Learning App &rdquo; or any other media are the sole property of Pragyay The Learning App and it is provided as a service to all the end users for learning purposes only, all the course materials, Teachers Educational Live Stream/ Online / Offline Videos are completely protected and Copyright Reserved by the Pragyay The Learning App . You must not make any alterations or addition to the course materials, or sell it or misappropriate it.</p>\r\n\r\n<h3>Changes to This Terms and Conditions</h3>\r\n\r\n<p><br>\r\nWe may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Terms and Conditions on this page. These terms and conditions are effective as of ........</p>\r\n\r\n<h3>Contact Us</h3>\r\n\r\n<p><br>\r\nIf you have any questions or suggestions about our Terms and Conditions, do not hesitate to contact us at 9772601777.</p></body></html>\n', '1', '2019-09-16 10:40:56', '2020-12-22 13:17:32'),
(7, 'privacy-policy', 'Privacy Policy', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><p>This Privacy Policy governs the manner in which the website collects, uses, maintains and discloses information collected from users (each, a &lsquo;User&rsquo;) of the website (&lsquo;Site&rsquo;). This privacy policy applies to the Site and all products and services offered by Pragyay The learning app .</p>\r\n\r\n<h3>Information Collection and Use</h3>\r\n\r\n<p><br>\r\nFor a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to Pragyay Digital Classes. The information that we request will be retained by us and used as described in this privacy policy. The app does use third party services that may collect information used to identify you.</p>\r\n\r\n<h3>Google Play Services</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Cookies</h3>\r\n\r\n<p><br>\r\nCookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device\'s internal memory.</p>\r\n\r\n<h3>Security</h3>\r\n\r\n<p><br>\r\nWe value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.</p>\r\n\r\n<h3>Children&rsquo;s Privacy</h3>\r\n\r\n<p><br>\r\nThese Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do necessary actions.</p>\r\n\r\n<h3>Changes to This Privacy Policy</h3>\r\n\r\n<p><br>\r\nWe may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page.</p>\r\n\r\n<h3>Contact Us</h3>\r\n\r\n<p><br>\r\nIf you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at 9772601777.</p></body></html>\n', '1', '2020-12-19 03:38:12', '2020-12-22 13:17:14'),
(8, 'refund-policy', 'Refund Policy', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<html><body><p><b>Returns</b><br>\r\nOur policy lasts 30 days. If 30 days have gone by since your purchase, unfortunately we can&rsquo;t offer you a refund or exchange. To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging. Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases. Additional non-returnable items:<br>\r\n<b>Gift cards</b><br>\r\nDownloadable software products Some health and personal care items To complete your return, we require a receipt or proof of purchase. Please do not send your purchase back to the manufacturer. There are certain situations where only partial refunds are granted: (if applicable) Book with obvious signs of use CD, DVD, VHS tape, software, video game, cassette tape, or vinyl record that has been opened. Any item not in its original condition, is damaged or missing parts for reasons not due to our error. Any item that is returned more than 30 days after delivery<br>\r\n<b>Refunds (if applicable)</b><br>\r\nOnce your return is received and inspected, we will send you an email to notify you that we have received your returned item. We will also notify you of the approval or rejection of your refund. If you are approved, then your refund will be processed, and a credit will automatically be applied to your credit card or original method of payment, within a certain amount of days. Late or missing refunds (if applicable) If you haven&rsquo;t received a refund yet, first check your bank account again. Then contact your credit card company, it may take some time before your refund is officially posted. Next contact your bank. There is often some processing time before a refund is posted. If you&rsquo;ve done all of this and you still have not received your refund yet, please contact us at [__info@pragyay.com___]. Sale items (if applicable) Only regular priced items may be refunded, unfortunately sale items cannot be refunded. Exchanges (if applicable) We only replace items if they are defective or damaged. If you need to exchange it for the same item, send us an email at [___info@pragyay.com___]<br>\r\n<b>Gifts</b><br>\r\nIf the item was marked as a gift when purchased and shipped directly to you, you&rsquo;ll receive a gift credit for the value of your return. Once the returned item is received, a gift certificate will be mailed to you. If the item wasn&rsquo;t marked as a gift when purchased, or the gift giver had the order shipped to themselves to give to you later, we will send a refund to the gift giver and he will find out about your return.<br>\r\n<b>Shipping (Not Applicable)</b></p></body></html>\n', '1', '2020-12-19 03:38:45', '2020-12-22 13:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`, `updated_at`) VALUES
('aniljhuria301@gmail.com', '$2y$10$Ui0ljtYK3QlONFoG3qvl/uKnO7nqs4DzRh0h7yXlsOxyEWVoBXem.', '2022-10-08 13:53:47', NULL),
('dushyantparken@gmail.com', '$2y$10$nbup1/NxVUnrZReUKr5dHeHsdTmiWZhR5hhZ0UeJ.bBhqKewcI1Va', '2022-10-08 14:01:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(13) NOT NULL,
  `slug` varchar(123) DEFAULT NULL,
  `user_id` int(13) NOT NULL,
  `package_id` int(13) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `method` varchar(234) NOT NULL,
  `amount` varchar(234) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `practics_attempts`
--

CREATE TABLE `practics_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `test_id` int(11) UNSIGNED NOT NULL,
  `start` varchar(234) DEFAULT NULL,
  `end` varchar(220) DEFAULT NULL,
  `score` decimal(5,3) NOT NULL DEFAULT '0.000',
  `negative` decimal(5,3) NOT NULL DEFAULT '0.000',
  `attempt` int(10) NOT NULL DEFAULT '0',
  `totalQues` int(10) DEFAULT NULL,
  `totalRight` int(10) NOT NULL DEFAULT '0',
  `totalWrong` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practics_attempts`
--

INSERT INTO `practics_attempts` (`id`, `student_id`, `course_id`, `test_id`, `start`, `end`, `score`, `negative`, `attempt`, `totalQues`, `totalRight`, `totalWrong`, `status`, `created_at`, `updated_at`, `remark`) VALUES
(1, 34, 2, 9, '31-10-2022 06:53 PM', '31-10-2022 06:53 PM', 10.690, 2.640, 9, 9, 1, 8, 0, '2022-10-31 13:23:23', '2022-10-31 13:23:23', NULL),
(2, 34, 2, 9, '31-10-2022 06:53 PM', '31-10-2022 06:54 PM', 10.690, 2.640, 9, 9, 1, 8, 0, '2022-10-31 13:24:04', '2022-10-31 13:24:04', NULL),
(3, 5, 2, 9, '01-11-2022 11:37 AM', '01-11-2022 11:37 AM', 38.020, 1.980, 9, 9, 3, 6, 0, '2022-11-01 06:07:56', '2022-11-01 06:07:56', NULL),
(4, 5, 2, 9, '01-11-2022 11:38 AM', '01-11-2022 11:39 AM', -2.970, 2.970, 9, 9, 0, 9, 0, '2022-11-01 06:09:22', '2022-11-01 06:09:22', NULL),
(5, 5, 2, 9, '01-11-2022 11:44 AM', '01-11-2022 11:44 AM', 51.680, 1.650, 9, 9, 4, 5, 0, '2022-11-01 06:14:36', '2022-11-01 06:14:36', NULL),
(6, 5, 2, 9, '01-11-2022 11:45 AM', '01-11-2022 11:46 AM', 10.690, 2.640, 9, 9, 1, 8, 0, '2022-11-01 06:16:11', '2022-11-01 06:16:11', NULL),
(7, 5, 2, 9, '01-11-2022 03:07:15', '01-11-2022 03:07:23', -2.970, 2.970, 9, 9, 0, 9, 0, '2022-11-01 09:37:25', '2022-11-01 09:37:25', NULL),
(8, 5, 2, 9, '01-11-2022 03:18:47', '01-11-2022 03:19:0', 38.020, 1.980, 9, 9, 3, 6, 0, '2022-11-01 09:49:02', '2022-11-01 09:49:02', NULL),
(9, 5, 2, 9, '01-11-2022 03:37:5', '01-11-2022 03:37:16', 38.020, 1.980, 9, 9, 3, 6, 0, '2022-11-01 10:07:17', '2022-11-01 10:07:17', NULL),
(10, 5, 2, 9, '01-11-2022 03:40:22', '01-11-2022 03:40:31', 38.020, 1.980, 9, 9, 3, 6, 0, '2022-11-01 10:10:33', '2022-11-01 10:10:33', NULL),
(11, 5, 2, 9, '01-11-2022 03:50:27', '01-11-2022 03:50:39', 10.690, 2.640, 9, 9, 1, 8, 0, '2022-11-01 10:20:41', '2022-11-01 10:20:41', NULL),
(12, 5, 2, 9, '01-11-2022 03:52:15', '01-11-2022 03:52:35', 24.360, 2.310, 9, 9, 2, 7, 0, '2022-11-01 10:22:37', '2022-11-01 10:22:37', NULL),
(13, 5, 2, 9, '01-11-2022 05:06:19', '01-11-2022 05:06:26', 24.360, 2.310, 9, 9, 2, 7, 0, '2022-11-01 11:36:28', '2022-11-01 11:36:28', NULL),
(14, 5, 2, 9, '02-11-2022 08:30:48', '02-11-2022 08:31:6', 24.360, 2.310, 9, 9, 2, 7, 0, '2022-11-02 03:01:07', '2022-11-02 03:01:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `practics_responses`
--

CREATE TABLE `practics_responses` (
  `id` int(11) NOT NULL,
  `attempt_id` int(11) UNSIGNED NOT NULL,
  `student_id` int(255) NOT NULL,
  `test_id` int(11) UNSIGNED NOT NULL,
  `question_id` int(11) UNSIGNED NOT NULL,
  `student_ans` varchar(100) DEFAULT NULL,
  `right_ans` varchar(100) NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `select_lang` varchar(255) DEFAULT NULL,
  `mark_review` varchar(120) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practics_responses`
--

INSERT INTO `practics_responses` (`id`, `attempt_id`, `student_id`, `test_id`, `question_id`, `student_ans`, `right_ans`, `language`, `select_lang`, `mark_review`, `created_at`, `updated_at`, `remark`) VALUES
(1, 1, 34, 9, 28, 'B', 'C', NULL, NULL, '0', '2022-10-31 06:23:23', '2022-10-31 06:23:23', NULL),
(2, 1, 34, 9, 29, 'B', 'D', NULL, NULL, '0', '2022-10-31 06:23:23', '2022-10-31 06:23:23', NULL),
(3, 1, 34, 9, 30, 'A', 'D', NULL, NULL, '0', '2022-10-31 06:23:23', '2022-10-31 06:23:23', NULL),
(4, 1, 34, 9, 31, 'A', 'D', NULL, NULL, '0', '2022-10-31 06:23:23', '2022-10-31 06:23:23', NULL),
(5, 1, 34, 9, 32, 'A', 'B', NULL, NULL, '0', '2022-10-31 06:23:23', '2022-10-31 06:23:23', NULL),
(6, 1, 34, 9, 33, 'A', 'B', NULL, NULL, '0', '2022-10-31 06:23:23', '2022-10-31 06:23:23', NULL),
(7, 1, 34, 9, 34, 'B', 'B', NULL, NULL, '0', '2022-10-31 06:23:23', '2022-10-31 06:23:23', NULL),
(8, 1, 34, 9, 35, 'A', 'C', NULL, NULL, '0', '2022-10-31 06:23:23', '2022-10-31 06:23:23', NULL),
(9, 1, 34, 9, 36, 'B', 'C', NULL, NULL, '0', '2022-10-31 06:23:23', '2022-10-31 06:23:23', NULL),
(10, 2, 34, 9, 28, 'B', 'C', NULL, NULL, '0', '2022-10-31 06:24:04', '2022-10-31 06:24:04', NULL),
(11, 2, 34, 9, 29, 'B', 'D', NULL, NULL, '0', '2022-10-31 06:24:04', '2022-10-31 06:24:04', NULL),
(12, 2, 34, 9, 30, 'A', 'D', NULL, NULL, '0', '2022-10-31 06:24:04', '2022-10-31 06:24:04', NULL),
(13, 2, 34, 9, 31, 'A', 'D', NULL, NULL, '0', '2022-10-31 06:24:04', '2022-10-31 06:24:04', NULL),
(14, 2, 34, 9, 32, 'A', 'B', NULL, NULL, '0', '2022-10-31 06:24:04', '2022-10-31 06:24:04', NULL),
(15, 2, 34, 9, 33, 'A', 'B', NULL, NULL, '0', '2022-10-31 06:24:04', '2022-10-31 06:24:04', NULL),
(16, 2, 34, 9, 34, 'B', 'B', NULL, NULL, '0', '2022-10-31 06:24:04', '2022-10-31 06:24:04', NULL),
(17, 2, 34, 9, 35, 'A', 'C', NULL, NULL, '0', '2022-10-31 06:24:04', '2022-10-31 06:24:04', NULL),
(18, 2, 34, 9, 36, 'B', 'C', NULL, NULL, '0', '2022-10-31 06:24:04', '2022-10-31 06:24:04', NULL),
(19, 3, 5, 9, 28, 'D', 'C', NULL, NULL, '0', '2022-10-31 23:07:56', '2022-10-31 23:07:56', NULL),
(20, 3, 5, 9, 29, 'D', 'D', NULL, NULL, '0', '2022-10-31 23:07:56', '2022-10-31 23:07:56', NULL),
(21, 3, 5, 9, 30, 'D', 'D', NULL, NULL, '0', '2022-10-31 23:07:56', '2022-10-31 23:07:56', NULL),
(22, 3, 5, 9, 31, 'D', 'D', NULL, NULL, '0', '2022-10-31 23:07:56', '2022-10-31 23:07:56', NULL),
(23, 3, 5, 9, 32, 'D', 'B', NULL, NULL, '0', '2022-10-31 23:07:56', '2022-10-31 23:07:56', NULL),
(24, 3, 5, 9, 33, 'D', 'B', NULL, NULL, '0', '2022-10-31 23:07:56', '2022-10-31 23:07:56', NULL),
(25, 3, 5, 9, 34, 'D', 'B', NULL, NULL, '0', '2022-10-31 23:07:56', '2022-10-31 23:07:56', NULL),
(26, 3, 5, 9, 35, 'D', 'C', NULL, NULL, '0', '2022-10-31 23:07:56', '2022-10-31 23:07:56', NULL),
(27, 3, 5, 9, 36, 'D', 'C', NULL, NULL, '0', '2022-10-31 23:07:56', '2022-10-31 23:07:56', NULL),
(28, 4, 5, 9, 28, NULL, 'C', NULL, NULL, '0', '2022-10-31 23:09:22', '2022-10-31 23:09:22', NULL),
(29, 4, 5, 9, 29, NULL, 'D', NULL, NULL, '0', '2022-10-31 23:09:22', '2022-10-31 23:09:22', NULL),
(30, 4, 5, 9, 30, NULL, 'D', NULL, NULL, '0', '2022-10-31 23:09:22', '2022-10-31 23:09:22', NULL),
(31, 4, 5, 9, 31, NULL, 'D', NULL, NULL, '0', '2022-10-31 23:09:22', '2022-10-31 23:09:22', NULL),
(32, 4, 5, 9, 32, NULL, 'B', NULL, NULL, '0', '2022-10-31 23:09:22', '2022-10-31 23:09:22', NULL),
(33, 4, 5, 9, 33, NULL, 'B', NULL, NULL, '0', '2022-10-31 23:09:22', '2022-10-31 23:09:22', NULL),
(34, 4, 5, 9, 34, NULL, 'B', NULL, NULL, '0', '2022-10-31 23:09:22', '2022-10-31 23:09:22', NULL),
(35, 4, 5, 9, 35, NULL, 'C', NULL, NULL, '0', '2022-10-31 23:09:22', '2022-10-31 23:09:22', NULL),
(36, 4, 5, 9, 36, NULL, 'C', NULL, NULL, '0', '2022-10-31 23:09:22', '2022-10-31 23:09:22', NULL),
(37, 5, 5, 9, 28, 'C', 'C', NULL, NULL, '0', '2022-10-31 23:14:36', '2022-10-31 23:14:36', NULL),
(38, 5, 5, 9, 29, 'B', 'D', NULL, NULL, '0', '2022-10-31 23:14:36', '2022-10-31 23:14:36', NULL),
(39, 5, 5, 9, 30, 'C', 'D', NULL, NULL, '0', '2022-10-31 23:14:36', '2022-10-31 23:14:36', NULL),
(40, 5, 5, 9, 31, 'C', 'D', NULL, NULL, '0', '2022-10-31 23:14:36', '2022-10-31 23:14:36', NULL),
(41, 5, 5, 9, 32, 'C', 'B', NULL, NULL, '0', '2022-10-31 23:14:36', '2022-10-31 23:14:36', NULL),
(42, 5, 5, 9, 33, 'B', 'B', NULL, NULL, '0', '2022-10-31 23:14:36', '2022-10-31 23:14:36', NULL),
(43, 5, 5, 9, 34, 'C', 'B', NULL, NULL, '0', '2022-10-31 23:14:36', '2022-10-31 23:14:36', NULL),
(44, 5, 5, 9, 35, 'C', 'C', NULL, NULL, '0', '2022-10-31 23:14:36', '2022-10-31 23:14:36', NULL),
(45, 5, 5, 9, 36, 'C', 'C', NULL, NULL, '0', '2022-10-31 23:14:36', '2022-10-31 23:14:36', NULL),
(46, 6, 5, 9, 28, 'C', 'C', NULL, NULL, '0', '2022-10-31 23:16:11', '2022-10-31 23:16:11', NULL),
(47, 6, 5, 9, 29, 'C', 'D', NULL, NULL, '0', '2022-10-31 23:16:11', '2022-10-31 23:16:11', NULL),
(48, 6, 5, 9, 30, 'C', 'D', NULL, NULL, '0', '2022-10-31 23:16:11', '2022-10-31 23:16:11', NULL),
(49, 6, 5, 9, 31, 'C', 'D', NULL, NULL, '0', '2022-10-31 23:16:11', '2022-10-31 23:16:11', NULL),
(50, 6, 5, 9, 32, 'D', 'B', NULL, NULL, '0', '2022-10-31 23:16:11', '2022-10-31 23:16:11', NULL),
(51, 6, 5, 9, 33, 'D', 'B', NULL, NULL, '0', '2022-10-31 23:16:11', '2022-10-31 23:16:11', NULL),
(52, 6, 5, 9, 34, 'D', 'B', NULL, NULL, '0', '2022-10-31 23:16:11', '2022-10-31 23:16:11', NULL),
(53, 6, 5, 9, 35, 'D', 'C', NULL, NULL, '0', '2022-10-31 23:16:11', '2022-10-31 23:16:11', NULL),
(54, 6, 5, 9, 36, 'D', 'C', NULL, NULL, '0', '2022-10-31 23:16:11', '2022-10-31 23:16:11', NULL),
(55, 7, 5, 9, 28, 'B', 'C', NULL, NULL, '0', '2022-11-01 02:37:25', '2022-11-01 02:37:25', NULL),
(56, 7, 5, 9, 29, 'C', 'D', NULL, NULL, '0', '2022-11-01 02:37:25', '2022-11-01 02:37:25', NULL),
(57, 7, 5, 9, 30, 'C', 'D', NULL, NULL, '0', '2022-11-01 02:37:25', '2022-11-01 02:37:25', NULL),
(58, 7, 5, 9, 31, NULL, 'D', NULL, NULL, '0', '2022-11-01 02:37:25', '2022-11-01 02:37:25', NULL),
(59, 7, 5, 9, 32, NULL, 'B', NULL, NULL, '0', '2022-11-01 02:37:25', '2022-11-01 02:37:25', NULL),
(60, 7, 5, 9, 33, NULL, 'B', NULL, NULL, '0', '2022-11-01 02:37:25', '2022-11-01 02:37:25', NULL),
(61, 7, 5, 9, 34, NULL, 'B', NULL, NULL, '0', '2022-11-01 02:37:25', '2022-11-01 02:37:25', NULL),
(62, 7, 5, 9, 35, NULL, 'C', NULL, NULL, '0', '2022-11-01 02:37:25', '2022-11-01 02:37:25', NULL),
(63, 7, 5, 9, 36, NULL, 'C', NULL, NULL, '0', '2022-11-01 02:37:25', '2022-11-01 02:37:25', NULL),
(64, 8, 5, 9, 28, 'C', 'C', NULL, NULL, '0', '2022-11-01 02:49:02', '2022-11-01 02:49:02', NULL),
(65, 8, 5, 9, 29, 'C', 'D', NULL, NULL, '0', '2022-11-01 02:49:02', '2022-11-01 02:49:02', NULL),
(66, 8, 5, 9, 30, 'C', 'D', NULL, NULL, '0', '2022-11-01 02:49:02', '2022-11-01 02:49:02', NULL),
(67, 8, 5, 9, 31, 'C', 'D', NULL, NULL, '0', '2022-11-01 02:49:02', '2022-11-01 02:49:02', NULL),
(68, 8, 5, 9, 32, 'C', 'B', NULL, NULL, '0', '2022-11-01 02:49:02', '2022-11-01 02:49:02', NULL),
(69, 8, 5, 9, 33, 'C', 'B', NULL, NULL, '0', '2022-11-01 02:49:02', '2022-11-01 02:49:02', NULL),
(70, 8, 5, 9, 34, 'C', 'B', NULL, NULL, '0', '2022-11-01 02:49:02', '2022-11-01 02:49:02', NULL),
(71, 8, 5, 9, 35, 'C', 'C', NULL, NULL, '0', '2022-11-01 02:49:02', '2022-11-01 02:49:02', NULL),
(72, 8, 5, 9, 36, 'C', 'C', NULL, NULL, '0', '2022-11-01 02:49:02', '2022-11-01 02:49:02', NULL),
(73, 9, 5, 9, 28, 'B', 'C', NULL, NULL, '0', '2022-11-01 03:07:17', '2022-11-01 03:07:17', NULL),
(74, 9, 5, 9, 29, 'B', 'D', NULL, NULL, '0', '2022-11-01 03:07:17', '2022-11-01 03:07:17', NULL),
(75, 9, 5, 9, 30, 'B', 'D', NULL, NULL, '0', '2022-11-01 03:07:17', '2022-11-01 03:07:17', NULL),
(76, 9, 5, 9, 31, 'B', 'D', NULL, NULL, '0', '2022-11-01 03:07:17', '2022-11-01 03:07:17', NULL),
(77, 9, 5, 9, 32, 'B', 'B', NULL, NULL, '0', '2022-11-01 03:07:17', '2022-11-01 03:07:17', NULL),
(78, 9, 5, 9, 33, 'B', 'B', NULL, NULL, '0', '2022-11-01 03:07:17', '2022-11-01 03:07:17', NULL),
(79, 9, 5, 9, 34, 'B', 'B', NULL, NULL, '0', '2022-11-01 03:07:17', '2022-11-01 03:07:17', NULL),
(80, 9, 5, 9, 35, 'B', 'C', NULL, NULL, '0', '2022-11-01 03:07:17', '2022-11-01 03:07:17', NULL),
(81, 9, 5, 9, 36, 'B', 'C', NULL, NULL, '0', '2022-11-01 03:07:17', '2022-11-01 03:07:17', NULL),
(82, 10, 5, 9, 28, 'B', 'C', NULL, NULL, '0', '2022-11-01 03:10:33', '2022-11-01 03:10:33', NULL),
(83, 10, 5, 9, 29, 'B', 'D', NULL, NULL, '0', '2022-11-01 03:10:33', '2022-11-01 03:10:33', NULL),
(84, 10, 5, 9, 30, 'B', 'D', NULL, NULL, '0', '2022-11-01 03:10:33', '2022-11-01 03:10:33', NULL),
(85, 10, 5, 9, 31, 'B', 'D', NULL, NULL, '0', '2022-11-01 03:10:33', '2022-11-01 03:10:33', NULL),
(86, 10, 5, 9, 32, 'B', 'B', NULL, NULL, '0', '2022-11-01 03:10:33', '2022-11-01 03:10:33', NULL),
(87, 10, 5, 9, 33, 'B', 'B', NULL, NULL, '0', '2022-11-01 03:10:33', '2022-11-01 03:10:33', NULL),
(88, 10, 5, 9, 34, 'B', 'B', NULL, NULL, '0', '2022-11-01 03:10:33', '2022-11-01 03:10:33', NULL),
(89, 10, 5, 9, 35, 'B', 'C', NULL, NULL, '0', '2022-11-01 03:10:33', '2022-11-01 03:10:33', NULL),
(90, 10, 5, 9, 36, 'B', 'C', NULL, NULL, '0', '2022-11-01 03:10:33', '2022-11-01 03:10:33', NULL),
(91, 11, 5, 9, 28, 'B', 'C', NULL, NULL, '0', '2022-11-01 03:20:41', '2022-11-01 03:20:41', NULL),
(92, 11, 5, 9, 29, 'B', 'D', NULL, NULL, '0', '2022-11-01 03:20:41', '2022-11-01 03:20:41', NULL),
(93, 11, 5, 9, 30, 'B', 'D', NULL, NULL, '0', '2022-11-01 03:20:41', '2022-11-01 03:20:41', NULL),
(94, 11, 5, 9, 31, 'B', 'D', NULL, NULL, '0', '2022-11-01 03:20:41', '2022-11-01 03:20:41', NULL),
(95, 11, 5, 9, 32, 'B', 'B', NULL, NULL, '0', '2022-11-01 03:20:41', '2022-11-01 03:20:41', NULL),
(96, 11, 5, 9, 33, 'C', 'B', NULL, NULL, '0', '2022-11-01 03:20:41', '2022-11-01 03:20:41', NULL),
(97, 11, 5, 9, 34, 'D', 'B', NULL, NULL, '0', '2022-11-01 03:20:41', '2022-11-01 03:20:41', NULL),
(98, 11, 5, 9, 35, 'A', 'C', NULL, NULL, '0', '2022-11-01 03:20:41', '2022-11-01 03:20:41', NULL),
(99, 11, 5, 9, 36, 'B', 'C', NULL, NULL, '0', '2022-11-01 03:20:41', '2022-11-01 03:20:41', NULL),
(100, 12, 5, 9, 28, 'A', 'C', NULL, NULL, '0', '2022-11-01 03:22:37', '2022-11-01 03:22:37', NULL),
(101, 12, 5, 9, 29, 'B', 'D', NULL, NULL, '0', '2022-11-01 03:22:37', '2022-11-01 03:22:37', NULL),
(102, 12, 5, 9, 30, 'C', 'D', NULL, NULL, '0', '2022-11-01 03:22:37', '2022-11-01 03:22:37', NULL),
(103, 12, 5, 9, 31, 'D', 'D', NULL, NULL, '0', '2022-11-01 03:22:37', '2022-11-01 03:22:37', NULL),
(104, 12, 5, 9, 32, 'A', 'B', NULL, NULL, '0', '2022-11-01 03:22:37', '2022-11-01 03:22:37', NULL),
(105, 12, 5, 9, 33, 'B', 'B', NULL, NULL, '0', '2022-11-01 03:22:37', '2022-11-01 03:22:37', NULL),
(106, 12, 5, 9, 34, 'C', 'B', NULL, NULL, '0', '2022-11-01 03:22:37', '2022-11-01 03:22:37', NULL),
(107, 12, 5, 9, 35, 'D', 'C', NULL, NULL, '0', '2022-11-01 03:22:37', '2022-11-01 03:22:37', NULL),
(108, 12, 5, 9, 36, 'A', 'C', NULL, NULL, '0', '2022-11-01 03:22:37', '2022-11-01 03:22:37', NULL),
(109, 13, 5, 9, 28, 'B', 'C', NULL, NULL, '0', '2022-11-01 04:36:28', '2022-11-01 04:36:28', NULL),
(110, 13, 5, 9, 29, 'C', 'D', NULL, NULL, '0', '2022-11-01 04:36:28', '2022-11-01 04:36:28', NULL),
(111, 13, 5, 9, 30, NULL, 'D', NULL, NULL, '0', '2022-11-01 04:36:28', '2022-11-01 04:36:28', NULL),
(112, 13, 5, 9, 31, NULL, 'D', NULL, NULL, '0', '2022-11-01 04:36:28', '2022-11-01 04:36:28', NULL),
(113, 13, 5, 9, 32, NULL, 'B', NULL, NULL, '0', '2022-11-01 04:36:28', '2022-11-01 04:36:28', NULL),
(114, 13, 5, 9, 33, NULL, 'B', NULL, NULL, '0', '2022-11-01 04:36:28', '2022-11-01 04:36:28', NULL),
(115, 13, 5, 9, 34, NULL, 'B', NULL, NULL, '0', '2022-11-01 04:36:28', '2022-11-01 04:36:28', NULL),
(116, 13, 5, 9, 35, 'C', 'C', NULL, NULL, '0', '2022-11-01 04:36:28', '2022-11-01 04:36:28', NULL),
(117, 13, 5, 9, 36, 'C', 'C', NULL, NULL, '0', '2022-11-01 04:36:28', '2022-11-01 04:36:28', NULL),
(118, 14, 5, 9, 28, 'B', 'C', NULL, NULL, '0', '2022-11-01 20:01:07', '2022-11-01 20:01:07', NULL),
(119, 14, 5, 9, 29, 'B', 'D', NULL, NULL, '0', '2022-11-01 20:01:07', '2022-11-01 20:01:07', NULL),
(120, 14, 5, 9, 30, 'B', 'D', NULL, NULL, '0', '2022-11-01 20:01:07', '2022-11-01 20:01:07', NULL),
(121, 14, 5, 9, 31, 'B', 'D', NULL, NULL, '0', '2022-11-01 20:01:07', '2022-11-01 20:01:07', NULL),
(122, 14, 5, 9, 32, 'B', 'B', NULL, NULL, '0', '2022-11-01 20:01:07', '2022-11-01 20:01:07', NULL),
(123, 14, 5, 9, 33, 'B', 'B', NULL, NULL, '0', '2022-11-01 20:01:07', '2022-11-01 20:01:07', NULL),
(124, 14, 5, 9, 34, 'C', 'B', NULL, NULL, '0', '2022-11-01 20:01:07', '2022-11-01 20:01:07', NULL),
(125, 14, 5, 9, 35, 'B', 'C', NULL, NULL, '0', '2022-11-01 20:01:07', '2022-11-01 20:01:07', NULL),
(126, 14, 5, 9, 36, 'B', 'C', NULL, NULL, '0', '2022-11-01 20:01:07', '2022-11-01 20:01:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `practics_tests`
--

CREATE TABLE `practics_tests` (
  `id` int(13) UNSIGNED NOT NULL,
  `slug` text NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(255) DEFAULT 'image/Test1658465480.png',
  `courseId` int(10) UNSIGNED NOT NULL,
  `subcourseId` int(13) NOT NULL,
  `subjectId` int(10) UNSIGNED NOT NULL,
  `is_schedule` tinyint(3) NOT NULL DEFAULT '0',
  `start_date_time` int(255) DEFAULT NULL,
  `end_date_time` int(255) DEFAULT NULL,
  `syllabus` longtext CHARACTER SET utf8mb4,
  `totalMarks` varchar(10) NOT NULL DEFAULT '0',
  `negativeMarks` varchar(10) NOT NULL DEFAULT '0',
  `duration` varchar(10) NOT NULL DEFAULT '0',
  `schedule` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `status` tinyint(3) DEFAULT '0',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `practics_tests`
--

INSERT INTO `practics_tests` (`id`, `slug`, `title`, `image`, `courseId`, `subcourseId`, `subjectId`, `is_schedule`, `start_date_time`, `end_date_time`, `syllabus`, `totalMarks`, `negativeMarks`, `duration`, `schedule`, `expiry`, `status`, `updated_at`, `created_at`) VALUES
(9, 'reet-practics-test', 'Reet Practics test', 'image/Test1660985316.png', 2, 2, 1, 0, NULL, NULL, 'testing', '120', '0.33', '0120', NULL, NULL, 0, '2022-08-20 08:48:36', '2022-08-20 08:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `practics__questions`
--

CREATE TABLE `practics__questions` (
  `id` int(11) UNSIGNED NOT NULL,
  `testId` int(11) UNSIGNED NOT NULL,
  `subjectId` int(10) UNSIGNED NOT NULL,
  `courseId` int(10) UNSIGNED NOT NULL,
  `question` longtext,
  `qimage` varchar(200) DEFAULT NULL,
  `optionA` mediumtext,
  `optionB` mediumtext,
  `optionC` mediumtext,
  `optionD` mediumtext,
  `queImage` mediumtext,
  `aImage` mediumtext,
  `bImage` mediumtext,
  `cImage` mediumtext,
  `dImage` mediumtext,
  `answer` mediumtext NOT NULL,
  `description` longtext,
  `descriptionimage` varchar(255) DEFAULT NULL,
  `explanations` varchar(1000) DEFAULT NULL,
  `explanations_video` varchar(255) DEFAULT NULL,
  `language` varchar(200) DEFAULT NULL COMMENT 'H1,H2 Hindi,S1,S2 Sanskarit,E1,E2 English',
  `marks` decimal(2,2) NOT NULL DEFAULT '0.00',
  `negative` decimal(2,2) NOT NULL DEFAULT '0.00',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `practics__questions`
--

INSERT INTO `practics__questions` (`id`, `testId`, `subjectId`, `courseId`, `question`, `qimage`, `optionA`, `optionB`, `optionC`, `optionD`, `queImage`, `aImage`, `bImage`, `cImage`, `dImage`, `answer`, `description`, `descriptionimage`, `explanations`, `explanations_video`, `language`, `marks`, `negative`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 2, 'व्यक्तिगत विभिन्नता का सम्मान करते वक्त, एक शिक्षक से क्या आशा नहीं की जा सकती है?', NULL, 'योग्यतानुसार समूह में विभक्त करना।', 'पाठ्यचर्या को समायोजित करना।', 'बच्चों को स्वाध्याय के लिए छोड़ देना।', 'शिक्षण विधियों को समायोजित करना।', NULL, NULL, NULL, NULL, NULL, 'C', '<p>okk test</p>', NULL, '<p>https://www.youtube.com/watch?v=gD_sRxW6Rig&amp;t=2013s</p>', NULL, '0', 0.00, 0.00, '2022-07-20 00:08:56', '2022-07-20 00:08:56'),
(2, 1, 3, 2, 'निम्न में से कौन से स्वलीनता के लक्षण हैं?', NULL, 'कमजोर सामाजिक व्यवहार ।', 'रूढिबद्ध व्यवहार', 'कमजोर संप्रेषण', 'उपरोक्त सभी ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:08:56', '2022-07-20 00:08:56'),
(3, 1, 3, 2, 'मात्रात्मक व्यक्तिगत क्षमता रूपी प्रक्रिया को कहा जाता है ', NULL, 'वृद्धि(ग्रोथ)संतुलन', '(इक्किलिब्रियम)', 'परिपक्वता (मैचुरेशन)', 'विकास(डेवलपमेंट)', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:08:56', '2022-07-20 00:08:56'),
(4, 1, 3, 2, 'किशोरावस्था में एक बच्चे के उचित विकास हेतु माता-पिता तथा शिक्षक निम्न कार्य कर सकते हैं- (निम्न में से कौनसा)', NULL, 'लिंग शिक्षा का उचित ज्ञान देना।', 'उचित वातावरण प्रदान करना।', 'परामर्श तथा मार्गदर्शन सेवा की व्यवस्था करना (यदि आवश्यक हो)', 'उपरोक्त सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:08:56', '2022-07-20 00:08:56'),
(5, 1, 3, 2, 'अत्यन्त निपुणतापूर्ण अधिगम पद्धति जिस पर बान्डुरा तथा वॉल्टर ने बल दिया वे हैं', NULL, 'पुरस्कार तथा सजा', 'निरीक्षणयुक्त अधिगम या अनुकरण', 'स्व-वास्तविकीकरण', 'उपरोक्त में से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:08:56', '2022-07-20 00:08:56'),
(6, 1, 3, 2, 'एक शिक्षक अपनी कक्षा में थार्नडाइक के सिद्धांत को लागू करने जा रहा है। निम्नलिखित में से क्या शिक्षक को लागू नहीं करना चाहिए?', NULL, 'बच्चों को तैयार किया जाना चाहिए तथा उन्हें कार्य सीखने हेतु सही रूप से प्रेरित किया जाना चाहिए।', 'बच्चों को नई चीजें सीखने हेतु खोज विधि के लिए उन्मुख किया जाना चाहिए।', 'उचित अभ्यास तथा ड्रिल कार्य किया जाना चाहिए।', 'जहां तक हो शिक्षक को पुरस्कार का उपयोग सही रूप में करने की कोशिश करनी चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:08:56', '2022-07-20 00:08:56'),
(7, 1, 3, 2, 'शिक्षा के अधिकार अधिनियम के अंतर्गत निम्न में से क्या शिक्षक के कार्य नहीं माने गए हैं?', NULL, 'एक निश्चित समय में पाठ्यक्रम को पूरा करना।', 'शिक्षक को खुद को व्यक्तिगत ट्यूशन में व्यस्त रखना चाहिए।', 'विद्यालय के लिए नियमितता बनाए रखना चाहिए तथा समय का पाबंद होना चाहिए।', 'हर बालक के अधिगम क्षमता को समझकर उसकी जरूरत के अनुसार उन्हें अतिरिक्त अनुबोध प्रदान करना चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:08:56', '2022-07-20 00:08:56'),
(8, 1, 3, 2, 'फ्रॉयड की अनुशंसित व्यक्तित्व की बनावट के अनुसार, निम्न में से कौन मूलभूत तीव्र इच्छा के उठने के साथ ही तुरंत तथा अनैच्छिक रूप से (सभी नियम तथा जीवन की सत्यता तथा नैतिकता की अवहेलना करते हुए) संतुष्ट करता है?', NULL, 'अहम् तथा पराअह्म दोनों', 'इदं', 'अहम्', 'पराअहम्', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:08:56', '2022-07-20 00:08:56'),
(9, 1, 3, 2, 'एक पांच वर्ष के बच्चे में दूसरों के प्रति प्रतिक्रिया तथा संप्रेषण में कमी है तथा असामान्य व्यवहार को बारम्बार करता है। इस तरह के लक्षण किस चीज का प्रतीक है?', NULL, 'श्रवण बाधिता', 'शैक्षिक पिछड़ापन', 'शैशव स्वलीनता', 'अधिगम अक्षमता ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:08:56', '2022-07-20 00:08:56'),
(10, 1, 3, 2, 'व्यक्तिगत विभिन्नता का सम्मान करते वक्त, एक शिक्षक से क्या आशा नहीं की जा सकती है?', NULL, 'योग्यतानुसार समूह में विभक्त करना।', 'पाठ्यचर्या को समायोजित करना।', 'बच्चों को स्वाध्याय के लिए छोड़ देना।', 'शिक्षण विधियों को समायोजित करना।', NULL, NULL, NULL, NULL, NULL, 'C', '<p>okk test</p>', NULL, '<p>https://www.youtube.com/watch?v=gD_sRxW6Rig&amp;t=2013s</p>', NULL, '0', 0.00, 0.00, '2022-07-20 00:11:53', '2022-07-20 00:11:53'),
(11, 1, 3, 2, 'निम्न में से कौन से स्वलीनता के लक्षण हैं?', NULL, 'कमजोर सामाजिक व्यवहार ।', 'रूढिबद्ध व्यवहार', 'कमजोर संप्रेषण', 'उपरोक्त सभी ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:11:53', '2022-07-20 00:11:53'),
(12, 1, 3, 2, 'मात्रात्मक व्यक्तिगत क्षमता रूपी प्रक्रिया को कहा जाता है ', NULL, 'वृद्धि(ग्रोथ)संतुलन', '(इक्किलिब्रियम)', 'परिपक्वता (मैचुरेशन)', 'विकास(डेवलपमेंट)', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:11:53', '2022-07-20 00:11:53'),
(13, 1, 3, 2, 'किशोरावस्था में एक बच्चे के उचित विकास हेतु माता-पिता तथा शिक्षक निम्न कार्य कर सकते हैं- (निम्न में से कौनसा)', NULL, 'लिंग शिक्षा का उचित ज्ञान देना।', 'उचित वातावरण प्रदान करना।', 'परामर्श तथा मार्गदर्शन सेवा की व्यवस्था करना (यदि आवश्यक हो)', 'उपरोक्त सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:11:53', '2022-07-20 00:11:53'),
(14, 1, 3, 2, 'अत्यन्त निपुणतापूर्ण अधिगम पद्धति जिस पर बान्डुरा तथा वॉल्टर ने बल दिया वे हैं', NULL, 'पुरस्कार तथा सजा', 'निरीक्षणयुक्त अधिगम या अनुकरण', 'स्व-वास्तविकीकरण', 'उपरोक्त में से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:11:53', '2022-07-20 00:11:53'),
(15, 1, 3, 2, 'एक शिक्षक अपनी कक्षा में थार्नडाइक के सिद्धांत को लागू करने जा रहा है। निम्नलिखित में से क्या शिक्षक को लागू नहीं करना चाहिए?', NULL, 'बच्चों को तैयार किया जाना चाहिए तथा उन्हें कार्य सीखने हेतु सही रूप से प्रेरित किया जाना चाहिए।', 'बच्चों को नई चीजें सीखने हेतु खोज विधि के लिए उन्मुख किया जाना चाहिए।', 'उचित अभ्यास तथा ड्रिल कार्य किया जाना चाहिए।', 'जहां तक हो शिक्षक को पुरस्कार का उपयोग सही रूप में करने की कोशिश करनी चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:11:53', '2022-07-20 00:11:53'),
(16, 1, 3, 2, 'शिक्षा के अधिकार अधिनियम के अंतर्गत निम्न में से क्या शिक्षक के कार्य नहीं माने गए हैं?', NULL, 'एक निश्चित समय में पाठ्यक्रम को पूरा करना।', 'शिक्षक को खुद को व्यक्तिगत ट्यूशन में व्यस्त रखना चाहिए।', 'विद्यालय के लिए नियमितता बनाए रखना चाहिए तथा समय का पाबंद होना चाहिए।', 'हर बालक के अधिगम क्षमता को समझकर उसकी जरूरत के अनुसार उन्हें अतिरिक्त अनुबोध प्रदान करना चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:11:53', '2022-07-20 00:11:53'),
(17, 1, 3, 2, 'फ्रॉयड की अनुशंसित व्यक्तित्व की बनावट के अनुसार, निम्न में से कौन मूलभूत तीव्र इच्छा के उठने के साथ ही तुरंत तथा अनैच्छिक रूप से (सभी नियम तथा जीवन की सत्यता तथा नैतिकता की अवहेलना करते हुए) संतुष्ट करता है?', NULL, 'अहम् तथा पराअह्म दोनों', 'इदं', 'अहम्', 'पराअहम्', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:11:53', '2022-07-20 00:11:53'),
(18, 1, 3, 2, 'एक पांच वर्ष के बच्चे में दूसरों के प्रति प्रतिक्रिया तथा संप्रेषण में कमी है तथा असामान्य व्यवहार को बारम्बार करता है। इस तरह के लक्षण किस चीज का प्रतीक है?', NULL, 'श्रवण बाधिता', 'शैक्षिक पिछड़ापन', 'शैशव स्वलीनता', 'अधिगम अक्षमता ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-20 00:11:53', '2022-07-20 00:11:53'),
(19, 8, 0, 2, 'व्यक्तिगत विभिन्नता का सम्मान करते वक्त, एक शिक्षक से क्या आशा नहीं की जा सकती है?', NULL, 'योग्यतानुसार समूह में विभक्त करना।', 'पाठ्यचर्या को समायोजित करना।', 'बच्चों को स्वाध्याय के लिए छोड़ देना।', 'शिक्षण विधियों को समायोजित करना।', NULL, NULL, NULL, NULL, NULL, 'C', '<p>okk test</p>', NULL, '<p>https://www.youtube.com/watch?v=gD_sRxW6Rig&amp;t=2013s</p>', NULL, '0', 0.00, 0.00, '2022-08-20 00:12:06', '2022-08-20 00:12:06'),
(20, 8, 0, 2, 'निम्न में से कौन से स्वलीनता के लक्षण हैं?', NULL, 'कमजोर सामाजिक व्यवहार ।', 'रूढिबद्ध व्यवहार', 'कमजोर संप्रेषण', 'उपरोक्त सभी ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 00:12:06', '2022-08-20 00:12:06'),
(21, 8, 0, 2, 'मात्रात्मक व्यक्तिगत क्षमता रूपी प्रक्रिया को कहा जाता है ', NULL, 'वृद्धि(ग्रोथ)संतुलन', '(इक्किलिब्रियम)', 'परिपक्वता (मैचुरेशन)', 'विकास(डेवलपमेंट)', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 00:12:06', '2022-08-20 00:12:06'),
(22, 8, 0, 2, 'किशोरावस्था में एक बच्चे के उचित विकास हेतु माता-पिता तथा शिक्षक निम्न कार्य कर सकते हैं- (निम्न में से कौनसा)', NULL, 'लिंग शिक्षा का उचित ज्ञान देना।', 'उचित वातावरण प्रदान करना।', 'परामर्श तथा मार्गदर्शन सेवा की व्यवस्था करना (यदि आवश्यक हो)', 'उपरोक्त सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 00:12:06', '2022-08-20 00:12:06'),
(23, 8, 0, 2, 'अत्यन्त निपुणतापूर्ण अधिगम पद्धति जिस पर बान्डुरा तथा वॉल्टर ने बल दिया वे हैं', NULL, 'पुरस्कार तथा सजा', 'निरीक्षणयुक्त अधिगम या अनुकरण', 'स्व-वास्तविकीकरण', 'उपरोक्त में से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 00:12:06', '2022-08-20 00:12:06'),
(24, 8, 0, 2, 'एक शिक्षक अपनी कक्षा में थार्नडाइक के सिद्धांत को लागू करने जा रहा है। निम्नलिखित में से क्या शिक्षक को लागू नहीं करना चाहिए?', NULL, 'बच्चों को तैयार किया जाना चाहिए तथा उन्हें कार्य सीखने हेतु सही रूप से प्रेरित किया जाना चाहिए।', 'बच्चों को नई चीजें सीखने हेतु खोज विधि के लिए उन्मुख किया जाना चाहिए।', 'उचित अभ्यास तथा ड्रिल कार्य किया जाना चाहिए।', 'जहां तक हो शिक्षक को पुरस्कार का उपयोग सही रूप में करने की कोशिश करनी चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 00:12:06', '2022-08-20 00:12:06'),
(25, 8, 0, 2, 'शिक्षा के अधिकार अधिनियम के अंतर्गत निम्न में से क्या शिक्षक के कार्य नहीं माने गए हैं?', NULL, 'एक निश्चित समय में पाठ्यक्रम को पूरा करना।', 'शिक्षक को खुद को व्यक्तिगत ट्यूशन में व्यस्त रखना चाहिए।', 'विद्यालय के लिए नियमितता बनाए रखना चाहिए तथा समय का पाबंद होना चाहिए।', 'हर बालक के अधिगम क्षमता को समझकर उसकी जरूरत के अनुसार उन्हें अतिरिक्त अनुबोध प्रदान करना चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 00:12:06', '2022-08-20 00:12:06'),
(26, 8, 0, 2, 'फ्रॉयड की अनुशंसित व्यक्तित्व की बनावट के अनुसार, निम्न में से कौन मूलभूत तीव्र इच्छा के उठने के साथ ही तुरंत तथा अनैच्छिक रूप से (सभी नियम तथा जीवन की सत्यता तथा नैतिकता की अवहेलना करते हुए) संतुष्ट करता है?', NULL, 'अहम् तथा पराअह्म दोनों', 'इदं', 'अहम्', 'पराअहम्', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 00:12:06', '2022-08-20 00:12:06'),
(27, 8, 0, 2, 'एक पांच वर्ष के बच्चे में दूसरों के प्रति प्रतिक्रिया तथा संप्रेषण में कमी है तथा असामान्य व्यवहार को बारम्बार करता है। इस तरह के लक्षण किस चीज का प्रतीक है?', NULL, 'श्रवण बाधिता', 'शैक्षिक पिछड़ापन', 'शैशव स्वलीनता', 'अधिगम अक्षमता ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 00:12:06', '2022-08-20 00:12:06'),
(28, 9, 1, 2, 'व्यक्तिगत विभिन्नता का सम्मान करते वक्त, एक शिक्षक से क्या आशा नहीं की जा सकती है?', NULL, 'योग्यतानुसार समूह में विभक्त करना।', 'पाठ्यचर्या को समायोजित करना।', 'बच्चों को स्वाध्याय के लिए छोड़ देना।', 'शिक्षण विधियों को समायोजित करना।', NULL, NULL, NULL, NULL, NULL, 'C', '<p>okk test</p>', NULL, '<p>https://www.youtube.com/watch?v=gD_sRxW6Rig&amp;t=2013s</p>', NULL, '0', 0.00, 0.00, '2022-08-20 01:49:15', '2022-08-20 01:49:15'),
(29, 9, 1, 2, 'निम्न में से कौन से स्वलीनता के लक्षण हैं?', NULL, 'कमजोर सामाजिक व्यवहार ।', 'रूढिबद्ध व्यवहार', 'कमजोर संप्रेषण', 'उपरोक्त सभी ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 01:49:15', '2022-08-20 01:49:15'),
(30, 9, 1, 2, 'मात्रात्मक व्यक्तिगत क्षमता रूपी प्रक्रिया को कहा जाता है ', NULL, 'वृद्धि(ग्रोथ)संतुलन', '(इक्किलिब्रियम)', 'परिपक्वता (मैचुरेशन)', 'विकास(डेवलपमेंट)', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 01:49:15', '2022-08-20 01:49:15'),
(31, 9, 1, 2, 'किशोरावस्था में एक बच्चे के उचित विकास हेतु माता-पिता तथा शिक्षक निम्न कार्य कर सकते हैं- (निम्न में से कौनसा)', NULL, 'लिंग शिक्षा का उचित ज्ञान देना।', 'उचित वातावरण प्रदान करना।', 'परामर्श तथा मार्गदर्शन सेवा की व्यवस्था करना (यदि आवश्यक हो)', 'उपरोक्त सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 01:49:15', '2022-08-20 01:49:15'),
(32, 9, 1, 2, 'अत्यन्त निपुणतापूर्ण अधिगम पद्धति जिस पर बान्डुरा तथा वॉल्टर ने बल दिया वे हैं', NULL, 'पुरस्कार तथा सजा', 'निरीक्षणयुक्त अधिगम या अनुकरण', 'स्व-वास्तविकीकरण', 'उपरोक्त में से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 01:49:15', '2022-08-20 01:49:15'),
(33, 9, 1, 2, 'एक शिक्षक अपनी कक्षा में थार्नडाइक के सिद्धांत को लागू करने जा रहा है। निम्नलिखित में से क्या शिक्षक को लागू नहीं करना चाहिए?', NULL, 'बच्चों को तैयार किया जाना चाहिए तथा उन्हें कार्य सीखने हेतु सही रूप से प्रेरित किया जाना चाहिए।', 'बच्चों को नई चीजें सीखने हेतु खोज विधि के लिए उन्मुख किया जाना चाहिए।', 'उचित अभ्यास तथा ड्रिल कार्य किया जाना चाहिए।', 'जहां तक हो शिक्षक को पुरस्कार का उपयोग सही रूप में करने की कोशिश करनी चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 01:49:15', '2022-08-20 01:49:15'),
(34, 9, 1, 2, 'शिक्षा के अधिकार अधिनियम के अंतर्गत निम्न में से क्या शिक्षक के कार्य नहीं माने गए हैं?', NULL, 'एक निश्चित समय में पाठ्यक्रम को पूरा करना।', 'शिक्षक को खुद को व्यक्तिगत ट्यूशन में व्यस्त रखना चाहिए।', 'विद्यालय के लिए नियमितता बनाए रखना चाहिए तथा समय का पाबंद होना चाहिए।', 'हर बालक के अधिगम क्षमता को समझकर उसकी जरूरत के अनुसार उन्हें अतिरिक्त अनुबोध प्रदान करना चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 01:49:15', '2022-08-20 01:49:15'),
(35, 9, 1, 2, 'फ्रॉयड की अनुशंसित व्यक्तित्व की बनावट के अनुसार, निम्न में से कौन मूलभूत तीव्र इच्छा के उठने के साथ ही तुरंत तथा अनैच्छिक रूप से (सभी नियम तथा जीवन की सत्यता तथा नैतिकता की अवहेलना करते हुए) संतुष्ट करता है?', NULL, 'अहम् तथा पराअह्म दोनों', 'इदं', 'अहम्', 'पराअहम्', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 01:49:15', '2022-08-20 01:49:15'),
(36, 9, 1, 2, 'एक पांच वर्ष के बच्चे में दूसरों के प्रति प्रतिक्रिया तथा संप्रेषण में कमी है तथा असामान्य व्यवहार को बारम्बार करता है। इस तरह के लक्षण किस चीज का प्रतीक है?', NULL, 'श्रवण बाधिता', 'शैक्षिक पिछड़ापन', 'शैशव स्वलीनता', 'अधिगम अक्षमता ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-20 01:49:15', '2022-08-20 01:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `privacypolicy`
--

CREATE TABLE `privacypolicy` (
  `id` int(11) NOT NULL,
  `heading` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `discription` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privacypolicy`
--

INSERT INTO `privacypolicy` (`id`, `heading`, `image`, `discription`, `created_at`, `updated_at`) VALUES
(6, 'Information collection', 'http://classwala.parkensolution.com/storage/image/image1649833175.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.', '2022-03-05 01:57:10', '2022-04-13 13:59:35'),
(8, '1 .Information you provide directly to us', 'http://classwala.parkensolution.com/storage/image/image1649833183.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut abore et dolore magna aliqua. Ut enim ad minim veniaam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat nulla pariatur.\r\n\r\nIt has survived not only five centuries, but also the leap into electronic typesetting.\r\nContrary to popular belief, Lorem Ipsum is not simply random text.\r\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\r\nVarious versions have evolved over the years, sometimes by accident sometimes on purpose.', '2022-03-05 01:58:39', '2022-04-13 13:59:43'),
(9, '2. Information collected automatically', 'http://classwala.parkensolution.com/storage/image/image1649833190.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.', '2022-03-05 01:59:02', '2022-04-13 13:59:50'),
(10, '3. Enquirers and registered users', 'http://classwala.parkensolution.com/storage/image/image1649833199.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure dolor in reprehenderit in voluptate.', '2022-03-05 01:59:32', '2022-04-13 13:59:59'),
(11, '4. Supplementary student privacy notices', 'http://classwala.parkensolution.com/storage/image/image1649833210.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.', '2022-03-05 02:00:08', '2022-04-13 14:00:10'),
(12, '5. Changes to this privacy policy', 'http://classwala.parkensolution.com/storage/image/image1649833218.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat.', '2022-03-05 02:00:23', '2022-04-13 14:00:18');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `purchase_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `package_id` int(11) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` int(13) NOT NULL,
  `method` varchar(244) DEFAULT NULL,
  `amount` varchar(244) DEFAULT NULL,
  `type` varchar(232) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `purchase_id`, `order_id`, `package_id`, `status`, `user_id`, `method`, `amount`, `type`, `created_at`, `updated_at`) VALUES
(1, 'pay_KQSvdeKNZ0pHy8', NULL, 1, 'captured', 62, 'upi', '1299', 'Website', '2022-10-06 11:15:19', '2022-10-06 11:15:19'),
(28, 'pay_KS2OfOK1NsS1pV', 'order_KS2NcBUo73PIQC', 2, 'success', 62, NULL, '1', 'Classwala Abhyas', '2022-10-10 10:33:58', '2022-10-10 11:53:00'),
(29, 'pay_KS2ZfSRaLXOuaB', 'order_KS2XpCDcBgFNZW', 1, 'success', 64, NULL, '1', 'Classwala Abhyas', '2022-10-10 10:43:39', '2022-10-10 10:45:52'),
(32, NULL, 'order_KU00GzpZtizk3L', 1, 'pending', 5, NULL, '1299', 'Classwala', '2022-10-15 09:32:30', '2022-10-15 09:32:30'),
(33, NULL, 'order_KU00myRh1m9bhl', 6, 'pending', 5, NULL, '1199', 'Classwala', '2022-10-15 09:32:59', '2022-10-15 09:32:59'),
(34, NULL, 'order_KUigXWhgIhpAMt', 3, 'pending', 64, NULL, '1299', 'Classwala', '2022-10-17 05:15:02', '2022-10-17 05:15:02'),
(35, 'pay_KUnEp08kQPPr9C', 'order_KUnEblf1Nmgdo8', 6, 'success', 5, NULL, '1', 'Classwala', '2022-10-17 09:42:03', '2022-10-17 09:42:45'),
(36, NULL, 'order_KUrSSCuA1uinpR', 1, 'pending', 34, NULL, '1299', 'Classwala', '2022-10-17 13:49:56', '2022-10-17 13:49:56'),
(37, NULL, 'order_KYFTStmsPmsZi5', 1, 'pending', 5, NULL, '1299', 'Classwala', '2022-10-26 03:16:32', '2022-10-26 03:16:32'),
(38, NULL, 'order_KYFUAYUy7HHuXo', 1, 'pending', 5, NULL, '1299', 'Classwala', '2022-10-26 03:17:12', '2022-10-26 03:17:12'),
(39, NULL, 'order_KYPctb6LJNVVqV', 1, 'pending', 34, NULL, '1299', 'Classwala', '2022-10-26 13:12:24', '2022-10-26 13:12:24'),
(40, NULL, 'order_KYXK7FYTKqfo0g', 1, 'pending', 34, NULL, '1299', 'Classwala', '2022-10-26 20:44:11', '2022-10-26 20:44:11'),
(41, NULL, 'order_KYeiFqNrskLp9I', 6, 'pending', 5, NULL, '1', 'Classwala', '2022-10-27 03:57:53', '2022-10-27 03:57:53'),
(42, NULL, 'order_KZEmDS1mptUk4I', 1, 'pending', 34, NULL, '1299', 'Classwala', '2022-10-28 15:14:36', '2022-10-28 15:14:36'),
(43, NULL, 'order_KZUArDKbMEJusb', 1, 'pending', 34, NULL, '1299', 'Classwala', '2022-10-29 06:18:20', '2022-10-29 06:18:20'),
(44, NULL, 'order_KZUBDbVUbBIPcb', 1, 'pending', 34, NULL, '1299', 'Classwala', '2022-10-29 06:18:40', '2022-10-29 06:18:40'),
(45, NULL, 'order_KZUCgaBGEQxPcW', 1, 'pending', 34, NULL, '1299', 'Classwala', '2022-10-29 06:20:04', '2022-10-29 06:20:04'),
(46, NULL, 'order_KZUFEUI7pFuXDq', 2, 'pending', 34, NULL, '1299', 'Classwala', '2022-10-29 06:22:28', '2022-10-29 06:22:28'),
(47, NULL, 'order_KZbqMpPm5dQezS', 6, 'pending', 7, NULL, '1', 'Classwala', '2022-10-29 13:48:29', '2022-10-29 13:48:29'),
(48, 'pay_KZbwcaoHRVk1Lo', 'order_KZbwLgGOeEUnLT', 6, 'success', 7, NULL, '1', 'Classwala', '2022-10-29 13:54:09', '2022-10-29 13:54:52'),
(49, NULL, 'order_KZumiUe1kdq10a', 1, 'pending', 43, NULL, '1299', 'Classwala', '2022-10-30 08:20:14', '2022-10-30 08:20:14'),
(50, NULL, 'order_KZuoBEsCtFeCMI', 1, 'pending', 43, NULL, '1299', 'Classwala', '2022-10-30 08:21:35', '2022-10-30 08:21:35'),
(51, NULL, 'order_KaFxrnFfEpxsjg', 6, 'pending', 5, NULL, '1299', 'Classwala', '2022-10-31 05:03:19', '2022-10-31 05:03:19'),
(52, NULL, 'order_KaG0JLvluwW6Y7', 6, 'pending', 5, NULL, '1299', 'Classwala', '2022-10-31 05:05:38', '2022-10-31 05:05:38'),
(53, NULL, 'order_KaG2kRZvazBcFV', 1, 'pending', 5, NULL, '1299', 'Classwala', '2022-10-31 05:07:57', '2022-10-31 05:07:57'),
(54, NULL, 'order_KaHH8ORJF0RoUY', 6, 'pending', 5, NULL, '1299', 'Classwala', '2022-10-31 06:20:16', '2022-10-31 06:20:16'),
(55, NULL, 'order_KaIVHInkrfqdFH', 1, 'pending', 5, NULL, '1299', 'Classwala', '2022-10-31 07:32:22', '2022-10-31 07:32:22'),
(56, NULL, 'order_Kal9OjuP1MW6yI', 8, 'pending', 5, NULL, '10', 'Classwala', '2022-11-01 11:33:45', '2022-11-01 11:33:45'),
(57, NULL, 'order_KalNI2EyfkTJFr', 8, 'pending', 41, NULL, '10', 'Classwala', '2022-11-01 11:46:53', '2022-11-01 11:46:53'),
(58, NULL, 'order_Kb3a1TafcLKYmt', 8, 'pending', 114, NULL, '999', 'Classwala', '2022-11-02 05:35:26', '2022-11-02 05:35:26'),
(59, NULL, 'order_Kb3aRAl6WV6OTt', 8, 'pending', 114, NULL, '999', 'Classwala', '2022-11-02 05:35:49', '2022-11-02 05:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `purchases_book`
--

CREATE TABLE `purchases_book` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` double NOT NULL,
  `mobile2` double DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `landmark` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `district` varchar(200) NOT NULL,
  `pincode` bigint(200) NOT NULL,
  `purchase_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `book_id` int(11) UNSIGNED NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` int(13) NOT NULL,
  `method` varchar(244) DEFAULT NULL,
  `amount` varchar(244) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases_book`
--

INSERT INTO `purchases_book` (`id`, `name`, `email`, `mobile`, `mobile2`, `address`, `landmark`, `state`, `city`, `district`, `pincode`, `purchase_id`, `order_id`, `book_id`, `status`, `user_id`, `method`, `amount`, `created_at`, `updated_at`) VALUES
(10, 'anil jhuri', 'pushpendra.jareval@gmail.com', 8000124511, 8000124511, 'Jaipur', 'aatish Market', 'Rajasthan', 'jaipur', 'Jaipur', 302020, NULL, 'order_KTxEwzqlZIsUvL', 1, 'pending', 5, NULL, '1', '2022-10-15 06:50:19', '2022-10-15 06:50:19'),
(11, 'anil jhuri', 'pushpendra.jareval@gmail.com', 8000124511, 8000124511, 'Jaipur', 'aatish Market', 'Rajasthan', 'jaipur', 'Jaipur', 302020, 'pay_KTxRWeJu5GD2QH', 'order_KTxRCxZmIS8sYj', 1, 'success', 5, NULL, '1', '2022-10-15 07:01:56', '2022-10-15 07:03:02'),
(12, 'anil jhuri', 'pushpendra.jareval@gmail.com', 8000124511, 8000124511, 'Jaipur', 'aatish Market', 'Rajasthan', 'jaipur', 'Jaipur', 302020, NULL, 'order_KTxhPcRIZJtIPR', 1, 'pending', 5, NULL, '1', '2022-10-15 07:17:16', '2022-10-15 07:17:16'),
(13, 'anil jhuri', 'pushpendra.jareval@gmail.com', 8000124511, 8000124511, 'plot no 22 jainagar murli pura', 'mutlipura', 'bharatpur', 'deeg', 'bharatpur', 321203, 'pay_KTy1MOwlWo4TzK', 'order_KTy1C6IayZgKCJ', 1, 'success', 5, NULL, '1', '2022-10-15 07:35:59', '2022-10-15 07:37:03');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) UNSIGNED NOT NULL,
  `testId` int(11) UNSIGNED NOT NULL,
  `subjectId` int(10) UNSIGNED NOT NULL,
  `courseId` int(10) UNSIGNED NOT NULL,
  `question` longtext,
  `qimage` varchar(200) DEFAULT NULL,
  `optionA` mediumtext,
  `optionB` mediumtext,
  `optionC` mediumtext,
  `optionD` mediumtext,
  `queImage` mediumtext,
  `aImage` mediumtext,
  `bImage` mediumtext,
  `cImage` mediumtext,
  `dImage` mediumtext,
  `answer` mediumtext NOT NULL,
  `description` longtext,
  `descriptionimage` varchar(255) DEFAULT NULL,
  `explanations` varchar(1000) DEFAULT NULL,
  `explanations_video` varchar(255) DEFAULT NULL,
  `language` varchar(200) DEFAULT NULL COMMENT 'H1,H2 Hindi,S1,S2 Sanskarit,E1,E2 English',
  `marks` decimal(2,2) NOT NULL DEFAULT '0.00',
  `negative` decimal(2,2) NOT NULL DEFAULT '0.00',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `testId`, `subjectId`, `courseId`, `question`, `qimage`, `optionA`, `optionB`, `optionC`, `optionD`, `queImage`, `aImage`, `bImage`, `cImage`, `dImage`, `answer`, `description`, `descriptionimage`, `explanations`, `explanations_video`, `language`, `marks`, `negative`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'व्यक्तिगत विभिन्नता का सम्मान करते वक्त, एक शिक्षक से क्या आशा नहीं की जा सकती है?', NULL, 'योग्यतानुसार समूह में विभक्त करना।', 'पाठ्यचर्या को समायोजित करना।', 'बच्चों को स्वाध्याय के लिए छोड़ देना।', 'शिक्षण विधियों को समायोजित करना।', NULL, NULL, NULL, NULL, NULL, 'C', '<p>okk test</p>', NULL, '<p>https://www.youtube.com/watch?v=gD_sRxW6Rig&amp;t=2013s</p>', NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(2, 1, 1, 1, 'निम्न में से कौन से स्वलीनता के लक्षण हैं?', NULL, 'कमजोर सामाजिक व्यवहार ।', 'रूढिबद्ध व्यवहार', 'कमजोर संप्रेषण', 'उपरोक्त सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"1858\" style=\"width: 1393pt;\"><tbody><tr height=\"19\" style=\"height:14.25pt\">\r\n  <td height=\"19\" width=\"1858\" style=\"height:14.25pt;width:1393pt\">There are 44\r\n  sounds in <b>English</b>. Out of these, how many <u><b style=\"background-color: rgb(255, 0, 0);\">sounds</b></u> are vowels and how many are\r\n  consonants respectively</td></tr></tbody></table>', '', '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-12 06:23:24'),
(3, 1, 1, 1, 'मात्रात्मक व्यक्तिगत क्षमता रूपी प्रक्रिया को कहा जाता है ', NULL, 'वृद्धि(ग्रोथ)संतुलन', '(इक्किलिब्रियम)', 'परिपक्वता (मैचुरेशन)', 'विकास(डेवलपमेंट)', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(4, 1, 1, 1, 'किशोरावस्था में एक बच्चे के उचित विकास हेतु माता-पिता तथा शिक्षक निम्न कार्य कर सकते हैं- (निम्न में से कौनसा)', NULL, 'लिंग शिक्षा का उचित ज्ञान देना।', 'उचित वातावरण प्रदान करना।', 'परामर्श तथा मार्गदर्शन सेवा की व्यवस्था करना (यदि आवश्यक हो)', 'उपरोक्त सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(5, 1, 1, 1, 'अत्यन्त निपुणतापूर्ण अधिगम पद्धति जिस पर बान्डुरा तथा वॉल्टर ने बल दिया वे हैं', NULL, 'पुरस्कार तथा सजा', 'निरीक्षणयुक्त अधिगम या अनुकरण', 'स्व-वास्तविकीकरण', 'उपरोक्त में से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(6, 1, 1, 1, 'एक शिक्षक अपनी कक्षा में थार्नडाइक के सिद्धांत को लागू करने जा रहा है। निम्नलिखित में से क्या शिक्षक को लागू नहीं करना चाहिए?', NULL, 'बच्चों को तैयार किया जाना चाहिए तथा उन्हें कार्य सीखने हेतु सही रूप से प्रेरित किया जाना चाहिए।', 'बच्चों को नई चीजें सीखने हेतु खोज विधि के लिए उन्मुख किया जाना चाहिए।', 'उचित अभ्यास तथा ड्रिल कार्य किया जाना चाहिए।', 'जहां तक हो शिक्षक को पुरस्कार का उपयोग सही रूप में करने की कोशिश करनी चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(7, 1, 1, 1, 'शिक्षा के अधिकार अधिनियम के अंतर्गत निम्न में से क्या शिक्षक के कार्य नहीं माने गए हैं?', NULL, 'एक निश्चित समय में पाठ्यक्रम को पूरा करना।', 'शिक्षक को खुद को व्यक्तिगत ट्यूशन में व्यस्त रखना चाहिए।', 'विद्यालय के लिए नियमितता बनाए रखना चाहिए तथा समय का पाबंद होना चाहिए।', 'हर बालक के अधिगम क्षमता को समझकर उसकी जरूरत के अनुसार उन्हें अतिरिक्त अनुबोध प्रदान करना चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(8, 1, 1, 1, 'फ्रॉयड की अनुशंसित व्यक्तित्व की बनावट के अनुसार, निम्न में से कौन मूलभूत तीव्र इच्छा के उठने के साथ ही तुरंत तथा अनैच्छिक रूप से (सभी नियम तथा जीवन की सत्यता तथा नैतिकता की अवहेलना करते हुए) संतुष्ट करता है?', NULL, 'अहम् तथा पराअह्म दोनों', 'इदं', 'अहम्', 'पराअहम्', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(9, 1, 1, 1, 'एक पांच वर्ष के बच्चे में दूसरों के प्रति प्रतिक्रिया तथा संप्रेषण में कमी है तथा असामान्य व्यवहार को बारम्बार करता है। इस तरह के लक्षण किस चीज का प्रतीक है?', NULL, 'श्रवण बाधिता', 'शैक्षिक पिछड़ापन', 'शैशव स्वलीनता', 'अधिगम अक्षमता ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(10, 1, 1, 1, 'किशोरावस्था की ऐसी आदत जिसमें खुद को भूखे रखने की प्रवृत्ति होती है तथा यह ज्यादा बालिकाओं में पाई जाती है। ऐसी अवस्था को कहा जाता है', NULL, 'एनोरेक्सिया नरवोसा', 'डेलीरियम ट्रेमेन्स', 'स्वलीनता', 'डाउन सिण्ड्रोम ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(11, 1, 1, 1, 'निम्न में से कौनसी संस्था प्रशिक्षण नियमावली तथा कार्यक्रमों का विकलांगता पुनर्वास के क्षेत्र में भारत में क्रियान्वयन करती है?', NULL, 'राष्ट्रीय अध्यापक शिक्षा परिषद', 'राष्ट्रीय शैक्षिक योजना एवं प्रशासन विश्वविद्यालय', 'राष्ट्रीय शैक्षिक अनुसंधान एवं प्रशिक्षण परिषद', 'भारतीय पुनर्वास परिषद', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(12, 1, 1, 1, '“एक विशेष स्तर पर बच्चे मौलिक तर्क का इस्तेमाल करना शुरू कर देते हैं तथा सभी प्रकार के प्रश्नों का जवाब जानना चाहते हैं।’’ पियाजे ने इसे अंतज्ञनि कहा है। पियाजे के अनुसार, निम्न में से कौन से चरण का यह अर्थ है', NULL, 'साकार संचालन', 'पूर्व-संचालन', 'औपचारिक संचालन', 'इनमें से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(13, 1, 1, 1, 'ज्यादातर बच्चे प्रथम सार्थक शब्द इस उम्र में बोलते हैं', NULL, '3 महीने में', '6 महीने में', '35-40 महीने में', '10-13 महीने में ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(14, 1, 1, 1, '‘बहु-बुद्धि सिद्धांत’ के जनक कौन हैं?', NULL, 'वाइगोटस्की', 'अल्फ्रेड बिनेट', 'गार्डनर', 'बूनर', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(15, 1, 1, 1, 'निम्न में से किसने सामाजिक रचनावाद दर्शन पर अत्यधिक बल दिया है?', NULL, 'वाइगोटस्की', 'पियाजे', 'डेवी', 'कोलबर्ग', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(16, 1, 1, 1, 'श्रवण में विकृति की माप की जाती है', NULL, 'हर्ट्स में .', 'डेसीबल में', 'वॉट में', 'पौंड में', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(17, 1, 1, 1, 'निम्नलिखित में से कौन सूक्ष्म चलन कौशल का उदाहरण है?', NULL, 'चढ़ना', 'कूदना', 'दौड़ना', 'लिखना', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(18, 1, 1, 1, '‘स्कीमा’ कामतलब है', NULL, 'खण्डन क्रिया विधि', 'अधिगम विधि', 'लंबे समय के याद्दाश्त में सूचना के संगठित पैकेट्स का एकत्रित होना।', 'शारीरिक प्रतिवाद क्रियाविधि', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(19, 1, 1, 1, 'आनुवंशिकता की इकाई है', NULL, 'क्रोमोसोम', 'निषेचित अंडा', 'जीन', 'युग्मजन', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(20, 1, 1, 1, 'मेरडिथ के अध्ययन के आधार पर कहा जा सकता है कि सामान्य रूप से उन परिवारों के बालक ....... होते हैं, जो सामाजिक स्तर से ऊँचे होते हैं।', NULL, 'कम स्वास्थ एवं विकसित', 'अधिक स्वस्थ एवं विकसित', 'अधिक स्वस्थ एवं कम विकसित', 'स्वस्थ नहीं पर विकसित', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(21, 1, 1, 1, 'मूर्रे ने एक परीक्षण की रचना करके इतिहास रच दिया, वह क्या है?', NULL, 'स्याही धब्बा परीक्षण', 'वाक्य पूर्ति परीक्षण', 'विषय आत्मबोधन परीक्षण', 'मूल्यांकन मापनी ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(22, 1, 1, 1, 'बुद्धि के त्रिआयामी सिद्धांत के अनुसार बुद्धि के कारकों की संख्या है', NULL, '90', '110', '135', '120', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(23, 1, 1, 1, 'निम्न में से कौनसा तनाव को कम करने का अप्रत्यक्ष ढंग है?', NULL, 'विश्लेषण और निर्णय', 'रुकावट को दूर करना', 'दूसरे लक्ष्यों का प्रतिस्थापन', 'उदात्तीकरण', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(24, 1, 1, 1, 'सशक्त अभिप्रेरणा सीखने का प्रभावशाली घटक है', NULL, 'इससे बालक स्वस्थ रहता है', 'ध्यान करता है', 'शीघ्र सीखता है', 'प्रसन्न रहता है ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(25, 1, 1, 1, 'हस्तशिल्प की शिक्षा दी जानी चाहिए', NULL, 'मंदबुद्धि बालक को', 'प्रतिभाशाली बालक का', 'सामान्य बालक को', 'प्रखर बुद्धि बालक को ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(26, 1, 1, 1, 'छात्रों में चोरी करने की आदत को कैसे दूर किया जा सकता है?', NULL, 'बालकों को पारितोषिक देकर', 'ताड़ना देकर', 'सकारात्मक उदाहरण देकर', 'सजा देकर', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(27, 1, 1, 1, 'प्रतिभावान बालकों की पहचान करने के लिए हमें सबसे अधिक महत्व-', NULL, 'अभिभावकों के मत को देना चाहिए', 'वस्तुनिष्ठ परीक्षणों के परिणाम को देना चाहिए', 'शिक्षक के निर्णय को देना चाहिए', 'समाज के विचारों को देना चाहिए', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(28, 1, 1, 1, 'छब्थ् 2005 में कला शिक्षा को विद्यालय में जोड़ने का उद्देश्य है', NULL, 'सांस्कृतिक विरासत की प्रशंसा करना', 'छात्रों के व्यक्तित्व और मानसिक स्वास्थ्य को विकसित करना', 'केवल (1) सही है', '(1) और (2) दोनों सही हैं', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(29, 1, 1, 1, 'शैशवावस्था की विशेषता नही है', NULL, 'शारीरिक विकास की तीव्रता', 'दूसरो पर निर्भरता', 'नैतिकता का होना', 'मानसिक विकास में तीव्रता ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(30, 1, 1, 1, 'जब बालक की परीक्षा द्वारा मापी हुई योग्यता के सही मूल्यांकन में स्थायित्व होता है, तब उस परीक्षा को ......... कहते हैं', NULL, 'वैधता', 'विश्वसनीयता', 'वस्तुनिष्ठता', 'कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(31, 1, 1, 1, 'हिंदी वर्णमाला में मूल स्वर कितने हैं?', NULL, 'दो', 'चार', 'छः', 'सात', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(32, 1, 1, 1, 'वर्णमाला में संयुक्त स्वर कौन-से हैं?', NULL, 'अ, आ', 'इ, ई', 'ऐ, औ', 'ज, झ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(33, 1, 1, 1, 'अन्याय:', NULL, 'अभि + आन्य', 'अन्य + अन्य', 'अन्य + नय', 'अ + नि + आय', NULL, NULL, NULL, NULL, NULL, 'D', 'निर्देशः निम्नलिखित प्रश्नों में प्रत्येक शब्द का संधि विच्छेद चार-चार विकल्पों में किया गया है। इनमें से सही संधि विच्छेद वाले विकल्प का चयन कीजिए-  (33-35)', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(34, 1, 1, 1, 'देव्यर्पण में संधि कौनसी है', NULL, 'दीर्घ संधि', 'गुण संधि', 'वृद्धि संधि', 'यण संधि', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(35, 1, 1, 1, 'शीत+ऋतु संधि युक्त किजिए', NULL, 'शीतर्तु', 'शीतृतु', 'शीतऋतु', 'उपर्युक्त सभी', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(36, 1, 1, 1, 'इकतीसः', NULL, 'तत्पुरुष', 'द्विगु', 'द्वन्द्व', 'कर्मधारय', NULL, NULL, NULL, NULL, NULL, 'C', 'निर्देश: निम्नलिखित प्रत्येक प्रश्न में सामासिक शब्द दिया गया है उसके नीचे उसमें प्रयुक्त समास के लिए चार-चार विकल्प दिए गए हैं, इनमें सर्वाधिक सही समास का चयन कीजिए।(36-38)', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(37, 1, 1, 1, 'लूला-लंगड़ा', NULL, 'तत्पुरुष', 'द्वन्द्व', 'बहुव्रीहि', 'अव्ययीभाव', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(38, 1, 1, 1, 'निम्नलिखित में से कौनसा शब्द द्वन्द्व समास का उदाहरण नहीं है-', NULL, 'पाप पुण्य', 'यथाशक्ति', 'राजा-प्रजा', 'जीवन-मरण', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(39, 1, 1, 1, 'अंकः', NULL, 'गोद', 'भाग्य', 'संख्या', 'दैनंदिनी', NULL, NULL, NULL, NULL, NULL, 'D', 'निर्देश: निम्नलिखित प्रश्नों में अनेकार्थक शब्दों के चार-चार विकल्प दिए गए हैं, इनमें से कोई एक विकल्प गलत है। गलत विकल्प का चयन कीजिए।', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(40, 1, 1, 1, 'हरिण', NULL, 'विहग', 'खग', 'हंस', 'मृग', NULL, NULL, NULL, NULL, NULL, 'C', 'निर्देश: निम्नलिखित प्रश्नों प्रत्येक शब्द के लिए उसके नीचे दिए गए विकल्पों में से पर्यायवाची शब्द का चयन कीजिए।(40-41)', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(41, 1, 1, 1, 'हाटक', NULL, 'पुत्र', 'मृत्यु', 'सोना', 'घोड़ा', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(42, 1, 1, 1, 'भारतीय लोग पाश्चात्य सभ्यता में रंगते जा रहे हैं', NULL, 'दाक्षणात्य', 'पौर्वात्य', 'आमात्य', 'प्रतीच्य', NULL, NULL, NULL, NULL, NULL, 'B', 'रेखांकित शब्द में विलोम है', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(43, 1, 1, 1, 'निर्देश: इनमें एक ही विकल्प तत्सम शब्द वाला है। आपको तत्सम शब्द का चयन करना है।', NULL, 'कउड़ी', 'कौड़ी', 'कपर्दिका', 'कदर्पिका', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(44, 1, 1, 1, 'जिसके सिर पर चंद्रमा है वाक्य में एक शब्द उतर दीजिए', NULL, 'चंद्रशेखर', 'चंद्रेश', 'चंद्रचूड़', 'चंद्रप्रभा', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(45, 1, 1, 1, 'व्याकरण का ज्ञान रखने वाला:', NULL, 'वैयाकरण', 'व्याख्याता', 'पंडित', 'विद्वान', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(46, 1, 1, 1, 'उपचारात्मक शिक्षण वह विधि है जो', NULL, 'समस्याओं के कारणों की पहचान मुश्किल करें', 'समस्याओं को उलझाकर प्रस्तुत करें', 'समस्याओं को दूर करने में सफलता प्रदान करें', 'सूमस्याओं का भाषिक नियमों पर ज्ञान प्रदान करें ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(47, 1, 1, 1, 'निम्न में कौन सा शिक्षण सूत्र नहीं है ?', NULL, 'मूर्त से अमूर्त', 'ज्ञात से अज्ञात', 'विश्लेषण से संश्लेषण', 'अनुकरण से अभ्यास', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(48, 1, 1, 1, 'डाॅ. मेरिया माॅण्टेरीया निवासी थी', NULL, 'इटली', 'फ्रंास', 'अमेरिका', 'भारत', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(49, 1, 1, 1, 'मातृभाषा शिक्षण का उद्वेश्य है', NULL, 'ज्ञानात्मक उद्वेश्य', 'कौशलात्मक उद्वेश्य', 'सृजनात्मक उद्वेश्य', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(50, 1, 1, 1, 'भाषा कौशल का स्वरूप है', NULL, 'बोलना-सुनना', 'लिखना-पढ़ना', '1 एवं 2 दोनों', 'इनमें से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(51, 1, 1, 1, 'एक छात्र अपने पिता के गलत कर्मों के कारण कक्षा में हीन भावना से ग्रस्त है । कक्षा में आप', NULL, 'उससे उसके पिता के समाचार पूछते रहेंगे', 'उसे गलत कार्यों से अलग रहने की प्ररेणा देंगे', 'सामान्य छात्रों को उससे अलग रहने के लिए कहेंगे', 'उसे उसके हाल पर छोड़ दंेगे', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(52, 1, 1, 1, 'कविता का यथार्थ मूल्यांकन कैसे किया जाता है ?', NULL, 'सरल प्रणाली द्वारा', 'गुप्त प्रणाली द्वारा', 'समीक्षा प्रणाली द्वारा', 'छोटी प्रणाली द्वारा', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(53, 1, 1, 1, 'व्याकरण भाषा निम्न में से किसका साधन है ?', NULL, 'त्रुटि का', 'शुद्वता का', 'बोलने का', 'इसमें से कोई नहीं ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(54, 1, 1, 1, 'मानसिक विकास के लिए भाषा उतनी ही आवश्कता है जितना की शिशु के शारीरिक विकास के लिए माँ का दूध यह निम्न में से किसका कथन है ?', NULL, 'महात्मा गाँधी', 'जीन पियाजे', 'डाॅ.सर्वपली राधाकृष्णन', 'स्किनर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(55, 1, 1, 1, 'निम्न में से क्या भाषा शिक्षण में सीखने की एक  विशेषता नहीं है ?', NULL, 'भाषा के ज्ञान में विकास करता है', 'भाषा शिक्षण हेतु सुलभ वातावरण तैयार करता है', 'भाषा शिक्षण के अन्तर्गत अयक्रिय करता है', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(56, 1, 1, 1, 'बालोद्यान शिक्षण विधि के जनक है ?', NULL, 'जाॅन डीवी', 'किलपैट्रिक', 'माफण्टेसरी', 'फॅाबेल', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(57, 1, 1, 1, 'सभी छात्रों में सीखने की क्षमता होती है', NULL, 'भिन्न भिन्न', 'समान', '1 एवं 2 दोनों', 'दोनों मे से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(58, 1, 1, 1, 'भाषा के मुख्य तत्व होते है?', NULL, 'ध्वनि', 'संकेत', 'चिन्ह', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(59, 1, 1, 1, 'निम्न में से कौन सा शिक्षण सिद्वान्त है ?', NULL, 'चयन का सिद्वान्त', 'रूचि का सिद्वान्त', 'ये सभी', NULL, NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(60, 1, 1, 1, 'आपकी कक्षा के बच्चे में अनुशासनहीनता की भावना दिन प्रतिदिन बढ़ती जा रही है। इसके लिए आप निम्न में से क्या उपचार करेंगे?', NULL, 'अनुशासनहीनता करने वाले छात्रों को कक्षा से निकाल देंगे', 'शिक्षण कार्य को रोचक बनाएँगे जिससे अनुशासहीनता स्वतः ही समाप्त हो जाएगी', 'अनुशासनहीनता करने वाले छात्रों के अभिभावकों को सूचित करेंगे', 'अनुशासनहीनता छात्रों को विशिष्ट सुविधाएँ प्रदान करके उन्हें प्रसन्न रखेंगे', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(61, 1, 1, 1, 'What do many Indians imagine?', NULL, 'That India is great', 'That in many ways India is the greatest country in the world', 'That India is greater than England', 'That India is the greatest country in South Asia', NULL, NULL, NULL, NULL, NULL, 'B', 'In every country people imagine that they are the best and the cleverest and the others are not so good as they are. The Englishman thinks that he and his country are the best; the Frenchman is very proud of France and everything French. The Germans and Italians think no less of their countries and many Indians imagine that Indian in many ways is the greatest country in the world. This is wrong. Everybody wants to think well of himself and his country. But really there is no person who has not some good and some bad qualities. In the same way, there is no country which is partly good and partly bad. We must take the good wherever we find it and try to remove the bad wherever it may be.          We are of course, most concerned with our own country, India. Unhappily, it is in a bad way today. Most of our people are poor and unhappy. They have no joy of their lives. We have to find out how we can make them happier. We have to see what is good in our ways and customs and try to keep it and whatever is bad we have to throw away. If we find anything good in other countries, we should certainly take it.   (31-35)', NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(62, 1, 1, 1, 'In what respect is India in a bad way today?', NULL, 'That some of the people in India are rich and happy', 'That all of the people in India are happy and hopeful', 'That most of the people in India are poor and unhappy', 'That most of the people are rich but unhappy ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(63, 1, 1, 1, 'What should we throw away?', NULL, 'That whatever is good in our old traditions', 'That whatever existed in our old beliefs', 'That whatever we see good in other countriesThat whatever is bad in our customs and tradition', 'That whatever is bad in our customs and tradition', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(64, 1, 1, 1, 'What should be our attitude towards other countries?', NULL, 'We should neglect what Frenchman are proud of.', 'If there is anything good in other countries, we should certainly take it.', 'We should refuse anything German people like to do.', 'We should not readily refuse whatever good is there in other countries', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(65, 1, 1, 1, 'What do people think in every country?', NULL, 'That they are not as good and as clever as others.', 'That they are the best and the cleverest people in the world.', 'The people of other countries are not very clever and good.', 'That most of the men of their country are rich and clever.', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(66, 1, 1, 1, 'Which is not synonym of the given word? Irksome', NULL, 'annoying', 'soothing', 'pleasing', 'facile', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(67, 1, 1, 1, 'Synonym of the word \'Cajole\'', NULL, 'Coax', 'Evince', 'Congratulate', 'Clarify', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(68, 1, 1, 1, 'Direction : In the following questions a word has been written in four different ways. Out of which only one is correctly spelt. Find the correctly spelt word.', NULL, 'gaurantee', 'garuntee', 'guarantee', 'guaruntee', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(69, 1, 1, 1, 'Solemn religious acts :', NULL, 'Demonstrations', 'Celebrations', 'Rites', 'Functions ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(70, 1, 1, 1, 'That which cannot be averted', NULL, 'Inevitable', 'Irreparable', 'Incomparable', 'Indisputable ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(71, 1, 1, 1, 'Committing murder in revenge :', NULL, 'Massacre', 'Vendetta', 'Homicide', 'Regicide', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(72, 1, 1, 1, 'Phonetic aspect of language deals with', NULL, 'writing', 'reading', 'sound,spelling and pronounciation', 'understanding ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(73, 1, 1, 1, 'Diphthongs are', NULL, 'consonant sounds', 'double consonant sounds', 'vowel sounds', 'double vowel sounds ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(74, 1, 1, 1, 'Diphthongs are also known as', NULL, 'semi-vowels', 'pure vowels', 'vowels with weak sound', 'glide vowels', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(75, 1, 1, 1, 'The correct transcription of the word \'English\' is ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(76, 1, 1, 1, 'There are 44 sounds in English. Out of these, how many sounds are vowels and how many are consonants respectively?', NULL, '20, 24', '5, 39', '22, 22', '10, 34', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(77, 1, 1, 1, 'Which of the following does not have /i:/ sound?', NULL, 'Week', 'Bean', 'Deep', 'Pretty', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(78, 1, 1, 1, 'Which approach lays a lot of emphasis on habit formation?', NULL, 'Eclectic approach', 'Cognitive approach', 'Communicative approach', 'Behaviouristic approach', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(79, 1, 1, 1, '...deals with the level of meaning in language.', NULL, 'Colloquial', 'Syntax', 'Semantics', 'Collocation ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(80, 1, 1, 1, 'When a child learns a language naturally, without much practice, it is called', NULL, 'language generalization', 'language adaption', 'language learning', 'language acquisition', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(81, 1, 1, 1, 'When reading, to \'decode\' means to', NULL, 'an action used in ICT', 'solving a complex puzzle', 'to analyse and understand', 'understanding a foreign language', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(82, 1, 1, 1, 'Remedial teaching involves', NULL, 'teaching and testing', 'testing continuously', 'teaching, testing and reteaching', 'teaching difficult topics', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(83, 1, 1, 1, 'Change the voice of following sen', NULL, 'tence: The teacher was chased.', 'Someone chased the teacher.', 'Someone had chased the teacher.', 'Somebody has chased the teacher.', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(84, 1, 1, 1, 'Identify the correct reported form of the given sentence. She said, “How ugly I look in this dress !\"', NULL, 'She said that how ugly she was looking in that dress.', 'She exclaimed how ugly she looked in that dress.', 'She expressed how ugly she looked in that dress.', 'She exclaimed that she looked very ugly in that dress.', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(85, 1, 1, 1, 'A number of plays were written   ............Shakespeare.', NULL, 'from', 'of', 'in', 'by', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(86, 1, 1, 1, 'His father died ..........cancer.', NULL, 'from', 'of', 'with', 'off', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(87, 1, 1, 1, 'An example of linking adverbials is', NULL, 'these', 'so', 'your', 'the', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(88, 1, 1, 1, 'This is the cat.... I saw.', NULL, 'who', 'that', 'whom', 'what', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(89, 1, 1, 1, 'Choose the word that can join the two  sentences : She is pretty. She is proud.', NULL, 'but', 'because', 'while', 'not', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(90, 1, 1, 1, 'Which is the abjective in the given sentence?The tall girl met a boy.', NULL, 'tall', 'girl', 'met', 'boy', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(91, 1, 1, 1, 'लिपिज्ञानस्य सम्बद्धः कौशलस्य भवति?', NULL, 'श्रवण, भाषण', 'भाषण, कौशल', 'पठन, भाषण', 'पठन, लेखन', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(92, 1, 1, 1, 'आचार्य पिङ्गलस्य छन्दोग्रन्थः अस्ति?', NULL, 'छन्दोमञ्जरी', 'छन्दिका', 'छन्दः सूत्रम्', 'न कोऽपि', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(93, 1, 1, 1, 'अल् प्रत्याहारे कति वर्णाः सन्ति?', NULL, '40', '41', '42', '43', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(94, 1, 1, 1, 'सेव+शानच्', NULL, 'सेवा', 'सेवकः', 'सेवायमानः', 'सेवमानः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(95, 1, 1, 1, 'अन्तरा-अन्तरेण इति योगे कस्या विभक्तेर्विधानं प्रभवति?', NULL, 'चतुर्थ्याः', 'पंचम्याः', 'तृतीयायाः', 'द्वितीयायाः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(96, 1, 1, 1, 'जुगुप्साविराम प्रमादार्थानामुपसंख्यानम् इत्यनेन का विभक्तिः?', NULL, 'द्वितीयाः', 'सप्तमी', 'पंचमी', 'षष्ठी', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(97, 1, 1, 1, 'पञ्चकाध्ययनं कस्मिन् विधौ भवति?', NULL, 'मौखिकविधौ', 'पारायणविधौ', 'वादविवादविधौ', 'प्रश्नोत्तरविधौ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(98, 1, 1, 1, 'अनुनासिक वर्णानां कति संख्या?', NULL, '2', '3', '5', '4', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(99, 1, 1, 1, 'माहेश्वराणि इत्यत्र कः प्रत्ययः', NULL, 'अण्', 'अक्', 'कप्', 'नूर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(100, 1, 1, 1, 'बाह्यप्रयत्नाः सन्ति', NULL, 'विवारः, संवारः, श्वासः, स्वरितः', 'घोषः, अघोषः, अल्पप्राणः', 'नादः, महाप्राणः, उदात्तः, अनुदात्तः', 'सर्वे ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(101, 1, 1, 1, 'स्पर्शवर्णाः के सन्ति-', NULL, 'कवर्गतः मवर्गपर्यन्तम्', 'कवर्गतः चवर्गपर्यन्तम्', 'कवर्गतः तवर्गपर्यन्तम्', 'कवर्गतः पवर्गपर्यन्तम्', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(102, 1, 1, 1, 'वृद्धिसंज्ञक वर्णः अस्ति-', NULL, 'आ', 'इ', 'अ', 'ओ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(103, 1, 1, 1, 'वरदराजस्य रचना नास्ति-', NULL, 'लघुसिद्धान्त कौमुदी', 'मध्यसिद्धान्त कौमुदी', 'मनोरमाकुचमर्दनम', 'सारकौमुदी ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(104, 1, 1, 1, 'माहेश्वर सूत्रेषु कस्य व्यंजनवर्णस्य द्विवारं प्रयोगःभवतिः', NULL, 'च', 'ट', 'ह', 'ल', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(105, 1, 1, 1, 'सर्वेषां स्वरव्यंजनश्च बोधक प्रत्याहारे ग्रहणं भवति?', NULL, 'अच्', 'अल्', 'अण्', 'शल्', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(106, 1, 1, 1, 'वर्णानामदर्शने का भवति', NULL, 'अभावः', 'संहिता', 'लोपः', 'संयोगः', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(107, 1, 1, 1, 'अष्टौ च विशंति च-अष्टाविंशति, अर्थश्च धर्मश्च-अर्थधर्मों, हरिश्च हरश्च-हरिहरौ अत्र कः समासः?', NULL, 'द्वन्द्वसमासः', 'तत्पुरुषसमासः', 'कर्मधारयसमासः', 'बहुब्रीहिसमासः', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(108, 1, 1, 1, 'पाणिनि अनुसारेण वर्णानाम् उच्चारणाय कति स्थानानि सन्ति?', NULL, 'सप्त', 'त्रयोदश', 'दश', 'अष्ट', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(109, 1, 1, 1, 'ङकारस्य उच्चारण स्थानम् अस्ति', NULL, 'कण्ठः नासिका च', 'तालु नासिका च', 'ओष्ठौ नासिका च', 'मूर्धा जिह्वामूलम् च ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(110, 1, 1, 1, 'सम्प्रसारणेन् ‘‘य् व्‘‘ इत्ययोः के भवतः', NULL, 'इ, उ', 'उ, इ', 'अ, उ', 'ऋ, लु', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(111, 1, 1, 1, 'द्वियमुनम् इत्यत्र कः समासः?', NULL, 'द्विगुः', 'कर्मधारयः', 'अव्यययीभावः', 'तत्पुरुषः', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(112, 1, 1, 1, 'गव्यम् पदस्य संधिविच्छेदोऽस्ति', NULL, 'ग+ यम्', 'गो+ यम्', 'गो+ अम्', 'ग+ वयम्', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(113, 1, 1, 1, 'ससजुषोरुः सूत्रमस्ति', NULL, 'कुत्वविधायकम्', 'रुत्वविधायकम्', 'द्विसर्गविधायकम्', 'सत्वविधायकम', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(114, 1, 1, 1, 'व्याकरणस्य आद्यः प्रवक्ता मन्यते ?', NULL, 'पाणिनि', 'कात्यायन', 'इंद्र', 'ब्रह्मा', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(115, 1, 1, 1, 'उत्तरपदार्थप्रधानः समासः कः?', NULL, 'केवलसमासः', 'द्वन्द्वसमासः', 'द्विगुसमासः', 'तत्पुरुषसमासः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(116, 1, 1, 1, 'माहेश्वरसूत्रेषु इत्संज्ञकाः वर्णाः कति?', NULL, '15', '14', '16', '42', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(117, 1, 1, 1, 'कति प्रत्याहाराः पाणिनिना सूत्रेषु व्यवहियते?', NULL, '42', '43', '44', '40', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(118, 1, 1, 1, 'यम्-अस्ति', NULL, 'मुखस्थानीय', 'नासिकास्थानीय', 'मूर्धास्थानीय', 'तालुस्थानीय', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(119, 1, 1, 1, 'हरि शब्दस्य पंचमी एकवचने रूपमस्ति', NULL, 'हरिभ्याम्', 'हरेः', 'हरये', 'हरिभ्यः', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(120, 1, 1, 1, 'प्रत्ययस्य प्रकारः अस्ति', NULL, 'संज्ञा', 'अव्ययः', 'धातुः', 'सुप्', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(121, 1, 1, 1, 'हिंदी वर्णमाला में मूल स्वर कितने हैं?', NULL, 'दो', 'चार', 'छः', 'सात', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(122, 1, 1, 1, 'वर्णमाला में संयुक्त स्वर कौन-से हैं?', NULL, 'अ, आ', 'इ, ई', 'ऐ, औ', 'ज, झ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(123, 1, 1, 1, 'अन्याय:', NULL, 'अभि + आन्य', 'अन्य + अन्य', 'अन्य + नय', 'अ + नि + आय', NULL, NULL, NULL, NULL, NULL, 'D', 'निर्देशः निम्नलिखित प्रश्नों में प्रत्येक शब्द का संधि विच्छेद चार-चार विकल्पों में किया गया है। इनमें से सही संधि विच्छेद वाले विकल्प का चयन कीजिए-  (33-35)', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(124, 1, 1, 1, 'देव्यर्पण में संधि कौनसी है', NULL, 'दीर्घ संधि', 'गुण संधि', 'वृद्धि संधि', 'यण संधि', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(125, 1, 1, 1, 'शीत+ऋतु संधि युक्त किजिए', NULL, 'शीतर्तु', 'शीतृतु', 'शीतऋतु', 'उपर्युक्त सभी', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(126, 1, 1, 1, 'इकतीसः', NULL, 'तत्पुरुष', 'द्विगु', 'द्वन्द्व', 'कर्मधारय', NULL, NULL, NULL, NULL, NULL, 'C', 'निर्देश: निम्नलिखित प्रत्येक प्रश्न में सामासिक शब्द दिया गया है उसके नीचे उसमें प्रयुक्त समास के लिए चार-चार विकल्प दिए गए हैं, इनमें सर्वाधिक सही समास का चयन कीजिए।(36-38)', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(127, 1, 1, 1, 'लूला-लंगड़ा', NULL, 'तत्पुरुष', 'द्वन्द्व', 'बहुव्रीहि', 'अव्ययीभाव', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(128, 1, 1, 1, 'निम्नलिखित में से कौनसा शब्द द्वन्द्व समास का उदाहरण नहीं है-', NULL, 'पाप पुण्य', 'यथाशक्ति', 'राजा-प्रजा', 'जीवन-मरण', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(129, 1, 1, 1, 'अंकः', NULL, 'गोद', 'भाग्य', 'संख्या', 'दैनंदिनी', NULL, NULL, NULL, NULL, NULL, 'D', 'निर्देश: निम्नलिखित प्रश्नों में अनेकार्थक शब्दों के चार-चार विकल्प दिए गए हैं, इनमें से कोई एक विकल्प गलत है। गलत विकल्प का चयन कीजिए।', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(130, 1, 1, 1, 'हरिण', NULL, 'विहग', 'खग', 'हंस', 'मृग', NULL, NULL, NULL, NULL, NULL, 'C', 'निर्देश: निम्नलिखित प्रश्नों प्रत्येक शब्द के लिए उसके नीचे दिए गए विकल्पों में से पर्यायवाची शब्द का चयन कीजिए।(40-41)', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(131, 1, 1, 1, 'हाटक', NULL, 'पुत्र', 'मृत्यु', 'सोना', 'घोड़ा', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(132, 1, 1, 1, 'भारतीय लोग पाश्चात्य सभ्यता में रंगते जा रहे हैं', NULL, 'दाक्षणात्य', 'पौर्वात्य', 'आमात्य', 'प्रतीच्य', NULL, NULL, NULL, NULL, NULL, 'B', 'रेखांकित शब्द में विलोम है', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(133, 1, 1, 1, 'निर्देश: इनमें एक ही विकल्प तत्सम शब्द वाला है। आपको तत्सम शब्द का चयन करना है।', NULL, 'कउड़ी', 'कौड़ी', 'कपर्दिका', 'कदर्पिका', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(134, 1, 1, 1, 'जिसके सिर पर चंद्रमा है वाक्य में एक शब्द उतर दीजिए', NULL, 'चंद्रशेखर', 'चंद्रेश', 'चंद्रचूड़', 'चंद्रप्रभा', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(135, 1, 1, 1, 'व्याकरण का ज्ञान रखने वाला:', NULL, 'वैयाकरण', 'व्याख्याता', 'पंडित', 'विद्वान', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(136, 1, 1, 1, 'उपचारात्मक शिक्षण वह विधि है जो', NULL, 'समस्याओं के कारणों की पहचान मुश्किल करें', 'समस्याओं को उलझाकर प्रस्तुत करें', 'समस्याओं को दूर करने में सफलता प्रदान करें', 'सूमस्याओं का भाषिक नियमों पर ज्ञान प्रदान करें ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(137, 1, 1, 1, 'निम्न में कौन सा शिक्षण सूत्र नहीं है ?', NULL, 'मूर्त से अमूर्त', 'ज्ञात से अज्ञात', 'विश्लेषण से संश्लेषण', 'अनुकरण से अभ्यास', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(138, 1, 1, 1, 'डाॅ. मेरिया माॅण्टेरीया निवासी थी', NULL, 'इटली', 'फ्रंास', 'अमेरिका', 'भारत', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(139, 1, 1, 1, 'मातृभाषा शिक्षण का उद्वेश्य है', NULL, 'ज्ञानात्मक उद्वेश्य', 'कौशलात्मक उद्वेश्य', 'सृजनात्मक उद्वेश्य', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(140, 1, 1, 1, 'भाषा कौशल का स्वरूप है', NULL, 'बोलना-सुनना', 'लिखना-पढ़ना', '1 एवं 2 दोनों', 'इनमें से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(141, 1, 1, 1, 'एक छात्र अपने पिता के गलत कर्मों के कारण कक्षा में हीन भावना से ग्रस्त है । कक्षा में आप', NULL, 'उससे उसके पिता के समाचार पूछते रहेंगे', 'उसे गलत कार्यों से अलग रहने की प्ररेणा देंगे', 'सामान्य छात्रों को उससे अलग रहने के लिए कहेंगे', 'उसे उसके हाल पर छोड़ दंेगे', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(142, 1, 1, 1, 'कविता का यथार्थ मूल्यांकन कैसे किया जाता है ?', NULL, 'सरल प्रणाली द्वारा', 'गुप्त प्रणाली द्वारा', 'समीक्षा प्रणाली द्वारा', 'छोटी प्रणाली द्वारा', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(143, 1, 1, 1, 'व्याकरण भाषा निम्न में से किसका साधन है ?', NULL, 'त्रुटि का', 'शुद्वता का', 'बोलने का', 'इसमें से कोई नहीं ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(144, 1, 1, 1, 'मानसिक विकास के लिए भाषा उतनी ही आवश्कता है जितना की शिशु के शारीरिक विकास के लिए माँ का दूध यह निम्न में से किसका कथन है ?', NULL, 'महात्मा गाँधी', 'जीन पियाजे', 'डाॅ.सर्वपली राधाकृष्णन', 'स्किनर', NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(145, 1, 1, 1, 'निम्न में से क्या भाषा शिक्षण में सीखने की एक  विशेषता नहीं है ?', NULL, 'भाषा के ज्ञान में विकास करता है', 'भाषा शिक्षण हेतु सुलभ वातावरण तैयार करता है', 'भाषा शिक्षण के अन्तर्गत अयक्रिय करता है', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(146, 1, 1, 1, 'बालोद्यान शिक्षण विधि के जनक है ?', NULL, 'जाॅन डीवी', 'किलपैट्रिक', 'माफण्टेसरी', 'फॅाबेल', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(147, 1, 1, 1, 'सभी छात्रों में सीखने की क्षमता होती है', NULL, 'भिन्न भिन्न', 'समान', '1 एवं 2 दोनों', 'दोनों मे से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(148, 1, 1, 1, 'भाषा के मुख्य तत्व होते है?', NULL, 'ध्वनि', 'संकेत', 'चिन्ह', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(149, 1, 1, 1, 'निम्न में से कौन सा शिक्षण सिद्वान्त है ?', NULL, 'चयन का सिद्वान्त', 'रूचि का सिद्वान्त', 'ये सभी', NULL, NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(150, 1, 1, 1, 'आपकी कक्षा के बच्चे में अनुशासनहीनता की भावना दिन प्रतिदिन बढ़ती जा रही है। इसके लिए आप निम्न में से क्या उपचार करेंगे?', NULL, 'अनुशासनहीनता करने वाले छात्रों को कक्षा से निकाल देंगे', 'शिक्षण कार्य को रोचक बनाएँगे जिससे अनुशासहीनता स्वतः ही समाप्त हो जाएगी', 'अनुशासनहीनता करने वाले छात्रों के अभिभावकों को सूचित करेंगे', 'अनुशासनहीनता छात्रों को विशिष्ट सुविधाएँ प्रदान करके उन्हें प्रसन्न रखेंगे', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(151, 1, 1, 1, 'What do many Indians imagine?', NULL, 'That India is great', 'That in many ways India is the greatest country in the world', 'That India is greater than England', 'That India is the greatest country in South Asia', NULL, NULL, NULL, NULL, NULL, 'B', 'In every country people imagine that they are the best and the cleverest and the others are not so good as they are. The Englishman thinks that he and his country are the best; the Frenchman is very proud of France and everything French. The Germans and Italians think no less of their countries and many Indians imagine that Indian in many ways is the greatest country in the world. This is wrong. Everybody wants to think well of himself and his country. But really there is no person who has not some good and some bad qualities. In the same way, there is no country which is partly good and partly bad. We must take the good wherever we find it and try to remove the bad wherever it may be.          We are of course, most concerned with our own country, India. Unhappily, it is in a bad way today. Most of our people are poor and unhappy. They have no joy of their lives. We have to find out how we can make them happier. We have to see what is good in our ways and customs and try to keep it and whatever is bad we have to throw away. If we find anything good in other countries, we should certainly take it.   (31-35)', NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(152, 1, 1, 1, 'In what respect is India in a bad way today?', NULL, 'That some of the people in India are rich and happy', 'That all of the people in India are happy and hopeful', 'That most of the people in India are poor and unhappy', 'That most of the people are rich but unhappy ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(153, 1, 1, 1, 'What should we throw away?', NULL, 'That whatever is good in our old traditions', 'That whatever existed in our old beliefs', 'That whatever we see good in other countries', 'That whatever is bad in our customs and tradition', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(154, 1, 1, 1, 'What should be our attitude towards other countries?', NULL, 'We should neglect what Frenchman are proud of.', 'If there is anything good in other countries, we should certainly take it.', 'We should refuse anything German people like to do.', 'We should not readily refuse whatever good is there in other countries', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(155, 1, 1, 1, 'What do people think in every country?', NULL, 'That they are not as good and as clever as others.', 'That they are the best and the cleverest people in the world.', 'The people of other countries are not very clever and good.', 'That most of the men of their country are rich and clever.', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(156, 1, 1, 1, 'The English sonnet has', NULL, 'three quatrains and a couplet', 'two quatrains and a couplet', 'four quatrains and a couplet', 'None of the above', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(157, 1, 1, 1, 'Drama differs from poetry as', NULL, 'it has metaphor', 'it has action', 'it has rhyme scheme', 'it is always written in stanzas', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(158, 1, 1, 1, 'Which one of the following is not a poetic device?', NULL, 'Imagery', 'Morpheme', 'Metaphor', 'Alliteration', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(159, 1, 1, 1, 'Point out the figure of speech used in the sentence given below: The moon smiled at the stars around her.', NULL, 'Metaphor', 'Oxymoron', 'Personification', 'Simile ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(160, 1, 1, 1, 'Choose the correct figure of speech in the following sentence.“The wind lies asleep in the arms of dawn.\"', NULL, 'Metaphor', 'Hyperbole', 'Personification', 'Oxymoron', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(161, 1, 1, 1, 'Rule of thumb (idiom)', NULL, 'A rough unit of measure for small lengths', 'A broadly accurate guide based on practice', NULL, 'To force someone to work against his wish', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(162, 1, 1, 1, 'Rome was not built in a day. (idiom)', NULL, 'It takes time to create great things.', 'You have to win many wars to build an empire.', 'A task done hurriedly fails completely.', 'Building anything worthwhile requires skill. ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(163, 1, 1, 1, 'All bark and no bite :(idiom)', NULL, 'Children should only be scolded but never beaten.', 'To be full of big talk but lacking action.', 'The person who appears most scary will help you the most.', 'A person who talks a lot will never harm you.', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(164, 1, 1, 1, 'To spill the beans :(idiom)', NULL, 'To reveal secret information unintentionally.', 'To lose inherited wealth.', 'To spread rumours to intentionally harm some.', 'To spend away hard earned savings.', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(165, 1, 1, 1, 'Cheek by jowl.  (idiom)', NULL, 'Very close together', 'Arguing', 'Teasing one another', 'Avoiding one another', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44');
INSERT INTO `questions` (`id`, `testId`, `subjectId`, `courseId`, `question`, `qimage`, `optionA`, `optionB`, `optionC`, `optionD`, `queImage`, `aImage`, `bImage`, `cImage`, `dImage`, `answer`, `description`, `descriptionimage`, `explanations`, `explanations_video`, `language`, `marks`, `negative`, `created_at`, `updated_at`) VALUES
(166, 1, 1, 1, 'A number of plays were written ........, Shakespeare.', NULL, 'from', 'of', 'in', 'by', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(167, 1, 1, 1, 'His father died ....... ... cancer.', NULL, 'from', 'of', 'with', 'off', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(168, 1, 1, 1, 'Choose the word that can join the two given sentences : She is pretty. She is proud.', NULL, 'but', 'because', 'while', 'not', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(169, 1, 1, 1, 'This is the cat......... I saw.', NULL, 'who', 'that', 'whom', 'what', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(170, 1, 1, 1, 'Which is the adjective in the given sentence? The tall girl met a boy.', NULL, 'girl', 'met', 'boy', 'tall', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(171, 1, 1, 1, 'Identify the type of word that is underlined in the given sentence. It\'s sheer rubbish.', NULL, 'Noun', 'Pronoun', 'Adjective', 'Verb', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(172, 1, 1, 1, 'Phonetic aspect of language deals with', NULL, 'writing', 'reading', 'sound, spelling and pronounciation', 'understanding', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(173, 1, 1, 1, 'Diphthongs are also known as', NULL, 'semi-vowels', 'pure vowels', 'vowels with weak sound', 'glide vowels', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(174, 1, 1, 1, 'The correct transcription of the word \'English\' is', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(175, 1, 1, 1, 'There are 44 sounds in English. Out of these, how many sounds are vowels and how many are consonants respectively', NULL, '20, 24', '5, 39', '22, 221', '0, 34', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(176, 1, 1, 1, 'Which of the following does not have /i:/ sound?', NULL, 'Week', 'Deep', 'Pretty', 'Bean', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(177, 1, 1, 1, 'Which approach lays a lot of emphasis on habit formation?', NULL, 'Eclectic approach', 'Cognitive approach', 'Communicative approach', 'Behaviouristic approach', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(178, 1, 1, 1, '...deals with the level of meaning in language.', NULL, 'Colloquial', 'Syntax', 'Semantics', 'Collocation', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(179, 1, 1, 1, 'When a child learns a language naturally, without much practice, it is called', NULL, 'language generalization', 'language adaption', 'language learning', 'language acquisition', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(180, 1, 1, 1, 'When reading, to \"decode\' means to', NULL, 'an action used in ICT', 'solving a complex puzzle', 'to analyse and understand', 'understanding a foreign language', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(181, 1, 1, 1, 'लिपिज्ञानस्य सम्बद्धः कौशलस्य भवति?', NULL, 'श्रवण, भाषण', 'भाषण, कौशल', 'पठन, भाषण', 'पठन, लेखन', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(182, 1, 1, 1, 'आचार्य पिङ्गलस्य छन्दोग्रन्थः अस्ति?', NULL, 'छन्दोमञ्जरी', 'छन्दिका', 'छन्दः सूत्रम्', 'न कोऽपि', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(183, 1, 1, 1, 'अल् प्रत्याहारे कति वर्णाः सन्ति?', NULL, '40', '41', '42', '43', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(184, 1, 1, 1, 'सेव+शानच्', NULL, 'सेवा', 'सेवकः', 'सेवायमानः', 'सेवमानः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(185, 1, 1, 1, 'अन्तरा-अन्तरेण इति योगे कस्या विभक्तेर्विधानं प्रभवति?', NULL, 'चतुर्थ्याः', 'पंचम्याः', 'तृतीयायाः', 'द्वितीयायाः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(186, 1, 1, 1, 'जुगुप्साविराम प्रमादार्थानामुपसंख्यानम् इत्यनेन का विभक्तिः?', NULL, 'द्वितीयाः', 'सप्तमी', 'पंचमी', 'षष्ठी', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(187, 1, 1, 1, 'पञ्चकाध्ययनं कस्मिन् विधौ भवति?', NULL, 'मौखिकविधौ', 'पारायणविधौ', 'वादविवादविधौ', 'प्रश्नोत्तरविधौ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(188, 1, 1, 1, 'अनुनासिक वर्णानां कति संख्या?', NULL, '2', '3', '5', '4', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(189, 1, 1, 1, 'माहेश्वराणि इत्यत्र कः प्रत्ययः', NULL, 'अण्', 'अक्', 'कप्', 'नूर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(190, 1, 1, 1, 'बाह्यप्रयत्नाः सन्ति', NULL, 'विवारः, संवारः, श्वासः, स्वरितः', 'घोषः, अघोषः, अल्पप्राणः', 'नादः, महाप्राणः, उदात्तः, अनुदात्तः', 'सर्वे ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(191, 1, 1, 1, 'स्पर्शवर्णाः के सन्ति-', NULL, 'कवर्गतः मवर्गपर्यन्तम्', 'कवर्गतः चवर्गपर्यन्तम्', 'कवर्गतः तवर्गपर्यन्तम्', 'कवर्गतः पवर्गपर्यन्तम्', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(192, 1, 1, 1, 'वृद्धिसंज्ञक वर्णः अस्ति-', NULL, 'आ', 'इ', 'अ', 'ओ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(193, 1, 1, 1, 'वरदराजस्य रचना नास्ति-', NULL, 'लघुसिद्धान्त कौमुदी', 'मध्यसिद्धान्त कौमुदी', 'मनोरमाकुचमर्दनम', 'सारकौमुदी ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(194, 1, 1, 1, 'माहेश्वर सूत्रेषु कस्य व्यंजनवर्णस्य द्विवारं प्रयोगःभवतिः', NULL, 'च', 'ट', 'ह', 'ल', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(195, 1, 1, 1, 'सर्वेषां स्वरव्यंजनश्च बोधक प्रत्याहारे ग्रहणं भवति?', NULL, 'अच्', 'अल्', 'अण्', 'शल्', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(196, 1, 1, 1, 'वर्णानामदर्शने का भवति', NULL, 'अभावः', 'संहिता', 'लोपः', 'संयोगः', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(197, 1, 1, 1, 'अष्टौ च विशंति च-अष्टाविंशति, अर्थश्च धर्मश्च-अर्थधर्मों, हरिश्च हरश्च-हरिहरौ अत्र कः समासः?', NULL, 'द्वन्द्वसमासः', 'तत्पुरुषसमासः', 'कर्मधारयसमासः', 'बहुब्रीहिसमासः', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(198, 1, 1, 1, 'पाणिनि अनुसारेण वर्णानाम् उच्चारणाय कति स्थानानि सन्ति?', NULL, 'सप्त', 'त्रयोदश', 'दश', 'अष्ट', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(199, 1, 1, 1, 'ङकारस्य उच्चारण स्थानम् अस्ति', NULL, 'कण्ठः नासिका च', 'तालु नासिका च', 'ओष्ठौ नासिका च', 'मूर्धा जिह्वामूलम् च ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(200, 1, 1, 1, 'सम्प्रसारणेन् ‘‘य् व्‘‘ इत्ययोः के भवतः', NULL, 'इ, उ', 'उ, इ', 'अ, उ', 'ऋ, लु', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(201, 1, 1, 1, 'द्वियमुनम् इत्यत्र कः समासः?', NULL, 'द्विगुः', 'कर्मधारयः', 'अव्यययीभावः', 'तत्पुरुषः', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(202, 1, 1, 1, 'गव्यम् पदस्य संधिविच्छेदोऽस्ति', NULL, 'ग+ यम्', 'गो+ यम्', 'गो+ अम्', 'ग+ वयम्', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(203, 1, 1, 1, 'ससजुषोरुः सूत्रमस्ति', NULL, 'कुत्वविधायकम्', 'रुत्वविधायकम्', 'द्विसर्गविधायकम्', 'सत्वविधायकम', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(204, 1, 1, 1, 'व्याकरणस्य आद्यः प्रवक्ता मन्यते ?', NULL, 'पाणिनि', 'कात्यायन', 'इंद्र', 'ब्रह्मा', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(205, 1, 1, 1, 'उत्तरपदार्थप्रधानः समासः कः?', NULL, 'केवलसमासः', 'द्वन्द्वसमासः', 'द्विगुसमासः', 'तत्पुरुषसमासः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(206, 1, 1, 1, 'माहेश्वरसूत्रेषु इत्संज्ञकाः वर्णाः कति?', NULL, '15', '14', '16', '42', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(207, 1, 1, 1, 'कति प्रत्याहाराः पाणिनिना सूत्रेषु व्यवहियते?', NULL, '42', '43', '44', '40', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(208, 1, 1, 1, 'यम्-अस्ति', NULL, 'मुखस्थानीय', 'नासिकास्थानीय', 'मूर्धास्थानीय', 'तालुस्थानीय', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(209, 1, 1, 1, 'हरि शब्दस्य पंचमी एकवचने रूपमस्ति', NULL, 'हरिभ्याम्', 'हरेः', 'हरये', 'हरिभ्यः', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(210, 1, 1, 1, 'प्रत्ययस्य प्रकारः अस्ति', NULL, 'संज्ञा', 'अव्ययः', 'धातुः', 'सुप्', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(211, 1, 1, 1, 'सर्वप्रथम एम.एन. राॅय द्वारा संविधान सभा के गठन का विचार रखा गया था ?', NULL, '1934', '1936', '1938', '1932', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(212, 1, 1, 1, '42 वें संविधान (संशोधन) अधिनियम 1976 द्वारा प्रस्तावना में कौनसा शब्द जोडे गये?', NULL, 'समाजवादी, पंथनिरपेक्ष और बंधुता', 'समाजवादी, पंथनिरपेक्ष और अखंडता', 'पंथनिरपेक्ष, लोकतंत्रात्मक व उपासना', 'बंधुता,उपासना और अखण्डता', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(213, 1, 1, 1, '86 वें संविधान संशोघन, 2002 द्वारा शिक्षा के मूल अधिकार को कोनसे अनुच्छेद में रखा गया है ?', NULL, '19वें', '20वें', '20(।)वें', '21(।)वें', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(214, 1, 1, 1, 'भारतीय संविधान में मूल कर्तव्यों को किस देश से लिया गया है ?', NULL, 'अमेरिका', 'जापान', 'सोवियत संघ', 'चीन', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(215, 1, 1, 1, 'लैंगिक अपराधों से बालकों का संरक्षण अधिनियम (च्व्ब्ैव् ।ब्ज् ) किस वर्ष लागू किया गया था ?', NULL, '2008', '2010', '2012', '2014', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(216, 1, 1, 1, 'राजस्थान में राज्य निर्वाचन आयोग की स्थापना किस वर्ष ली गई ?', NULL, '1950', '1956', '1994', '1999', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(217, 1, 1, 1, 'भारतीय संसद के अंग है ?', NULL, 'लोकसभा व राज्यसभा', 'लोकसभा,राज्यसभा व राष्ट्रपति', 'लोकसभा व विधानसभाएं', 'राष्ट्रपति व लोकसभा', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(218, 1, 1, 1, 'राष्ट्रपति द्वारा आंग्ल-भारतीय समुदाय के कितने सदस्यों को लोकसभा में मनोनीत किया जाता है ?', NULL, '12', '2', '8', '10', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(219, 1, 1, 1, 'भारतीय संघ की कार्यपालिका का वैधानिक प्रधान कौन होता है ?', NULL, 'प्रधानमंत्री', 'राष्ट्रपति', 'मुख्यन्यायाधीश', 'उप-राष्ट्रपति', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(220, 1, 1, 1, 'राज्यपाल के संबंध में कौनसा कथन सही नहीं है ?', NULL, 'नियुक्ति का प्रावधान अनुच्छेद 157 में है।', 'आयु 25 वर्ष या अधिक हो।', 'राज्य विधानसभा का सदस्य चुने जाने की योग्यता रखता है ।', 'पदावधि 5 वर्ष होती है ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(221, 1, 1, 1, 'सन् 1826 ई. में सर्वप्रथम हड.प्पा नामक स्थल पर प्राचीन सभ्यता के अवशेष मिलने की पुष्टि की ?', NULL, 'दयाराम साहनी', 'सर जाॅन मार्शल', 'जाॅन व बं्रटन बंधु', 'चाल्र्स मेसन', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(222, 1, 1, 1, '़ऋग्वैदिक काल में किन नदियों के बीच के क्षैत्र को ब्रह्यवर्त कहा गया है ?', NULL, 'सिन्धु गंगा', 'गंगा यमुना', 'सतलज यमुना', 'सिन्धु व्यास', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(223, 1, 1, 1, 'महावीर स्वामी जैन धर्म के कौनसे तीर्थंकर थे', NULL, '22वंे', '23वें', '21वें', '24वें', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(224, 1, 1, 1, 'गौतम बुद्व ने अपना पहला उपदेश किस स्थान पर दिया', NULL, 'लुम्बिनी', 'कुशीनगर', 'सारनाथ', 'प्रयाग', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(225, 1, 1, 1, 'निम्न में से कोंनसा सुमेलित नहीं है?महाजनपद-राजधानी', NULL, 'वत्स -कोशाम्बी', 'चेदि-शक्तिमति', 'कम्बोज-हाटक', 'अंग-अहिच्छत्र', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(226, 1, 1, 1, 'मौर्य शासक अशोक का कार्यकाल था ?', NULL, '256ई.पू.-230ई.पू.', '273ई.पू.-232ई.पू.', '298ई.पू.-273ई.पू.', '363ई.पू.-326ई.पू.', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(227, 1, 1, 1, 'राष्ट्रकूट वंश का संस्थापक था ?', NULL, 'ध्रुव', 'दंतिदुर्ग', 'अमोघवर्ष', 'कर्क', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(228, 1, 1, 1, 'भारतीय धर्म संस्कृति की प्रतीक भटार गुरू मुर्ति किस देश में स्थित है ?', NULL, 'इण्डोनेशिया', 'भुटान', 'श्रीलंका', 'कंबोडिया', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(229, 1, 1, 1, 'भक्ति आंदोलन के प्रथम प्रचारक माने जाते है ?', NULL, 'रामानुजाचार्य', 'शंकराचार्य', 'चैतन्य महाप्रभु', 'रामानन्द', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(230, 1, 1, 1, 'निम्न में से कौनसा सूफी सम्प्रदाय बाशरा शाखा से संबंधित है ?', NULL, 'चिश्ती', 'सुहरावर्दी', 'शतारिया', '1और 2 दोनों', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(231, 1, 1, 1, 'जोधपुर शासक जसवंत की मृत्यु के बाद औरंगजेब ने जौधपुर की गददी पर किसे बिढ़ाया?', NULL, 'इन्द्र सिंह', 'अमर सिंह', 'कर्ण सिंह', 'अजित सिंह', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(232, 1, 1, 1, 'भूराजस्व की दहशाला प्रणाली किसके द्वारा शुरू की गर्द थी ?', NULL, 'बाबर', 'हुमायुं', 'अकबर', 'ओंरगजेब', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(233, 1, 1, 1, 'दिल्ली के किला ए कुहना नामक किले का निर्माण किसके शासन काल में हुआ ?', NULL, 'शाहजहंा', 'शेरशाह', 'अकबर', 'मुहम्मद शाह', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(234, 1, 1, 1, 'बक्सर के युद्व के पश्चात किस संधि के तहत अंग्रेजों को बंगाल बिहार व उडी़सा की दीवानी प्राप्त हुई थी ?', NULL, 'अलीनगर संधि', 'इलाहाबाद संधि', 'बक्सर संधि', 'मुरादाबाद संधि', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(235, 1, 1, 1, 'निम्न में से सुमेलित नहीं है ?1857 क्रांति केन्द्र विद्रोह कुचलने वाला', NULL, 'दिल्ली निकाॅलसन, हड़सन', 'बरेली जनरल ह्यूरोज', 'कानपूर कैम्पबेल', 'इलाहाबाद कर्नल नील', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(236, 1, 1, 1, 'कंपनी अधिकारी, जिसकी 1857 की क्रांति के दौरान कोटा में हत्या कर दी गई थी, वह था -', NULL, 'कर्नल एबाॅट', 'मेजर बर्टन', 'कैप्टन शाॅवर्स', 'कैप्टन मेक मैसन ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(237, 1, 1, 1, 'बालाथल राजस्थान के ऐतिहासिक स्थानों में से एक है, जो कि ... में स्थित है।', NULL, 'सीकर', 'उदयपुर', 'भीलवाड़ा', 'हनुमानगढ़', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(238, 1, 1, 1, 'भूपसिंह का सम्बन्ध किस किसान आंदोलन से था ?', NULL, 'बेंगू किसान आंदोलन', 'बिजौलिया किसान आंदालेन', 'बंूदी किसान आंदोलन', 'बीकानेर किसान आंदोलन', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(239, 1, 1, 1, 'सर्वहितकारिणी सभा, चुरू की स्थापना किसने की ?', NULL, 'स्वामी गोपालदास', 'साधु सीतारामदास', 'हरविलास शारदा', 'रामनारायण चैधरी', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(240, 1, 1, 1, 'अर्जुनलाल सेठी ने 1905 में वर्धमान पाठशाला की स्थापना किस स्थान पर की थी ?', NULL, 'जयपुर', 'कोटा', 'करौली', 'उदयपुर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(241, 1, 1, 1, 'दिन-रात जिस कारण होते है, वह है-', NULL, 'भू-परिक्रमण', 'भू-परिभ्रमण', 'पृथ्वी का अक्षीय झुकाव', 'चंद्रमा का परिक्रमण', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(242, 1, 1, 1, 'विषुव या इक्विनाॅक्स वर्ष के दो काल, जब और रात बराबर होते हैं-', NULL, '21 मार्च और 23 सितंबर', '22 फरवरी', '15 अक्टूबर', '22 जुलाई और 22 दिसंबर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(243, 1, 1, 1, 'अंतर्राष्ट्रीय दिनांक रेखा खींची जाती है-', NULL, 'अफ्रीका से होकर', 'प्रशांत महासागर से होकर', 'एशिया से होकर', 'अटलांटिक महासागर से होकर', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(244, 1, 1, 1, 'वायुदाब सबसे कम होता है -', NULL, 'शीत ऋतु में', 'बंसत ऋतु में', 'शरद ऋतु में', 'ग्रीष्म ऋतु में ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(245, 1, 1, 1, 'निम्नलिखित में से कौन सा युग्म सुमेलित नहीं है ?', NULL, 'फाॅन-आल्प्स पर्वत', 'बोरा - पोलैंड़', 'मिस्ट्रल-राइन घाटी', 'खमसिन-मिस्र', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(246, 1, 1, 1, 'टाइफून नामक चक्रवात से निम्नलिखित में से कौन-सा क्षेत्र अधिक प्रभावित होता है ?', NULL, 'आॅस्ट्रेलिया', 'चीन सागर', 'एशिया', 'अमेरिका', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(247, 1, 1, 1, 'जिस अक्षांश पर वार्षिक तापांतर न्यूनतम होता है वह है -', NULL, 'भूमध्य रेखा', 'कर्क रेखा', 'मकर रेखा', 'उत्तरी ध्रुव वुत्त', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(248, 1, 1, 1, 'कहा जाता है कि ताजमहल मार्बल कैंसर से ग्रस्त है। यह मार्बल कैंसर क्या है ?', NULL, 'निकटस्थ उधोगों से ताजमहल में धुआँ भरना', 'ताजमहल के मार्बल में बंडी़ संख्या में कवक लगना', 'अम्लीय वर्षा जो मार्बल का क्षरण करती है', 'कज्जल कणों के कारण मार्बल का परलर होना', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(249, 1, 1, 1, 'सूर्य से आने वाली हानिकारक पराबैंगनी विकिरणों से होता है', NULL, 'फेफडें का कैंसर', 'मुख का कैंसर', 'त्वचा का कैंसर', 'यकृत का कैंसर', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(250, 1, 1, 1, 'सवाना का सर्वाधिक विस्तार है -', NULL, 'अफ्रीका में', 'एशिया में', 'दक्षिण अमेरिका में', 'उत्तर किसी से भी नही', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(251, 1, 1, 1, 'निम्नलिखित में से कौन सा शहर दिल्ली के सबसे समीप के देशांतर पर स्थित है ?', NULL, 'बंगलुरू', 'हैदराबाद', 'नागपुर', 'पुणे', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(252, 1, 1, 1, 'निम्नलिखित में से कौन सी पहाड़ियां राजस्थान में विंध्यन पर्वत श्रेणियों का विस्तार हैं ?', NULL, 'मुकंदरा पहाड़ियां', 'डोरा पर्वत', 'अलवर पर्वत', 'गिरवा पर्वत', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(253, 1, 1, 1, 'निम्नलिखित में से कौन सी एक कृत्रिम झील है ?', NULL, 'कोडाईकनाल', 'कोल्लेरू', 'नैनीताल', 'रेणुका', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(254, 1, 1, 1, 'निम्नलिखित में से कौन सा भौगोलिक रूप से ग्रेट निकोबार के सबसे निकट है ?', NULL, 'सुमात्रा', 'बोर्नियो', 'जावा', 'श्रीलंका', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(255, 1, 1, 1, 'कयाल क्या है ?', NULL, 'तराई मैदान', 'गंगा डेल्टा', 'दक्कन पठार की रेगुड़', 'केरल के लैगून', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(256, 1, 1, 1, 'काली क्रांति संबंधित है -', NULL, 'मत्स्य उत्पादन', 'कोयला उत्पादन', 'कच्चा तेल उत्पादन', 'सरसों उत्पादन', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(257, 1, 1, 1, 'निम्नलिखित में से कौन सा एक पठार माउण्ट आबू से लगा हुआ है ', NULL, 'भोराठ पठार', 'हाड़ौती पठार', 'उरिया पठार', 'उपरमाल', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(258, 1, 1, 1, 'राजस्थान का प्रमुख मक्का उत्पादक क्षेत्र है ?', NULL, 'उत्तरी भाग', 'दक्षिण भाग', 'पूर्वी भाग', 'पश्चिमी भाग', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(259, 1, 1, 1, 'राजस्थान में सर्वप्रथम किस उद्योग की स्थापना हुई थी ?', NULL, 'सीमेंट', 'चीनी', 'सूती-वस्त्र', 'काँच उद्योग ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(260, 1, 1, 1, 'निम्नलिखित में से महात्मा गांधी का भारत में पहला सत्याग्रह कौनसा था', NULL, 'अहमदाबाद', 'बारदोली', 'चम्पारन', 'वैयक्तिक', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(261, 1, 1, 1, 'शिक्षा में उद्देश्यों का वर्गीकरण दिया गया है-', NULL, 'जाॅन डेवी द्वारा', 'स्मिथ द्वारा', 'बी.एस.ब्लुम द्वारा', 'आई. के. डेविस द्वारा', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(262, 1, 1, 1, 'पाठ्यक्रम के क्षेत्र में शामिल है', NULL, 'विद्यालय की आंतरिक क्रियाएँ', 'विद्यालय की बाह्य क्रियाएँ', 'उपरोक्त दोनों', 'उपरोक्त में से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(263, 1, 1, 1, 'सामाजिक अध्ययन की पाठ्यपुस्तक, अनुरूप होनी चाहिए।', NULL, 'लेखक के', 'विद्यार्थी के', 'शिक्षक के', 'सरकार के', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(264, 1, 1, 1, 'सामाजिक अध्ययन के शिक्षक को बल देना चाहिए', NULL, 'विषय के संबंधित सूचना देने पर', 'विद्यार्थियों की सामाजिक मुद्दों के प्रति चिन्तन शक्ति के विकास पर', 'विद्यार्थियों को परीक्षा के लिए तैयार करने पर', 'विद्यार्थियों के भाषा विकास पर ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(265, 1, 1, 1, 'सामाजिक अध्ययन की शिक्षण में ऐतिहासिक स्थलों का भ्रमण उपयोगी है', NULL, 'विषय के प्रति रुचि उत्पन्न करने में।', 'प्रत्यक्ष सूचना प्रदान करने में।', 'विषयवस्तु की बेहतर समझ में।', 'उपरोक्त सभी।', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(266, 1, 1, 1, 'प्रायोजना एक उद्देश्यपूर्ण कार्य है जो संलग्नता के साथ सामाजिक वातावरण में किया जाता है। यह कथन है', NULL, 'ब्लूम का', 'क्रो एण्ड क्रो का', 'जॉन डेवी का', 'किलपैट्रिक का ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(267, 1, 1, 1, 'सामाजिक अध्ययन में निम्न में से कौनसी परीक्षा छात्रों के स्वतन्त्र चिंतन के मूल्यांकन का अवसर प्रदान करता है? ', NULL, 'वस्तुनिष्ठ प्रकार की परीक्षा', 'निबंधात्मक प्रकार की परीक्षा', 'लघु-उत्तरात्मक प्रकार की परीक्षा', 'अति-लघुत्तरात्मक प्रकार की परीक्षा', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(268, 1, 1, 1, '<p>बी.एस. ब्लूम ने ज्ञानात्मक उद्देश्य का वर्गीकरण कितने भागो में किया<br></p>', NULL, '4', '5', '6', '7', NULL, NULL, NULL, NULL, NULL, 'C', '<p>1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; A</p><p>2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; B</p><p>3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; C</p><p>4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; D</p>', NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(269, 1, 1, 1, 'सामाजिक अध्ययन में मानव का मानव से तथा मानव का उसके वातावरण से संबंधित पारस्परिक संबंधो का अध्ययन किया जाता है कथन है', NULL, 'जीरो लीमेक', 'माइकेलिस', 'आर.टेगौर', 'रामानुज ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(270, 1, 1, 1, 'सामाजिक अध्ययन विषय से संबंधित असत्य कथन है', NULL, 'यह पक्षपातपूर्ण दृष्टिकोण विकसित करता है', 'यह मानवीय विचार विकसित करता है', 'यह वातावरण के प्रति जागरूक बनती है', 'यह ऐतिहासिक प्रतिको के प्रति सम्मान उत्पन्न करता है', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-11 00:23:44', '2022-07-11 00:23:44'),
(271, 2, 1, 1, 'व्यक्तिगत विभिन्नता का सम्मान करते वक्त, एक शिक्षक से क्या आशा नहीं की जा सकती है?', NULL, 'योग्यतानुसार समूह में विभक्त करना।', 'पाठ्यचर्या को समायोजित करना।', 'बच्चों को स्वाध्याय के लिए छोड़ देना।', 'शिक्षण विधियों को समायोजित करना।', NULL, NULL, NULL, NULL, NULL, 'C', '<p>okk test</p>', NULL, '<p>https://www.youtube.com/watch?v=gD_sRxW6Rig&amp;t=2013s</p>', NULL, '0', 0.00, 0.00, '2022-07-12 04:07:27', '2022-07-12 04:07:27'),
(272, 2, 1, 1, 'निम्न में से कौन से स्वलीनता के लक्षण हैं?', NULL, 'कमजोर सामाजिक व्यवहार ।', 'रूढिबद्ध व्यवहार', 'कमजोर संप्रेषण', 'उपरोक्त सभी ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-12 04:07:27', '2022-07-12 04:07:27'),
(273, 2, 1, 1, 'मात्रात्मक व्यक्तिगत क्षमता रूपी प्रक्रिया को कहा जाता है ', NULL, 'वृद्धि(ग्रोथ)संतुलन', '(इक्किलिब्रियम)', 'परिपक्वता (मैचुरेशन)', 'विकास(डेवलपमेंट)', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-12 04:07:27', '2022-07-12 04:07:27'),
(274, 2, 1, 1, 'किशोरावस्था में एक बच्चे के उचित विकास हेतु माता-पिता तथा शिक्षक निम्न कार्य कर सकते हैं- (निम्न में से कौनसा)', NULL, 'लिंग शिक्षा का उचित ज्ञान देना।', 'उचित वातावरण प्रदान करना।', 'परामर्श तथा मार्गदर्शन सेवा की व्यवस्था करना (यदि आवश्यक हो)', 'उपरोक्त सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-12 04:07:27', '2022-07-12 04:07:27'),
(275, 2, 1, 1, 'अत्यन्त निपुणतापूर्ण अधिगम पद्धति जिस पर बान्डुरा तथा वॉल्टर ने बल दिया वे हैं', NULL, 'पुरस्कार तथा सजा', 'निरीक्षणयुक्त अधिगम या अनुकरण', 'स्व-वास्तविकीकरण', 'उपरोक्त में से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-12 04:07:27', '2022-07-12 04:07:27'),
(276, 2, 1, 1, 'एक शिक्षक अपनी कक्षा में थार्नडाइक के सिद्धांत को लागू करने जा रहा है। निम्नलिखित में से क्या शिक्षक को लागू नहीं करना चाहिए?', NULL, 'बच्चों को तैयार किया जाना चाहिए तथा उन्हें कार्य सीखने हेतु सही रूप से प्रेरित किया जाना चाहिए।', 'बच्चों को नई चीजें सीखने हेतु खोज विधि के लिए उन्मुख किया जाना चाहिए।', 'उचित अभ्यास तथा ड्रिल कार्य किया जाना चाहिए।', 'जहां तक हो शिक्षक को पुरस्कार का उपयोग सही रूप में करने की कोशिश करनी चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-12 04:07:27', '2022-07-12 04:07:27'),
(277, 2, 1, 1, 'शिक्षा के अधिकार अधिनियम के अंतर्गत निम्न में से क्या शिक्षक के कार्य नहीं माने गए हैं?', NULL, 'एक निश्चित समय में पाठ्यक्रम को पूरा करना।', 'शिक्षक को खुद को व्यक्तिगत ट्यूशन में व्यस्त रखना चाहिए।', 'विद्यालय के लिए नियमितता बनाए रखना चाहिए तथा समय का पाबंद होना चाहिए।', 'हर बालक के अधिगम क्षमता को समझकर उसकी जरूरत के अनुसार उन्हें अतिरिक्त अनुबोध प्रदान करना चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-12 04:07:27', '2022-07-12 04:07:27'),
(278, 2, 1, 1, 'फ्रॉयड की अनुशंसित व्यक्तित्व की बनावट के अनुसार, निम्न में से कौन मूलभूत तीव्र इच्छा के उठने के साथ ही तुरंत तथा अनैच्छिक रूप से (सभी नियम तथा जीवन की सत्यता तथा नैतिकता की अवहेलना करते हुए) संतुष्ट करता है?', NULL, 'अहम् तथा पराअह्म दोनों', 'इदं', 'अहम्', 'पराअहम्', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-12 04:07:27', '2022-07-12 04:07:27'),
(279, 2, 1, 1, 'एक पांच वर्ष के बच्चे में दूसरों के प्रति प्रतिक्रिया तथा संप्रेषण में कमी है तथा असामान्य व्यवहार को बारम्बार करता है। इस तरह के लक्षण किस चीज का प्रतीक है?', NULL, 'श्रवण बाधिता', 'शैक्षिक पिछड़ापन', 'शैशव स्वलीनता', 'अधिगम अक्षमता ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-12 04:07:27', '2022-07-12 04:07:27'),
(280, 2, 1, 1, 'किशोरावस्था की ऐसी आदत जिसमें खुद को भूखे रखने की प्रवृत्ति होती है तथा यह ज्यादा बालिकाओं में पाई जाती है। ऐसी अवस्था को कहा जाता है', NULL, 'एनोरेक्सिया नरवोसा', 'डेलीरियम ट्रेमेन्स', 'स्वलीनता', 'डाउन सिण्ड्रोम ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-12 04:07:27', '2022-07-12 04:07:27'),
(541, 4, 1, 1, 'व्यक्तिगत विभिन्नता का सम्मान करते वक्त, एक शिक्षक से क्या आशा नहीं की जा सकती है?', NULL, 'योग्यतानुसार समूह में विभक्त करना।', 'पाठ्यचर्या को समायोजित करना।', 'बच्चों को स्वाध्याय के लिए छोड़ देना।', 'शिक्षण विधियों को समायोजित करना।', NULL, NULL, NULL, NULL, NULL, 'C', '<p>okk test</p>', NULL, '<p>https://www.youtube.com/watch?v=gD_sRxW6Rig&amp;t=2013s</p>', '', '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-20 06:03:42'),
(542, 4, 1, 1, 'निम्न में से कौन से स्वलीनता के लक्षण हैं?', NULL, 'कमजोर सामाजिक व्यवहार ।', 'रूढिबद्ध व्यवहार', 'कमजोर संप्रेषण', 'उपरोक्त सभी ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(543, 4, 1, 1, 'मात्रात्मक व्यक्तिगत क्षमता रूपी प्रक्रिया को कहा जाता है ', NULL, 'वृद्धि(ग्रोथ)संतुलन', '(इक्किलिब्रियम)', 'परिपक्वता (मैचुरेशन)', 'विकास(डेवलपमेंट)', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(544, 4, 1, 1, 'किशोरावस्था में एक बच्चे के उचित विकास हेतु माता-पिता तथा शिक्षक निम्न कार्य कर सकते हैं- (निम्न में से कौनसा)', NULL, 'लिंग शिक्षा का उचित ज्ञान देना।', 'उचित वातावरण प्रदान करना।', 'परामर्श तथा मार्गदर्शन सेवा की व्यवस्था करना (यदि आवश्यक हो)', 'उपरोक्त सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(545, 4, 1, 1, 'अत्यन्त निपुणतापूर्ण अधिगम पद्धति जिस पर बान्डुरा तथा वॉल्टर ने बल दिया वे हैं', NULL, 'पुरस्कार तथा सजा', 'निरीक्षणयुक्त अधिगम या अनुकरण', 'स्व-वास्तविकीकरण', 'उपरोक्त में से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(546, 4, 1, 1, 'एक शिक्षक अपनी कक्षा में थार्नडाइक के सिद्धांत को लागू करने जा रहा है। निम्नलिखित में से क्या शिक्षक को लागू नहीं करना चाहिए?', NULL, 'बच्चों को तैयार किया जाना चाहिए तथा उन्हें कार्य सीखने हेतु सही रूप से प्रेरित किया जाना चाहिए।', 'बच्चों को नई चीजें सीखने हेतु खोज विधि के लिए उन्मुख किया जाना चाहिए।', 'उचित अभ्यास तथा ड्रिल कार्य किया जाना चाहिए।', 'जहां तक हो शिक्षक को पुरस्कार का उपयोग सही रूप में करने की कोशिश करनी चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(547, 4, 1, 1, 'शिक्षा के अधिकार अधिनियम के अंतर्गत निम्न में से क्या शिक्षक के कार्य नहीं माने गए हैं?', NULL, 'एक निश्चित समय में पाठ्यक्रम को पूरा करना।', 'शिक्षक को खुद को व्यक्तिगत ट्यूशन में व्यस्त रखना चाहिए।', 'विद्यालय के लिए नियमितता बनाए रखना चाहिए तथा समय का पाबंद होना चाहिए।', 'हर बालक के अधिगम क्षमता को समझकर उसकी जरूरत के अनुसार उन्हें अतिरिक्त अनुबोध प्रदान करना चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(548, 4, 1, 1, 'फ्रॉयड की अनुशंसित व्यक्तित्व की बनावट के अनुसार, निम्न में से कौन मूलभूत तीव्र इच्छा के उठने के साथ ही तुरंत तथा अनैच्छिक रूप से (सभी नियम तथा जीवन की सत्यता तथा नैतिकता की अवहेलना करते हुए) संतुष्ट करता है?', NULL, 'अहम् तथा पराअह्म दोनों', 'इदं', 'अहम्', 'पराअहम्', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(549, 4, 1, 1, 'एक पांच वर्ष के बच्चे में दूसरों के प्रति प्रतिक्रिया तथा संप्रेषण में कमी है तथा असामान्य व्यवहार को बारम्बार करता है। इस तरह के लक्षण किस चीज का प्रतीक है?', NULL, 'श्रवण बाधिता', 'शैक्षिक पिछड़ापन', 'शैशव स्वलीनता', 'अधिगम अक्षमता ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(551, 4, 1, 1, 'निम्न में से कौनसी संस्था प्रशिक्षण नियमावली तथा कार्यक्रमों का विकलांगता पुनर्वास के क्षेत्र में भारत में क्रियान्वयन करती है?', NULL, 'राष्ट्रीय अध्यापक शिक्षा परिषद', 'राष्ट्रीय शैक्षिक योजना एवं प्रशासन विश्वविद्यालय', 'राष्ट्रीय शैक्षिक अनुसंधान एवं प्रशिक्षण परिषद', 'भारतीय पुनर्वास परिषद', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(552, 4, 1, 1, '“एक विशेष स्तर पर बच्चे मौलिक तर्क का इस्तेमाल करना शुरू कर देते हैं तथा सभी प्रकार के प्रश्नों का जवाब जानना चाहते हैं।’’ पियाजे ने इसे अंतज्ञनि कहा है। पियाजे के अनुसार, निम्न में से कौन से चरण का यह अर्थ है', NULL, 'साकार संचालन', 'पूर्व-संचालन', 'औपचारिक संचालन', 'इनमें से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(553, 4, 1, 1, 'ज्यादातर बच्चे प्रथम सार्थक शब्द इस उम्र में बोलते हैं', NULL, '3 महीने में', '6 महीने में', '35-40 महीने में', '10-13 महीने में ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(554, 4, 1, 1, '‘बहु-बुद्धि सिद्धांत’ के जनक कौन हैं?', NULL, 'वाइगोटस्की', 'अल्फ्रेड बिनेट', 'गार्डनर', 'बूनर', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(555, 4, 1, 1, 'निम्न में से किसने सामाजिक रचनावाद दर्शन पर अत्यधिक बल दिया है?', NULL, 'वाइगोटस्की', 'पियाजे', 'डेवी', 'कोलबर्ग', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(556, 4, 1, 1, 'श्रवण में विकृति की माप की जाती है', NULL, 'हर्ट्स में .', 'डेसीबल में', 'वॉट में', 'पौंड में', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(557, 4, 1, 1, 'निम्नलिखित में से कौन सूक्ष्म चलन कौशल का उदाहरण है?', NULL, 'चढ़ना', 'कूदना', 'दौड़ना', 'लिखना', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(558, 4, 1, 1, '‘स्कीमा’ कामतलब है', NULL, 'खण्डन क्रिया विधि', 'अधिगम विधि', 'लंबे समय के याद्दाश्त में सूचना के संगठित पैकेट्स का एकत्रित होना।', 'शारीरिक प्रतिवाद क्रियाविधि', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(559, 4, 1, 1, 'आनुवंशिकता की इकाई है', NULL, 'क्रोमोसोम', 'निषेचित अंडा', 'जीन', 'युग्मजन', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(560, 4, 1, 1, 'मेरडिथ के अध्ययन के आधार पर कहा जा सकता है कि सामान्य रूप से उन परिवारों के बालक ....... होते हैं, जो सामाजिक स्तर से ऊँचे होते हैं।', NULL, 'कम स्वास्थ एवं विकसित', 'अधिक स्वस्थ एवं विकसित', 'अधिक स्वस्थ एवं कम विकसित', 'स्वस्थ नहीं पर विकसित', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(561, 4, 1, 1, 'मूर्रे ने एक परीक्षण की रचना करके इतिहास रच दिया, वह क्या है?', NULL, 'स्याही धब्बा परीक्षण', 'वाक्य पूर्ति परीक्षण', 'विषय आत्मबोधन परीक्षण', 'मूल्यांकन मापनी ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(562, 4, 1, 1, 'बुद्धि के त्रिआयामी सिद्धांत के अनुसार बुद्धि के कारकों की संख्या है', NULL, '90', '110', '135', '120', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(563, 4, 1, 1, 'निम्न में से कौनसा तनाव को कम करने का अप्रत्यक्ष ढंग है?', NULL, 'विश्लेषण और निर्णय', 'रुकावट को दूर करना', 'दूसरे लक्ष्यों का प्रतिस्थापन', 'उदात्तीकरण', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(564, 4, 1, 1, 'सशक्त अभिप्रेरणा सीखने का प्रभावशाली घटक है', NULL, 'इससे बालक स्वस्थ रहता है', 'ध्यान करता है', 'शीघ्र सीखता है', 'प्रसन्न रहता है ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(565, 4, 1, 1, 'हस्तशिल्प की शिक्षा दी जानी चाहिए', NULL, 'मंदबुद्धि बालक को', 'प्रतिभाशाली बालक का', 'सामान्य बालक को', 'प्रखर बुद्धि बालक को ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(566, 4, 1, 1, 'छात्रों में चोरी करने की आदत को कैसे दूर किया जा सकता है?', NULL, 'बालकों को पारितोषिक देकर', 'ताड़ना देकर', 'सकारात्मक उदाहरण देकर', 'सजा देकर', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(567, 4, 1, 1, 'प्रतिभावान बालकों की पहचान करने के लिए हमें सबसे अधिक महत्व-', NULL, 'अभिभावकों के मत को देना चाहिए', 'वस्तुनिष्ठ परीक्षणों के परिणाम को देना चाहिए', 'शिक्षक के निर्णय को देना चाहिए', 'समाज के विचारों को देना चाहिए', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(568, 4, 1, 1, 'छब्थ् 2005 में कला शिक्षा को विद्यालय में जोड़ने का उद्देश्य है', NULL, 'सांस्कृतिक विरासत की प्रशंसा करना', 'छात्रों के व्यक्तित्व और मानसिक स्वास्थ्य को विकसित करना', 'केवल (1) सही है', '(1) और (2) दोनों सही हैं', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(569, 4, 1, 1, 'शैशवावस्था की विशेषता नही है', NULL, 'शारीरिक विकास की तीव्रता', 'दूसरो पर निर्भरता', 'नैतिकता का होना', 'मानसिक विकास में तीव्रता ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(570, 4, 1, 1, 'जब बालक की परीक्षा द्वारा मापी हुई योग्यता के सही मूल्यांकन में स्थायित्व होता है, तब उस परीक्षा को ......... कहते हैं', NULL, 'वैधता', 'विश्वसनीयता', 'वस्तुनिष्ठता', 'कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(571, 4, 1, 1, 'हिंदी वर्णमाला में मूल स्वर कितने हैं?', NULL, 'दो', 'चार', 'छः', 'सात', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(572, 4, 1, 1, 'वर्णमाला में संयुक्त स्वर कौन-से हैं?', NULL, 'अ, आ', 'इ, ई', 'ऐ, औ', 'ज, झ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(573, 4, 1, 1, 'अन्याय:', NULL, 'अभि + आन्य', 'अन्य + अन्य', 'अन्य + नय', 'अ + नि + आय', NULL, NULL, NULL, NULL, NULL, 'D', 'निर्देशः निम्नलिखित प्रश्नों में प्रत्येक शब्द का संधि विच्छेद चार-चार विकल्पों में किया गया है। इनमें से सही संधि विच्छेद वाले विकल्प का चयन कीजिए-  (33-35)', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(574, 4, 1, 1, 'देव्यर्पण में संधि कौनसी है', NULL, 'दीर्घ संधि', 'गुण संधि', 'वृद्धि संधि', 'यण संधि', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(575, 4, 1, 1, 'शीत+ऋतु संधि युक्त किजिए', NULL, 'शीतर्तु', 'शीतृतु', 'शीतऋतु', 'उपर्युक्त सभी', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(576, 4, 1, 1, 'इकतीसः', NULL, 'तत्पुरुष', 'द्विगु', 'द्वन्द्व', 'कर्मधारय', NULL, NULL, NULL, NULL, NULL, 'C', 'निर्देश: निम्नलिखित प्रत्येक प्रश्न में सामासिक शब्द दिया गया है उसके नीचे उसमें प्रयुक्त समास के लिए चार-चार विकल्प दिए गए हैं, इनमें सर्वाधिक सही समास का चयन कीजिए।(36-38)', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(577, 4, 1, 1, 'लूला-लंगड़ा', NULL, 'तत्पुरुष', 'द्वन्द्व', 'बहुव्रीहि', 'अव्ययीभाव', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(578, 4, 1, 1, 'निम्नलिखित में से कौनसा शब्द द्वन्द्व समास का उदाहरण नहीं है-', NULL, 'पाप पुण्य', 'यथाशक्ति', 'राजा-प्रजा', 'जीवन-मरण', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(579, 4, 1, 1, 'अंकः', NULL, 'गोद', 'भाग्य', 'संख्या', 'दैनंदिनी', NULL, NULL, NULL, NULL, NULL, 'D', 'निर्देश: निम्नलिखित प्रश्नों में अनेकार्थक शब्दों के चार-चार विकल्प दिए गए हैं, इनमें से कोई एक विकल्प गलत है। गलत विकल्प का चयन कीजिए।', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(580, 4, 1, 1, 'हरिण', NULL, 'विहग', 'खग', 'हंस', 'मृग', NULL, NULL, NULL, NULL, NULL, 'C', 'निर्देश: निम्नलिखित प्रश्नों प्रत्येक शब्द के लिए उसके नीचे दिए गए विकल्पों में से पर्यायवाची शब्द का चयन कीजिए।(40-41)', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(581, 4, 1, 1, 'हाटक', NULL, 'पुत्र', 'मृत्यु', 'सोना', 'घोड़ा', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(582, 4, 1, 1, 'भारतीय लोग पाश्चात्य सभ्यता में रंगते जा रहे हैं', NULL, 'दाक्षणात्य', 'पौर्वात्य', 'आमात्य', 'प्रतीच्य', NULL, NULL, NULL, NULL, NULL, 'B', 'रेखांकित शब्द में विलोम है', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(583, 4, 1, 1, 'निर्देश: इनमें एक ही विकल्प तत्सम शब्द वाला है। आपको तत्सम शब्द का चयन करना है।', NULL, 'कउड़ी', 'कौड़ी', 'कपर्दिका', 'कदर्पिका', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(584, 4, 1, 1, 'जिसके सिर पर चंद्रमा है वाक्य में एक शब्द उतर दीजिए', NULL, 'चंद्रशेखर', 'चंद्रेश', 'चंद्रचूड़', 'चंद्रप्रभा', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(585, 4, 1, 1, 'व्याकरण का ज्ञान रखने वाला:', NULL, 'वैयाकरण', 'व्याख्याता', 'पंडित', 'विद्वान', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(586, 4, 1, 1, 'उपचारात्मक शिक्षण वह विधि है जो', NULL, 'समस्याओं के कारणों की पहचान मुश्किल करें', 'समस्याओं को उलझाकर प्रस्तुत करें', 'समस्याओं को दूर करने में सफलता प्रदान करें', 'सूमस्याओं का भाषिक नियमों पर ज्ञान प्रदान करें ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(587, 4, 1, 1, 'निम्न में कौन सा शिक्षण सूत्र नहीं है ?', NULL, 'मूर्त से अमूर्त', 'ज्ञात से अज्ञात', 'विश्लेषण से संश्लेषण', 'अनुकरण से अभ्यास', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(588, 4, 1, 1, 'डाॅ. मेरिया माॅण्टेरीया निवासी थी', NULL, 'इटली', 'फ्रंास', 'अमेरिका', 'भारत', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(589, 4, 1, 1, 'मातृभाषा शिक्षण का उद्वेश्य है', NULL, 'ज्ञानात्मक उद्वेश्य', 'कौशलात्मक उद्वेश्य', 'सृजनात्मक उद्वेश्य', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(590, 4, 1, 1, 'भाषा कौशल का स्वरूप है', NULL, 'बोलना-सुनना', 'लिखना-पढ़ना', '1 एवं 2 दोनों', 'इनमें से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(591, 4, 1, 1, 'एक छात्र अपने पिता के गलत कर्मों के कारण कक्षा में हीन भावना से ग्रस्त है । कक्षा में आप', NULL, 'उससे उसके पिता के समाचार पूछते रहेंगे', 'उसे गलत कार्यों से अलग रहने की प्ररेणा देंगे', 'सामान्य छात्रों को उससे अलग रहने के लिए कहेंगे', 'उसे उसके हाल पर छोड़ दंेगे', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(592, 4, 1, 1, 'कविता का यथार्थ मूल्यांकन कैसे किया जाता है ?', NULL, 'सरल प्रणाली द्वारा', 'गुप्त प्रणाली द्वारा', 'समीक्षा प्रणाली द्वारा', 'छोटी प्रणाली द्वारा', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(593, 4, 1, 1, 'व्याकरण भाषा निम्न में से किसका साधन है ?', NULL, 'त्रुटि का', 'शुद्वता का', 'बोलने का', 'इसमें से कोई नहीं ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(594, 4, 1, 1, 'मानसिक विकास के लिए भाषा उतनी ही आवश्कता है जितना की शिशु के शारीरिक विकास के लिए माँ का दूध यह निम्न में से किसका कथन है ?', NULL, 'महात्मा गाँधी', 'जीन पियाजे', 'डाॅ.सर्वपली राधाकृष्णन', 'स्किनर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(595, 4, 1, 1, 'निम्न में से क्या भाषा शिक्षण में सीखने की एक  विशेषता नहीं है ?', NULL, 'भाषा के ज्ञान में विकास करता है', 'भाषा शिक्षण हेतु सुलभ वातावरण तैयार करता है', 'भाषा शिक्षण के अन्तर्गत अयक्रिय करता है', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(596, 4, 1, 1, 'बालोद्यान शिक्षण विधि के जनक है ?', NULL, 'जाॅन डीवी', 'किलपैट्रिक', 'माफण्टेसरी', 'फॅाबेल', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(597, 4, 1, 1, 'सभी छात्रों में सीखने की क्षमता होती है', NULL, 'भिन्न भिन्न', 'समान', '1 एवं 2 दोनों', 'दोनों मे से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(598, 4, 1, 1, 'भाषा के मुख्य तत्व होते है?', NULL, 'ध्वनि', 'संकेत', 'चिन्ह', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(599, 4, 1, 1, 'निम्न में से कौन सा शिक्षण सिद्वान्त है ?', NULL, 'चयन का सिद्वान्त', 'रूचि का सिद्वान्त', 'ये सभी', NULL, NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(600, 4, 1, 1, 'आपकी कक्षा के बच्चे में अनुशासनहीनता की भावना दिन प्रतिदिन बढ़ती जा रही है। इसके लिए आप निम्न में से क्या उपचार करेंगे?', NULL, 'अनुशासनहीनता करने वाले छात्रों को कक्षा से निकाल देंगे', 'शिक्षण कार्य को रोचक बनाएँगे जिससे अनुशासहीनता स्वतः ही समाप्त हो जाएगी', 'अनुशासनहीनता करने वाले छात्रों के अभिभावकों को सूचित करेंगे', 'अनुशासनहीनता छात्रों को विशिष्ट सुविधाएँ प्रदान करके उन्हें प्रसन्न रखेंगे', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08');
INSERT INTO `questions` (`id`, `testId`, `subjectId`, `courseId`, `question`, `qimage`, `optionA`, `optionB`, `optionC`, `optionD`, `queImage`, `aImage`, `bImage`, `cImage`, `dImage`, `answer`, `description`, `descriptionimage`, `explanations`, `explanations_video`, `language`, `marks`, `negative`, `created_at`, `updated_at`) VALUES
(601, 4, 1, 1, 'What do many Indians imagine?', NULL, 'That India is great', 'That in many ways India is the greatest country in the world', 'That India is greater than England', 'That India is the greatest country in South Asia', NULL, NULL, NULL, NULL, NULL, 'B', 'In every country people imagine that they are the best and the cleverest and the others are not so good as they are. The Englishman thinks that he and his country are the best; the Frenchman is very proud of France and everything French. The Germans and Italians think no less of their countries and many Indians imagine that Indian in many ways is the greatest country in the world. This is wrong. Everybody wants to think well of himself and his country. But really there is no person who has not some good and some bad qualities. In the same way, there is no country which is partly good and partly bad. We must take the good wherever we find it and try to remove the bad wherever it may be.          We are of course, most concerned with our own country, India. Unhappily, it is in a bad way today. Most of our people are poor and unhappy. They have no joy of their lives. We have to find out how we can make them happier. We have to see what is good in our ways and customs and try to keep it and whatever is bad we have to throw away. If we find anything good in other countries, we should certainly take it.   (31-35)', NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(602, 4, 1, 1, 'In what respect is India in a bad way today?', NULL, 'That some of the people in India are rich and happy', 'That all of the people in India are happy and hopeful', 'That most of the people in India are poor and unhappy', 'That most of the people are rich but unhappy ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(603, 4, 1, 1, 'What should we throw away?', NULL, 'That whatever is good in our old traditions', 'That whatever existed in our old beliefs', 'That whatever we see good in other countriesThat whatever is bad in our customs and tradition', 'That whatever is bad in our customs and tradition', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(604, 4, 1, 1, 'What should be our attitude towards other countries?', NULL, 'We should neglect what Frenchman are proud of.', 'If there is anything good in other countries, we should certainly take it.', 'We should refuse anything German people like to do.', 'We should not readily refuse whatever good is there in other countries', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(605, 4, 1, 1, 'What do people think in every country?', NULL, 'That they are not as good and as clever as others.', 'That they are the best and the cleverest people in the world.', 'The people of other countries are not very clever and good.', 'That most of the men of their country are rich and clever.', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(606, 4, 1, 1, 'Which is not synonym of the given word? Irksome', NULL, 'annoying', 'soothing', 'pleasing', 'facile', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(607, 4, 1, 1, 'Synonym of the word \'Cajole\'', NULL, 'Coax', 'Evince', 'Congratulate', 'Clarify', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(608, 4, 1, 1, 'Direction : In the following questions a word has been written in four different ways. Out of which only one is correctly spelt. Find the correctly spelt word.', NULL, 'gaurantee', 'garuntee', 'guarantee', 'guaruntee', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(609, 4, 1, 1, 'Solemn religious acts :', NULL, 'Demonstrations', 'Celebrations', 'Rites', 'Functions ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(610, 4, 1, 1, 'That which cannot be averted', NULL, 'Inevitable', 'Irreparable', 'Incomparable', 'Indisputable ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(611, 4, 1, 1, 'Committing murder in revenge :', NULL, 'Massacre', 'Vendetta', 'Homicide', 'Regicide', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(612, 4, 1, 1, 'Phonetic aspect of language deals with', NULL, 'writing', 'reading', 'sound,spelling and pronounciation', 'understanding ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(613, 4, 1, 1, 'Diphthongs are', NULL, 'consonant sounds', 'double consonant sounds', 'vowel sounds', 'double vowel sounds ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(614, 4, 1, 1, 'Diphthongs are also known as', NULL, 'semi-vowels', 'pure vowels', 'vowels with weak sound', 'glide vowels', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(615, 4, 1, 1, 'The correct transcription of the word \'English\' is ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(616, 4, 1, 1, 'There are 44 sounds in English. Out of these, how many sounds are vowels and how many are consonants respectively?', NULL, '20, 24', '5, 39', '22, 22', '10, 34', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(617, 4, 1, 1, 'Which of the following does not have /i:/ sound?', NULL, 'Week', 'Bean', 'Deep', 'Pretty', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(618, 4, 1, 1, 'Which approach lays a lot of emphasis on habit formation?', NULL, 'Eclectic approach', 'Cognitive approach', 'Communicative approach', 'Behaviouristic approach', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(619, 4, 1, 1, '...deals with the level of meaning in language.', NULL, 'Colloquial', 'Syntax', 'Semantics', 'Collocation ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(620, 4, 1, 1, 'When a child learns a language naturally, without much practice, it is called', NULL, 'language generalization', 'language adaption', 'language learning', 'language acquisition', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(621, 4, 1, 1, 'When reading, to \'decode\' means to', NULL, 'an action used in ICT', 'solving a complex puzzle', 'to analyse and understand', 'understanding a foreign language', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(622, 4, 1, 1, 'Remedial teaching involves', NULL, 'teaching and testing', 'testing continuously', 'teaching, testing and reteaching', 'teaching difficult topics', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(623, 4, 1, 1, 'Change the voice of following sen', NULL, 'tence: The teacher was chased.', 'Someone chased the teacher.', 'Someone had chased the teacher.', 'Somebody has chased the teacher.', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(624, 4, 1, 1, 'Identify the correct reported form of the given sentence. She said, “How ugly I look in this dress !\"', NULL, 'She said that how ugly she was looking in that dress.', 'She exclaimed how ugly she looked in that dress.', 'She expressed how ugly she looked in that dress.', 'She exclaimed that she looked very ugly in that dress.', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(625, 4, 1, 1, 'A number of plays were written   ............Shakespeare.', NULL, 'from', 'of', 'in', 'by', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(626, 4, 1, 1, 'His father died ..........cancer.', NULL, 'from', 'of', 'with', 'off', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(627, 4, 1, 1, 'An example of linking adverbials is', NULL, 'these', 'so', 'your', 'the', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(628, 4, 1, 1, 'This is the cat.... I saw.', NULL, 'who', 'that', 'whom', 'what', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(629, 4, 1, 1, 'Choose the word that can join the two  sentences : She is pretty. She is proud.', NULL, 'but', 'because', 'while', 'not', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(630, 4, 1, 1, 'Which is the abjective in the given sentence?The tall girl met a boy.', NULL, 'tall', 'girl', 'met', 'boy', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(631, 4, 1, 1, 'लिपिज्ञानस्य सम्बद्धः कौशलस्य भवति?', NULL, 'श्रवण, भाषण', 'भाषण, कौशल', 'पठन, भाषण', 'पठन, लेखन', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(632, 4, 1, 1, 'आचार्य पिङ्गलस्य छन्दोग्रन्थः अस्ति?', NULL, 'छन्दोमञ्जरी', 'छन्दिका', 'छन्दः सूत्रम्', 'न कोऽपि', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(633, 4, 1, 1, 'अल् प्रत्याहारे कति वर्णाः सन्ति?', NULL, '40', '41', '42', '43', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(634, 4, 1, 1, 'सेव+शानच्', NULL, 'सेवा', 'सेवकः', 'सेवायमानः', 'सेवमानः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(635, 4, 1, 1, 'अन्तरा-अन्तरेण इति योगे कस्या विभक्तेर्विधानं प्रभवति?', NULL, 'चतुर्थ्याः', 'पंचम्याः', 'तृतीयायाः', 'द्वितीयायाः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(636, 4, 1, 1, 'जुगुप्साविराम प्रमादार्थानामुपसंख्यानम् इत्यनेन का विभक्तिः?', NULL, 'द्वितीयाः', 'सप्तमी', 'पंचमी', 'षष्ठी', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(637, 4, 1, 1, 'पञ्चकाध्ययनं कस्मिन् विधौ भवति?', NULL, 'मौखिकविधौ', 'पारायणविधौ', 'वादविवादविधौ', 'प्रश्नोत्तरविधौ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(638, 4, 1, 1, 'अनुनासिक वर्णानां कति संख्या?', NULL, '2', '3', '5', '4', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(639, 4, 1, 1, 'माहेश्वराणि इत्यत्र कः प्रत्ययः', NULL, 'अण्', 'अक्', 'कप्', 'नूर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(640, 4, 1, 1, 'बाह्यप्रयत्नाः सन्ति', NULL, 'विवारः, संवारः, श्वासः, स्वरितः', 'घोषः, अघोषः, अल्पप्राणः', 'नादः, महाप्राणः, उदात्तः, अनुदात्तः', 'सर्वे ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(641, 4, 1, 1, 'स्पर्शवर्णाः के सन्ति-', NULL, 'कवर्गतः मवर्गपर्यन्तम्', 'कवर्गतः चवर्गपर्यन्तम्', 'कवर्गतः तवर्गपर्यन्तम्', 'कवर्गतः पवर्गपर्यन्तम्', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(642, 4, 1, 1, 'वृद्धिसंज्ञक वर्णः अस्ति-', NULL, 'आ', 'इ', 'अ', 'ओ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(643, 4, 1, 1, 'वरदराजस्य रचना नास्ति-', NULL, 'लघुसिद्धान्त कौमुदी', 'मध्यसिद्धान्त कौमुदी', 'मनोरमाकुचमर्दनम', 'सारकौमुदी ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(644, 4, 1, 1, 'माहेश्वर सूत्रेषु कस्य व्यंजनवर्णस्य द्विवारं प्रयोगःभवतिः', NULL, 'च', 'ट', 'ह', 'ल', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(645, 4, 1, 1, 'सर्वेषां स्वरव्यंजनश्च बोधक प्रत्याहारे ग्रहणं भवति?', NULL, 'अच्', 'अल्', 'अण्', 'शल्', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(646, 4, 1, 1, 'वर्णानामदर्शने का भवति', NULL, 'अभावः', 'संहिता', 'लोपः', 'संयोगः', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(647, 4, 1, 1, 'अष्टौ च विशंति च-अष्टाविंशति, अर्थश्च धर्मश्च-अर्थधर्मों, हरिश्च हरश्च-हरिहरौ अत्र कः समासः?', NULL, 'द्वन्द्वसमासः', 'तत्पुरुषसमासः', 'कर्मधारयसमासः', 'बहुब्रीहिसमासः', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(648, 4, 1, 1, 'पाणिनि अनुसारेण वर्णानाम् उच्चारणाय कति स्थानानि सन्ति?', NULL, 'सप्त', 'त्रयोदश', 'दश', 'अष्ट', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(649, 4, 1, 1, 'ङकारस्य उच्चारण स्थानम् अस्ति', NULL, 'कण्ठः नासिका च', 'तालु नासिका च', 'ओष्ठौ नासिका च', 'मूर्धा जिह्वामूलम् च ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(650, 4, 1, 1, 'सम्प्रसारणेन् ‘‘य् व्‘‘ इत्ययोः के भवतः', NULL, 'इ, उ', 'उ, इ', 'अ, उ', 'ऋ, लु', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(651, 4, 1, 1, 'द्वियमुनम् इत्यत्र कः समासः?', NULL, 'द्विगुः', 'कर्मधारयः', 'अव्यययीभावः', 'तत्पुरुषः', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(652, 4, 1, 1, 'गव्यम् पदस्य संधिविच्छेदोऽस्ति', NULL, 'ग+ यम्', 'गो+ यम्', 'गो+ अम्', 'ग+ वयम्', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(653, 4, 1, 1, 'ससजुषोरुः सूत्रमस्ति', NULL, 'कुत्वविधायकम्', 'रुत्वविधायकम्', 'द्विसर्गविधायकम्', 'सत्वविधायकम', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(654, 4, 1, 1, 'व्याकरणस्य आद्यः प्रवक्ता मन्यते ?', NULL, 'पाणिनि', 'कात्यायन', 'इंद्र', 'ब्रह्मा', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(655, 4, 1, 1, 'उत्तरपदार्थप्रधानः समासः कः?', NULL, 'केवलसमासः', 'द्वन्द्वसमासः', 'द्विगुसमासः', 'तत्पुरुषसमासः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(656, 4, 1, 1, 'माहेश्वरसूत्रेषु इत्संज्ञकाः वर्णाः कति?', NULL, '15', '14', '16', '42', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(657, 4, 1, 1, 'कति प्रत्याहाराः पाणिनिना सूत्रेषु व्यवहियते?', NULL, '42', '43', '44', '40', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(658, 4, 1, 1, 'यम्-अस्ति', NULL, 'मुखस्थानीय', 'नासिकास्थानीय', 'मूर्धास्थानीय', 'तालुस्थानीय', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(659, 4, 1, 1, 'हरि शब्दस्य पंचमी एकवचने रूपमस्ति', NULL, 'हरिभ्याम्', 'हरेः', 'हरये', 'हरिभ्यः', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(660, 4, 1, 1, 'प्रत्ययस्य प्रकारः अस्ति', NULL, 'संज्ञा', 'अव्ययः', 'धातुः', 'सुप्', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(661, 4, 1, 1, 'हिंदी वर्णमाला में मूल स्वर कितने हैं?', NULL, 'दो', 'चार', 'छः', 'सात', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(662, 4, 1, 1, 'वर्णमाला में संयुक्त स्वर कौन-से हैं?', NULL, 'अ, आ', 'इ, ई', 'ऐ, औ', 'ज, झ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(663, 4, 1, 1, 'अन्याय:', NULL, 'अभि + आन्य', 'अन्य + अन्य', 'अन्य + नय', 'अ + नि + आय', NULL, NULL, NULL, NULL, NULL, 'D', 'निर्देशः निम्नलिखित प्रश्नों में प्रत्येक शब्द का संधि विच्छेद चार-चार विकल्पों में किया गया है। इनमें से सही संधि विच्छेद वाले विकल्प का चयन कीजिए-  (33-35)', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(664, 4, 1, 1, 'देव्यर्पण में संधि कौनसी है', NULL, 'दीर्घ संधि', 'गुण संधि', 'वृद्धि संधि', 'यण संधि', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(665, 4, 1, 1, 'शीत+ऋतु संधि युक्त किजिए', NULL, 'शीतर्तु', 'शीतृतु', 'शीतऋतु', 'उपर्युक्त सभी', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(666, 4, 1, 1, 'इकतीसः', NULL, 'तत्पुरुष', 'द्विगु', 'द्वन्द्व', 'कर्मधारय', NULL, NULL, NULL, NULL, NULL, 'C', 'निर्देश: निम्नलिखित प्रत्येक प्रश्न में सामासिक शब्द दिया गया है उसके नीचे उसमें प्रयुक्त समास के लिए चार-चार विकल्प दिए गए हैं, इनमें सर्वाधिक सही समास का चयन कीजिए।(36-38)', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(667, 4, 1, 1, 'लूला-लंगड़ा', NULL, 'तत्पुरुष', 'द्वन्द्व', 'बहुव्रीहि', 'अव्ययीभाव', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(668, 4, 1, 1, 'निम्नलिखित में से कौनसा शब्द द्वन्द्व समास का उदाहरण नहीं है-', NULL, 'पाप पुण्य', 'यथाशक्ति', 'राजा-प्रजा', 'जीवन-मरण', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(669, 4, 1, 1, 'अंकः', NULL, 'गोद', 'भाग्य', 'संख्या', 'दैनंदिनी', NULL, NULL, NULL, NULL, NULL, 'D', 'निर्देश: निम्नलिखित प्रश्नों में अनेकार्थक शब्दों के चार-चार विकल्प दिए गए हैं, इनमें से कोई एक विकल्प गलत है। गलत विकल्प का चयन कीजिए।', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(670, 4, 1, 1, 'हरिण', NULL, 'विहग', 'खग', 'हंस', 'मृग', NULL, NULL, NULL, NULL, NULL, 'C', 'निर्देश: निम्नलिखित प्रश्नों प्रत्येक शब्द के लिए उसके नीचे दिए गए विकल्पों में से पर्यायवाची शब्द का चयन कीजिए।(40-41)', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(671, 4, 1, 1, 'हाटक', NULL, 'पुत्र', 'मृत्यु', 'सोना', 'घोड़ा', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(672, 4, 1, 1, 'भारतीय लोग पाश्चात्य सभ्यता में रंगते जा रहे हैं', NULL, 'दाक्षणात्य', 'पौर्वात्य', 'आमात्य', 'प्रतीच्य', NULL, NULL, NULL, NULL, NULL, 'B', 'रेखांकित शब्द में विलोम है', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(673, 4, 1, 1, 'निर्देश: इनमें एक ही विकल्प तत्सम शब्द वाला है। आपको तत्सम शब्द का चयन करना है।', NULL, 'कउड़ी', 'कौड़ी', 'कपर्दिका', 'कदर्पिका', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(674, 4, 1, 1, 'जिसके सिर पर चंद्रमा है वाक्य में एक शब्द उतर दीजिए', NULL, 'चंद्रशेखर', 'चंद्रेश', 'चंद्रचूड़', 'चंद्रप्रभा', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(675, 4, 1, 1, 'व्याकरण का ज्ञान रखने वाला:', NULL, 'वैयाकरण', 'व्याख्याता', 'पंडित', 'विद्वान', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(676, 4, 1, 1, 'उपचारात्मक शिक्षण वह विधि है जो', NULL, 'समस्याओं के कारणों की पहचान मुश्किल करें', 'समस्याओं को उलझाकर प्रस्तुत करें', 'समस्याओं को दूर करने में सफलता प्रदान करें', 'सूमस्याओं का भाषिक नियमों पर ज्ञान प्रदान करें ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(677, 4, 1, 1, 'निम्न में कौन सा शिक्षण सूत्र नहीं है ?', NULL, 'मूर्त से अमूर्त', 'ज्ञात से अज्ञात', 'विश्लेषण से संश्लेषण', 'अनुकरण से अभ्यास', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(678, 4, 1, 1, 'डाॅ. मेरिया माॅण्टेरीया निवासी थी', NULL, 'इटली', 'फ्रंास', 'अमेरिका', 'भारत', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(679, 4, 1, 1, 'मातृभाषा शिक्षण का उद्वेश्य है', NULL, 'ज्ञानात्मक उद्वेश्य', 'कौशलात्मक उद्वेश्य', 'सृजनात्मक उद्वेश्य', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(680, 4, 1, 1, 'भाषा कौशल का स्वरूप है', NULL, 'बोलना-सुनना', 'लिखना-पढ़ना', '1 एवं 2 दोनों', 'इनमें से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(681, 4, 1, 1, 'एक छात्र अपने पिता के गलत कर्मों के कारण कक्षा में हीन भावना से ग्रस्त है । कक्षा में आप', NULL, 'उससे उसके पिता के समाचार पूछते रहेंगे', 'उसे गलत कार्यों से अलग रहने की प्ररेणा देंगे', 'सामान्य छात्रों को उससे अलग रहने के लिए कहेंगे', 'उसे उसके हाल पर छोड़ दंेगे', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(682, 4, 1, 1, 'कविता का यथार्थ मूल्यांकन कैसे किया जाता है ?', NULL, 'सरल प्रणाली द्वारा', 'गुप्त प्रणाली द्वारा', 'समीक्षा प्रणाली द्वारा', 'छोटी प्रणाली द्वारा', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(683, 4, 1, 1, 'व्याकरण भाषा निम्न में से किसका साधन है ?', NULL, 'त्रुटि का', 'शुद्वता का', 'बोलने का', 'इसमें से कोई नहीं ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(684, 4, 1, 1, 'मानसिक विकास के लिए भाषा उतनी ही आवश्कता है जितना की शिशु के शारीरिक विकास के लिए माँ का दूध यह निम्न में से किसका कथन है ?', NULL, 'महात्मा गाँधी', 'जीन पियाजे', 'डाॅ.सर्वपली राधाकृष्णन', 'स्किनर', NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(685, 4, 1, 1, 'निम्न में से क्या भाषा शिक्षण में सीखने की एक  विशेषता नहीं है ?', NULL, 'भाषा के ज्ञान में विकास करता है', 'भाषा शिक्षण हेतु सुलभ वातावरण तैयार करता है', 'भाषा शिक्षण के अन्तर्गत अयक्रिय करता है', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(686, 4, 1, 1, 'बालोद्यान शिक्षण विधि के जनक है ?', NULL, 'जाॅन डीवी', 'किलपैट्रिक', 'माफण्टेसरी', 'फॅाबेल', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(687, 4, 1, 1, 'सभी छात्रों में सीखने की क्षमता होती है', NULL, 'भिन्न भिन्न', 'समान', '1 एवं 2 दोनों', 'दोनों मे से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(688, 4, 1, 1, 'भाषा के मुख्य तत्व होते है?', NULL, 'ध्वनि', 'संकेत', 'चिन्ह', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(689, 4, 1, 1, 'निम्न में से कौन सा शिक्षण सिद्वान्त है ?', NULL, 'चयन का सिद्वान्त', 'रूचि का सिद्वान्त', 'ये सभी', NULL, NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(690, 4, 1, 1, 'आपकी कक्षा के बच्चे में अनुशासनहीनता की भावना दिन प्रतिदिन बढ़ती जा रही है। इसके लिए आप निम्न में से क्या उपचार करेंगे?', NULL, 'अनुशासनहीनता करने वाले छात्रों को कक्षा से निकाल देंगे', 'शिक्षण कार्य को रोचक बनाएँगे जिससे अनुशासहीनता स्वतः ही समाप्त हो जाएगी', 'अनुशासनहीनता करने वाले छात्रों के अभिभावकों को सूचित करेंगे', 'अनुशासनहीनता छात्रों को विशिष्ट सुविधाएँ प्रदान करके उन्हें प्रसन्न रखेंगे', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(691, 4, 1, 1, 'What do many Indians imagine?', NULL, 'That India is great', 'That in many ways India is the greatest country in the world', 'That India is greater than England', 'That India is the greatest country in South Asia', NULL, NULL, NULL, NULL, NULL, 'B', 'In every country people imagine that they are the best and the cleverest and the others are not so good as they are. The Englishman thinks that he and his country are the best; the Frenchman is very proud of France and everything French. The Germans and Italians think no less of their countries and many Indians imagine that Indian in many ways is the greatest country in the world. This is wrong. Everybody wants to think well of himself and his country. But really there is no person who has not some good and some bad qualities. In the same way, there is no country which is partly good and partly bad. We must take the good wherever we find it and try to remove the bad wherever it may be.          We are of course, most concerned with our own country, India. Unhappily, it is in a bad way today. Most of our people are poor and unhappy. They have no joy of their lives. We have to find out how we can make them happier. We have to see what is good in our ways and customs and try to keep it and whatever is bad we have to throw away. If we find anything good in other countries, we should certainly take it.   (31-35)', NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(692, 4, 1, 1, 'In what respect is India in a bad way today?', NULL, 'That some of the people in India are rich and happy', 'That all of the people in India are happy and hopeful', 'That most of the people in India are poor and unhappy', 'That most of the people are rich but unhappy ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(693, 4, 1, 1, 'What should we throw away?', NULL, 'That whatever is good in our old traditions', 'That whatever existed in our old beliefs', 'That whatever we see good in other countries', 'That whatever is bad in our customs and tradition', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(694, 4, 1, 1, 'What should be our attitude towards other countries?', NULL, 'We should neglect what Frenchman are proud of.', 'If there is anything good in other countries, we should certainly take it.', 'We should refuse anything German people like to do.', 'We should not readily refuse whatever good is there in other countries', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(695, 4, 1, 1, 'What do people think in every country?', NULL, 'That they are not as good and as clever as others.', 'That they are the best and the cleverest people in the world.', 'The people of other countries are not very clever and good.', 'That most of the men of their country are rich and clever.', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(696, 4, 1, 1, 'The English sonnet has', NULL, 'three quatrains and a couplet', 'two quatrains and a couplet', 'four quatrains and a couplet', 'None of the above', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(697, 4, 1, 1, 'Drama differs from poetry as', NULL, 'it has metaphor', 'it has action', 'it has rhyme scheme', 'it is always written in stanzas', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(698, 4, 1, 1, 'Which one of the following is not a poetic device?', NULL, 'Imagery', 'Morpheme', 'Metaphor', 'Alliteration', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(699, 4, 1, 1, 'Point out the figure of speech used in the sentence given below: The moon smiled at the stars around her.', NULL, 'Metaphor', 'Oxymoron', 'Personification', 'Simile ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(700, 4, 1, 1, 'Choose the correct figure of speech in the following sentence.“The wind lies asleep in the arms of dawn.\"', NULL, 'Metaphor', 'Hyperbole', 'Personification', 'Oxymoron', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(701, 4, 1, 1, 'Rule of thumb (idiom)', NULL, 'A rough unit of measure for small lengths', 'A broadly accurate guide based on practice', NULL, 'To force someone to work against his wish', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(702, 4, 1, 1, 'Rome was not built in a day. (idiom)', NULL, 'It takes time to create great things.', 'You have to win many wars to build an empire.', 'A task done hurriedly fails completely.', 'Building anything worthwhile requires skill. ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(703, 4, 1, 1, 'All bark and no bite :(idiom)', NULL, 'Children should only be scolded but never beaten.', 'To be full of big talk but lacking action.', 'The person who appears most scary will help you the most.', 'A person who talks a lot will never harm you.', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(704, 4, 1, 1, 'To spill the beans :(idiom)', NULL, 'To reveal secret information unintentionally.', 'To lose inherited wealth.', 'To spread rumours to intentionally harm some.', 'To spend away hard earned savings.', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(705, 4, 1, 1, 'Cheek by jowl.  (idiom)', NULL, 'Very close together', 'Arguing', 'Teasing one another', 'Avoiding one another', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(706, 4, 1, 1, 'A number of plays were written ........, Shakespeare.', NULL, 'from', 'of', 'in', 'by', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(707, 4, 1, 1, 'His father died ....... ... cancer.', NULL, 'from', 'of', 'with', 'off', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(708, 4, 1, 1, 'Choose the word that can join the two given sentences : She is pretty. She is proud.', NULL, 'but', 'because', 'while', 'not', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(709, 4, 1, 1, 'This is the cat......... I saw.', NULL, 'who', 'that', 'whom', 'what', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(710, 4, 1, 1, 'Which is the adjective in the given sentence? The tall girl met a boy.', NULL, 'girl', 'met', 'boy', 'tall', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(711, 4, 1, 1, 'Identify the type of word that is underlined in the given sentence. It\'s sheer rubbish.', NULL, 'Noun', 'Pronoun', 'Adjective', 'Verb', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(712, 4, 1, 1, 'Phonetic aspect of language deals with', NULL, 'writing', 'reading', 'sound, spelling and pronounciation', 'understanding', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(713, 4, 1, 1, 'Diphthongs are also known as', NULL, 'semi-vowels', 'pure vowels', 'vowels with weak sound', 'glide vowels', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(714, 4, 1, 1, 'The correct transcription of the word \'English\' is', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(715, 4, 1, 1, 'There are 44 sounds in English. Out of these, how many sounds are vowels and how many are consonants respectively', NULL, '20, 24', '5, 39', '22, 221', '0, 34', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(716, 4, 1, 1, 'Which of the following does not have /i:/ sound?', NULL, 'Week', 'Deep', 'Pretty', 'Bean', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(717, 4, 1, 1, 'Which approach lays a lot of emphasis on habit formation?', NULL, 'Eclectic approach', 'Cognitive approach', 'Communicative approach', 'Behaviouristic approach', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(718, 4, 1, 1, '...deals with the level of meaning in language.', NULL, 'Colloquial', 'Syntax', 'Semantics', 'Collocation', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(719, 4, 1, 1, 'When a child learns a language naturally, without much practice, it is called', NULL, 'language generalization', 'language adaption', 'language learning', 'language acquisition', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(720, 4, 1, 1, 'When reading, to \"decode\' means to', NULL, 'an action used in ICT', 'solving a complex puzzle', 'to analyse and understand', 'understanding a foreign language', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(721, 4, 1, 1, 'लिपिज्ञानस्य सम्बद्धः कौशलस्य भवति?', NULL, 'श्रवण, भाषण', 'भाषण, कौशल', 'पठन, भाषण', 'पठन, लेखन', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(722, 4, 1, 1, 'आचार्य पिङ्गलस्य छन्दोग्रन्थः अस्ति?', NULL, 'छन्दोमञ्जरी', 'छन्दिका', 'छन्दः सूत्रम्', 'न कोऽपि', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(723, 4, 1, 1, 'अल् प्रत्याहारे कति वर्णाः सन्ति?', NULL, '40', '41', '42', '43', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(724, 4, 1, 1, 'सेव+शानच्', NULL, 'सेवा', 'सेवकः', 'सेवायमानः', 'सेवमानः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(725, 4, 1, 1, 'अन्तरा-अन्तरेण इति योगे कस्या विभक्तेर्विधानं प्रभवति?', NULL, 'चतुर्थ्याः', 'पंचम्याः', 'तृतीयायाः', 'द्वितीयायाः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(726, 4, 1, 1, 'जुगुप्साविराम प्रमादार्थानामुपसंख्यानम् इत्यनेन का विभक्तिः?', NULL, 'द्वितीयाः', 'सप्तमी', 'पंचमी', 'षष्ठी', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(727, 4, 1, 1, 'पञ्चकाध्ययनं कस्मिन् विधौ भवति?', NULL, 'मौखिकविधौ', 'पारायणविधौ', 'वादविवादविधौ', 'प्रश्नोत्तरविधौ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(728, 4, 1, 1, 'अनुनासिक वर्णानां कति संख्या?', NULL, '2', '3', '5', '4', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(729, 4, 1, 1, 'माहेश्वराणि इत्यत्र कः प्रत्ययः', NULL, 'अण्', 'अक्', 'कप्', 'नूर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(730, 4, 1, 1, 'बाह्यप्रयत्नाः सन्ति', NULL, 'विवारः, संवारः, श्वासः, स्वरितः', 'घोषः, अघोषः, अल्पप्राणः', 'नादः, महाप्राणः, उदात्तः, अनुदात्तः', 'सर्वे ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(731, 4, 1, 1, 'स्पर्शवर्णाः के सन्ति-', NULL, 'कवर्गतः मवर्गपर्यन्तम्', 'कवर्गतः चवर्गपर्यन्तम्', 'कवर्गतः तवर्गपर्यन्तम्', 'कवर्गतः पवर्गपर्यन्तम्', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(732, 4, 1, 1, 'वृद्धिसंज्ञक वर्णः अस्ति-', NULL, 'आ', 'इ', 'अ', 'ओ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(733, 4, 1, 1, 'वरदराजस्य रचना नास्ति-', NULL, 'लघुसिद्धान्त कौमुदी', 'मध्यसिद्धान्त कौमुदी', 'मनोरमाकुचमर्दनम', 'सारकौमुदी ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(734, 4, 1, 1, 'माहेश्वर सूत्रेषु कस्य व्यंजनवर्णस्य द्विवारं प्रयोगःभवतिः', NULL, 'च', 'ट', 'ह', 'ल', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(735, 4, 1, 1, 'सर्वेषां स्वरव्यंजनश्च बोधक प्रत्याहारे ग्रहणं भवति?', NULL, 'अच्', 'अल्', 'अण्', 'शल्', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(736, 4, 1, 1, 'वर्णानामदर्शने का भवति', NULL, 'अभावः', 'संहिता', 'लोपः', 'संयोगः', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(737, 4, 1, 1, 'अष्टौ च विशंति च-अष्टाविंशति, अर्थश्च धर्मश्च-अर्थधर्मों, हरिश्च हरश्च-हरिहरौ अत्र कः समासः?', NULL, 'द्वन्द्वसमासः', 'तत्पुरुषसमासः', 'कर्मधारयसमासः', 'बहुब्रीहिसमासः', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(738, 4, 1, 1, 'पाणिनि अनुसारेण वर्णानाम् उच्चारणाय कति स्थानानि सन्ति?', NULL, 'सप्त', 'त्रयोदश', 'दश', 'अष्ट', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(739, 4, 1, 1, 'ङकारस्य उच्चारण स्थानम् अस्ति', NULL, 'कण्ठः नासिका च', 'तालु नासिका च', 'ओष्ठौ नासिका च', 'मूर्धा जिह्वामूलम् च ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(740, 4, 1, 1, 'सम्प्रसारणेन् ‘‘य् व्‘‘ इत्ययोः के भवतः', NULL, 'इ, उ', 'उ, इ', 'अ, उ', 'ऋ, लु', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(741, 4, 1, 1, 'द्वियमुनम् इत्यत्र कः समासः?', NULL, 'द्विगुः', 'कर्मधारयः', 'अव्यययीभावः', 'तत्पुरुषः', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(742, 4, 1, 1, 'गव्यम् पदस्य संधिविच्छेदोऽस्ति', NULL, 'ग+ यम्', 'गो+ यम्', 'गो+ अम्', 'ग+ वयम्', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(743, 4, 1, 1, 'ससजुषोरुः सूत्रमस्ति', NULL, 'कुत्वविधायकम्', 'रुत्वविधायकम्', 'द्विसर्गविधायकम्', 'सत्वविधायकम', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(744, 4, 1, 1, 'व्याकरणस्य आद्यः प्रवक्ता मन्यते ?', NULL, 'पाणिनि', 'कात्यायन', 'इंद्र', 'ब्रह्मा', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(745, 4, 1, 1, 'उत्तरपदार्थप्रधानः समासः कः?', NULL, 'केवलसमासः', 'द्वन्द्वसमासः', 'द्विगुसमासः', 'तत्पुरुषसमासः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(746, 4, 1, 1, 'माहेश्वरसूत्रेषु इत्संज्ञकाः वर्णाः कति?', NULL, '15', '14', '16', '42', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(747, 4, 1, 1, 'कति प्रत्याहाराः पाणिनिना सूत्रेषु व्यवहियते?', NULL, '42', '43', '44', '40', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(748, 4, 1, 1, 'यम्-अस्ति', NULL, 'मुखस्थानीय', 'नासिकास्थानीय', 'मूर्धास्थानीय', 'तालुस्थानीय', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(749, 4, 1, 1, 'हरि शब्दस्य पंचमी एकवचने रूपमस्ति', NULL, 'हरिभ्याम्', 'हरेः', 'हरये', 'हरिभ्यः', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(750, 4, 1, 1, 'प्रत्ययस्य प्रकारः अस्ति', NULL, 'संज्ञा', 'अव्ययः', 'धातुः', 'सुप्', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(751, 4, 1, 1, 'सर्वप्रथम एम.एन. राॅय द्वारा संविधान सभा के गठन का विचार रखा गया था ?', NULL, '1934', '1936', '1938', '1932', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(752, 4, 1, 1, '42 वें संविधान (संशोधन) अधिनियम 1976 द्वारा प्रस्तावना में कौनसा शब्द जोडे गये?', NULL, 'समाजवादी, पंथनिरपेक्ष और बंधुता', 'समाजवादी, पंथनिरपेक्ष और अखंडता', 'पंथनिरपेक्ष, लोकतंत्रात्मक व उपासना', 'बंधुता,उपासना और अखण्डता', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(753, 4, 1, 1, '86 वें संविधान संशोघन, 2002 द्वारा शिक्षा के मूल अधिकार को कोनसे अनुच्छेद में रखा गया है ?', NULL, '19वें', '20वें', '20(।)वें', '21(।)वें', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(754, 4, 1, 1, 'भारतीय संविधान में मूल कर्तव्यों को किस देश से लिया गया है ?', NULL, 'अमेरिका', 'जापान', 'सोवियत संघ', 'चीन', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(755, 4, 1, 1, 'लैंगिक अपराधों से बालकों का संरक्षण अधिनियम (च्व्ब्ैव् ।ब्ज् ) किस वर्ष लागू किया गया था ?', NULL, '2008', '2010', '2012', '2014', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(756, 4, 1, 1, 'राजस्थान में राज्य निर्वाचन आयोग की स्थापना किस वर्ष ली गई ?', NULL, '1950', '1956', '1994', '1999', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(757, 4, 1, 1, 'भारतीय संसद के अंग है ?', NULL, 'लोकसभा व राज्यसभा', 'लोकसभा,राज्यसभा व राष्ट्रपति', 'लोकसभा व विधानसभाएं', 'राष्ट्रपति व लोकसभा', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(758, 4, 1, 1, 'राष्ट्रपति द्वारा आंग्ल-भारतीय समुदाय के कितने सदस्यों को लोकसभा में मनोनीत किया जाता है ?', NULL, '12', '2', '8', '10', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(759, 4, 1, 1, 'भारतीय संघ की कार्यपालिका का वैधानिक प्रधान कौन होता है ?', NULL, 'प्रधानमंत्री', 'राष्ट्रपति', 'मुख्यन्यायाधीश', 'उप-राष्ट्रपति', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(760, 4, 1, 1, 'राज्यपाल के संबंध में कौनसा कथन सही नहीं है ?', NULL, 'नियुक्ति का प्रावधान अनुच्छेद 157 में है।', 'आयु 25 वर्ष या अधिक हो।', 'राज्य विधानसभा का सदस्य चुने जाने की योग्यता रखता है ।', 'पदावधि 5 वर्ष होती है ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(761, 4, 1, 1, 'सन् 1826 ई. में सर्वप्रथम हड.प्पा नामक स्थल पर प्राचीन सभ्यता के अवशेष मिलने की पुष्टि की ?', NULL, 'दयाराम साहनी', 'सर जाॅन मार्शल', 'जाॅन व बं्रटन बंधु', 'चाल्र्स मेसन', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(762, 4, 1, 1, '़ऋग्वैदिक काल में किन नदियों के बीच के क्षैत्र को ब्रह्यवर्त कहा गया है ?', NULL, 'सिन्धु गंगा', 'गंगा यमुना', 'सतलज यमुना', 'सिन्धु व्यास', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(763, 4, 1, 1, 'महावीर स्वामी जैन धर्म के कौनसे तीर्थंकर थे', NULL, '22वंे', '23वें', '21वें', '24वें', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(764, 4, 1, 1, 'गौतम बुद्व ने अपना पहला उपदेश किस स्थान पर दिया', NULL, 'लुम्बिनी', 'कुशीनगर', 'सारनाथ', 'प्रयाग', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(765, 4, 1, 1, 'निम्न में से कोंनसा सुमेलित नहीं है?महाजनपद-राजधानी', NULL, 'वत्स -कोशाम्बी', 'चेदि-शक्तिमति', 'कम्बोज-हाटक', 'अंग-अहिच्छत्र', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(766, 4, 1, 1, 'मौर्य शासक अशोक का कार्यकाल था ?', NULL, '256ई.पू.-230ई.पू.', '273ई.पू.-232ई.पू.', '298ई.पू.-273ई.पू.', '363ई.पू.-326ई.पू.', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(767, 4, 1, 1, 'राष्ट्रकूट वंश का संस्थापक था ?', NULL, 'ध्रुव', 'दंतिदुर्ग', 'अमोघवर्ष', 'कर्क', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(768, 4, 1, 1, 'भारतीय धर्म संस्कृति की प्रतीक भटार गुरू मुर्ति किस देश में स्थित है ?', NULL, 'इण्डोनेशिया', 'भुटान', 'श्रीलंका', 'कंबोडिया', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(769, 4, 1, 1, 'भक्ति आंदोलन के प्रथम प्रचारक माने जाते है ?', NULL, 'रामानुजाचार्य', 'शंकराचार्य', 'चैतन्य महाप्रभु', 'रामानन्द', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(770, 4, 1, 1, 'निम्न में से कौनसा सूफी सम्प्रदाय बाशरा शाखा से संबंधित है ?', NULL, 'चिश्ती', 'सुहरावर्दी', 'शतारिया', '1और 2 दोनों', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(771, 4, 1, 1, 'जोधपुर शासक जसवंत की मृत्यु के बाद औरंगजेब ने जौधपुर की गददी पर किसे बिढ़ाया?', NULL, 'इन्द्र सिंह', 'अमर सिंह', 'कर्ण सिंह', 'अजित सिंह', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(772, 4, 1, 1, 'भूराजस्व की दहशाला प्रणाली किसके द्वारा शुरू की गर्द थी ?', NULL, 'बाबर', 'हुमायुं', 'अकबर', 'ओंरगजेब', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(773, 4, 1, 1, 'दिल्ली के किला ए कुहना नामक किले का निर्माण किसके शासन काल में हुआ ?', NULL, 'शाहजहंा', 'शेरशाह', 'अकबर', 'मुहम्मद शाह', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(774, 4, 1, 1, 'बक्सर के युद्व के पश्चात किस संधि के तहत अंग्रेजों को बंगाल बिहार व उडी़सा की दीवानी प्राप्त हुई थी ?', NULL, 'अलीनगर संधि', 'इलाहाबाद संधि', 'बक्सर संधि', 'मुरादाबाद संधि', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(775, 4, 1, 1, 'निम्न में से सुमेलित नहीं है ?1857 क्रांति केन्द्र विद्रोह कुचलने वाला', NULL, 'दिल्ली निकाॅलसन, हड़सन', 'बरेली जनरल ह्यूरोज', 'कानपूर कैम्पबेल', 'इलाहाबाद कर्नल नील', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(776, 4, 1, 1, 'कंपनी अधिकारी, जिसकी 1857 की क्रांति के दौरान कोटा में हत्या कर दी गई थी, वह था -', NULL, 'कर्नल एबाॅट', 'मेजर बर्टन', 'कैप्टन शाॅवर्स', 'कैप्टन मेक मैसन ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(777, 4, 1, 1, 'बालाथल राजस्थान के ऐतिहासिक स्थानों में से एक है, जो कि ... में स्थित है।', NULL, 'सीकर', 'उदयपुर', 'भीलवाड़ा', 'हनुमानगढ़', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(778, 4, 1, 1, 'भूपसिंह का सम्बन्ध किस किसान आंदोलन से था ?', NULL, 'बेंगू किसान आंदोलन', 'बिजौलिया किसान आंदालेन', 'बंूदी किसान आंदोलन', 'बीकानेर किसान आंदोलन', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(779, 4, 1, 1, 'सर्वहितकारिणी सभा, चुरू की स्थापना किसने की ?', NULL, 'स्वामी गोपालदास', 'साधु सीतारामदास', 'हरविलास शारदा', 'रामनारायण चैधरी', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08');
INSERT INTO `questions` (`id`, `testId`, `subjectId`, `courseId`, `question`, `qimage`, `optionA`, `optionB`, `optionC`, `optionD`, `queImage`, `aImage`, `bImage`, `cImage`, `dImage`, `answer`, `description`, `descriptionimage`, `explanations`, `explanations_video`, `language`, `marks`, `negative`, `created_at`, `updated_at`) VALUES
(780, 4, 1, 1, 'अर्जुनलाल सेठी ने 1905 में वर्धमान पाठशाला की स्थापना किस स्थान पर की थी ?', NULL, 'जयपुर', 'कोटा', 'करौली', 'उदयपुर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(781, 4, 1, 1, 'दिन-रात जिस कारण होते है, वह है-', NULL, 'भू-परिक्रमण', 'भू-परिभ्रमण', 'पृथ्वी का अक्षीय झुकाव', 'चंद्रमा का परिक्रमण', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(782, 4, 1, 1, 'विषुव या इक्विनाॅक्स वर्ष के दो काल, जब और रात बराबर होते हैं-', NULL, '21 मार्च और 23 सितंबर', '22 फरवरी', '15 अक्टूबर', '22 जुलाई और 22 दिसंबर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(783, 4, 1, 1, 'अंतर्राष्ट्रीय दिनांक रेखा खींची जाती है-', NULL, 'अफ्रीका से होकर', 'प्रशांत महासागर से होकर', 'एशिया से होकर', 'अटलांटिक महासागर से होकर', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(784, 4, 1, 1, 'वायुदाब सबसे कम होता है -', NULL, 'शीत ऋतु में', 'बंसत ऋतु में', 'शरद ऋतु में', 'ग्रीष्म ऋतु में ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(785, 4, 1, 1, 'निम्नलिखित में से कौन सा युग्म सुमेलित नहीं है ?', NULL, 'फाॅन-आल्प्स पर्वत', 'बोरा - पोलैंड़', 'मिस्ट्रल-राइन घाटी', 'खमसिन-मिस्र', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(786, 4, 1, 1, 'टाइफून नामक चक्रवात से निम्नलिखित में से कौन-सा क्षेत्र अधिक प्रभावित होता है ?', NULL, 'आॅस्ट्रेलिया', 'चीन सागर', 'एशिया', 'अमेरिका', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(787, 4, 1, 1, 'जिस अक्षांश पर वार्षिक तापांतर न्यूनतम होता है वह है -', NULL, 'भूमध्य रेखा', 'कर्क रेखा', 'मकर रेखा', 'उत्तरी ध्रुव वुत्त', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(788, 4, 1, 1, 'कहा जाता है कि ताजमहल मार्बल कैंसर से ग्रस्त है। यह मार्बल कैंसर क्या है ?', NULL, 'निकटस्थ उधोगों से ताजमहल में धुआँ भरना', 'ताजमहल के मार्बल में बंडी़ संख्या में कवक लगना', 'अम्लीय वर्षा जो मार्बल का क्षरण करती है', 'कज्जल कणों के कारण मार्बल का परलर होना', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(789, 4, 1, 1, 'सूर्य से आने वाली हानिकारक पराबैंगनी विकिरणों से होता है', NULL, 'फेफडें का कैंसर', 'मुख का कैंसर', 'त्वचा का कैंसर', 'यकृत का कैंसर', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(790, 4, 1, 1, 'सवाना का सर्वाधिक विस्तार है -', NULL, 'अफ्रीका में', 'एशिया में', 'दक्षिण अमेरिका में', 'उत्तर किसी से भी नही', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(791, 4, 1, 1, 'निम्नलिखित में से कौन सा शहर दिल्ली के सबसे समीप के देशांतर पर स्थित है ?', NULL, 'बंगलुरू', 'हैदराबाद', 'नागपुर', 'पुणे', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(792, 4, 1, 1, 'निम्नलिखित में से कौन सी पहाड़ियां राजस्थान में विंध्यन पर्वत श्रेणियों का विस्तार हैं ?', NULL, 'मुकंदरा पहाड़ियां', 'डोरा पर्वत', 'अलवर पर्वत', 'गिरवा पर्वत', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(793, 4, 1, 1, 'निम्नलिखित में से कौन सी एक कृत्रिम झील है ?', NULL, 'कोडाईकनाल', 'कोल्लेरू', 'नैनीताल', 'रेणुका', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(794, 4, 1, 1, 'निम्नलिखित में से कौन सा भौगोलिक रूप से ग्रेट निकोबार के सबसे निकट है ?', NULL, 'सुमात्रा', 'बोर्नियो', 'जावा', 'श्रीलंका', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(795, 4, 1, 1, 'कयाल क्या है ?', NULL, 'तराई मैदान', 'गंगा डेल्टा', 'दक्कन पठार की रेगुड़', 'केरल के लैगून', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(796, 4, 1, 1, 'काली क्रांति संबंधित है -', NULL, 'मत्स्य उत्पादन', 'कोयला उत्पादन', 'कच्चा तेल उत्पादन', 'सरसों उत्पादन', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(797, 4, 1, 1, 'निम्नलिखित में से कौन सा एक पठार माउण्ट आबू से लगा हुआ है ', NULL, 'भोराठ पठार', 'हाड़ौती पठार', 'उरिया पठार', 'उपरमाल', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(798, 4, 1, 1, 'राजस्थान का प्रमुख मक्का उत्पादक क्षेत्र है ?', NULL, 'उत्तरी भाग', 'दक्षिण भाग', 'पूर्वी भाग', 'पश्चिमी भाग', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(799, 4, 1, 1, 'राजस्थान में सर्वप्रथम किस उद्योग की स्थापना हुई थी ?', NULL, 'सीमेंट', 'चीनी', 'सूती-वस्त्र', 'काँच उद्योग ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(800, 4, 1, 1, 'निम्नलिखित में से महात्मा गांधी का भारत में पहला सत्याग्रह कौनसा था', NULL, 'अहमदाबाद', 'बारदोली', 'चम्पारन', 'वैयक्तिक', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(801, 4, 1, 1, 'शिक्षा में उद्देश्यों का वर्गीकरण दिया गया है-', NULL, 'जाॅन डेवी द्वारा', 'स्मिथ द्वारा', 'बी.एस.ब्लुम द्वारा', 'आई. के. डेविस द्वारा', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(802, 4, 1, 1, 'पाठ्यक्रम के क्षेत्र में शामिल है', NULL, 'विद्यालय की आंतरिक क्रियाएँ', 'विद्यालय की बाह्य क्रियाएँ', 'उपरोक्त दोनों', 'उपरोक्त में से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(803, 4, 1, 1, 'सामाजिक अध्ययन की पाठ्यपुस्तक, अनुरूप होनी चाहिए।', NULL, 'लेखक के', 'विद्यार्थी के', 'शिक्षक के', 'सरकार के', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(804, 4, 1, 1, 'सामाजिक अध्ययन के शिक्षक को बल देना चाहिए', NULL, 'विषय के संबंधित सूचना देने पर', 'विद्यार्थियों की सामाजिक मुद्दों के प्रति चिन्तन शक्ति के विकास पर', 'विद्यार्थियों को परीक्षा के लिए तैयार करने पर', 'विद्यार्थियों के भाषा विकास पर ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(805, 4, 1, 1, 'सामाजिक अध्ययन की शिक्षण में ऐतिहासिक स्थलों का भ्रमण उपयोगी है', NULL, 'विषय के प्रति रुचि उत्पन्न करने में।', 'प्रत्यक्ष सूचना प्रदान करने में।', 'विषयवस्तु की बेहतर समझ में।', 'उपरोक्त सभी।', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(806, 4, 1, 1, 'प्रायोजना एक उद्देश्यपूर्ण कार्य है जो संलग्नता के साथ सामाजिक वातावरण में किया जाता है। यह कथन है', NULL, 'ब्लूम का', 'क्रो एण्ड क्रो का', 'जॉन डेवी का', 'किलपैट्रिक का ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(807, 4, 1, 1, 'सामाजिक अध्ययन में निम्न में से कौनसी परीक्षा छात्रों के स्वतन्त्र चिंतन के मूल्यांकन का अवसर प्रदान करता है? ', NULL, 'वस्तुनिष्ठ प्रकार की परीक्षा', 'निबंधात्मक प्रकार की परीक्षा', 'लघु-उत्तरात्मक प्रकार की परीक्षा', 'अति-लघुत्तरात्मक प्रकार की परीक्षा', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(808, 4, 1, 1, '<p>बी.एस. ब्लूम ने ज्ञानात्मक उद्देश्य का वर्गीकरण कितने भागो में किया<br></p>', NULL, '4', '5', '6', '7', NULL, NULL, NULL, NULL, NULL, 'C', '<p>1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; A</p><p>2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; B</p><p>3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; C</p><p>4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; D</p>', NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(809, 4, 1, 1, 'सामाजिक अध्ययन में मानव का मानव से तथा मानव का उसके वातावरण से संबंधित पारस्परिक संबंधो का अध्ययन किया जाता है कथन है', NULL, 'जीरो लीमेक', 'माइकेलिस', 'आर.टेगौर', 'रामानुज ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(810, 4, 1, 1, 'सामाजिक अध्ययन विषय से संबंधित असत्य कथन है', NULL, 'यह पक्षपातपूर्ण दृष्टिकोण विकसित करता है', 'यह मानवीय विचार विकसित करता है', 'यह वातावरण के प्रति जागरूक बनती है', 'यह ऐतिहासिक प्रतिको के प्रति सम्मान उत्पन्न करता है', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-07-19 23:03:08', '2022-07-19 23:03:08'),
(811, 4, 1, 1, '<p>dsfgdggdgdg</p>', NULL, '<p>dfgdfg</p>', '<p>dfgdfg</p>', '<p>dfgdf</p>', '<p>dfgfdg</p>', NULL, NULL, NULL, NULL, NULL, 'A', '<p>dfgdfg</p>', NULL, '<p>dfgdfgfdgdf</p>', '', '0', 0.00, 0.00, '2022-07-20 06:04:28', '2022-07-20 06:05:08'),
(812, 5, 1, 2, 'व्यक्तिगत विभिन्नता का सम्मान करते वक्त, एक शिक्षक से क्या आशा नहीं की जा सकती है?', NULL, 'योग्यतानुसार समूह में विभक्त करना।', 'पाठ्यचर्या को समायोजित करना।', 'बच्चों को स्वाध्याय के लिए छोड़ देना।', 'शिक्षण विधियों को समायोजित करना।', NULL, NULL, NULL, NULL, NULL, 'C', '<p>okk test</p>', NULL, '<p>https://www.youtube.com/watch?v=gD_sRxW6Rig&amp;t=2013s</p>', NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(813, 5, 1, 2, 'निम्न में से कौन से स्वलीनता के लक्षण हैं?', NULL, 'कमजोर सामाजिक व्यवहार ।', 'रूढिबद्ध व्यवहार', 'कमजोर संप्रेषण', 'उपरोक्त सभी ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(814, 5, 1, 2, 'मात्रात्मक व्यक्तिगत क्षमता रूपी प्रक्रिया को कहा जाता है ', NULL, 'वृद्धि(ग्रोथ)संतुलन', '(इक्किलिब्रियम)', 'परिपक्वता (मैचुरेशन)', 'विकास(डेवलपमेंट)', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(815, 5, 1, 2, 'किशोरावस्था में एक बच्चे के उचित विकास हेतु माता-पिता तथा शिक्षक निम्न कार्य कर सकते हैं- (निम्न में से कौनसा)', NULL, 'लिंग शिक्षा का उचित ज्ञान देना।', 'उचित वातावरण प्रदान करना।', 'परामर्श तथा मार्गदर्शन सेवा की व्यवस्था करना (यदि आवश्यक हो)', 'उपरोक्त सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(816, 5, 1, 2, 'अत्यन्त निपुणतापूर्ण अधिगम पद्धति जिस पर बान्डुरा तथा वॉल्टर ने बल दिया वे हैं', NULL, 'पुरस्कार तथा सजा', 'निरीक्षणयुक्त अधिगम या अनुकरण', 'स्व-वास्तविकीकरण', 'उपरोक्त में से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(817, 5, 1, 2, 'एक शिक्षक अपनी कक्षा में थार्नडाइक के सिद्धांत को लागू करने जा रहा है। निम्नलिखित में से क्या शिक्षक को लागू नहीं करना चाहिए?', NULL, 'बच्चों को तैयार किया जाना चाहिए तथा उन्हें कार्य सीखने हेतु सही रूप से प्रेरित किया जाना चाहिए।', 'बच्चों को नई चीजें सीखने हेतु खोज विधि के लिए उन्मुख किया जाना चाहिए।', 'उचित अभ्यास तथा ड्रिल कार्य किया जाना चाहिए।', 'जहां तक हो शिक्षक को पुरस्कार का उपयोग सही रूप में करने की कोशिश करनी चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(818, 5, 1, 2, 'शिक्षा के अधिकार अधिनियम के अंतर्गत निम्न में से क्या शिक्षक के कार्य नहीं माने गए हैं?', NULL, 'एक निश्चित समय में पाठ्यक्रम को पूरा करना।', 'शिक्षक को खुद को व्यक्तिगत ट्यूशन में व्यस्त रखना चाहिए।', 'विद्यालय के लिए नियमितता बनाए रखना चाहिए तथा समय का पाबंद होना चाहिए।', 'हर बालक के अधिगम क्षमता को समझकर उसकी जरूरत के अनुसार उन्हें अतिरिक्त अनुबोध प्रदान करना चाहिए।', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(819, 5, 1, 2, 'फ्रॉयड की अनुशंसित व्यक्तित्व की बनावट के अनुसार, निम्न में से कौन मूलभूत तीव्र इच्छा के उठने के साथ ही तुरंत तथा अनैच्छिक रूप से (सभी नियम तथा जीवन की सत्यता तथा नैतिकता की अवहेलना करते हुए) संतुष्ट करता है?', NULL, 'अहम् तथा पराअह्म दोनों', 'इदं', 'अहम्', 'पराअहम्', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(820, 5, 1, 2, 'एक पांच वर्ष के बच्चे में दूसरों के प्रति प्रतिक्रिया तथा संप्रेषण में कमी है तथा असामान्य व्यवहार को बारम्बार करता है। इस तरह के लक्षण किस चीज का प्रतीक है?', NULL, 'श्रवण बाधिता', 'शैक्षिक पिछड़ापन', 'शैशव स्वलीनता', 'अधिगम अक्षमता ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(821, 5, 1, 2, 'किशोरावस्था की ऐसी आदत जिसमें खुद को भूखे रखने की प्रवृत्ति होती है तथा यह ज्यादा बालिकाओं में पाई जाती है। ऐसी अवस्था को कहा जाता है', NULL, 'एनोरेक्सिया नरवोसा', 'डेलीरियम ट्रेमेन्स', 'स्वलीनता', 'डाउन सिण्ड्रोम ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(822, 5, 1, 2, 'निम्न में से कौनसी संस्था प्रशिक्षण नियमावली तथा कार्यक्रमों का विकलांगता पुनर्वास के क्षेत्र में भारत में क्रियान्वयन करती है?', NULL, 'राष्ट्रीय अध्यापक शिक्षा परिषद', 'राष्ट्रीय शैक्षिक योजना एवं प्रशासन विश्वविद्यालय', 'राष्ट्रीय शैक्षिक अनुसंधान एवं प्रशिक्षण परिषद', 'भारतीय पुनर्वास परिषद', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(823, 5, 1, 2, '“एक विशेष स्तर पर बच्चे मौलिक तर्क का इस्तेमाल करना शुरू कर देते हैं तथा सभी प्रकार के प्रश्नों का जवाब जानना चाहते हैं।’’ पियाजे ने इसे अंतज्ञनि कहा है। पियाजे के अनुसार, निम्न में से कौन से चरण का यह अर्थ है', NULL, 'साकार संचालन', 'पूर्व-संचालन', 'औपचारिक संचालन', 'इनमें से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(824, 5, 1, 2, 'ज्यादातर बच्चे प्रथम सार्थक शब्द इस उम्र में बोलते हैं', NULL, '3 महीने में', '6 महीने में', '35-40 महीने में', '10-13 महीने में ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(825, 5, 1, 2, '‘बहु-बुद्धि सिद्धांत’ के जनक कौन हैं?', NULL, 'वाइगोटस्की', 'अल्फ्रेड बिनेट', 'गार्डनर', 'बूनर', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(826, 5, 1, 2, 'निम्न में से किसने सामाजिक रचनावाद दर्शन पर अत्यधिक बल दिया है?', NULL, 'वाइगोटस्की', 'पियाजे', 'डेवी', 'कोलबर्ग', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(827, 5, 1, 2, 'श्रवण में विकृति की माप की जाती है', NULL, 'हर्ट्स में .', 'डेसीबल में', 'वॉट में', 'पौंड में', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(828, 5, 1, 2, 'निम्नलिखित में से कौन सूक्ष्म चलन कौशल का उदाहरण है?', NULL, 'चढ़ना', 'कूदना', 'दौड़ना', 'लिखना', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(829, 5, 1, 2, '‘स्कीमा’ कामतलब है', NULL, 'खण्डन क्रिया विधि', 'अधिगम विधि', 'लंबे समय के याद्दाश्त में सूचना के संगठित पैकेट्स का एकत्रित होना।', 'शारीरिक प्रतिवाद क्रियाविधि', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(830, 5, 1, 2, 'आनुवंशिकता की इकाई है', NULL, 'क्रोमोसोम', 'निषेचित अंडा', 'जीन', 'युग्मजन', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(831, 5, 1, 2, 'मेरडिथ के अध्ययन के आधार पर कहा जा सकता है कि सामान्य रूप से उन परिवारों के बालक ....... होते हैं, जो सामाजिक स्तर से ऊँचे होते हैं।', NULL, 'कम स्वास्थ एवं विकसित', 'अधिक स्वस्थ एवं विकसित', 'अधिक स्वस्थ एवं कम विकसित', 'स्वस्थ नहीं पर विकसित', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(832, 5, 1, 2, 'मूर्रे ने एक परीक्षण की रचना करके इतिहास रच दिया, वह क्या है?', NULL, 'स्याही धब्बा परीक्षण', 'वाक्य पूर्ति परीक्षण', 'विषय आत्मबोधन परीक्षण', 'मूल्यांकन मापनी ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(833, 5, 1, 2, 'बुद्धि के त्रिआयामी सिद्धांत के अनुसार बुद्धि के कारकों की संख्या है', NULL, '90', '110', '135', '120', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(834, 5, 1, 2, 'निम्न में से कौनसा तनाव को कम करने का अप्रत्यक्ष ढंग है?', NULL, 'विश्लेषण और निर्णय', 'रुकावट को दूर करना', 'दूसरे लक्ष्यों का प्रतिस्थापन', 'उदात्तीकरण', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(835, 5, 1, 2, 'सशक्त अभिप्रेरणा सीखने का प्रभावशाली घटक है', NULL, 'इससे बालक स्वस्थ रहता है', 'ध्यान करता है', 'शीघ्र सीखता है', 'प्रसन्न रहता है ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(836, 5, 1, 2, 'हस्तशिल्प की शिक्षा दी जानी चाहिए', NULL, 'मंदबुद्धि बालक को', 'प्रतिभाशाली बालक का', 'सामान्य बालक को', 'प्रखर बुद्धि बालक को ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(837, 5, 1, 2, 'छात्रों में चोरी करने की आदत को कैसे दूर किया जा सकता है?', NULL, 'बालकों को पारितोषिक देकर', 'ताड़ना देकर', 'सकारात्मक उदाहरण देकर', 'सजा देकर', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(838, 5, 1, 2, 'प्रतिभावान बालकों की पहचान करने के लिए हमें सबसे अधिक महत्व-', NULL, 'अभिभावकों के मत को देना चाहिए', 'वस्तुनिष्ठ परीक्षणों के परिणाम को देना चाहिए', 'शिक्षक के निर्णय को देना चाहिए', 'समाज के विचारों को देना चाहिए', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(839, 5, 1, 2, 'छब्थ् 2005 में कला शिक्षा को विद्यालय में जोड़ने का उद्देश्य है', NULL, 'सांस्कृतिक विरासत की प्रशंसा करना', 'छात्रों के व्यक्तित्व और मानसिक स्वास्थ्य को विकसित करना', 'केवल (1) सही है', '(1) और (2) दोनों सही हैं', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(840, 5, 1, 2, 'शैशवावस्था की विशेषता नही है', NULL, 'शारीरिक विकास की तीव्रता', 'दूसरो पर निर्भरता', 'नैतिकता का होना', 'मानसिक विकास में तीव्रता ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(841, 5, 1, 2, 'जब बालक की परीक्षा द्वारा मापी हुई योग्यता के सही मूल्यांकन में स्थायित्व होता है, तब उस परीक्षा को ......... कहते हैं', NULL, 'वैधता', 'विश्वसनीयता', 'वस्तुनिष्ठता', 'कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '0', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(842, 5, 1, 2, 'हिंदी वर्णमाला में मूल स्वर कितने हैं?', NULL, 'दो', 'चार', 'छः', 'सात', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(843, 5, 1, 2, 'वर्णमाला में संयुक्त स्वर कौन-से हैं?', NULL, 'अ, आ', 'इ, ई', 'ऐ, औ', 'ज, झ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(844, 5, 1, 2, 'अन्याय:', NULL, 'अभि + आन्य', 'अन्य + अन्य', 'अन्य + नय', 'अ + नि + आय', NULL, NULL, NULL, NULL, NULL, 'D', 'निर्देशः निम्नलिखित प्रश्नों में प्रत्येक शब्द का संधि विच्छेद चार-चार विकल्पों में किया गया है। इनमें से सही संधि विच्छेद वाले विकल्प का चयन कीजिए-  (33-35)', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(845, 5, 1, 2, 'देव्यर्पण में संधि कौनसी है', NULL, 'दीर्घ संधि', 'गुण संधि', 'वृद्धि संधि', 'यण संधि', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(846, 5, 1, 2, 'शीत+ऋतु संधि युक्त किजिए', NULL, 'शीतर्तु', 'शीतृतु', 'शीतऋतु', 'उपर्युक्त सभी', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(847, 5, 1, 2, 'इकतीसः', NULL, 'तत्पुरुष', 'द्विगु', 'द्वन्द्व', 'कर्मधारय', NULL, NULL, NULL, NULL, NULL, 'C', 'निर्देश: निम्नलिखित प्रत्येक प्रश्न में सामासिक शब्द दिया गया है उसके नीचे उसमें प्रयुक्त समास के लिए चार-चार विकल्प दिए गए हैं, इनमें सर्वाधिक सही समास का चयन कीजिए।(36-38)', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(848, 5, 1, 2, 'लूला-लंगड़ा', NULL, 'तत्पुरुष', 'द्वन्द्व', 'बहुव्रीहि', 'अव्ययीभाव', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(849, 5, 1, 2, 'निम्नलिखित में से कौनसा शब्द द्वन्द्व समास का उदाहरण नहीं है-', NULL, 'पाप पुण्य', 'यथाशक्ति', 'राजा-प्रजा', 'जीवन-मरण', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(850, 5, 1, 2, 'अंकः', NULL, 'गोद', 'भाग्य', 'संख्या', 'दैनंदिनी', NULL, NULL, NULL, NULL, NULL, 'D', 'निर्देश: निम्नलिखित प्रश्नों में अनेकार्थक शब्दों के चार-चार विकल्प दिए गए हैं, इनमें से कोई एक विकल्प गलत है। गलत विकल्प का चयन कीजिए।', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(851, 5, 1, 2, 'हरिण', NULL, 'विहग', 'खग', 'हंस', 'मृग', NULL, NULL, NULL, NULL, NULL, 'C', 'निर्देश: निम्नलिखित प्रश्नों प्रत्येक शब्द के लिए उसके नीचे दिए गए विकल्पों में से पर्यायवाची शब्द का चयन कीजिए।(40-41)', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(852, 5, 1, 2, 'हाटक', NULL, 'पुत्र', 'मृत्यु', 'सोना', 'घोड़ा', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(853, 5, 1, 2, 'भारतीय लोग पाश्चात्य सभ्यता में रंगते जा रहे हैं', NULL, 'दाक्षणात्य', 'पौर्वात्य', 'आमात्य', 'प्रतीच्य', NULL, NULL, NULL, NULL, NULL, 'B', 'रेखांकित शब्द में विलोम है', NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(854, 5, 1, 2, 'निर्देश: इनमें एक ही विकल्प तत्सम शब्द वाला है। आपको तत्सम शब्द का चयन करना है।', NULL, 'कउड़ी', 'कौड़ी', 'कपर्दिका', 'कदर्पिका', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(855, 5, 1, 2, 'जिसके सिर पर चंद्रमा है वाक्य में एक शब्द उतर दीजिए', NULL, 'चंद्रशेखर', 'चंद्रेश', 'चंद्रचूड़', 'चंद्रप्रभा', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(856, 5, 1, 2, 'व्याकरण का ज्ञान रखने वाला:', NULL, 'वैयाकरण', 'व्याख्याता', 'पंडित', 'विद्वान', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(857, 5, 1, 2, 'उपचारात्मक शिक्षण वह विधि है जो', NULL, 'समस्याओं के कारणों की पहचान मुश्किल करें', 'समस्याओं को उलझाकर प्रस्तुत करें', 'समस्याओं को दूर करने में सफलता प्रदान करें', 'सूमस्याओं का भाषिक नियमों पर ज्ञान प्रदान करें ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(858, 5, 1, 2, 'निम्न में कौन सा शिक्षण सूत्र नहीं है ?', NULL, 'मूर्त से अमूर्त', 'ज्ञात से अज्ञात', 'विश्लेषण से संश्लेषण', 'अनुकरण से अभ्यास', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(859, 5, 1, 2, 'डाॅ. मेरिया माॅण्टेरीया निवासी थी', NULL, 'इटली', 'फ्रंास', 'अमेरिका', 'भारत', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(860, 5, 1, 2, 'मातृभाषा शिक्षण का उद्वेश्य है', NULL, 'ज्ञानात्मक उद्वेश्य', 'कौशलात्मक उद्वेश्य', 'सृजनात्मक उद्वेश्य', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(861, 5, 1, 2, 'भाषा कौशल का स्वरूप है', NULL, 'बोलना-सुनना', 'लिखना-पढ़ना', '1 एवं 2 दोनों', 'इनमें से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(862, 5, 1, 2, 'एक छात्र अपने पिता के गलत कर्मों के कारण कक्षा में हीन भावना से ग्रस्त है । कक्षा में आप', NULL, 'उससे उसके पिता के समाचार पूछते रहेंगे', 'उसे गलत कार्यों से अलग रहने की प्ररेणा देंगे', 'सामान्य छात्रों को उससे अलग रहने के लिए कहेंगे', 'उसे उसके हाल पर छोड़ दंेगे', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(863, 5, 1, 2, 'कविता का यथार्थ मूल्यांकन कैसे किया जाता है ?', NULL, 'सरल प्रणाली द्वारा', 'गुप्त प्रणाली द्वारा', 'समीक्षा प्रणाली द्वारा', 'छोटी प्रणाली द्वारा', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(864, 5, 1, 2, 'व्याकरण भाषा निम्न में से किसका साधन है ?', NULL, 'त्रुटि का', 'शुद्वता का', 'बोलने का', 'इसमें से कोई नहीं ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(865, 5, 1, 2, 'मानसिक विकास के लिए भाषा उतनी ही आवश्कता है जितना की शिशु के शारीरिक विकास के लिए माँ का दूध यह निम्न में से किसका कथन है ?', NULL, 'महात्मा गाँधी', 'जीन पियाजे', 'डाॅ.सर्वपली राधाकृष्णन', 'स्किनर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(866, 5, 1, 2, 'निम्न में से क्या भाषा शिक्षण में सीखने की एक  विशेषता नहीं है ?', NULL, 'भाषा के ज्ञान में विकास करता है', 'भाषा शिक्षण हेतु सुलभ वातावरण तैयार करता है', 'भाषा शिक्षण के अन्तर्गत अयक्रिय करता है', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(867, 5, 1, 2, 'बालोद्यान शिक्षण विधि के जनक है ?', NULL, 'जाॅन डीवी', 'किलपैट्रिक', 'माफण्टेसरी', 'फॅाबेल', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(868, 5, 1, 2, 'सभी छात्रों में सीखने की क्षमता होती है', NULL, 'भिन्न भिन्न', 'समान', '1 एवं 2 दोनों', 'दोनों मे से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(869, 5, 1, 2, 'भाषा के मुख्य तत्व होते है?', NULL, 'ध्वनि', 'संकेत', 'चिन्ह', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(870, 5, 1, 2, 'निम्न में से कौन सा शिक्षण सिद्वान्त है ?', NULL, 'चयन का सिद्वान्त', 'रूचि का सिद्वान्त', 'ये सभी', NULL, NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(871, 5, 1, 2, 'आपकी कक्षा के बच्चे में अनुशासनहीनता की भावना दिन प्रतिदिन बढ़ती जा रही है। इसके लिए आप निम्न में से क्या उपचार करेंगे?', NULL, 'अनुशासनहीनता करने वाले छात्रों को कक्षा से निकाल देंगे', 'शिक्षण कार्य को रोचक बनाएँगे जिससे अनुशासहीनता स्वतः ही समाप्त हो जाएगी', 'अनुशासनहीनता करने वाले छात्रों के अभिभावकों को सूचित करेंगे', 'अनुशासनहीनता छात्रों को विशिष्ट सुविधाएँ प्रदान करके उन्हें प्रसन्न रखेंगे', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '1', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(872, 5, 1, 2, 'What do many Indians imagine?', NULL, 'That India is great', 'That in many ways India is the greatest country in the world', 'That India is greater than England', 'That India is the greatest country in South Asia', NULL, NULL, NULL, NULL, NULL, 'B', 'In every country people imagine that they are the best and the cleverest and the others are not so good as they are. The Englishman thinks that he and his country are the best; the Frenchman is very proud of France and everything French. The Germans and Italians think no less of their countries and many Indians imagine that Indian in many ways is the greatest country in the world. This is wrong. Everybody wants to think well of himself and his country. But really there is no person who has not some good and some bad qualities. In the same way, there is no country which is partly good and partly bad. We must take the good wherever we find it and try to remove the bad wherever it may be.          We are of course, most concerned with our own country, India. Unhappily, it is in a bad way today. Most of our people are poor and unhappy. They have no joy of their lives. We have to find out how we can make them happier. We have to see what is good in our ways and customs and try to keep it and whatever is bad we have to throw away. If we find anything good in other countries, we should certainly take it.   (31-35)', NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(873, 5, 1, 2, 'In what respect is India in a bad way today?', NULL, 'That some of the people in India are rich and happy', 'That all of the people in India are happy and hopeful', 'That most of the people in India are poor and unhappy', 'That most of the people are rich but unhappy ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(874, 5, 1, 2, 'What should we throw away?', NULL, 'That whatever is good in our old traditions', 'That whatever existed in our old beliefs', 'That whatever we see good in other countriesThat whatever is bad in our customs and tradition', 'That whatever is bad in our customs and tradition', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(875, 5, 1, 2, 'What should be our attitude towards other countries?', NULL, 'We should neglect what Frenchman are proud of.', 'If there is anything good in other countries, we should certainly take it.', 'We should refuse anything German people like to do.', 'We should not readily refuse whatever good is there in other countries', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(876, 5, 1, 2, 'What do people think in every country?', NULL, 'That they are not as good and as clever as others.', 'That they are the best and the cleverest people in the world.', 'The people of other countries are not very clever and good.', 'That most of the men of their country are rich and clever.', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(877, 5, 1, 2, 'Which is not synonym of the given word? Irksome', NULL, 'annoying', 'soothing', 'pleasing', 'facile', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(878, 5, 1, 2, 'Synonym of the word \'Cajole\'', NULL, 'Coax', 'Evince', 'Congratulate', 'Clarify', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(879, 5, 1, 2, 'Direction : In the following questions a word has been written in four different ways. Out of which only one is correctly spelt. Find the correctly spelt word.', NULL, 'gaurantee', 'garuntee', 'guarantee', 'guaruntee', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(880, 5, 1, 2, 'Solemn religious acts :', NULL, 'Demonstrations', 'Celebrations', 'Rites', 'Functions ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(881, 5, 1, 2, 'That which cannot be averted', NULL, 'Inevitable', 'Irreparable', 'Incomparable', 'Indisputable ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(882, 5, 1, 2, 'Committing murder in revenge :', NULL, 'Massacre', 'Vendetta', 'Homicide', 'Regicide', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(883, 5, 1, 2, 'Phonetic aspect of language deals with', NULL, 'writing', 'reading', 'sound,spelling and pronounciation', 'understanding ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(884, 5, 1, 2, 'Diphthongs are', NULL, 'consonant sounds', 'double consonant sounds', 'vowel sounds', 'double vowel sounds ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(885, 5, 1, 2, 'Diphthongs are also known as', NULL, 'semi-vowels', 'pure vowels', 'vowels with weak sound', 'glide vowels', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(886, 5, 1, 2, 'The correct transcription of the word \'English\' is ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(887, 5, 1, 2, 'There are 44 sounds in English. Out of these, how many sounds are vowels and how many are consonants respectively?', NULL, '20, 24', '5, 39', '22, 22', '10, 34', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(888, 5, 1, 2, 'Which of the following does not have /i:/ sound?', NULL, 'Week', 'Bean', 'Deep', 'Pretty', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(889, 5, 1, 2, 'Which approach lays a lot of emphasis on habit formation?', NULL, 'Eclectic approach', 'Cognitive approach', 'Communicative approach', 'Behaviouristic approach', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(890, 5, 1, 2, '...deals with the level of meaning in language.', NULL, 'Colloquial', 'Syntax', 'Semantics', 'Collocation ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(891, 5, 1, 2, 'When a child learns a language naturally, without much practice, it is called', NULL, 'language generalization', 'language adaption', 'language learning', 'language acquisition', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(892, 5, 1, 2, 'When reading, to \'decode\' means to', NULL, 'an action used in ICT', 'solving a complex puzzle', 'to analyse and understand', 'understanding a foreign language', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(893, 5, 1, 2, 'Remedial teaching involves', NULL, 'teaching and testing', 'testing continuously', 'teaching, testing and reteaching', 'teaching difficult topics', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(894, 5, 1, 2, 'Change the voice of following sen', NULL, 'tence: The teacher was chased.', 'Someone chased the teacher.', 'Someone had chased the teacher.', 'Somebody has chased the teacher.', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(895, 5, 1, 2, 'Identify the correct reported form of the given sentence. She said, “How ugly I look in this dress !\"', NULL, 'She said that how ugly she was looking in that dress.', 'She exclaimed how ugly she looked in that dress.', 'She expressed how ugly she looked in that dress.', 'She exclaimed that she looked very ugly in that dress.', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(896, 5, 1, 2, 'A number of plays were written   ............Shakespeare.', NULL, 'from', 'of', 'in', 'by', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(897, 5, 1, 2, 'His father died ..........cancer.', NULL, 'from', 'of', 'with', 'off', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(898, 5, 1, 2, 'An example of linking adverbials is', NULL, 'these', 'so', 'your', 'the', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(899, 5, 1, 2, 'This is the cat.... I saw.', NULL, 'who', 'that', 'whom', 'what', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(900, 5, 1, 2, 'Choose the word that can join the two  sentences : She is pretty. She is proud.', NULL, 'but', 'because', 'while', 'not', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(901, 5, 1, 2, 'Which is the abjective in the given sentence?The tall girl met a boy.', NULL, 'tall', 'girl', 'met', 'boy', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '3', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(902, 5, 1, 2, 'लिपिज्ञानस्य सम्बद्धः कौशलस्य भवति?', NULL, 'श्रवण, भाषण', 'भाषण, कौशल', 'पठन, भाषण', 'पठन, लेखन', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(903, 5, 1, 2, 'आचार्य पिङ्गलस्य छन्दोग्रन्थः अस्ति?', NULL, 'छन्दोमञ्जरी', 'छन्दिका', 'छन्दः सूत्रम्', 'न कोऽपि', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(904, 5, 1, 2, 'अल् प्रत्याहारे कति वर्णाः सन्ति?', NULL, '40', '41', '42', '43', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(905, 5, 1, 2, 'सेव+शानच्', NULL, 'सेवा', 'सेवकः', 'सेवायमानः', 'सेवमानः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(906, 5, 1, 2, 'अन्तरा-अन्तरेण इति योगे कस्या विभक्तेर्विधानं प्रभवति?', NULL, 'चतुर्थ्याः', 'पंचम्याः', 'तृतीयायाः', 'द्वितीयायाः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(907, 5, 1, 2, 'जुगुप्साविराम प्रमादार्थानामुपसंख्यानम् इत्यनेन का विभक्तिः?', NULL, 'द्वितीयाः', 'सप्तमी', 'पंचमी', 'षष्ठी', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(908, 5, 1, 2, 'पञ्चकाध्ययनं कस्मिन् विधौ भवति?', NULL, 'मौखिकविधौ', 'पारायणविधौ', 'वादविवादविधौ', 'प्रश्नोत्तरविधौ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(909, 5, 1, 2, 'अनुनासिक वर्णानां कति संख्या?', NULL, '2', '3', '5', '4', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(910, 5, 1, 2, 'माहेश्वराणि इत्यत्र कः प्रत्ययः', NULL, 'अण्', 'अक्', 'कप्', 'नूर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(911, 5, 1, 2, 'बाह्यप्रयत्नाः सन्ति', NULL, 'विवारः, संवारः, श्वासः, स्वरितः', 'घोषः, अघोषः, अल्पप्राणः', 'नादः, महाप्राणः, उदात्तः, अनुदात्तः', 'सर्वे ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(912, 5, 1, 2, 'स्पर्शवर्णाः के सन्ति-', NULL, 'कवर्गतः मवर्गपर्यन्तम्', 'कवर्गतः चवर्गपर्यन्तम्', 'कवर्गतः तवर्गपर्यन्तम्', 'कवर्गतः पवर्गपर्यन्तम्', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(913, 5, 1, 2, 'वृद्धिसंज्ञक वर्णः अस्ति-', NULL, 'आ', 'इ', 'अ', 'ओ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(914, 5, 1, 2, 'वरदराजस्य रचना नास्ति-', NULL, 'लघुसिद्धान्त कौमुदी', 'मध्यसिद्धान्त कौमुदी', 'मनोरमाकुचमर्दनम', 'सारकौमुदी ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(915, 5, 1, 2, 'माहेश्वर सूत्रेषु कस्य व्यंजनवर्णस्य द्विवारं प्रयोगःभवतिः', NULL, 'च', 'ट', 'ह', 'ल', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(916, 5, 1, 2, 'सर्वेषां स्वरव्यंजनश्च बोधक प्रत्याहारे ग्रहणं भवति?', NULL, 'अच्', 'अल्', 'अण्', 'शल्', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(917, 5, 1, 2, 'वर्णानामदर्शने का भवति', NULL, 'अभावः', 'संहिता', 'लोपः', 'संयोगः', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(918, 5, 1, 2, 'अष्टौ च विशंति च-अष्टाविंशति, अर्थश्च धर्मश्च-अर्थधर्मों, हरिश्च हरश्च-हरिहरौ अत्र कः समासः?', NULL, 'द्वन्द्वसमासः', 'तत्पुरुषसमासः', 'कर्मधारयसमासः', 'बहुब्रीहिसमासः', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(919, 5, 1, 2, 'पाणिनि अनुसारेण वर्णानाम् उच्चारणाय कति स्थानानि सन्ति?', NULL, 'सप्त', 'त्रयोदश', 'दश', 'अष्ट', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(920, 5, 1, 2, 'ङकारस्य उच्चारण स्थानम् अस्ति', NULL, 'कण्ठः नासिका च', 'तालु नासिका च', 'ओष्ठौ नासिका च', 'मूर्धा जिह्वामूलम् च ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(921, 5, 1, 2, 'सम्प्रसारणेन् ‘‘य् व्‘‘ इत्ययोः के भवतः', NULL, 'इ, उ', 'उ, इ', 'अ, उ', 'ऋ, लु', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(922, 5, 1, 2, 'द्वियमुनम् इत्यत्र कः समासः?', NULL, 'द्विगुः', 'कर्मधारयः', 'अव्यययीभावः', 'तत्पुरुषः', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(923, 5, 1, 2, 'गव्यम् पदस्य संधिविच्छेदोऽस्ति', NULL, 'ग+ यम्', 'गो+ यम्', 'गो+ अम्', 'ग+ वयम्', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(924, 5, 1, 2, 'ससजुषोरुः सूत्रमस्ति', NULL, 'कुत्वविधायकम्', 'रुत्वविधायकम्', 'द्विसर्गविधायकम्', 'सत्वविधायकम', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(925, 5, 1, 2, 'व्याकरणस्य आद्यः प्रवक्ता मन्यते ?', NULL, 'पाणिनि', 'कात्यायन', 'इंद्र', 'ब्रह्मा', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(926, 5, 1, 2, 'उत्तरपदार्थप्रधानः समासः कः?', NULL, 'केवलसमासः', 'द्वन्द्वसमासः', 'द्विगुसमासः', 'तत्पुरुषसमासः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(927, 5, 1, 2, 'माहेश्वरसूत्रेषु इत्संज्ञकाः वर्णाः कति?', NULL, '15', '14', '16', '42', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(928, 5, 1, 2, 'कति प्रत्याहाराः पाणिनिना सूत्रेषु व्यवहियते?', NULL, '42', '43', '44', '40', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(929, 5, 1, 2, 'यम्-अस्ति', NULL, 'मुखस्थानीय', 'नासिकास्थानीय', 'मूर्धास्थानीय', 'तालुस्थानीय', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(930, 5, 1, 2, 'हरि शब्दस्य पंचमी एकवचने रूपमस्ति', NULL, 'हरिभ्याम्', 'हरेः', 'हरये', 'हरिभ्यः', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(931, 5, 1, 2, 'प्रत्ययस्य प्रकारः अस्ति', NULL, 'संज्ञा', 'अव्ययः', 'धातुः', 'सुप्', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '5', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(932, 5, 1, 2, 'हिंदी वर्णमाला में मूल स्वर कितने हैं?', NULL, 'दो', 'चार', 'छः', 'सात', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(933, 5, 1, 2, 'वर्णमाला में संयुक्त स्वर कौन-से हैं?', NULL, 'अ, आ', 'इ, ई', 'ऐ, औ', 'ज, झ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(934, 5, 1, 2, 'अन्याय:', NULL, 'अभि + आन्य', 'अन्य + अन्य', 'अन्य + नय', 'अ + नि + आय', NULL, NULL, NULL, NULL, NULL, 'D', 'निर्देशः निम्नलिखित प्रश्नों में प्रत्येक शब्द का संधि विच्छेद चार-चार विकल्पों में किया गया है। इनमें से सही संधि विच्छेद वाले विकल्प का चयन कीजिए-  (33-35)', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(935, 5, 1, 2, 'देव्यर्पण में संधि कौनसी है', NULL, 'दीर्घ संधि', 'गुण संधि', 'वृद्धि संधि', 'यण संधि', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(936, 5, 1, 2, 'शीत+ऋतु संधि युक्त किजिए', NULL, 'शीतर्तु', 'शीतृतु', 'शीतऋतु', 'उपर्युक्त सभी', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(937, 5, 1, 2, 'इकतीसः', NULL, 'तत्पुरुष', 'द्विगु', 'द्वन्द्व', 'कर्मधारय', NULL, NULL, NULL, NULL, NULL, 'C', 'निर्देश: निम्नलिखित प्रत्येक प्रश्न में सामासिक शब्द दिया गया है उसके नीचे उसमें प्रयुक्त समास के लिए चार-चार विकल्प दिए गए हैं, इनमें सर्वाधिक सही समास का चयन कीजिए।(36-38)', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(938, 5, 1, 2, 'लूला-लंगड़ा', NULL, 'तत्पुरुष', 'द्वन्द्व', 'बहुव्रीहि', 'अव्ययीभाव', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(939, 5, 1, 2, 'निम्नलिखित में से कौनसा शब्द द्वन्द्व समास का उदाहरण नहीं है-', NULL, 'पाप पुण्य', 'यथाशक्ति', 'राजा-प्रजा', 'जीवन-मरण', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(940, 5, 1, 2, 'अंकः', NULL, 'गोद', 'भाग्य', 'संख्या', 'दैनंदिनी', NULL, NULL, NULL, NULL, NULL, 'D', 'निर्देश: निम्नलिखित प्रश्नों में अनेकार्थक शब्दों के चार-चार विकल्प दिए गए हैं, इनमें से कोई एक विकल्प गलत है। गलत विकल्प का चयन कीजिए।', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(941, 5, 1, 2, 'हरिण', NULL, 'विहग', 'खग', 'हंस', 'मृग', NULL, NULL, NULL, NULL, NULL, 'C', 'निर्देश: निम्नलिखित प्रश्नों प्रत्येक शब्द के लिए उसके नीचे दिए गए विकल्पों में से पर्यायवाची शब्द का चयन कीजिए।(40-41)', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(942, 5, 1, 2, 'हाटक', NULL, 'पुत्र', 'मृत्यु', 'सोना', 'घोड़ा', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(943, 5, 1, 2, 'भारतीय लोग पाश्चात्य सभ्यता में रंगते जा रहे हैं', NULL, 'दाक्षणात्य', 'पौर्वात्य', 'आमात्य', 'प्रतीच्य', NULL, NULL, NULL, NULL, NULL, 'B', 'रेखांकित शब्द में विलोम है', NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(944, 5, 1, 2, 'निर्देश: इनमें एक ही विकल्प तत्सम शब्द वाला है। आपको तत्सम शब्द का चयन करना है।', NULL, 'कउड़ी', 'कौड़ी', 'कपर्दिका', 'कदर्पिका', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(945, 5, 1, 2, 'जिसके सिर पर चंद्रमा है वाक्य में एक शब्द उतर दीजिए', NULL, 'चंद्रशेखर', 'चंद्रेश', 'चंद्रचूड़', 'चंद्रप्रभा', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(946, 5, 1, 2, 'व्याकरण का ज्ञान रखने वाला:', NULL, 'वैयाकरण', 'व्याख्याता', 'पंडित', 'विद्वान', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(947, 5, 1, 2, 'उपचारात्मक शिक्षण वह विधि है जो', NULL, 'समस्याओं के कारणों की पहचान मुश्किल करें', 'समस्याओं को उलझाकर प्रस्तुत करें', 'समस्याओं को दूर करने में सफलता प्रदान करें', 'सूमस्याओं का भाषिक नियमों पर ज्ञान प्रदान करें ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(948, 5, 1, 2, 'निम्न में कौन सा शिक्षण सूत्र नहीं है ?', NULL, 'मूर्त से अमूर्त', 'ज्ञात से अज्ञात', 'विश्लेषण से संश्लेषण', 'अनुकरण से अभ्यास', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(949, 5, 1, 2, 'डाॅ. मेरिया माॅण्टेरीया निवासी थी', NULL, 'इटली', 'फ्रंास', 'अमेरिका', 'भारत', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(950, 5, 1, 2, 'मातृभाषा शिक्षण का उद्वेश्य है', NULL, 'ज्ञानात्मक उद्वेश्य', 'कौशलात्मक उद्वेश्य', 'सृजनात्मक उद्वेश्य', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(951, 5, 1, 2, 'भाषा कौशल का स्वरूप है', NULL, 'बोलना-सुनना', 'लिखना-पढ़ना', '1 एवं 2 दोनों', 'इनमें से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04');
INSERT INTO `questions` (`id`, `testId`, `subjectId`, `courseId`, `question`, `qimage`, `optionA`, `optionB`, `optionC`, `optionD`, `queImage`, `aImage`, `bImage`, `cImage`, `dImage`, `answer`, `description`, `descriptionimage`, `explanations`, `explanations_video`, `language`, `marks`, `negative`, `created_at`, `updated_at`) VALUES
(952, 5, 1, 2, 'एक छात्र अपने पिता के गलत कर्मों के कारण कक्षा में हीन भावना से ग्रस्त है । कक्षा में आप', NULL, 'उससे उसके पिता के समाचार पूछते रहेंगे', 'उसे गलत कार्यों से अलग रहने की प्ररेणा देंगे', 'सामान्य छात्रों को उससे अलग रहने के लिए कहेंगे', 'उसे उसके हाल पर छोड़ दंेगे', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(953, 5, 1, 2, 'कविता का यथार्थ मूल्यांकन कैसे किया जाता है ?', NULL, 'सरल प्रणाली द्वारा', 'गुप्त प्रणाली द्वारा', 'समीक्षा प्रणाली द्वारा', 'छोटी प्रणाली द्वारा', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(954, 5, 1, 2, 'व्याकरण भाषा निम्न में से किसका साधन है ?', NULL, 'त्रुटि का', 'शुद्वता का', 'बोलने का', 'इसमें से कोई नहीं ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(955, 5, 1, 2, 'मानसिक विकास के लिए भाषा उतनी ही आवश्कता है जितना की शिशु के शारीरिक विकास के लिए माँ का दूध यह निम्न में से किसका कथन है ?', NULL, 'महात्मा गाँधी', 'जीन पियाजे', 'डाॅ.सर्वपली राधाकृष्णन', 'स्किनर', NULL, NULL, NULL, NULL, NULL, 'S', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(956, 5, 1, 2, 'निम्न में से क्या भाषा शिक्षण में सीखने की एक  विशेषता नहीं है ?', NULL, 'भाषा के ज्ञान में विकास करता है', 'भाषा शिक्षण हेतु सुलभ वातावरण तैयार करता है', 'भाषा शिक्षण के अन्तर्गत अयक्रिय करता है', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(957, 5, 1, 2, 'बालोद्यान शिक्षण विधि के जनक है ?', NULL, 'जाॅन डीवी', 'किलपैट्रिक', 'माफण्टेसरी', 'फॅाबेल', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(958, 5, 1, 2, 'सभी छात्रों में सीखने की क्षमता होती है', NULL, 'भिन्न भिन्न', 'समान', '1 एवं 2 दोनों', 'दोनों मे से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(959, 5, 1, 2, 'भाषा के मुख्य तत्व होते है?', NULL, 'ध्वनि', 'संकेत', 'चिन्ह', 'ये सभी', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(960, 5, 1, 2, 'निम्न में से कौन सा शिक्षण सिद्वान्त है ?', NULL, 'चयन का सिद्वान्त', 'रूचि का सिद्वान्त', 'ये सभी', NULL, NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(961, 5, 1, 2, 'आपकी कक्षा के बच्चे में अनुशासनहीनता की भावना दिन प्रतिदिन बढ़ती जा रही है। इसके लिए आप निम्न में से क्या उपचार करेंगे?', NULL, 'अनुशासनहीनता करने वाले छात्रों को कक्षा से निकाल देंगे', 'शिक्षण कार्य को रोचक बनाएँगे जिससे अनुशासहीनता स्वतः ही समाप्त हो जाएगी', 'अनुशासनहीनता करने वाले छात्रों के अभिभावकों को सूचित करेंगे', 'अनुशासनहीनता छात्रों को विशिष्ट सुविधाएँ प्रदान करके उन्हें प्रसन्न रखेंगे', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '2', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(962, 5, 1, 2, 'What do many Indians imagine?', NULL, 'That India is great', 'That in many ways India is the greatest country in the world', 'That India is greater than England', 'That India is the greatest country in South Asia', NULL, NULL, NULL, NULL, NULL, 'B', 'In every country people imagine that they are the best and the cleverest and the others are not so good as they are. The Englishman thinks that he and his country are the best; the Frenchman is very proud of France and everything French. The Germans and Italians think no less of their countries and many Indians imagine that Indian in many ways is the greatest country in the world. This is wrong. Everybody wants to think well of himself and his country. But really there is no person who has not some good and some bad qualities. In the same way, there is no country which is partly good and partly bad. We must take the good wherever we find it and try to remove the bad wherever it may be.          We are of course, most concerned with our own country, India. Unhappily, it is in a bad way today. Most of our people are poor and unhappy. They have no joy of their lives. We have to find out how we can make them happier. We have to see what is good in our ways and customs and try to keep it and whatever is bad we have to throw away. If we find anything good in other countries, we should certainly take it.   (31-35)', NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(963, 5, 1, 2, 'In what respect is India in a bad way today?', NULL, 'That some of the people in India are rich and happy', 'That all of the people in India are happy and hopeful', 'That most of the people in India are poor and unhappy', 'That most of the people are rich but unhappy ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(964, 5, 1, 2, 'What should we throw away?', NULL, 'That whatever is good in our old traditions', 'That whatever existed in our old beliefs', 'That whatever we see good in other countries', 'That whatever is bad in our customs and tradition', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(965, 5, 1, 2, 'What should be our attitude towards other countries?', NULL, 'We should neglect what Frenchman are proud of.', 'If there is anything good in other countries, we should certainly take it.', 'We should refuse anything German people like to do.', 'We should not readily refuse whatever good is there in other countries', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(966, 5, 1, 2, 'What do people think in every country?', NULL, 'That they are not as good and as clever as others.', 'That they are the best and the cleverest people in the world.', 'The people of other countries are not very clever and good.', 'That most of the men of their country are rich and clever.', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(967, 5, 1, 2, 'The English sonnet has', NULL, 'three quatrains and a couplet', 'two quatrains and a couplet', 'four quatrains and a couplet', 'None of the above', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(968, 5, 1, 2, 'Drama differs from poetry as', NULL, 'it has metaphor', 'it has action', 'it has rhyme scheme', 'it is always written in stanzas', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(969, 5, 1, 2, 'Which one of the following is not a poetic device?', NULL, 'Imagery', 'Morpheme', 'Metaphor', 'Alliteration', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(970, 5, 1, 2, 'Point out the figure of speech used in the sentence given below: The moon smiled at the stars around her.', NULL, 'Metaphor', 'Oxymoron', 'Personification', 'Simile ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(971, 5, 1, 2, 'Choose the correct figure of speech in the following sentence.“The wind lies asleep in the arms of dawn.\"', NULL, 'Metaphor', 'Hyperbole', 'Personification', 'Oxymoron', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(972, 5, 1, 2, 'Rule of thumb (idiom)', NULL, 'A rough unit of measure for small lengths', 'A broadly accurate guide based on practice', NULL, 'To force someone to work against his wish', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(973, 5, 1, 2, 'Rome was not built in a day. (idiom)', NULL, 'It takes time to create great things.', 'You have to win many wars to build an empire.', 'A task done hurriedly fails completely.', 'Building anything worthwhile requires skill. ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(974, 5, 1, 2, 'All bark and no bite :(idiom)', NULL, 'Children should only be scolded but never beaten.', 'To be full of big talk but lacking action.', 'The person who appears most scary will help you the most.', 'A person who talks a lot will never harm you.', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(975, 5, 1, 2, 'To spill the beans :(idiom)', NULL, 'To reveal secret information unintentionally.', 'To lose inherited wealth.', 'To spread rumours to intentionally harm some.', 'To spend away hard earned savings.', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(976, 5, 1, 2, 'Cheek by jowl.  (idiom)', NULL, 'Very close together', 'Arguing', 'Teasing one another', 'Avoiding one another', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(977, 5, 1, 2, 'A number of plays were written ........, Shakespeare.', NULL, 'from', 'of', 'in', 'by', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(978, 5, 1, 2, 'His father died ....... ... cancer.', NULL, 'from', 'of', 'with', 'off', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(979, 5, 1, 2, 'Choose the word that can join the two given sentences : She is pretty. She is proud.', NULL, 'but', 'because', 'while', 'not', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(980, 5, 1, 2, 'This is the cat......... I saw.', NULL, 'who', 'that', 'whom', 'what', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(981, 5, 1, 2, 'Which is the adjective in the given sentence? The tall girl met a boy.', NULL, 'girl', 'met', 'boy', 'tall', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(982, 5, 1, 2, 'Identify the type of word that is underlined in the given sentence. It\'s sheer rubbish.', NULL, 'Noun', 'Pronoun', 'Adjective', 'Verb', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(983, 5, 1, 2, 'Phonetic aspect of language deals with', NULL, 'writing', 'reading', 'sound, spelling and pronounciation', 'understanding', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(984, 5, 1, 2, 'Diphthongs are also known as', NULL, 'semi-vowels', 'pure vowels', 'vowels with weak sound', 'glide vowels', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(985, 5, 1, 2, 'The correct transcription of the word \'English\' is', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(986, 5, 1, 2, 'There are 44 sounds in English. Out of these, how many sounds are vowels and how many are consonants respectively', NULL, '20, 24', '5, 39', '22, 221', '0, 34', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(987, 5, 1, 2, 'Which of the following does not have /i:/ sound?', NULL, 'Week', 'Deep', 'Pretty', 'Bean', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(988, 5, 1, 2, 'Which approach lays a lot of emphasis on habit formation?', NULL, 'Eclectic approach', 'Cognitive approach', 'Communicative approach', 'Behaviouristic approach', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(989, 5, 1, 2, '...deals with the level of meaning in language.', NULL, 'Colloquial', 'Syntax', 'Semantics', 'Collocation', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(990, 5, 1, 2, 'When a child learns a language naturally, without much practice, it is called', NULL, 'language generalization', 'language adaption', 'language learning', 'language acquisition', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(991, 5, 1, 2, 'When reading, to \"decode\' means to', NULL, 'an action used in ICT', 'solving a complex puzzle', 'to analyse and understand', 'understanding a foreign language', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '4', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(992, 5, 1, 2, 'लिपिज्ञानस्य सम्बद्धः कौशलस्य भवति?', NULL, 'श्रवण, भाषण', 'भाषण, कौशल', 'पठन, भाषण', 'पठन, लेखन', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(993, 5, 1, 2, 'आचार्य पिङ्गलस्य छन्दोग्रन्थः अस्ति?', NULL, 'छन्दोमञ्जरी', 'छन्दिका', 'छन्दः सूत्रम्', 'न कोऽपि', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(994, 5, 1, 2, 'अल् प्रत्याहारे कति वर्णाः सन्ति?', NULL, '40', '41', '42', '43', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(995, 5, 1, 2, 'सेव+शानच्', NULL, 'सेवा', 'सेवकः', 'सेवायमानः', 'सेवमानः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(996, 5, 1, 2, 'अन्तरा-अन्तरेण इति योगे कस्या विभक्तेर्विधानं प्रभवति?', NULL, 'चतुर्थ्याः', 'पंचम्याः', 'तृतीयायाः', 'द्वितीयायाः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(997, 5, 1, 2, 'जुगुप्साविराम प्रमादार्थानामुपसंख्यानम् इत्यनेन का विभक्तिः?', NULL, 'द्वितीयाः', 'सप्तमी', 'पंचमी', 'षष्ठी', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(998, 5, 1, 2, 'पञ्चकाध्ययनं कस्मिन् विधौ भवति?', NULL, 'मौखिकविधौ', 'पारायणविधौ', 'वादविवादविधौ', 'प्रश्नोत्तरविधौ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(999, 5, 1, 2, 'अनुनासिक वर्णानां कति संख्या?', NULL, '2', '3', '5', '4', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1000, 5, 1, 2, 'माहेश्वराणि इत्यत्र कः प्रत्ययः', NULL, 'अण्', 'अक्', 'कप्', 'नूर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1001, 5, 1, 2, 'बाह्यप्रयत्नाः सन्ति', NULL, 'विवारः, संवारः, श्वासः, स्वरितः', 'घोषः, अघोषः, अल्पप्राणः', 'नादः, महाप्राणः, उदात्तः, अनुदात्तः', 'सर्वे ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1002, 5, 1, 2, 'स्पर्शवर्णाः के सन्ति-', NULL, 'कवर्गतः मवर्गपर्यन्तम्', 'कवर्गतः चवर्गपर्यन्तम्', 'कवर्गतः तवर्गपर्यन्तम्', 'कवर्गतः पवर्गपर्यन्तम्', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1003, 5, 1, 2, 'वृद्धिसंज्ञक वर्णः अस्ति-', NULL, 'आ', 'इ', 'अ', 'ओ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1004, 5, 1, 2, 'वरदराजस्य रचना नास्ति-', NULL, 'लघुसिद्धान्त कौमुदी', 'मध्यसिद्धान्त कौमुदी', 'मनोरमाकुचमर्दनम', 'सारकौमुदी ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1005, 5, 1, 2, 'माहेश्वर सूत्रेषु कस्य व्यंजनवर्णस्य द्विवारं प्रयोगःभवतिः', NULL, 'च', 'ट', 'ह', 'ल', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1006, 5, 1, 2, 'सर्वेषां स्वरव्यंजनश्च बोधक प्रत्याहारे ग्रहणं भवति?', NULL, 'अच्', 'अल्', 'अण्', 'शल्', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1007, 5, 1, 2, 'वर्णानामदर्शने का भवति', NULL, 'अभावः', 'संहिता', 'लोपः', 'संयोगः', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1008, 5, 1, 2, 'अष्टौ च विशंति च-अष्टाविंशति, अर्थश्च धर्मश्च-अर्थधर्मों, हरिश्च हरश्च-हरिहरौ अत्र कः समासः?', NULL, 'द्वन्द्वसमासः', 'तत्पुरुषसमासः', 'कर्मधारयसमासः', 'बहुब्रीहिसमासः', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1009, 5, 1, 2, 'पाणिनि अनुसारेण वर्णानाम् उच्चारणाय कति स्थानानि सन्ति?', NULL, 'सप्त', 'त्रयोदश', 'दश', 'अष्ट', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1010, 5, 1, 2, 'ङकारस्य उच्चारण स्थानम् अस्ति', NULL, 'कण्ठः नासिका च', 'तालु नासिका च', 'ओष्ठौ नासिका च', 'मूर्धा जिह्वामूलम् च ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1011, 5, 1, 2, 'सम्प्रसारणेन् ‘‘य् व्‘‘ इत्ययोः के भवतः', NULL, 'इ, उ', 'उ, इ', 'अ, उ', 'ऋ, लु', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1012, 5, 1, 2, 'द्वियमुनम् इत्यत्र कः समासः?', NULL, 'द्विगुः', 'कर्मधारयः', 'अव्यययीभावः', 'तत्पुरुषः', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1013, 5, 1, 2, 'गव्यम् पदस्य संधिविच्छेदोऽस्ति', NULL, 'ग+ यम्', 'गो+ यम्', 'गो+ अम्', 'ग+ वयम्', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1014, 5, 1, 2, 'ससजुषोरुः सूत्रमस्ति', NULL, 'कुत्वविधायकम्', 'रुत्वविधायकम्', 'द्विसर्गविधायकम्', 'सत्वविधायकम', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1015, 5, 1, 2, 'व्याकरणस्य आद्यः प्रवक्ता मन्यते ?', NULL, 'पाणिनि', 'कात्यायन', 'इंद्र', 'ब्रह्मा', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1016, 5, 1, 2, 'उत्तरपदार्थप्रधानः समासः कः?', NULL, 'केवलसमासः', 'द्वन्द्वसमासः', 'द्विगुसमासः', 'तत्पुरुषसमासः', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1017, 5, 1, 2, 'माहेश्वरसूत्रेषु इत्संज्ञकाः वर्णाः कति?', NULL, '15', '14', '16', '42', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1018, 5, 1, 2, 'कति प्रत्याहाराः पाणिनिना सूत्रेषु व्यवहियते?', NULL, '42', '43', '44', '40', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1019, 5, 1, 2, 'यम्-अस्ति', NULL, 'मुखस्थानीय', 'नासिकास्थानीय', 'मूर्धास्थानीय', 'तालुस्थानीय', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1020, 5, 1, 2, 'हरि शब्दस्य पंचमी एकवचने रूपमस्ति', NULL, 'हरिभ्याम्', 'हरेः', 'हरये', 'हरिभ्यः', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1021, 5, 1, 2, 'प्रत्ययस्य प्रकारः अस्ति', NULL, 'संज्ञा', 'अव्ययः', 'धातुः', 'सुप्', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '6', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1022, 5, 1, 2, 'सर्वप्रथम एम.एन. राॅय द्वारा संविधान सभा के गठन का विचार रखा गया था ?', NULL, '1934', '1936', '1938', '1932', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1023, 5, 1, 2, '42 वें संविधान (संशोधन) अधिनियम 1976 द्वारा प्रस्तावना में कौनसा शब्द जोडे गये?', NULL, 'समाजवादी, पंथनिरपेक्ष और बंधुता', 'समाजवादी, पंथनिरपेक्ष और अखंडता', 'पंथनिरपेक्ष, लोकतंत्रात्मक व उपासना', 'बंधुता,उपासना और अखण्डता', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1024, 5, 1, 2, '86 वें संविधान संशोघन, 2002 द्वारा शिक्षा के मूल अधिकार को कोनसे अनुच्छेद में रखा गया है ?', NULL, '19वें', '20वें', '20(।)वें', '21(।)वें', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1025, 5, 1, 2, 'भारतीय संविधान में मूल कर्तव्यों को किस देश से लिया गया है ?', NULL, 'अमेरिका', 'जापान', 'सोवियत संघ', 'चीन', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1026, 5, 1, 2, 'लैंगिक अपराधों से बालकों का संरक्षण अधिनियम (च्व्ब्ैव् ।ब्ज् ) किस वर्ष लागू किया गया था ?', NULL, '2008', '2010', '2012', '2014', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1027, 5, 1, 2, 'राजस्थान में राज्य निर्वाचन आयोग की स्थापना किस वर्ष ली गई ?', NULL, '1950', '1956', '1994', '1999', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1028, 5, 1, 2, 'भारतीय संसद के अंग है ?', NULL, 'लोकसभा व राज्यसभा', 'लोकसभा,राज्यसभा व राष्ट्रपति', 'लोकसभा व विधानसभाएं', 'राष्ट्रपति व लोकसभा', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1029, 5, 1, 2, 'राष्ट्रपति द्वारा आंग्ल-भारतीय समुदाय के कितने सदस्यों को लोकसभा में मनोनीत किया जाता है ?', NULL, '12', '2', '8', '10', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1030, 5, 1, 2, 'भारतीय संघ की कार्यपालिका का वैधानिक प्रधान कौन होता है ?', NULL, 'प्रधानमंत्री', 'राष्ट्रपति', 'मुख्यन्यायाधीश', 'उप-राष्ट्रपति', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1031, 5, 1, 2, 'राज्यपाल के संबंध में कौनसा कथन सही नहीं है ?', NULL, 'नियुक्ति का प्रावधान अनुच्छेद 157 में है।', 'आयु 25 वर्ष या अधिक हो।', 'राज्य विधानसभा का सदस्य चुने जाने की योग्यता रखता है ।', 'पदावधि 5 वर्ष होती है ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1032, 5, 1, 2, 'सन् 1826 ई. में सर्वप्रथम हड.प्पा नामक स्थल पर प्राचीन सभ्यता के अवशेष मिलने की पुष्टि की ?', NULL, 'दयाराम साहनी', 'सर जाॅन मार्शल', 'जाॅन व बं्रटन बंधु', 'चाल्र्स मेसन', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1033, 5, 1, 2, '़ऋग्वैदिक काल में किन नदियों के बीच के क्षैत्र को ब्रह्यवर्त कहा गया है ?', NULL, 'सिन्धु गंगा', 'गंगा यमुना', 'सतलज यमुना', 'सिन्धु व्यास', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1034, 5, 1, 2, 'महावीर स्वामी जैन धर्म के कौनसे तीर्थंकर थे', NULL, '22वंे', '23वें', '21वें', '24वें', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1035, 5, 1, 2, 'गौतम बुद्व ने अपना पहला उपदेश किस स्थान पर दिया', NULL, 'लुम्बिनी', 'कुशीनगर', 'सारनाथ', 'प्रयाग', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1036, 5, 1, 2, 'निम्न में से कोंनसा सुमेलित नहीं है?महाजनपद-राजधानी', NULL, 'वत्स -कोशाम्बी', 'चेदि-शक्तिमति', 'कम्बोज-हाटक', 'अंग-अहिच्छत्र', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1037, 5, 1, 2, 'मौर्य शासक अशोक का कार्यकाल था ?', NULL, '256ई.पू.-230ई.पू.', '273ई.पू.-232ई.पू.', '298ई.पू.-273ई.पू.', '363ई.पू.-326ई.पू.', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1038, 5, 1, 2, 'राष्ट्रकूट वंश का संस्थापक था ?', NULL, 'ध्रुव', 'दंतिदुर्ग', 'अमोघवर्ष', 'कर्क', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1039, 5, 1, 2, 'भारतीय धर्म संस्कृति की प्रतीक भटार गुरू मुर्ति किस देश में स्थित है ?', NULL, 'इण्डोनेशिया', 'भुटान', 'श्रीलंका', 'कंबोडिया', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1040, 5, 1, 2, 'भक्ति आंदोलन के प्रथम प्रचारक माने जाते है ?', NULL, 'रामानुजाचार्य', 'शंकराचार्य', 'चैतन्य महाप्रभु', 'रामानन्द', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1041, 5, 1, 2, 'निम्न में से कौनसा सूफी सम्प्रदाय बाशरा शाखा से संबंधित है ?', NULL, 'चिश्ती', 'सुहरावर्दी', 'शतारिया', '1और 2 दोनों', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1042, 5, 1, 2, 'जोधपुर शासक जसवंत की मृत्यु के बाद औरंगजेब ने जौधपुर की गददी पर किसे बिढ़ाया?', NULL, 'इन्द्र सिंह', 'अमर सिंह', 'कर्ण सिंह', 'अजित सिंह', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1043, 5, 1, 2, 'भूराजस्व की दहशाला प्रणाली किसके द्वारा शुरू की गर्द थी ?', NULL, 'बाबर', 'हुमायुं', 'अकबर', 'ओंरगजेब', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1044, 5, 1, 2, 'दिल्ली के किला ए कुहना नामक किले का निर्माण किसके शासन काल में हुआ ?', NULL, 'शाहजहंा', 'शेरशाह', 'अकबर', 'मुहम्मद शाह', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1045, 5, 1, 2, 'बक्सर के युद्व के पश्चात किस संधि के तहत अंग्रेजों को बंगाल बिहार व उडी़सा की दीवानी प्राप्त हुई थी ?', NULL, 'अलीनगर संधि', 'इलाहाबाद संधि', 'बक्सर संधि', 'मुरादाबाद संधि', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1046, 5, 1, 2, 'निम्न में से सुमेलित नहीं है ?1857 क्रांति केन्द्र विद्रोह कुचलने वाला', NULL, 'दिल्ली निकाॅलसन, हड़सन', 'बरेली जनरल ह्यूरोज', 'कानपूर कैम्पबेल', 'इलाहाबाद कर्नल नील', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1047, 5, 1, 2, 'कंपनी अधिकारी, जिसकी 1857 की क्रांति के दौरान कोटा में हत्या कर दी गई थी, वह था -', NULL, 'कर्नल एबाॅट', 'मेजर बर्टन', 'कैप्टन शाॅवर्स', 'कैप्टन मेक मैसन ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1048, 5, 1, 2, 'बालाथल राजस्थान के ऐतिहासिक स्थानों में से एक है, जो कि ... में स्थित है।', NULL, 'सीकर', 'उदयपुर', 'भीलवाड़ा', 'हनुमानगढ़', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1049, 5, 1, 2, 'भूपसिंह का सम्बन्ध किस किसान आंदोलन से था ?', NULL, 'बेंगू किसान आंदोलन', 'बिजौलिया किसान आंदालेन', 'बंूदी किसान आंदोलन', 'बीकानेर किसान आंदोलन', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1050, 5, 1, 2, 'सर्वहितकारिणी सभा, चुरू की स्थापना किसने की ?', NULL, 'स्वामी गोपालदास', 'साधु सीतारामदास', 'हरविलास शारदा', 'रामनारायण चैधरी', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1051, 5, 1, 2, 'अर्जुनलाल सेठी ने 1905 में वर्धमान पाठशाला की स्थापना किस स्थान पर की थी ?', NULL, 'जयपुर', 'कोटा', 'करौली', 'उदयपुर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1052, 5, 1, 2, 'दिन-रात जिस कारण होते है, वह है-', NULL, 'भू-परिक्रमण', 'भू-परिभ्रमण', 'पृथ्वी का अक्षीय झुकाव', 'चंद्रमा का परिक्रमण', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1053, 5, 1, 2, 'विषुव या इक्विनाॅक्स वर्ष के दो काल, जब और रात बराबर होते हैं-', NULL, '21 मार्च और 23 सितंबर', '22 फरवरी', '15 अक्टूबर', '22 जुलाई और 22 दिसंबर', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1054, 5, 1, 2, 'अंतर्राष्ट्रीय दिनांक रेखा खींची जाती है-', NULL, 'अफ्रीका से होकर', 'प्रशांत महासागर से होकर', 'एशिया से होकर', 'अटलांटिक महासागर से होकर', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1055, 5, 1, 2, 'वायुदाब सबसे कम होता है -', NULL, 'शीत ऋतु में', 'बंसत ऋतु में', 'शरद ऋतु में', 'ग्रीष्म ऋतु में ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1056, 5, 1, 2, 'निम्नलिखित में से कौन सा युग्म सुमेलित नहीं है ?', NULL, 'फाॅन-आल्प्स पर्वत', 'बोरा - पोलैंड़', 'मिस्ट्रल-राइन घाटी', 'खमसिन-मिस्र', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1057, 5, 1, 2, 'टाइफून नामक चक्रवात से निम्नलिखित में से कौन-सा क्षेत्र अधिक प्रभावित होता है ?', NULL, 'आॅस्ट्रेलिया', 'चीन सागर', 'एशिया', 'अमेरिका', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1058, 5, 1, 2, 'जिस अक्षांश पर वार्षिक तापांतर न्यूनतम होता है वह है -', NULL, 'भूमध्य रेखा', 'कर्क रेखा', 'मकर रेखा', 'उत्तरी ध्रुव वुत्त', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1059, 5, 1, 2, 'कहा जाता है कि ताजमहल मार्बल कैंसर से ग्रस्त है। यह मार्बल कैंसर क्या है ?', NULL, 'निकटस्थ उधोगों से ताजमहल में धुआँ भरना', 'ताजमहल के मार्बल में बंडी़ संख्या में कवक लगना', 'अम्लीय वर्षा जो मार्बल का क्षरण करती है', 'कज्जल कणों के कारण मार्बल का परलर होना', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1060, 5, 1, 2, 'सूर्य से आने वाली हानिकारक पराबैंगनी विकिरणों से होता है', NULL, 'फेफडें का कैंसर', 'मुख का कैंसर', 'त्वचा का कैंसर', 'यकृत का कैंसर', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1061, 5, 1, 2, 'सवाना का सर्वाधिक विस्तार है -', NULL, 'अफ्रीका में', 'एशिया में', 'दक्षिण अमेरिका में', 'उत्तर किसी से भी नही', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1062, 5, 1, 2, 'निम्नलिखित में से कौन सा शहर दिल्ली के सबसे समीप के देशांतर पर स्थित है ?', NULL, 'बंगलुरू', 'हैदराबाद', 'नागपुर', 'पुणे', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1063, 5, 1, 2, 'निम्नलिखित में से कौन सी पहाड़ियां राजस्थान में विंध्यन पर्वत श्रेणियों का विस्तार हैं ?', NULL, 'मुकंदरा पहाड़ियां', 'डोरा पर्वत', 'अलवर पर्वत', 'गिरवा पर्वत', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1064, 5, 1, 2, 'निम्नलिखित में से कौन सी एक कृत्रिम झील है ?', NULL, 'कोडाईकनाल', 'कोल्लेरू', 'नैनीताल', 'रेणुका', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1065, 5, 1, 2, 'निम्नलिखित में से कौन सा भौगोलिक रूप से ग्रेट निकोबार के सबसे निकट है ?', NULL, 'सुमात्रा', 'बोर्नियो', 'जावा', 'श्रीलंका', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1066, 5, 1, 2, 'कयाल क्या है ?', NULL, 'तराई मैदान', 'गंगा डेल्टा', 'दक्कन पठार की रेगुड़', 'केरल के लैगून', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1067, 5, 1, 2, 'काली क्रांति संबंधित है -', NULL, 'मत्स्य उत्पादन', 'कोयला उत्पादन', 'कच्चा तेल उत्पादन', 'सरसों उत्पादन', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1068, 5, 1, 2, 'निम्नलिखित में से कौन सा एक पठार माउण्ट आबू से लगा हुआ है ', NULL, 'भोराठ पठार', 'हाड़ौती पठार', 'उरिया पठार', 'उपरमाल', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1069, 5, 1, 2, 'राजस्थान का प्रमुख मक्का उत्पादक क्षेत्र है ?', NULL, 'उत्तरी भाग', 'दक्षिण भाग', 'पूर्वी भाग', 'पश्चिमी भाग', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1070, 5, 1, 2, 'राजस्थान में सर्वप्रथम किस उद्योग की स्थापना हुई थी ?', NULL, 'सीमेंट', 'चीनी', 'सूती-वस्त्र', 'काँच उद्योग ', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1071, 5, 1, 2, 'निम्नलिखित में से महात्मा गांधी का भारत में पहला सत्याग्रह कौनसा था', NULL, 'अहमदाबाद', 'बारदोली', 'चम्पारन', 'वैयक्तिक', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1072, 5, 1, 2, 'शिक्षा में उद्देश्यों का वर्गीकरण दिया गया है-', NULL, 'जाॅन डेवी द्वारा', 'स्मिथ द्वारा', 'बी.एस.ब्लुम द्वारा', 'आई. के. डेविस द्वारा', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1073, 5, 1, 2, 'पाठ्यक्रम के क्षेत्र में शामिल है', NULL, 'विद्यालय की आंतरिक क्रियाएँ', 'विद्यालय की बाह्य क्रियाएँ', 'उपरोक्त दोनों', 'उपरोक्त में से कोई नहीं', NULL, NULL, NULL, NULL, NULL, 'C', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1074, 5, 1, 2, 'सामाजिक अध्ययन की पाठ्यपुस्तक, अनुरूप होनी चाहिए।', NULL, 'लेखक के', 'विद्यार्थी के', 'शिक्षक के', 'सरकार के', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1075, 5, 1, 2, 'सामाजिक अध्ययन के शिक्षक को बल देना चाहिए', NULL, 'विषय के संबंधित सूचना देने पर', 'विद्यार्थियों की सामाजिक मुद्दों के प्रति चिन्तन शक्ति के विकास पर', 'विद्यार्थियों को परीक्षा के लिए तैयार करने पर', 'विद्यार्थियों के भाषा विकास पर ', NULL, NULL, NULL, NULL, NULL, 'B', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1076, 5, 1, 2, 'सामाजिक अध्ययन की शिक्षण में ऐतिहासिक स्थलों का भ्रमण उपयोगी है', NULL, 'विषय के प्रति रुचि उत्पन्न करने में।', 'प्रत्यक्ष सूचना प्रदान करने में।', 'विषयवस्तु की बेहतर समझ में।', 'उपरोक्त सभी।', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1077, 5, 1, 2, 'प्रायोजना एक उद्देश्यपूर्ण कार्य है जो संलग्नता के साथ सामाजिक वातावरण में किया जाता है। यह कथन है', NULL, 'ब्लूम का', 'क्रो एण्ड क्रो का', 'जॉन डेवी का', 'किलपैट्रिक का ', NULL, NULL, NULL, NULL, NULL, 'D', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1078, 5, 1, 2, 'सामाजिक अध्ययन में निम्न में से कौनसी परीक्षा छात्रों के स्वतन्त्र चिंतन के मूल्यांकन का अवसर प्रदान करता है? ', NULL, 'वस्तुनिष्ठ प्रकार की परीक्षा', 'निबंधात्मक प्रकार की परीक्षा', 'लघु-उत्तरात्मक प्रकार की परीक्षा', 'अति-लघुत्तरात्मक प्रकार की परीक्षा', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1079, 5, 1, 2, '<p>बी.एस. ब्लूम ने ज्ञानात्मक उद्देश्य का वर्गीकरण कितने भागो में किया<br></p>', NULL, '4', '5', '6', '7', NULL, NULL, NULL, NULL, NULL, 'C', '<p>1&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; A</p><p>2&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; B</p><p>3&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; C</p><p>4&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; D</p>', NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1080, 5, 1, 2, 'सामाजिक अध्ययन में मानव का मानव से तथा मानव का उसके वातावरण से संबंधित पारस्परिक संबंधो का अध्ययन किया जाता है कथन है', NULL, 'जीरो लीमेक', 'माइकेलिस', 'आर.टेगौर', 'रामानुज ', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04'),
(1081, 5, 1, 2, 'सामाजिक अध्ययन विषय से संबंधित असत्य कथन है', NULL, 'यह पक्षपातपूर्ण दृष्टिकोण विकसित करता है', 'यह मानवीय विचार विकसित करता है', 'यह वातावरण के प्रति जागरूक बनती है', 'यह ऐतिहासिक प्रतिको के प्रति सम्मान उत्पन्न करता है', NULL, NULL, NULL, NULL, NULL, 'A', NULL, NULL, NULL, NULL, '7', 0.00, 0.00, '2022-08-19 08:10:04', '2022-08-19 08:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(12) NOT NULL,
  `slug` varchar(230) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `discount` varchar(234) NOT NULL,
  `status` int(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `slug`, `title`, `discount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'anil', 'Referral Discount', '10', 1, '2022-10-08 13:24:19', '2022-10-10 07:39:31');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `attempt_id` int(11) UNSIGNED NOT NULL,
  `student_id` int(255) NOT NULL,
  `test_id` int(11) UNSIGNED NOT NULL,
  `question_id` int(11) UNSIGNED NOT NULL,
  `student_ans` varchar(100) DEFAULT NULL,
  `right_ans` varchar(100) NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `select_lang` varchar(255) DEFAULT NULL,
  `mark_review` varchar(120) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `remark` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`id`, `attempt_id`, `student_id`, `test_id`, `question_id`, `student_ans`, `right_ans`, `language`, `select_lang`, `mark_review`, `created_at`, `updated_at`, `remark`) VALUES
(1, 620, 5, 5, 812, 'A', 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(2, 620, 5, 5, 813, 'C', 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(3, 620, 5, 5, 814, 'C', 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(4, 620, 5, 5, 815, 'C', 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(5, 620, 5, 5, 816, 'C', 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(6, 620, 5, 5, 817, 'B', 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(7, 620, 5, 5, 818, 'C', 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(8, 620, 5, 5, 819, 'B', 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(9, 620, 5, 5, 820, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(10, 620, 5, 5, 821, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(11, 620, 5, 5, 822, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(12, 620, 5, 5, 823, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(13, 620, 5, 5, 824, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(14, 620, 5, 5, 825, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(15, 620, 5, 5, 826, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(16, 620, 5, 5, 827, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(17, 620, 5, 5, 828, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(18, 620, 5, 5, 829, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(19, 620, 5, 5, 830, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(20, 620, 5, 5, 831, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(21, 620, 5, 5, 832, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(22, 620, 5, 5, 833, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(23, 620, 5, 5, 834, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(24, 620, 5, 5, 835, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(25, 620, 5, 5, 836, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(26, 620, 5, 5, 837, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(27, 620, 5, 5, 838, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(28, 620, 5, 5, 839, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(29, 620, 5, 5, 840, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(30, 620, 5, 5, 841, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(31, 620, 5, 5, 842, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(32, 620, 5, 5, 843, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(33, 620, 5, 5, 844, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(34, 620, 5, 5, 845, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(35, 620, 5, 5, 846, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(36, 620, 5, 5, 847, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(37, 620, 5, 5, 848, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(38, 620, 5, 5, 849, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(39, 620, 5, 5, 850, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(40, 620, 5, 5, 851, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(41, 620, 5, 5, 852, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(42, 620, 5, 5, 853, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(43, 620, 5, 5, 854, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(44, 620, 5, 5, 855, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(45, 620, 5, 5, 856, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(46, 620, 5, 5, 857, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(47, 620, 5, 5, 858, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(48, 620, 5, 5, 859, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(49, 620, 5, 5, 860, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(50, 620, 5, 5, 861, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(51, 620, 5, 5, 862, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(52, 620, 5, 5, 863, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(53, 620, 5, 5, 864, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(54, 620, 5, 5, 865, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(55, 620, 5, 5, 866, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(56, 620, 5, 5, 867, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(57, 620, 5, 5, 868, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(58, 620, 5, 5, 869, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(59, 620, 5, 5, 870, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(60, 620, 5, 5, 871, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(61, 620, 5, 5, 962, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(62, 620, 5, 5, 963, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(63, 620, 5, 5, 964, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(64, 620, 5, 5, 965, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(65, 620, 5, 5, 966, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(66, 620, 5, 5, 967, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(67, 620, 5, 5, 968, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(68, 620, 5, 5, 969, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(69, 620, 5, 5, 970, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(70, 620, 5, 5, 971, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(71, 620, 5, 5, 972, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(72, 620, 5, 5, 973, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(73, 620, 5, 5, 974, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(74, 620, 5, 5, 975, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(75, 620, 5, 5, 976, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(76, 620, 5, 5, 977, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(77, 620, 5, 5, 978, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(78, 620, 5, 5, 979, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(79, 620, 5, 5, 980, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(80, 620, 5, 5, 981, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(81, 620, 5, 5, 982, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(82, 620, 5, 5, 983, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(83, 620, 5, 5, 984, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(84, 620, 5, 5, 985, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(85, 620, 5, 5, 986, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(86, 620, 5, 5, 987, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(87, 620, 5, 5, 988, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(88, 620, 5, 5, 989, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(89, 620, 5, 5, 990, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(90, 620, 5, 5, 991, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(91, 620, 5, 5, 1022, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(92, 620, 5, 5, 1023, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(93, 620, 5, 5, 1024, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(94, 620, 5, 5, 1025, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(95, 620, 5, 5, 1026, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(96, 620, 5, 5, 1027, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(97, 620, 5, 5, 1028, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(98, 620, 5, 5, 1029, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(99, 620, 5, 5, 1030, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(100, 620, 5, 5, 1031, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(101, 620, 5, 5, 1032, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(102, 620, 5, 5, 1033, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(103, 620, 5, 5, 1034, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(104, 620, 5, 5, 1035, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(105, 620, 5, 5, 1036, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(106, 620, 5, 5, 1037, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(107, 620, 5, 5, 1038, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(108, 620, 5, 5, 1039, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(109, 620, 5, 5, 1040, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(110, 620, 5, 5, 1041, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(111, 620, 5, 5, 1042, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(112, 620, 5, 5, 1043, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(113, 620, 5, 5, 1044, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(114, 620, 5, 5, 1045, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(115, 620, 5, 5, 1046, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(116, 620, 5, 5, 1047, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(117, 620, 5, 5, 1048, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(118, 620, 5, 5, 1049, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(119, 620, 5, 5, 1050, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(120, 620, 5, 5, 1051, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(121, 620, 5, 5, 1052, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(122, 620, 5, 5, 1053, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(123, 620, 5, 5, 1054, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(124, 620, 5, 5, 1055, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(125, 620, 5, 5, 1056, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(126, 620, 5, 5, 1057, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(127, 620, 5, 5, 1058, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(128, 620, 5, 5, 1059, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(129, 620, 5, 5, 1060, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(130, 620, 5, 5, 1061, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(131, 620, 5, 5, 1062, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(132, 620, 5, 5, 1063, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(133, 620, 5, 5, 1064, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(134, 620, 5, 5, 1065, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(135, 620, 5, 5, 1066, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(136, 620, 5, 5, 1067, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(137, 620, 5, 5, 1068, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(138, 620, 5, 5, 1069, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(139, 620, 5, 5, 1070, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(140, 620, 5, 5, 1071, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(141, 620, 5, 5, 1072, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(142, 620, 5, 5, 1073, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(143, 620, 5, 5, 1074, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(144, 620, 5, 5, 1075, NULL, 'B', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(145, 620, 5, 5, 1076, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(146, 620, 5, 5, 1077, NULL, 'D', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(147, 620, 5, 5, 1078, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(148, 620, 5, 5, 1079, NULL, 'C', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(149, 620, 5, 5, 1080, NULL, 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(150, 620, 5, 5, 1081, 'B', 'A', NULL, NULL, '0', '2022-09-18 04:21:58', '2022-09-18 04:21:58', NULL),
(151, 621, 5, 5, 812, 'A', 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(152, 621, 5, 5, 813, 'C', 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(153, 621, 5, 5, 814, 'B', 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(154, 621, 5, 5, 815, 'C', 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(155, 621, 5, 5, 816, 'D', 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(156, 621, 5, 5, 817, 'D', 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(157, 621, 5, 5, 818, 'D', 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(158, 621, 5, 5, 819, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(159, 621, 5, 5, 820, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(160, 621, 5, 5, 821, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(161, 621, 5, 5, 822, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(162, 621, 5, 5, 823, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(163, 621, 5, 5, 824, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(164, 621, 5, 5, 825, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(165, 621, 5, 5, 826, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(166, 621, 5, 5, 827, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(167, 621, 5, 5, 828, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(168, 621, 5, 5, 829, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(169, 621, 5, 5, 830, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(170, 621, 5, 5, 831, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(171, 621, 5, 5, 832, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(172, 621, 5, 5, 833, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(173, 621, 5, 5, 834, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(174, 621, 5, 5, 835, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(175, 621, 5, 5, 836, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(176, 621, 5, 5, 837, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(177, 621, 5, 5, 838, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(178, 621, 5, 5, 839, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(179, 621, 5, 5, 840, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(180, 621, 5, 5, 841, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(181, 621, 5, 5, 842, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(182, 621, 5, 5, 843, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(183, 621, 5, 5, 844, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(184, 621, 5, 5, 845, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(185, 621, 5, 5, 846, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(186, 621, 5, 5, 847, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(187, 621, 5, 5, 848, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(188, 621, 5, 5, 849, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(189, 621, 5, 5, 850, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(190, 621, 5, 5, 851, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(191, 621, 5, 5, 852, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(192, 621, 5, 5, 853, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(193, 621, 5, 5, 854, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(194, 621, 5, 5, 855, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(195, 621, 5, 5, 856, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(196, 621, 5, 5, 857, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(197, 621, 5, 5, 858, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(198, 621, 5, 5, 859, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(199, 621, 5, 5, 860, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(200, 621, 5, 5, 861, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(201, 621, 5, 5, 862, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(202, 621, 5, 5, 863, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(203, 621, 5, 5, 864, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(204, 621, 5, 5, 865, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(205, 621, 5, 5, 866, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(206, 621, 5, 5, 867, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(207, 621, 5, 5, 868, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(208, 621, 5, 5, 869, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(209, 621, 5, 5, 870, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(210, 621, 5, 5, 871, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(211, 621, 5, 5, 962, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(212, 621, 5, 5, 963, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(213, 621, 5, 5, 964, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(214, 621, 5, 5, 965, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(215, 621, 5, 5, 966, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(216, 621, 5, 5, 967, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(217, 621, 5, 5, 968, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(218, 621, 5, 5, 969, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(219, 621, 5, 5, 970, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(220, 621, 5, 5, 971, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(221, 621, 5, 5, 972, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(222, 621, 5, 5, 973, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(223, 621, 5, 5, 974, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(224, 621, 5, 5, 975, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(225, 621, 5, 5, 976, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(226, 621, 5, 5, 977, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(227, 621, 5, 5, 978, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(228, 621, 5, 5, 979, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(229, 621, 5, 5, 980, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(230, 621, 5, 5, 981, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(231, 621, 5, 5, 982, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(232, 621, 5, 5, 983, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(233, 621, 5, 5, 984, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(234, 621, 5, 5, 985, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(235, 621, 5, 5, 986, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(236, 621, 5, 5, 987, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(237, 621, 5, 5, 988, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(238, 621, 5, 5, 989, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(239, 621, 5, 5, 990, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(240, 621, 5, 5, 991, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(241, 621, 5, 5, 1022, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(242, 621, 5, 5, 1023, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(243, 621, 5, 5, 1024, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(244, 621, 5, 5, 1025, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(245, 621, 5, 5, 1026, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(246, 621, 5, 5, 1027, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(247, 621, 5, 5, 1028, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(248, 621, 5, 5, 1029, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(249, 621, 5, 5, 1030, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(250, 621, 5, 5, 1031, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(251, 621, 5, 5, 1032, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(252, 621, 5, 5, 1033, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(253, 621, 5, 5, 1034, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(254, 621, 5, 5, 1035, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(255, 621, 5, 5, 1036, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(256, 621, 5, 5, 1037, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(257, 621, 5, 5, 1038, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(258, 621, 5, 5, 1039, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(259, 621, 5, 5, 1040, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(260, 621, 5, 5, 1041, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(261, 621, 5, 5, 1042, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(262, 621, 5, 5, 1043, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(263, 621, 5, 5, 1044, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(264, 621, 5, 5, 1045, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(265, 621, 5, 5, 1046, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(266, 621, 5, 5, 1047, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(267, 621, 5, 5, 1048, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(268, 621, 5, 5, 1049, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(269, 621, 5, 5, 1050, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(270, 621, 5, 5, 1051, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(271, 621, 5, 5, 1052, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(272, 621, 5, 5, 1053, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(273, 621, 5, 5, 1054, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(274, 621, 5, 5, 1055, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(275, 621, 5, 5, 1056, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(276, 621, 5, 5, 1057, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(277, 621, 5, 5, 1058, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(278, 621, 5, 5, 1059, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(279, 621, 5, 5, 1060, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(280, 621, 5, 5, 1061, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(281, 621, 5, 5, 1062, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(282, 621, 5, 5, 1063, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(283, 621, 5, 5, 1064, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(284, 621, 5, 5, 1065, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(285, 621, 5, 5, 1066, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(286, 621, 5, 5, 1067, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(287, 621, 5, 5, 1068, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(288, 621, 5, 5, 1069, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(289, 621, 5, 5, 1070, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(290, 621, 5, 5, 1071, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(291, 621, 5, 5, 1072, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(292, 621, 5, 5, 1073, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(293, 621, 5, 5, 1074, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(294, 621, 5, 5, 1075, NULL, 'B', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(295, 621, 5, 5, 1076, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(296, 621, 5, 5, 1077, NULL, 'D', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(297, 621, 5, 5, 1078, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(298, 621, 5, 5, 1079, NULL, 'C', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(299, 621, 5, 5, 1080, NULL, 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL),
(300, 621, 5, 5, 1081, 'D', 'A', NULL, NULL, '0', '2022-10-26 20:59:05', '2022-10-26 20:59:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'Admin', '2020-09-19 18:30:00', '2020-09-19 18:30:00'),
(2, 'Student', 'Student', 'Student', '2020-09-19 18:30:00', '2020-09-19 18:30:00'),
(3, 'Teacher', 'Teacher', 'Teacher', '2020-09-21 00:18:02', '2020-09-21 00:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(15, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(94, 2),
(95, 2),
(96, 2),
(98, 2),
(100, 2),
(101, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(3, 3),
(4, 3),
(32, 3),
(33, 3),
(93, 3);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `heading` varchar(200) DEFAULT NULL,
  `headingone` varchar(200) DEFAULT NULL,
  `headingtwo` varchar(200) DEFAULT NULL,
  `headingthree` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `exp_one` varchar(200) DEFAULT NULL,
  `exp_two` varchar(200) DEFAULT NULL,
  `exp_three` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `image_one` varchar(200) DEFAULT NULL,
  `image_two` varchar(200) DEFAULT NULL,
  `image_three` varchar(200) DEFAULT NULL,
  `discription` longtext,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `descriptiontwo` longtext,
  `descriptionthree` longtext,
  `descriptionfour` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `slug`, `heading`, `headingone`, `headingtwo`, `headingthree`, `title`, `exp_one`, `exp_two`, `exp_three`, `name`, `image`, `image_one`, `image_two`, `image_three`, `discription`, `created_at`, `updated_at`, `descriptiontwo`, `descriptionthree`, `descriptionfour`) VALUES
(17, NULL, 'Class', 'What do we have to offer', 'How we are better than others', 'How do we work', 'Face to face learning', 'Experienced instructor', 'Smart Classes', 'Online support 24/7', NULL, 'storage/image/image1663676253.jpg', 'storage/image/image_one1663676253.jpg', 'storage/image/image_two1663676253.jpg', 'storage/image/image_three1663676253.png', 'There are many front-line coaching institutes then there is us, Edtech Company “CLASSWALA”. We came into existence in 2022 with a vision of affordable education in the country. CLASSWALA is just not creative and innovative in the approach of teaching but also imparts the best knowledge to its students. We have a motive to share, we have a purpose to serve. With the existence of CLASSWALA, we will be keeping our edge sharp to provide quality education at an affordable price to our students. We will just not make them independent but also Self- reliant.', '2022-03-04 00:45:21', '2022-09-20 19:17:33', 'We are here to serve our students and fellow teachers. Our bond with these two will be seen as impeccable strength in the coming years. To our students, we will provide them the best quality education which includes live classes, Mock tests, Crash courses, Live Videos, E-Books. Whereas, teachers will be our prestigious influencers. It\'s just like in the world teachers are a version of influencers who shape and build a child\'s future. We will give teachers an ed-tech platform where they can explore themselves in the world of teaching. With the advancement, we will provide progressive self-employment among teachers.', 'We are here to serve our students and fellow teachers. Our bond with these two will be seen as impeccable strength in the coming years. To our students, we will provide them the best quality education which includes live classes, Mock tests, Crash courses, Live Videos, E-Books. Whereas, teachers will be our prestigious influencers. It\'s just like in the world teachers are a version of influencers who shape and build a child\'s future. We will give teachers an ed-tech platform where they can explore themselves in the world of teaching. With the advancement, we will provide progressive self-employment among teachers.', 'We are here to serve our students and fellow teachers. Our bond with these two will be seen as impeccable strength in the coming years. To our students, we will provide them the best quality education which includes live classes, Mock tests, Crash courses, Live Videos, E-Books. Whereas, teachers will be our prestigious influencers. It\'s just like in the world teachers are a version of influencers who shape and build a child\'s future. We will give teachers an ed-tech platform where they can explore themselves in the world of teaching. With the advancement, we will provide progressive self-employment among teachers.');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `course_id` int(12) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discription` longtext COLLATE utf8_unicode_ci,
  `type` varchar(123) COLLATE utf8_unicode_ci DEFAULT '0',
  `sequence` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_files`
--

CREATE TABLE `store_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_id` int(12) DEFAULT NULL,
  `title` varchar(230) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `store_files`
--

INSERT INTO `store_files` (`id`, `slug`, `store_id`, `title`, `file`, `created_at`, `updated_at`) VALUES
(1, 'chapter-1', 1, 'Chapter 1', 'file/file1662556824270.pdf', '2022-09-07 20:20:24', '2022-09-07 20:20:24'),
(2, 'chapter-2', 1, 'Chapter 2', 'file/file1662556824581.pdf', '2022-09-07 20:20:24', '2022-09-07 20:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `store_videos`
--

CREATE TABLE `store_videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(122) COLLATE utf8_unicode_ci DEFAULT NULL,
  `store_id` int(12) DEFAULT NULL,
  `thumbnail` varchar(245) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `store_videos`
--

INSERT INTO `store_videos` (`id`, `slug`, `store_id`, `thumbnail`, `video_link`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'video/video1662561428374.jpg', 'https://www.youtube.com/watch?v=CzMbznbN3xk', '2022-09-07 20:20:24', '2022-09-07 21:37:08'),
(2, NULL, 1, 'video/video1662561428374.jpg', 'https://www.youtube.com/watch?v=CzMbznbN3xk', '2022-09-07 20:20:24', '2022-09-07 21:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `subcourses`
--

CREATE TABLE `subcourses` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `course_name` varchar(200) DEFAULT NULL,
  `subcourse_name` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcourses`
--

INSERT INTO `subcourses` (`id`, `slug`, `course_name`, `subcourse_name`, `created_at`, `updated_at`) VALUES
(24, 'jet', 'agriculture', 'JET', '2022-04-13 19:29:05', '2022-04-13 19:29:05'),
(25, 'icar', 'agriculture', 'ICAR', '2022-04-13 19:29:19', '2022-04-13 19:29:19'),
(26, 'bhu', 'agriculture', 'BHU', '2022-04-13 19:29:32', '2022-04-13 19:29:32'),
(27, 'class-6', 'school', 'CLASS 6', '2022-04-13 19:29:56', '2022-04-13 19:29:56'),
(28, 'class-7', 'school', 'CLASS 7', '2022-04-13 19:30:19', '2022-04-13 19:30:19'),
(29, 'class-8', 'school', 'CLASS 8', '2022-04-13 19:30:43', '2022-04-13 19:30:43'),
(30, 'class-9', 'school', 'CLASS 9', '2022-04-13 19:31:06', '2022-04-13 19:31:06'),
(31, 'class-10', 'school', 'CLASS 10', '2022-04-13 19:31:23', '2022-04-13 19:31:23'),
(32, 'class-11', 'school', 'CLASS 11', '2022-04-13 19:31:43', '2022-04-13 19:31:43'),
(33, 'class-12', 'school', 'CLASS 12', '2022-04-13 19:31:59', '2022-04-13 19:31:59'),
(35, 'pre-foundation', 'neet-ug', 'PRE FOUNDATION', '2022-04-13 19:35:10', '2022-04-13 19:35:10'),
(36, 'sankalp', 'neet-ug', 'SANKALP', '2022-04-13 19:35:37', '2022-04-13 19:35:37'),
(37, 'sangarsh', 'neet-ug', 'SANGARSH', '2022-04-13 19:36:27', '2022-04-13 19:36:27'),
(39, 'samarth-1', 'neet-ug', 'SAMARTH', '2022-04-13 19:40:00', '2022-04-13 19:40:00'),
(40, 'saksham', 'neet-ug', 'SAKSHAM', '2022-04-13 19:41:02', '2022-04-13 19:41:02'),
(41, 'class-13', 'school', 'Class 13', '2022-04-14 16:25:53', '2022-04-14 16:25:53'),
(42, 'class-14', 'school', 'CLASS 14', '2022-04-14 16:29:44', '2022-04-14 16:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` float NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sequence` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `slug`, `teacher_id`, `course_id`, `name`, `discount`, `price`, `image`, `sequence`, `created_at`, `updated_at`) VALUES
(1, 'hindi', 3, 2, 'Hindi', 12, 12, 'image/image1658897688.png', 1, '2022-07-07 16:48:10', '2022-07-27 11:54:48'),
(2, 'english', 32, 2, 'English', 1213, 12345, 'image/image1658897711.png', NULL, '2022-07-07 16:51:57', '2022-10-31 20:14:37'),
(3, 'test2', 32, 2, 'Social Science', 0, 0, 'image/image1658897782.png', NULL, '2022-07-15 14:43:32', '2022-10-29 14:05:09'),
(4, 'english-1', 4, 2, 'Sanskrit', 0, 0, 'image/image1658897744.png', 3, '2022-07-15 14:44:12', '2022-07-27 11:55:44'),
(5, 'general-science', 32, 2, 'Science and Maths', 0, 0, 'image/image1658897835.png', NULL, '2022-07-27 11:57:15', '2022-10-29 14:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED DEFAULT NULL,
  `subject_id` int(11) UNSIGNED DEFAULT NULL,
  `ebook_note_id` int(11) DEFAULT NULL,
  `live_class_id` int(10) DEFAULT NULL,
  `test_id` int(13) DEFAULT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `payment` longtext COLLATE utf8_unicode_ci,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `course_id`, `subject_id`, `ebook_note_id`, `live_class_id`, `test_id`, `amount`, `payment`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 1, NULL, NULL, NULL, 5, 999, NULL, 'success', '2022-08-10 13:41:36', '2022-08-10 13:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `sub_courses`
--

CREATE TABLE `sub_courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `course_id` int(13) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_courses`
--

INSERT INTO `sub_courses` (`id`, `slug`, `title`, `course_id`, `created_at`, `updated_at`) VALUES
(2, 'sub-course1', 'REET LEVEL 2', 2, '2022-08-10 19:32:46', '2022-08-19 20:03:02'),
(3, 'sub-course-2', 'REET LEVEL 1', 2, '2022-08-16 14:49:05', '2022-08-19 20:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `termcondition`
--

CREATE TABLE `termcondition` (
  `id` int(11) NOT NULL,
  `heading` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `discription` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `termcondition`
--

INSERT INTO `termcondition` (`id`, `heading`, `image`, `discription`, `created_at`, `updated_at`) VALUES
(5, '1. Ownership of site agreement to terms of use', 'http://classwala.parkensolution.com/storage/image/image1649833066.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat.\r\n\r\nIt has survived not only five centuries, but also the leap into electronic typesetting.\r\nContrary to popular belief, Lorem Ipsum is not simply random text.\r\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\r\nVarious versions have evolved over the years, sometimes by accident sometimes on purpose.', '2022-03-05 02:05:16', '2022-04-13 13:57:46'),
(6, '2. Purchases other terms and conditions', 'http://classwala.parkensolution.com/storage/image/image1649833073.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat nulla pari atur. Excepteur sint occaecat cupidatat non proident.', '2022-03-05 02:05:38', '2022-04-13 13:57:53'),
(7, '3. Legal disclaimers', 'http://classwala.parkensolution.com/storage/image/image1649833088.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat nulla pari atur. Excepteur sint occaecat cupidatat non proident.', '2022-03-05 02:06:03', '2022-04-13 13:58:08'),
(8, '4. Our proprietary rights', 'http://classwala.parkensolution.com/storage/image/image1649833100.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat nulla pari atur. Excepteur sint occaecat cupidatat non proident.\r\n\r\nIt has survived not only five centuries, but also the leap into electronic typesetting.\r\nContrary to popular belief, Lorem Ipsum is not simply random text.\r\nThe point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.\r\nVarious versions have evolved over the years, sometimes by accident sometimes on purpose.', '2022-03-05 02:06:25', '2022-04-13 13:58:20'),
(9, '5. Service rules', 'http://classwala.parkensolution.com/storage/image/image1649833108.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut abore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident.', '2022-03-05 02:06:45', '2022-04-13 13:58:28'),
(10, '6. Limitation of liability', 'http://classwala.parkensolution.com/storage/image/image1649833120.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea com modo consequat. Duis aute irure dolor in reprehenderit in voluptate.', '2022-03-05 02:07:04', '2022-04-13 13:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(13) UNSIGNED NOT NULL,
  `slug` text NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(255) DEFAULT 'image/Test1658465480.png',
  `courseId` int(10) UNSIGNED NOT NULL,
  `subjectId` int(10) UNSIGNED NOT NULL,
  `price` varchar(10) NOT NULL,
  `is_schedule` tinyint(3) NOT NULL DEFAULT '0',
  `is_reet` tinyint(4) NOT NULL DEFAULT '0',
  `start_date_time` int(255) DEFAULT NULL,
  `end_date_time` int(255) DEFAULT NULL,
  `syllabus` longtext CHARACTER SET utf8mb4,
  `totalMarks` varchar(10) NOT NULL DEFAULT '0',
  `negativeMarks` varchar(10) NOT NULL DEFAULT '0',
  `duration` varchar(10) NOT NULL DEFAULT '0',
  `schedule` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `trading` int(13) NOT NULL DEFAULT '0',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `slug`, `title`, `image`, `courseId`, `subjectId`, `price`, `is_schedule`, `is_reet`, `start_date_time`, `end_date_time`, `syllabus`, `totalMarks`, `negativeMarks`, `duration`, `schedule`, `expiry`, `status`, `trading`, `updated_at`, `created_at`) VALUES
(5, 'reet-exam', '3rd Grade Hindi Test 1', 'image/Test1660921529.png', 2, 1, '0', 0, 0, NULL, NULL, 'Testing', '300', '0.33', '180', NULL, NULL, 0, 0, '2022-11-01 14:53:51', '2022-08-19 15:05:29'),
(7, '3rd-grade-hindi-test-2', '3rd Grade Hindi Test  2', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1667629800, 1667716200, NULL, '300', '0.33', '3', NULL, NULL, 0, 0, '2022-10-31 08:43:07', '2022-10-31 07:44:08'),
(8, '3rd-grade-hindi-test-3', '3rd Grade  Hindi Test 3', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1668297600, 1668340740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 12:25:32', '2022-10-31 12:25:32'),
(9, '3rd-grade-hindi-test-4', '3rd Grade Hindi Test 4', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1668902400, 1668945540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 12:27:29', '2022-10-31 12:27:29'),
(10, '3rd-grade-hindi-test-5', '3rd Grade Hindi Test 5', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1669507200, 1669550340, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 12:49:10', '2022-10-31 12:49:10'),
(11, '3rd-grade-hindi-test-6', '3rd Grade Hindi Test 6', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1670112000, 1670155140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 12:52:05', '2022-10-31 12:52:05'),
(12, '3rd-grade-hindi-test-7', '3rd Grade Hindi Test 7', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1670716800, 1670759940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 12:56:53', '2022-10-31 12:56:53'),
(13, '3rd-grade-hindi-test-8', '3rd Grade Hindi Test 8', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1671321600, 1671364740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 12:58:27', '2022-10-31 12:58:27'),
(14, '3rd-grade-hindi-test-9', '3rd Grade Hindi Test 9', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1671926400, 1671969540, NULL, '180', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:01:00', '2022-10-31 13:01:00'),
(15, '3rd-grade-hindi-test-10', '3rd Grade Hindi Test 10', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1672444800, 1672531140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:12:15', '2022-10-31 13:12:15'),
(16, '3rd-grade-hindi-test-11', '3rd Grade Hindi Test 11', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1672790400, 1672617540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:17:20', '2022-10-31 13:17:20'),
(17, '3rd-grade-hindi-test-12', '3rd Grade Hindi Test 12', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1673136000, 1673222340, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:18:29', '2022-10-31 13:18:29'),
(18, '3rd-grade-hindi-test-13', '3rd Grade Hindi Test 13', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1673481600, 1673567940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:19:28', '2022-10-31 13:19:28'),
(19, '3rd-grade-hindi-test-14', '3rd Grade Hindi Test 14', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1673827200, 1674259140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:20:41', '2022-10-31 13:20:41'),
(20, '3rd-grade-hindi-test-15', '3rd Grade Hindi Test 15', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1674086400, 1674172740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:21:44', '2022-10-31 13:21:44'),
(21, '3rd-grade-hindi-test-16', '3rd Grade Hindi Test 16', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1674345600, 1674431940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:22:27', '2022-10-31 13:22:27'),
(22, '3rd-grade-hindi-test-17', '3rd Grade Hindi Test 17', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1674518400, 1674604740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:23:18', '2022-10-31 13:23:18'),
(23, '3rd-grade-hindi-test-18', '3rd Grade Hindi Test 18', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1674777600, 1674863940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:24:04', '2022-10-31 13:24:04'),
(24, '3rd-grade-hindi-test-19', '3rd Grade Hindi Test 19', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1674950400, 1675036740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:25:05', '2022-10-31 13:25:05'),
(25, '3rd-grade-hindi-test-20', '3rd Grade Hindi Test 20', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1675123200, 1675209540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:25:57', '2022-10-31 13:25:57'),
(26, '3rd-grade-hindi-test-21', '3rd Grade Hindi Test 21', 'image/Test1658465480.png', 2, 1, '999', 1, 0, 1675209600, 1675295940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:26:41', '2022-10-31 13:26:41'),
(27, '3rd-grade-english-test-1', '3rd Grade English Test 1', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1667088000, 1667174340, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:29:01', '2022-10-31 13:29:01'),
(28, '3rd-grade-english-test-2', '3rd Grade English Test 2', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1667692800, 1667779140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:29:47', '2022-10-31 13:29:47'),
(29, '3rd-grade-english-test-3', '3rd Grade English Test 3', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1668297600, 1668383940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:30:38', '2022-10-31 13:30:38'),
(30, '3rd-grade-english-test-4', '3rd Grade English Test 4', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1668902400, 1668988740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:31:23', '2022-10-31 13:31:23'),
(31, '3rd-grade-english-test-5', '3rd Grade English Test 5', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1669507200, 1669593540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:32:05', '2022-10-31 13:32:05'),
(32, '3rd-grade-english-test-6', '3rd Grade English Test 6', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1670112000, 1670198340, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:32:53', '2022-10-31 13:32:53'),
(33, '3rd-grade-english-test-7', '3rd Grade English Test 7', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1670716800, 1670803140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:33:41', '2022-10-31 13:33:41'),
(34, '3rd-grade-english-test-8', '3rd Grade English Test 8', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1671321600, 1671407940, NULL, '300', '180', '180', NULL, NULL, 0, 0, '2022-10-31 13:34:49', '2022-10-31 13:34:49'),
(35, '3rd-grade-english-test-9', '3rd Grade English Test 9', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1671926400, 1672012740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:35:37', '2022-10-31 13:35:37'),
(36, '3rd-grade-english-test-1-1', '3rd Grade English Test 1', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1672444800, 1672531140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:36:35', '2022-10-31 13:36:35'),
(37, '3rd-grade-english-test-11', '3rd Grade English Test 11', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1672790400, 1672876740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:37:18', '2022-10-31 13:37:18'),
(38, '3rd-grade-english-test-12', '3rd Grade English Test 12', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1672963200, 1673049540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:38:02', '2022-10-31 13:38:02'),
(39, '3rd-grade-english-test-13', '3rd Grade English Test 13', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1673481600, 1673567940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:39:13', '2022-10-31 13:39:13'),
(40, '3rd-grade-english-test-14', '3rd Grade English Test 14', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1673827200, 1673913540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:40:24', '2022-10-31 13:40:24'),
(41, '3rd-grade-english-test-15', '3rd Grade English Test 15', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1674086400, 1674172740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:41:28', '2022-10-31 13:41:28'),
(42, '3rd-grade-english-test-16', '3rd Grade English Test 16', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1674345600, 1674431940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:42:16', '2022-10-31 13:42:16'),
(43, '3rd-grade-english-test-17', '3rd Grade English Test 17', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1674518400, 1674604740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:43:02', '2022-10-31 13:43:02'),
(44, '3rd-grade-english-test-18', '3rd Grade English Test 18', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1674777600, 1674863940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:44:40', '2022-10-31 13:44:40'),
(45, '3rd-grade-english-test-19', '3rd Grade English Test 19', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1674950400, 1675036740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:46:08', '2022-10-31 13:46:08'),
(46, '3rd-grade-english-test-20', '3rd Grade English Test 20', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1675123200, 1675209540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:46:46', '2022-10-31 13:46:46'),
(47, '3rd-grade-english-test-21', '3rd Grade English Test 21', 'image/Test1658465480.png', 2, 2, '999', 1, 0, 1675209600, 1675295940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:47:27', '2022-10-31 13:47:27'),
(48, '3rd-grade-social-science-test-1', '3rd Grade Social Science Test 1', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1667088000, 1667174340, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:49:38', '2022-10-31 13:49:38'),
(49, '3rd-grade-social-science-test-2', '3rd Grade Social Science Test 2', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1667692800, 1667779140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:51:00', '2022-10-31 13:51:00'),
(50, '3rd-grade-social-science-test-3', '3rd Grade Social Science Test 3', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1699833600, 1699919940, NULL, '300', '180', '180', NULL, NULL, 0, 0, '2022-10-31 13:52:22', '2022-10-31 13:52:22'),
(51, '3rd-grade-social-science-test-4', '3rd Grade Social Science Test 4', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1668902400, 1668988740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:53:47', '2022-10-31 13:53:47'),
(52, '3rd-grade-social-science-test-5', '3rd Grade Social Science Test 5', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1669507200, 1669593540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:55:19', '2022-10-31 13:55:19'),
(53, '3rd-grade-social-science-test-6', '3rd Grade Social Science Test 6', 'image/Test1658465480.png', 2, 3, '180', 1, 0, 1670112000, 1670198340, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:56:12', '2022-10-31 13:56:12'),
(54, '3rd-grade-social-science-test-7', '3rd Grade Social Science Test 7', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1670716800, 1670803140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:57:16', '2022-10-31 13:57:16'),
(55, '3rd-grade-social-science-test-8', '3rd Grade Social Science Test 8', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1671321600, 1671407940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:58:09', '2022-10-31 13:58:09'),
(56, '3rd-grade-social-science-test-9', '3rd Grade Social Science Test 9', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1671926400, 1672012740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:59:05', '2022-10-31 13:59:05'),
(57, '3rd-grade-social-science-test-10', '3rd Grade Social Science Test 10', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1672444800, 1672531140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 13:59:56', '2022-10-31 13:59:56'),
(58, '3rd-grade-social-science-test-11', '3rd Grade Social Science Test 11', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1672790400, 1672876740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:00:37', '2022-10-31 14:00:37'),
(59, '3rd-grade-social-science-test-12', '3rd Grade Social Science Test 12', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1672963200, 1673049540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:01:42', '2022-10-31 14:01:42'),
(60, '3rd-grade-social-science-test-13', '3rd Grade Social Science Test 13', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1673481600, 1673567940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:03:04', '2022-10-31 14:03:04'),
(61, '3rd-grade-social-science-test-14', '3rd Grade Social Science Test 14', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1673827200, 1673913540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:03:51', '2022-10-31 14:03:51'),
(62, '3rd-grade-social-science-test-15', '3rd Grade Social Science Test 15', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1674086400, 1674172740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:04:50', '2022-10-31 14:04:50'),
(63, '3rd-grade-social-science-test-16', '3rd Grade Social Science Test 16', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1674345600, 1674431940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:05:35', '2022-10-31 14:05:35'),
(64, '3rd-grade-social-science-test-17', '3rd Grade Social Science Test 17', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1674518400, 1674604740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:06:31', '2022-10-31 14:06:31'),
(65, '3rd-grade-social-science-test-18', '3rd Grade Social Science Test 18', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1674777600, 1674863940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:07:42', '2022-10-31 14:07:42'),
(66, '3rd-grade-social-science-test-19', '3rd Grade Social Science Test 19', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1674950400, 1675036740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:08:53', '2022-10-31 14:08:53'),
(67, '3rd-grade-social-science-test-20', '3rd Grade Social Science Test 20', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1675123200, 1675209540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:10:08', '2022-10-31 14:10:08'),
(68, '3rd-grade-social-science-test-21', '3rd Grade Social Science Test 21', 'image/Test1658465480.png', 2, 3, '999', 1, 0, 1675209600, 1675295940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:11:15', '2022-10-31 14:11:15'),
(69, '3rd-grade-sanskrit-test-1', '3rd Grade Sanskrit Test 1', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1667088000, 1667174340, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:13:18', '2022-10-31 14:13:18'),
(70, '3rd-grade-sanskrit-test-2', '3rd Grade Sanskrit Test 2', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1667692800, 1667779140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:14:07', '2022-10-31 14:14:07'),
(71, '3rd-grade-sanskrit-test-3', '3rd Grade Sanskrit Test 3', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1668297600, 1668383940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:14:52', '2022-10-31 14:14:52'),
(72, '3rd-grade-sanskrit-test-4', '3rd Grade Sanskrit Test 4', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1668902400, 1668988740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:15:46', '2022-10-31 14:15:46'),
(73, '3rd-grade-sanskrit-test-5', '3rd Grade Sanskrit Test 5', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1669507200, 1669593540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:16:33', '2022-10-31 14:16:33'),
(74, '3rd-grade-sanskrit-test-6', '3rd Grade Sanskrit Test 6', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1670112000, 1670198340, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:17:57', '2022-10-31 14:17:57'),
(75, '3rd-grade-sanskrit-test-7', '3rd Grade Sanskrit Test 7', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1670716800, 1670803140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:18:44', '2022-10-31 14:18:44'),
(76, '3rd-grade-sanskrit-test-8', '3rd Grade Sanskrit Test 8', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1671321600, 1671407940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:20:39', '2022-10-31 14:20:39'),
(77, '3rd-grade-sanskrit-test-9', '3rd Grade Sanskrit Test 9', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1671926400, 1672012740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:22:53', '2022-10-31 14:22:53'),
(78, '3rd-grade-sanskrit-test-10', '3rd Grade Sanskrit Test 10', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1672444800, 1672531140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:25:21', '2022-10-31 14:25:21'),
(79, '3rd-grade-sanskrit-test-11', '3rd Grade Sanskrit Test 11', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1672790400, 1672876740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:26:38', '2022-10-31 14:26:38'),
(80, '3rd-grade-sanskrit-test-12', '3rd Grade Sanskrit Test 12', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1672963200, 1673049540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:27:58', '2022-10-31 14:27:58'),
(81, '3rd-grade-sanskrit-test-13', '3rd Grade Sanskrit Test 13', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1673481600, 1673567940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:29:26', '2022-10-31 14:29:26'),
(82, '3rd-grade-sanskrit-test-14', '3rd Grade Sanskrit Test 14', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1673827200, 1673913540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:31:40', '2022-10-31 14:31:40'),
(83, '3rd-grade-sanskrit-test-15', '3rd Grade Sanskrit Test 15', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1674086400, 1674172740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:32:15', '2022-10-31 14:32:15'),
(84, '3rd-grade-sanskrit-test-16', '3rd Grade Sanskrit Test 16', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1674345600, 1674431940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:33:15', '2022-10-31 14:33:15'),
(85, '3rd-grade-sanskrit-test-17', '3rd Grade Sanskrit Test 17', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1674518400, 1674604740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:34:34', '2022-10-31 14:34:34'),
(86, '3rd-grade-sanskrit-test-18', '3rd Grade Sanskrit Test 18', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1674777600, 1674863940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:35:21', '2022-10-31 14:35:21'),
(87, '3rd-grade-sanskrit-test-19', '3rd Grade Sanskrit Test 19', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1674950400, 1675036740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:36:24', '2022-10-31 14:36:24'),
(88, '3rd-grade-sanskrit-test-20', '3rd Grade Sanskrit Test 20', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1675123200, 1675209540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:37:09', '2022-10-31 14:37:09'),
(89, '3rd-grade-sanskrit-test-21', '3rd Grade Sanskrit Test 21', 'image/Test1658465480.png', 2, 4, '999', 1, 0, 1675209600, 1675295940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 14:37:59', '2022-10-31 14:37:59'),
(90, '3rd-grade-science-maths-test-1', '3rd Grade Science & Maths Test 1', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1667088000, 1667174340, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:13:11', '2022-10-31 18:13:11'),
(91, '3rd-grade-science-maths-test-2', '3rd Grade Science & Maths Test 2', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1667692800, 1667779140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:13:57', '2022-10-31 18:13:57'),
(92, '3rd-grade-science-maths-test-3', '3rd Grade Science & Maths Test 3', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1668297600, 1668383940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:14:53', '2022-10-31 18:14:53'),
(93, '3rd-grade-science-maths-test-4', '3rd Grade Science & Maths Test 4', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1668902400, 1668988740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:16:07', '2022-10-31 18:16:07'),
(94, '3rd-grade-science-maths-test-5', '3rd Grade Science & Maths Test 5', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1669507200, 1669593540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:16:50', '2022-10-31 18:16:50'),
(95, '3rd-grade-science-maths-test-6', '3rd Grade Science & Maths Test 6', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1670112000, 1670198340, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:17:52', '2022-10-31 18:17:52'),
(96, '3rd-grade-science-maths-test-7', '3rd Grade Science & Maths Test 7', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1670716800, 1670803140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:18:36', '2022-10-31 18:18:36'),
(97, '3rd-grade-science-maths-test-8', '3rd Grade Science & Maths Test 8', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1671321600, 1671407940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:19:23', '2022-10-31 18:19:23'),
(98, '3rd-grade-science-maths-test-9', '3rd Grade Science & Maths Test 9', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1671926400, 1672012740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:20:04', '2022-10-31 18:20:04'),
(99, '3rd-grade-science-maths-test-10', '3rd Grade Science & Maths Test 10', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1672444800, 1672531140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:20:47', '2022-10-31 18:20:47'),
(100, '3rd-grade-science-maths-test-11', '3rd Grade Science & Maths Test 11', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1672790400, 1672876740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:21:36', '2022-10-31 18:21:36'),
(101, '3rd-grade-science-maths-test-12', '3rd Grade Science & Maths Test 12', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1672963200, 1673049540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:22:23', '2022-10-31 18:22:23'),
(102, '3rd-grade-science-maths-test-13', '3rd Grade Science & Maths Test 13', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1673481600, 1673567940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:23:02', '2022-10-31 18:23:02'),
(103, '3rd-grade-science-maths-test-14', '3rd Grade Science & Maths Test 14', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1673827200, 1673913540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:23:45', '2022-10-31 18:23:45'),
(104, '3rd-grade-science-maths-test-15', '3rd Grade Science & Maths Test 15', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1674086400, 1674172740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:24:27', '2022-10-31 18:24:27'),
(105, '3rd-grade-science-maths-test-16', '3rd Grade Science & Maths Test 16', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1674345600, 1674431940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:25:03', '2022-10-31 18:25:03'),
(106, '3rd-grade-science-maths-test-17', '3rd Grade Science & Maths Test 17', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1674518400, 1674604740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:25:35', '2022-10-31 18:25:35'),
(107, '3rd-grade-science-maths-test-18', '3rd Grade Science & Maths Test 18', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1674777600, 1674863940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:26:06', '2022-10-31 18:26:06'),
(108, '3rd-grade-science-maths-test-19', '3rd Grade Science & Maths Test 19', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1674950400, 1675036740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:26:56', '2022-10-31 18:26:56'),
(109, '3rd-grade-science-maths-test-20', '3rd Grade Science & Maths Test 20', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1675123200, 1675209540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:27:34', '2022-10-31 18:27:34'),
(110, '3rd-grade-science-maths-test-21', '3rd Grade Science & Maths Test 21', 'image/Test1658465480.png', 2, 5, '999', 1, 0, 1675209600, 1675295940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 18:28:21', '2022-10-31 18:28:21'),
(111, '3rd-grade-level-i-test-1', '3rd Grade Level-I Test 1', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1667088000, 1667174340, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:23:27', '2022-10-31 20:23:27'),
(112, '3rd-grade-level-i-test-2', '3rd Grade Level-I Test 2', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1667692800, 1667779140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:24:19', '2022-10-31 20:24:19'),
(113, '3rd-grade-level-i-test-3', '3rd Grade Level-I Test 3', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1668297600, 1668383940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:25:17', '2022-10-31 20:25:17'),
(114, '3rd-grade-level-i-test-4', '3rd Grade Level-I Test 4', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1668902400, 1668988740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:25:52', '2022-10-31 20:25:52'),
(115, '3rd-grade-level-i-test-5', '3rd Grade Level-I Test 5', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1669507200, 1669593540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:26:41', '2022-10-31 20:26:41'),
(116, '3rd-grade-level-i-test-6', '3rd Grade Level-I Test 6', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1670112000, 1670198340, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:27:20', '2022-10-31 20:27:20'),
(117, '3rd-grade-level-i-test-7', '3rd Grade Level-I Test 7', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1670716800, 1670803140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:27:58', '2022-10-31 20:27:58'),
(118, '3rd-grade-level-i-test-8', '3rd Grade Level-I Test 8', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1671148800, 1671235140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:28:50', '2022-10-31 20:28:50'),
(119, '3rd-grade-level-i-test-9', '3rd Grade Level-I Test 9', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1671926400, 1672012740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:29:31', '2022-10-31 20:29:31'),
(120, '3rd-grade-level-i-test-10', '3rd Grade Level-I Test 10', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1672444800, 1672531140, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:30:14', '2022-10-31 20:30:14'),
(121, '3rd-grade-level-i-test-11', '3rd Grade Level-I Test 11', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1672790400, 1672876740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:30:49', '2022-10-31 20:30:49'),
(122, '3rd-grade-level-i-test-12', '3rd Grade Level-I Test 12', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1672963200, 1673049540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:31:25', '2022-10-31 20:31:25'),
(123, '3rd-grade-level-i-test-13', '3rd Grade Level-I Test 13', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1673481600, 1673567940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:32:11', '2022-10-31 20:32:11'),
(124, '3rd-grade-level-i-test-14', '3rd Grade Level-I Test 14', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1673827200, 1673913540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:32:47', '2022-10-31 20:32:47'),
(125, '3rd-grade-level-i-test-15', '3rd Grade Level-I Test 15', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1674086400, 1674172740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:33:22', '2022-10-31 20:33:22'),
(126, '3rd-grade-level-i-test-16', '3rd Grade Level-I Test 16', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1674345600, 1674431940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:34:02', '2022-10-31 20:34:02'),
(127, '3rd-grade-level-i-test-17', '3rd Grade Level-I Test 17', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1674518400, 1674604740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:34:33', '2022-10-31 20:34:33'),
(128, '3rd-grade-level-i-test-18', '3rd Grade Level-I Test 18', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1674777600, 1674863940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:35:15', '2022-10-31 20:35:15'),
(129, '3rd-grade-level-i-test-19', '3rd Grade Level-I Test 19', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1674950400, 1675036740, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:35:54', '2022-10-31 20:35:54'),
(130, '3rd-grade-level-i-test-20', '3rd Grade Level-I Test 20', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1675123200, 1675209540, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:36:24', '2022-10-31 20:36:24'),
(131, '3rd-grade-level-i-test-21', '3rd Grade Level-I Test 21', 'image/Test1658465480.png', 2, 0, '999', 1, 0, 1675209600, 1675295940, NULL, '300', '0.33', '180', NULL, NULL, 0, 0, '2022-10-31 20:37:12', '2022-10-31 20:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `tradings`
--

CREATE TABLE `tradings` (
  `id` int(13) NOT NULL,
  `testId` int(13) NOT NULL,
  `trading` int(13) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tradings`
--

INSERT INTO `tradings` (`id`, `testId`, `trading`, `created_at`, `updated_at`) VALUES
(8, 8, 1, '2022-11-01 09:18:37', '2022-11-01 09:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `upcoming_exam`
--

CREATE TABLE `upcoming_exam` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `date` date DEFAULT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile_code` varchar(15) COLLATE utf8_unicode_ci DEFAULT '+91',
  `mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `profile` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'profile/profile1658410284.png',
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qualification` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verify_code` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `selections` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `experinces` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_taught` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video1` text COLLATE utf8_unicode_ci,
  `video2` text COLLATE utf8_unicode_ci,
  `video3` text COLLATE utf8_unicode_ci,
  `video4` text COLLATE utf8_unicode_ci,
  `video5` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `wallet` int(13) DEFAULT '0',
  `referral_code` varchar(230) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `slug`, `name`, `mobile_code`, `mobile`, `email`, `profile`, `title`, `subject`, `qualification`, `description`, `email_verified_at`, `password`, `device_type`, `device_token`, `remember_token`, `verify_code`, `status`, `selections`, `experinces`, `student_taught`, `auth_token`, `video1`, `video2`, `video3`, `video4`, `video5`, `created_at`, `wallet`, `referral_code`, `updated_at`) VALUES
(1, 'pci-gmail-con', 'Test Tyari Admin', '+91', '9876543210', 'admin@testtyari.com', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$nOUzis1VlHlSZ.GnK8jibuXKOB0EwExchWhS5KnTuq9l5aXcDcSgq', 'android', '0aad7d23-3515-4ae7-95ca-f171afe40e49', 'wvwlsfGvOa0yU2eNDl9y16Lu0UlqXNYdbOV3oFqtXXaUNGf58TJpWPNvRls2', '2245', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-11 00:54:23'),
(5, 'adminjhuriaatgmail-com', 'anil jhuri', '+91', '8000124511', 'pushpendra.jareval@gmail.com', 'profile/profile1664536516.jpg', 'Teacher title', 'hindi,english', '', '<b><font color=\"#000000\" style=\"background-color: rgb(0, 255, 0);\">hello test</font></b>', NULL, '$2y$10$ErQQnYAnpL.CY3wlye7XSujBqNXvhZ2VumSGN9eFkuOBENRzf6COO', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'e4da3b7fbbce2345d7772b0674a318d5', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YGOvTIEauxc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YGOvTIEauxc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YGOvTIEauxc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YGOvTIEauxc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/YGOvTIEauxc\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '2022-07-08 00:57:18', 1, 'J5zxbhykRS6457', '2022-10-31 14:31:38'),
(7, '8000919369', 'Pushpendra Singh', '+91', '8000919369', 'a@gmail.com', 'profile/profile1665815069.jpg', NULL, NULL, NULL, NULL, NULL, '$2y$10$asJA6/f5owLetMIh25Vi2upFx9JVSrNaPCPIqevaMCCXFuIys6OeS', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '8f14e45fceea167a5a36dedd4bea2543', NULL, NULL, NULL, NULL, NULL, '2022-07-09 20:45:02', 1, 'pSTQ92yLjG25989', '2022-10-30 15:23:21'),
(32, 'rajdeepatgmail-com', 'Bhom Singh Shekhawat', '+91', '7073207719', 'bss@gmail.com', 'profile/profile1663325834.jpg', 'Chlid development and Pedagogy', 'Hindi & Psycology', '', '<ul><li>&nbsp; Writer of Girisha Educational Psycology&nbsp;</li><li>&nbsp;Selected in 10+ Govt. Jobs.</li><li>&nbsp;Motivational Speaker&nbsp;</li><li>&nbsp;Best mentor&nbsp; for competitive exams&nbsp;&nbsp;</li><li>&nbsp;Lecturer in hindi&nbsp;</li><li>&nbsp;NET in Hindi and Education</li></ul>', NULL, '$2y$10$TuJWfIBGdp8uWxvBCwkRYekkA8eO3m740J6Z1UPfO./56TwVdtbO.', NULL, NULL, NULL, NULL, 1, '1000+', '10+', '5000+', NULL, 'https://www.youtube.com/watch?v=fIj8h_LCN7A&t=11s', NULL, NULL, NULL, NULL, '2022-07-21 20:36:27', 0, NULL, '2022-10-29 11:47:47'),
(34, '9414602233', 'Sunil Ranwa', '+91', '9414602233', 'sunilranwa1460@gmail.com', 'profile/profile1661602822.jpg', NULL, NULL, NULL, NULL, NULL, '$2y$10$6kwsBfNHmqEnsjSL9a/uze6DpwekDjzo4ADNc3VLL4tw9MT2c6/ly', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'e369853df766fa44e1ed0ff613f563bd', NULL, NULL, NULL, NULL, NULL, '2022-07-25 14:02:27', 0, 'jDY2BAZXpE48446', '2022-10-31 20:06:38'),
(40, '8949181285', NULL, '+91', '8949181285', '8949181285', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$Cf1CURpKcHmKJzmfdW5nKOLHTiedM9XYVfaUGaJ8ojVF.JMoa4Izq', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'd645920e395fedad7bbbed0eca3fe2e0', NULL, NULL, NULL, NULL, NULL, '2022-08-16 21:41:57', 0, NULL, '2022-08-16 21:46:02'),
(41, '9649856556', NULL, '+91', '9649856556', '9649856556', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$B2o/kuOpjH78EKgnfhEeSuVi6k43HD1WZ5wvmFSIyGAe/pfo7KInq', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '3416a75f4cea9109507cacd8e2f2aefc', NULL, NULL, NULL, NULL, NULL, '2022-08-16 21:43:07', 0, 'mFNJGmqSHn60602', '2022-10-25 21:55:06'),
(42, '9929963761', NULL, '+91', '9929963761', '9929963761', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$dTZMsI.vLeQOb7zekxhTfecnvvWao08zSVgZd2wQDu1k6d2StyB4i', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'a1d0c6e83f027327d8461063f4ac58a6', NULL, NULL, NULL, NULL, NULL, '2022-08-16 21:49:14', 0, NULL, '2022-08-16 21:49:31'),
(43, '9413205016', 'Praveen', '+91', '9413205016', '9413205016', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$k4oeHYn8GVVl5kvRcgfm0uXzv.T5ufa/sLulAJsgjC41sRBX44bgW', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '17e62166fc8586dfa4d1bc0e1742c08b', NULL, NULL, NULL, NULL, NULL, '2022-08-16 23:28:49', 0, NULL, '2022-08-17 18:27:28'),
(44, '9982280111', 'Hitesh Khichar', '+91', '9982280111', '9982280111', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$wlVh4h/JDV90eGPAN3jkbeVoQbhYryz2UlXAkBSbGxzvUqRDSdiEC', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'f7177163c833dff4b38fc8d2872f1ec6', NULL, NULL, NULL, NULL, NULL, '2022-08-16 23:29:27', 0, NULL, '2022-08-19 20:04:53'),
(45, '9950314542', NULL, '+91', '9950314542', '9950314542', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$VXD4seOa9SNSs2fIxb/equCdfoPB3r7YXJB32tjypo8lTxgAxJeRC', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '6c8349cc7260ae62e3b1396831a8398f', NULL, NULL, NULL, NULL, NULL, '2022-08-16 23:30:42', 0, NULL, '2022-08-16 23:31:10'),
(46, '6376120788', 'Priyanka Ranwa', '+91', '6376120788', '6376120788', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$AXo2x6Ek4Ep3x2rEhJQoR.KM7.kkVFl2KbxYri.fHWDfW2a/AgNrG', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'd9d4f495e875a2e075a1a4a6e1b9770f', NULL, NULL, NULL, NULL, NULL, '2022-08-16 23:31:45', 0, NULL, '2022-08-17 08:25:14'),
(47, '9468608289', 'Suman Choudhary', '+91', '9468608289', '9468608289', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$6ewWfRkf9Uc8TZUUV9LpR.3M2c2ETI9mx0O8Ld2qa78LC.OKEjXTq', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '67c6a1e7ce56d3d6fa748ab6d9af3fd7', NULL, NULL, NULL, NULL, NULL, '2022-08-16 23:35:17', 0, NULL, '2022-09-02 12:06:49'),
(48, '9414821511', NULL, '+91', '9414821511', '9414821511', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$lubmESluGu6ghQQuazKVwu/065ShmH64WWO8kGb175iduOvNiMgUq', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '642e92efb79421734881b53e1e1b18b6', NULL, NULL, NULL, NULL, NULL, '2022-08-16 23:51:35', 0, NULL, '2022-09-22 00:31:39'),
(49, '9660167850', NULL, '+91', '9660167850', '9660167850', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$nmBsyvpmyyMKDEcHNEMh9uFZe7C8xCwKC1bPYOxSFIBJSBAMJOq7W', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'f457c545a9ded88f18ecee47145a72c0', NULL, NULL, NULL, NULL, NULL, '2022-08-17 01:23:19', 0, NULL, '2022-08-17 01:23:47'),
(50, '8107432864', NULL, '+91', '8107432864', '8107432864', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$n77AjMH4diXJxS4VknLSPefQYZ9r3XzOHNWIGyx2kqqxDfU6QOucS', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'c0c7c76d30bd3dcaefc96f40275bdc0a', NULL, NULL, NULL, NULL, NULL, '2022-08-17 07:43:27', 0, NULL, '2022-08-17 07:43:44'),
(51, '8890427494', NULL, '+91', '8890427494', '8890427494', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$y.V7OlwXhdAIam6RFiRBU.upoujQkYV7Pkkc7IVPlfhcmW2UAQm.i', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '2838023a778dfaecdc212708f721b788', NULL, NULL, NULL, NULL, NULL, '2022-08-17 07:46:23', 0, NULL, '2022-08-17 07:48:20'),
(52, '9672172204', NULL, '+91', '9672172204', '9672172204', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$fxfQmTQAS0vo3b37hjCpj.ig8PsgV5OkS/gHoEx4JCu4U6YtXywp.', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '9a1158154dfa42caddbd0694a4e9bdc8', NULL, NULL, NULL, NULL, NULL, '2022-08-17 07:47:33', 0, NULL, '2022-08-17 07:47:55'),
(53, '9672444706', NULL, '+91', '9672444706', '9672444706', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$oGaS9y0wIXrBckU5uc.3OeQFMIEDnxleNEaCz5DSq.VxBkAz6Uv7q', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'd82c8d1619ad8176d665453cfb2e55f0', NULL, NULL, NULL, NULL, NULL, '2022-08-17 08:06:17', 0, NULL, '2022-08-17 08:06:38'),
(54, '9509583143', NULL, '+91', '9509583143', '9509583143', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$d2VFwh2v7jVDZN3aOvHSBu4gxnkFJAbhKTDXTYcq9MayzwCaMIpSS', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'a684eceee76fc522773286a895bc8436', NULL, NULL, NULL, NULL, NULL, '2022-08-17 08:19:06', 0, NULL, '2022-08-17 08:19:28'),
(55, '7615092876', 'PRAMOD', '+91', '7615092876', 'pksamawat8484@gmail.com', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$8r23HRXGjL.9iiK9mZBFn.EdAalDdfVtxAfmW/FiiuP5QpoPpKsxy', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'b53b3a3d6ab90ce0268229151c9bde11', NULL, NULL, NULL, NULL, NULL, '2022-08-17 09:59:36', 0, NULL, '2022-08-17 10:02:48'),
(56, '8619320332', NULL, '+91', '8619320332', '8619320332', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$gLT4I7AKZc6H23zddtEmNONW0PyMSCYnX9EhQZHYpGSOvR7FjsrPW', 'andriod', '123sfrdsfsf45678', NULL, '5710', 1, NULL, NULL, NULL, '9f61408e3afb633e50cdf1b20de6f466', NULL, NULL, NULL, NULL, NULL, '2022-08-17 10:03:08', 0, NULL, '2022-08-17 10:05:08'),
(57, '7414819108', NULL, '+91', '7414819108', '7414819108', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$uZKVt193AV4zaV8jdOHbCek/g/6evxLLNsaGTYUcJbI8qkD2JbMUm', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '72b32a1f754ba1c09b3695e0cb6cde7f', NULL, NULL, NULL, NULL, NULL, '2022-08-17 10:16:57', 0, NULL, '2022-08-17 10:17:13'),
(58, '9983954052', NULL, '+91', '9983954052', '9983954052', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$LtMtN11qYoW.qkvAQ8Rb2usPgIlWLABjhtLFLdLsjw3DlR0JFyXrq', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '66f041e16a60928b05a7e228a89c3799', NULL, NULL, NULL, NULL, NULL, '2022-08-17 10:18:25', 0, NULL, '2022-08-17 10:18:39'),
(59, '7728950466', NULL, '+91', '7728950466', '7728950466', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$Ubn9QBQWPUQNZpjOV9nHx.jSI6p9mFj5eD8o3YHDF6JeXJAIToAIa', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '093f65e080a295f8076b1c5722a46aa2', NULL, NULL, NULL, NULL, NULL, '2022-08-17 10:43:55', 0, NULL, '2022-08-17 10:44:30'),
(60, '9929303018', NULL, '+91', '9929303018', '9929303018', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$VLCvzIoOVtKuCZGAsiMddeYo56kPWGGXJdB8tUAcI0PYFn0rARCB6', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '072b030ba126b2f4b2374f342be9ed44', NULL, NULL, NULL, NULL, NULL, '2022-08-17 10:47:52', 0, NULL, '2022-08-17 10:48:04'),
(61, '6367423618', NULL, '+91', '6367423618', '6367423618', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$nT/l.d4Y6uz9qoVps0IRdeKKKTDWLE9dx3m9/Twh1LLK7eyVaiqsK', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '7f39f8317fbdb1988ef4c628eba02591', NULL, NULL, NULL, NULL, NULL, '2022-08-17 11:27:41', 0, NULL, '2022-08-17 11:28:57'),
(62, '9636276721', 'Aniljhuria', '+91', '9636276721', 'aniljhuria301@gmail.com', 'profile/profile1661324420.jpg', NULL, NULL, NULL, NULL, NULL, '$2y$10$6uqM3uILNVhbr4skYfjJNuJiDVovyUSx.BeLsqJejf32Wz0R0HF9q', 'andriod', '123sfrdsfsf45678', 'aludbIx5Zjb2b9Qgn8XXzOK0RzIM2YMuLXKILT8H3pDp8VB2yKdpFUrmsQty', '18259', 1, NULL, NULL, NULL, '44f683a84163b3523afe57c2e008bc8c', NULL, NULL, NULL, NULL, NULL, '2022-08-17 14:38:08', 10, 'vf7lR8NqDb98058', '2022-10-19 11:43:07'),
(63, '9414302988', NULL, '+91', '9414302988', '9414302988', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$CQG1jMxb21ygQwTxU481fe/7centVZKphkdbqqv.BLfRPbSkj7vHq', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '03afdbd66e7929b125f8597834fa83a4', NULL, NULL, NULL, NULL, NULL, '2022-08-17 15:11:00', 0, NULL, '2022-08-17 15:11:18'),
(64, '9461714429', 'keval Parish', '+91', '9461714429', 'kevalParish@gmail.com', 'profile/profile1665987397.jpg', NULL, NULL, NULL, NULL, NULL, '$2y$10$.ND2DcuC3nvbe.2z8wWueeg93AGNDCNRnReKoLK5QfPUiWKQcs0my', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'ea5d2f1c4608232e07d3aa3d998e5135', NULL, NULL, NULL, NULL, NULL, '2022-08-17 20:07:20', 1, 'nA0sakUMG028676', '2022-10-17 14:28:40'),
(65, '8386014582', NULL, '+91', '8386014582', '8386014582', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$6FD.fU1/XMiv6iosEhadj.JKxOvtOz6gi2EPWIqRSbgeBcyswsDh6', 'andriod', '123sfrdsfsf45678', NULL, '14722', 1, NULL, NULL, NULL, 'fc490ca45c00b1249bbe3554a4fdf6fb', NULL, NULL, NULL, NULL, NULL, '2022-08-17 20:08:32', 0, NULL, '2022-08-17 20:08:32'),
(66, '9982367166', NULL, '+91', '9982367166', '9982367166', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$qPSjHkajt2.Ngo1VOcoR5./vgcMHmyBIYyUo/V1PtIFHxSZ9kBZzy', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '3295c76acbf4caaed33c36b1b5fc2cb1', NULL, NULL, NULL, NULL, NULL, '2022-08-17 22:34:47', 0, NULL, '2022-08-19 00:05:55'),
(67, '7820851139', NULL, '+91', '7820851139', '7820851139', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$8m4roV574tnYVBzBa5fgmel9qsFkpHwIN3azYDwAy6EPpLz9GjzKe', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '735b90b4568125ed6c3f678819b6e058', NULL, NULL, NULL, NULL, NULL, '2022-08-18 09:18:01', 0, NULL, '2022-08-18 09:18:20'),
(68, '9785636235', NULL, '+91', '9785636235', '9785636235', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$sXCbTvjvGWtCREpgJsXUIekR/0t9H2geYwGbQpvQjmzIzF2joKEE.', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'a3f390d88e4c41f2747bfa2f1b5f87db', NULL, NULL, NULL, NULL, NULL, '2022-08-18 14:05:20', 0, NULL, '2022-08-18 14:05:51'),
(69, '7851982505', NULL, '+91', '7851982505', '7851982505', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$Vj9boI4MDIHenLfg4cq6B.1selrMesnqc3JYyVgR6ak3Qs4Ke7bDm', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '14bfa6bb14875e45bba028a21ed38046', NULL, NULL, NULL, NULL, NULL, '2022-08-19 15:07:41', 0, NULL, '2022-08-19 15:08:50'),
(70, '7340099597', NULL, '+91', '7340099597', '7340099597', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$3/7mgWV70Za1AVZS2lLYB.C07i0Xl5W1oUB1EKr.nMl/Cn4h61tq.', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '7cbbc409ec990f19c78c75bd1e06f215', NULL, NULL, NULL, NULL, NULL, '2022-08-19 20:38:54', 0, NULL, '2022-08-19 20:39:12'),
(71, '8696556448', NULL, '+91', '8696556448', '8696556448', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$HelC6gKXTkVeBZw3ieI4NuMkDdlcVPwM./nGH/dg4N552lUduNCTy', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'e2c420d928d4bf8ce0ff2ec19b371514', NULL, NULL, NULL, NULL, NULL, '2022-08-19 21:55:40', 0, NULL, '2022-08-19 21:55:58'),
(72, '6367299033', NULL, '+91', '6367299033', '6367299033', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$CaksXf0qyTiG3JqJpK9R8OX26h5WvLmAqUWu0yP5LkQkEWLOdQigu', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '32bb90e8976aab5298d5da10fe66f21d', NULL, NULL, NULL, NULL, NULL, '2022-08-20 00:45:07', 0, NULL, '2022-08-20 00:45:23'),
(73, '9460695726', NULL, '+91', '9460695726', '9460695726', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$ZcDSycdrdSEeXpdwmZawAeyxne13yocCEIek.8cBNpxF6P9y60HYu', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'd2ddea18f00665ce8623e36bd4e3c7c5', NULL, NULL, NULL, NULL, NULL, '2022-08-20 11:26:00', 0, NULL, '2022-08-20 11:26:18'),
(74, '8955588886', NULL, '+91', '8955588886', '8955588886', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$vS6nVVjsGYA0K.UBmvwvruox0UDHH.zzVYrgsIjOfiRFZ9eLRN9ou', 'andriod', '123sfrdsfsf45678', NULL, '20761', 1, NULL, NULL, NULL, 'ad61ab143223efbc24c7d2583be69251', NULL, NULL, NULL, NULL, NULL, '2022-08-20 21:14:29', 0, NULL, '2022-08-20 21:14:30'),
(75, '8824488886', 'Dharam Pal', '+91', '8824488886', '8824488886', 'profile/profile1661500084.jpg', NULL, NULL, NULL, NULL, NULL, '$2y$10$d7MXPDudYyth1KsOlb/qme.sAWgLInqYKuK5NWVYr0DthkBMrzNRK', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'd09bf41544a3365a46c9077ebb5e35c3', NULL, NULL, NULL, NULL, NULL, '2022-08-20 21:15:01', 0, NULL, '2022-08-26 14:48:04'),
(76, '8741870463', NULL, '+91', '8741870463', '8741870463', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$QuyhvyMkPNEFoU7jXqgRouD1C9o0UVCgaFt5z.tVF/l.EW9QVrWcm', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'fbd7939d674997cdb4692d34de8633c4', NULL, NULL, NULL, NULL, NULL, '2022-08-21 15:39:13', 0, NULL, '2022-08-21 15:40:01'),
(77, '9829576892', NULL, '+91', '9829576892', '9829576892', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$riGw2xEp705QkeEz9Q2JyOTJ3tUwtNj06/l81shKaxCv89JGUooYy', 'andriod', '123sfrdsfsf45678', NULL, '41752', 1, NULL, NULL, NULL, '28dd2c7955ce926456240b2ff0100bde', NULL, NULL, NULL, NULL, NULL, '2022-08-22 17:00:37', 0, NULL, '2022-08-22 17:00:41'),
(78, 'https-play-google-com-store-apps-details-id-com-parken-classwalaplus9829576892', NULL, '+91', 'https://play.google.com/store/apps/details?id=com.parken.classwalaplus9829576892', 'https://play.google.com/store/apps/details?id=com.parken.classwalaplus9829576892', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$xfBSkvj/gywSgJEBisBWD.iAWNgXaV3nuBNO6JdrF8kQL0AZbhtKK', 'andriod', '123sfrdsfsf45678', NULL, '76517', 1, NULL, NULL, NULL, '35f4a8d465e6e1edc05f3d8ab658c551', NULL, NULL, NULL, NULL, NULL, '2022-08-22 17:00:48', 0, NULL, '2022-08-22 17:00:48'),
(79, '9352416374', NULL, '+91', '9352416374', '9352416374', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$yZDyx6Q9jutVCfrH1ZbM5OMI5DcXDwCRqRKdT.hM3kygpSAVcEqyi', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'd1fe173d08e959397adf34b1d77e88d7', NULL, NULL, NULL, NULL, NULL, '2022-08-22 17:01:02', 0, NULL, '2022-08-22 17:02:10'),
(80, '7073199119', NULL, '+91', '7073199119', '7073199119', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$AY7Wob379FQSTC8YE2/omu5OqTFoa69benGRXTirAyLJp9Yfs9hI6', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'f033ab37c30201f73f142449d037028d', NULL, NULL, NULL, NULL, NULL, '2022-08-22 18:07:05', 0, NULL, '2022-08-22 18:07:20'),
(81, '9782914987', NULL, '+91', '9782914987', '9782914987', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$c/5O0FtfPWuz0W74k3bU5ODhdcfP039baTFzrlU7wKQ2xkKfxIOgu', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '43ec517d68b6edd3015b3edc9a11367b', NULL, NULL, NULL, NULL, NULL, '2022-08-22 19:23:06', 0, NULL, '2022-08-22 19:23:23'),
(82, '6395956494', NULL, '+91', '6395956494', '6395956494', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$dVHURnxqnJrTMccFrmAmu.MYc1wc1.WAZ64wQVn5qgyhcs18gO0mG', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '9778d5d219c5080b9a6a17bef029331c', NULL, NULL, NULL, NULL, NULL, '2022-08-24 12:43:56', 0, NULL, '2022-09-25 21:14:36'),
(83, '9079842821', NULL, '+91', '9079842821', '9079842821', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$L05GH/b6Q45kdBNyRwZOc.sJfXz9PI5uDSGCtwswXXiYA1m1HCGuq', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'fe9fc289c3ff0af142b6d3bead98a923', NULL, NULL, NULL, NULL, NULL, '2022-08-25 01:37:12', 0, NULL, '2022-08-25 01:37:30'),
(84, '9772369152', NULL, '+91', '9772369152', '9772369152', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$NznifHtVudj8Q.ITy9xd6OY4Rd1jTAExwGyPXgN8Phqj56yd/3mvy', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '68d30a9594728bc39aa24be94b319d21', NULL, NULL, NULL, NULL, NULL, '2022-08-27 19:51:40', 0, NULL, '2022-08-27 19:52:00'),
(85, '7372969660', NULL, '+91', '7372969660', '7372969660', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$6F.nn4zl3jwIxWoZBHR7reH7pUHi8ggjAd.pFBgWLXuHYgsatOVxS', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '3ef815416f775098fe977004015c6193', NULL, NULL, NULL, NULL, NULL, '2022-09-03 10:21:43', 0, NULL, '2022-09-03 10:22:03'),
(86, '8000114512', NULL, '+91', '8000114512', '8000114512', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$iHDWVvJj.NNITWIoaY8R1.wtBB3loJ8OeAH.ECggvupfGm4DA/nlG', 'andriod', '123sfrdsfsf45678', NULL, '38235', 1, NULL, NULL, NULL, '93db85ed909c13838ff95ccfa94cebd9', NULL, NULL, NULL, NULL, NULL, '2022-09-05 15:39:21', 0, NULL, '2022-09-05 17:43:03'),
(87, '7014678135', NULL, '+91', '7014678135', '7014678135', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$nPbDe63EqD2aAfUIM2sPOeCtmMWWV9wCA.CdXAJGetkWH8U/CLq3m', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'c7e1249ffc03eb9ded908c236bd1996d', NULL, NULL, NULL, NULL, NULL, '2022-09-06 17:07:40', 0, NULL, '2022-09-06 17:08:00'),
(88, '9214522522', NULL, '+91', '9214522522', '9214522522', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$XkS6Z8l9PNoIX1jRLgOH1uncx4I.Hya0xIApwn57QS3eRdv8w8M7u', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '2a38a4a9316c49e5a833517c45d31070', NULL, NULL, NULL, NULL, NULL, '2022-09-08 18:13:42', 0, NULL, '2022-09-08 18:13:58'),
(89, '8440030403', NULL, '+91', '8440030403', '8440030403', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$91KFWvgSa63jVjRF6niFjO4/kTHWZ7yzb2YPrch1G.o1pNiZaEdg6', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '7647966b7343c29048673252e490f736', NULL, NULL, NULL, NULL, NULL, '2022-09-10 19:13:15', 0, NULL, '2022-09-10 19:13:30'),
(90, '8000919', NULL, '+91', '8000919', '8000919', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$yK6vpO2w.BN/3AXssHHRle6h98Yoi1nzsfg/9GdcHbw2LAvHI1x5e', 'andriod', '123sfrdsfsf45678', NULL, '10333', 1, NULL, NULL, NULL, '8613985ec49eb8f757ae6439e879bb2a', NULL, NULL, NULL, NULL, NULL, '2022-09-11 10:08:51', 0, NULL, '2022-09-11 10:08:51'),
(91, '7073404776', NULL, '+91', '7073404776', '7073404776', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$mAbJrvwNslUKYntotCjPjOebIpQu2e3FzpBibijY69A5ktm1wzoby', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '54229abfcfa5649e7003b83dd4755294', NULL, NULL, NULL, NULL, NULL, '2022-09-15 23:01:16', 0, NULL, '2022-09-15 23:01:47'),
(92, '7568048054', NULL, '+91', '7568048054', '7568048054', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$8RpxoizMpITG4ymIpSPV8eyIcl96Kms7dNzaYRZnZ.JyJ8VgF4C.K', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '92cc227532d17e56e07902b254dfad10', NULL, NULL, NULL, NULL, NULL, '2022-09-16 19:50:51', 0, NULL, '2022-09-16 19:51:03'),
(94, '8741934326', NULL, '+91', '8741934326', '8741934326', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$G1R9r6381MxMVjuAo.J5F.IZmwVD0GJjLbibNxFby7SsSxlI.EhGC', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'f4b9ec30ad9f68f89b29639786cb62ef', NULL, NULL, NULL, NULL, NULL, '2022-09-18 00:14:27', 0, NULL, '2022-09-18 00:15:10'),
(95, '6367122213', NULL, '+91', '6367122213', '6367122213', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$p1bhOrBf4imeHcFyCBMoWelzbuiOnKlZpMCceRQDynpIN9g/5QLY6', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '812b4ba287f5ee0bc9d43bbf5bbe87fb', NULL, NULL, NULL, NULL, NULL, '2022-09-20 14:38:46', 0, NULL, '2022-09-20 14:39:00'),
(96, '9214700255', NULL, '+91', '9214700255', '9214700255', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$7FGRtIUajGn5mo6fU7Qd1.XrWuOPyiN1JNSYBREfzKvrOgS3vizlu', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '26657d5ff9020d2abefe558796b99584', NULL, NULL, NULL, NULL, NULL, '2022-09-22 11:42:52', 0, NULL, '2022-09-22 11:43:38'),
(98, '7339998567', NULL, '+91', '7339998567', '7339998567', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$w0z9U/OMezyQjZ/UwAEt9uS5wubQXS/c6kHW4al8Fp6ITYu649pUW', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'ed3d2c21991e3bef5e069713af9fa6ca', NULL, NULL, NULL, NULL, NULL, '2022-09-23 22:28:26', 0, NULL, '2022-09-23 22:30:28'),
(100, '9982567382', NULL, '+91', '9982567382', '9982567382', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$dVf8I9m6ZpqXJNXUqryj/u2mEJK3bh.S1idjMo2ZGWn1ezTotN9gy', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'f899139df5e1059396431415e770c6dd', NULL, NULL, NULL, NULL, NULL, '2022-09-25 21:51:58', 0, NULL, '2022-09-25 21:52:59'),
(101, '7891946491', NULL, '+91', '7891946491', '7891946491', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$OAwUtbVe/6aN1/NC9wQSP.bPflsYtGMikUSc3pFcM6buiR4OeoWiy', 'andriod', '123sfrdsfsf45678', NULL, '20275', 1, NULL, NULL, NULL, '38b3eff8baf56627478ec76a704e9b52', NULL, NULL, NULL, NULL, NULL, '2022-10-02 23:09:41', 0, '0TIwxlib5G1001', '2022-10-02 23:10:24'),
(104, 'dushyantparkenatgmail-com', 'Dushyant Kumar', '91', '6395652383', 'dushyantparken@gmail.com', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$6uqM3uILNVhbr4skYfjJNuJiDVovyUSx.BeLsqJejf32Wz0R0HF9q', 'web', '1234567890', 'QdKQL1TWO34mvH3wOeMKo42raWSzK5Iu8Fi2LNsXg10Sdd9s7CN5D2zbZXM8', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-05 12:33:58', 0, NULL, '2022-10-05 12:33:58'),
(105, '7891976491', NULL, '+91', '7891976491', '7891976491', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$rQ555TWWUaosOslmpuqGJOMtYegM8R8Xz0FEbZJYZ4jJHzaXQTz6W', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '65b9eea6e1cc6bb9f0cd2a47751a186f', NULL, NULL, NULL, NULL, NULL, '2022-10-07 19:13:06', 0, 'qauzalPOp723771', '2022-10-07 19:13:22'),
(106, '9530005614', NULL, '+91', '9530005614', '9530005614', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$ulZVLlYXhK6SJ85Bi4arzOL0M2PlzX3.WvEnI6efkOLaWmChWRiLy', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, 'f0935e4cd5920aa6c7c996a5ee53a70f', NULL, NULL, NULL, NULL, NULL, '2022-10-08 20:10:36', 0, 'lD2wFB080120523', '2022-10-08 20:10:53'),
(107, 'rohitpatoliaclassesrpcatgmail-com', 'Rohit Patolia Classes (RPC)', '91', '09982942567', 'rohitpatoliaclassesrpc@gmail.com', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$9w0EmKaj9I57AXuW/pG/eeoNgScm13XEj4HcydEY4ahvwRL.v46oi', 'web', '1234567890', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-10 12:43:47', 0, '1FET4nIwUL75796', '2022-10-10 12:44:00'),
(108, '800091936', NULL, '+91', '800091936.', '800091936.', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$PKuY05WF.bsbaAdTtGT1bOxK20NVs26glQpQCkYOcPTAMEtBZz5DC', 'andriod', '123sfrdsfsf45678', NULL, '3213', 1, NULL, NULL, NULL, 'a3c65c2974270fd093ee8a9bf8ae7d0b', NULL, NULL, NULL, NULL, NULL, '2022-10-11 17:21:41', 0, 'K9TnkTJhOy33678', '2022-10-27 22:25:32'),
(109, '9887303098', NULL, '+91', '9887303098', '9887303098', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$ViSQ5HestJ2/pDvLOkYH9us0olhjezIgUR8R9Vjpa.DfNkPmlLz2u', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '2723d092b63885e0d7c260cc007e8b9d', NULL, NULL, NULL, NULL, NULL, '2022-10-16 14:25:49', 0, 'g02Bgu1g1K98105', '2022-10-16 14:27:31'),
(110, '800091936-1', NULL, '+91', '800091936', '800091936', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$uSRyNKiDY//lp41xZPX.n.i.VG9cLmf0PJYxUCpib4qJ1RUQcVmwa', 'andriod', '123sfrdsfsf45678', NULL, '17002', 1, NULL, NULL, NULL, '5f93f983524def3dca464469d2cf9f3e', NULL, NULL, NULL, NULL, NULL, '2022-10-26 13:22:24', 0, 'crymT7fKfq49889', '2022-10-26 13:22:24'),
(111, '9214599599', NULL, '+91', '9214599599', '9214599599', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$HRMr27a337VOCUmISVLsgeLI6xsyBnP0.KlLL2uKhq/l2gKwKIlCS', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '698d51a19d8a121ce581499d7b701668', NULL, NULL, NULL, NULL, NULL, '2022-10-29 12:50:58', 0, '6HVXbEleAq98860', '2022-10-29 12:55:55'),
(112, '8003236460', NULL, '+91', '8003236460', '8003236460', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$.vBr4jNPYJCklVymdnQN3.lPBBa2XJivDA8iQGcr5q2jBr5bPxEkC', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '7f6ffaa6bb0b408017b62254211691b5', NULL, NULL, NULL, NULL, NULL, '2022-10-30 12:24:36', 0, 'rVBa7BET8R19952', '2022-10-30 12:24:49'),
(113, 'text', NULL, '+91', 'text', 'text', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$TUCh0IwnLhcOJEeZ353zXOOYromP9EXmVtoc824o5LPzICOW3GiFC', 'andriod', '123sfrdsfsf45678', NULL, '6848', 1, NULL, NULL, NULL, '73278a4a86960eeb576a8fd4c9ec6997', NULL, NULL, NULL, NULL, NULL, '2022-10-31 13:27:33', 0, 'XhEUHqZ6Rz30587', '2022-10-31 13:27:33'),
(114, '9782840284', NULL, '+91', '9782840284', '9782840284', 'profile/profile1658410284.png', NULL, NULL, NULL, NULL, NULL, '$2y$10$kEnwS.A.SeGBxQ/K2Bn3n.rjOtD8UA8xePeoON/sYTyjN/ahmlwum', 'andriod', '123sfrdsfsf45678', NULL, '1', 1, NULL, NULL, NULL, '5fd0b37cd7dbbb00f97ba6ce92bf5add', NULL, NULL, NULL, NULL, NULL, '2022-11-02 12:32:41', 0, 'ZmrBfIiSUl93072', '2022-11-02 12:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `purchase_id` varchar(255) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` int(13) NOT NULL,
  `amount` varchar(244) DEFAULT NULL,
  `remark` varchar(255) DEFAULT 'Add Wallet',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `purchase_id`, `order_id`, `status`, `user_id`, `amount`, `remark`, `created_at`, `updated_at`) VALUES
(1, 'jhdsfkjshdkjfhsdkj', 'rty4654', 'success', 62, '1', 'Add Wallet', '2022-10-15 08:57:11', '2022-10-15 09:05:32'),
(2, NULL, 'order_KTzplyenpkDFP5', 'pending', 5, '100', 'Add Wallet', '2022-10-15 09:22:33', '2022-10-15 09:22:33'),
(3, NULL, 'order_KU1SVgIHkeunAS', 'pending', 34, '10000', 'Add Wallet', '2022-10-15 10:57:55', '2022-10-15 10:57:55'),
(4, NULL, 'order_KU1SVlZ5sFgjVT', 'pending', 34, '10000', 'Add Wallet', '2022-10-15 10:57:55', '2022-10-15 10:57:55'),
(5, NULL, 'order_KU1SWQGogzxqwE', 'pending', 34, '10000', 'Add Wallet', '2022-10-15 10:57:56', '2022-10-15 10:57:56'),
(6, NULL, 'order_KU1SX17W4CFWLU', 'pending', 34, '10000', 'Add Wallet', '2022-10-15 10:57:56', '2022-10-15 10:57:56'),
(7, NULL, 'order_KU1SX2guQpyiIc', 'pending', 34, '10000', 'Add Wallet', '2022-10-15 10:57:56', '2022-10-15 10:57:56'),
(8, NULL, 'order_KU1SXNEdsqsEpb', 'pending', 34, '10000', 'Add Wallet', '2022-10-15 10:57:57', '2022-10-15 10:57:57'),
(9, NULL, 'order_KU6OGF49rknKSE', 'pending', 7, '100', 'Add Wallet', '2022-10-15 15:47:22', '2022-10-15 15:47:22'),
(10, NULL, 'order_KUH3EDeVbJIxLx', 'pending', 7, '100', 'Add Wallet', '2022-10-16 02:13:05', '2022-10-16 02:13:05'),
(11, NULL, 'order_KUiBRiJaZF6d9R', 'pending', 7, '100', 'Add Wallet', '2022-10-17 04:45:35', '2022-10-17 04:45:35'),
(12, NULL, 'order_KUiPpqmlBH2p4v', 'pending', 7, '100', 'Add Wallet', '2022-10-17 04:59:13', '2022-10-17 04:59:13'),
(13, NULL, 'order_KUiS2j8nQfXgG2', 'pending', 7, '100', 'Add Wallet', '2022-10-17 05:01:18', '2022-10-17 05:01:18'),
(14, NULL, 'order_KUiSWZsQdoExiO', 'pending', 7, '100', 'Add Wallet', '2022-10-17 05:01:45', '2022-10-17 05:01:45'),
(15, NULL, 'order_KUiUPeaKTJcmiG', 'pending', 7, '100', 'Add Wallet', '2022-10-17 05:03:33', '2022-10-17 05:03:33'),
(16, NULL, 'order_KUiUPeVriRCD5a', 'pending', 7, '100', 'Add Wallet', '2022-10-17 05:03:33', '2022-10-17 05:03:33'),
(17, NULL, 'order_KUiVVFFuKddMwx', 'pending', 7, '100', 'Add Wallet', '2022-10-17 05:04:35', '2022-10-17 05:04:35'),
(18, NULL, 'order_KUiZL9lUFJHvtA', 'pending', 7, '100', 'Add Wallet', '2022-10-17 05:08:13', '2022-10-17 05:08:13'),
(19, NULL, 'order_KUiZt6uNZsEl9K', 'pending', 7, '100', 'Add Wallet', '2022-10-17 05:08:44', '2022-10-17 05:08:44'),
(20, NULL, 'order_KUibjhF8zj5HUB', 'pending', 64, '100', 'Add Wallet', '2022-10-17 05:10:29', '2022-10-17 05:10:29'),
(21, NULL, 'order_KUifUM3jsRHCf1', 'pending', 64, '100', 'Add Wallet', '2022-10-17 05:14:02', '2022-10-17 05:14:02'),
(22, NULL, 'order_KUik2jNj8HBXjX', 'pending', 64, '100', 'Add Wallet', '2022-10-17 05:18:21', '2022-10-17 05:18:21'),
(23, NULL, 'order_KUj1E8QauzTa5E', 'pending', 64, '100', 'Add Wallet', '2022-10-17 05:34:38', '2022-10-17 05:34:38'),
(24, NULL, 'order_KUj8rZhopHnNjM', 'pending', 64, '100', 'Add Wallet', '2022-10-17 05:41:50', '2022-10-17 05:41:50'),
(25, NULL, 'order_KUjbJvW62xD8z0', 'pending', 64, '0.01', 'Add Wallet', '2022-10-17 06:08:47', '2022-10-17 06:08:47'),
(26, NULL, 'order_KUjfZWmcMropin', 'pending', 64, '100', 'Add Wallet', '2022-10-17 06:12:48', '2022-10-17 06:12:48'),
(27, NULL, 'order_KUjkXD7AsC2lXn', 'pending', 64, '100', 'Add Wallet', '2022-10-17 06:17:30', '2022-10-17 06:17:30'),
(28, NULL, 'order_KUjyTpEb3jUxPB', 'pending', 64, '100', 'Add Wallet', '2022-10-17 06:30:42', '2022-10-17 06:30:42'),
(29, NULL, 'order_KUk9QYuXx1DtUn', 'pending', 64, '10000', 'Add Wallet', '2022-10-17 06:41:04', '2022-10-17 06:41:04'),
(30, NULL, 'order_KUkDJkHnDQxVq3', 'pending', 64, '10000', 'Add Wallet', '2022-10-17 06:44:45', '2022-10-17 06:44:45'),
(31, NULL, 'order_KUkJv6jZxE9qvX', 'pending', 64, '100', 'Add Wallet', '2022-10-17 06:51:00', '2022-10-17 06:51:00'),
(32, 'pay_KUkbUhaQiEfSNx', 'order_KUkbFqC6b4MArD', 'success', 64, '100', 'Add Wallet', '2022-10-17 07:07:26', '2022-10-17 07:08:03'),
(33, 'pay_KUkrD5AvvpZg1l', 'order_KUkqc0n9Qev5yF', 'success', 64, '1', 'Add Wallet', '2022-10-17 07:21:58', '2022-10-17 07:23:05'),
(34, 'pay_KUpEbG5hbvews4', 'order_KUpEPrV5zV6Iyh', 'success', 5, '1', 'Add Wallet', '2022-10-17 11:39:16', '2022-10-17 11:39:55'),
(35, 'pay_KYt9vjtTW7Qa5p', 'order_KYt9dySi5psZJv', 'success', 7, '1', 'Add Wallet', '2022-10-27 18:05:31', '2022-10-27 18:06:29'),
(36, 'pay_KZuWK57hzNh59p', 'order_KZuW7u3AW9UuXj', 'success', 7, '1', 'Add Wallet', '2022-10-30 08:04:31', '2022-10-30 08:05:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `allcourse`
--
ALTER TABLE `allcourse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `announcement_comments`
--
ALTER TABLE `announcement_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announcement_comments_user_id_foreign` (`user_id`),
  ADD KEY `announcement_comments_batch_id_foreign` (`batch_id`);

--
-- Indexes for table `attempts`
--
ALTER TABLE `attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attempt_test_foreign_key` (`test_id`),
  ADD KEY `attempt_package_foreign_key` (`package_id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `batchs_course_id_foreign` (`course_id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chapters`
--
ALTER TABLE `chapters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_notes`
--
ALTER TABLE `course_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doubts`
--
ALTER TABLE `doubts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doubts_user_id_foreign` (`user_id`);

--
-- Indexes for table `doubt_comments`
--
ALTER TABLE `doubt_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doubt_comments_user_id_foreign` (`user_id`),
  ADD KEY `doubt_comments_doubt_id_foreign` (`doubt_id`);

--
-- Indexes for table `ebook_notes`
--
ALTER TABLE `ebook_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ebook_notes_subjectlist`
--
ALTER TABLE `ebook_notes_subjectlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gk_current_affairs`
--
ALTER TABLE `gk_current_affairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homeallround`
--
ALTER TABLE `homeallround`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homemakes`
--
ALTER TABLE `homemakes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homesubscribe`
--
ALTER TABLE `homesubscribe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_classes`
--
ALTER TABLE `live_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `live_class_subject`
--
ALTER TABLE `live_class_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_sender_id_foreign` (`sender_id`),
  ADD KEY `notifications_reciver_id_foreign` (`reciver_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_course_foreign_key` (`courseId`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `practics_attempts`
--
ALTER TABLE `practics_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attempt_test_foreign_key` (`test_id`);

--
-- Indexes for table `practics_responses`
--
ALTER TABLE `practics_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resp_attempt_foreign_key` (`attempt_id`),
  ADD KEY `resp_test_foreign_key` (`test_id`),
  ADD KEY `resp_que_foreign_key` (`question_id`);

--
-- Indexes for table `practics_tests`
--
ALTER TABLE `practics_tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `practics__questions`
--
ALTER TABLE `practics__questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `que_test_foreign_key` (`testId`);

--
-- Indexes for table `privacypolicy`
--
ALTER TABLE `privacypolicy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_package_foreign_key` (`package_id`),
  ADD KEY `purchase_course_foreign_key` (`status`);

--
-- Indexes for table `purchases_book`
--
ALTER TABLE `purchases_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `que_test_foreign_key` (`testId`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resp_attempt_foreign_key` (`attempt_id`),
  ADD KEY `resp_test_foreign_key` (`test_id`),
  ADD KEY `resp_que_foreign_key` (`question_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_files`
--
ALTER TABLE `store_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_videos`
--
ALTER TABLE `store_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcourses`
--
ALTER TABLE `subcourses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_teacher_id_foreign` (`teacher_id`),
  ADD KEY `subjects_course_id_foreign` (`course_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`),
  ADD KEY `subscriptions_course_id_foreign` (`course_id`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `sub_courses`
--
ALTER TABLE `sub_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termcondition`
--
ALTER TABLE `termcondition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_course_foreign_key` (`courseId`),
  ADD KEY `test_subject_foreign_key` (`subjectId`);

--
-- Indexes for table `tradings`
--
ALTER TABLE `tradings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testId` (`testId`);

--
-- Indexes for table `upcoming_exam`
--
ALTER TABLE `upcoming_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `allcourse`
--
ALTER TABLE `allcourse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `announcement_comments`
--
ALTER TABLE `announcement_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attempts`
--
ALTER TABLE `attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=622;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chapters`
--
ALTER TABLE `chapters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `course_notes`
--
ALTER TABLE `course_notes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doubts`
--
ALTER TABLE `doubts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doubt_comments`
--
ALTER TABLE `doubt_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ebook_notes`
--
ALTER TABLE `ebook_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ebook_notes_subjectlist`
--
ALTER TABLE `ebook_notes_subjectlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `gk_current_affairs`
--
ALTER TABLE `gk_current_affairs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homeallround`
--
ALTER TABLE `homeallround`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `homemakes`
--
ALTER TABLE `homemakes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `homesubscribe`
--
ALTER TABLE `homesubscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `live_classes`
--
ALTER TABLE `live_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `live_class_subject`
--
ALTER TABLE `live_class_subject`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `practics_attempts`
--
ALTER TABLE `practics_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `practics_responses`
--
ALTER TABLE `practics_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `practics_tests`
--
ALTER TABLE `practics_tests`
  MODIFY `id` int(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `practics__questions`
--
ALTER TABLE `practics__questions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `privacypolicy`
--
ALTER TABLE `privacypolicy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `purchases_book`
--
ALTER TABLE `purchases_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1082;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_files`
--
ALTER TABLE `store_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_videos`
--
ALTER TABLE `store_videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcourses`
--
ALTER TABLE `subcourses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_courses`
--
ALTER TABLE `sub_courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `termcondition`
--
ALTER TABLE `termcondition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(13) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `tradings`
--
ALTER TABLE `tradings`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `upcoming_exam`
--
ALTER TABLE `upcoming_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcement_comments`
--
ALTER TABLE `announcement_comments`
  ADD CONSTRAINT `announcement_comments_batch_id_foreign` FOREIGN KEY (`batch_id`) REFERENCES `batches` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `announcement_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `batches`
--
ALTER TABLE `batches`
  ADD CONSTRAINT `batchs_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
