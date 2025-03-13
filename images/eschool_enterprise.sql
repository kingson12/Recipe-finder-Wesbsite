-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 24, 2025 at 01:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eschool_enterprise`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_control`
--

CREATE TABLE `access_control` (
  `id` int(11) NOT NULL,
  `guardian_mobile` varchar(12) NOT NULL,
  `guardian_name` varchar(100) NOT NULL,
  `no_of_pupils` bigint(21) NOT NULL DEFAULT 0,
  `no_of_authorized_p` int(11) NOT NULL,
  `authorized_n1` varchar(100) NOT NULL,
  `authorized_n2` varchar(100) NOT NULL,
  `authorized_n3` varchar(100) NOT NULL,
  `authorized_p1` varchar(100) NOT NULL,
  `authorized_p2` varchar(100) NOT NULL,
  `authorized_p3` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_charts`
--

CREATE TABLE `account_charts` (
  `id` int(6) UNSIGNED NOT NULL,
  `acct_type` varchar(50) DEFAULT NULL,
  `credit_debit` varchar(100) DEFAULT NULL,
  `category` varchar(1000) DEFAULT NULL,
  `acct_name` varchar(30) DEFAULT NULL,
  `detail_type` varchar(50) DEFAULT NULL,
  `acct_desc` varchar(50) DEFAULT NULL,
  `balance` varchar(50) DEFAULT NULL,
  `as_of` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `acct_transactions`
--

CREATE TABLE `acct_transactions` (
  `id` int(6) UNSIGNED NOT NULL,
  `payment_proof` varchar(50) NOT NULL,
  `amount` varchar(50) NOT NULL,
  `account_chart` varchar(50) NOT NULL,
  `date_of_payment` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `means_of_payment` varchar(50) NOT NULL,
  `status` varchar(1000) DEFAULT NULL,
  `transaction_id` varchar(1000) DEFAULT NULL,
  `acct_type` varchar(50) NOT NULL,
  `credit_debit` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `receiver_uid` varchar(50) NOT NULL,
  `admin_invoice_num` varchar(50) NOT NULL,
  `admin_receipt_num` varchar(50) NOT NULL,
  `mean` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `affective`
--

CREATE TABLE `affective` (
  `id` int(11) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL,
  `recepient` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `sender_category` varchar(100) NOT NULL,
  `receiver_category` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `textbook` varchar(100) NOT NULL,
  `submission_date` date NOT NULL,
  `description` text NOT NULL,
  `student_response` text NOT NULL,
  `student_attachment` varchar(100) NOT NULL,
  `assignment_score` varchar(100) NOT NULL,
  `read_message` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `post_date` date NOT NULL,
  `attachment` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `time` int(11) DEFAULT NULL,
  `class` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `term` varchar(100) NOT NULL,
  `academic_year` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `entry_date` date NOT NULL,
  `no_of_questions` int(11) NOT NULL,
  `question_cnt` int(11) NOT NULL,
  `test_status` varchar(10) NOT NULL DEFAULT 'Open'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `time`, `class`, `level`, `term`, `academic_year`, `subject`, `user_id`, `entry_date`, `no_of_questions`, `question_cnt`, `test_status`) VALUES
(1, 'Weekend Dose Year One', 30, 'year', '1', 'Third', '2022/2023', 'English', 'SSS_T_001', '2023-04-21', 2, 2, 'Open'),
(2, 'Mathematics Assignment1', 2, 'jss', '1', 'First', '2023/2024', 'Maths', 'SSS_T_005', '2023-08-16', 2, 2, 'Open'),
(3, 'Midterm Test English', 5, 'jss', '1', 'First', '2023/2024', 'English', 'SSS_T_005', '2023-08-16', 2, 2, 'Open');

-- --------------------------------------------------------

--
-- Table structure for table `choice`
--

CREATE TABLE `choice` (
  `id` int(11) NOT NULL,
  `questionid` int(11) NOT NULL,
  `choice` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  `file` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `choice`
--

INSERT INTO `choice` (`id`, `questionid`, `choice`, `answer`, `file`) VALUES
(1, 1482829680, 'yes', 'Yes', ''),
(2, 1482829680, 'no', 'No', ''),
(3, 1482829680, 'no', 'None', ''),
(4, 1482829680, 'no', 'All of the above', ''),
(5, 815639003, 'yes', 'True', ''),
(6, 815639003, 'no', 'False', ''),
(7, 815639003, 'no', 'None of the above', ''),
(8, 815639003, 'no', ' All of the above', ''),
(9, 1069221143, 'yes', '9', ''),
(10, 1069221143, 'no', '45', ''),
(11, 1069221143, 'no', '4', ''),
(12, 1069221143, 'no', '8', ''),
(13, 1356770654, 'yes', '8', ''),
(14, 1356770654, 'no', '10', ''),
(15, 1356770654, 'no', '9', ''),
(16, 1356770654, 'no', '7', ''),
(17, 2022280126, 'yes', 'Yes', ''),
(18, 2022280126, 'no', 'No', ''),
(19, 2022280126, 'no', 'None of the above', ''),
(20, 2022280126, 'no', 'All of the above', ''),
(21, 2114921288, 'yes', 'Yes', ''),
(22, 2114921288, 'no', 'No', ''),
(23, 2114921288, 'no', 'None of the above', ''),
(24, 2114921288, 'no', 'All of the above', '');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(2) UNSIGNED NOT NULL,
  `class` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class`, `created_at`, `updated_at`) VALUES
(1, 'Nursery', '2023-04-20 07:27:02', '0000-00-00 00:00:00'),
(2, 'Year', '2023-04-20 07:27:12', '0000-00-00 00:00:00'),
(3, 'JSS', '2023-04-20 07:27:24', '0000-00-00 00:00:00'),
(4, 'SSS', '2023-04-20 07:27:36', '0000-00-00 00:00:00'),
(5, 'Language Development', '2023-04-20 08:26:00', '0000-00-00 00:00:00'),
(6, 'Pre-School', '2023-08-23 12:46:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `communication_diary`
--

CREATE TABLE `communication_diary` (
  `id` int(11) UNSIGNED NOT NULL,
  `sender_category` varchar(100) NOT NULL,
  `receiver_category` varchar(100) NOT NULL,
  `sender_id` varchar(100) NOT NULL,
  `receiver_id` varchar(100) NOT NULL,
  `read_message` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `attachment` varchar(80) NOT NULL,
  `message_time` varchar(100) NOT NULL,
  `message_date` date NOT NULL,
  `book_of_the_day` varchar(100) NOT NULL,
  `home_work` varchar(100) NOT NULL,
  `reply_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) UNSIGNED NOT NULL,
  `coursecode` varchar(100) NOT NULL,
  `coursename` varchar(255) NOT NULL,
  `passing_score` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_comm`
--

CREATE TABLE `daily_comm` (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL,
  `sender_category` varchar(100) NOT NULL,
  `receiver_category` varchar(100) NOT NULL,
  `sender_id` varchar(100) NOT NULL,
  `receiver_id` varchar(100) NOT NULL,
  `read_message` int(11) NOT NULL,
  `teachers_comment` text NOT NULL,
  `parent_response` text NOT NULL,
  `attachment` varchar(100) NOT NULL,
  `message_time` varchar(100) NOT NULL,
  `message_date` date NOT NULL,
  `book_of_the_day` varchar(100) NOT NULL,
  `home_work` varchar(100) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `punctuality` varchar(100) NOT NULL,
  `nap` varchar(100) NOT NULL,
  `school_uniform` varchar(100) NOT NULL,
  `mood` varchar(100) NOT NULL,
  `health` varchar(100) NOT NULL,
  `home_work_previous` varchar(100) NOT NULL,
  `lunch` varchar(100) NOT NULL,
  `attitude_class_work` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_sched`
--

CREATE TABLE `exam_sched` (
  `id` int(11) UNSIGNED NOT NULL,
  `description` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `start_time` varchar(15) NOT NULL,
  `end_time` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_payment_history`
--

CREATE TABLE `fee_payment_history` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `session` varchar(50) NOT NULL,
  `term` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL,
  `school_fee` int(11) DEFAULT NULL,
  `transportation_fee` int(11) DEFAULT NULL,
  `lesson_fee` int(11) DEFAULT NULL,
  `uniform` int(11) DEFAULT NULL,
  `books` int(11) DEFAULT NULL,
  `pta` int(11) DEFAULT NULL,
  `excursion` int(11) DEFAULT NULL,
  `practicals` int(11) DEFAULT NULL,
  `other_fees` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `payment_reference` varchar(255) DEFAULT NULL,
  `total_paid` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_payment_installments`
--

CREATE TABLE `fee_payment_installments` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `session` varchar(50) NOT NULL,
  `term` varchar(50) NOT NULL,
  `class` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `payment_reference` varchar(255) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `paid_at` datetime DEFAULT NULL,
  `fee_payment_history_id` int(11) NOT NULL,
  `offline_payment_flag` datetime DEFAULT NULL,
  `student_offline_payment_details_note` text DEFAULT NULL,
  `student_offline_payment_file_url` varchar(1000) DEFAULT NULL,
  `admin_comment` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee_setups`
--

CREATE TABLE `fee_setups` (
  `id` int(11) UNSIGNED NOT NULL,
  `fee_category` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `term` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL,
  `level` int(3) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  `is_compulsory` varchar(50) NOT NULL DEFAULT 'No',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `institution_details`
--

CREATE TABLE `institution_details` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `institutionName` varchar(250) DEFAULT NULL,
  `institutionCountry` varchar(50) DEFAULT NULL,
  `institutionState` varchar(50) NOT NULL,
  `institutionAddress` varchar(250) NOT NULL,
  `institutionEmail` varchar(191) NOT NULL,
  `institutionPhone` varchar(50) NOT NULL,
  `institutionMobile` varchar(50) NOT NULL,
  `institutionAdmin` varchar(191) NOT NULL,
  `logo` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `institution_details`
--

INSERT INTO `institution_details` (`id`, `institutionName`, `institutionCountry`, `institutionState`, `institutionAddress`, `institutionEmail`, `institutionPhone`, `institutionMobile`, `institutionAdmin`, `logo`) VALUES
(0000000001, 'SIMID SCHOOLS', 'Nigeria', 'Lagos', '22&amp;24, Jubril Olabisi Street, Idimu road, Ejigbo, Lagos', 'simidschools421@gmail.com', '', '08035716990, 08034596273', 'MRS Olamide Okusanya', 'img/school_logo/sss.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `jss`
--

CREATE TABLE `jss` (
  `id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jss`
--

INSERT INTO `jss` (`id`, `subject`, `created_at`) VALUES
(1, 'English', '2023-04-21 11:28:58'),
(2, 'Maths', '2023-04-21 11:28:58'),
(7, 'Yoruba', '2023-04-25 10:39:44'),
(9, 'Business Studies', '2023-04-25 10:39:44'),
(12, 'Basic Science and Technology One', '2023-04-26 14:01:55'),
(13, 'Basic Science and Technology Two', '2023-04-26 14:01:55'),
(14, 'National Value Education', '2023-04-26 14:01:55'),
(15, 'Pre Vocational Studies', '2023-04-26 14:01:55'),
(16, 'Cultural And Creative Arts', '2023-04-26 14:01:55'),
(17, 'History', '2023-04-26 14:01:55'),
(18, 'French', '2023-04-26 14:03:13'),
(19, 'Diction', '2023-04-26 14:03:13'),
(21, 'Christian Religious Studies', '2023-04-26 14:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `jss_result`
--

CREATE TABLE `jss_result` (
  `id` int(2) UNSIGNED NOT NULL,
  `class` varchar(12) NOT NULL,
  `level` varchar(2) NOT NULL,
  `class_number` varchar(255) NOT NULL,
  `student_admission_number` varchar(100) NOT NULL,
  `Christian_Religious_Studies` text NOT NULL,
  `History` text NOT NULL,
  `Cultural_And_Creative_Arts` text NOT NULL,
  `National_Value_Education` text NOT NULL,
  `Basic_Science_and_Technology_Two` text NOT NULL,
  `Basic_Science_and_Technology_One` text NOT NULL,
  `english` int(3) DEFAULT NULL,
  `maths` int(3) DEFAULT NULL,
  `civic_education` int(3) DEFAULT NULL,
  `crs_irs` int(3) DEFAULT NULL,
  `physical_education` int(3) DEFAULT NULL,
  `french` int(3) DEFAULT NULL,
  `diction` int(3) DEFAULT NULL,
  `basic_science` int(3) DEFAULT NULL,
  `yoruba` int(3) DEFAULT NULL,
  `basic_tech` int(3) DEFAULT NULL,
  `information_tech` int(3) DEFAULT NULL,
  `business_studies` int(3) DEFAULT NULL,
  `agricultural_science` int(3) DEFAULT NULL,
  `social_studies` int(3) DEFAULT NULL,
  `security_education` int(3) DEFAULT NULL,
  `home_economic` int(3) DEFAULT NULL,
  `creative_art` int(3) DEFAULT NULL,
  `music` int(3) DEFAULT NULL,
  `basic_science_technology` int(3) NOT NULL,
  `religious_and_national_values` int(3) NOT NULL,
  `pre_vocational_studies` int(3) NOT NULL,
  `cultural_and_creative_art` int(3) NOT NULL,
  `number_of_times_present` int(3) DEFAULT NULL,
  `number_of_times_punctual` int(3) DEFAULT NULL,
  `cleanliness` varchar(10) DEFAULT NULL,
  `conduct` varchar(60) DEFAULT NULL,
  `teacher_comment` varchar(100) DEFAULT NULL,
  `principal_comment` varchar(100) DEFAULT NULL,
  `academic_year` varchar(100) DEFAULT NULL,
  `term_type` varchar(10) NOT NULL,
  `result_type` varchar(6) NOT NULL,
  `next_resumption_date` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `approval` varchar(80) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kindergarten_result`
--

CREATE TABLE `kindergarten_result` (
  `id` int(2) UNSIGNED NOT NULL,
  `class` varchar(12) NOT NULL,
  `level` varchar(2) NOT NULL,
  `student_admission_number` varchar(12) NOT NULL,
  `LETTER_WORK` int(3) NOT NULL,
  `NUMBER_WORK` int(3) NOT NULL,
  `BASIC_SCIENCE_AND_TECHNOLOGY` int(3) NOT NULL,
  `HEALTH_HABIT` int(3) NOT NULL,
  `SOCIAL_HABIT` int(3) NOT NULL,
  `PHYSICAL_AND_HEALTH_EDUCATION` int(3) NOT NULL,
  `AFFECTIVE_PSYCHOLOGY_DEVELOPMENT` int(3) NOT NULL,
  `COGNITION_DEVELOPMENT` int(3) NOT NULL,
  `HEALTH` int(3) NOT NULL,
  `SAFETY_MEASURES` int(3) NOT NULL,
  `PROTECTION_ISSUES` int(3) NOT NULL,
  `PHYSICAL_DEVELOPMENT` int(3) NOT NULL,
  `WATER_AND_ENVIRONMENTAL_SANITAITON` int(3) NOT NULL,
  `CIVIC_EDUCATION` int(3) NOT NULL,
  `FOOD_AND_NUTRITION` int(3) NOT NULL,
  `HANDWRITING` int(3) NOT NULL,
  `CRK` int(3) NOT NULL,
  `NATURE_TALK` int(3) NOT NULL,
  `FINE_ART` int(3) NOT NULL,
  `Quantitative_Reasoning` int(3) NOT NULL,
  `Verbal_Reasoning` int(3) NOT NULL,
  `Cultural_and_Creative_Art` int(3) NOT NULL,
  `Rhymes` int(3) NOT NULL,
  `number_of_times_present` int(3) NOT NULL,
  `number_of_times_punctual` int(3) NOT NULL,
  `cleanliness` varchar(100) NOT NULL,
  `conduct` varchar(100) NOT NULL,
  `teacher_comment` varchar(100) NOT NULL,
  `principal_comment` varchar(100) NOT NULL,
  `academic_year` varchar(100) NOT NULL,
  `term_type` varchar(100) NOT NULL,
  `result_type` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language_development`
--

CREATE TABLE `language_development` (
  `id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `language_development`
--

INSERT INTO `language_development` (`id`, `subject`, `created_at`) VALUES
(1, 'Numeracy', '2023-04-26 14:35:02'),
(2, 'Literacy', '2023-04-26 14:35:02'),
(3, 'Social habit', '2023-04-26 14:35:02'),
(4, 'Sensorial Education', '2023-04-26 14:35:02'),
(5, 'Health Habit', '2023-04-26 14:35:02'),
(6, 'Nursery Science', '2023-04-26 14:35:02'),
(7, 'Practical Life', '2023-04-26 14:35:02'),
(8, 'Rhyme', '2023-04-26 14:35:02'),
(9, 'Christian Religious Studies', '2023-04-26 14:35:02'),
(10, 'Cultural and Creative Art', '2023-04-26 14:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `last_activity` datetime NOT NULL,
  `user_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `user_category`) VALUES
(1, 188, '2023-12-07 08:28:09', 'School Admin'),
(2, 189, '2023-11-14 12:34:41', 'Teacher'),
(3, 193, '2023-09-11 11:28:08', 'Teacher'),
(4, 58, '2023-08-16 06:32:24', 'Student'),
(5, 230, '2023-09-15 11:59:55', 'Teacher'),
(6, 206, '2023-08-16 13:51:43', 'Teacher'),
(7, 211, '2023-09-01 13:57:20', 'Teacher'),
(8, 188, '2023-11-09 12:04:19', 'Teacher'),
(9, 198, '2023-09-10 22:55:07', 'Teacher'),
(10, 200, '2023-09-07 10:54:16', 'Teacher'),
(11, 239, '2023-09-07 10:53:45', 'Teacher'),
(12, 247, '2023-09-15 14:29:45', 'Teacher'),
(13, 205, '2023-09-07 12:51:16', 'Teacher'),
(14, 219, '2023-09-11 08:25:39', 'Teacher'),
(15, 229, '2023-09-15 07:32:32', 'Teacher'),
(16, 199, '2023-09-07 10:54:11', 'Teacher'),
(17, 201, '2023-09-15 14:54:01', 'Teacher'),
(18, 245, '2023-09-15 14:41:18', 'Teacher'),
(19, 225, '2023-09-15 14:29:24', 'Teacher'),
(20, 196, '2023-09-26 13:47:52', 'Teacher'),
(21, 214, '2023-09-11 16:15:25', 'Teacher'),
(22, 249, '2023-09-11 16:47:52', 'Teacher'),
(23, 194, '2023-09-13 14:25:51', 'Teacher'),
(24, 231, '2023-09-14 12:05:49', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `activity` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `user_name`, `activity`, `created_at`) VALUES
(1, 'SSSadmin', 'Admin', 'Updated SS0230 Bernice  Jesusetemi  Okusanya  details.', '2023-09-01 11:40:45'),
(2, 'SSSadmin', 'Admin', 'Updated SS0165 Wuraola  Folorunsho details.', '2023-09-01 11:42:28'),
(3, 'SSSadmin', 'Admin', 'Updated SS0237 Obinna  Akah details.', '2023-09-01 11:45:49'),
(4, 'SSSadmin', 'Admin', 'Updated SS0249 Gold  Olajorin details.', '2023-09-01 11:46:46'),
(5, 'SSSadmin', 'Admin', 'Updated SSS098 Munachimso Abigail Ejike details.', '2023-09-01 12:59:45'),
(6, 'SSSadmin', 'Admin', 'Updated SS0374 David  Oyerinde details.', '2023-09-06 14:07:56'),
(7, 'SSSadmin', 'Admin', 'Updated SS0096 Robert  Chiamaka Amake details.', '2023-09-06 14:09:24'),
(8, 'SSSadmin', 'Admin', 'Updated SS0097 Olajide Ireoluwa Isaac details.', '2023-09-06 14:10:34'),
(9, 'SSSadmin', 'Admin', 'Updated SS0313 Stephen  Oluwamayowa Adesanya details.', '2023-09-06 14:23:35'),
(10, 'SSSadmin', 'Admin', 'Updated SS0134 Jamal  Feyisetan details.', '2023-09-11 17:03:51'),
(11, 'SSSadmin', 'Admin', 'Updated SS0323 Semilore Onyedikachi Peters  details.', '2023-09-13 13:40:26'),
(12, 'SSSadmin', 'Admin', 'Updated SS0320 Ifechukwu  Eleazars details.', '2023-09-13 13:41:17'),
(13, 'SSSadmin', 'Admin', 'Updated SS0322 Chinazaekpere Christabel Onyegbuna details.', '2023-09-13 13:42:16'),
(14, 'SSSadmin', 'Admin', 'Uploaded SSS0500 Adewale Tola James to student list.', '2023-11-09 13:41:41'),
(15, 'SSSadmin', 'Admin', 'Uploaded SSS0501 Davis Caleb Alex to student list.', '2023-11-09 13:43:23'),
(16, 'SSSadmin', 'Admin', 'Updated SSS0500 Akinwale Tola James details.', '2023-11-09 14:25:07');

-- --------------------------------------------------------

--
-- Table structure for table `nursery`
--

CREATE TABLE `nursery` (
  `id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nursery`
--

INSERT INTO `nursery` (`id`, `subject`, `created_at`) VALUES
(6, 'Rhymes', '2023-04-25 10:38:40'),
(9, 'Social Habit', '2023-04-26 14:25:56'),
(10, 'Nursery Science', '2023-04-26 14:25:56'),
(11, 'Sensorial Education', '2023-04-26 14:25:56'),
(12, 'Practical Life', '2023-04-26 14:25:56'),
(13, 'Christian Religious Studies', '2023-04-26 14:25:56'),
(14, 'Cultural and Creative Art', '2023-04-26 14:25:56'),
(15, 'Quantitative Reasoning', '2023-04-26 14:25:56'),
(16, 'Verbal Reasoning', '2023-04-26 14:25:56'),
(17, 'Handwriting', '2023-04-26 14:25:56'),
(18, 'English Studies', '2023-04-26 14:25:56'),
(19, 'Mathematics', '2023-04-26 14:25:56'),
(26, 'Health Habit', '2023-04-26 14:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `nursery_result`
--

CREATE TABLE `nursery_result` (
  `id` int(2) UNSIGNED NOT NULL,
  `class` varchar(12) NOT NULL,
  `level` varchar(2) NOT NULL,
  `class_number` varchar(255) NOT NULL,
  `student_admission_number` varchar(12) NOT NULL,
  `French` text NOT NULL,
  `Literature` text NOT NULL,
  `Prevocational_Studies` text NOT NULL,
  `Religious_and_National_Value` text NOT NULL,
  `Mathematics` text NOT NULL,
  `English_Studies` text NOT NULL,
  `Cultural_and_Creative_Art` text NOT NULL,
  `Practical_Life` text NOT NULL,
  `Sensorial_Education` text NOT NULL,
  `Nursery_Science` text NOT NULL,
  `Literacy` text NOT NULL,
  `Numeracy` text NOT NULL,
  `MATHS` int(3) NOT NULL,
  `ENGLISH` int(3) NOT NULL,
  `PHONICS` int(3) NOT NULL,
  `LETTER_WORK` int(3) NOT NULL,
  `NUMBER_WORK` int(3) NOT NULL,
  `BASIC_SCIENCE_AND_TECHNOLOGY` int(3) NOT NULL,
  `HEALTH_HABIT` int(3) NOT NULL,
  `SOCIAL_HABIT` int(3) NOT NULL,
  `PHYSICAL_AND_HEALTH_EDUCATION` int(3) NOT NULL,
  `CIVIC_EDUCATION` int(3) NOT NULL,
  `FOOD_AND_NUTRITION` int(3) NOT NULL,
  `CREATIVE_ART` int(3) NOT NULL,
  `VERBAL_REASONING` int(3) NOT NULL,
  `QUANTITATIVE_REASONING` int(3) NOT NULL,
  `RHYMES` int(3) NOT NULL,
  `YORUBA_LANGUAGE` int(3) NOT NULL,
  `CHRISTIAN_RELIGIOUS_STUDIES` int(3) NOT NULL,
  `HANDWRITING` int(3) NOT NULL,
  `number_of_times_present` int(3) NOT NULL,
  `number_of_times_punctual` int(3) NOT NULL,
  `cleanliness` varchar(100) NOT NULL,
  `conduct` varchar(100) NOT NULL,
  `teacher_comment` varchar(100) NOT NULL,
  `principal_comment` varchar(100) NOT NULL,
  `academic_year` varchar(100) NOT NULL,
  `term_type` varchar(100) NOT NULL,
  `result_type` varchar(100) NOT NULL,
  `next_resumption_date` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `approval` varchar(80) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preschool_classes`
--

CREATE TABLE `preschool_classes` (
  `id` int(100) NOT NULL,
  `class` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preschool_result`
--

CREATE TABLE `preschool_result` (
  `id` int(100) NOT NULL,
  `student_admission_number` varchar(100) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `academic_year` varchar(100) DEFAULT NULL,
  `number_of_times_present` varchar(100) DEFAULT NULL,
  `number_of_times_punctual` varchar(100) DEFAULT NULL,
  `next_resumption_date` varchar(100) DEFAULT NULL,
  `teacher_comment` varchar(100) DEFAULT NULL,
  `result_type` varchar(100) DEFAULT NULL,
  `term_type` varchar(100) DEFAULT NULL,
  `principal_comment` varchar(100) DEFAULT NULL,
  `cleanliness` text DEFAULT NULL,
  `conduct` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preschool_subjects`
--

CREATE TABLE `preschool_subjects` (
  `id` int(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `discription` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `primary`
--

CREATE TABLE `primary` (
  `id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `primary`
--

INSERT INTO `primary` (`id`, `subject`, `created_at`) VALUES
(1, 'English', '2023-04-21 11:28:28'),
(2, 'Mathematics', '2023-04-21 11:28:28'),
(3, 'Basic Science And Technology', '2023-04-21 11:28:28'),
(4, 'Religion And National Values', '2023-04-21 11:28:28'),
(5, 'Cultural And Creative Art', '2023-04-25 10:39:22'),
(6, 'Verbal Reasoning', '2023-04-25 10:39:22'),
(10, 'French', '2023-04-25 10:39:22'),
(11, 'Pre Vocational Studies', '2023-04-25 10:39:22'),
(12, 'Literature', '2023-04-26 14:16:28'),
(13, 'Quantitative reasoning', '2023-04-26 14:16:28'),
(14, 'History', '2023-04-26 14:16:28'),
(15, 'Yoruba', '2023-04-26 14:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `primary_addmission_form_filled`
--

CREATE TABLE `primary_addmission_form_filled` (
  `id` int(10) UNSIGNED NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `otherNames` varchar(60) NOT NULL,
  `dayOfBirth` varchar(2) NOT NULL,
  `monthOfBirth` varchar(2) NOT NULL,
  `yearOfBirth` varchar(4) NOT NULL,
  `religion` varchar(10) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `previousSchoolName` varchar(191) NOT NULL,
  `previousFrom` varchar(191) NOT NULL,
  `previousTo` varchar(191) NOT NULL,
  `leavingReasons` varchar(255) NOT NULL,
  `passport` varchar(191) NOT NULL,
  `fatherGuardian` varchar(60) DEFAULT NULL,
  `paymentResponsibility` varchar(30) NOT NULL,
  `payeeName` varchar(60) DEFAULT NULL,
  `payeeEmail` varchar(191) DEFAULT NULL,
  `payeeOccupation` varchar(191) NOT NULL,
  `payeeOfficeAddress` varchar(255) DEFAULT NULL,
  `payeeOfficePhone` varchar(11) DEFAULT NULL,
  `payeeHomeAddress` varchar(191) DEFAULT NULL,
  `payeeHomePhone` varchar(11) DEFAULT NULL,
  `fatherName` varchar(60) DEFAULT NULL,
  `fatherEmail` varchar(191) DEFAULT NULL,
  `fatherOccupation` varchar(191) DEFAULT NULL,
  `fatherOfficeAddress` varchar(255) DEFAULT NULL,
  `fatherOfficePhone` varchar(11) DEFAULT NULL,
  `fatherHomeAddress` varchar(255) DEFAULT NULL,
  `fatherHomePhone` varchar(11) DEFAULT NULL,
  `motherName` varchar(60) DEFAULT NULL,
  `motherEmail` varchar(191) NOT NULL,
  `motherOccupation` varchar(191) DEFAULT NULL,
  `motherOfficeAddress` varchar(255) DEFAULT NULL,
  `motherOfficePhone` varchar(11) DEFAULT NULL,
  `motherHomeAddress` varchar(255) DEFAULT NULL,
  `motherHomePhone` varchar(11) DEFAULT NULL,
  `livesWith` varchar(30) DEFAULT NULL,
  `inoculations` varchar(3) NOT NULL,
  `inoculationsNotTaken` varchar(191) DEFAULT NULL,
  `disease` varchar(3) NOT NULL,
  `diseaseSufferingFrom` varchar(191) DEFAULT NULL,
  `suffer` varchar(3) NOT NULL,
  `sufferFrom` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `primary_quarterly_report`
--

CREATE TABLE `primary_quarterly_report` (
  `id` int(2) UNSIGNED ZEROFILL NOT NULL,
  `class` varchar(12) NOT NULL,
  `level` varchar(2) NOT NULL,
  `student_admission_number` varchar(100) NOT NULL,
  `LITERACY` int(3) DEFAULT NULL,
  `NUMERACY` int(3) DEFAULT NULL,
  `BASIC_SCIENCE_AND_TECHNOLOGY` int(3) DEFAULT NULL,
  `RELIGION_AND_NATIONAL_VALUES` int(3) DEFAULT NULL,
  `HANDWRITING` int(3) DEFAULT NULL,
  `QUANTITATIVE_REASONING` int(3) DEFAULT NULL,
  `CULTURAL_AND_CREATIVE_ART` int(3) DEFAULT NULL,
  `VERBAL_REASONING` int(3) DEFAULT NULL,
  `YORUBA` int(3) DEFAULT NULL,
  `HIFZ` int(3) DEFAULT NULL,
  `ISLAMIC_ESSENTIALS_QIRAHA` int(3) DEFAULT NULL,
  `FRENCH` int(3) DEFAULT NULL,
  `PRE_VOCATIONAL_STUDIES` int(3) DEFAULT NULL,
  `ADHKAAR_HADITH` int(3) DEFAULT NULL,
  `RELIGION_VALUES_EDUCATION` int(3) DEFAULT NULL,
  `DICTION` int(3) DEFAULT NULL,
  `PRACTICAL_LIFE_EXPERIENCE` int(3) DEFAULT NULL,
  `PHONICS` int(3) DEFAULT NULL,
  `STEM_ACTIVITIES` int(3) DEFAULT NULL,
  `INFORMATION_AND_COMM_TECH` int(3) DEFAULT NULL,
  `MORAL_EDUCATION` int(3) DEFAULT NULL,
  `MUSIC` int(3) DEFAULT NULL,
  `LITERACY_NO_OF_TOPICS` int(3) NOT NULL,
  `NUMERACY_NO_OF_TOPICS` int(3) NOT NULL,
  `BASIC_SCIENCE_AND_TECHNOLOGY_NO_OF_TOPICS` int(3) NOT NULL,
  `RELIGION_AND_NATIONAL_VALUES_NO_OF_TOPICS` int(3) NOT NULL,
  `HANDWRITING_NO_OF_TOPICS` int(3) NOT NULL,
  `QUANTITATIVE_REASONING_NO_OF_TOPICS` int(3) NOT NULL,
  `CULTURAL_AND_CREATIVE_ART_NO_OF_TOPICS` int(3) NOT NULL,
  `VERBAL_REASONING_NO_OF_TOPICS` int(3) NOT NULL,
  `YORUBA_NO_OF_TOPICS` int(3) NOT NULL,
  `HIFZ_NO_OF_TOPICS` int(3) NOT NULL,
  `ISLAMIC_ESSENTIALS_QIRAHA_NO_OF_TOPICS` int(3) NOT NULL,
  `FRENCH_NO_OF_TOPICS` int(3) NOT NULL,
  `PRE_VOCATIONAL_STUDIES_NO_OF_TOPICS` int(3) NOT NULL,
  `ADHKAAR_HADITH_NO_OF_TOPICS` int(3) NOT NULL,
  `RELIGION_VALUES_EDUCATION_NO_OF_TOPICS` int(3) NOT NULL,
  `DICTION_NO_OF_TOPICS` int(3) NOT NULL,
  `PRACTICAL_LIFE_EXPERIENCE_NO_OF_TOPICS` int(3) NOT NULL,
  `PHONICS_NO_OF_TOPICS` int(3) NOT NULL,
  `STEM_ACTIVITIES_NO_OF_TOPICS` int(3) NOT NULL,
  `INFORMATION_AND_COMM_TECH_NO_OF_TOPICS` int(3) NOT NULL,
  `MORAL_EDUCATION_NO_OF_TOPICS` int(3) NOT NULL,
  `MUSIC_NO_OF_TOPICS` int(3) NOT NULL,
  `LITERACY_TOPICS_TAUGHT` int(3) NOT NULL,
  `NUMERACY_TOPICS_TAUGHT` int(3) NOT NULL,
  `BASIC_SCIENCE_AND_TECHNOLOGY_TOPICS_TAUGHT` int(3) NOT NULL,
  `RELIGION_AND_NATIONAL_VALUES_TOPICS_TAUGHT` int(3) NOT NULL,
  `HANDWRITING_TOPICS_TAUGHT` int(3) NOT NULL,
  `QUANTITATIVE_REASONING_TOPICS_TAUGHT` int(3) NOT NULL,
  `CULTURAL_AND_CREATIVE_ART_TOPICS_TAUGHT` int(3) NOT NULL,
  `VERBAL_REASONING_TOPICS_TAUGHT` int(3) NOT NULL,
  `YORUBA_TOPICS_TAUGHT` int(3) NOT NULL,
  `HIFZ_TOPICS_TAUGHT` int(3) NOT NULL,
  `ISLAMIC_ESSENTIALS_QIRAHA_TOPICS_TAUGHT` int(3) NOT NULL,
  `FRENCH_TOPICS_TAUGHT` int(3) NOT NULL,
  `PRE_VOCATIONAL_STUDIES_TOPICS_TAUGHT` int(3) NOT NULL,
  `ADHKAAR_HADITH_TOPICS_TAUGHT` int(3) NOT NULL,
  `RELIGION_VALUES_EDUCATION_TOPICS_TAUGHT` int(3) NOT NULL,
  `DICTION_TOPICS_TAUGHT` int(3) NOT NULL,
  `PRACTICAL_LIFE_EXPERIENCE_TOPICS_TAUGHT` int(3) NOT NULL,
  `PHONICS_TOPICS_TAUGHT` int(3) NOT NULL,
  `STEM_ACTIVITIES_TOPICS_TAUGHT` int(3) NOT NULL,
  `INFORMATION_AND_COMM_TECH_TOPICS_TAUGHT` int(3) NOT NULL,
  `MORAL_EDUCATION_TOPICS_TAUGHT` int(3) NOT NULL,
  `MUSIC_TOPICS_TAUGHT` int(3) NOT NULL,
  `number_of_times_present` int(3) DEFAULT NULL,
  `number_of_times_punctual` int(3) DEFAULT NULL,
  `performance_status` varchar(100) DEFAULT NULL,
  `parent_comment` text NOT NULL,
  `parent_feedback` varchar(100) DEFAULT NULL,
  `academic_year` varchar(100) DEFAULT NULL,
  `term_type` varchar(100) NOT NULL,
  `result_type` varchar(100) NOT NULL,
  `next_resumption_date` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `primary_result`
--

CREATE TABLE `primary_result` (
  `id` int(2) UNSIGNED NOT NULL,
  `class` varchar(12) NOT NULL,
  `level` varchar(2) NOT NULL,
  `class_number` varchar(255) NOT NULL,
  `student_admission_number` varchar(12) NOT NULL,
  `MARINE` text NOT NULL,
  `History` text NOT NULL,
  `ENGLISH` int(3) DEFAULT NULL,
  `MATHEMATICS` int(3) DEFAULT NULL,
  `BASIC_SCIENCE_AND_TECHNOLOGY` int(3) DEFAULT NULL,
  `RELIGION_AND_NATIONAL_VALUES` int(3) DEFAULT NULL,
  `HANDWRITING` int(3) DEFAULT NULL,
  `QUANTITATIVE_REASONING` int(3) DEFAULT NULL,
  `CULTURAL_AND_CREATIVE_ART` int(3) DEFAULT NULL,
  `VERBAL_REASONING` int(3) DEFAULT NULL,
  `YORUBA` int(3) DEFAULT NULL,
  `LITERATURE` int(3) DEFAULT NULL,
  `SPELLINGS` int(3) DEFAULT NULL,
  `FRENCH` int(3) DEFAULT NULL,
  `PRE_VOCATIONAL_STUDIES` int(3) DEFAULT NULL,
  `GEO_HISTORY` int(3) DEFAULT NULL,
  `RELIGION_VALUES_EDUCATION` int(3) DEFAULT NULL,
  `VOCATIONAL_APTITUDE` int(3) DEFAULT NULL,
  `CURRENT_AFFAIRS` int(3) DEFAULT NULL,
  `PHONICS` int(3) DEFAULT NULL,
  `AGRICULTURAL_SCIENCE` int(3) DEFAULT NULL,
  `COMPUTER_STUDIES` int(3) DEFAULT NULL,
  `MORAL_EDUCATION` int(3) DEFAULT NULL,
  `MUSIC` int(3) DEFAULT NULL,
  `number_of_times_present` int(3) DEFAULT NULL,
  `number_of_times_punctual` int(3) DEFAULT NULL,
  `cleanliness` varchar(100) DEFAULT NULL,
  `conduct` varchar(100) DEFAULT NULL,
  `teacher_comment` varchar(100) DEFAULT NULL,
  `principal_comment` varchar(100) DEFAULT NULL,
  `academic_year` varchar(100) DEFAULT NULL,
  `term_type` varchar(100) NOT NULL,
  `result_type` varchar(100) NOT NULL,
  `next_resumption_date` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `approval` varchar(80) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `psychomotors`
--

CREATE TABLE `psychomotors` (
  `id` int(11) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `file` text DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `correct_answer` text NOT NULL,
  `file1` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `content`, `file`, `category_id`, `correct_answer`, `file1`) VALUES
(815639003, '<p>Jumping is a verb. True or False?</p>', '', 1, '', ''),
(1069221143, '<p>4 + 5</p>', '', 2, '', ''),
(1356770654, '<p>7+2-1</p>', '', 2, '', ''),
(1482829680, '<p>Is Nigeria in Africa?</p>', '', 1, '', ''),
(2022280126, '<p>Is Jumping verb?</p>', '', 3, '', ''),
(2114921288, '<p>Is John a noun?</p>', '', 3, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `registered_employees`
--

CREATE TABLE `registered_employees` (
  `id` int(255) UNSIGNED NOT NULL,
  `employee_code` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `employee_firstname` varchar(191) NOT NULL,
  `employee_middlename` varchar(191) NOT NULL,
  `employee_lastname` varchar(60) NOT NULL,
  `employee_dob` date NOT NULL,
  `employee_gender` varchar(6) NOT NULL,
  `marital_status` varchar(8) NOT NULL,
  `employee_department` varchar(191) NOT NULL,
  `designation` varchar(191) NOT NULL,
  `joining_date` date NOT NULL,
  `employee_passport` varchar(191) NOT NULL,
  `qualification` varchar(191) NOT NULL,
  `experience` varchar(4) NOT NULL,
  `present_address` varchar(255) NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `lga` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(191) NOT NULL,
  `kin_name` varchar(150) NOT NULL,
  `kin_address` varchar(191) NOT NULL,
  `kin_mobile` varchar(12) NOT NULL,
  `vacate` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `employee_class` varchar(100) NOT NULL,
  `employee_arm` text NOT NULL,
  `employee_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registered_employees`
--

INSERT INTO `registered_employees` (`id`, `employee_code`, `password`, `employee_firstname`, `employee_middlename`, `employee_lastname`, `employee_dob`, `employee_gender`, `marital_status`, `employee_department`, `designation`, `joining_date`, `employee_passport`, `qualification`, `experience`, `present_address`, `permanent_address`, `lga`, `state`, `country`, `phone`, `mobile`, `email`, `kin_name`, `kin_address`, `kin_mobile`, `vacate`, `created_at`, `updated_at`, `employee_class`, `employee_arm`, `employee_level`) VALUES
(188, 'admin', 'admin', 'Admin', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0000-00-00', '2024-10-18 14:05:15', '0000-00-00 00:00:00', 'Admin', '', 1),
(189, 'SSS_T_042', 'SSS@01', 'Tolulope', 'Yorisola', 'Tonade', '1995-05-16', ' Femal', 'Single ', 'College', 'Teacher', '2022-08-01', 'images/employee_import_pics/IMG_20230708_121030.jpg', 'Bsc', '', '23, Dauda Ilo Street ', '', 'Ifo', 'Ogun', 'Nigeria ', '08058302144', '', 'tolulope.tonade2019@gmail.com', 'OluwaBusayo', '23 Dauda Ilo street ', '07068890674', '0000-00-00', '2023-09-02 10:54:21', '0000-00-00 00:00:00', 'JSS', 'Zinnia', 2),
(190, 'SSS_T_050', 'SSS@02', 'Damilola', 'Mercy', 'Emuejevoke', '1989-04-20', ' FEMAL', 'MARRIED ', 'College ', 'Teacher', '2022-09-16', 'images/employee_import_pics/FB_IMG_16191212831877524.jpg', 'B.A LINGUISTICS AND LANGUAGES ', 'MARR', '7,OYEBADE STRT,OFF ADEWALE ADENUGA STRT EJIGBO LAGOS ', '7, OYEBADE STRT OFF ADEWALE ADENUGA STRT EJIGBO ', 'OSE LGA', 'ONDO', 'NIGERIA ', '08137476082', '08137476082', 'thompsondamilola37@gmail.com', 'EMUEJEVOKE AHEROBOH ', '7, OYEBADE STRT OFF ADEWALE ADENUGA STRT EJIGBO LAGOS ', '08062970392', '0000-00-00', '2023-08-24 20:21:51', '0000-00-00 00:00:00', '', '', 0),
(191, 'SSS_T_019', 'SSS@03', 'Favour', 'Onyedikachi', 'Ohale', '0000-00-00', 'Female', '', 'key Stage  1', 'Teacher', '0000-00-00', 'images/employee_import_pics/SSS_T_003.jpg', 'NCE', '', '12, Chief Adenakan Street', '', '', '', '', '', '08163553242', 'simidschool421@gmail.com', '', '', '', '0000-00-00', '2023-08-24 20:40:39', '0000-00-00 00:00:00', '', 'Li', 0),
(192, 'SSS_T_045', 'SSS@04', 'Ewere', 'Akaeze ', 'Kemenuwa', '1991-04-25', ' Femal', 'Married ', 'College', 'Teacher', '2021-02-01', 'images/employee_import_pics/Snapchat-983908946.jpg', 'Bsc. Edu', 'Deep', '4, sanni duadu street. Ejigbo ', '4, sanni duadu street. Ejigbo ', 'Ika North', 'Delta State', 'Nigeria ', '07034538720', '', 'ewerekemenuwa@yahoo.com', 'Akaeze Precious ', '4, sanni duadu street. Ejigbo ', '08068459558', '0000-00-00', '2023-09-02 10:55:06', '0000-00-00 00:00:00', 'JSS', 'Zinnia', 1),
(193, 'SSS_T_041', 'SSS@05', 'Oreoluwa', 'Blessing', 'Adeyemi', '2001-07-07', 'Female', 'Married', 'Keystage 3', 'Teacher', '0000-00-00', 'images/employee_import_pics/IMG_20230131_230145_317.jpg', 'N.C.E', '', '17,Idimu Road', '', 'Ijebu-east', 'Ogun', 'Nigeria ', '', '', 'oshijooreoluwa@gmail.com', '', '', '', '0000-00-00', '2023-08-24 20:33:15', '0000-00-00 00:00:00', 'YEAR', 'Tulip', 5),
(194, 'SSS_T_023', 'SSS@06', 'Olatayo', 'Temitope', 'Lawal', '1985-08-31', ' Femal', 'Married ', 'key Stage  1', 'Teacher', '2016-10-02', 'images/employee_import_pics/IMG_20200721_100706.jpg', 'B.Ed ', '', '8, Elder Adeyemi street Ejigbo ', '8, Elder Adeyemi street Ejigbo ', 'Lagos island ', 'Lagos ', 'Nigeria ', '08130769654', '09024350892', 'olatayolawal32@gmail.com', 'Mr Abel Lawal ', '8, Elder Adeyemi street Ejigbo ', '08060089180', '0000-00-00', '2023-12-07 08:28:43', '0000-00-00 00:00:00', 'NURSERY', 'Iris', 1),
(196, 'SSS_T_005', 'SSS@08', 'Veronica', 'Oluwabusayo', 'Jaye-Adeyemi', '0000-00-00', ' Femal', 'Married', 'Nursery', 'School Administraor 2', '0000-00-00', 'images/employee_import_pics/IMG-20220907-WA0024.jpg', 'N. C .E ', '', 'No 17 Idimu Road', 'No 17 Idimu Road Ejigbo ', 'Iyemogun', 'Osun ', 'Nigeria', '07039705003 ', '07039705003', 'veronicabusayo76@gmail.com', 'Jayeola Adeyemi', 'No 17 Idimu Road Ejigbo', '07039705003', '0000-00-00', '2023-08-24 20:33:37', '0000-00-00 00:00:00', 'NURSERY', 'Iris', 2),
(198, 'SSS_T_040', 'SSS@10', 'Ruth', 'Adedoyin', 'Adetutu', '0000-00-00', ' Femal', 'Single', 'Primary', 'Teacher', '0000-00-00', 'images/employee_import_pics/_MG_0725.jpg', 'NCE', '', '23, Okejide Street, Ejigbo Lagos', '', '', '', '', '08140456483', '', 'adetutuar@gmail.com', '', '', '', '0000-00-00', '2023-08-24 20:32:56', '0000-00-00 00:00:00', 'YEAR', 'Hyacinth ', 5),
(199, 'SSS_T_017', 'SSS@11', 'Boluwatife', 'Serah', 'Faniran', '1991-10-16', ' Femal', 'Married ', 'Language development class 2', 'Teacher', '2020-10-19', 'images/employee_import_pics/IMG_20230614_071903_658.jpg', 'N.C.E', 'Teac', 'No 23 asabe street Orisumbare ', 'No 23 asabe street Orisumbare ', 'Alimosho ', 'Lagos', 'Nigeria ', '0902132164', '09021321614', 'boluwatifetosin1@gmail.com ', 'Adeyemi olubisi', 'Enharo estate ogba', '08036103680', '0000-00-00', '2023-08-24 20:36:24', '0000-00-00 00:00:00', 'LANGUAGE DEVELOPMENT', 'Lily', 2),
(200, 'SSS_T_031', 'SSS@12', 'Esther', 'Elooghene', 'Okwodu ', '0000-00-00', ' Femal', 'Married', 'Keystage 3', 'Teacher', '2021-10-11', 'images/employee_import_pics/IMG_20230604_085340_373.jpg', 'N.C.E', '', '25, Abgede street,Ejigbo Lagos ', '', 'Isoko south ', 'Delta state ', 'Nigeria ', '08100638210', '', 'eokwodu710@gmail.com ', '', '', '', '0000-00-00', '2023-08-24 20:23:16', '0000-00-00 00:00:00', 'YEAR', '', 2),
(201, 'SSS_T_013', 'SSS@13', 'Famous', 'Nkechi', 'Calista', '1988-02-23', ' Femal', 'Married', 'Language development class 1', 'Teacher', '2022-08-15', 'images/employee_import_pics/IMG_20220908_102239.jpg', 'National Diploma', '', '18,folawewo street', '18, folawewo street', 'Itumbauzo', 'Abia', 'Nigeria', '07045596717', '07045596717', 'chinekezicalista4@gmail.com', 'Mr Andy famous', 'Mr Andy famous', '07065496214', '0000-00-00', '2023-08-25 07:20:52', '0000-00-00 00:00:00', 'LANGUAGE DEVELOPMENT', '', 1),
(204, 'SSS_T_052', 'SSS@16', 'Samuel', 'Ifeanyi', 'Imoke', '2002-03-03', ' Male ', 'Single ', 'College ', 'Teacher', '0000-00-00', 'images/employee_import_pics/16928854746114797558535105401835.jpg', 'NABTEB ', '', '35 tajudeen Ogunseye', '35 tajudeen Ogunseye', 'Oshodi/isolo ', 'Lagos ', 'Nigeria ', '07063865903', '', 'Imokesamuel73@gmail.com', '', '', '', '0000-00-00', '2023-08-24 14:02:23', '0000-00-00 00:00:00', '', '', 0),
(205, 'SSS_T_015', 'SSS@17', 'Ekpo', 'Veronica', 'Hezekiah', '1993-10-10', ' Femal', 'Married ', 'Language Development class ', 'Teacher', '2021-02-08', 'images/employee_import_pics/IMG_20221006_082422_134.jpg', 'SSCE', 'Educ', '27, Caroline odu street Ejigbo ', '27, Caroline odu street Ejigbo ', 'Nsit lbom', 'Akwa lbom', 'Nigeria ', '07085206051', '07085206052', 'hezekiahakpan494@gmail.com ', 'Mr Hezekiah ', '27, Caroline odu street Ejigbo ', '08100750316', '0000-00-00', '2023-08-24 20:23:36', '0000-00-00 00:00:00', 'LANGUAGE DEVELOPMENT', '', 1),
(206, 'SSS_T_010', 'SSS@18', 'Ozurumba', 'Lilian', 'Ngozichukwu', '1992-12-21', ' Femal', '', 'key stage  1', 'School Administraor 2', '0000-00-00', 'images/employee_import_pics/IMG_20230722_182334.png', 'Bsc', '', 'Lagos', '13 Fadu avenue ejigbo', 'Ohaji Egbema', 'Imo state ', 'Nigeria ', '08112505415', '08170525857', 'rr@gmail.com', 'Alexander Davis', '13 FADU AVENUE', '08112505415', '0000-00-00', '2023-08-24 20:35:58', '0000-00-00 00:00:00', 'LANGUAGE DEVELOPMENT', 'Violet ', 2),
(207, 'SSS_T_054', 'SSS@19', 'Blessing', 'Ngozi', 'Okonkwo', '1985-03-01', ' Femal', 'Married ', 'College ', 'Teacher', '2021-06-08', 'images/employee_import_pics/1692885314630156009245046872811.jpg', 'Bed(Economics)', 'Best', '7 fayemi street eijgbo', '7 fayemi street eijgbo ', 'Njikaoka L.G.A', 'Anambra ', 'Nigeria ', '08930877963', '08030877963', 'okonkwob66@gmail.com', 'Mr Damian Okonkwo ', '7 fayemi street eijgbo ', '08068098128', '0000-00-00', '2023-08-24 14:47:16', '0000-00-00 00:00:00', '', '', 0),
(208, 'SSS_T_006', 'SSS@20', 'Abiodun', 'Kuburat ', 'Omitola', '2018-12-18', ' Femal', 'Married', 'Admin', 'School Administraor 1', '2018-10-09', '', 'OND Accounting ', 'Adva', '43, Ifelofun street, Orisumbare ', '43, Ifelofun street, Orisumbare ', 'Abeokuta South ', 'Ogun', 'Abeokuta South ', '08109551569', '08109551569', 'abiodunomitola@gmail.com', 'Peters Desmond', '43, Ifelofun street, Orisumbare ', '07039684823', '0000-00-00', '2023-08-24 14:07:09', '0000-00-00 00:00:00', '', '', 0),
(209, 'SSS_T_002', 'SSS@21', 'Chinyere', 'Esther', 'Anyasodor', '1981-04-20', ' Femal', 'Married ', 'College ', 'Principal', '0000-00-00', 'images/employee_import_pics/WIN_20230718_09_53_40_Pro.jpg', 'Bachelor of science ', '', '36 Apana street Ejigbo Lagos State Nigeria', '', 'Owerri West ', 'Imo', 'Nigeria ', '', '08066417440', 'estheranyasodor@gmail.com', 'Francis Anyasodor ', '36 Apana street Ejigbo Lagos ', '08034939530', '0000-00-00', '2023-08-24 15:39:02', '0000-00-00 00:00:00', '', '', 0),
(210, 'SSS_T_046', 'SSS@22', 'Yetunde', 'Aderemi', 'Oladele ', '1988-05-29', ' Femal', 'Married ', 'College ', 'Teacher', '2020-02-14', 'images/employee_import_pics/IMG_20230715_102825_179.jpg', 'Post graduate diploma in Education ', 'Teac', '3/4 DISU AINA EFON IDIMU ROAD EJIGBO ', '3/4 DISU AINA EFON IDIMU ROAD EJIGBO', 'Alimosho', 'Lagos ', 'Nigeria ', '08110260228', '08110260228', 'adeyetty4@gmail.com', 'Mr Oladele Bamidele ', '3/4 DISU AINA EFON IDIMU ROAD EJIGBO', '08063261729', '0000-00-00', '2023-09-02 10:55:49', '0000-00-00 00:00:00', 'JSS', 'Rose', 1),
(211, 'SSS_T_003', 'SSS@23', 'Ogochukwu', 'Emmanuela', 'Obidiegwu', '0000-00-00', ' Femal', 'Married ', 'Nusery/Primary', 'Vice Principal', '0000-00-00', 'images/employee_import_pics/IMG_20230822_132334_091.jpg', 'B.Sc (Edu/English)', '', '9, Lateef Kamoru Street Ejigbo', '', '', '', 'Nigerian ', '', '07030579682', 'emmanuelaogo@gmail.com', '', '', '', '0000-00-00', '2023-09-06 14:15:11', '0000-00-00 00:00:00', '', '', 0),
(214, 'SSS_T_036', 'Chibabe123', 'Mercy ', 'chisom', 'Anoruo', '2002-08-17', 'Female', 'Single ', 'Primary', 'Teacher', '2022-04-25', 'images/employee_import_pics/6142B268-CCC4-44E1-90B2-3C39417B59FB.jpeg', 'SSCE,B.Sc and B.Ed(in view)', '', '34 Kola Olukotun Street,EjIgbo,Lagos State', '', 'Oguta', 'Imo ', 'Nigeria ', '09023650139', '08058019681', 'anoruomercy@icloud.com', 'Alade Gift', '23 Association Avenue,Ijegun,Lagos State', '0808 557 053', '0000-00-00', '2023-09-08 11:44:07', '0000-00-00 00:00:00', 'YEAR', 'Tulip', 4),
(215, 'SSS_T_014', 'SSS@27', 'Nwonu', '', 'Elizabeth', '0000-00-00', ' Femal', '', 'Nursery ', 'Teacher', '0000-00-00', 'images/employee_import_pics/SSS_T_027.jpg', '', '', 'Olusesi close', '', '', '', '', '', '', 'simidschools421@gmail.com', '', '', '', '0000-00-00', '2023-08-24 20:24:40', '0000-00-00 00:00:00', 'LANGUAGE DEVELOPMENT', '', 1),
(216, 'SSS_T_028', 'SSS@28', 'Oko', 'Testimony', 'Phebe', '2005-05-03', ' Femal', '', 'key Stage  1', 'Teacher', '2023-01-09', 'images/employee_import_pics/IMG-20230623-WA0000.jpg', 'SSCE', '', '24 olutimileyin street', '', '', '', '', '', '', 'Okophebegmail. Com', '', '', '', '0000-00-00', '2023-08-24 15:40:00', '0000-00-00 00:00:00', '', '', 0),
(217, 'SSS_T_049', 'SSS@29', 'Akpowaye', 'Ayo', 'Vincent', '0000-00-00', ' Male ', 'Single ', 'College ', 'Teacher', '0000-00-00', 'images/employee_import_pics/Snapchat-1610712542.jpg', '', 'Famo', '19 Caroline odu Street Ejigbo Lagos ', '', 'Oshodi/isolo ', 'Lagos ', 'Nigeria ', '08169448829', '', 'vincentakpokwaye@gmail.com', '', '', '', '0000-00-00', '2023-08-24 14:49:18', '0000-00-00 00:00:00', '', '', 0),
(219, 'SSS_T_011', 'SSS@31', 'Mbah', 'Stella', 'Nkiruka', '2002-09-25', ' Femal', 'Single ', 'Primary', 'Teacher', '0000-00-00', 'images/employee_import_pics/IMG_7530-1.jpeg', 'SSCE', '', '9a St Augustine Street ', '9a St Augustine Street', 'Nkanu East', 'Enugu ', 'Nigeria ', '09153062245', '09049698685', 'mbahstella25@gamil.co ', 'JohnPaul', '9a St Augustine Street', '09013537606', '0000-00-00', '2023-08-24 16:57:03', '0000-00-00 00:00:00', 'PRE-SCHOOL', '', 1),
(220, 'SSS_T_008', 'SSS@32', 'Olawale', 'Jacob', 'Olowe', '1998-04-26', ' Make ', 'Single ', 'College ', 'Teacher', '0000-00-00', 'images/employee_import_pics/4357D3BB-1F11-4396-9E73-1E0C8644CFB5.jpeg', 'OND', 'Rose', '45B, Kola Olukotun Street Ejigbo', '45B, Kola Olukotun Street Ejigbo', 'Atakunmosa East', 'Osun', 'Nigeria ', '08134488197', '08134488197', 'b.square1998@gmail.com', 'Olowe Oluwafunmilola ', '1, Idowu Alimi street ', '09035061720', '0000-00-00', '2023-08-24 14:50:36', '0000-00-00 00:00:00', '', '', 0),
(221, 'SSS_T_025', 'SSS@33', 'Ahipue', 'Vivian', 'Chinaza', '2002-04-02', ' Femal', 'Single ', 'Primary', 'Teacher', '0000-00-00', 'images/employee_import_pics/IMG_1094.jpeg', 'SSCE', '', '12 Caroline Street', '12 Caroline Street', 'Nnewi South ', 'Anambra ', 'Nigeria ', '08169247785', '09026916375', 'chinazacallitus@gmail.com', 'Mrs Glory ', '12 Caroline Street', '08060724559', '0000-00-00', '2023-08-24 15:36:39', '0000-00-00 00:00:00', '', '', 0),
(222, 'SSS_T_024', 'SSS@34', 'Fidelis ', 'Florence', 'Lebechi', '1980-12-24', ' Femal', 'Married ', 'Primary Educator', 'Teacher', '0000-00-00', 'images/employee_import_pics/16928903138755433777296465748445.jpg', 'NCE', '', '109, Idimu Road', '', '', '', '', '09071204445', '', 'simidschools421@gmail.com', 'Mr. Christopher Lebechi ', '109, Idimu Road ', '', '0000-00-00', '2023-08-24 15:19:04', '0000-00-00 00:00:00', '', '', 0),
(223, 'SSS_T_004', 'SSS@35', 'Akinlolu', 'Olumide', 'Ajibade', '1967-08-05', ' Male ', 'Married ', 'College', 'School Administraor 1', '0000-00-00', 'images/employee_import_pics/16928852109535421104381171156365.jpg', 'Bsc Edu', '', '22 Techno way Ejigbo ', '', 'Oshodi/isolo ', 'Lagos ', 'Nigeria ', '08027749724', '', 'Olumideajibade52@gmail.com', '', '', '', '0000-00-00', '2023-08-24 15:55:41', '0000-00-00 00:00:00', '', '', 0),
(224, 'SSS_T_053', 'SSS@36', 'Oluwasegun ', 'Sodiq', 'Olorode', '1994-03-16', ' Male', 'Married', 'College ', 'Teacher', '0000-00-00', 'images/employee_import_pics/IMG-20220316-WA0003.jpg', 'Ba. English', '', '39, Apana street ejigbo', '39, Apana street ejigbo', 'Ijebu ode', 'Ogun', 'Nigeria', '70 522 2947 7', '07052229477', 'olushegnut@gmailcom', 'Praise olorode', '39, Apana street ejigbo', '07052229477', '0000-00-00', '2023-09-02 10:57:08', '0000-00-00 00:00:00', 'SSS', 'Marigold', 1),
(225, 'SSS_T_039', 'SSS@37', 'Uche', 'Treasure', 'Ijeoma', '0000-00-00', ' Femal', 'Single ', 'Primary ', 'Teacher', '2022-09-01', '', 'B.sc management ', '', '24 olumilakun street, Ejigbo Lagos.', '24 olumilakun street, Ejigbo Lagos', 'Afikpo North ', 'Ebonyi ', 'Nigeria', '08142474244', '09052879692', 'ucheijeoma296@gmail.com', 'Ikechukwu Destiny ', 'Kaduna road, hayin Nasarawa iku, Niger state', '08939311699', '0000-00-00', '2023-08-24 14:48:42', '0000-00-00 00:00:00', '', '', 0),
(228, 'SSS_T_026', 'SSS@40', 'Onyegbuna', 'Love', 'Uzoamaka', '0000-00-00', 'Female', '', 'Primary', 'Teacher', '0000-00-00', 'images/employee_import_pics/SSS_T_040.jpg', '', '', '04, Lateef Kamoru Street Ejigbo', '', '', '', '', '', '', 'simidschool421@gmail.com', '', '', '', '0000-00-00', '2023-08-24 20:37:35', '0000-00-00 00:00:00', 'YEAR', 'Hyacinth ', 1),
(229, 'SSS_T_029', 'SSS@41', 'Chidinma', 'Mercy', 'Obi', '1994-09-15', ' Femal', 'Married ', 'Lower primary ', 'Teacher', '2019-09-16', 'images/employee_import_pics/IMG_20230613_143525_132.jpg', 'OND', 'Teac', '19 Owuromi Apena', '', 'Oshodi Isolo', 'Imo State', 'Nigeria ', '08168785775', '', 'chidinmanathaniel@gmail.com', 'Mr Richard Nzenwa ', '19 Owuromi Apena ', '09098850614', '0000-00-00', '2023-08-24 20:37:59', '0000-00-00 00:00:00', 'YEAR', 'Tulip', 2),
(230, 'SSS_T_009', 'SSS@42', 'Okonji', 'Kanayo', 'Esther', '1995-03-08', ' Femal', 'Single', 'Upper primary', 'Teacher', '0000-00-00', 'images/employee_import_pics/IMG_20220716_111035_175.jpg', 'NCE', '', '10, Folawewo', '', 'Oshodi/Isolo', 'Delta', 'Nigeria', '08060269143', '', 'kanistic4real@gmail.com', 'Ekene Inneh', 'Portharcourt', '07062707315', '0000-00-00', '2023-08-24 21:30:03', '0000-00-00 00:00:00', 'YEAR', 'Hyacinth ', 3),
(231, 'SSS_T_018', 'SSS@18', 'Debby ', '', 'Udeoha', '0000-00-00', 'Female', 'Single', 'pre school', 'Teacher', '0000-00-00', 'images/employee_import_pics/Snapchat-703623697.jpg', 'SSCE', 'chis', '7 solution lane pipeline ejigbo ', '7 solution lane ejigbo ', 'Orlu', 'Imo state', 'Nigeria', '08125631299', '08125631299', 'chisomdebby56@gmail.com', 'Mom', '', '', '0000-00-00', '2023-08-25 07:19:27', '0000-00-00 00:00:00', 'LANGUAGE DEVELOPMENT', 'Daisy', 2),
(233, 'SSS-T-038', 'SSS@38', 'Opeyemi', 'Rebecca', 'Ojo', '1999-01-31', 'Female', 'Single', 'Primary ', 'Educator', '2023-05-19', 'images/employee_import_pics/tmp-cam-514892046.jpg', 'Ordinary national diploma', '5yea', '2, Dejo Adeleye street,Ejigbo Lagos.', '2, Dejo Adeleye street,Ejigbo Lagos.', 'Oshodi/Isolo', 'Lagos.', 'Nigeria', '8149687946', '08149687946', 'ojoopeyemiiyanu1999@gmail.com', 'Ojo Dorcas', '', '08139007020', '0000-00-00', '2023-08-24 20:26:55', '0000-00-00 00:00:00', 'YEAR', '', 4),
(236, 'SSS_T_055', 'SSS@55', 'Olorunlana ', 'Ezekiel ', 'Gbadebo ', '1996-03-18', 'Male', 'Single', 'College ', '', '0000-00-00', 'images/employee_import_pics/IMG-20220630-WA0011.jpg', 'B.Sc ', '1 ye', '22, Olorunsogo street ', '', 'Badagry', 'Lagos', 'Nigeria', '07068523331', '', 'olorunlanagbadebo99@gmail.com', '', '', '', '0000-00-00', '2023-08-24 20:14:43', '0000-00-00 00:00:00', '', '', 0),
(237, 'SS_T_037', 'SS_@37', 'Omowunmi ', 'Balikis ', 'Sodiq ', '1998-09-28', '', '', 'Primary ', 'Educator ', '2023-05-17', 'images/employee_import_pics/IMG_20230217_085941_865.jpg', 'National diploma', '', '2, Adekoroye street ', '2, Adekoroye street ', 'Okehi LGA', 'Kogi state', 'Nigeria', '08077203314', '08077203314', 'balikisomowunmi1998@gmail.com', 'Fatima Sodiq', '', '08116223147', '0000-00-00', '2023-08-24 20:35:28', '0000-00-00 00:00:00', 'YEAR', 'Hyacinth ', 4),
(238, 'SSS_T_035', 'SSS@35', 'Precious ', 'Chinenye ', 'Umeokafor ', '2007-08-11', 'Female', 'Single', 'Primary ', 'Teacher', '2023-08-14', '', 'SSCE', '', '4/6 FAYEMI STREET EJIGBO ', '4/6 fayemi Street Ejigbo ', 'Aguata', 'Anambra ', 'Nigeria', '08029945217 ', '08029945217 ', 'preciousnet2017@gmail.com', 'Umeokafor Emmanuella', '', '08135401860', '0000-00-00', '2023-08-24 20:14:43', '0000-00-00 00:00:00', '', '', 0),
(239, 'SSS_T_022', 'SSS@22', 'Christiana', 'Augustine ', 'Benstowe ', '1982-09-23', 'Female', 'Married', 'Key Stage 1', 'Teacher ', '0000-00-00', '', 'NCE', '', '53, Ifelodun st. Ejigbo ', '', 'Ini', 'Akwa-Ibom State', 'Nigeria', '09048808463', '08145829087', 'christybenstoweoO@gmail.com', 'Husband ', '', '08084843419', '0000-00-00', '2023-08-24 20:39:21', '0000-00-00 00:00:00', 'NURSERY', 'Cactus ', 1),
(240, 'SSS_T_021', 'SSS@21', 'Olushola', 'Modupe', 'Roberts', '1984-10-17', 'Female', 'Married', 'Nursery', 'Class education', '2016-06-23', 'images/employee_import_pics/IMG_20220716_104814_275.jpg', 'B.SC IN-EDUCATION', '7yea', '23 folawewo street Ejigbo', '23 folawewo street Ejigbo', 'Ifelodu', 'Ondo state', 'Nigeria', '08139272669', '08139272669', 'olusolamodupe@rockect.com', 'Mr Roberts', '', '08033451438', '0000-00-00', '2023-08-24 20:38:51', '0000-00-00 00:00:00', 'NURSERY', 'Lilac', 1),
(241, 'SSS-T-030', 'SSS@30', 'Osakwe', 'Ifeoma', 'Precious', '1998-05-20', 'Female', 'Single', 'Year 2', 'Teacher', '2023-04-08', 'images/employee_import_pics/IMG-20210101-WA0004.jpg', 'OND ', '', '11 Disu steet ', '', 'Ndokwa east', 'Delta state', 'Nigeria', '07019760641', '07019760641', 'osakwe40@gmail.com', 'Mrs osakwe', '11 Disu street', '08067692204', '0000-00-00', '2023-08-24 20:14:43', '0000-00-00 00:00:00', '', '', 0),
(242, 'SS_T_028', 'SS_@28', 'Evelyn ', 'Ediri', 'Ogbodu', '1987-11-29', 'Female', 'Married', 'Lower primary ', 'Teacher', '2020-09-15', 'images/employee_import_pics/16928859162067056442576679157037.jpg', 'Nce', '', 'No 27 Folawewo street ', '', 'Oshodi Isolo', 'Delta state ', 'Nigeria', '08102033101', '', 'angelbekky5@gmail.com', 'Adebimpe Mercy', '', '07065825092', '0000-00-00', '2023-08-24 20:39:51', '0000-00-00 00:00:00', 'YEAR', 'Hyacinth ', 2),
(243, 'SSS_T_012', 'SSS@12', 'Florence ', '', 'Obidiegwu', '2004-09-24', 'Female', 'Single', 'Preparatory ', 'Teacher', '0000-00-00', 'images/employee_import_pics/Snapchat-1271920223.jpg', 'SSCE', '', '9, lateef Kamoru ', '9, lateef kamoru', '', '', 'Nigeria', '08167366100', '08167366100', 'obidiegwuflorence@gmail.com', 'Mrs obidiegwu ', '', '07030579682', '0000-00-00', '2023-08-24 20:14:43', '0000-00-00 00:00:00', '', '', 0),
(245, 'SSS_T_034', 'SSS@34', 'Toyin ', 'Folashade ', 'Osazuwa ', '1986-02-06', 'Female', 'Married', 'Primary ', 'Educator', '2020-09-16', 'images/employee_import_pics/IMG_20230703_075537_994.jpg', 'Higher National Diploma ', '', '63 Pipeline Road Ejigbo ', '', '', 'Ondo state ', 'Nigeria', '08084550050', '08164727218', 'akindolatoyin29@gmail.com', 'Osazuwa Oluwaseun ', '', '08023270530', '0000-00-00', '2023-08-24 21:17:30', '0000-00-00 00:00:00', 'YEAR', 'Orchid ', 3),
(246, 'SSS_T_047', 'SSS@47', 'Amalachukwu ', 'Kelechi ', 'Onunkwo ', '1989-11-23', '', '', 'College ', 'Teacher', '2023-04-18', '', 'Bsc. Psychology ', '8yea', '7,iyare street, paiko idimu', '7,iyare street, paiko idimu', 'Aguata', 'Anambra ', '', '08140431296', '', 'graceykel@gmail.com', 'Efe Oghenebrume ', '', '08087573168', '0000-00-00', '2023-09-02 10:58:13', '0000-00-00 00:00:00', 'JSS', 'Rose', 3),
(247, 'SSS_T_032', 'SSS@32', 'Amarachi', 'Racheal', 'Ezeifedi', '1996-11-27', 'Female', 'Married', 'Primary ', 'Teacher', '2021-08-01', 'images/employee_import_pics/IMG_20220505_080159.jpg', 'NCE', 'Teac', '11 Wahab close', '11 Wahab close', 'Orlu', 'Imo', 'Nigeria', '07031195270', '', 'amarachiracheal10@gmail.com', 'William', '', '09099582787', '0000-00-00', '2023-09-01 12:23:42', '0000-00-00 00:00:00', 'YEAR', 'Tulip', 3),
(248, 'SSS_T_048', 'SSS@48', 'Ogonna', 'Christiana', 'Christabel', '0000-00-00', 'Female', 'Single', 'Teacher', 'Science', '0000-00-00', 'images/employee_import_pics/Screenshot_20230124-232751.png', 'HND', '5yea', 'No 8 Olatunjistreet council bustop', 'No 8 Olatunjistreet council bustop', 'Igbo-Eze South', 'Enugu', 'Nigeria', '07030527881', '07052610373', 'christbeauty2@gmail.com', 'Catherine Ogechi', '', '07052610373', '0000-00-00', '2023-09-02 10:59:16', '0000-00-00 00:00:00', 'SSS', 'Lotus ', 2),
(249, 'SSS_T_020', 'SSS@20', 'Omotorera ', '', 'Eniyangbagbe ', '0000-00-00', 'Female', 'Married', 'Preschool ', 'Class Educator', '0000-00-00', 'images/employee_import_pics/IMG_8082~2.jpg', '', '', '45, Lafenwa street Ejigbo ', '45, Lafenwa street Ejigbo ', '', '', '', '', '', 'esthertorera269@gmail.com', '', '', '', '0000-00-00', '2023-08-25 07:18:26', '0000-00-00 00:00:00', 'NURSERY', 'Iris', 1),
(250, 'SSS_T_044', 'SSS@44', 'Peace', 'Asuquo', 'Joe', '0000-00-00', 'Female', 'Single', 'College ', 'Science', '0000-00-00', '', 'HND', '', '17, Agbede street ejigbo Lagos', '17, Agbede street ejigbo Lagos', 'Okobo', 'Akwa ibom', 'Nigeria', '07063471199', '', 'joepeace902@gmail.com', 'Gideon Asuquo Joe', '', '08038567661', '0000-00-00', '2023-08-24 20:14:43', '0000-00-00 00:00:00', '', '', 0),
(251, 'SSS-T-027', 'SSS@27', 'James', '', 'Favour', '0000-00-00', 'Female', '', 'Primary', 'Teacher', '0000-00-00', 'images/employee_import_pics/16928900193484189896413254618775.jpg', 'SSCE', '', '2 Amida ilufunmi street', '', '', '', '', '', '', 'jameschineye2005@gmail.com', '', '', '', '0000-00-00', '2023-08-24 20:14:43', '0000-00-00 00:00:00', '', '', 0),
(252, 'SSS_T_033', 'SSS@33', 'David', 'Patricia', 'Warrie', '1992-08-28', 'Female', 'Single', 'Primary', 'Teacher', '2023-07-31', 'images/employee_import_pics/IMG_20200607_005026_504.jpg', 'BSC in Business Management', '9yea', '15, Wahab Close Ejigbo', '15, Wahab Close Ejigbo', 'Ado', 'Benue', 'Nigeria', '07069421893', '08058625783', 'davidtricia48@gmail.com', 'David Elizabeth', '', '08125911687', '0000-00-00', '2023-08-24 20:14:43', '0000-00-00 00:00:00', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `registered_students`
--

CREATE TABLE `registered_students` (
  `id` int(255) UNSIGNED NOT NULL,
  `student_admission_number` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `student_admission_date` date NOT NULL,
  `student_firstname` varchar(191) NOT NULL,
  `student_middlename` varchar(191) NOT NULL,
  `student_lastname` varchar(191) NOT NULL,
  `student_dob` date NOT NULL,
  `height` varchar(100) NOT NULL,
  `class` varchar(100) NOT NULL,
  `level` int(1) NOT NULL,
  `class_number` varchar(200) DEFAULT NULL,
  `department` varchar(50) NOT NULL,
  `current_class` varchar(100) NOT NULL,
  `current_level` varchar(100) NOT NULL,
  `current_department` varchar(100) NOT NULL,
  `current_year` varchar(100) NOT NULL,
  `graduated` varchar(100) NOT NULL,
  `avg_sc` float NOT NULL,
  `student_gender` varchar(6) NOT NULL,
  `student_bloodgroup` varchar(2) NOT NULL,
  `student_birthplace` varchar(50) NOT NULL,
  `student_nationality` varchar(50) NOT NULL,
  `student_mothertongue` varchar(191) NOT NULL,
  `student_religion` varchar(15) NOT NULL,
  `student_address1` varchar(15) NOT NULL,
  `student_address2` varchar(255) NOT NULL,
  `student_lga` varchar(191) NOT NULL,
  `student_state` varchar(191) NOT NULL,
  `student_country` varchar(191) NOT NULL,
  `student_phone` varchar(12) NOT NULL,
  `student_mobile` varchar(12) NOT NULL,
  `student_email` varchar(191) NOT NULL,
  `student_photo` varchar(191) NOT NULL,
  `guardian_phone` varchar(191) NOT NULL,
  `guardian_name` varchar(100) NOT NULL,
  `guardian_city` varchar(255) NOT NULL,
  `guardian_address` varchar(191) NOT NULL,
  `guardian_state` varchar(191) NOT NULL,
  `guardian_email` varchar(191) NOT NULL,
  `guardian_country` varchar(191) NOT NULL,
  `guardian_mobile` varchar(12) NOT NULL,
  `guardian_relation` varchar(50) NOT NULL,
  `guardian_occupation` varchar(191) NOT NULL,
  `father_name` varchar(191) NOT NULL,
  `father_mobile` varchar(12) NOT NULL,
  `fathers_occupation` varchar(191) NOT NULL,
  `mother_name` varchar(191) NOT NULL,
  `mother_mobile` varchar(12) NOT NULL,
  `mother_occupation` varchar(191) NOT NULL,
  `hostel_room` varchar(10) NOT NULL,
  `hostel_registration_date` date NOT NULL,
  `hostel_vacating_date` date NOT NULL,
  `inoculation_taken` varchar(3) NOT NULL,
  `inoculation_not_taken` varchar(1000) NOT NULL,
  `infectious_disease` varchar(3) NOT NULL,
  `infections_disease_have` varchar(1000) NOT NULL,
  `suffer` varchar(3) NOT NULL,
  `suffer_from` varchar(1000) NOT NULL,
  `last_form_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `registered_students`
--

INSERT INTO `registered_students` (`id`, `student_admission_number`, `password`, `student_admission_date`, `student_firstname`, `student_middlename`, `student_lastname`, `student_dob`, `height`, `class`, `level`, `class_number`, `department`, `current_class`, `current_level`, `current_department`, `current_year`, `graduated`, `avg_sc`, `student_gender`, `student_bloodgroup`, `student_birthplace`, `student_nationality`, `student_mothertongue`, `student_religion`, `student_address1`, `student_address2`, `student_lga`, `student_state`, `student_country`, `student_phone`, `student_mobile`, `student_email`, `student_photo`, `guardian_phone`, `guardian_name`, `guardian_city`, `guardian_address`, `guardian_state`, `guardian_email`, `guardian_country`, `guardian_mobile`, `guardian_relation`, `guardian_occupation`, `father_name`, `father_mobile`, `fathers_occupation`, `mother_name`, `mother_mobile`, `mother_occupation`, `hostel_room`, `hostel_registration_date`, `hostel_vacating_date`, `inoculation_taken`, `inoculation_not_taken`, `infectious_disease`, `infections_disease_have`, `suffer`, `suffer_from`, `last_form_token`, `created_at`, `updated_at`) VALUES
(1, 'SS0050', 'SSS@96', '0000-00-00', 'Osakwe', '', 'Sharon', '2020-07-06', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christianity ', '19 Sule Isawade', '', 'Alimosho ', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS096.jpg', '', 'Mr and Mrs Osakwe', '', '19 Sule Isawade Street ', '', 'simidschools421@gmail', '08069372667', '08069372667', '', '', 'Osakwe', '08069372667', 'Civil Servant', 'Osakwe', '08069372667', 'Business Woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(2, 'SS0051', 'SSS@97', '0000-00-00', 'Mark', '', 'Chibuike', '2020-06-14', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christianity ', '13 Madam Okesol', '', 'Alimosho ', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS097.jpg', '', 'Mark', '', '13  Madam Okesola Street ', '', 'simidschools 421@gmail.com', '08034417118', '08034417118', '', '', 'Mark', '08034417118', 'Business', 'Mark', '08034417118', 'Business', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(4, 'SS0054', 'SSS@99', '0000-00-00', 'Amah', '', 'Chukwuebuka', '2019-09-26', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christianity ', '6 Hon.Jimoh Oju', '', 'Alimosho ', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS099.jpg', '', 'Mr and Mrs Amah', '', '6 Hon.Jimoh Ojugbele Crescent', '', 'simidschools421.', '07030570398', '07030570398', 'Parent ', '', 'Mr Amah', '07030570398', ' Business ', 'Mrs Amah', '07030570398', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(5, 'SS0053', 'SSS@00', '0000-00-00', 'Chukwudi', '', 'Marvellous ', '2019-06-07', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christianity ', 'Eco Bank Road E', '', 'Alimosho ', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS100.jpg', '', 'Mr and Mrs Chukwudi ', '', 'Eco Bank Road Ejigbo ', '', 'simidschools 421@gmail.com', '08068048943', '08068048943', '', '', 'Mr Chukwudi', '08068048943', 'Police Man', 'Mrs Chukwudi', '08068048943', 'Business Woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(6, 'SS0057', 'SSS@01', '0000-00-00', 'Taiwo', '', 'Moshoodat', '2019-06-09', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Muslim ', '1 Osho Close Ej', '', 'Alimosho ', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS101.jpg', '', 'Mr and Mrs Taiwo', '', '1 Osho Close Ejigbo', '', 'simidschools421.', '09063605655', '09063605655', 'Parent ', '', 'Mr Taiwo ', '09063605655', 'Civil Servant', 'Mrs Taiwo ', '09063605655', 'Business Woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(7, 'SS0052', 'SSS@02', '0000-00-00', 'Dada', '', 'Peniel', '2020-06-13', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christianity ', '41 Dauda Ilo St', '', 'Alimosho ', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS102.jpg', '', 'Mr and Mrs Dada', '', '41 Dauda Ilo Street', '', 'simidschools421.', '08065071496', '08065071496', 'Parent ', '', 'Mr Dada ', '08065071496', 'Business', 'Mrs Dada', '08065071496', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(8, 'SS0046', 'SSS@03', '0000-00-00', 'Alozie', '', 'Munachi', '2022-04-06', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', 'Dauda Ilo Stree', '', 'Alimosho ', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS103.jpg', '', 'Mr and Mrs Alozie', '', 'Dauda Ilo Street', '', 'simidschools 421@gmail.com', '08032854145', '08032854145', '', '', 'Mr Alozie', '08032854145', 'Entrepreneur ', 'Mrs Alozie ', '08032854145', 'Business Woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(9, 'SS0058', 'SSS@04', '0000-00-00', 'Tolashe ', '', 'Opeyemi', '2020-04-20', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '1 Dauda Ilo Str', '', 'Oshodi/Isolo', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS104.jpg', '', 'Mr & Mrs Tolashe', '', '1 Dauda Ilo Street ', '', 'simidschools421@gmail', '08066424813', '08066424813', '', '', 'Mr Tolashe ', '08066424813', 'Civil Servant', 'Mrs Tolashe', '08066424813', 'Tailoring ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(10, 'SS0059', 'SSS@05', '0000-00-00', 'Okechukwu', '', 'Valerie ', '2020-01-12', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '9 Ilufunmi Stre', '', 'Oshodi/Isolo', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS105.jpg', '', 'Mr and Mrs Okechukwu ', '', '9 Ilufunmi Street', '', 'simidschools421.', '08022077616', '08022077616', 'Parent ', '', 'Mr Okechukwu ', '08022077616', 'Civil Servant ', 'Mrs Okechukwu ', '08022077616', 'Trader ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(11, 'SS0060', 'SSS@06', '0000-00-00', 'Onimisi', '', 'Melvin ', '2020-05-05', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '21 Olushesi Clo', '', 'Oshodi/Isolo', 'Lagos', '', '08038872674', '', '', 'images/student_import_pics/SSS106.jpg', '', 'Mr and Mrs Onimisi', '', '21 Olushesi Close Ejigbo', '', 'simidschools 421@gmail.com', '08038872674', '08038872674', 'Parents ', '', 'Mr Onimisi', '08038872674', 'Civil Servant ', 'Mrs Onimisi', '08038872674', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(13, 'SS0063', 'SSS@08', '0000-00-00', 'Ifechukwu', 'Felix', 'Patrick', '2020-07-07', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christianity ', '9 Lateef Kamonu', '', 'Alimosho ', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS108.jpg', '', 'Mr & Mrs Patrick', '', '9 Lateef Kamonu Street', '', 'emmanuelaogo@gmail.com', '07030579682', '07030579682', '', '', 'Mr Patrick ', '08066606480', 'Civil Servant ', 'Mrs Patrick ', '07030579682', 'Teaching ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(15, 'SS0064', 'SSS@10', '0000-00-00', 'Sunday ', '', 'Gabriella ', '2020-05-30', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '4 Sunny Dauda S', '', 'Alimosho ', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS110.jpg', '', 'Mr and Mrs Sunday ', '', '4 Sunny Dauda Street', '', 'simidschools.com.ng', '07019612005', '07019612005', '', '', 'Mr Sunday', '07019612005', 'Entrepreneur ', 'Mrs Sunday ', '07019612005', 'Trader ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(16, 'SS0066', 'SSS@11', '0000-00-00', 'Nzeakor', '', 'Chimamanda', '2020-07-06', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christianity ', '4 Afolabi Oyewa', '', 'Alimosho ', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS111.jpg', '', 'Mr and Mrs Nzeakor', '', '4 Afolabi Oyewale Street', '', 'simidschools.com.ng', '09035972431', '09035972431', '', '', ' Mr Nzeakor ', '09035972431', 'Accountant ', 'Mrs Nzeakor ', '09035972431', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(17, 'SS0075', 'SSS@12', '0000-00-00', 'Nchekwube', '', 'Shadrach ', '2019-10-14', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christianity', '8 Akogun Street', '', 'Alimosho ', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS112.jpg', '', 'Mr and Mrs Nchekwube ', '', '8 Akogun Street ', '', 'simidschools.com.ng', '08136759801', '08136759801', '', '', 'Mr Nchekwube ', '08136759801', 'Accountant', 'Mrs Nchekwube ', '08136759801', 'Trader ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:18:43', '0000-00-00 00:00:00'),
(18, 'SS0068', 'SSS@13', '0000-00-00', 'Adedeji', '', 'Enoch', '2020-06-15', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '8 Kola Olukotun', '', 'Alimosho ', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS113.jpg', '', 'Mr and Mrs Adedeji ', '', '8 Kola Olukotun Street Ejigbo', '', 'simidschools.com.ng', '08039609922', '08039609922', '', '', 'Mr Adedeji', '08039609922', 'Civil Servant ', 'Mrs Adedeji', '08039609922', 'Civil Servant ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(19, 'SS0076', 'SSS@14', '0000-00-00', 'Ejike', '', 'Gideon ', '2020-02-15', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '50 Idimu Road E', '', 'Alimosho ', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS114.jpg', '', 'Mr and Mrs Ejike', '', '50 Idimu Road Ejigbo', '', 'simidschools.com.ng', '07032528822', '07032528822', '', '', 'Mr Ejike', '07032528822', 'Civil Servant ', 'Mrs Ejike ', '07032528822', 'Teaching ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:18:43', '0000-00-00 00:00:00'),
(20, 'SS0074', 'SSS@15', '0000-00-00', 'Osage', '', 'Paul ', '2018-06-08', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '22 Daniel Odorh', '', 'Alimosho ', 'Lagos', '', '08027303030', '', '', 'images/student_import_pics/SSS115.jpg', '', 'Mr and Mrs Osage ', '', '22 Daniel Odorhow Street', '', 'simidschools 421@gmail.com', '08027303030', '08027303030', 'Parent', '', ' Mr Osage', '08027303030', 'Business ', 'Mrs Osage', '08027303030', 'Civil Sevant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:18:43', '0000-00-00 00:00:00'),
(21, 'SS00103', 'SSS@16', '0000-00-00', 'Bernard ', '', 'Reign ', '2020-03-13', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '9/11 Egbapeju S', '', 'Alimosho', 'Lagos', '', '08142828000', '', '', 'images/student_import_pics/SSS116.jpg', '', 'Mr and Mrs Bernard ', '', '9/11 Egbapeju Street Ejigbo', '', 'simidschools 421@gmail.com', '08142828000', '08142828000', 'Parents ', '', 'Mr Bernard ', '08142828000', 'Entrepreneur ', 'Mrs Bernard ', '08142828000', 'Civil Servant ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:18:43', '0000-00-00 00:00:00'),
(22, 'SS0082', 'SSS@17', '0000-00-00', 'Okonkwo', '', 'Chiamaka ', '2020-01-08', '', 'LANGUAGE DEVELOPMENT', 1, 'Violet ', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '7 Fayemi Street', '', 'Alimosho ', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS117.jpg', '', 'Mr and Mrs Okonkwo ', '', '7 Fayemi Street Ejigbo ', '', 'simidschools 421@gmail.com', '08030877963', '08030877963', 'Parent', '', 'Mr Okonkwo', '08030877963', 'Business ', 'Mrs Okonkwo ', '08030877963', 'Teaching ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:18:43', '0000-00-00 00:00:00'),
(23, 'SS0151', 'SSS@18', '0000-00-00', 'Kaamil', '', 'Ismail', '2017-06-23', '', 'NURSERY', 1, 'Iris', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Muslim ', '6, folawewo str', '', 'Oluyole', 'oyo', '', '', '', '', 'images/student_import_pics/SSS118.jpg', '', 'Ismail', '', '6, Folawewo street ', '', 'simidschools 421@gmail.com', '08051710419', '08051710419', 'Parent', '', 'Mr Ismail', '8051710419', 'Business Man', ' Mrs Ismail', '8151710419', 'Fashion Designer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(25, 'SSO149', 'SSS@20', '0000-00-00', 'Oluwajomiloju', 'Samuel', 'Adekoya', '2018-04-17', '', 'NURSERY', 1, 'Cactus ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christian', '27,Alhajisumanu', '', '', '', '', '', '', '', 'images/student_import_pics/SSS120.jpg', '', 'Adekoya', '', '27,Alhaji Sumanu st. Ejigbo ', '', 'simidschools421.', '08135955185/08023428267', '08135955185/', 'Parent ', '', 'Mr Adekoya ', '8135955187', 'Trader', 'Mrs Adekoya', '8023428267', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(26, 'SS0165', 'SSS@21', '0000-00-00', 'Wuraola', '', 'Folorunsho', '2018-06-14', '', 'NURSERY', 1, 'Lilac', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Muslim', '32,idimu ejigbo', '', '', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS121.jpg', '', 'Folorunsho', '', '32 idimu road Ejiigbo', '', 'simidschools.com.ng', '08127215481', '08127215481', '', '', 'Mr Folorunsho ', '8127215481', 'Business Man', 'Mrs Folorunsho', '8038445480', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:47:22', '0000-00-00 00:00:00'),
(27, 'SSO192', 'SSS@22', '0000-00-00', 'Ogonifoluwa', '', 'John ', '2018-07-15', '', 'NURSERY', 1, 'Cactus ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christian', '4, Honourable A', '', '', '', '', '', '', '', 'images/student_import_pics/SSS122.jpg', '', 'John ', '', '4, Honourable Azeez', '', 'simidschools421.', '09122683582/', '09122683582/', 'Parent ', '', 'Mr john', '9122683582', 'Business Man', 'Mr John', '9026814634', 'Nurse', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(28, 'SSO154', 'SSS@23', '0000-00-00', 'Immaculate', '', 'Tera', '2018-08-09', '', 'NURSERY', 1, 'Cactus ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '17, Olusesi clo', '', '', '', '', '', '', '', 'images/student_import_pics/SSS123.jpg', '', 'Tera', '', '17, Olusesi close ', '', 'simidschools421.', '09122629707/', '09122629707/', 'Parent ', '', 'Mr Tera', '9122629707', 'Trader', 'Mrs Tera', '8034495947', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:58:56', '0000-00-00 00:00:00'),
(29, 'SS0190', 'SSS@24', '0000-00-00', 'Blessed', 'Chimeremeze', 'Richard', '2014-05-06', '', 'NURSERY', 1, 'Iris ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '19, Owuronmi Ap', '', 'Ezinihitte Mbaise', 'Imo', '', '', '', '', 'images/student_import_pics/SSS124.jpg', '', 'Richard', '', '19, Owuronmi Apena ', '', 'simidschools 421@gmail.com', '08168785775/', '08168785775/', 'Parent', '', 'Richard Nzenwa', '9098850614', 'Optimizaton Manager', 'Chidinmma Richard', '8168785775', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(30, 'SSO188', 'SSS@25', '0000-00-00', 'Osinachi', 'David', 'Onyegbuna', '2018-02-19', '', 'NURSERY', 1, 'Cactus ', '', 'YEAR', '1', '', '2023/2024', '', 0, 'male', '', '', '', '', 'Christian', '3, lateef Kamor', '', 'Oji - River', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS125.jpg', '', 'Onyegbuna', '', '3,Lateef Kamoru ', '', 'simidschools421.', '080230233144', '080230233144', 'Parent ', '', 'Benjamin ', '8023023344', 'Trader', 'Uzoamaka', '7034378056', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:52:04', '0000-00-00 00:00:00'),
(31, 'SS0136', 'SSS@26', '0000-00-00', 'Nwonu', 'Johnpaul', 'Soromkelechi', '2013-03-09', '', 'NURSERY', 1, 'Lilac', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '17,Olusesi clos', '', 'Agwu', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS126.jpg', '', 'Soromkelechi', '', '17 olusesi close Ejigbo', '', 'simidschools.com.ng', '07036610790', '07036610790', '', '', 'Chinoso', '7036610790', 'Arch Tech', 'Elizabeth', '07036610790', 'Educator', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:58:56', '0000-00-00 00:00:00'),
(32, 'SS0163', 'SSS@27', '0000-00-00', 'Oluwapelumi', '', 'Semilore', '2017-06-13', '', 'NURSERY', 1, 'Lilac', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '52,Ewenla Ejigb', '', '', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS127.jpg', '', 'Semilore', '', '53 Ewenla street off idimu ogunronbi', '', 'simidschools.com.ng', '09083251630', '09083251630', '', '', 'Mr Oluwapelumi', '09083251630', '', 'Mrs Oluwapelumi', '09083251630', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:47:22', '0000-00-00 00:00:00'),
(33, 'SSO161', 'SSS@28', '0000-00-00', 'Darasimi', '', 'Giwa', '2017-11-21', '', 'NURSERY', 1, 'Cactus ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christian', '1,Taiwo street ', '', '', '', '', '', '', '', 'images/student_import_pics/SSS128.jpg', '', 'Giwa', '', '1, Taiwo st.', '', 'simidschools421.', '09091434663', '09091434663', 'Parent ', '', 'Mr Giwa', '9091434663', 'Business Man', 'Mrs Giwa', '9063476745', 'A trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(34, 'SS0182', 'SSS@29', '0000-00-00', 'Aameerah', 'Ejide', 'Akintola', '2015-05-21', '', 'NURSERY', 1, 'Iris', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Muslim ', 'No 1, Iddo Odof', '', 'Ogun West', 'Ogun', '', '', '', '', 'images/student_import_pics/SSS129.jpg', '', 'Akintola', '', '1,Iddo Odofin ', '', 'simidschools 421@gmail.com', '08162104547', '08162104547', '', '', 'Akintola Jubril Atanda', '8126927599', 'Banker', 'Akintola Basirat', '8062104547', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:52:04', '0000-00-00 00:00:00'),
(35, 'SS0199', 'SSS@30', '0000-00-00', 'Omotolani', 'Samuel', 'Idowu', '2016-11-16', '', 'NURSERY', 1, 'Lilac', '', 'JSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', 'N0 6, Jubril Ol', '', '', 'Oyo', '', '', '', '', 'images/student_import_pics/SSS130.jpg', '', 'Idowu', '', '4 Jubril olabisi street Ejigbo', '', 'simidschools.com.ng', '08036557446', '08036557446', '', '', 'Idowu Olusegun', '8036557446', 'Contractor', 'Mary Obaniyi', '8135517393', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:46:03', '0000-00-00 00:00:00'),
(36, 'SS0141', 'SSS@31', '0000-00-00', 'Clinton', '', 'Micheal', '2018-04-21', '', 'NURSERY', 1, 'Ililac', '', 'NURSERY', '1', '', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '17,Disu Aino st', '', 'Idemili North', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS131.jpg', '', 'Micheal', '', '17 disu Aino Efon street off docas bus stop', '', 'simidschools.com.ng', '08182196805', '08182196805', '', '', 'Okeke Micheal ', '8038344488', 'Civil Servant', 'Mary Chioma Okeke', '8182196805', 'Fashion designer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 14:35:58', '0000-00-00 00:00:00'),
(37, 'SS0152', 'SSS@32', '0000-00-00', 'Angel', 'Oluwafikayomi', 'Adeyemi', '0000-00-00', '', 'NURSERY', 1, 'Iris ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', 'No 21,Idimu Roa', '', 'Ikene', 'Ogun', '', '', '', '', 'images/student_import_pics/SSS132.jpg', '', 'Adeyemi', '', '21, Idimu road', '', 'simidschools 421@gmail.com', '08032427966/08082861813', '08032427966/', 'Parent', '', 'Olayiwola Adeyemi', '8039399855', 'Business', 'Mopeola Adeyemi', '8032427966', 'Make up Artist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:58:56', '0000-00-00 00:00:00'),
(38, 'SS0183', 'SSS@33', '0000-00-00', 'Oluwanikinyo', 'Oliva', 'Balogun', '2018-03-11', '', 'NURSERY', 1, 'Iris', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '3, Daniel oderh', '', 'Oshodi', 'Kogi', '', '', '', '', 'images/student_import_pics/SSS133.jpg', '', 'Balogun', '', '3, Daniel Oderhwono ', '', 'simidschools 421@gmail.com', '08032147849/08055926959', '08032147849/', 'Parent', '', 'Balogun Micheal', '8032147849', 'Enterprenuer', 'Balogun Afolashade', '8055926959', 'Enterprenuer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(39, 'SS0159', 'SSS@34', '0000-00-00', 'Mercy', 'Oluma', 'Ohanagu', '2016-06-19', '', 'NURSERY', 1, 'Iris', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '31b,Jubril Olab', '', 'Oguta', 'Imo', '', '', '', '', 'images/student_import_pics/SSS134.jpg', '', 'Ohanagu', '', '31B Jubril Olabisi ', '', 'simidschools 421@gmail.com', '08135180552/', '08135180552/', 'Parents ', '', 'Ohanugu Oliver', '80332397054', 'Business', 'Ohanugu Faith Chinwedu', '8135180522', 'Business', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:58:56', '0000-00-00 00:00:00'),
(40, 'SS0145', 'SSS@35', '0000-00-00', 'Jamal', 'Alao', 'Bamigbade', '2019-05-20', '', 'NURSERY', 1, 'Iris ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Muslim ', '29,Dauda ilo st', '', '', 'Oyo', '', '', '', '', 'images/student_import_pics/SSS135.jpg', '', 'Bamigbade', '', '29, Dauda Ilo street', '', 'simidschools 421@gmail.com', '08083364490', '08083364490', 'Parents ', '', 'Kayode', '8034723757', 'Business', 'Bilikis', '7036834490', 'Business', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(41, 'SS0181', 'SSS@36', '0000-00-00', 'Chiedozie', 'Philip', 'Ugochukwu', '2017-03-08', '', 'NURSERY', 1, 'Iris', '', 'NURSERY', '1', '', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '6,Wahab Close ', '', 'Isaila Unbano', 'Imo', '', '', '', '', 'images/student_import_pics/SSS136.jpg', '', 'Ugochukwu', '', '6, Wahab Close', '', 'simidschools 421@gmail.com', '07034199337', '07034199337', 'Parents ', '', 'Arisukwu Ugochukwu', '8034160315', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 15:20:53', '0000-00-00 00:00:00'),
(42, 'SS0189', 'SSS@37', '0000-00-00', 'Marvellous', 'Chibuzor', 'Ogadimma', '2016-04-01', '', 'NURSERY', 1, 'Iris ', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '43, Jubril Olab', '', 'Umahai', 'Abia', '', '', '', '', 'images/student_import_pics/SSS137.jpg', '', 'Ogadimma', '', '43, Jubril Olabisi ', '', 'simidschools 421@gmail.com', '07045169572', '07045169572', 'Parents ', '', 'Chibuzor Ogadimma', '07045769562', 'Engineer', 'Faith', '07045769562', 'Business', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:52:04', '0000-00-00 00:00:00'),
(43, 'SS0144', 'SSS@38', '0000-00-00', 'Moyosore', 'Serah', 'Jaiyeola', '2018-06-26', '', 'NURSERY', 1, 'Iris', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', '', 'No 18, Kola Olu', '', 'Sagamu', 'Ogun', '', '', '', '', 'images/student_import_pics/SSS138.jpg', '', 'Jaiyeola', '', '18, Kola Olukotun', '', 'simidschools 421@gmail.com', '08022219822', '08022219822', 'Parents ', '', 'Matthew', '9096608785', 'Business', 'Olabisi', '8022219822', 'Business', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(44, 'SS0156', 'SSS@39', '0000-00-00', 'Gospel', 'Nkwachukwu', 'Odinkemere', '2018-11-03', '', 'NURSERY', 1, 'Iris ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', 'No 12, Chief Ad', '', 'Ikwuano', 'Abia', '', '', '', '', 'images/student_import_pics/SSS139.jpg', '', 'Odinkemere', '', '12, Chief Adenekan Street ', '', 'simidschools 421@gmail.com', '08163553242/08062150428', '08163553242/', 'Parents ', '', 'Mr Robert Ohale', '8062150428', 'Mechanical Engineer', 'Favour Ohale', '8163553242', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(45, 'SS0196', 'SSS@40', '0000-00-00', 'Chidubem', 'Henry', 'Atasie', '0000-00-00', '', 'NURSERY', 2, 'Cactus', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Male ', '', '', '', '', '', '39, Taiwo Stree', '', 'Orlu Local Government Area', 'Imo State', '', '', '', 'Stanley12@gmail.com', 'images/student_import_pics/SSS140.jpg', '', 'Atasie', '', '39 Taiwo street', '', 'Simidschools.com.ng', '07036635109', '07036635109', '', '', 'Mr Henry Atasie ', '8033254921', '', 'Mrs Chigozirim Atasie ', '7036635109', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:53:29', '0000-00-00 00:00:00'),
(46, 'SS0187', 'SSS@41', '0000-00-00', 'Stanley ', 'Izunna', 'Echeazu ', '0000-00-00', '', 'NURSERY', 2, 'Ca', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Male ', '', '', '', '', '', '21, Ilufunmi st', '', 'Aboh Mbaise', 'Imo State', '', '', '', '', 'images/student_import_pics/SSS141.jpg', '', 'Echeazu ', '', '21 illufunmi street', '', 'Simidschools.com.ng', '07063906948', '07063906948', '', '', 'Mr. Anyanwu Stanley Echeazu ', '8069190744', 'Civil Servant', 'Mrs. Anyanwu Izeta', '7063906948', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:55:16', '0000-00-00 00:00:00'),
(47, 'SS0171', 'SSS@42', '0000-00-00', 'Benita', 'Chinweolu', 'Uchechukwu', '0000-00-00', '', 'NURSERY', 2, 'Ca', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '48, Chris Oladu', '', 'Isikwuato', 'Abia State ', '', '', '', '', 'images/student_import_pics/SSS142.jpg', '', 'Uchechukwu', '', '48 Chris Oladuni street', '', 'Simidschools.com.ng', '07036190226', '07036190226', '', '', 'Mr. Uchechukwu ', '7069242257', 'Atisan', 'Mrs Patricia ', '7036190226', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:55:16', '0000-00-00 00:00:00'),
(48, 'SS0170', 'SSS@43', '0000-00-00', 'Daniel ', 'Nikechukwu', 'Nkere', '0000-00-00', '', 'NURSERY', 2, 'Ca', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '48 Kola Oluikot', '', 'Isiukwuato', 'Abia state ', '', '', '', 'emmanuelduru@gmail.com', 'images/student_import_pics/SSS143.jpg', '', 'Nkere', '', '43 Kola Olukotun street', '', 'Simidschools.com.ng', '08035653299', '08035653299', '', '', 'Mr. Nkere Ugoji Kingsley ', '8035653299', 'Business man', 'Nkere Charity Nneka', '9169717300', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:53:29', '0000-00-00 00:00:00'),
(49, 'SS0211', 'SSS@44', '0000-00-00', 'Emmanuel ', 'Munachimso', 'Duru', '0000-00-00', '', 'NURSERY', 2, 'Ca', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '5 Aina close, E', '', 'Ideato South ', 'Imo State ', '', '', '', 'Oladipupotoyin77@gmail.com', 'images/student_import_pics/SSS144.jpg', '', 'Duru', '', '5 AinaClose Ejigbo', '', 'Simidschools.com.ng', '08036388286', '08036388286', '', '', 'Mr. Duru Chinedu', '8023096159', 'Business man', 'Mrs. Ifeoma Duru', '8036388286', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:54:56', '0000-00-00 00:00:00'),
(50, 'SS0194', 'SSS@45', '0000-00-00', 'Emmanuel ', 'Semilore ', 'Sekoni', '0000-00-00', '', 'NURSERY', 2, 'Ca', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '28, Jubril Olab', '', 'Oshodi Isolo ', 'Oyo state ', '', '', '', '', 'images/student_import_pics/SSS145.jpg', '', 'Sekoni', '', '28 jubril Olabisi ', '', 'Simidschools.com.ng', '08188025564', '08188025564', '', '', 'Mr. Sekoni', '7052827713', 'Civil Servant', 'Mrs. Toyin', '8027540283', 'Nursing ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:53:29', '0000-00-00 00:00:00'),
(51, 'SS0212', 'SSS@46', '0000-00-00', 'Blossom ', 'Ojotule', 'Akowe ', '0000-00-00', '', 'NURSERY', 2, 'Ca', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '17 Olushesi clo', '', 'Dekina', 'Kogi State ', '', '', '', '', 'images/student_import_pics/SSS146.jpg', '', 'Akowe ', '', '17 Olusheshi Close ', '', 'Simidschools.com.ng', '08058036637', '08058036637', '', '', 'Mr. Destiny Akowe ', '8035018636', 'Employee ', 'Mrs. Blessing', '8058036637', 'Fashion Designer ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:56:17', '0000-00-00 00:00:00'),
(52, 'SS0172', 'SSS@47', '0000-00-00', 'Chimamanda', 'Zenita', 'Obiora', '0000-00-00', '', 'NURSERY', 2, 'Ca', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christainity', '4, Oluolanikan ', '', 'Ohi', 'Anambra State ', '', '', '', 'onyi-jacinta@yahoo.com', 'images/student_import_pics/SSS147.jpg', '', 'Obiora', '', '4 Oluolamika street', '', 'Simidschools.com.ng', '08036498789', '08036498789', '', '', 'Mr. Sunday Obiora', '9160834304', 'Trader ', 'Mrs. Joy Obiora ', '8036498789', 'Trader ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:55:16', '0000-00-00 00:00:00'),
(53, 'SS0221', 'SSS@48', '0000-00-00', 'Munachi', 'Eleanor ', 'Eleazars', '0000-00-00', '', 'NURSERY', 2, 'Ca', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '23, Wahab close', '', 'Nnewi', 'Anambra State ', '', '', '', 'johnviky24@gmail.com', 'images/student_import_pics/SSS148.jpg', '', 'Eleazars', '', '23 Wahab Close Ejigbo', '', 'Simidschools.com.ng', '07018193883', '07018193883', '', '', 'Mr. Ugochukwu Eleazars', '8066461012', 'Employee ', 'Mrs. Onyinye Eleazars', '8156558283', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:54:56', '0000-00-00 00:00:00'),
(54, 'SS0208', 'SSS@49', '0000-00-00', 'Omone', 'Gift ', 'David ', '0000-00-00', '', 'NURSERY', 2, 'Ca', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christianity', '15, Jubril Olab', '', 'Akoko Edo', 'Edo State ', '', '', '', '', 'images/student_import_pics/SSS149.jpg', '', 'David Segun', '', 'Dfam@yahoo.com', '', 'Simidschools.com', '08138947457', '08138947457', '', '', 'Mr. David Femi Victor', '8138947957', 'Employee ', 'Mrs. Ruth David ', '8033728121', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:56:17', '0000-00-00 00:00:00'),
(55, 'SS0202', 'SSS@50', '0000-00-00', 'Mercy', 'Essi', 'Anthony ', '0000-00-00', '', 'NURSERY', 2, 'Ca', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christianity', '5 James Omoboyo', '', 'Esan South East', 'Edo State ', '', '', '', '', 'images/student_import_pics/SSS150.jpg', '', 'Anthony ', '', '5 James Omoboye street Ejigbo', '', 'Simidschools.com.ng', '08038055747', '08038055747', '', '', 'Mr. Kenneth Anthony ', '8038055747', 'Employee ', 'Mrs. Vivian Anthony ', '9014405859', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:56:17', '0000-00-00 00:00:00'),
(56, 'SS0210', 'SSS@51', '0000-00-00', 'Halimat ', 'Anjolaoluwa', 'Adewale ', '0000-00-00', '', 'NURSERY', 2, 'Ca', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Muslim', '20/22 Sunmonu A', '', 'Yewa', 'Ogun State ', '', '', '', 'Aderiboles@yahoo.comOpeyemi08027744253@gmail.com', 'images/student_import_pics/SSS151.jpg', '', 'Adewale ', '', '20/22 Sumonu Animashaun', '', 'Simidschools.com.ng', '07088939490', '07088939490', '', '', 'Mr. Adewale Afeez', '8081579661', 'NIL', 'Mrs. Adewale Shakirat', '7088939490', 'Trader ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:54:56', '0000-00-00 00:00:00'),
(57, 'SS0169', 'SSS@52', '0000-00-00', 'Oluwasekemi', 'Favour ', 'Adewale ', '0000-00-00', '', 'NURSERY', 2, 'Ca', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christianity', '16 Olusheshi ', '', 'Okiti Pupa', 'Ondo State', '', '', '', '', 'images/student_import_pics/SSS152.jpg', '', 'Adewale ', '', '16 Olusheshi', '', 'Simidschools.com.ng ', '07064714717', '07064714717', '', '', 'Mr. Adewale Samuel ', '7064714717', 'Civil Servant', 'Mrs. Adewale Opeyemi', '8027744253', 'Civil Servant ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:55:16', '0000-00-00 00:00:00'),
(58, 'SS0238', 'SSS@53', '0000-00-00', 'Subomi', 'Daniel ', 'Bankole', '2017-01-21', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '2', '', '2023/2024', '', 0, 'male', '', '', '', '', 'Christian', '20a, Alafia Str', '', 'Oke-ero', 'Kwara State', '', '', '', '', 'images/student_import_pics/SSS153.jpg', '', 'Bankole', '', '20, Alafia street', '', 'simidschools421@gmail.com', '08032275624', '08032275624', '', '', 'Mr Bankole', '08135009821', 'Business man', 'Mrs Bankole ', '080632275624', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '7c795759973f3c18258b6dc0989c2d9a', '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(59, 'SS0235', 'SSS@54', '2016-11-07', 'Victoria ', 'Fikayomi ', 'Kayode', '2016-11-07', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '2', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '6, Jubril Olabi', '', '', 'Ekiti', '', '', '', '', 'images/student_import_pics/SSS154.jpg', '', 'Kayode', '', '6, Jubril Olabisi street Ejigbo Lagos', '', 'simidschools421@gmail.com', '08168165026', '08168165026', '', '', 'Mr Kayode', '', 'Business woman ', 'Mrs Kayode', '08036881191', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(60, 'SS0249', 'SSS@55', '0000-00-00', 'Chiemelie', 'Stanley ', 'Osakwe', '2016-11-16', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '19,Sule Isewade', '', 'Idemili North ', 'Anambra ', '', '', '', 'ofonagoro55@yahoo.com', 'images/student_import_pics/SSS155.jpg', '', 'Osakwe', '', '19,Sule Isewand', '', 'simidschools421@gmail.com', '08069372667', '08069372667', '', '', 'Mr Osakwe Benjamin', '', 'Engineer', 'Mrs Osakwe Roseline ', '8069372667', 'NIL ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:37:18', '0000-00-00 00:00:00'),
(61, 'SS0231', 'SSS@56', '0000-00-00', 'Precious ', 'Chinemerem', 'Ogechukwu Ani ', '2017-03-02', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '2', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '12,Techo way cl', '', 'Nkanu East ', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS156.jpg', '', 'Ogechukwu Ani ', '', '12,Techo way cl', '', 'simidschools421@gmail.com', '07063700040', '07063700040', '', '', 'Mr Ogechukwu Ani', '08039213720', 'Haulage and logistics ', 'Mrs Grace Ani', '07063700040', 'Teaching ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(62, 'SS0236', 'SSS@57', '0000-00-00', 'Franklin ', 'Chibuikem', 'Godwin ', '2016-09-22', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '2', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '14,Daleko road,', '', 'Orumba South ', 'Anambra ', '', '', '', 'ellanestoro@gmail.com', 'images/student_import_pics/SSS157.jpg', '', 'Godwin ', '', '14,Daleko road', '', 'simidschools421@gmail.com', '08064105031', '08064105031', '', '', 'Mr Ikenna Igwilo', '8037956249', 'Business man', 'Mrs Emmanuela Igwilo ', '7030380787', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(63, 'SS0260', 'SSS@58', '2015-10-31', 'Akowe', '', 'Bethel ', '0000-00-00', '', 'YEAR', 2, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '5,Aina Orisunmb', '', '', '', '', '', '', '', 'images/student_import_pics/SSS158.jpg', '', 'Emmanuel ', '', '5 Aina Orisunmbare ', '', 'emmanuel.gmail.com', '7069475795', '7069475795', '', '', 'Mr Emmanuel Lawrence ', '7069475795', 'Hospitality consultant ', 'Mrs Emmanuel Faith ', '8164109457', 'Accountant ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(64, 'SS0277', 'SSS@59', '0000-00-00', 'Praise ', 'Idahosa', 'Osazuwa ', '2016-06-27', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '63, Pipeline St', '', 'Uhunwunde', 'Edo State', '', '', '', '', 'images/student_import_pics/SSS159.jpg', '', 'Osazuwa ', '', '63, Pipeline St', '', 'simidschools421@gmail.com', '08140486991', '08140486991', '', '', 'Mr Osazuwa Oluwaseun Eseosa', '08023270530/', 'Artisan', 'Mrs Osazuwa Toyin Folashade', '08084550050/', 'Educationist ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:37:18', '0000-00-00 00:00:00'),
(65, 'SS0255', 'SSS@60', '0000-00-00', 'Abdulmalik', 'Omobolarinwa ', 'Isa', '2042-00-04', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '19, Jubril Olab', '', 'Ibadan Southwest ', 'Oyo', '', '', '', '', 'images/student_import_pics/SSS160.jpg', '', 'Isa', '', '19, Jubril Olab', '', 'Simidschools421 @ gmail.com', '08036646622', '08036646622', '', '', 'Mr Isa', '8142306153', 'Engineering ', 'Mrs Isa', '8142306153', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:37:18', '0000-00-00 00:00:00'),
(66, 'SS0246', 'SSS@61', '0000-00-00', 'Mitchell ', 'Eniola', 'Lawal', '2016-06-23', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '2', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '8,Elder Adeyemi', '', 'Akinyele ', 'Oyo', '', '', '', '', 'images/student_import_pics/SSS161.jpg', '', 'Lawal', '', '8,Elder Adeyemi', '', 'simidschools421agmail.com', '08060089180', '08060089180', '', '', 'Mr Lawal Abel', '8060089180', 'Clergy', 'Mrs Olatayo Lawal ', '8130769654', 'Teaching ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(67, 'SS0232', 'SSS@62', '0000-00-00', 'Amarachi', 'Emmanuella ', 'Adiele', '2017-12-03', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '2', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '4,Alhaji Ganiyu', '', 'Isiala-ngwa south ', 'Abia', '', '', '', 'ezinnevirtous@gmail.com', 'images/student_import_pics/SSS162.jpg', '', 'Adiele', '', '4,Alhaji Ganiyu', '', 'Simidschools421 @ gmail.com', '08163748032', '08163748032', '', '', 'Mr Adiele Chimaobi', '08060948201', 'Legal practitioner ', 'Mrs Adiele Ezinne', '8163748032', 'I.T consultant ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(68, 'SS0251', 'SSS@63', '0000-00-00', 'Ayomide', 'Godwin', 'Kazeem', '2014-11-08', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '4,Aina close, E', '', 'Abeogunta', 'Ogun', '', '', '', '', 'images/student_import_pics/SSS163.jpg', '', 'Kazeem', '', '4,Aina close, E', '', 'Simidschools421 @ gmail.com', '09056301094', '09056301094', '', '', 'Mr Kazeem ', '', '', 'Mrs Hope Solomon ', '09056301094', 'Self employed ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:37:18', '0000-00-00 00:00:00'),
(69, 'SS0250', 'SSS@64', '0000-00-00', 'Iteoluwakishi', 'Olivia ', 'Balogun ', '2016-05-04', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'female', '', '', 'Nigeria', '', '', '3, Daniel Oderh', '', 'Oshodi/Isolo', 'Kogi', '', '', '', 'micwell81@gmail.com', 'images/student_import_pics/SSS164.jpg', '', 'Balogun ', '', '3, Daniel Oderh', '', 'simidschools421agmail.com', '08032147849', '08032147849', '', '', 'Mr Balogun Micheal', '8032147849', '', 'Mrs Balogun ', '', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:37:18', '0000-00-00 00:00:00'),
(70, 'SS0246', 'SSS@65', '0000-00-00', 'Kamsi', 'Victor', 'Njoku', '2016-06-29', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '2', '', '2023/2024', '', 0, 'male', '', '', 'Nigeria', '', '', '7,Folawewo Stre', '', 'Mbano ', 'Imo', '', '', '', 'julietnjoku123@gmail.com', 'images/student_import_pics/SSS165.jpg', '', 'Njoku', '', '7,Folawewo stre', '', 'simidschools421agmail.com', '08138320049', '08138320049', '', '', 'Mr Victor Njoku', '08033075523', 'Business man', 'Mrs Njoku', '08138320047', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(71, 'SS0230', 'SSS@66', '0000-00-00', 'Bernice ', 'Jesusetemi ', 'Okusanya ', '2018-03-16', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '2', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '13,omon osaigbo', '', 'Ijebu East', 'Ogun state', '', '', '', 'jesugls123@gmail.com', 'images/student_import_pics/SSS166.jpg', '', 'Okusanya ', '', '13,omon osaigbo', '', 'simidschools421@gmail.com', '08035716990', '08035716990', '', '', 'Mr Okusanya Olutola', '08034596283', 'Engineering ', 'Mrs Okusanya Olamide', '08035716990', 'Educationist ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(72, 'SS0233', 'SSS@67', '0000-00-00', 'Imisi', '', 'Tolashe', '0000-00-00', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '2', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '43,Dauda Ilo, s', '', 'Alimosho ', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS167.jpg', '', 'Tolashe', '', '43,Dauda Ilo, street', '', 'simidschools421@gmail.com', '08066424813', '08066424813', '', '', 'Mr Tolashe ', '08066424813', 'Business man', 'Mrs Tolashe ', '', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:40:02', '0000-00-00 00:00:00'),
(73, 'SS0237', 'SSS@68', '0000-00-00', 'Obinna', '', 'Akah', '2016-04-01', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '2', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '12, Chief Adene', '', 'Alimosho ', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS168.jpg', '', 'Akah', '', '12, Chief Adenekan street', '', 'simidschools421@gmail.com', '08037126966', '08037126966', '', '', 'Mr Akah', '08037126966', 'Business man', 'Mrs Akah', '', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(74, 'SS0249', 'SSS@69', '0000-00-00', 'Gold', '', 'Olajorin', '2016-05-28', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '25,Jubril Olabi', '', 'Alimosho ', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS169.jpg', '', 'Olajorin', '', '25,Jubril Olabisi', '', 'simidschools421@gmail.com', '08189673264', '08189673264', '', '', 'Mr Olajorin ', '08189673264', 'Civil servant ', 'Mrs Olajorin ', '', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:37:18', '0000-00-00 00:00:00'),
(75, 'SS0170', 'SSS@70', '0000-00-00', 'Shile', '', 'Awonaike', '2016-03-05', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '2', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '14,Agbedion, Ej', '', 'Alimosho ', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS170.jpg', '', 'Awonaike', '', '14,Agbedion, EjIgbo', '', 'simidschools421@gmail.com', '08093605549', '08093605549', '', '', 'Mr Awonaike ', '08093605549', 'Business man', 'Mrs Awonaike ', '', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(76, 'SS0239', 'SSS@71', '0000-00-00', 'Vera', '', 'Ogbeifun ', '2016-03-19', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '2', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '1,Saka street, ', '', 'Alimosho ', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS171.jpg', '', 'Ogbeifun ', '', '1,Saka street, Ejigbo', '', 'simidschools421@gmail.com', '09067678293', '09067678293', '', '', 'Mr Ogbeifun ', '09067678293', 'Clergy ', 'Mrs Ogbeifun ', '08034434783', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(77, 'SS0172', 'SSS@72', '0000-00-00', 'Sochikaima', '', 'Nwana', '2016-07-29', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '23, Olusesi str', '', 'Alimosho ', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS172.jpg', '', 'Nwana', '', '23,Olusesi Close ', '', 'simidschools421@gmail.com', '07083836834', '07083836834', '', '', 'Mr Nwana', '07083836834', 'Business man', 'Mrs Nwana ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:37:18', '0000-00-00 00:00:00'),
(78, 'SS0313', '', '0000-00-00', 'Stephen ', 'Oluwamayowa', 'Adesanya', '2015-05-29', '', 'YEAR', 4, '', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '61, Idimu road,', '', 'Remo North', 'Ogun', '', '', '', 'blessedbuki4u@gmail.com', 'images/student_import_pics/SSS173.jpg', '', 'Adesanya', '', '61, Idimu road', '', 'Simidschools421 @ gmail.com', '08097268636', '08097268636', '', '', 'Mr Adesanya Solomon ', '08028497945', 'Administrative ', 'Mrs Adesanya', '08097268636', 'Teaching ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:23:35', '0000-00-00 00:00:00'),
(79, 'SS0272', '', '0000-00-00', 'Gideon', 'Chidubem', 'Okolie', '2013-11-12', '', 'YEAR', 2, '', '', 'YEAR', '2', '', '2022/2023', '', 0, 'Male', '', '', '', '', '', '17, Sunmonu Ani', '', 'Ihiala', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS174.jpg', '', 'Okolie', '', '17, Sunmonu Ani', '', 'Simidschools421 @ gmail.com', '07036395827', '07036395827', '', '', 'Mr Chidi Okolie', '09165284120', 'Business ', 'Oluchi Okolie', '07036395827', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 13:33:01', '0000-00-00 00:00:00'),
(80, 'SS0361', '', '0000-00-00', 'Miracle ', 'Chizaram ', 'Echeazu', '2015-07-03', '', 'YEAR', 2, 'Orchid ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '21, Ilufunmi St', '', 'Aboh Mbaise', 'Imo', '', '', '', 'Stankelly12@gmail.com', 'images/student_import_pics/SSS175.jpg', '', 'Echeazu', '', '21, Ilufunmi St', '', 'Simidschools421 @ gmail.com', '07063906948', '07063906948', '', '', 'Anyanwu Stanley Echeazu', '08069190744', 'Civil Servant ', 'Anyanwa Izeta', '07063906948', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(81, 'SS0275', '', '0000-00-00', 'Golden', 'Chizittere', 'Nwachukwu', '2015-01-16', '', 'YEAR', 2, 'Orchid ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '34, Tokumbo Str', '', 'Alimosho', 'Imo', '', '', '', '', 'images/student_import_pics/SSS176.jpg', '', 'Nwachukwu', '', '34, Tokumbo Str', '', 'Simidschools421 @ gmail.com', '09067602530', '09067602530', '', '', 'Princewill Nwachukwu', '7063555429', 'Computer engineer ', 'Cynthia Nwachukwu', '09067602530', 'Accountant ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(83, 'SS0265', '', '0000-00-00', 'Olamide ', 'Faridat ', 'Raji', '2016-02-12', '', 'YEAR', 2, '', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '16, Fatia Adeye', '', 'Alimosho', 'Osun', '', '', '', '', 'images/student_import_pics/SSS178.jpg', '', 'Shorunke Damilola', '', '16, Fatia Adeyemi', '', 'Simidschools421 @ gmail.com', '08136625799', '08136625799', '', '', 'Kolawole Raji', '8036497124', 'Civil servant', 'Omobolaji Odofin Raji', '08136625799', 'Accountant ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:21:32', '0000-00-00 00:00:00'),
(84, 'SSS179', '', '0000-00-00', 'Divine', 'Munachi', 'Ohanagu', '0000-00-00', '', 'YEAR', 2, '', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '31b Jubril Olab', '', 'Oguta', 'Imo', 'Nigeria', '', '', '', 'images/student_import_pics/SSS179.jpg', '', 'Ohanagu', '', '', '', '', '', '', '', '', 'Ohanagu Oliver', '8032397054', 'Business', 'Ohanagu Faith', '8135180522', 'Business', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00');
INSERT INTO `registered_students` (`id`, `student_admission_number`, `password`, `student_admission_date`, `student_firstname`, `student_middlename`, `student_lastname`, `student_dob`, `height`, `class`, `level`, `class_number`, `department`, `current_class`, `current_level`, `current_department`, `current_year`, `graduated`, `avg_sc`, `student_gender`, `student_bloodgroup`, `student_birthplace`, `student_nationality`, `student_mothertongue`, `student_religion`, `student_address1`, `student_address2`, `student_lga`, `student_state`, `student_country`, `student_phone`, `student_mobile`, `student_email`, `student_photo`, `guardian_phone`, `guardian_name`, `guardian_city`, `guardian_address`, `guardian_state`, `guardian_email`, `guardian_country`, `guardian_mobile`, `guardian_relation`, `guardian_occupation`, `father_name`, `father_mobile`, `fathers_occupation`, `mother_name`, `mother_mobile`, `mother_occupation`, `hostel_room`, `hostel_registration_date`, `hostel_vacating_date`, `inoculation_taken`, `inoculation_not_taken`, `infectious_disease`, `infections_disease_have`, `suffer`, `suffer_from`, `last_form_token`, `created_at`, `updated_at`) VALUES
(85, 'SS0285', '', '0000-00-00', 'Jesulayomi', 'Esther', 'Okusanya', '2016-05-17', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '13,Omon Osaigbo', '', 'Ijebu East local government', 'Ogun State', '', '', '', 'jesugls123@gmail.com', 'images/student_import_pics/SSS180.jpg', '', 'Okusanya ', '', '13,Omon Osaigbo', '', 'Simidschools421 @ gmail.com', '08035716990', '08035716990', '', '', 'Mr Okunsanya Olutola', '08034596283', 'Engineer', 'Mrs Okusanya Olamide', '08035716990', 'Educationist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(86, 'SS0284', '', '0000-00-00', 'Rosemary', 'Oyinkansola', 'Obaniyi', '2016-05-23', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '6 Jubril Olabis', '', '', 'Oyo State', '', '', '', '', 'images/student_import_pics/SSS181.jpg', '', 'Obaniyi', '', '6 Jubril Olabisi', '', 'Simidschools421 @ gmail.com', '08135517393', '08135517393', '', '', 'Mr Lawrence Obaniyi', '08067672902', 'Transporter', 'Mrs Obaniyi Mary', '08135517393', 'Business', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(87, 'SS0304', '', '0000-00-00', 'Chinemere', 'Dominic', 'Eze', '2014-12-29', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '15 Wahab Close ', '', 'Igbo Eze North', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS182.jpg', '', 'Eze', '', '15 Wahab Close', '', 'Simidschools421 @ gmail.com', '07032498029', '07032498029', '', '', 'Mr Martins Eze', '7066541204', 'Trader', 'Mrs Ukamaka Eze', '07032498029', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(89, 'SS0283', '', '0000-00-00', 'Elizabeth', 'Ire', 'Ikusika', '2016-05-07', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '12 Ekundayo Str', '', '', 'Ondo State', '', '', '', 'IkusikaDayo@yahoo.com', 'images/student_import_pics/SSS184.jpg', '', 'Ikusika', '', '12 Ekundayo Str', '', 'Simidschools421 @ gmail.com', '07083126559', '07083126559', '', '', 'Temidayo Kayode', '8182195674', 'Fashion designer', 'Ikusila Bella', '07083126559', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(90, 'SS0294', '', '0000-00-00', 'Amarachi', 'Favour', 'Nwankwo', '2016-05-26', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '17 Caroline Odu', '', 'Ezeagu ', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS185.jpg', '', 'Nwankwo', '', '17 Caroline Odu', '', 'Simidschools421 @ gmail.com', '07045455257', '07045455257', '', '', 'Mr Joseph Nwankwo', '08032379928', 'Trading', 'Ngozi Nwankwo', '07045455257', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(91, 'SS0323', '', '0000-00-00', 'Semilore', 'Onyedikachi', 'Peters ', '2015-04-28', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', ' 43 Ifelodun st', '', 'Ikwere', 'Rivers', '', '', '', '', 'images/student_import_pics/SSS186.jpg', '', 'Peters ', '', '43 Ifelodun st', '', 'Simidschools421 @ gmail.com', '08109551569', '08109551569', '', '', 'Peters Desmond Chidiebere', '7039684823', 'Laundry', 'Peters Elizabeth', '08109551569', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 13:40:26', '0000-00-00 00:00:00'),
(92, 'SS0290', '', '0000-00-00', 'Inioluwa', 'Elizabeth', 'Ayinla', '2015-07-01', '', 'YEAR', 2, 'Orchid ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '18 Adeyemi Dara', '', 'Oshodi/Isolo', 'Lagos State', '', '', '', '', 'images/student_import_pics/SSS187.jpg', '', 'Ayinla', '', '18 Adeyemi Dara', '', 'Simidschools421 @ gmail.com', '08022491197', '08022491197', '', '', 'Ayinla Paul', '8038208333', 'Civil Engineer', 'Ayinla Grace', '08022491197', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(93, 'SS0321', '', '0000-00-00', 'Precious', 'Amanda', 'Onwe', '2013-05-29', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '4 Oluolamikan S', '', 'Izzi', 'Ebonyi', '', '', '', '', 'images/student_import_pics/SSS188.jpg', '', 'Onwe', '', '4 Oluolamikan Street', '', 'Simidschools421 @ gmail.com', '09029918844', '09029918844', '', '', 'Emeka Onwe', '08034762750', 'Trading', 'Chidinma Onwe', '09029918844', 'Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:39:20', '0000-00-00 00:00:00'),
(94, 'SS0289', '', '0000-00-00', 'Joy', 'Ugoeze', 'Mark', '2015-12-28', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '13 Okesola Stre', '', 'Owerri West', 'Imo', '', '', '', '', 'images/student_import_pics/SSS189.jpg', '', 'Mark', '', '13 Okesola Street', '', 'Simidschools421 @ gmail.com', '08098615190', '08098615190', '', '', 'Ngere Godswill Onyedidachi', '8034417118', 'Civil Servant', 'Mark Rejoice Ijeoma ', '08098615190', 'Civil Servant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(95, 'SSS190', '', '0000-00-00', 'Angel', 'Onyiyechukwu', 'Nwankwo', '0000-00-00', '', 'YEAR', 2, '', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '25 Baruwa Cando', '', 'Aniocha South ', 'Delta State', 'Nigeria', '', '', '', 'images/student_import_pics/SSS190.jpg', '', 'Nwankwo', '', '', '', '', '', '', '', '', 'Joseph Nwankwo', '7062159842', 'Business man', 'Lilian Nwankwo', '8036667046', 'Nursing', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(96, 'SS0286', '', '0000-00-00', 'Moboluwami', 'Emmanuella ', 'Robert ', '2015-12-28', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '12 Edagbeja Str', '', 'Odi Olowo', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS191.jpg', '', 'Robert ', '', '12 Edagbeja Str', '', 'Simidschools421 @ gmail.com', '08098629860', '08098629860', '', '', 'Robert Adewale ', '08098068677', 'Media Gaffer', 'Robert Oyelola', '08098629860', 'Trader/Caterer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:21:32', '0000-00-00 00:00:00'),
(97, 'SS0296', '', '0000-00-00', 'Aondohemen', 'Abraham', 'Tera', '2015-03-21', '', 'YEAR', 2, 'Orchid ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '17 Olusesi Clos', '', 'Gbok ', 'Benue State', '', '', '', 'teraagule77@gmail.com', 'images/student_import_pics/SSS192.jpg', '', 'Tera', '', '17 Olusesi Close', '', 'Simidschools421 @ gmail.com', '09122629707', '09122629707', '', '', 'Tera', '08034495947', 'Shipping', 'Ann ', '09122629707', 'House Wife', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(98, 'SS0295', '', '0000-00-00', 'Emmanuel', 'Iteoluwakinshi', 'Adewale', '2016-03-11', '', 'YEAR', 2, '', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '14 Olusesi Clos', '', 'Okiti ', 'Ondo State', '', '', '', 'aderiboles@yahoo.com', 'images/student_import_pics/SSS193.jpg', '', 'Adewale', '', '14 Olusesi Close', '', 'Simidschools421 @ gmail.com', '08027744253', '08027744253', '', '', 'Samuel Adewale', '07064714717', 'Civil Servant', 'Opeyemi Adewale', '08027744253', 'Civil Servant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(99, 'SSS194', '', '0000-00-00', 'Awwal', '', 'Kazeem', '0000-00-00', '', 'YEAR', 2, '', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '12 Jubril Olabi', '', '', '', 'Nigeria', '', '', '', 'images/student_import_pics/SSS194.jpg', '', 'Kazeem', '', '', '', '', '', '', '', '', 'Mr Kazeem', '8030751542', '', 'Mrs Kazeem', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(100, 'SS0298', '', '0000-00-00', 'Busayo', 'Israel', 'Akanni', '2015-09-15', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', 'No1 Ido Odofin', '', '', '', '', '', '', '', 'images/student_import_pics/SSS195.jpg', '', 'Akanni', '', 'No1 Ido Odofin', '', 'Simidschools421 @ gmail.com', '08028474085', '08028474085', '', '', 'Mr Akanni ', '08028474085', '', 'Mrs Akanni', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(101, 'SS0300', '', '0000-00-00', 'Praise', '', 'Poroye', '2015-04-19', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '13 Wahab Close ', '', '', '', '', '', '', '', 'images/student_import_pics/SSS196.jpg', '', 'Poroye', '', '13 Wahab Close', '', 'Simidschools421 @ gmail.com', '09028252622', '09028252622', '', '', 'Mr Poroye', '09028252622', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(102, 'SS0307', '', '0000-00-00', 'Fortune', 'Oluchukwu', 'Nwefulu', '2015-07-13', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '4 Sanni Dauda S', '', '', '', '', '', '', '', 'images/student_import_pics/SSS197.jpg', '', 'Nwefulu', '', '4, Sanusi Dauda Street ', '', 'Simidschools421@gmail.com', '07034538720', '07034538720', '', '', 'Mr Nwefulu', '7034538720', '', '', '', 'Educationist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(103, 'SS0315', '', '0000-00-00', 'Tiaraoluwa', '', 'Omogunwa', '2015-07-25', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '42 Taiwo Street', '', '', '', '', '', '', '', 'images/student_import_pics/SSS198.jpg', '', 'Omogunwa', '', '42 Taiwo Street', '', 'Simidschools421 @ gmail.com', '08131087041', '08131087041', '', '', 'Mr Omogunwa', '08034197755', '', 'Mrs Omogunwa', '08131087041', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:39:20', '0000-00-00 00:00:00'),
(104, 'SS0322', '', '0000-00-00', 'Chinazaekpere', 'Christabel', 'Onyegbuna', '2015-08-31', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '3 Lateef Kamoru', '', 'Oji River', 'Enugu', '', '', '', 'paulben138@gmail.com', 'images/student_import_pics/SSS199.jpg', '', 'Onyegbuna', '', '3 Lateef Kamoru', '', 'Simidschools421 @ gmail.com', '07034378056', '07034378056', '', '', 'Mr Benjamin Onyekpa', '8023023344', 'Business', 'Mrs Onyekpa', '07034378056', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 13:42:16', '0000-00-00 00:00:00'),
(105, 'SS0319', '', '0000-00-00', 'Azeem', '', 'Adeyemi', '2015-01-26', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male ', '', '', '', '', '', '6 Sabitu Buhari', '', '', '', '', '', '', '', 'images/student_import_pics/SSS200.jpg', '', 'Adeyemi', '', '6 Sabitu Buhari', '', 'Simidschools421 @ gmail.com', '07035845574', '07035845574', '', '', 'Mr Azeem', '07035845574', '', 'Mrs Azeem', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(106, 'SS0299', '', '0000-00-00', 'Mirabel ', '', 'Andrew ', '2015-12-12', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '19 Iwamimo Stre', '', '', '', '', '', '', '', 'images/student_import_pics/SSS201.jpg', '', 'Andrew ', '', '19,Iwamimo street ', '', 'Simidschools 421@gmail.com', '08103343854', '08103343854', '', '', 'Mr Andrew ', '', '', 'Mrs Andrew', '8103343854', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(107, 'SS0293', '', '0000-00-00', 'Darasimi ', '', 'Ologunoba', '2016-06-06', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '23, Folawewo st', '', '', '', '', '', '', '', 'images/student_import_pics/SSS202.jpg', '', 'Ologunoba', '', '23, Folawewo street ', '', 'Simidschools 421@gmail.com', '09027612634', '09027612634', '', '', 'Mr Ologunoba ', '9027612634', 'Civil Servant', 'Mrs Ologunoba', '9027612634', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(108, 'SS0333', '', '0000-00-00', 'Divine ', 'Anjolaoluwa', 'Afolabi', '2015-03-17', '', 'YEAR', 3, 'Hyacinth', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '65,Idimu road L', '', 'Oshodi/Isolo', 'Osun', '', '', '', '', 'images/student_import_pics/SSS203.jpg', '', 'Afolabi', '', '65,Idimu road', '', 'simidschools421@gmail.com', '07035083698', '07035083698', '', '', 'Mr Afolabi Segun', '', 'Civil servants ', 'Mrs Afolabi Abimbola', '7035083698', 'Trader ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(109, 'SS0360', '', '0000-00-00', 'Anthony ', 'Opeyemi', 'Ogun', '2014-03-23', '', 'YEAR', 3, 'Hyacinth', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian', '8/10 omo-osaigb', '', 'Alimosho', 'Ondo', '', '', '', '', 'images/student_import_pics/SSS204.jpg', '', 'Ogun', '', '8/10 Omon Osaigbevo', '', 'simidschools421@gmail.com', '08033654112', '08033654112', '', '', 'Mr Ogun', '', '', 'Mrs Modupe Ogun', '8033654112', 'Rtd Banker ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(110, 'SS0344', '', '0000-00-00', 'Sofiat', 'Ayomide', 'Abdulateef', '2014-10-14', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '32 Idimu road ', '', 'Illorin East ', 'Kwara', '', '', '', '', 'images/student_import_pics/SSS205.jpg', '', 'Abdulateef', '', '36, Ilufunmi street ', '', 'simidschools421agmail.com', '09039428060', '09039428060', '', '', 'Mr Oriyomi', '', 'Captain ', 'Mrs Romoke', '9164303271', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(112, 'SS0328', '', '0000-00-00', 'Nmesoomachukwu', 'Sharon', 'Ogechukwu Ani', '2015-04-04', '', 'YEAR', 3, 'Hyacinth', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '12 ,Techcoway ', '', 'Nkanu East', 'Enugu ', '', '', '', '', 'images/student_import_pics/SSS207.jpg', '', 'Ogechukwu Ani', '', '12,Techo way cl', '', 'simidschools421@gmail.com', '07063400043', '07063400043', '', '', 'Mr Ogechukwu Ani', '8039213720', 'Haulage and Logistics ', 'Mrs Grace Ani', '7063700040', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(113, 'SS0341', '', '0000-00-00', 'Favour', 'Chidera', 'Monday', '2014-03-12', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '21, Adesina str', '', 'Ikwo ', 'Ebonyi ', '', '', '', '', 'images/student_import_pics/SSS208.jpg', '', 'Monday', '', '21, Adesina str', '', 'simidschools421agmail.com', '08030750931', '08030750931', '', '', 'Mr Monday Nwedu', '8030750931', 'Trader ', 'Mrs Confidence ', '9133514110', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(114, 'SS0326', '', '0000-00-00', 'Zainab', 'Anjola', 'Ojubanire', '0205-05-27', '', 'YEAR', 3, 'Hyacinth', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '47 Taiwo street', '', 'Oshodi Isolo', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS209.jpg', '', 'Ojubanire', '', '47 Taiwo street', '', 'simidschools421@gmail.com', '08039423867', '08039423867', '', '', 'Mr Abdul Akeem Ojubanire ', '8060111036', 'civil servant', 'Mrs Fatimah Ojubanire ', '8139903867', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(115, 'SS0332', '', '0000-00-00', 'Moyinoluwa', 'Victor ', 'Isaac ', '2015-02-03', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '1, Oke off Oyeb', '', '', 'Ogun ', '', '', '', '', 'images/student_import_pics/SSS210.jpg', '', 'Isaac ', '', '1, Oke off Oyeb', '', 'simidschools421agmail.com', '08026124184', '08026124184', '', '', 'Mr Oluwasegun Isaac ', '8029729832', 'Teacher ', 'Mrs Ruth Isaac ', '8028124184', 'Trader ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(116, 'SS0335', '', '0000-00-00', 'Mofe', 'Michael ', 'Aderinboye', '2015-03-13', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '21 Ifeanyi Ugbe', '', 'Owo', 'Ondo', '', '', '', '', 'images/student_import_pics/SSS211.jpg', '', 'Aderinboye', '', '25 Ifeanyi Ugbe', '', 'simidschools421agmail.com', '08020759969', '08020759969', '', '', 'Mr Aderinboye Mike Ayodeji', '80389212283', 'Trader ', 'Mrs Aderinboye Toyin Deborah ', '8020759969', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(117, 'SS0336', '', '0000-00-00', 'Praise', 'Fikayo', 'Olajorin', '2014-07-16', '', 'YEAR', 3, 'Hyacinth', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '19, Owuromi Ape', '', 'Irokio', 'Ogun', '', '', '', '', 'images/student_import_pics/SSS212.jpg', '', 'Olajorin', '', '19, Owuromi Apena', '', 'simidschools421@gmail.com', '08189673264', '08189673264', '', '', 'Mr Olajorin Olaolu', '7056167042', 'Civil servant', 'Mrs Olajorin Kanyinsola', '9056017927', 'Make-up Artist ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(118, 'SS0334', '', '0000-00-00', 'Munachi', 'Cherish ', 'Fidelis ', '2014-11-16', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '34 Chris Oladum', '', 'Ngor Opkala', 'Imo', '', '', '', '', 'images/student_import_pics/SSS213.jpg', '', 'Fidelis ', '', '34 Chris Oladumi', '', 'simidschools421agmail.com', '09036620871', '09036620871', '', '', 'Mr Chinedu Fidelis ', '8181998276', 'Trader ', 'Mrs Mary', '9036620871', 'catering ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(119, 'SS0329', '', '0000-00-00', 'Chisom', 'Blessing', 'Obinna', '2014-05-17', '', 'YEAR', 3, 'Hyacinth', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '13 Kola Olukotu', '', 'Uli', 'Anambra ', '', '', '', '', 'images/student_import_pics/SSS214.jpg', '', 'Obinna', '', '13 Kola Olukotun street', '', 'simidschools421@gmail.com', '08067586231', '08067586231', '', '', 'Mr Obinna Obi', '8066204906', 'Trader ', 'Mrs Obinna Ifeoma', '8100827851', 'Trader ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(120, 'SS0363', '', '0000-00-00', 'Omogbolahan', 'Quoyun', 'Tijani', '2013-01-11', '', 'YEAR', 3, 'Hyacinth', '', 'YEAR', '5', '', '2023/2024', '', 0, 'male ', '', '', '', '', '', '4 Obalabi stree', '', 'Iseyi', 'Oyo', '', '', '', '', 'images/student_import_pics/SSS215.jpg', '', 'Tijani', '', '4 Obalabi street', '', 'simidschools421@gmail.com', '08023819470', '08023819470', '', '', 'Mr Tijani', '9038474425', 'Trader ', 'Mrs Arowolo Omobolanle', '80238219470', 'Trader ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:40:55', '0000-00-00 00:00:00'),
(121, 'SS0337', '', '0000-00-00', 'Somtochukwu', '', 'Akah', '2014-03-05', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '12 chief Adenek', '', '', '', '', '', '', '', 'images/student_import_pics/SSS216.jpg', '', 'Aka', '', '12 chief Adenekan', '', 'simidschools421agmail.com', '08037126966', '08037126966', '', '', 'Mr Aka', '8037126966', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(122, 'SS0338', '', '0000-00-00', 'Fortune ', '', 'Simeon', '2015-06-15', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '12, Onojade str', '', '', 'Ondo', '', '', '', '', 'images/student_import_pics/SSS217.jpg', '', 'Simeon', '', '12, Onojade str', '', 'simidschools421agmail.com', '08034789682', '08034789682', '', '', 'Mr Simeon', '8034789782', 'engineer ', 'Mrs Omo Oluwa', '', 'Musician ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(123, 'SS0327', '', '0000-00-00', 'Emmanuel ', 'Olajire', 'Oladipo', '2015-01-04', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '15 Saka street ', '', 'Alimosho', 'Lagos ', '', '', '', '', 'images/student_import_pics/SSS218.jpg', '', 'Oladipo', '', '15 Saka street', '', 'simidschools421agmail.com', '08050417442', '08050417442', '', '', 'Mr Adewumi', '8050417442', '', 'Mrs Morayo', '', 'pharmacist ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(124, 'SS0340', '', '0000-00-00', 'Florish', '', 'Oni', '2014-12-14', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '13 Araromi stre', '', 'Ijero', 'Ekiti', '', '', '', '', 'images/student_import_pics/SSS219.jpg', '', 'Oni', '', '13 Araromi stre', '', 'simidschools421agmail.com', '07041376731', '07041376731', '', '', 'Mr Oni', '', 'Teacher ', 'Mrs Tejumola', '', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(125, 'SS0324', '', '0000-00-00', 'Kelly', 'chukwuebuka', 'Aloma', '2014-06-20', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '33 Sholadunmi s', '', '', 'Imo', '', '', '', '', 'images/student_import_pics/SSS220.jpg', '', 'Aloma', '', '11chrisoladunmu street ', '', 'simidschools421agmail.com', '08038703630', '08038703630', '', '', 'Mr Justice Aloma', '8038703630', 'fashion designer ', 'Mrs Aloma', '8036303780', 'optometrist ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(126, 'SS0331', '', '0000-00-00', 'Toyosi', '', 'Jaiyeola', '2015-01-06', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '18 Kola Olukotu', '', '', '', '', '', '', '', 'images/student_import_pics/SSS221.jpg', '', 'Jaiyeola', '', '18 Kola Olukotu', '', 'simidschools421agmail.com', '08022219822', '08022219822', '', '', 'Mr Jaiyeola', '', '', 'Mrs Jaiyeola', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(127, 'SS0343', '', '0000-00-00', 'Bright', 'Idemi', 'Benstowe', '2015-07-15', '', 'YEAR', 3, 'Hyacinth', '', 'YEAR', '4', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '53, Holy Mary c', '', 'Bonny', 'Porthacourt ', '', '', '', '', 'images/student_import_pics/SSS222.jpg', '', 'Benstowe', '', '53, Holy Mary close', '', 'simidschools421@gmail.com', '09048808463', '09048808463', '', '', 'Mr Austin Benstowe', '8084843419', 'Trader', 'Mrs Benstowe ', '', 'Teacher ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(128, 'SS0330', '', '0000-00-00', 'Inioluwa', '', 'John ', '2014-05-30', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '4, Honourable A', '', '', '', '', '', '', '', 'images/student_import_pics/SSS223.jpg', '', 'John ', '', '4, Honourable A', '', 'simidschools421agmail.com', '09026814634', '09026814634', '', '', 'Mr John', '9026814634', '', 'Mrs John', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(129, 'SS0364', '', '0000-00-00', 'Abdulmojeed', '', 'Alhassan', '2013-06-20', '', 'YEAR', 3, 'Hyacinth', '', 'YEAR', '5', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '13 Ogumde stree', '', '', 'Kogi', '', '', '', '', 'images/student_import_pics/SSS224.jpg', '', 'Alhassan', '', '13 Ogumde street', '', 'simidschools421@gmail.com', '07069067477', '07069067477', '', '', 'Mr Alhassan ', '7069067477', '', 'Mrs Alhassan ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:40:55', '0000-00-00 00:00:00'),
(130, 'SS0325', '', '0000-00-00', 'Anjolaoluwa ', '', 'Biobaku', '2014-12-10', '', 'YEAR', 3, 'Hyacinth', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '9 Damilola stre', '', '', '', '', '', '', '', 'images/student_import_pics/SSS225.jpg', '', 'Biobaku', '', '9, Damilola street', '', 'simidschools421@gmail.com', '07036461818', '07036461818', '', '', 'Mr Biobaku ', '7036461818', '', 'Mrs Biobaku ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(131, 'SS0339', '', '0000-00-00', 'Duchess', '', 'Igbinedion', '2015-01-28', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '3', '', '2022/2023', '', 0, 'female', '', '', '', '', '', '12 Ilufunmi str', '', '', '', '', '', '', '', 'images/student_import_pics/SSS226.jpg', '', 'Igbinedion', '', '12 Ilufunmi str', '', 'simidschools421agmail.com', '08098922130', '08098922130', '', '', 'Mr Igbinedion ', '9098922130', '', 'Mrs Igbinedion ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 14:44:43', '0000-00-00 00:00:00'),
(132, 'SS0342', '', '0000-00-00', 'Emmanuel ', 'Chidubem', 'Patrick ', '2015-04-12', '', 'YEAR', 3, 'Hayacinth ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '9 Lateef Kamonu', '', 'Iyiala', 'Anambra ', '', '', '', '', 'images/student_import_pics/SSS227.jpg', '', 'Patrick ', '', '9 Lateef Kamonu', '', 'simidschools421agmail.com', '07030579682', '07030579682', '', '', 'Mr Patrick ', '8066606480', 'Trader', 'Mrs Obidiegwu', '7030579682', 'Teacher ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(133, 'SS0350', '', '0000-00-00', 'Omodesiri', 'Dominion', 'Sholola', '2015-01-12', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '12 Tajudeen Ogu', '', 'Ewa Koro ', 'Abeokuta', '', '', '', '', 'images/student_import_pics/SSS228.jpg', '', 'Sholola', '', '12 Tajudeen Ogu', '', 'simidschools421agmail.com', '08030536575', '08030536575', '', '', 'Mr Sholola', '8030674912', 'Aluminum fabrication', 'Mrs Sholola', '8130536575', 'Fashion designer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(134, 'SS0356', '', '0000-00-00', 'Victory', 'Jesulayomi', 'Fadahunsi', '2015-05-12', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '14 Olusesi clos', '', 'Oshodi Isolo', 'Ondo', '', '', '', '', 'images/student_import_pics/SSS229.jpg', '', 'Fadahunsi', '', '14 Olusesi close', '', 'simidschools421@gmail.com', '09071667243', '09071667243', '', '', 'Mr Oluwafemi', '7032304878', 'Business man', 'mrs Oluwatoyin', '9071667243', 'Area sales manager', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(135, 'SS0345', '', '0000-00-00', 'Princess', 'Fiyinfoluwa', 'Adeyemi', '2015-03-01', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '21 Idimu road', '', 'Ikene', 'Ogun', '', '', '', '', 'images/student_import_pics/SSS230.jpg', '', 'Adeyemi', '', '21 Idimu road', '', 'simidschools421agmail.com', '08032427966', '08032427966', '', '', 'Mr Olayiwola', '8039399855', 'Business man', 'Mrs Mopelola', '8032427966', 'Makeup artist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(136, 'SS0351', '', '0000-00-00', 'Tomisin', 'Josiah', 'Alabi', '2014-03-16', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', '', '21 Jubril olabi', '', 'Igbonibi', 'Osun', '', '', '', '', 'images/student_import_pics/SSS231.jpg', '', 'Alabi', '', '21 Jubril olabi', '', 'simidschools421agmail.com', '08052372289', '08052372289', '', '', 'Mr Kehinde', '8067596774', 'Business man', 'Mrs Deborah', '9163056290', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(137, 'SS0346', '', '0000-00-00', 'Sherifat', 'Onize', 'Alhassan', '2013-06-08', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '13 Ogunde stree', '', 'Oshodi Isolo', 'Kogi', '', '', '', '', 'images/student_import_pics/SSS232.jpg', '', 'Alhassan', '', '13 Ogunde stree', '', 'simidschools421agmail.com', '09069067477', '09069067477', '', '', 'Mr Alhassan', '8036114776', 'Driver', 'Mrs Hasiya', '7069067477', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(138, 'SS0348', '', '0000-00-00', 'Iradiat', 'Folashade', 'Mogaji', '2014-01-18', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '  22 Annimashau', '', 'Ifelodun', 'Kwara', '', '', '', '', 'images/student_import_pics/SSS233.jpg', '', 'Mogaji', '', '22 Annimashau', '', 'simidschools421agmail.com', '08183261879', '08183261879', '', '', 'Mr mogaji', '8035236706', 'business man', 'Mrs Romoke', '7034408049', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(139, 'SS0355', '', '0000-00-00', 'Precious', 'Iwinosa', 'Osazuwa', '2014-11-10', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '63 pipeline str', '', 'Uhunwunde', 'Edo', '', '', '', '', 'images/student_import_pics/SSS234.jpg', '', 'Osazuwa', '', '58 Pipeline Street ', '', 'simidschools421agmail.com', '08140486991', '08140486991', '', '', 'Mr Oluwaseun', '8023270530', 'Artisan', 'Mrs Toyin', '808455005', 'Educationist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(140, 'SS0406', '', '0000-00-00', 'Surfiu', 'Nifemi', 'Ganiyu', '2013-04-04', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', '', '16 Elder Adeyem', '', 'Isokan', 'Osun', '', '', '', '', 'images/student_import_pics/SSS235.jpg', '', 'Ganiyu', '', '16 Elder Adeyem', '', 'simidschools421agmail.com', '08131006122', '08131006122', '', '', 'Mr Nureni', '8131006122', 'business man', 'Mrs Omotayo', '8166671320', 'business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:40:55', '0000-00-00 00:00:00'),
(141, 'SS0349', '', '0000-00-00', 'Chineye', 'Precious', 'Ofili', '2014-03-25', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '4 Kunlebanji', '', 'Aniocha', 'Delta', '', '', '', '', 'images/student_import_pics/SSS236.jpg', '', 'Ofili', '', '4 Kunlebanji', '', 'simidschools421agmail.com', '08181510965', '08181510965', '', '', 'mr Victor', '', 'business man', 'Mrs Blessing', '8181510965', 'business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(143, 'SS0362', '', '0000-00-00', 'Mojirayor', 'Glory', 'Olorufemi', '2014-04-05', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', 'Nigeria', '', '', '17 Illufumi', '', 'Oshodi Isolo', 'Ekiti', '', '', '', '', 'images/student_import_pics/SSS238.jpg', '', 'Olorufemi', '', '17 Illufumi', '', 'simidschools421agmail.com', '08035010679', '08035010679', '', '', 'Mr Femi', '8035010679', 'business man', 'Mrs Christiana', '8132991384', 'business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(145, 'SS0359', '', '0000-00-00', 'Dorcas', 'Amarachi', 'Nwoke', '2014-07-30', '', 'YEAR', 3, 'Tulip ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '3 Tunji ladipo ', '', 'Ohafia', 'Abia', '', '', '', '', 'images/student_import_pics/SSS240.jpg', '', 'Nwoke', '', '1 Tunji ladipo', '', 'simidschools421agmail.com', '08036244088', '08036244088', '', '', 'Mr Awucha ', '7039846113', 'business man', 'Mrs Rose', '8036244088', 'Civil servant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(146, 'SS0357', '', '0000-00-00', 'Temilade', '', 'Ayorinde', '2015-09-08', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '3', '', '2022/2023', '', 0, 'female', '', '', 'Nigeria', '', '', '30 Jubril olabi', '', 'Oshodi Isolo', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS241.jpg', '', 'Ayorinde', '', '30 Jubril olabi', '', 'simidschools421agmail.com', '08032845651', '08032845651', '', '', 'Mr Ayorinde', '8032845652', 'business man', 'Mrs Ayorinde', '', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 13:29:31', '0000-00-00 00:00:00'),
(147, 'SS0347', '', '0000-00-00', 'Victor', '', 'Edeonu', '2013-11-24', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '4', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '5 Akogu street', '', 'Oshodi Isolo', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS242.jpg', '', 'Edeonu', '', '5 Akogu street', '', 'simidschools421@gmail.com', '07030194121', '07030194121', '', '', 'Mr Edeonu', '7030194121', 'business man', 'Mrs Edeonu', '8039193740', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(148, 'SS0358', '', '0000-00-00', 'Michael', '', 'Atomori', '2014-03-15', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '4', '', '2023/2024', '', 0, 'male', '', '', 'Nigeria', '', '', '19 Idimu road', '', 'Oshodi Isolo', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS243.jpg', '', 'Atomori', '', '19 Idimu road', '', 'simidschools421agmail.com', '08028805213', '08028805213', '', '', 'Mr Atomori', '8028805213', 'business man', 'Mrs Atomori', '', 'business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(149, 'SS0353', '', '0000-00-00', 'Ekenmma', 'Mary Jane', 'Kaluiche', '2015-05-19', '', 'YEAR', 3, 'Tulip', '', 'YEAR', '4', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '11 Kris', '', 'Ohafia', 'Abia', '', '', '', '', 'images/student_import_pics/SSS244.jpg', '', 'Kaluiche', '', '11Kris Olaf Oladummi street', '', 'simidschools421agmail.com', '08060467465', '08060467465', '', '', 'Mr Emmanuel', '8036473225', 'Engineer', 'Mrs Oyekachi', '8060467465', 'business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:33:59', '0000-00-00 00:00:00'),
(150, 'SS0384', '', '0000-00-00', 'Victoria ', '', 'Anyanwu', '2013-10-16', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '4, Idimu Road', '', '', 'Lagos state', '', '', '', '', 'images/student_import_pics/SSS245.jpg', '', 'Anyanwu ', '', '4, Idimu Road ', '', 'simidschools 421@gmail.com', '08030492677', '08030492677', '', '', 'Mr Anyanwu ', '', '', 'Mrs Anyanwu ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(153, 'SS0383', '', '0000-00-00', 'Emmanuel', 'Ebuka', 'Anyanwu', '2012-05-05', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '14 Ganiyu stree', '', 'Amudala local govt', 'Imo state', '', '', '', '', 'images/student_import_pics/SSS248.jpg', '', 'Anyanwu', '', '12, Ganiyu street Ejigbo ', '', 'Simidschools421@gmail.com', '07035404583', '07035404583', '', '', 'Mr Emmanuel Anyanwu', '9137286231', 'Business man', 'Mrs Joy Anyanwu', '7035404583', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(154, 'SS0399', '', '0000-00-00', 'Ayomide', 'Enoch', 'Awonuga', '2013-07-08', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '10 Wahab close ', '', 'Ijebu north local govt', 'Ogun state', '', '', '', '', 'images/student_import_pics/SSS249.jpg', '', 'Awonuga', '', '12, Ganiyu street Ejigbo ', '', 'Simidschools421@gmail.com', '08052162420', '08052162420', '', '', 'Mr  Akindele Awonuga', '8055424684', 'Civil servant', 'Mrs Oluwaseyi Awonuga', '8052162420', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(155, 'SS0386', '', '0000-00-00', 'Praise God', 'Natochukwu', 'Fidelis', '2012-07-31', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '34 Chris Oladun', '', 'Ngor nkpala', 'Imo state', '', '', '', '', 'images/student_import_pics/SSS250.jpg', '', 'Fidelis', '', '24,Chris oladunni street ', '', 'simidschools 421@gmail.com', '09036620871', '09036620871', '', '', 'Mr Fidelis', '08181998276', 'Business man', 'Mrs Elizabeth Fidelis', '08181998276', 'Chef', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(156, 'SS0387', '', '0000-00-00', 'Khalishat', 'Asake ', 'Ismail', '2014-08-05', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '6 Folawewo stre', '', 'Oluyole local govt', 'Oyo state', '', '', '', '', 'images/student_import_pics/SSS251.jpg', '', 'Ismail', '', '5,Folawewo street, Ejigbo ', '', 'Simidschools 421@gmail.com', '08051710419', '08051710419', '', '', 'Mr Adeyemi Ismail', '8180126246', 'Business man', 'Mrs Aderonke Ismail', '8151710419', 'Fashion designer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:32:29', '0000-00-00 00:00:00'),
(157, 'SS0403', '', '0000-00-00', 'Michael', 'Segun', 'Ikusika', '2013-12-16', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '12 Ekundayo str', '', '', 'Ondo state', '', '', '', '', 'images/student_import_pics/SSS252.jpg', '', 'Ikusika', '', '12, Ekundayo street ', '', 'simidschools 421@gmail.com', '08182195674', '08182195674', '', '', 'Mr Temidayo Ikusika', '8182195014', 'Engineering', 'Mrs  Ikusika', '7083126559', 'Fashion designer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(159, 'SS0396', '', '0000-00-00', 'Princess', 'Chiamaka', 'Nwachukwu', '2014-05-21', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '22, Tunde Alabi', '', '', 'Imo state', '', '', '', '', 'images/student_import_pics/SSS254.jpg', '', 'Nwachukwu', '', '22, Tunde Alabi street ', '', 'simidschools 421@gmail.com', '09067602530', '09067602530', '', '', 'Mr Princewill Nwachukwu', '7063555429', 'Computer Engineer', 'Mrs Cynthia Nwachukwu', '9067602530', 'Accountant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(160, 'SS0385', '', '0000-00-00', 'Chidubem', 'Miguel', 'Nwana', '2014-09-26', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '23 Olusesi clos', '', 'Orumba north local govt', 'Anambra state', '', '', '', '', 'images/student_import_pics/SSS255.jpg', '', 'Nwana', '', '23, Olusesi close ', '', 'Simidschools421@gmail.com', '08034626896', '08034626896', '', '', 'Mr Greg Nwana', '08034626896,', 'Banking', 'Mrs Tina Nwana', '08036499663,', 'Fintech specialist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(161, 'SS0390', '', '0000-00-00', 'Chichetaram', '', 'Nwonu ', '2013-12-25', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '17 Olusesi clos', '', 'Agwu', 'Enugu state', '', '', '', '', 'images/student_import_pics/SSS256.jpg', '', 'Nwonu ', '', '17, olusesi close', '', 'simidschools 421@gmail.com', '07036610790', '07036610790', '', '', 'Mr Chinonso Nwonu', '7036610790', 'Architect', 'Mrs Elizabeth Nwonu', '7062093704', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(162, 'SS0401', '', '0000-00-00', 'Chinaza', 'Emmanuella', 'Obibikwe', '2013-12-24', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '48 Alafia stree', '', 'Olu local govt', 'Imo state', '', '', '', '', 'images/student_import_pics/SSS257.jpg', '', 'Mrs Adaora Basil', '', '48, Alafia street Orisumbare ', '', 'adaoragenevive@gmail', '48, Alafia s', '48, Alafia s', '', '', 'Mr Chidebere Obibikwe', '9093308858', 'Civil servant', 'Mrs Ezinne Obibikwe', '8174591970', 'Tailoring', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(163, 'SS0389', '', '0000-00-00', 'Ireayomide', 'Richard', 'Oke', '2013-09-30', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '14 Idimu street', '', '', 'Ekiti state', '', '', '', '', 'images/student_import_pics/SSS258.jpg', '', 'Oke', '', '14, Idimu Road ', '', 'simidschools 421@gmail.com', '08030855406', '08030855406', '', '', 'Mr  Opeyemi Oke', '8067096583', 'Mechanical engineer', 'Mrs Temitope Oke', '8030855406', 'Accounting', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(164, 'SS0403', '', '0000-00-00', 'Paul', 'Kamsiyochukwu', 'Onyegbuna', '2013-08-13', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '3 Lateef Kamoru', '', '', 'Enugu state', '', '', '', '', 'images/student_import_pics/SSS259.jpg', '', 'Onyegbuna', '', '3, Lateef Kamoru street ', '', 'Simidschools 421@gmail.com', '08023023344', '08023023344', '', '', 'Mr Ekene Onyeka', '8023023344', 'Trading', 'Mrs Uzoamaka Onyeka', '7034378056', 'Educationist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(165, 'SS0407', '', '0000-00-00', 'Wariz', 'Opeyemi', 'Sholola', '2013-01-13', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '19 Ogunde stree', '', '', 'Ogun state', '', '', '', '', 'images/student_import_pics/SSS260.jpg', '', 'Sholola', '', '19,Ogunde street ', '', 'simidschools 421@gmail.com', '08023674576', '08023674576', '', '', 'Mr Sesan Sholola', '9092071600', 'Artisan', 'Mrs Tosin Sholola', '8168038094', 'Hair stylist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:32:29', '0000-00-00 00:00:00'),
(166, 'SS0395', '', '0000-00-00', 'Funmilayo', 'Esther', 'Tolashe', '2014-01-23', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '33, ilufunmi st', '', 'Irele local govt', 'Ondo state', '', '', '', '', 'images/student_import_pics/SSS261.jpg', '', 'Tolashe', '', '33, ilufunmi street ', '', 'simidschools 421@gmail.com', '08066424813', '08066424813', '', '', 'Mr Victor Tolashe', '8066424813', 'Business man', 'Mrs Adenike Tolashe', '9161393739', 'Fashion designer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:32:29', '0000-00-00 00:00:00'),
(167, 'SS0397', '', '0000-00-00', 'Noble', 'Nnaemeka', 'Anyasodor', '2014-09-28', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '36 Apana street', '', 'Owerri west local govt', 'Imo state', '', '', '', '', 'images/student_import_pics/SSS262.jpg', '', 'Anyasodor', '', '36,Apana street ', '', 'simidschools 421@gmail.com', '08066417440', '08066417440', '', '', 'Mr Francis Anyasodor', '8034939530', 'Business man', 'Mrs Chinyere Esther Anyasodor', '8066417440', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(168, 'SS0373', '', '0000-00-00', 'Divine', '', 'Patrick', '2015-02-05', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '57Caroline Odu ', '', '', 'Anambra state', '', '', '', '', 'images/student_import_pics/SSS263.jpg', '', 'Patrick', '', '57, Caroline Odu street ', '', 'Simidschools421@gmail.com', '09031378779', '09031378779', '', '', 'Mr Patrick', '', 'Engineering', 'Mrs Patrick', '09031378779', 'Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(169, 'SS0398', '', '0000-00-00', 'Olabukoye', '', 'Olayode', '2014-05-09', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '27 Ilufunmi str', '', '', 'Ogun state', '', '', '', '', 'images/student_import_pics/SSS264.jpg', '', 'Olayode', '', '27, ilufunmi street ', '', 'simidschools 421@gmail.com', '08033627442', '08033627442', '', '', 'Mr Olayode', ' ', 'Administrator', 'Mrs Olayode', '', 'Journalist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(170, 'SS0404', '', '0000-00-00', 'Qudrah', '', 'Abdulazeez', '2015-03-04', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '4', '', '2022/2023', '', 0, 'Female', '', '', '', '', '', '19 Olusesi stre', '', '', '', '', '', '', '', 'images/student_import_pics/SSS265.jpg', '', 'Abdulazeez', '', '19, Olusesi street ', '', 'Simidschools 421@gmail.com', '08034221990', '08034221990', '', '', 'Mr Abdulazeez', '8034221990', 'Trading', 'Mrs Abdulazrez', '8100287940', 'Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 13:34:04', '0000-00-00 00:00:00'),
(171, 'SS0393', '', '0000-00-00', 'Abdulsalam', '', 'Oladunmoye', '2013-12-20', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '4 Fayemi street', '', '', ' Osun state', '', '', '', '', 'images/student_import_pics/SSS266.jpg', '', 'Oladunmoye', '', '4,fayemi street ', '', 'simidschools 421@gmail.com', '08068310040', '08068310040', '', '', 'Mr Oladunmoye', '8068310040', 'Business man', 'Mrs Azizat Oladunmoye', '8068310040', ' Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(172, 'SS0378', '', '0000-00-00', 'Jesugbotemi', 'Samuel', 'Okusanya', '2013-12-03', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '3 Omon Osaigbov', '', '', 'Ogun state', '', '', '', '', 'images/student_import_pics/SSS267.jpg', '', 'Okusanya', '', '13,Omon Osaigbovo street ', '', 'Simidschools421@gmail.com', '08035716990', '08035716990', '', '', 'Mr  Tola Okusanya', '7034596273', 'Engineering', 'Mrs Olamide Okusanya', '8035716990', 'Educationist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(173, 'SS0388', '', '0000-00-00', 'Isaac', '', 'Adeosun', '2014-06-20', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '20 Yusuf street', '', '', 'Ogun state', '', '', '', '', 'images/student_import_pics/SSS268.jpg', '', 'Adeosun', '', '20,Yusuf street ', '', 'simidschools 421@gmail.com', '07043817485', '07043817485', '', '', 'Mr Adeosun', '7043817485', 'Business man', 'Mrs Adeosun', '8179369046', 'Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(174, 'SS0382', '', '0000-00-00', 'Muslimat', '', 'Agbaje', '2014-06-04', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '7 Adeola Almoru', '', '', 'Osun state', '', '', '', '', 'images/student_import_pics/SSS269.jpg', '', 'Agbaje', '', '7, Adeola Almoruf street ', '', 'simidschools 421@gmail.com', '08027443238', '08027443238', '', '', 'Mr Agbaje', '7027443238', 'Business man', 'Mrs Agbaje', '8080473224', 'Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:32:29', '0000-00-00 00:00:00');
INSERT INTO `registered_students` (`id`, `student_admission_number`, `password`, `student_admission_date`, `student_firstname`, `student_middlename`, `student_lastname`, `student_dob`, `height`, `class`, `level`, `class_number`, `department`, `current_class`, `current_level`, `current_department`, `current_year`, `graduated`, `avg_sc`, `student_gender`, `student_bloodgroup`, `student_birthplace`, `student_nationality`, `student_mothertongue`, `student_religion`, `student_address1`, `student_address2`, `student_lga`, `student_state`, `student_country`, `student_phone`, `student_mobile`, `student_email`, `student_photo`, `guardian_phone`, `guardian_name`, `guardian_city`, `guardian_address`, `guardian_state`, `guardian_email`, `guardian_country`, `guardian_mobile`, `guardian_relation`, `guardian_occupation`, `father_name`, `father_mobile`, `fathers_occupation`, `mother_name`, `mother_mobile`, `mother_occupation`, `hostel_room`, `hostel_registration_date`, `hostel_vacating_date`, `inoculation_taken`, `inoculation_not_taken`, `infectious_disease`, `infections_disease_have`, `suffer`, `suffer_from`, `last_form_token`, `created_at`, `updated_at`) VALUES
(175, 'SS0391', '', '0000-00-00', 'David', '', 'Owoeye', '2013-08-11', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '35 Dauda Ilo st', '', '', 'Lagos State', '', '', '', '', 'images/student_import_pics/SSS270.jpg', '', 'Owoeye', '', '35, Dauda Ilo street ', '', 'Simidschools 421@gmail.com', '08061350567', '08061350567', '', '', 'Mr Owoeye', '8061350567', 'Business man', 'Mrs Esther Owoeye', '7056938655', 'Accounting', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(176, 'SS0392', '', '0000-00-00', 'Michael', '', 'Osadolor', '2013-02-19', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '4', '', '2022/2023', '', 0, 'Male', '', '', '', '', '', '32 Kris Oladunn', '', '', 'Edo state', '', '', '', '', 'images/student_import_pics/SSS271.jpg', '', 'Osadolor', '', '32,Kris Oladunni street ', '', 'simidschools 421@gmail.com', '08020338405', '08020338405', '', '', 'Mr Osadolor', '8020338405', 'Business man', 'Mrs Osadolor', '', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 13:42:43', '0000-00-00 00:00:00'),
(177, 'SS0435', '', '0000-00-00', 'Precious', 'Agongon', 'Idonije', '2013-04-28', '', 'YEAR', 5, 'hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'female', '', '', 'Nigeria', '', 'Christianity', '18, Chris Oladu', '', 'Owan East ', 'Edo State ', '', '', '', '', 'images/student_import_pics/SSS272.jpg', '', 'Idonije', '', '18, Chris Oladunni street, Ejigbo', '', 'simidschools421@gmail.com', '07034782875', '07034782875', '', '', 'Odonije Vincent ', '07034782875', 'Military  Officer', 'Idonije Vincent Dora', '07034782875', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(178, 'SS0410', '', '0000-00-00', 'Ibukunoluwa ', 'Fikayomi', 'lawal', '2013-11-20', '', 'YEAR', 5, 'Hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'female', '', '', 'Nigeria', '', 'Christianity', 'No 8, Elder Ade', '', 'Akinyele Local govt. ', 'Oyo  State', '', '', '', '', 'images/student_import_pics/SSS273.jpg', '', ' Mr Lawal', '', 'No 8, Elder Adeyemi street', '', 'simidschools421@gmail.com', '08060089180', '08060089180', '', '', 'Lawal  Abel', '08060089180', 'Clergy', 'Lawal Olatayo ', '08130769654', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(180, 'SS0409', '', '0000-00-00', 'Masturah', 'Oluwasemilore', 'Salaudeen', '2041-06-08', '', 'YEAR', 5, 'Hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'female', '', '', 'Nigeria', '', 'Muslim', '25a, Ilufunmi S', '', 'Kajola  local govt. ', 'Oyo  State', '', '', '', '', 'images/student_import_pics/SSS275.jpg', '', 'Balogun Rashidat', '', '2,Salaudeen Street,Ejigbo', '', 'Balogunrashidat22@gmail.com', '08032087064', '08032087064', '', '', 'Mr Salaudeen', '08138458525', 'Accountant ', 'Mrs Salaudeen Rahmat', '7042877759', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(181, 'SS0414', '', '0000-00-00', 'Nmesoma', 'Cynthia', 'Eze', '2012-09-26', '', 'YEAR', 5, 'Hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'female', '', '', 'Nigeria', '', 'Christianity', '15, Wahab Close', '', 'Igbo-eze North', 'Enugu  State', '', '', '', '', 'images/student_import_pics/SSS276.jpg', '', 'Eze', '', '16,Wahab Close', '', 'simidschools421@gmail.com', '07032498029', '07032498029', '', '', 'Eze Martins', '07032498029', 'Trader', 'Eze  Ukamaka', '7032498029', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(182, 'SS0416', '', '0000-00-00', 'Emmanuel ', 'Oluwaseyi', 'Adewale', '2012-06-18', '', 'YEAR', 5, 'Hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'male ', '', '', 'Nigeria', '', 'Christianity', '10, Elder  Adey', '', '', 'Ondo  State', '', '', '', '', 'images/student_import_pics/SSS277.jpg', '', 'Adewale', '', '10, Elder  Adeyemi Street, Ejigbo', '', 'simidschools421@gmail.com', '07033811387', '07033811387', '', '', 'Akinseye Adewale', '07033811387', 'Civil servant', 'Adewale Esther', '08034355081', 'Businesses Tycoon', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(183, 'SS0411', '', '0000-00-00', 'Gbemi', 'Akeem', 'Agbede', '2010-08-10', '', 'YEAR', 5, 'Hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'male ', '', '', 'Nigeria', '', 'Muslim', '10, Dorcas Saka', '', 'Oshodi Isolo', 'Lagos State', '', '', '', '', 'images/student_import_pics/SSS278.jpg', '', 'Agbede', '', '10, Dorcas Saka Street', '', 'simidschools421@gmail.com', '08130854335', '08130854335', '', '', 'Agbede Kazeem', '08130854335', 'Business manager', 'Agbede  Mujidat ', '07042719836', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(185, 'SS0419', '', '0000-00-00', 'Mauton', 'Praise ', 'Asokere', '2013-05-10', '', 'YEAR', 5, 'Hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'male ', '', '', 'Nigeria', '', 'Christianity', '20, Mike Street', '', 'Oshodi Isolo', 'Lagos State ', '', '', '', '', 'images/student_import_pics/SSS280.jpg', '', 'Asokere', '', '20, Mike Street Silva Estate', '', 'simidschools421@gmail.com', '08026947549', '08026947549', '', '', 'Asokere Sunday ', '08026947549', 'Pastor', 'Asokere Joke', '08075657992', 'Civil servant ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(186, 'SS0436', '', '0000-00-00', 'Isaiah ', 'Ademola', 'Daini', '2011-07-27', '', 'YEAR', 5, 'Hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'male ', '', '', 'Nigeria', '', '', '12, Idimu Road,', '', 'Isoyin local govt. ', 'Ogun State', '', '', '', '', 'images/student_import_pics/SSS281.jpg', '', 'Daini', '', '12, Idimu Road, Ejigbo', '', 'simidschools421@gmail.com', '09032403741', '09032403741', '', '', 'Daini  Olarenwaju', '09032403741', 'Civil servant', 'Daini Aanuoluwapo', '07066172742', 'Nurse', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(187, 'SS0417', '', '0000-00-00', 'Jeremiah ', 'Emmanuel ', 'Dickson', '2012-11-25', '', 'YEAR', 5, 'Hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'male ', '', '', 'Nigeria', '', 'Christianity', '37, Taiwo Stree', '', 'Mkpatenin', 'Akwa Ibom State ', '', '', '', '', 'images/student_import_pics/SSS282.jpg', '', 'Dickson', '', '37, Taiwo Street, Ejigbo', '', 'simidschools421@gmail.com', '07037508029', '07037508029', '', '', 'Dickson Emmanuel ', '07037508029', 'Engineer ', 'Dickson ', '08035511515', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(188, 'SS0437', '', '0000-00-00', 'Somtochukwu', 'Samuel', 'Igbokwe', '2012-02-25', '', 'YEAR', 5, 'Hyacinth', '', 'YEAR', '5', '', '2022/2023', '', 0, 'male ', '', '', 'Nigeria', '', 'Christianity', '3, Mayowa  Clos', '', '', 'Anambra State', '', '', '', '', 'images/student_import_pics/SSS283.jpg', '', 'Igbokwe', '', '3, Mayowa  Close Ejigbo', '', 'simidschools421@gmail.com', '08039304788', '08039304788', '', '', 'Igbokwe Sunday ', '08039304788', 'Business man', 'Igbokwe Theresa ', '08039324788', 'Trader ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 14:55:16', '0000-00-00 00:00:00'),
(189, 'SS0417', '', '0000-00-00', 'Abdulgafar', 'Adedapo', 'Ismail', '2013-08-18', '', 'YEAR', 5, 'Hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'male ', '', '', 'Nigeria', '', 'Muslim', '1, Olubisi Clos', '', 'Oluyole', 'Oyo', '', '', '', '', 'images/student_import_pics/SSS284.jpg', '', 'Ismail', '', '1, Olubisi Close Ejigbo', '', 'simidschools421@gmail.com', '08055111907', '08055111907', '', '', 'Ismail Monsuru Adebayo', '08055111907', 'Freight ', 'Ismail Idiyat Adejumoke', '08055766755', 'Banker', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(190, 'SS0408', '', '0000-00-00', 'Moses ', 'Ebubechi', 'Kalu-Iche', '2013-05-15', '', 'YEAR', 5, 'Hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'male ', '', '', 'Nigeria', '', 'Christianity', '11, Krist  Olad', '', 'Ohafia', 'Abia', '', '', '', '', 'images/student_import_pics/SSS285.jpg', '', 'Kalu-Iche', '', '11, Krist  Oladunni Street', '', 'simidschools421@gmail.com', '08036473225', '08036473225', '', '', 'Mr Emmanuel Kalu-iche', '08036473225', 'Engineer ', 'Mrs Onyekachi Kalu-iche', '08060467465', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(191, 'SS0413', '', '0000-00-00', 'Chidalu', 'Destiny ', 'Okeke', '2011-10-24', '', 'YEAR', 5, 'Hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'male ', '', '', 'Nigeria', '', 'Christianity', '16, Aina Close,', '', 'Anaocha', 'Anambra ', '', '', '', '', 'images/student_import_pics/SSS286.jpg', '', 'Okeke', '', '16, Aina Close, Ejigbo', '', 'simidschools421@gmail.com', '08033349306', '08033349306', '', '', 'Mr Okeke', '08036408675', 'Artisan', 'Mrs Okeke Jennifer', '08033349306', 'Accountant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(192, 'SS0415', '', '0000-00-00', 'Ada', 'Mercy ', 'Eshua', '2013-06-29', '', 'YEAR', 5, 'Hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'female', '', '', 'Nigeria', '', 'Christianity', '1, Wahab Close,', '', '', 'Cross River', '', '', '', '', 'images/student_import_pics/SSS287.jpg', '', 'Eshua', '', '1, Wahab Close, Ejigbo', '', 'simidschools421@gmail.com', '08068563374', '08068563374', '', '', 'Mr Patrick Eshua', '08068563374', 'Security man', 'Mrs Abosede Eshua', '08068563374', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(193, 'SS0433', '', '0000-00-00', 'Olaoluwa', '', 'Olatunji ', '2013-06-13', '', 'YEAR', 5, 'Hyacinth', '', 'JSS', '1', '', '2023/2024', '', 0, 'male', '', '', 'Nigeria', '', 'Christianity', '19, Moon Osaiga', '', '', '', '', '', '', '', 'images/student_import_pics/SSS288.jpg', '', 'Olatunji ', '', '19, Moon Osaigava', '', 'simidschools421@gmail.com', '08066676271', '08066676271', '', '', 'Mr Stephen Olatunji', '08066676271', 'Pastor', 'Mrs Olatunji Oluwakemi', '08066676271', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(195, 'SS0420', '', '0000-00-00', 'Fortune', 'Chiemeremunma', 'Augustine ', '2013-11-22', '', 'YEAR', 5, 'Tulip', '', 'JSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '31,Ilufunmi Str', '', 'Ngor Okpala', 'Imo', '', '', '', '', 'images/student_import_pics/SSS290.jpg', '', 'Augustine ', '', '31,Ilufunmi Street, Ejigbo', '', 'simidschools421@gmail.com', '08038520202', '08038520202', '', '', 'Chinecherem', '08038520202', 'Business man', 'Blessing', '08038520202', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(196, 'SS0430', '', '0000-00-00', 'Dora', 'Ntol', 'Emmanuel', '2013-08-27', '', 'YEAR', 5, 'Tulip', '', 'YEAR', '5', '', '2022/2023', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '5,Aina Street,O', '', 'Ogboja', 'Cross-River', '', '', '', 'dorabloss4757@yahoo.com', 'images/student_import_pics/SSS291.jpg', '', 'Emmanuel', '', '5,Aina Street,O', '', 'simidschools421@gmail.com', '08164109457', '08164109457', '', '', 'Emmanuel Lawrence', '08164109457', 'Hospitality Consultant', 'Emmanuel Faith', '08164109457', 'Accountant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 14:33:09', '0000-00-00 00:00:00'),
(198, 'SS0427', '', '0000-00-00', 'Kosisochukwu', 'Treasure', 'Alamezie', '2013-03-29', '', 'YEAR', 5, 'Tulip', '', 'JSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '41,Anuoluwapo S', '', 'Ohaji Egbema', 'Imo', '', '', '', '', 'images/student_import_pics/SSS293.jpg', '', 'Alamezie', '', '4,Anuoluwapo Street', '', 'simidschools421@gmail.com', '07032557105', '07032557105', '', '', 'Monday Alamezie', '07069228105', 'Hospitality Consultant', 'Alamezie Clementina Azenu', '07032557105', 'Accountant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(199, 'SS0432', '', '0000-00-00', 'Benshema', 'Emmanuella', 'Tera', '2013-08-10', '', 'YEAR', 5, 'Tulip', '', 'JSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '17,Olusesi clos', '', 'Gboko', 'Benue', '', '', '', 'teraagule77@gmail.com', 'images/student_import_pics/SSS294.jpg', '', 'Tera', '', '17,Olusesi close', '', 'simidschools421@gmail.com', '08034495947', '08034495947', '', '', 'Tera', '08034495947', 'Shipping', 'Tera Ann', '09122629707', 'House wife', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(201, 'SS0424', '', '0000-00-00', 'Mercy', 'Ogheneteghiri', 'Adebimpe', '2013-08-25', '', 'YEAR', 5, 'Tulip', '', 'JSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '27,Folawewo Str', '', 'Owo', 'Ondo', '', '', '', 'angelbekky5@gmail.com', 'images/student_import_pics/SSS296.jpg', '', 'Adebimpe', '', '27,Folawewo Street, Ejigbo', '', 'simidschools421@gmail.com', '08102033101', '08102033101', '', '', 'Adebimpe Temitope', '08102033101', 'Lecturer', 'Adebimpe Evelyn', '08102033101', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(203, 'SS0429', '', '0000-00-00', 'Zainab', 'Damilola', 'Mogaji', '2012-09-04', '', 'YEAR', 5, 'Tulip', '', 'JSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Muslim', '20,Sunmonu Anim', '', 'Ifelodun', 'Kwara', '', '', '', '', 'images/student_import_pics/SSS298.jpg', '', 'Mogaji', '', '20,Sunmonu Animasahun Street', '', 'simidschools421@gmail.com', '08183261879', '08183261879', '', '', 'Saheed Mogaji', '08183261879', '', 'Romoke Mogaji', '07034408049', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(205, 'SSS300', '', '0000-00-00', 'Fulfilment', 'Samuel', 'Simeon', '2014-01-03', '', 'YEAR', 5, 'Tulip', '', 'JSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '12,Onojade Stre', '', '', 'Ondo', '', '', '', '', 'images/student_import_pics/SSS300.jpg', '', 'Simeon', '', '12,Onojade Street', '', 'simidschools421@gmail.com', '08034789782', '08034789782', '', '', 'Oluwasegun Simeon', '08034789782', 'Site Engineer', 'Omoluwa Simeon', '08034789782', 'Musician', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:36', '0000-00-00 00:00:00'),
(206, 'SS0431', '', '0000-00-00', 'Kamsiyochukwu', 'Melvin', 'Eze', '2013-04-13', '', 'YEAR', 5, 'Tulip', '', 'JSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '20,Holy Cross S', '', 'Idemili South', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS301.jpg', '', 'Eze', '', '20,Holy Cross Street', '', 'simidschools421@gmail.com', '08037908605', '08037908605', '', '', '', '', '', 'Uchenna Eze', '08037908605', 'Civil Servant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(207, 'SS0426', '', '0000-00-00', 'Chiagoziem', 'Prosper', 'Emmanuel-Elijah', '2012-12-20', '', 'YEAR', 5, 'Tulip', '', 'JSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '2,Kolawole Stre', '', 'Aguata', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS302.jpg', '', 'Emmanuel-Elijah', '', '2,Kolawole Street', '', 'simidschools421@gmail.com', '07030260857', '07030260857', '', '', 'Elijah Emmanuel', '08063858737', 'Business man', 'Elijah Roseline', '07030260857', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(208, 'SS0422', '', '0000-00-00', 'Chiemerie', 'Godwin', 'Nwankwo', '2013-08-29', '', 'YEAR', 5, 'Tulip', '', 'JSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '17, Caroline St', '', 'Ezeagu', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS303.jpg', '', 'Nwankwo', '', '17, Caroline Street', '', 'simidschools421@gmail.com', '0704545257', '0704545257', '', '', 'Joseph Nwankwo', '08032379928', 'Trading', 'Ngozi Nwankwo', '07045455257', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(209, 'SS0434', '', '0000-00-00', 'Ibrahim', 'Doyinsolami', 'Sulaimon', '2011-11-07', '', 'YEAR', 5, 'Tulip', '', 'JSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Muslim', '13,Kola Olukotu', '', 'Oshodi/Isolo', 'Oyo', '', '', '', '', 'images/student_import_pics/SSS304.jpg', '', 'Sulaimon', '', '13,Kola Olukotun, Ejigbo', '', 'simidschools421@gmail.com', '08185170511', '08185170511', '', '', ' Mr Sulaimon', '08055678850', 'Private', 'Abisola Sulaimon', '08075278805', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:44:35', '0000-00-00 00:00:00'),
(210, 'SS0421', '', '0000-00-00', 'Miracle', 'Chukwuebuka', 'Ugboma', '2013-03-30', '', 'YEAR', 5, 'Tulip', '', 'YEAR', '5', '', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '13,Olusesi Clos', '', 'Oshimili North', 'Delta', '', '', '', '', 'images/student_import_pics/SSS305.jpg', '', 'Ugboma', '', '13,Olusesi Close', '', 'simidschools421@gmail.com', '08130020631', '08130020631', '', '', 'Sunday Ugboma', '08130020631', 'Civil Servant', 'Patricia Ugboma', '07015045630', 'Civil Servant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 15:29:02', '0000-00-00 00:00:00'),
(211, 'SS0423', '', '0000-00-00', 'Michael', 'Ighodalo', 'Usigbe', '2012-05-10', '', 'YEAR', 5, 'Tulip', '', 'YEAR', '5', '', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '20,Kola Olukotu', '', 'Esan North-East', 'Edo', '', '', '', '', 'images/student_import_pics/SSS306.jpg', '', 'Usigbe', '', '20,Kola Olukotun Street', '', 'simidschools421@gmail.com', '07067409543', '07067409543', '', '', 'George Usigbe', '07067409543', 'Operator', 'Ngozi Usigbe', '07067409543', 'Sole Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 15:54:58', '0000-00-00 00:00:00'),
(212, 'SS0371', '', '0000-00-00', 'Elizabeth', '', 'Akindele ', '2024-05-03', '', 'YEAR', 4, 'Tulip ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '3 Ilufunmi stre', '', '', 'Lagos State', '', '08063620605', '', '', 'images/student_import_pics/SSS307.jpg', '', 'Akindele ', '', '3 Ilufunmi street, Ejigbo ', '', 'simidschools421@gmail.com', '08063620605', '08063620605', 'Parent ', '', 'Mr Akindele', '8063620605', 'Business man', 'Mrs Akindele', '8100287940', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(213, 'SS0372', '', '0000-00-00', 'Kingsley', '', 'Anyaorah', '2010-10-05', '', 'YEAR', 4, 'Tulip ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '16 Wahab close ', '', '', 'Lagos state', '', '08033349306', '', '', 'images/student_import_pics/SSS308.jpg', '', 'Mrs Okeke', '', '16 Wahab close', '', 'simidschools421@gmail.com', '08033349306', '08033349306', '', '', 'Mr Anyaorah', '8033349306', 'Business man', 'Mrs Anyaorah', '', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:32:29', '0000-00-00 00:00:00'),
(214, 'SS0405', '', '0000-00-00', 'Omude', 'Darasimi', 'Asuije', '2014-05-09', '', 'YEAR', 4, 'Tulip ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '4 Ogunde street', '', '', 'Delta state', '', '07032022938', '', '', 'images/student_import_pics/SSS309.jpg', '', 'Asuije', '', '4 Ogunde street ', '', 'simidschools421@gmail.com', '07032022938', '07032022938', '', '', 'Mr Fidelis Asuije', '8066517224', 'Farming', 'Mrs Toyin Asuije', '7032022938', 'Tailoring', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(216, 'SS0375', '', '2014-05-13', 'Moruf', '', 'Balogun', '0000-00-00', '', 'YEAR', 4, 'Tulip ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Muslim ', '11 Jubril Olabi', '', '', 'Lagos State', '', '', '', '', 'images/student_import_pics/SSS311.jpg', '', 'Balogun', '', '11 Jubril Olabisi street ', '', 'simidschools421@gmail.com', '08189037995', '08189037995', '', '', 'Mr Balogun', '8189037995', 'Business man', 'Mrs Balogun', '', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(217, 'SS0370', '', '2013-08-05', 'Chidozie', 'Treasure', 'Erege', '0000-00-00', '', 'YEAR', 4, 'Tulip ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '9 Chris Oladunn', '', 'Abohmbaise local govt', 'Imo state', '', '', '', '', 'images/student_import_pics/SSS312.jpg', '', 'Erege', '', '9 Chris Oladunni street ', '', 'simidschools421@gmail.com', '07085554631', '07085554631', '', '', 'Mr Patrick Erege', '0817208140, ', 'Civil servant', 'Mrs Tina Erege', '7085554631', 'Clergy', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(218, 'SS0379', '', '0000-00-00', 'Hanan', 'Morireoluwa', 'Feyisetan', '2014-01-29', '', 'YEAR', 4, 'Tulip ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '2 Imodo compoun', '', 'Abeokuta south', 'Ogun state', '', '', '', '', 'images/student_import_pics/SSS313.jpg', '', 'Feyisetan', '', '21 Imodo compound ', '', 'simidschools421@gmail.com', '08035748001', '08035748001', '', '', 'Mr Olawale Feyisetan', '8033130182', 'Publisher', 'Mrs Mayokun Feyisetan', '8035748001', 'Baker', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(219, 'SS0368', '', '0000-00-00', 'Chimdalu', 'Prosperity', 'Francis', '2014-01-29', '', 'YEAR', 4, 'Tulip ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '11 Apena street', '', '', 'Ebonyi state', '', '', '', '', 'images/student_import_pics/SSS314.jpg', '', 'Francis', '', '11 Apena street ', '', 'simidschools421@gmail.com', '08063452567', '08063452567', '', '', 'Mr Anoke Francis', '', 'Business man', 'Mrs Esther Francis', '08063452567', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(220, 'SS0366', '', '0000-00-00', 'Rejoice', 'Onoriode', 'Ighawho', '2013-04-25', '', 'YEAR', 4, 'Tulip', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '21 Ilufunmi str', '', 'Isoko north local govt', 'Delta state', '', '', '', '', 'images/student_import_pics/SSS315.jpg', '', 'Ighawho', '', '21, Ilufunmi street ', '', 'simidschools 421@gmail.com', '08079769347', '08079769347', '', '', 'Mr Sunday Ighawho', '8138457091', 'Teaching', 'Mrs Mercy Ighawho', '8079769347', 'Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(221, 'SS0369', '', '0000-00-00', 'Elizabeth', '', 'Kayode', '2014-06-20', '', 'YEAR', 4, 'Tulip', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '6 Jubril Olabis', '', '', 'Lagos State', '', '', '', '', 'images/student_import_pics/SSS316.jpg', '', 'Kayode', '', '6,jubril Olabisi ', '', 'simidschools 421@gmail.com', '08036881191', '08036881191', '', '', 'Mr Kayode', '8036881191', 'Business man', 'Mrs Kayode', '8168165036', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(222, 'SS0376', '', '0000-00-00', 'Oluchi', 'Emmanuella', 'Nwaozuzu', '2014-04-15', '', 'YEAR', 4, 'Tulip ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '3 Aina close Ej', '', '', 'Imo state', '', '', '', '', 'images/student_import_pics/SSS317.jpg', '', 'Nwaozuzu', '', '3 Aina close ', '', 'simidschools421@gmail.com', '08067011074', '08067011074', '', '', 'Mr Soko Nwaozuzu', '8027309072', 'Trading', 'Mrs Jacinta Nwaozuzu', '8067011074', 'Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(223, 'SS0400', '', '0000-00-00', 'Modupeoluwa', 'Gloria ', 'Oludare', '2012-07-30', '', 'YEAR', 4, 'Tulip ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '9 Ayinde Sholol', '', 'Yagba east local govt', 'Kogi state', '', '', '', '', 'images/student_import_pics/SSS318.jpg', '', 'Oludare', '', '9 Ayinde street ', '', 'simidschools421@gmail.com', '08130809497', '08130809497', '', '', 'Mr John Oludare', '', '', 'Mrs Funmilola Oludare', '8130809497', 'Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(224, 'SS0367', '', '0000-00-00', 'Peter', '', 'Omolara', '2013-11-09', '', 'YEAR', 4, 'Tulip', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '77 Idimu road E', '', 'Abeokuta south', 'Ogun state', '', '', '', '', 'images/student_import_pics/SSS319.jpg', '', 'Omolara', '', '77, Idimu Road ', '', 'simidschools 421@gmail.com', '08028514105', '08028514105', '', '', 'Mr Omolara Aliu', '', 'Undertaker', 'Mrs Kikelomo Omolara', '', 'Hait stylist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(225, 'SS0381', '', '0000-00-00', 'Chinecherem', 'Francis', 'Onyeagu', '2014-08-04', '', 'YEAR', 4, 'Tulip', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '42 Edagbeja str', '', '', 'Imo state', '', '', '', '', 'images/student_import_pics/SSS320.jpg', '', 'Onyeagu', '', '42,Edagbeja street', '', 'simidschools 421@gmail.com', '07042402194', '07042402194', '', '', 'Mr Anthony Onyeagu', '7042402194', 'Civil servant', 'Mrs Onyiyechi Onyeagu', '', 'Tailoring', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(227, 'SS0377', '', '0000-00-00', 'Henry', 'Chinaecherem', 'Patrick', '2013-10-23', '', 'YEAR', 4, 'Tulip ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '9 Lateef Kamoru', '', 'Iyiala local govt', 'Anambra state', '', '', '', '', 'images/student_import_pics/SSS322.jpg', '', 'Patrick', '', '9, Lateef Kamoru street ', '', 'Simidschools421@gmail.com', '07030579682', '07030579682', '', '', 'Mr  Chijioke Obidiegwu', '8066606480', 'Trading', 'Mrs Obidiegwu', '7030579682', 'Teaching', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:48:21', '0000-00-00 00:00:00'),
(229, 'SS0465', 'SSS@24', '0000-00-00', 'Michael', 'Darasimi', 'Akinyeni', '0000-00-00', '', 'JSS', 1, 'Rose', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male\r\n', '', '', 'Nigeria', '', 'Christianity', '23 Olusesi Clos', '', 'Ile ife', 'Osun state', '', '', '', '', 'images/student_import_pics/SSS324.jpg', '', 'Akinyeni', '', '23 Olusesi close', '', 'simidschools421@gmail.com', '08033539656', '08033539656', '', '', 'Mr David Akinyeni', '8033539656', '', 'Mrs Abigael Akinyeni', '8036562465', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(230, 'SS0455', 'SSS@25', '0000-00-00', 'Fareedah', 'Oyinkosola', 'Ojubanire', '2012-03-31', '', 'JSS', 1, 'Rose', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', 'Lagos', 'Nigeria', '', 'Christianity', '34, Taiwo stree', '', 'Oshodi Isolo', 'Lagos state', '', '', '', '', 'images/student_import_pics/SSS325.jpg', '', 'Ojubanire', '', '34, Taiwo street', '', 'simidschool421@gmail.com', '08060111036', '08060111036', 'Parent', '', ' Mr Abdul Akeem Ojubanire', '08060111036', 'Civic servant', 'Mrs Fatimah Ojubanire', '08039403867', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(231, 'SS0446', 'SSS@26', '0000-00-00', 'Purity', 'Efua', 'Idonije', '2011-10-29', '', 'JSS', 1, 'Zinnia', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', 'Lagos', 'Nigeria', '', 'Christianity', '18, Krist Oladu', '', 'Owan East', 'Edo', '', '', '', '', 'images/student_import_pics/SSS326.jpg', '', 'Idonije', '', '18, Krist Oladu', '', 'simidschool421@gmail.com', '07034782875', '07034782875', '', '', 'Mr Idonije Vincent', '09056621165', 'Naval Officer', 'Mrs Dora Idonije Vincent', '07034782875', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-02 09:50:14', '0000-00-00 00:00:00'),
(232, 'SS0461', 'SSS@27', '0000-00-00', 'Samuel', 'Adeshina', 'Jaye Adeyemi', '0000-00-00', '', 'JSS', 1, 'Rose ', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male\r\n', '', '', 'Nigeria', '', 'Christianity', '17 Idimu road', '', 'Ikene', 'Ogun state', '', '', '', '', 'images/student_import_pics/SSS327.jpg', '', 'Jaye Adeyemi', '', 'Ejigbo ', '', 'simidschools421@gmail.com', '07039705003', '07039705003', '', '', 'Mr Jayeola Adeyemi', '8035788022', 'Printing/Textile', 'Mrs Veronica Adeyemi', '7039705003', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(233, 'SS0454', 'SSS@28', '0000-00-00', 'Adeola', 'Ojumirayo', 'Lawal', '2010-04-26', '', 'JSS', 1, 'Zinnia ', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', 'Omosangbofo', '', 'Ijebu north', 'Kwara State', '', '', '', '', 'images/student_import_pics/SSS328.jpg', '', 'Lawal', '', '31, Awoyemi street, Lagos state', '', 'simidschool421@gmail.com', '08161254000', '08161254000', '', '', 'Mr Lawal Adeshina', '07086142927', 'Business man', 'Mrs Olamide Lawal', '08051020620', 'Hair dresser', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-02 09:50:14', '0000-00-00 00:00:00'),
(234, 'SS0456', 'SSS@29', '0000-00-00', 'Favour', 'Oluwadarasimi', 'Adesanya', '2012-10-11', '', 'JSS', 1, 'Rose', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '61, Idimu Road,', '', 'Remo North', 'Ogun state', '', '', '', '', 'images/student_import_pics/SSS329.jpg', '', 'Adesanya', '', '61, Idimu Road Ejigbo Lagos', '', 'simidschool421@gmail.com', '08123736111', '08123736111', '', '', 'Mr Adesanya Solomon', '08028497945', 'Admin. start up', 'Mrs Adesanya Bukky', '08123736111', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(236, 'SS0443', 'SSS@31', '0000-00-00', 'Chinaza', 'Doris', 'Nwachukwu', '2011-10-06', '', 'JSS', 1, 'Zinnia', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '31, Awoyemi Str', '', 'Onuimo', 'Imo State', '', '', '', '', 'images/student_import_pics/SSS331.jpg', '', 'Nwachukwu', '', '31, Awoyemi Str', '', 'simidschool421@gmail.com', '08161254000', '08161254000', '', '', 'Mr Nwachukwu Ekene', '08161254000', 'Mechanical Engineer', 'Mrs Nwachukwu Ogechi', '07063122126', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:59:54', '0000-00-00 00:00:00'),
(237, 'SS0451', 'SSS@32', '0000-00-00', 'Dennis', 'Tochuckwu', 'Onuoha', '2012-02-18', '', 'JSS', 1, 'Zinnia', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male ', '', '', 'Nigeria', '', 'Christianity', '5/7 Oluwabamise', '', 'Ahiazu Mbaise', 'Imo State ', '', '', '', '', 'images/student_import_pics/SSS332.jpg', '', 'Onuoha', '', '5/7 Oluwabamise', '', 'simisschool421@gamil.com', '08034401232', '08034401232', '', '', 'Mr Chika Onuoha', '08034401232', 'Business Man', 'Mrs Franca Njoku', '08034175907', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-02 09:50:14', '0000-00-00 00:00:00'),
(238, 'SS0462', 'SSS@33', '0000-00-00', 'Happiness ', 'Joy', 'Ofili', '2011-02-23', '', 'JSS', 1, 'Zinnia ', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', 'No 4 Kunlebanji', '', 'Anoacha', 'Delta State ', '', '', '', '', 'images/student_import_pics/SSS333.jpg', '', 'Ofili', '', '04, Kunle Banji street ', '', 'simidschool421@gmail.com', '08181510965', '08181510965', '', '', 'Mr Victor', '08181510965', 'Business Man', 'Mrs Blessing', '08181510965', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:59:54', '0000-00-00 00:00:00'),
(239, 'SS0', 'SSS@34', '0000-00-00', 'Adaeze ', 'Destiny ', 'Okorocha', '2011-10-11', '', 'JSS', 1, 'Zinnia', '', 'JSS', '1', '', '2022/2023', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', 'Sule Shawande N', '', 'Ehime mbano Local government ', 'Imo State ', '', '', '', '', 'images/student_import_pics/SSS334.jpg', '', 'Okorocha', '', 'Sule Shawande N', '', 'simidschool421@gmail.com', '07033663004', '07033663004', '', '', 'Mr Chukwuemeka John', '08084706323', 'Business Man', 'Mrs Peace Okorocha ', '07033663004', 'Caterer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 12:31:12', '0000-00-00 00:00:00'),
(240, 'SS0470', 'SSS@35', '0000-00-00', 'Treasure ', 'Munachimso', 'Patrick ', '2012-06-24', '', 'JSS', 1, 'Zinnia ', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '57/59 Caroline ', '', 'Udemiri South', 'Anambra State', '', '', '', '', 'images/student_import_pics/SSS335.jpg', '', 'Patrick ', '', '57/59 Caroline ', '', 'simidschool421@gmail.com', '08033672973', '08033672973', '', '', 'Mr Chukwuemeka Owdiwe Patrick ', '08034016257', 'Business Man', 'Mrs Ijeoma Oparaji Patrick ', '09031378779', 'Business Woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(241, 'SS0473', 'SSS@36', '0000-00-00', 'Michael ', 'Chukwudalu ', 'Onyebuchi', '2010-01-14', '', 'JSS', 1, 'Zinnia ', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '3, Balogun Stre', '', 'Ifeanyi Ugwuanyi', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS336.jpg', '', 'Onyebuchi', '', '3, Balogun street', '', 'simidschool421@gmail.com', '08023530259', '08023530259', '', '', 'Mr Onyebuchi ', '08023530259', 'Engineer', 'Mrs Onyebuchi ', '07041545559', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(242, 'SS0452', 'SSS@37', '0000-00-00', 'Augustina', 'Soromtochukwu', 'Ozioko', '2011-08-26', '', 'JSS', 1, 'Rose', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '34 Apana Street', '', 'Nsukka', 'Enugu ', '', '', '', '', 'images/student_import_pics/SSS337.jpg', '', 'Ozioko', '', '34 Apana Street', '', 'simidschool421@gmail.com', '08034396923', '08034396923', '', '', 'Mr Ozioko Uchenna', '8034396923', 'Business Man', 'Mrs Ozioko Nkechi', '8032285063', 'Catering ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(243, 'SS0453', 'SSS@38', '0000-00-00', 'Augusta ', 'Nmesomachukwu', 'Ozioko ', '2011-08-26', '', 'JSS', 1, 'Zinnia ', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '34 Apana Street', '', 'Nsukka ', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS338.jpg', '', 'Ozioko ', '', '34 Apana Street', '', 'simidschool421@gmail.com', '08034396923', '08034396923', '', '', 'Mr Ozioko Uchenna ', '08034396923', 'Business Man', 'Mrs Ozioko Nkechi ', '08032285063', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-02 09:50:14', '0000-00-00 00:00:00'),
(244, 'SS0444', 'SSS@39', '0000-00-00', 'Rodiat', 'Oluwafunmilayo', 'Abdulateef', '2012-03-08', '', 'JSS', 1, 'Rose', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Muslim', '32 Idimu Road', '', 'Ilorin East', 'Kwara ', '', '', '', '', 'images/student_import_pics/SSS339.jpg', '', 'Abdulateef', '', '32,Idimu Road,Ejigbo. Lagos', '', 'simidschool421@gmail.com', '08022373924', '08022373924', '', '', 'Mr Abdulateef ', '09164303271', 'Business Man', 'Mrs Abdulateef ', '09164303271', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:26', '0000-00-00 00:00:00'),
(245, 'SS0441', 'SSS@40', '0000-00-00', 'Olaitan', 'Opeyemi', 'Ganiyu', '2011-03-13', '', 'JSS', 1, 'Zinnia ', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Muslim ', 'No 16 Elder Ade', '', 'Isokan Local government ', 'Osun State ', '', '', '', '', 'images/student_import_pics/SSS340.jpg', '', 'Ganiyu', '', '16 Elder Ayedemi', '', 'simidschool421@gmail.com', '08166671320', '08166671320', '', '', 'Mr Ganiyu Nureni', '08131006122', 'Business Man', 'Mrs  Ganiyu Omotayo', '08166671320', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:26', '0000-00-00 00:00:00'),
(246, 'SS0439', 'SSS@41', '0000-00-00', 'Micheal ', 'Chinemelum', 'Mbanefo', '2012-09-12', '', 'JSS', 1, 'Zinnia ', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '46, Taiwo stree', '', 'Nri', 'Anambra ', '', '', '', '', 'images/student_import_pics/SSS341.jpg', '', 'Mbanefo', '', '46, Taiwo street ', '', 'simidschool421@gmail.com', '08030818650', '08030818650', '', '', 'Mr Onyeka', '08038330784', 'Business Man ', 'Mrs Tochuckwu ', '08065202996', 'Pharmacist ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:26', '0000-00-00 00:00:00'),
(247, 'SS0458', 'SSS@42', '0000-00-00', 'Ugochukwu', 'Pius', 'Okonkwo', '2012-06-10', '', 'JSS', 1, 'Zinnia', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '7, Fayemi Stree', '', 'Njikoka', 'Anambra State ', '', '', '', '', 'images/student_import_pics/SSS342.jpg', '', 'Okonkwo', '', '7, Fayemi street', '', 'okonkwob66@gmail.com', '08030877963', '08030877963', '', '', 'Mr Tochuckwu ', '08068098128', 'Business Man', 'Mrs Ngozi', '08030877063', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-02 09:50:14', '0000-00-00 00:00:00'),
(248, 'SS0459', 'SSS@43', '0000-00-00', 'Chiebuka ', 'Emmanuel ', 'Omeh', '2011-08-18', '', 'JSS', 1, 'Rose ', '', 'JSS', '1', '', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', 'No 37 dauda ilo', '', 'Igbo-Eze North ', 'Enugu State ', '', '', '', '', 'images/student_import_pics/SSS343.jpg', '', 'Omeh', '', '37, dauda ilo street ', '', 'simidschool421@gmail.com', '08032211911', '08032211911', '', '', 'Mr Olivier', '09036454298', 'Transporter', 'Mrs Oluchi Eucheria', '08032211911', 'Business Woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 08:34:24', '0000-00-00 00:00:00'),
(249, 'SS0460', 'SSS@44', '0000-00-00', 'Ireoluwa', 'David ', 'Ayinla', '2012-04-10', '', 'JSS', 1, 'Rose', '', 'JSS', '2', '', '2023/2024', '', 0, 'male', '', '', 'Nigeria', '', 'Christianity ', '18 Adeyemi Daud', '', 'Alimosho ', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS344.jpg', '', 'Ayinla', '', '18 Adeyemi Dauda ', '', 'simidschool421@gmail.com', '08022491197', '08022491197', '', '', 'Mr Paul Ayinla', '08038208333', 'Civil engineering ', 'Mrs Grace Ayinla', '08022491197', 'Teacher ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(250, 'SS0449', 'SSS@45', '0000-00-00', 'Boluwatife', 'Felicia ', 'Akanni ', '2012-04-18', '', 'JSS', 1, 'Rose', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', '', '1, iddo-odofin ', '', 'Efon-Alaye', 'Ekiti State', '', '', '', '', 'images/student_import_pics/SSS345.jpg', '', 'Akanni ', '', '1, iddo odoffin', '', 'simidschools421@gmail.com', '08028474085', '08028474085', '', '', 'Mr Akanni Adigun', '08023508095', 'Business man', 'Mrs Oluwakemi Akanni ', '08028474085', 'Trader ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:59:54', '0000-00-00 00:00:00'),
(251, 'SS0457', 'SSS@46', '0000-00-00', 'Innocent ', 'Chibuzor ', 'Okea', '2012-02-26', '', 'JSS', 1, 'Rose', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '5,Olusopa Stree', '', 'Owerri North ', 'Imo', '', '', '', '', 'images/student_import_pics/SSS346.jpg', '', 'Okea', '', '5, Olusopa street', '', 'simidschool421@gmail.com', '08134756150', '08134756150', '', '', 'Mr Okea Bonaventure ', '08134756150', 'Civil Servant ', 'Mrs Okea Esther ', '07039399285', 'Civil Servant ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(252, 'SS0466', 'SSS@47', '0000-00-00', 'Maryam', 'Desireoluwa', 'Feyisetan', '2012-04-12', '', 'JSS', 1, 'Rose', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '2, Mosolashi st', '', 'Abeokuta South', 'Ogun', '', '', '', '', 'images/student_import_pics/SSS347.jpg', '', 'Feyisetan', '', '2, Mosolashi street ', '', 'simidschool421@gmail.com', '08035748001', '08035748001', '', '', 'Mr Feyisetan Olawole', '08033130182', 'Publisher', 'Mrs Feyisetan Mayokun', '08035748001', 'Baker', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(253, 'SS0471', 'SSS@48', '0000-00-00', 'Precious ', 'Oyinyechukwu', 'Godwin ', '2012-05-10', '', 'JSS', 1, 'Rose', '', 'JSS', '1', '', '2022/2023', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '11,Konsteal Clo', '', 'Owan East ', 'Edo', '', '', '', '', 'images/student_import_pics/SSS348.jpg', '', 'Godwin ', '', '11, Konsteal Close', '', 'simidschool421@gmail.com', '08038846910', '08038846910', '', '', 'Mr Godwin Smart', '08032519000', 'Banker ', 'Mrs Godwin Esther', '08038846910', 'Business Woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 12:26:08', '0000-00-00 00:00:00'),
(254, 'SS0472', 'SSS@49', '0000-00-00', 'Vivian', 'Chiamaka', 'Nwankwo', '2010-06-04', '', 'JSS', 1, 'Rose', '', 'JSS', '1', '', '2022/2023', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '12, Chief Adene', '', 'Ikwuano', 'Abia', '', '', '', '', 'images/student_import_pics/SSS349.jpg', '', 'Nwankwo', '', '12, Chief Adenekan', '', 'simidschool421@gmail.com', '08063553242', '08063553242', '', '', 'Mr Ohale Robert ', '08062150428', 'Mechanical Engineer ', 'Mrs Ohale Favor ', '08063553242', 'Teacher ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 08:57:14', '0000-00-00 00:00:00'),
(255, 'SS0475', 'SSS@50', '0000-00-00', 'Queen', 'Chizoba', 'Rufus ', '2007-03-20', '', 'JSS', 1, 'Zinnia ', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '27, Orisumbare ', '', 'Oboro', 'Rivers ', '', '', '', '', 'images/student_import_pics/SSS350.jpg', '', 'Rufus ', '', '27, Orisumbare', '', 'simidschool421@gmail.com', '08069417454', '08069417454', '', '', 'Mr Rufus ', '07088222851', 'Clerk', 'Mrs Rufus Happiness ', '08069417454', 'Fashion designer ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(256, 'SS0447', 'SSS@51', '0000-00-00', 'Paschal ', 'Ifechukwu', 'Ifediba', '2012-01-30', '', 'JSS', 1, 'Rose', '', 'JSS', '1', '', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '12, Ekundayo St', '', 'Nnewi South ', 'Anambra ', '', '', '', '', 'images/student_import_pics/SSS351.jpg', '', 'Ifediba', '', '12, Ekundayo', '', 'simidschool421@gmail.com', '08144587142', '08144587142', '', '', 'Mr Ifediba Stephen ', '09160773808', 'Business Man', 'Mrs Ifediba Judith ', '08144587142', 'Civil Servant ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 09:00:28', '0000-00-00 00:00:00'),
(257, 'SS0469', 'SSS@52', '0000-00-00', 'Favour ', 'Amarachi', 'Robert ', '2012-03-12', '', 'JSS', 1, 'Zinnia', '', 'JSS', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '15,Jubril Olabi', '', '', 'Abia', '', '', '', '', 'images/student_import_pics/SSS352.jpg', '', 'Robert ', '', '15, Jubril Olabisi', '', 'simidschool421@gmail.com', '08135148835', '08135148835', '', '', 'Mr Robert Chimezie', '08166243938', '', 'Mrs Robert Oluchi ', '08135148835', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(258, 'SS0440', 'SSS@53', '0000-00-00', 'Daniel', 'Tochuckwu ', 'Nwafo', '2013-08-29', '', 'JSS', 1, 'Zinnia ', '', 'JSS', '1', '', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '46, Taiwo Stree', '', 'Ika North', 'Delta ', '', '', '', '', 'images/student_import_pics/SSS353.jpg', '', 'Nwafo', '', '46, Taiwo street ', '', 'simidschool421@gmail.com', '08030818650', '08030818650', '', '', 'Mr Nwafo Augustine ', '08030818650', 'Civil Servant ', 'Mrs Nwafo Amaka', '09037352348', 'Entrepreneur ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 09:10:59', '0000-00-00 00:00:00'),
(259, 'SS0474', 'SSS@54', '0000-00-00', 'Treasure ', 'Amarachukwu', 'Ugochukwu ', '2011-08-04', '', 'JSS', 1, 'Rose', '', 'JSS', '1', '', '2022/2023', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '10,Wahab Close', '', 'Isiala Mbano', 'Imo', '', '', '', '', 'images/student_import_pics/SSS354.jpg', '', 'Ugochukwu ', '', '10, Wahab Close', '', 'simidschool421@gmail.com', '08034160315', '08034160315', '', '', 'Mr Ugochukwu Arisukwu', '08034160315', 'Civil Servant ', 'Mrs Ugochukwu Chidinma', '07034199337', 'Trader ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 09:13:04', '0000-00-00 00:00:00'),
(260, 'SS0464', 'SSS@55', '0000-00-00', 'Emmanuel ', 'Ndubueze', 'Benstowe', '2012-01-18', '', 'JSS', 1, 'Zinnia ', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male ', '', '', 'Nigeria', '', 'Christianity ', '53, Ifelodun St', '', 'Bonny', 'Rivers ', '', '', '', '', 'images/student_import_pics/SSS355.jpg', '', 'Benstowe', '', '53, Ifelodun street ', '', 'simidschool421@gmail.com', '08084843419', '08084843419', '', '', 'Mr Benstowe Sunny', '08084843419', 'Service Engineer ', 'Mrs Benstowe Christiana ', '09048808463', 'Teacher ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-02 09:50:14', '0000-00-00 00:00:00'),
(261, 'SS0484', '', '0000-00-00', 'Emmanuel ', 'Mauton', 'Whensu ', '2009-11-23', '', 'JSS', 2, 'Zinnia', '', 'JSS', '3', '', '2023/2024', '', 0, 'Male ', '', '', 'Nigeria', '', 'Christianity ', '18, Ifelodun st', '', 'Badagry', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS356.jpg', '', 'Whensu Samuel Samedo ', '', '18, Ifelodun street, Ejigbo Lagos', '', 'whensu.samuel@gmail.com', '08029437422', '08029437422', 'Parent ', '', 'Whensu Sewedo', '8029437422', 'Public Servant', 'Whensu Esther ', '8057399422', 'Self-Employed ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(262, 'SS0493', '', '0000-00-00', 'Korede', 'Peace ', 'Ayanda ', '2011-04-26', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'Male ', '', '', '', '', '', '10, Adeola Almo', '', 'Ifelodun ', 'Kwara', '', '', '', '', 'images/student_import_pics/SSS357.jpg', '', 'Ayanda ', '', '10, Adeola Almo STREET', '', 'Comayanda07@gmail.com', '08033828413', '08033828413', '', '', 'Ayanda Peter ', '08033828413', 'Business ', 'Ayanda Comfort ', '8087152336', 'Secretary ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(263, 'SS0486', '', '0000-00-00', 'Faith ', 'Chibuaime', 'Anyawu', '2011-10-06', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christainity', '15, Adeola Almo', '', 'Abohmbause ', 'Imo', '', '', '', '', 'images/student_import_pics/SSS358.jpg', '', 'Anyawu', '', '15, Adeola Almoruf STREET', '', 'simidschools421@gmail.com', '08030492670', '08030492670', '', '', 'Anyanwu Anthony ', '8035657105', 'Accountant ', 'Anyanwu Vivian ', '08030492670', 'Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00');
INSERT INTO `registered_students` (`id`, `student_admission_number`, `password`, `student_admission_date`, `student_firstname`, `student_middlename`, `student_lastname`, `student_dob`, `height`, `class`, `level`, `class_number`, `department`, `current_class`, `current_level`, `current_department`, `current_year`, `graduated`, `avg_sc`, `student_gender`, `student_bloodgroup`, `student_birthplace`, `student_nationality`, `student_mothertongue`, `student_religion`, `student_address1`, `student_address2`, `student_lga`, `student_state`, `student_country`, `student_phone`, `student_mobile`, `student_email`, `student_photo`, `guardian_phone`, `guardian_name`, `guardian_city`, `guardian_address`, `guardian_state`, `guardian_email`, `guardian_country`, `guardian_mobile`, `guardian_relation`, `guardian_occupation`, `father_name`, `father_mobile`, `fathers_occupation`, `mother_name`, `mother_mobile`, `mother_occupation`, `hostel_room`, `hostel_registration_date`, `hostel_vacating_date`, `inoculation_taken`, `inoculation_not_taken`, `infectious_disease`, `infections_disease_have`, `suffer`, `suffer_from`, `last_form_token`, `created_at`, `updated_at`) VALUES
(264, 'SS0489', '', '0000-00-00', 'Chisom', 'Cynthia ', 'Nwonkwo ', '2012-01-18', '', 'JSS', 2, 'Rose', '', 'JSS', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '17, Caroline Od', '', 'Ezeagu', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS359.jpg', '', 'Nwonkwo ', '', '17, Caroline Odu Ejigbo ', '', 'simidschool421@gmail.com', '08032379928', '08032379928', 'Parent ', '', 'Nwakwo Joseph', '08032379928', '', 'Nwankwo Ngozi', '07045455257', 'Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(265, 'SS0492', '', '0000-00-00', 'Goodness', 'Fisayo', 'Oni', '2011-02-04', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '13, Araromi str', '', 'Ijero', 'Ekiti ', '', '', '', '', 'images/student_import_pics/SSS360.jpg', '', 'Oni', '', '13, Araromi street', '', 'onitejumola298@gmail.com', '08108522468', '08108522468', '', '', 'Oni Emmanuel ', ' 08108522468', 'Teaching ', 'Tejumola Oni ', '08108522468', 'Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(266, 'SS0483', '', '0000-00-00', 'Akinola', 'Gabriel', 'Opaleye ', '2011-10-15', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '3', '', '2023/2024', '', 0, 'Male ', '', '', 'Nigeria', '', 'Christainity', '10, idimu road ', '', 'Abeokuta South ', 'Ogun ', '', '', '', '', 'images/student_import_pics/SSS361.jpg', '', 'Opaleye ', '', '10, idimu road', '', 'simidschools421@gmail.com', '08053401494', '08053401494', '', '', 'Opaleye Yinka ', '08053401494', 'Banker', 'Opaleye Taiwo ', '08053401494', 'Civil servant ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(267, 'SS0491', '', '0000-00-00', 'David ', 'Chukwuemeka ', 'Oraeke', '2010-02-19', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'Male ', '', '', '', '', 'Christainity', '17, sumon stree', '', 'Omiata ', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS362.jpg', '', 'Oraeke', '', '17, sumon street Ejigbo', '', 'simidschools421@gmail.com', '07034735915', '07034735915', '', '', 'Oraeke Basil Ezeudu ', '07034735915', 'Car dealer ', 'Oraeke Brifget ', '07034735915', 'Trading ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(268, 'SS0496', '', '0000-00-00', 'Elizabeth ', 'Chibugo', 'Ejindu ', '2011-04-01', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christainity', '32, Joseph Adey', '', 'Umunochi', 'Abia', '', '', '', '', 'images/student_import_pics/SSS363.jpg', '', 'Ejindu ', '', '32, Joseph Adey street ', '', 'simidschools421@gmail.com', '09083354973', '09083354973', '', '', 'Ejindi Marris ', '9083354973', 'Transporter ', 'Ejindu Miriam', '09083354973', 'Teaching ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(269, 'SS0501', '', '0000-00-00', 'Busayo ', 'Iyanuoluwa ', 'Ogunbode ', '2011-09-12', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '5, Edagbeja off', '', 'Egbeda ', 'Oyo ', '', '', '', '', 'images/student_import_pics/SSS364.jpg', '', 'Ogunbode ', '', '5, Edagbeja off Cooker Road', '', 'simidschools421@gmail.com', '08063395487', '08063395487', '', '', 'Akeen Ogunbode', '08063395487', 'Maketer ', 'Mrs Ogunbode ', '08052559813', 'Trading ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(270, 'SS0506', '', '0000-00-00', 'Glory ', 'Ojoma ', 'David ', '2012-03-02', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christianity ', '1A, Akogun Stre', '', 'Dekina ', 'Kogi', '', '', '', '', 'images/student_import_pics/SSS365.jpg', '', 'David ', '', '1A, Akogun Street Ejigbo', '', 'simidschool421@gmail.com', '07036918411', '07036918411', '', '', 'David Enejoh ', '07036918411', 'Accountant ', 'David Sharon', '08034212520', 'Teaching ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(271, 'SS0508', '', '0000-00-00', 'Paul', 'Terhemba', 'Beba', '2010-04-04', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '3', '', '2023/2024', '', 0, 'Male ', '', '', '', '', '', '28, Omon Osaigb', '', 'Ejigbo', 'Benue ', '', '', '', '', 'images/student_import_pics/SSS366.jpg', '', 'Beba', '', '28, Omon Osaigbove', '', 'paulmariah3@gmail.com', '08055678669', '08055678669', '', '', 'Paul Udums', '08055678669', 'Network staff', 'Mariah Paul', '09087770989', 'Logistics Officer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(272, 'SS0494', '', '0000-00-00', 'Charles ', 'Uchechukwu ', 'Njoku ', '2010-10-10', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'Male ', '', '', '', '', '', '2, Adeyemi Dara', '', 'Mbaise ', 'Imo', '', '', '', '', 'images/student_import_pics/SSS367.jpg', '', 'Njoku ', '', '2, Adeyemi Dara', '', 'simidschool421@gmail.com', '09066575880', '09066575880', '', '', 'Njoku Ngozi', '09066575880', 'Pensioneer', 'Njoku Vitalis ', '09066575880', 'Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(273, 'SS0495', '', '0000-00-00', 'Joan', 'Chinazaekpere', 'Onyeagu ', '2010-10-01', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '40/42 Edagbeja ', '', 'Owerri west ', 'Imo ', '', '', '', '', 'images/student_import_pics/SSS368.jpg', '', 'Onyeagu ', '', '40/42 Edagbeja Ejigbo', '', 'simidschool421@gmail.com', '07031585328', '07031585328', 'Parent ', '', 'Onyeagu Tochukwu', '07042402194', 'Civil Servant ', 'Onyeagu Onyinechi', '08178921993', 'Seamstress', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(274, 'SS0495', '', '0000-00-00', 'Akinsanmi ', 'Wuraola', 'Eniola ', '2010-10-01', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', '', '8,James Omoboye', '', 'Ondo east ', 'Ondo', '', '', '', '', 'images/student_import_pics/SSS369.jpg', '', 'Eniola ', '', '8,James Omoboye', '', 'simidschool421@gmail.com', '07042402194', '07042402194', 'Parent ', '', 'Ayodeji Akinsanmi ', '07031585323', 'Civil Servant ', 'Akinsanmi Funmilayo ', '08133821371', 'Trading ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(275, 'SS0498', '', '0000-00-00', 'DAVID', 'AJIBOLA', 'ADEBAYO ', '2010-06-22', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'MALE', '', '', 'Nigeria', '', 'Christainity', '4 IFELODU STREE', '', 'EGBEDA', 'OYO ', '', '', '', '', 'images/student_import_pics/SSS370.jpg', '', 'MR/ MRS ADEBAYO', '', '4,IFELUODU STREET EJIGBO, LAGOS STATE', '', 'simidschools421@gmail.com', '07046716566', '07046716566', 'CHILD', '', 'MR ADEBAYO', '07046716566', 'CIVIL SERVANT', 'MRS ADEBAYO', '07046716566', 'BUSINESS', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(276, 'SS0479', '', '0000-00-00', 'BRYAN', 'SOMTOCHUKWU', 'EZE', '2011-07-30', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'MALE', '', '', 'Nigeria', '', 'Christainity', '24/25 MOHAMED A', '', 'IDIMILI SOUTH', 'ANAMBARA STATE ', '', '', '', '', 'images/student_import_pics/SSS371.jpg', '', 'MR EZE', '', '24/25 MOHAMED A STREET EJIGBO LAGOS STATE', '', 'simidschools421@gmail.com', '08186376147', '08186376147', '', '', 'MR EZE', '08186376147', 'BUSINESS', 'MRS EZE', '', 'PUBLIC SERVANT', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(277, 'SS0482', '', '0000-00-00', 'COURAGE', 'CHINEECHEREM', 'SIMON', '2010-10-13', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '2', '', '2022/2023', '', 0, 'MALE', '', '', 'Nigeria', '', '', '7 MORINATU STRE', '', 'OBORO', 'ABIA STATE', '', '', '', '', 'images/student_import_pics/SSS372.jpg', '', 'SIMON', '', '7 MORINATU STREET EJIGBO', '', 'simidschools421@gmail.com', '08186376147', '08186376147', '', '', 'MR SIMON', '', 'PUBLIC SERVANT', 'MRS SIMON', '8186376147', 'BUSINESS', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 12:03:47', '0000-00-00 00:00:00'),
(278, 'SS0485', '', '0000-00-00', 'SHINA', '', 'OLAWORE', '2011-02-01', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '3', '', '2023/2024', '', 0, 'MALE', '', '', 'Nigeria', '', '', '3 FAYEMI STREET', '', 'ETESIWAJU', 'OYO STATE', '', '', '', '', 'images/student_import_pics/SSS373.jpg', '', 'OLAWORE', '', '3 FAYEMI STREET EJIGBO', '', 'simidschools421@gmail.com', '08020664862', '08020664862', '', '', 'MR OLAWORE', '08020664862', 'CIVIL SERVANT', 'MRS OLAWORE', '08031348154', 'PUBLIC SERVANT', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(279, 'SS0504', '', '0000-00-00', 'IDRIS', '', 'YUSUF', '2011-11-15', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '3', '', '2023/2024', '', 0, 'MALE', '', '', 'Nigeria', '', 'Muslim ', '9 TUNJI AKINDEL', '', 'AKINYELE', 'OYO STATE', '', '', '', '', 'images/student_import_pics/SSS374.jpg', '', 'YUSUF', '', '9 TUNJI AKINDEL STREET', '', 'simidschools421@gmail.com', '08038533164', '08038533164', '', '', 'MR YUSUF', '08038533164', 'PUBLIC SERVANT', 'MRS YUSUF', '08038533164', 'BUSINESS', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(280, 'SS0480', '', '0000-00-00', 'VICTOR', 'OLUWATIMILEHIN', 'BABALOLA', '2009-10-10', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'MALE', '', '', '', '', '', '25  OLUSHESI ST', '', 'AKINYELE', 'OYO STATE', '', '', '', '', 'images/student_import_pics/SSS375.jpg', '', 'BABALOLA', '', '25  OLUSHESI STREET EJIGBO', '', 'simidschools421@gmail.com', '07036284694', '07036284694', '', '', 'MR BABALOLA', '07036284694', 'PUBLIC SERVANT', 'MRS BABALOLA', '07036284694', 'PUBLIC SERVANT', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(281, 'SS0478', '', '0000-00-00', 'ODAFE', 'NGOZI', 'PATRICK', '2011-07-29', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'FEMALE', '', '', '', '', 'Christainity', '7 FOLAWEWO STRE', '', 'OBINGWA', 'ABIA STATE', '', '', '', '', 'images/student_import_pics/SSS376.jpg', '', 'PATRICK', '', '7 FOLAWEWO STREET EJIGBO', '', 'simidschools421@gmail.com', '08022002233', '08022002233', '', '', 'MR PATRICT', '08022002233', 'PUBLIC SERVANT', 'MRS PATRICK', '08022002233', 'PUBLIC SERVANT', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(282, 'SS0481', '', '0000-00-00', 'WHITNEY', 'MARIA', 'JOHNSON', '2012-02-28', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'FEMALE', '', '', 'Nigeria', '', 'Christainity', '22 SUMONU ANIMA', '', 'AFIPO', 'EBONYI STATE', '', '', '', '', 'images/student_import_pics/SSS377.jpg', '', 'MR JOHNSON', '', 'EJIGBO', '', 'simidschools421@gmail.com', '08130536575', '08130536575', '', '', 'MR JOHNSON', '08130536575', 'PUBLIC SERVANT', 'MRS JOHNSON', '08130536575', 'PUBLIC SERVANT', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(283, 'SSS378', '', '0000-00-00', 'OLUWADUNMININU', '', 'SHOLOLA', '0000-00-00', '', 'JSS', 2, '', '', 'JSS', '2', '', '2022/2023', '', 0, 'FEMALE', '', '', '', '', '', '12 TAJUDEEN OGU', '', 'EWEKON', 'OGUN STATE', 'Nigeria', '', '', '', 'images/student_import_pics/SSS378.jpg', '', 'SHOLOLA', '', '', '', '', '', '', '', '', 'MR SHOLOLA', '', 'PUBLIC SERVANT', 'MRS SHOLOLA', '8130536575', 'BUSINESS', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-04-21 09:53:07', '0000-00-00 00:00:00'),
(284, 'SS0490', '', '0000-00-00', 'FELICITY', 'MUNACHI', 'CHIKWENDU', '2011-06-12', '', 'JSS', 2, 'ROSE', '', 'JSS', '2', '', '2022/2023', '', 0, 'FEMALE', '', '', 'Nigeria', '', '', '20 APANA STREET', '', 'EKEDURU', 'IMO STATE', '', '', '', '', 'images/student_import_pics/SSS379.jpg', '', 'CHIKWENDU', '', '20 APANA STREET EJIGBO', '', 'simidschools421@gmail.com', '08038534350', '08038534350', '', '', 'MR CHIKWENDU', '08034534350', 'PUBLIC SERVANT', 'MRS CHIKWENDU', '08038534350', 'PUBLIC SERVANT', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 13:33:28', '0000-00-00 00:00:00'),
(285, 'SS0488', '', '0000-00-00', 'KIRSTYN', 'KELECHI', 'ALAOMA', '2009-02-21', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '3', '', '2023/2024', '', 0, 'FEMALE', '', '', '', '', 'Christainity', '11 KRIS OLADUNI', '', 'NKWERE', 'IMO STATE', '', '', '', '', 'images/student_import_pics/SSS380.jpg', '', 'ALAOMA', '', '11 KRIS OLADUNI STREET EJIGBO', '', 'simidschools421@gmail.com', '08038703630', '08038703630', '', '', 'MR ALAOMA', '08038703630', 'PUBLIC SERVANT', 'MRS ALAOMA', '08038703630', 'PUBLIC SERVANT', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(286, 'SS0505', '', '0000-00-00', 'OYEJUOLA', '', 'DARAMOLA', '2010-05-26', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'FEMALE', '', '', '', '', '', '19 JUBRIL OLABI', '', '', 'ONDO STATE', '', '', '', '', 'images/student_import_pics/SSS381.jpg', '', 'DARAMOLA', '', '19 JUBRIL OLABISI STREET, EJIGBO', '', 'simidschools421@gmail.com', '08142306153', '08142306153', '', '', 'MR DARAMOLA', '08142306153', 'PUBLIC SERVANT', 'MRS DARAMOLA', '08142306153', 'BUSINESS', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(287, 'SS0497', '', '0000-00-00', 'HEEMON', '', 'AGBAJE', '2011-12-23', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '3', '', '2023/2024', '', 0, 'FEMALE', '', '', '', '', '', '7 AL-MORUF STRE', '', 'ILESHA', 'OSUN STATE', '', '', '', '', 'images/student_import_pics/SSS382.jpg', '', 'AGBAJE', '', '7 AL-MORUF STREET', '', 'simidschools421@gmail.com', '08027443287', '08027443287', '', '', 'MR AGBAJE', '', 'PUBLIC SERVANT', 'MRS AGBAJE', '08027443287', 'PUBLIC SERVANT', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(288, 'SS0503', '', '0000-00-00', 'ESTHER', 'OLUEBUBE', 'AGU', '2010-07-05', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '3', '', '2023/2024', '', 0, 'FEMALE', '', '', '', '', '', '44 FADU AVENUE,', '', 'UKPO DONUKOFIA', 'ANAMBARA STATE', '', '', '', '', 'images/student_import_pics/SSS383.jpg', '', 'AGU', '', '44 FADU AVENUE, EJIGBO', '', 'simidschools421@gmail.com', '08030254425', '08030254425', '', '', 'MR AGU', '', 'PUBLIC SERVANT', 'MRS AGU', '08030254425', 'PUBLIC SERVANT', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(289, 'SS0499', '', '0000-00-00', 'VANIZA', 'CHINOSO', 'NWAOZUZU', '2011-10-07', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '3', '', '2023/2024', '', 0, 'FEMALE', '', '', '', '', '', '4 INNO CLOSE EJ', '', 'OWERRI', 'IMO STATE', '', '', '', '', 'images/student_import_pics/SSS384.jpg', '', 'NWAOZUZU', '', '4 INNO CLOSE EJIGBO', '', 'simidschools421@gmail.com', '08067011074', '08067011074', '', '', 'MR NWAOZUZU', '08067011074', 'BUSINESS', 'MRS NWAOZUZU.', '8067011074', 'PUBLIC SERVANT', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(290, 'SS0507', '', '0000-00-00', 'JOYCE', 'AWELE', 'OKONJI', '2011-07-08', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '3', '', '2023/2024', '', 0, 'FEMALE', '', '', '', '', '', '9 ANIA CLOSE EJ', '', 'ANIOCHA SOUTH', 'DELTA STATE', '', '', '', '', 'images/student_import_pics/SSS385.jpg', '', 'OKONJI', '', '9 ANIA CLOSE EJIGBO ', '', 'simidschools421@gmail.com', '08036675173', '08036675173', '', '', 'MR OKONJI', '08036675173', 'BUSINESS', 'MRS OKONJI', '08036675173', 'PUBLIC SERVANT', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(291, 'SS0487', '', '0000-00-00', 'PRINCESS', 'PRECIOUS ', 'AUGUSTINE', '2011-07-08', '', 'JSS', 2, 'ROSE', '', 'JSS', '3', '', '2023/2024', '', 0, 'FEMALE', '', '', '', '', '', '31 ILLUFUMMI ST', '', 'NGOR OKPALA', 'IMO STATE', '', '', '', '', 'images/student_import_pics/SSS386.jpg', '', 'AUGUSTINE', '', '31 ILLUFUMMI STREET EJIGBO', '', 'simidschools421@gmail.com', '08038520202', '08038520202', '', '', 'MR AUGUSTINE', '08038520202', 'BUSINESS', 'MRS AUGUSTINE', '08038520202', 'BUSINESS', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(292, 'SS0515', '', '0000-00-00', 'Precious', 'Yemisi', 'Adewale', '2010-02-12', '', 'JSS', 3, 'Ro', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '48 Faju Avenue ', '', 'Ondo west', 'Ondo', '', '', '', '', 'images/student_import_pics/SSS387.jpg', '', 'Adewale', '', '10, Anuoluwapo', '', 'Simidschool421@gmail.com', '07033811387', '07033811387', '', '', 'Mr Akinseye Adewale', '7033811387', 'Civil Servant', 'Mrs Adewale Esther', '8034355081', 'Business tycoon', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(294, 'SS0532', '', '0000-00-00', 'Joseph', 'Victor', 'Ashimije', '2010-03-16', '', 'JSS', 3, 'Ro', '', 'SSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', '', '9 Sanni Daudu', '', 'Akoko Edo', 'Edo', '', '', '', '', 'images/student_import_pics/SSS389.jpg', '', 'Ashimije', '', '9, Sanni Daudu', '', 'Simidschool421@gmail.com', '0802097815', '0802097815', '', '', 'Mr Ashimije', '8020907815', 'Public Servant', 'Mrs Nneka Ashimije', '8020907689', 'Hair stylist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(295, 'SS0530', '', '0000-00-00', 'Samuel', 'Raheem', 'Adeyemi', '2011-05-03', '', 'JSS', 3, 'Ro', '', 'SSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian', '6 Sabitu Buhari', '', 'Abeokuta North', 'Ogun', '', '', '', '', 'images/student_import_pics/SSS390.jpg', '', 'Adeyemi', '', '6, Ilufunmi', '', 'Simidschool421@gmail.com', '07035845574', '07035845574', '', '', 'Mr Ayoola Adeyemi', '8069245450', 'Politician', 'Mrs Funmi Adeyemi', '7035845524', 'Civil servant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(296, 'SS0516', '', '0000-00-00', 'Ronke', 'Roseline', 'Bankole ', '2009-09-27', '', 'JSS', 3, 'Ro', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '20 Alafia Stree', '', 'Oke Oro', 'Kwara', '', '', '', '', 'images/student_import_pics/SSS391.jpg', '', 'Bankole ', '', '20a, Alafia Ajumoni Estate', '', 'Simidschool421@gmail.com', '08032275624', '08032275624', '', '', 'Mr Olamilekan Bankole', '8032275624', 'Business man', 'Mrs Feyisayo Bankole', '8032275624', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(297, 'SS0531', '', '0000-00-00', 'Esther', 'Chidera', 'Nwoke', '2010-12-27', '', 'JSS', 3, 'Ro', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '3 Tunji Ladipo ', '', 'Ohafia', 'Abia', '', '', '', '', 'images/student_import_pics/SSS392.jpg', '', 'Nwoke', '', '1, tunji ladipo street idimu', '', 'Simidschool421@gmail.com', '08036244088', '08036244088', '', '', 'Mr Awucha Nwoke', '7039846113', 'Business man', 'Mrs Rose Nwoke', '8036244088', 'Civil servant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(298, 'SS0514', '', '0000-00-00', 'Gbolahan', 'Adufe', 'Isa', '2010-07-06', '', 'JSS', 3, 'Ro', '', 'SSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Muslim', '19 Jubril Olabi', '', 'Ibadan south', 'Oyo', '', '', '', '', 'images/student_import_pics/SSS393.jpg', '', 'Isa', '', 'Jubril Olabisi', '', 'Simidschool421@gmail.com', '08036646622', '08036646622', '', '', 'Mr Ademola Isa', '8036646622', 'Oil/Gas Engineer', 'Mrs Isa', '8142306153', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(299, 'SS0531', '', '0000-00-00', 'Anita', 'Gift', 'Ofili', '2008-03-24', '', 'JSS', 3, 'Ro', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '4 Kunle Banji', '', 'Aniocha', 'Delta', '', '', '', '', 'images/student_import_pics/SSS394.jpg', '', 'Ofili', '', '4, Kunle banji', '', 'Simidschool421@gmail.com', '08181510965', '08181510965', '', '', 'Mr Victor Ofili', '8037767845', 'Business man', 'Mrs Ngozi Ofili', '8181510965', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(300, 'SS0523', '', '0000-00-00', 'Ifunaya', 'Mmasinachi', 'Okechukwu', '2010-08-06', '', 'JSS', 3, 'Ro', '', 'JSS', '3', '', '2022/2023', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '17 Sabitu Buhar', '', 'Ekusigo ', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS395.jpg', '', 'Okechukwu', '', '17, Agbede', '', 'Simidschool421@gmail.com', '07062789844', '07062789844', '', '', 'Mr Jude Okechuckwu', '8032310122', 'Business man', 'Mrs Olivia Okeke', '7062789844', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 12:02:18', '0000-00-00 00:00:00'),
(301, 'SS0535', '', '0000-00-00', 'Stephanie', 'Chinasa', 'Okeke', '2010-06-19', '', 'JSS', 3, 'Ro', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '16 Wahab Close', '', 'Anaocha', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS396.jpg', '', 'Okeke', '', '16, Wahab', '', 'Simidschool421@gmail.com', '08033349306', '08033349306', '', '', 'Mr Dominic Okeke', '', 'Artisan', 'Mrs Jenifer Okeke', '8033349306', 'Accountant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(302, 'SS0533', '', '0000-00-00', 'Mitchael', 'Iyobosa', 'Osadolor', '2010-06-19', '', 'JSS', 3, 'Ro', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', '', '32 Chris Oladun', '', 'Umhoude', 'Edo', '', '', '', '', 'images/student_import_pics/SSS397.jpg', '', 'Osadolor', '', '23, Chris oladunni street', '', 'Simidschool421@gmail.com', '08020338405', '08020338405', '', '', 'Mr Michael Osadolor', '7062047158', 'Business man', 'Mrs Blessing Osadolor', '8020338405', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(303, 'SS0519', '', '0000-00-00', 'Esther', 'Chiamaka', 'Onyenweaku', '2011-04-26', '', 'JSS', 3, 'Ro', '', 'JSS', '3', '', '2022/2023', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '20 Apena Street', '', 'Aboh Mbaise ', 'Imo', '', '', '', '', 'images/student_import_pics/SSS398.jpg', '', 'Onyenweaku', '', '20, Apana', '', 'Simidschool421@gmail.com', '08127010591', '08127010591', '', '', 'Mr Augustine Onyenweaku', '8127010591', 'Trader', 'Mrs Benedicta Onyeweaku', '8038534350', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 12:11:24', '0000-00-00 00:00:00'),
(304, 'SS0511', '', '0000-00-00', 'Oluwafikunayomi', 'Esther', 'Robert', '2010-04-05', '', 'JSS', 3, 'Ro', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '12 Edagbeja Str', '', 'Odi Olowo', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS399.jpg', '', 'Robert', '', '12, Edagbeja', '', 'Simidschool421@gmail.com', '08098068677', '08098068677', '', '', 'Mr Adewale Robert', '8098068677', 'Media Gaffer', 'Mrs Robert Oyelola', '8098639860', 'Caterer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(305, 'SS0528', '', '0000-00-00', 'Michael', 'Chinaza', 'Ugodu', '2018-07-06', '', 'JSS', 3, 'Ro', '', 'SSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian ', 'Ilufunmi street', '', 'U.D.I', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS400.jpg', '', 'Ugodu', '', '7, Ilufunmi', '', 'Simidschool421@gmail.com', '08055312106', '08055312106', '', '', 'Mr Marcel Ugodu', '8055312106', 'Business man', 'Mrs Jacinta Ugodu', '8169598654', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(306, 'SS0560', '', '2021-04-25', 'Victor', '', 'Benstowe', '2009-03-06', '', 'SSS', 1, 'Marigold', 'Science', 'SSS', '2', 'Science', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', 'No, 14 Ifelodun', '', 'Oshodi/isolo ', 'Lagos ', '', '', '', 'Oshodi/isolo ', 'images/student_import_pics/SSS401.jpg', '', 'Benstowe', '', 'No, Ifelodu street ejigbo ', '', 'Simidschool421@gmail.com', '08084843469', '08084843469', 'Parents ', '', 'Mr Austine Benstowe', '08084843469', 'Business man', 'Mrs Christiana Benstowe', '09148808463', 'Educator', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(307, 'SS0564', '', '2021-10-22', 'Olaboyede', 'Aminat', 'Olayode', '2010-01-18', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '2', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Muslim ', '27 Ilufunmi Str', '', 'Abeokuta South', 'Ogun', '', '', '', 'Simidschool421@Gmail.com', 'images/student_import_pics/SSS402.jpg', '', 'Olayode', '', '27 Ilufunmi Str Ejigbo ', '', 'Simidschool421@Gmail.com', '08033627442', '08033627442', 'Parentâ€™s ', '', 'Mr Olayode', '8023155826', 'Regional Marketer', 'Mrs Olayode', '8033627442', 'Journalist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(308, 'SS0566', '', '0000-00-00', 'Sophia', 'Amarachi', 'Anyasodor', '2009-07-22', '', 'SSS', 1, 'Marigold', 'Science', 'SSS', '2', 'Science', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '36 Apana Street', '', 'Owerri west', 'Imo', '', '08066417440', '', 'Simidschol421@Gmail.com', 'images/student_import_pics/SSS403.jpg', '', 'Anyasodor', '', '36 Apana Street', '', 'Estherannayasodor@@gmail.com', '08034939530', '08034939530', 'Parentâ€™s ', '', 'Mr Anyasodor', '8034939530', 'Business man', 'Mrs Anyasodor', '8066417440', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(309, 'SS0555', '', '0000-00-00', 'Rejoice', 'Chiemela', 'Ohanagu', '2009-04-10', '', 'SSS', 1, 'Marigold ', 'Science', 'SSS', '2', 'Science', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '31b Jubril Olab', '', 'Uguta', 'Imo', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS404.jpg', '', 'Ohanagu', '', '31b Jubril Olabisi Ejigbo ', '', 'simidschool421@gmail.com', '08032397054', '08032397054', 'Parents ', '', 'Mr Ohanagu', '8032397054', 'Engineer', 'Mrs Ohanagu', '8135180522', 'Accountant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(310, 'SSS405', '', '0000-00-00', 'Francis', 'Eyinna', 'Obasi', '0000-00-00', '', 'SSS', 1, '', 'Commercial', 'SSS', '1', 'Commercial', '2022/2023', '', 0, 'Male', '', '', '', '', '', '7 Ilufunmi Stre', '', 'Mbaise', 'Imo', 'Nigeria', '', '', '', 'images/student_import_pics/SSS405.jpg', '', 'Obasi', '', '', '', '', '', '', '', '', 'Mr Ugo Obasi', '', 'Business man', 'Mrs Mercy Obasi', '7043336390', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-04-21 09:53:07', '0000-00-00 00:00:00'),
(311, 'SS0546', '', '0000-00-00', 'Opeyemi', 'Sodiq', 'Mogaji', '2009-08-06', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '2', 'Art', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '22 Sunmonu Anim', '', 'Oshodi/isolo ', 'Osun', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS406.jpg', '', 'Mogaji', '', '22 Sunmonu Anim', '', 'simidschool421@gmail.com', '08183261879', '08183261879', 'Parents ', '', 'Mr Saheed Mogaji', '08135236707', '', 'Mrs Ganiyat Mogaji', '08135236707', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(312, 'SS0539', '', '0000-00-00', 'Naomi', 'Tolulope', 'Osaje ', '2010-02-12', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '2', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '22 Daniel Oderh', '', 'Ika South', 'Delta', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS407.jpg', '', 'Osaje ', '', 'Dadailo street Ejigbo ', '', 'simidschool421@gmail.com', '08027303030', '08027303030', 'Parents ', '', 'Mr Peter Osaje', '8027303030', 'Business man', 'Mrs Adaeze Osaje', '8092580800', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(313, 'SS0549', '', '0000-00-00', 'Vanessa', 'Ofure', 'Okodua', '2007-12-15', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '2', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '61 Alaafia Stre', '', 'Oshodi/isolo ', 'Edo', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS408.jpg', '', 'Okodua', '', '61 Alfia street Ejigbo ', '', 'simidschool421@gmail.com', '08126977394', '08126977394', 'Parents ', '', 'Mr Kenneth Okodua', '', 'Driver', 'Mrs Grae Okodua', '7030177334', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(314, 'SS0538', '', '0000-00-00', 'Princess', 'Mercy', 'Dickson', '2010-10-27', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '2', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '37 Taiwo Street', '', 'Mkpat', 'Akwaibom', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS409.jpg', '', 'Dickson', '', '37 Taiwo Street', '', 'simidschool421@gmail.com', '08035511515', '08035511515', 'Parents ', '', 'Mr Emmanuel Dickson', '7037508029', 'Engineer', 'Mrs Mercy Dickson', '8035511515', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(315, 'SS0565', '', '0000-00-00', 'Makuochukwu', 'Vivian', 'Okpala', '2008-08-24', '', 'SSS', 1, 'Marigold ', 'Science', 'SSS', '2', 'Science', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '2 Olusesi Close', '', 'Idemili', 'Anambra', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS410.jpg', '', 'Okpala', '', '2 Olusesi Close', '', 'simidschool421@gmail.com', '08184412359', '08184412359', 'Parents ', '', 'Mr Uche Okpala', '7038898962', 'Business man', 'Mrs Stella Okpala', '8033742348', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(316, 'SS0543', '', '0000-00-00', 'Divine', 'Favour', 'Erege', '2008-08-18', '', 'SSS', 1, 'Marigold ', 'Science', 'SSS', '2', 'Science', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '9 Kris Oladunni', '', 'Aboh Mbaise', 'Imo', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS411.jpg', '', 'Erege', '', '9 Kris Oladunni', '', 'simidschool421@gmail.com', '07085554631', '07085554631', 'Parents ', '', 'Mr Patrick Erege', '8023299510', 'Civil Servant', 'Mrs Tina Erege', '7085554631', 'Clergy', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(317, 'SS0551', '', '0000-00-00', 'Rejoice', 'Chisom', 'Ejindu', '2009-03-19', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '2', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '32 Prophet Jose', '', 'Umunochi', 'Abia', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS412.jpg', '', 'Ejindu', '', '32 Prophet Joseph Adeyemi see', '', 'simidschool421@gmail.com', '07031691149', '07031691149', 'Parents ', '', 'Mr Marris Ejindu', '9083354973', 'Logistics', 'Mrs Mariam Ejindu', '7031691149', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(318, 'SS0544', '', '0000-00-00', 'Oluwapelumi', 'Joshua', 'Ojelabi', '2008-04-30', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '1', 'Art', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '20-22 Sunmonu A', '', 'Obokun', 'Osun', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS413.jpg', '', 'Ojelabi', '', '20-22 Sunmonu A', '', 'simidschool421@gmail.com', '08032072276', '08032072276', 'Parents ', '', 'Mr Aboola Ojelabi', '8029019181', 'Civi Servant', 'Mrs Oluwaseun Ojelabi', '8032072276', 'Nurse', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 14:24:01', '0000-00-00 00:00:00'),
(319, 'SS0601', '', '0000-00-00', 'Esther', 'Chidera', 'Uzowulu', '2009-05-30', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '2', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '13 Madam Okesho', '', 'Ihiala', 'Anambra', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS414.jpg', '', 'Uzowulu', '', '13 Madam Okesho', '', 'simidschool421@gmail.com', '08037127490', '08037127490', 'Parents ', '', 'Mr Festus Uzowulu', '8164008531', 'Business man', 'Mrs Chinenye Uzowulu', '8037127490', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(320, 'SS0553', '', '0000-00-00', 'Mary', 'Chioma', 'Ezema', '2008-10-16', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '2', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '32 Tajudeen Str', '', 'Nsukka', 'Enugu', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS415.jpg', '', 'Ezema', '', '32 Tajudeen Str', '', 'simidschool421@gmail.com', '08089767798', '08089767798', 'Parents ', '', 'Mr Christian Ezema', '', 'Transporter', 'Mrs Angela Ezema', '9122329347', 'Marketer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(321, 'SS0554', '', '0000-00-00', 'Martha', 'Chidebere', 'Ezema ', '2008-10-30', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '2', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '32 Tajudeen Str', '', 'Nsukka', 'Enugu', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS416.jpg', '', 'Ezema ', '', '32 Tajudeen Str', '', 'simidschool421@gmail.com', '08032397054', '08032397054', 'Parents ', '', 'Mr Christian Ezema', '', 'Transporter', 'Mrs Angela Ezema', '9122329347', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(322, 'SS0540', '', '0000-00-00', 'Chisom', 'Divine', 'Ekpemiro', '2009-11-26', '', 'SSS', 1, 'Marigold ', 'Science', 'SSS', '2', 'Science', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '4 Sanni Daudu', '', 'Ikwauno', 'Abia', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS417.jpg', '', 'Ekpemiro', '', '4 Sanni Daudu', '', 'simidschool421@gmail.com', '08128400270', '08128400270', 'Parents ', '', 'Mr Stanley Ekpemiro', '', 'Engineer', 'Mrs Chioma Ekpemiro', '8128400270', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(323, 'SS0541', '', '0000-00-00', 'Chisom', 'Favour', 'Omeh', '2008-09-14', '', 'SSS', 1, 'Marigold ', 'Science', 'SSS', '1', 'Science', '2022/2023', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '37 Dauda ilos S', '', 'Igboeze north', 'Enugu', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS418.jpg', '', 'Omeh', '', '37 Dauda ilos S', '', 'simidschool421@gmail.com', '08032211911', '08032211911', 'Parents ', '', 'Mr Oliver Omeh', '9026454208', '', 'Mrs Oluchi Omeh', '8032211011', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 14:46:41', '0000-00-00 00:00:00'),
(324, 'SS0559', '', '0000-00-00', 'Chibuoke', 'Favour', 'Emmanuel Elijah', '2009-04-22', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '2', 'Art', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '2 Kolawole Stre', '', 'Aguata', 'Anambra', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS419.jpg', '', 'Emmanuel Elijah', '', '2 Kolawole Stre', '', 'simidschool421@gmail.com', '07030260857', '07030260857', 'Parents ', '', 'Mr Emmanuel Elijah', '8064858737', 'Business man', 'Mrs Roseline Elijah', '7030260857', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(325, 'SS0545', '', '0000-00-00', 'Excel', 'Oluwaferanmi', 'Oni', '2009-06-03', '', 'SSS', 1, ' Lotus ', 'Commercial', 'SSS', '2', 'Commercial', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '13 Araromi Stre', '', 'Ijero', 'Ekiti', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS420.jpg', '', 'Oni', '', '13 Araromi Stre', '', 'simidschool421@gmail.com', '08108522468', '08108522468', '', '', 'Mr Oluwadamilare Oni', '8108522468', 'Teacher', 'Mrs Tejumola Oni', '7041376731', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(326, 'SS0558', '', '0000-00-00', 'Ozioma', 'Mary Jane', 'Akwari', '2009-09-13', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '2', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '29 Akogun Stree', '', 'Bende', 'Abia', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS421.jpg', '', 'Akwari', '', '29 Akogun Stree', '', 'simidschool421@gmail.com', '08056163898', '08056163898', 'Parents ', '', 'Mr Raphael Akwari', '7066599233', 'Fashion Designer', 'Mrs Ijeoma Akwari', '8056163898', 'Accountant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(327, 'SSS422', '', '0000-00-00', 'Esther', 'Inyang', 'Victor', '0000-00-00', '', 'SSS', 1, '', 'Art', 'SSS', '1', 'Art', '2022/2023', '', 0, 'Female', '', '', '', '', '', '5 Olusoga  Stre', '', 'Ahna', 'Akwaibom', 'Nigeria', '', '', '', 'images/student_import_pics/SSS422.jpg', '', 'Victor', '', '', '', '', '', '', '', '', 'Mr Inyang Victor', '8033053031', 'Coach', 'Mrs Celestina Okeke', '8038069221', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-04-21 09:53:07', '0000-00-00 00:00:00'),
(328, 'SS0563', '', '0000-00-00', 'Princess', 'Deborah', 'Emmanuel', '2010-03-06', '', 'SSS', 1, 'Marigold ', 'Science', 'SSS', '2', 'Science', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '12 Oba disu Far', '', 'Oriade', 'Osun', '', '', '', 'Simidschool421@gmail.com', 'images/student_import_pics/SSS423.jpg', '', 'Emmanuel', '', '12 Oba disu Far', '', 'simidschool421@gmail.com', '08066662222', '08066662222', 'Parents ', '', 'Mr Femi Emmanuel', '8066662222', 'Engineer', 'Mrs Kemi Emmanuel', '8066662233', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(342, 'SS0579', '', '0000-00-00', 'David', 'Oluwaferanmi', 'Biobaku', '2008-06-16', '', 'SSS', 2, '', 'Science', 'SSS', '3', 'Science', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '9 Damilola Moro', '', 'Abeokuta North', 'Ogun', '', '070364618189', '', '', 'images/student_import_pics/SSS437.jpg', '', 'Biobaku', '', '9,Damilola street,ejigbo', '', 'Simidschool421@gmail.com', '07036461818', '07036461818', '', '', 'Mr Oluwaseun Biobaku', '', 'Banker', 'Mrs Oluwafadekemi Biobaku', '7036461818', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(343, 'SS0571', '', '0000-00-00', 'Vivian', 'Mmesoma', 'Azike', '2007-10-02', '', 'SSS', 2, '', 'Art', 'SSS', '3', 'Art', '2023/2024', '', 0, 'Female', '', '', '', '', '', '34 Araromi St ', '', 'Aguta', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS438.jpg', '', 'Azike', '', '34,Araromi street', '', 'simidschool421@gmail.com', '07048102537', '07048102537', '', '', 'Mr Uchechukwu Azike', '8035761179', 'Business man', 'Mrs Amaka Azike', '7048102537', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(344, 'SS0585', '', '0000-00-00', 'Glory', 'Omowunmi', 'Adams', '2006-04-23', '', 'SSS', 2, '', 'Science', 'SSS', '3', 'Science', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '13 Omon- osaigb', '', 'Ijebu water side', 'Ogun', '', '08035116990', '', '', 'images/student_import_pics/SSS439.jpg', '', 'Adams', '', '13,omon osaigbovo street idimu', '', 'Simidschool421@gmail.com', '08035116990', '08035116990', 'Parents ', '', 'Mr Olulola Okusanya', '', 'Engineer', 'Mrs Olamide Okunsanya', '8035716990', 'Educationist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(345, 'SS0581', '', '2008-06-26', 'Rachael', 'Osayemerien', 'Osadolor', '0000-00-00', '', 'SSS', 2, '', 'Art', 'SSS', '2', 'Art', '2022/2023', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '32 Kris oladunn', '', 'Ihuwonde', 'Edo', '', '08020338405', '', 'simidschool421@gmail.com', 'images/student_import_pics/SSS440.jpg', '', 'Osadolor', '', '32,christol aduni street,ejigbo', '', 'Simidschool421@gmail.com', '08020338405', '08020338405', 'Parent ', '', 'Mr Michael Osadolor', '', 'Admin Manager', 'Mrs Blessing Osadolor', '8020338405', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 14:39:53', '0000-00-00 00:00:00'),
(346, 'SS0584', '', '0000-00-00', 'Prince', 'Somtochukwu', 'Nnadika', '2007-03-06', '', 'SSS', 2, '', 'Science', 'SSS', '3', 'Science', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '5 Olusoga Stree', '', 'Orlu', 'Imo', '', '08038069221', '', 'simidschool421@gmail.com', 'images/student_import_pics/SSS441.jpg', '', 'Nnadika', '', '5,olusoga street', '', 'Simidschool421@gmail.com', '+19094192402', '+19094192402', 'Parents ', '', 'Mr Nelson Nnadika', '', 'Business man', 'Mrs Josephine Nnadika', '19094192402', 'Nurse', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(347, 'SS0570', '', '0000-00-00', 'Kemi', 'Aishat', 'Agbede ', '2007-02-16', '', 'SSS', 2, '', 'Science', 'SSS', '3', 'Science', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Islam', '8 Kajola Street', '', 'Oshodi/ Isolo', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS442.jpg', '', 'Agbede ', '', '8,kajola street ejigbo ', '', 'Simidschool421@gmail.com', '081308543358', '081308543358', 'Parents', '', 'Mr Kazeem Agbede', '8130854335', 'Business Manager', 'Mrs Mujidat Agbede', '9185301949', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(348, 'SS0582', '', '0000-00-00', 'Favour', 'Boma', 'Augustine', '0000-00-00', '', 'SSS', 2, '', 'Art', 'SSS', '3', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '53,Ifelodun str', '', 'Bonni', 'Rivers', '', '09048808463', '', '', 'images/student_import_pics/SSS443.jpg', '', 'Augustine', '', '53, Ifelodun street ejigbo ', '', 'Simidschool421@gmail.com', '09048808463', '09048808463', 'Parents', '', 'Mr Augustine Benstowe', '8084843419', 'Engineer', 'Mrs Christiana Benstowe', '8084843419', 'Educator', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(349, 'SS0577', '', '0000-00-00', 'Christopher', 'Chinonso', 'Nnabuenyi', '2008-06-15', '', 'SSS', 2, '', 'Art', 'SSS', '2', 'Art', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '7, Omo Osaigbev', '', 'Ihala', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS444.jpg', '', 'Nnabuenyi', '', '7,omon osaigbovo street ejigbo ', '', 'Simidschool421@gmail.com', '08166322608', '08166322608', 'Parents', '', 'Mr Donaldson Nnabuenyi', '8068866334', 'Business man', 'Mrs Nancy Nnabuenyi', '8160323603', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 12:53:46', '0000-00-00 00:00:00'),
(350, 'SS0578', '', '0000-00-00', 'Victory ', 'Ikechukwu ', 'Simon', '2007-10-27', '', 'SSS', 2, '', 'Commercial', 'SSS', '2', 'Commercial', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '7 Morinatu Stre', '', 'Oboro', 'Abia', '', '', '', '', 'images/student_import_pics/SSS445.jpg', '', 'Simon', '', '7,morinatu street ejigbo ', '', 'Simidschool421@gmail.com', '081863761477', '081863761477', 'Parents ', '', 'Mr Ikoroh Victory', '7014724702', '', 'Mrs Chinyere Alugwe', '8186376147', 'Online Marketer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 13:00:54', '0000-00-00 00:00:00'),
(351, 'SS0572', '', '0000-00-00', 'Emmanuel', 'Chima', 'Azike', '2008-03-18', '', 'SSS', 2, '', 'Commercial', 'SSS', '3', 'Commercial', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', '', '34 Araromi Stre', '', 'Aguata', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS446.jpg', '', 'Azike', '', 'Araromi street ejigbo ', '', 'Simidschool421@gmail.com', '07048102537', '07048102537', 'Parents', '', 'Mr Uchechukwu Azike', '8035761179', 'Business man', 'Mrs Amaka Azike', '8024438586', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(352, 'SS0575', '', '0000-00-00', 'Destiny', 'Uchenna', 'Ugboma', '2008-06-25', '', 'SSS', 2, '', 'Science', 'SSS', '3', 'Science', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '13 Olusesi clos', '', 'Oshimili North', 'Delta', '', '', '', '', 'images/student_import_pics/SSS447.jpg', '', 'Ugboma', '', '13,olusesi street ejigbo ', '', 'Simidschool421@gmail.com', '08030020631', '08030020631', 'Parents ', '', 'Mr Sunday Ugboma', '8030020631', 'Civil Servant', 'Mrs Patricia Ugboma', '7015045630', 'Civil Servant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(353, 'SS0568', '', '0000-00-00', 'Chiamaka', 'Favour', 'Ejindu', '2007-12-22', '', 'SSS', 2, '', 'Art', 'SSS', '3', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '32, Lawrence st', '', 'Umunachi', 'Abia', '', '', '', '', 'images/student_import_pics/SSS448.jpg', '', 'Ejindu', '', '32, Lawrence street ejigbo ', '', 'Simidschool421@gmail.com', '07031691149', '07031691149', 'Parents ', '', 'Mr Marris Ejindu', '8083354973', 'Business man', 'Mrs Ifeoma Ejindu', '7031691149', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(354, 'SS0580', '', '0000-00-00', 'Emmanuel', 'Ifesinachukwudinma', 'Edeonu', '2040-08-00', '', 'SSS', 2, '', 'Art', 'SSS', '2', 'Art', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '5 Akogun Street', '', 'Enugu East', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS449.jpg', '', 'Edeonu', '', '5,akogun street ejigbo ', '', 'Simidschool421@gmail.com', '07030194121', '07030194121', 'Parents', '', 'Mr Christopher Edeonu', '', 'Business man', 'Mrs Chinasa Edeonu', '7030194121', 'Pastor', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 13:21:54', '0000-00-00 00:00:00'),
(355, 'SSS450', '', '0000-00-00', 'Adaeze', 'Grace', 'Ekwubiri', '0000-00-00', '', 'SSS', 2, '', 'Science', 'SSS', '2', 'Science', '2022/2023', '', 0, 'Female', '', '', '', '', '', '1 tunjiladipo O', '', 'Isikwato', 'Abia', 'Nigeria', '', '', '', 'images/student_import_pics/SSS450.jpg', '', 'Ekwubiri', '', '', '', '', '', '', '', '', 'Mr Obinna Ekwubiri', '8037927323', 'Business man', 'Mrs Nneka Ekwubiri ', '9094047234', 'Entrepreneur', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-04-21 09:53:07', '0000-00-00 00:00:00'),
(356, 'SS0576', '', '0000-00-00', 'Chinonso', 'Deborah', 'Onyeberechi', '2008-03-01', '', 'SSS', 2, '', 'Science', 'SSS', '2', 'Science', '2022/2023', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '12 Ifechukwu St', '', 'Obowo', 'Imo', '', '', '', '', 'images/student_import_pics/SSS451.jpg', '', 'Onyeberechi', '', '12,ifechukwu street bokno ', '', 'Simidschool421@gmail.com', '08035365252', '08035365252', 'Parents ', '', 'Mr Leonard Uzochukwu', '8035365252', 'Trader', 'Mrs Chioma Onyeberechi', '8020999881', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 13:29:04', '0000-00-00 00:00:00');
INSERT INTO `registered_students` (`id`, `student_admission_number`, `password`, `student_admission_date`, `student_firstname`, `student_middlename`, `student_lastname`, `student_dob`, `height`, `class`, `level`, `class_number`, `department`, `current_class`, `current_level`, `current_department`, `current_year`, `graduated`, `avg_sc`, `student_gender`, `student_bloodgroup`, `student_birthplace`, `student_nationality`, `student_mothertongue`, `student_religion`, `student_address1`, `student_address2`, `student_lga`, `student_state`, `student_country`, `student_phone`, `student_mobile`, `student_email`, `student_photo`, `guardian_phone`, `guardian_name`, `guardian_city`, `guardian_address`, `guardian_state`, `guardian_email`, `guardian_country`, `guardian_mobile`, `guardian_relation`, `guardian_occupation`, `father_name`, `father_mobile`, `fathers_occupation`, `mother_name`, `mother_mobile`, `mother_occupation`, `hostel_room`, `hostel_registration_date`, `hostel_vacating_date`, `inoculation_taken`, `inoculation_not_taken`, `infectious_disease`, `infections_disease_have`, `suffer`, `suffer_from`, `last_form_token`, `created_at`, `updated_at`) VALUES
(357, 'SS0573', '', '0000-00-00', 'David', 'Chukwuebuka', 'Agu', '2009-10-13', '', 'SSS', 2, '', 'Science', 'SSS', '3', 'Science', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '44 Fadu avenue ', '', 'Ukpo dunokofia', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS452.jpg', '', 'Agu', '', '44,fadu avenue pipe line ', '', 'Simidschool421@gmail.com', '08038130425', '08038130425', 'Parents', '', 'Mr Chinedu Agu', '8033251783', 'Transport Driver', 'Mrs Evelyn Agu', '8038130425', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(358, 'SS0583', '', '0000-00-00', 'Dideoluwa', 'Erioluwa', 'Emmanuel', '2008-10-27', '', 'SSS', 2, '', 'Science', 'SSS', '3', 'Science', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '19 Oba disu ain', '', 'Oriade', 'Osun', '', '', '', '', 'images/student_import_pics/SSS453.jpg', '', 'Emmanuel', '', '19,oba disu aina', '', 'Simidschool421@gmail.com', '08066662233', '08066662233', 'Parents ', '', 'Mr Femi Emmanuel', '8066662222', 'Engineer', 'Mrs Kemi Emmanuel', '8066662233', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(359, 'SS0586', '', '0000-00-00', 'Emmanuel', 'Onyedikachi', 'Igbokwe', '2007-06-23', '', 'SSS', 2, '', 'Art', 'SSS', '3', 'Art', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '3,Mayowa Close', '', 'Idemiri South', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS454.jpg', '', 'Igbokwe', '', '3,mayowa close', '', 'Simidschool421@gmail.com', '08039324788', '08039324788', 'Parents', '', 'Mr Chukuma Igbokwe', '8039324788', 'Business man', 'Mrs theresa Igbokwe', '8039324788', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(360, 'SS0574', '', '0000-00-00', 'Olivia', 'Measoma', 'Osuji', '2007-05-08', '', 'SSS', 2, '', 'Art', 'SSS', '3', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '32, Lawrence st', '', 'Idemiri South', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS455.jpg', '', 'Osuji', '', '32, Lawrence street ejigbo ', '', 'Simidschool421@gmail.com', '07031691149', '07031691149', 'Parents ', '', 'Mr Ernest Osuji', '8130409035', 'Business man', 'Mrs Mariam Ejindu', '7031691149', 'Accountant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(361, 'SS0569', '', '0000-00-00', 'Maryjane', 'Chinasa', 'Godwin', '2006-10-04', '', 'SSS', 2, '', 'Art', 'SSS', '3', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '14 Daleko Nnpc ', '', 'Orumba South', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS456.jpg', '', 'Godwin', '', '14,daleko nnpc road ejigbo ', '', 'Simidschool421@gmail.com', '08064105031', '08064105031', 'Parents', '', 'Mr Igwilo Ikenna', '8037956249', 'Business man', 'Mrs Emmanuella Igwilo', '7030380787', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:33:28', '0000-00-00 00:00:00'),
(362, 'SSS457', '', '0000-00-00', 'Odunayo', 'Deyon', 'Whensu', '0000-00-00', '', 'SSS', 2, '', '', 'SSS', '2', '', '2022/2023', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'images/student_import_pics/SSS457.jpg', '', '', '', '', '', '', '', '', '', '', 'Mr Samuel Sewedo Whensu', '8029437443', 'Public Servant', 'Mrs Esther Whensu', '8057399422', 'Self Employed', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-04-25 10:49:04', '0000-00-00 00:00:00'),
(363, 'SS0061', 'SS0@61', '0000-00-00', 'Anaabel', 'Chinduito', 'Ogechukwu', '2020-04-06', '', 'LANGUAGE DEVELOPMENT', 1, 'Daisy', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'female', '', 'Lagos ', 'Nigeria', '', 'Christian ', '12,Techo way Ma', '', 'Nakanu East', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS001.jpg', '', 'Ogechukwu', '', '12,Techo way, Mafo ', '', 'simidschools421@gmail.com ', '07063700040/08039213720', '07063700040/', 'Parents ', '', 'Ogechukwuani', '8039213720', 'Logistic', 'Grace Ani', '7063700040', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(364, 'SS0077', 'SS0@77', '0000-00-00', 'Emmanuel', 'Adegboyaga', 'Daini', '2018-07-22', '', 'LANGUAGE DEVELOPMENT', 1, 'Daisy ', 'Commercial', 'NURSERY', '1', 'Commercial', '2023/2024', '', 0, 'Male', '', 'Lagos ', 'Nigeria', '', 'Christian ', 'No 16,saka stre', '', 'Ishoyin', 'Ogun', '', '', '', '', 'images/student_import_pics/SSS002.jpg', '', 'Daini', '', '16,saka street lafenwa ', '', 'simidschools421@gmail.com ', '07066172742', '07066172742', 'Parents ', '', 'Olarewaju ', '9032403741', 'Civil Servant', 'Anuluuwapo', '7066172742', 'Nurse', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:18:43', '0000-00-00 00:00:00'),
(365, 'SS0044', 'SS0@44', '0000-00-00', 'imisiola', 'Gabriel', 'Dauda', '2019-10-10', '', 'LANGUAGE DEVELOPMENT', 1, 'Daisy ', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'Male', '', 'Lagos ', 'Nigeria', '', 'Christian ', '23,sumonu Anmas', '', 'Lagos', 'Awori', '', '', '', '', 'images/student_import_pics/SSS003.jpg', '', 'Dauda', '', '23,sumonu Animashaun', '', 'simidschools421@gmail.com ', '08033922497', '08033922497', 'Parents ', '', 'Olayemi dauda', '9041200005', '', 'Titilayo duada', '9065541080', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(366, 'SS0049', 'SS0@49', '0000-00-00', 'Lucheele', 'Chisom ', 'Godson', '2020-01-27', '', 'LANGUAGE DEVELOPMENT', 1, 'Daisy ', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'female', '', 'Lagos ', '', '', '', '26,Agbede Stree', '', 'Umauhia North', 'Abia', '', '', '', '', 'images/student_import_pics/SSS004.jpg', '', 'Godson', '', '26,Agbede street ', '', 'simidschools421@gmail.com ', '08092120429', '08092120429', 'Parents ', '', 'Godson Inesinulo', '7062528227', 'Trader', 'Blessing Sunday', '8092120429', 'Virtual Assistant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(368, 'SS0078', 'SS0@78', '0000-00-00', 'Rahmat', 'Gbemisola', 'Adeyemi', '2019-12-30', '', 'LANGUAGE DEVELOPMENT', 1, 'Daisy ', 'Commercial', 'NURSERY', '1', 'Commercial', '2023/2024', '', 0, 'female', '', 'Lagos ', 'Nigeria', '', 'Christian ', '7, Sabitu Burai', '', 'Abeokuta North', 'Ogun State', '', '', '', '', 'images/student_import_pics/SSS006.jpg', '', 'Adeyemi', '', '7,Sabitu Burai street ', '', 'simidschools421@gmail.com ', '08069245450/07035845574', '08069245450/', 'Parents ', '', 'Adeyemi Ayoola Akeem', '8069245450', 'Civil Engineer', 'Adeyemi Funmilayo', '7035845574', 'cicil servant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:18:43', '0000-00-00 00:00:00'),
(369, 'SS0048', 'SS0@48', '0000-00-00', 'Melvin', 'Andrew', 'Prince', '2019-07-08', '', 'LANGUAGE DEVELOPMENT', 1, 'Daisy ', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'Male', '', 'Lagos ', 'Nigeria', '', 'Christian ', '19,iwamimo stre', '', 'Obubra', 'Cross river ', '', '', '', '', 'images/student_import_pics/SSS007.jpg', '', 'Prince', '', 'Iwamimo street ', '', 'simidschools421@gmail.com ', '08103343854/09063923140', '08103343854/', 'Parents ', '', 'Prince', '8103343854', '', 'Bridget', '8103343854', 'Caterer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(370, 'SS0062', 'SS0@62', '0000-00-00', 'Ifunaya', 'Annabel', 'Eze', '2019-11-20', '', 'LANGUAGE DEVELOPMENT', 1, 'Daisy ', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'female', '', 'Lagos ', 'Nigeria', '', 'Christian ', '15,Wahab close ', '', 'Igbe eze north', 'Enugu', '', '', '', '', 'images/student_import_pics/SSS008.jpg', '', 'Mr and Mrs Eze', '', '16,wahab close ', '', 'simidschools421@gmail.com ', '07032498029', '07032498029', 'Parents ', '', 'Martins', '7066541204', 'Business', 'Loveth', '7032498029', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(371, 'SS0072', 'SS0@72', '0000-00-00', 'Chibueze', 'Desmond ', 'Onwuka', '2019-10-04', '', 'LANGUAGE DEVELOPMENT', 1, 'Daisy ', 'Commercial', 'NURSERY', '1', 'Commercial', '2023/2024', '', 0, 'Male', '', 'Lagos ', 'Nigeria', '', 'Christian ', '7,Anuoluwapo Ej', '', '', 'Imo', '', '', '', '', 'images/student_import_pics/SSS009.jpg', '', 'Onwuka', '', '7, Anuoluwapo street ', '', 'simidschools421@gmail.com ', '09066214821', '09066214821', 'Parents ', '', 'Onwuka', '8068346598', 'Sales representative', 'Ozioma ', '9066621482', 'Trading', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:18:43', '0000-00-00 00:00:00'),
(373, 'SS0067', 'SS0@67', '0000-00-00', 'Oluwadarasimi', 'Joy', 'Oladele', '2020-06-09', '', 'LANGUAGE DEVELOPMENT', 1, 'Daisy ', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'female', '', 'Lagos ', 'Nigeria', '', 'Christian ', '3/5DisuAina_Efo', '', 'Atakumosa east', 'Osun', '', '', '', '', 'images/student_import_pics/SSS011.jpg', '', 'Oladele', '', '3/5DisuAina_Efon street ', '', 'simidschools421@gmail.com ', '08110260228/08063261729', '08110260228/', 'Parents ', '', 'Bamidele', '08063261729', 'Civil Servant', 'Yetunde', '08110260228', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(374, 'SS0047', 'SS0@47', '0000-00-00', 'Oluwatimileyin', 'Issac', 'Ayeni', '2020-06-20', '', 'LANGUAGE DEVELOPMENT', 1, 'Daisy ', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'male', '', 'Lagos ', 'Nigeria', '', 'Christian ', '27,sonmonu  Ani', '', 'Ado', 'Ekiti', '', '', '', '', 'images/student_import_pics/SSS012.jpg', '', 'Ayeni', '', '27sunmonu Animashaun street ', '', 'simidschools421@gmail.com ', '08032392814/08132776024', '08032392814/', 'Parents ', '', 'Aderemi', '08032392814', 'Fleet Manager', 'Precious', '08132776024', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(375, 'SS0056', 'SS0@56', '0000-00-00', 'Excel', 'Paul', 'Umoh ', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'Male', '', 'Lagos', 'Nigeria', '', 'Christian', 'No 3,dauda stre', '', 'Ini ', 'Akwa- Ibom', '', '', '', '', 'images/student_import_pics/SSS013.jpg', '', 'Umoh ', '', '3,dauda street', '', 'Simidschools 421@gmail.com', '09065403869', '09065403869', 'Mr and Mrs umoh', '', 'Paul Umoh', '9065403869', 'Pastor', 'Joyce Paul Umoh', '07038010926', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(376, 'SS0069', 'SS0@69', '0000-00-00', 'Obaloluwa', 'Rufus', 'Fagbayi', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christian', 'No 12,suleisha ', '', 'Alimosho', 'Ondo', '', '', '', '', 'images/student_import_pics/SSS014.jpg', '', 'Fagbayi', '', 'No12, suleisha street', '', 'Simidschools 421@gmail.com', '08050417442,0813096139', '08050417442,', 'Mr and Mrs fagbayi', '', 'Oluwaseunfunmi', '8062927528', 'Enginner', 'Oluwafunmilayo', '08130961398', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(377, 'SS0080', 'SS0@80', '0000-00-00', 'Faith', 'Hezekiah', 'Akpan ', '2020-05-06', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', 'Commercial', 'NURSERY', '1', 'Commercial', '2023/2024', '', 0, 'female', '', '', 'Nigeria', '', 'Christian', '27, caroline st', '', 'NSIT IBOM', 'Akwa- Ibom', '', '', '', '', 'images/student_import_pics/SSS015.jpg', '', 'Akpan ', '', '27, Caroline street', '', 'Simidschools 421@gmail.com', '07085206051', '07085206051', 'Mr and Mrs Hezekiah', '', 'Hezikiah Akpan', '8100750316', 'Business', 'Veronica Hezekiah', '7085206051', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:18:43', '0000-00-00 00:00:00'),
(378, 'SSS016', 'SSS@16', '0000-00-00', 'Enoch', 'Oluwadamipe', 'Ajayi', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian', '24, Ifelodun Ej', '', 'Irepodun', 'Ekiti', '', '', '', '', 'images/student_import_pics/SSS016.jpg', '', 'Ajayi', '', '24,ifelodun street', '', 'Simidschools 421@gmail.com', '08169072703', '08169072703', 'Mr and Mrs Ajayi', '', 'Ajayi oluwasegun John', '8105554217', 'Operation manager', 'Ajayi Tobi Abosede', '8187586270', 'self employed', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(379, 'SS0070', 'SS0@70', '0000-00-00', 'Aniakanabasi', 'Andrea', 'Davis', '2020-06-05', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', 'Commercial', 'NURSERY', '1', 'Commercial', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian', '13,Fadu Avenue ', '', 'Mkpat Enin', 'Akwa- Ibom', '', '', '', '', 'images/student_import_pics/SSS017.jpg', '', 'Davis', '', '15 fadu street', '', 'Simidschools 421@gmail.com', '08112505415', '08112505415', 'Mr and Mrs Davis', '', 'Daniel Davis', '7034721118', 'Business', 'Lilian Davis', '08170525857', 'cicil servant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:18:43', '0000-00-00 00:00:00'),
(380, 'SS0033', 'SS0@33', '0000-00-00', 'Mabub', 'Opeyemi', 'Aborede ', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'Male ', '', '', 'Nigeria', '', 'Christian', 'No 23, dauda il', '', 'Igbo - ora', 'Oyo', '', '', '', '', 'images/student_import_pics/SSS018.jpg', '', 'Aborede ', '', '23 dauda ilo street', '', 'Simidschools 421@gmail.com', '07069033089', '07069033089', 'Mr and Mrs Aborode', '', 'Aborede wasiu', '8126769503', 'Business', 'Aborede Omowunmi', '07069033086', 'Tader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(381, 'SS0071', 'SS0@71', '0000-00-00', 'Obianuju', 'Princess', 'Adiele', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', 'Commercial', 'NURSERY', '1', 'Commercial', '2023/2024', '', 0, 'female', '', '', 'Nigeria', '', 'Christian', 'No4, Alhaji Gan', '', 'Isaila Ngwa South ', 'Abia', '', '', '', '', 'images/student_import_pics/SSS019.jpg', '', 'Adeile', '', '4,Alhaji ganiyu lawal street', '', 'Simidschools 421@gmail.com', '08163748032', '08163748032', 'Mr and Mrs Adiele', '', 'Adeile Chimaobi', '8060948201', 'Lagal Pactioner', 'Adeile Ezinne', '08163748032', 'IT Consultant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:18:43', '0000-00-00 00:00:00'),
(382, 'SS0040', 'SS0@40', '0000-00-00', 'Samuel', 'Ebunoluwa', 'Jegede', '2020-10-10', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian', 'No 2, Irepodun ', '', 'Isolo', 'Ekiti', '', '', '', '', 'images/student_import_pics/SSS020.jpg', '', 'Jegede', '', '2,irepodun close off taiwo', '', 'Simidschools 421@gmail.com', '08094485378', '08094485378', 'Mr and Mrs Jegede', '', 'Jegede Oluwafemi', '8080458119', 'self Employed', 'Jegede Omowunmi', '8094485378', 'Self Employed', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(383, 'SS0039', 'SS0@39', '0000-00-00', 'Momoreoluwa', 'Dorcas', 'Kudojo', '2020-12-06', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'female', '', '', 'Nigeria', '', 'Christian', 'No 4, oluseye m', '', 'Remo', 'Ogun', '', '', '', '', 'images/student_import_pics/SSS021.jpg', '', 'Kudojo', '', '29,dauda ilo street', '', 'Simidschools 421@gmail.com', '08124139035', '08124139035', 'Mr and Mrs kujodo', '', 'Micheal Kudojo', '7033177441', 'Engineer', 'Esther Kudojo', '8124139035', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(384, 'SS0056', 'SS0@56', '0000-00-00', 'Isreal', 'Irede', 'Balogun ', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian', '23,Dauda ilo st', '', 'Ibeju Lekki', 'Lagos', '', '', '', '', 'images/student_import_pics/SSS022.jpg', '', 'Balogun ', '', '23,dauda ilo street', '', 'Simidschools 421@gmail.com', '09066822706', '09066822706', 'Mr and Mrs Balogun', '', 'Oluwasegun Balogun', '8104765597', 'Electrician', 'Damilola Balogun', '9066822706', 'Hair - dresser', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(385, 'SS0041', 'SS0@41', '0000-00-00', 'Adeola', 'Deborah', 'Oladipo', '2020-05-27', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'female', '', '', 'Nigeria', '', 'Christian', '13,saka street ', '', 'Ibadan South east', 'Oyo state', '', '', '', '', 'images/student_import_pics/SSS023.jpg', '', 'Oladipo', '', '41,saka street', '', 'Simidschools 421@gmail.com', '08050417442', '08050417442', 'Mr and Mr Oladipo', '', 'Oladipo Bade Adewunmi', '8050417442', 'Engineer', 'Oladipo Morayo Olabisi', '8179569884', 'Pharmacist Tech', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(386, 'SS0043', 'SS0@43', '0000-00-00', 'Chukwubuikem', 'Victor ', 'Nsofor', '2020-06-20', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian', '43, Dauda ilo S', '', 'Aguata', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS024.jpg', '', 'Nsofor', '', '43,dauda street', '', 'Simidschools 421@gmail.com', '08038152226', '08038152226', 'Mr and Mrs Nsofor', '', 'Nsofor Francis', '8038152226', '', 'Nsofor Assumpta', '916973797', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(387, 'SS0055', 'SS0@55', '0000-00-00', 'Taibat', 'Ajoke', 'Olarinde', '2020-04-06', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'female', '', '', 'Nigeria', '', 'Muslim', '51, Agede Sreet', '', 'Kajola', 'Oyo', '', '', '', '', 'images/student_import_pics/SSS025.jpg', '', 'Olarinde', '', '51,Agbede street', '', 'Simidschools 421@gmail.com', '08032353318', '08032353318', 'Mr and Mrs Olarinde', '', 'Olaride Mojeed', '8032353318', 'Business', 'Olarinde Barakat', '9152559416', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(390, 'SSS0215', '', '0000-00-00', 'Kenechukwu', 'Hilary', 'Patrick ', '2017-04-17', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Male', '', '', '', 'emmanuelaogo@gmail.com', 'Christian ', '9,Lateef Kamoru', '', 'Alimisho', 'Anambra', '', '', '', 'emmanuelaogo@gmail.com', 'images/student_import_pics/SSS028.jpg', '', 'Patrick ', '', '9, Lateef Kamoru Street ', '', 'emmanuelaogo@gmail.com', '07030579682', '07030579682', '', '', 'Velentine', '08066606480', 'Trader', 'Emmanuela', '07030579682', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(408, 'SS0129', '', '0000-00-00', 'Tanitoluwa ', 'David', 'Omogunwa ', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet ', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian', '42 Taiwo street', '', 'Irele LGA', 'Ondo state', '', '', '', '', 'images/student_import_pics/SSS052.jpg', '', 'Omogunwa ', '', 'â´2 taiwo street ', '', 'SimidSchools.com.ng', '08131087041', '08131087041', 'Family ', '', 'Mr Omogunwa Segun', '8034197755', 'public servant ', 'Mrs Omogunwa M', '8131087041', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(409, 'SS0083', '', '0000-00-00', 'Somtochukwu', 'Esther', 'Ezeala', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', 'plot 10, Jola j', '', 'Nwangele', 'Imo state', '', '', '', '', 'images/student_import_pics/SSS053.jpg', '', 'Ezeala', '', 'Jola j', '', 'SimidSchools.com.ng', '08069417454', '08069417454', 'Family ', '', 'Mr Izuchukwu Ezeala ', '7085088222', 'Business ', 'Mrs Ifeoma Ezeala ', '8069417454', 'Fashion designer ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(410, 'SS0114', '', '0000-00-00', 'Olivia', 'Silas ', 'Omaojor', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet ', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '10 chief Adenik', '', 'Esan south east ', 'Edo state', '', '', '', '', 'images/student_import_pics/SSS054.jpg', '', 'Omaojor', '', '10. Chief Adenik', '', 'SimidSchools.com.ng', '08178695019', '08178695019', 'Family ', '', 'Mr Silas Omaojor', '7060898796', 'Engineer ', 'Mrs Destiny Omaojor ', '8178695019', 'fashion designer ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(411, 'SS0167', '', '0000-00-00', 'Evidence ', 'Magrow', 'Timpaul', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '2 sabitu buhari', '', 'Okigwe LGA', 'Imo state ', '', '', '', '', 'images/student_import_pics/SSS055.jpg', '', 'Timpaul', '', '2, Sabitu Buhari', '', 'SimidSchools.com.ng', '07032667500', '07032667500', 'Family ', '', 'Mr Timpaul ', '7032667500', 'Pastor', 'Mrs Prisca Timpaul ', '8023437686', 'Cateerer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:43', '0000-00-00 00:00:00'),
(412, 'SSS056', '', '0000-00-00', 'Destiny ', 'chukwuzaram', 'chukwuemeka ', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '20 kola olukotu', '', 'Ika north East', 'Delta state', 'Nigeria', '', '', '', 'images/student_import_pics/SSS056.jpg', '', 'chukwuemeka ', '', '', '', '', '', '', '', '', 'Mr prince George Usigbe', '8102495721', 'operation ', 'Mrs Ngozi usigbe', '7067409543', 'sole trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(413, 'SS0128', '', '0000-00-00', 'Miracle', 'kisochukwu', 'Nwaozuzu', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '3 Aina close Ej', '', 'Owerri ', 'Imo state ', '', '', '', '', 'images/student_import_pics/SSS057.jpg', '', 'Nwaozuzu', '', '3 Aina close', '', 'SimidSchools.com.ng', '08067011074', '08067011074', 'Family ', '', 'Njuko Nwaozuzu Soko', '9029309072', 'Business ', 'Mrs Ogochukwu Nwaozuzu ', '8067011074', 'business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(414, 'SS0085', '', '2019-05-21', 'Peace ', 'chidera', 'Chukwuemeka ', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '7 murinatu stre', '', 'Ibeku Umuahaia ', 'Abia state', '', '', '', '', 'images/student_import_pics/SSS058.jpg', '', 'Chukwuemeka ', '', '7 murinatu', '', 'SimidSchools.com.ng', '07013359423', '07013359423', 'Family ', '', 'Mr Chukwuemeka ', '8135740533', 'Police Officer', 'Mrs Janet ', '7013359423', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(415, 'SS0125', '', '2019-04-28', 'Sonia', 'Chidera ', 'Godwin', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '14Daleko str NN', '', 'Orumba south', 'Anambra State', '', '', '', '', 'images/student_import_pics/SSS059.jpg', '', 'Godwin', '', '14 Daleko', '', 'SimidSchools.com.ng', '08064105031', '08064105031', 'Family ', '', 'Mr Ikenna Igwilo', '8037956249', 'business ', 'Mrs Emmanuella Igwilo', '7030380787', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(416, 'SS0126', '', '2019-05-24', 'Divine', 'Iyaifa', 'Joseph', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet ', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '8 Ranfu Tijani', '', 'Akoko Edo', 'Edo state', '', '', '', '', 'images/student_import_pics/SSS060.jpg', '', 'Joseph', '', '8 Rafiu tijani', '', 'SimidSchools.com.ng', '07038859554', '07038859554', '', '', 'Mr Joseph Emmanuel ', '8032797266', 'civil servant', 'Mrs Joseph Victoria ', '7038859554', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(417, 'SS0084', '', '0000-00-00', 'chinedu', 'David', 'Chukwunedu', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '21 olushesi', '', 'Orlu', 'Imo state', '', '', '', '', 'images/student_import_pics/SSS061.jpg', '', 'Chukwunedu', '', '21 olusesi', '', 'SimidSchools.com.ng', '08176573009', '08176573009', '', '', 'Mr Agbawodike chinedu', '7038248850', 'Importer', 'Mrs Agbawodike Blessing', '8176573009', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(418, 'SS0116', '', '0000-00-00', 'Daniel ', 'Temitayo', 'Awonuga', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet ', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '10 Wahab close ', '', 'Ijebu North', 'Ogun state ', '', '', '', '', 'images/student_import_pics/SSS062.jpg', '', 'Awonuga', '', '10 wahab', '', 'SimidSchools.com.ng', '08052162420', '08052162420', '', '', 'Mr Awonuga Akindele', '8055424684', 'civil servant ', 'Mrs Awonuga Oluwaseyi', '8052162420', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(419, 'SS0130', '', '0000-00-00', 'Kosisochukwu', 'Victor', 'Ezeifedi', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '11 Wahab close ', '', 'Orsu', 'Imo state', '', '', '', '', 'images/student_import_pics/SSS063.jpg', '', 'Ezeifedi', '', '11 wahab', '', 'SimidSchools.com.ng', '07031195270', '07031195270', '', '', 'Mr Williams Ezeifedi ', '7026122642', 'Business ', 'Mrs Reacheal Ezeifedi ', '7031195270', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(420, 'SS0088', '', '0000-00-00', 'Emmanuel ', 'Desmond ', 'Bodunde', '2019-06-08', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet ', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '45 kola olukotu', '', 'Oye local', 'Ekiti state', '', '', '', '', 'images/student_import_pics/SSS064.jpg', '', 'Bodunde', '', '45 kola kotun', '', 'SimidSchools.com.ng', '08101369892', '08101369892', '', '', 'Mr Bodunde oluwaseyifunmi', '8067613980', 'Engineering', 'Mrs Bodunde Omotola', '8101369892', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(421, 'SS0113', '', '0000-00-00', 'Abdulmuiz ', 'Olamipo', 'Talha', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '4 fayemi str Ej', '', 'Ayedaade', 'Osun state ', '', '', '', '', 'images/student_import_pics/SSS065.jpg', '', 'Talha', '', '4 fayemi', '', 'SimidSchools.com.ng', '08068310040', '08068310040', '', '', 'Mr Sanusi Talha', '8063178117', 'sales Manager', 'Mrs Adeniran Azizat', '8068310040', 'Sales Person', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(422, 'SS0115', '', '0000-00-00', 'kamsiyochukwu', 'jason', 'Nwana', '2018-12-06', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '23 olushesi clo', '', 'Onumba North', 'Anambra state', '', '', '', '', 'images/student_import_pics/SSS066.jpg', '', 'Amarachi Kalu', '', '23 olusesi', '', 'SimidSchools.com.ng', '08036499663', '08036499663', '', '', 'Mr Greg Nwana', '08039626896,', 'Banking', 'Mrs Nwana zina', '080 36499663', 'Fintech specialist ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(423, 'SSS067', '', '0000-00-00', 'Ugochukwu ', 'Brice', 'Augustine ', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '31 Ilufunmi str', '', 'Ngor-Okpala', 'Imo State ', 'Nigeria', '', '', '', 'images/student_import_pics/SSS067.jpg', '', 'Augustine ', '', '', '', '', '', '', '', '', 'Mr chinechere Augustine ', '8185576870', 'business man', 'Mrs blessing Augustine ', '8038520202', 'business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(424, 'SS0019', '', '0000-00-00', 'faiqah', 'tiwalola', 'ajetunmobi ', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet ', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '6 sabihu buhori', '', 'Surulere ', 'lagos state', '', '', '', '', 'images/student_import_pics/SSS068.jpg', '', 'ajetunmobi ', '', '6 sabitu Buhari ', '', 'SimidSchools.com.ng', '08139383969', '08139383969', '', '', 'Mr ajetunmobi Abdul afeez', '', 'civil servants ', 'Mrs omotunde faiqah', '', 'house wife', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(425, 'SS0590', '', '0000-00-00', 'Annabel ', 'chiagoziem', 'Richard ', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '19 owuronmi ape', '', 'Ezinihitte mbaise', 'imo State ', '', '', '', '', 'images/student_import_pics/SSS069.jpg', '', 'Richard ', '', '19 owuronmi', '', 'SimidSchools.com.ng', '08168785775', '08168785775', '', '', 'Mr Richard nzenwa', '9098850614', 'optimization manager', 'Mrs Richard chidimma', '8168785775', 'teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(426, 'SS0588', '', '0000-00-00', 'Ayomipo', 'Daniel ', 'olabanji', '2018-06-17', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '6 aina disu str', '', 'Ondo north ', 'Ondo state', '', '', '', '', 'images/student_import_pics/SSS070.jpg', '', 'olabanji', '', '3 disu Aina efon', '', 'SimidSchools.com.ng', '08169340448', '08169340448', '', '', 'Mr olukayode olabanji', '8020761555', 'property consultant', 'Mrs Eniola  olabanji ', '8169340448', 'Accountant', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(427, 'SS0122', '', '0000-00-00', 'Excel ', 'oluwafiorukoirepemi', 'Sholola', '2019-06-25', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '12 tajudeen ogu', '', 'Ewekoro', 'ogun state', '', '', '', '', 'images/student_import_pics/SSS071.jpg', '', 'Sholola', '', '12 Tajudeen', '', 'SimidSchools.com.ng', '0813053â¶575', '0813053â¶57', '', '', 'Mr oluwaseun sholola', '8030674912', 'Aluminum fabricator', 'Mrs Adebolanle Sholola ', '8130536575', 'fashion designer ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(428, 'SS0108', '', '0000-00-00', 'Mircle', 'Emmanuel ', 'Ofili ', '2019-09-24', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '4 kunle banji O', '', 'Aniocha', 'delta state', '', '', '', '', 'images/student_import_pics/SSS072.jpg', '', 'Ofili ', '', '4 kunle banji', '', 'SimidSchools.com.ng', '08181510965', '08181510965', '', '', 'Mr  Victor Ofili ', '8181510965', 'Business man', 'Mrs Ngozi Ofili', '7089391765', 'trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(429, 'SS0089', '', '0000-00-00', 'Miracle ', 'Chikanyima', 'Anigbogu ', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '50 idimu road E', '', 'Awka south', 'Anambra', '', '', '', '', 'images/student_import_pics/SSS073.jpg', '', 'Anigbogu ', '', '50 idimu road', '', 'SimidSchools.com.ng', '08067966496', '08067966496', '', '', 'Mr Michael Anigbogu', '7064761231', 'Business man', 'Mrs celetina  Anigbogu', '8067966496', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(430, 'SS0123', '', '0000-00-00', 'Marvelous ', 'chinonso', 'Anyanwu', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'male', '', '', '', '', '', '12 Geneuw stree', '', 'Amudele', 'imo', '', '', '', '', 'images/student_import_pics/SSS074.jpg', '', 'Anyanwu', '', '15 Ganiyu str', '', 'Simidschools.com.ng', '07035404583', '07035404583', '', '', 'Mr Emmanuel Anyanwu ', '9137286231', 'Business man', 'Mrs joy Anyanwu ', '7035404583', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(431, 'SS0086', '', '0000-00-00', 'Susan', 'Eniola ', 'Akomolafe ', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '32 Daniel stree', '', 'Alimosho', 'osun state', '', '', '', '', 'images/student_import_pics/SSS075.jpg', '', 'Akomolafe ', '', '32 Daniel str', '', 'SimidSchools.com.ng', '08030777979', '08030777979', '', '', 'Mr  Akomolafe oluwole', '8035903636', 'Civil servants ', 'Mrs Akomolafe Nike', '8030777970', 'civil servants ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(432, 'SS0090', '', '0000-00-00', 'Mirabel ', 'Ebehireme', 'Usigbe', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '20 kola olukotu', '', 'Esan North East ', 'Edo state', '', '', '', '', 'images/student_import_pics/SSS076.jpg', '', 'Usigbe', '', '20 kola olukotun', '', 'Simidschools.com.ng', '07067409543', '07067409543', '', '', 'Mr George Usigbe', '8102495721', 'operator', 'Mrs Ngozi usigbe', '7067409543', 'sole operator ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(433, 'SS0127', '', '0000-00-00', 'chinaza', 'favour ', 'Obinna', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '13 kola olukotu', '', 'uli', 'Anambra state', '', '', '', '', 'images/student_import_pics/SSS077.jpg', '', 'Obinna', '', '13 kola olukotun ', '', 'SimidSchools.com.ng', '08067586231', '08067586231', '', '', 'Mr  Obinna Obi', '8066204906', 'Business man ', 'Mrs Obinna ifeoma', '8100827851', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(434, 'SS0092', '', '0000-00-00', 'Angel', 'Nneoma', 'Odigbo', '2019-08-08', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '20 kola olukotu', '', 'ihialu', 'Anambra state', '', '', '', '', 'images/student_import_pics/SSS078.jpg', '', 'Odigbo', '', '20 kola olukotun ', '', 'SimidSchools.com.ng', '08147824129', '08147824129', '', '', 'Mr Obinna Odigbo ', '8064162568', 'Business man', 'Mrs Oluchi Odigbo ', '9028645197', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(435, 'SS0117', '', '0000-00-00', 'Sesede ', 'Elizabeth ', 'Asokere', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '21 mike ogunrou', '', 'Badagry', 'Lagos state ', '', '', '', '', 'images/student_import_pics/SSS079.jpg', '', 'Asokere', '', '21 mike ogunro', '', 'SimidSchools.com.ng', '08075657992', '08075657992', '', '', 'Mr Sunday Asokere ', '8026947549', 'Self employed ', 'Mrs Joke Asokere ', '8075657992', 'civil servants ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(436, 'SS0087', '', '0000-00-00', 'Bright', 'chigozirim', 'Chukwudi', '2019-07-07', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'male ', '', '', '', '', '', '19 Chemist bus ', '', 'umunneochi', 'Abi state', '', '', '', '', 'images/student_import_pics/SSS080.jpg', '', 'Chukwudi', '', '19 chemist bus stop', '', 'SimidSchools.com.ng', '08068048143', '08068048143', '', '', 'Mr okorie Chukwudi ', '8068048143', 'civil servants ', 'Mrs Nkeiruka Chukwudi ', '7039027023', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(437, 'SS0099', '', '0000-00-00', 'joy', 'imuwahen', 'Osagie', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'female', '', '', '', '', '', '4  omon osaigbo', '', 'Uhunwonda', 'Edo state ', '', '', '', '', 'images/student_import_pics/SSS081.jpg', '', 'Osagie', '', '4 omon str', '', 'Simidschools.com.ng', '08032974674', '08032974674', '', '', 'Mr Daniel Osagie', '8023990102', 'Business Man ', 'Mrs Happiness Osagie ', '8023974674', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(438, 'SS0124', '', '0000-00-00', 'increase ', 'Desire', 'Olajorin', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male ', '', '', '', '', '', '19 owuronmi Ape', '', 'ipokia', 'Ogun state', '', '', '', '', 'images/student_import_pics/SSS082.jpg', '', 'Olajorin', '', '19 owuronmi ', '', 'SimidSchools.com.ng', '08189673264', '08189673264', '', '', 'Mr  Olaoluwa', '7056167042', 'civil servants ', 'Mrs Olajorin Kanyinsola', '9056017928', 'Make up Artist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(439, 'SSS083', '', '0000-00-00', 'Precious ', 'Hezekiah ', 'Akpan', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '27, Caroline Od', '', 'NSTI Ibom', 'Akwa Ibom', 'Nigeria', '', '', 'Hezekiah akpan 494@g.mail', 'images/student_import_pics/SSS083.jpg', '', 'Akpan', '', '', '', '', '', '', '', '', 'Mr Hezekiah Akpan ', '8100750316', 'Business ', 'Hezekiah Veronica ', '7085206051', 'Teaching ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(440, 'SSS084', '', '0000-00-00', 'Emmanuella ', 'Oluwaferanmi', 'Obaniyi', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '6, Jubril Olabi', '', 'Iwajowa ', 'Oyo ', 'Nigeria', '', '', '', 'images/student_import_pics/SSS084.jpg', '', 'Obaniyi', '', '', '', '', '', '', '', '', 'Mr Obaniyi Lawrence ', '8067672902', 'Transporter ', 'Obaniyi Mary ', '8135517393', 'Business Woman.', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(441, 'SSS085', '', '0000-00-00', 'Ruth ', 'Munachimso ', 'Ugwuanyi', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '11, Wahab Close', '', 'Nsukka ', 'Enugu ', 'Nigeria', '', '', '', 'images/student_import_pics/SSS085.jpg', '', 'Ugwuanyi', '', '', '', '', '', '', '', '', 'Mr Ugwuanyi Chijoke', '8033455673', 'Business man', 'Ugwuanyi Maureen ', '8062750734', 'Business Woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(442, 'SSS086', '', '0000-00-00', 'Chizaram', 'Michelle ', 'Maduako', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '14, Nnpc Rd  Ej', '', 'Igbo Eze North ', 'Enugu ', 'Nigeria', '', '', 'MADUAKO AFAM@GMAIL', 'images/student_import_pics/SSS086.jpg', '', 'Maduako', '', '', '', '', '', '', '', '', 'Mr Maduako Afam', '8031504449', 'Trading ', 'Maduako Faith ', '7062496258', 'Trading ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(443, 'SSS087', '', '0000-00-00', 'Mmesomachi', 'Joy ', 'Nkere', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '48 kola olukotu', '', 'Isuikwuato', 'Abia ', 'Nigeria', '', '', '', 'images/student_import_pics/SSS087.jpg', '', 'Nkere', '', '', '', '', '', '', '', '', 'Mr Nkere Ugoji Kingsley ', '8035653299', 'business man', 'Nkere charity', '9169717300', 'trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(444, 'SSS088', '', '0000-00-00', 'praise', 'Chimmamanda', 'Monday', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '21 Adeshina str', '', 'Ikwo', 'Ebonyi state', 'Nigeria', '', '', '', 'images/student_import_pics/SSS088.jpg', '', 'Monday', '', '', '', '', '', '', '', '', 'Mr Monday Nwedo', '8030750931', 'business man ', 'Mrs Comfidence Monday', '9135514110', 'business Woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(445, 'SSS089', '', '0000-00-00', 'Faithia', 'Ajoke', 'Agbede', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '8 kajola str Ej', '', 'Oshodi Isolo', 'Lagos state', 'Nigeria', '', '', '', 'images/student_import_pics/SSS089.jpg', '', 'Agbede', '', '', '', '', '', '', '', '', 'Mr Kazeem Agbedi ', '8130854335', 'business Manager ', 'Mrs Mujidat Agbede', '7039957033', 'trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(446, 'SSS090', '', '0000-00-00', 'Divine', 'Bryan', 'Ukwuoma', '2043-06-06', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '26 Chris Oladim', '', 'Nakede ', 'Imo state', 'Nigeria', '', '', '', 'images/student_import_pics/SSS090.jpg', '', 'Ukwuoma', '', '', '', '', '', '', '', '', 'Mr Ukwuoma Kingsley ', '9038063600', 'civil servant ', 'Mrs Ukwuoma Chioma', '8133058535', 'civil servant ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(447, 'SSS091', '', '0000-00-00', 'Patrick ', 'Emmanuel ', 'chukwuebuka', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', 'Folawewo 7 Ejig', '', 'obingwa', 'Abia state ', 'Nigeria', '', '', '', 'images/student_import_pics/SSS091.jpg', '', 'chukwuebuka', '', '', '', '', '', '', '', '', 'Mr Patrick Godspower', '8034747774', 'business Man', 'Mrs Patrick Ejiro', '7036284694', 'business Woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(448, 'SSS092', '', '0000-00-00', 'chukuwka', 'Andrea ', 'Jubilee ', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male ', '', '', '', '', '', '41, daudu  ilor', '', 'Ika ', 'Delta state ', 'Nigeria', '', '', '', 'images/student_import_pics/SSS092.jpg', '', 'Jubilee ', '', '', '', '', '', '', '', '', 'Mr Jubilee ', '', 'business man ', 'Mrs Jubilee ', '7068576492', 'business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(449, 'SSS093', '', '0000-00-00', 'Enoch ', 'Jesulariyo ', 'Fadahunsi', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male ', '', '', '', '', '', '14, Olusesi clo', '', 'Oshodi lsolo ', 'Ondo state ', 'Nigeria', '', '', '', 'images/student_import_pics/SSS093.jpg', '906331622', 'Mrs Aina', '', '', '', '', '', '', '', '', 'Fadahunsi Oluwafemi', '7032304878', 'Business ', 'Mrs Fadahunsi Oluwatoyin', '9071667243', 'Area Sales Manager ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(450, 'SSS094', '', '0000-00-00', 'kachisico', 'Terah ', 'Ikpeogu', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male ', '', '', '', '', '', '7, Disu Ainu Ep', '', 'Ohagwu East', 'Ebonyi state ', 'Nigeria', '', '', '', 'images/student_import_pics/SSS094.jpg', '', 'Mrs Omoudu Juliana ', '', '', '', '', '', '', '', '', 'Ikpeogu Baron ', '', 'Banker', 'Mrs Omoudu Paulina ', '07037066374,', 'cook ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(451, 'SSS095', '', '0000-00-00', 'Muhammad ', 'Ayinde ', 'Adullateef ', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, '', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male ', '', '', '', '', '', '10, Fedu Ave Ec', '', 'Iwajowa ', 'Oyo State ', 'Nigeria', '', '', '', 'images/student_import_pics/SSS095.jpg', '', 'Adullateef ', '', '', '', '', '', '', '', '', 'Mr Abdullateef Taiwo ', '08166673360,', 'Freight Forwarder ', 'Mrs Abdullateef Ganiyat ', '07055497628,', 'Business woman ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(452, 'SS0013', '', '0000-00-00', 'Sophia', 'Adaeze', 'Amah', '2021-03-24', '', 'PRE-SCHOOL', 1, 'Daisy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '6, Hon Jimoh Oj', '', '', '', '', '', '', '', '', '', 'Mr &Mrs Amah', '', '6, Hon Jimoh Ojugbele Crescent, off Idimu', '', 'simidschools421@gmail.com', '07030570398', '07030570398', 'Parent', '', '', '07030570398', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(453, 'SS0009', '', '0000-00-00', 'Obichukwu ', 'David ', 'Chiamaka ', '2021-10-22', '', 'PRE-SCHOOL', 1, '', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '2, Fadun Avenue', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Chiamaka ', '', '2, Fadun Avenue ', '', 'simidschools421@gmail.com', '08162593722', '08162593722', '', '', '', '08134815348', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(454, 'SS0024', '', '0000-00-00', 'Michael ', '', 'Ezeifedi ', '2021-04-25', '', 'PRE-SCHOOL', 1, 'Violet', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '11, Wahab close', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Ezeifedi ', '', '11, Wahab close', '', 'simidschools421@gmail.com', '07031195270', '07031195270', '', '', '', '07031195270', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(455, 'SS0463', 'SS0@63', '0000-00-00', 'Wisdom ', 'Izuchukwu', 'Anyasodor', '2012-03-12', 'estheranyasodor@gmail.com', 'JSS', 1, 'Rose', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', 'estheranyasodor@gmail.com', 'Christianity ', '36 Apana street', '', 'Owerri West', 'Imo state ', '', '', '', 'estheranyasodor@gmail.com', '', '', 'Mrs Anyasodor ', '', '36 Apana street Ejigbo Lagos ', '', 'estheranyasodor@gmail.com', '08066417440', '08066417440', '', '', 'Mr. Francis Anyasodor ', '08034939530', 'Business man', 'Mrs. Anyasodor ', '08066417440', 'Teaching ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-02 09:50:14', '0000-00-00 00:00:00');
INSERT INTO `registered_students` (`id`, `student_admission_number`, `password`, `student_admission_date`, `student_firstname`, `student_middlename`, `student_lastname`, `student_dob`, `height`, `class`, `level`, `class_number`, `department`, `current_class`, `current_level`, `current_department`, `current_year`, `graduated`, `avg_sc`, `student_gender`, `student_bloodgroup`, `student_birthplace`, `student_nationality`, `student_mothertongue`, `student_religion`, `student_address1`, `student_address2`, `student_lga`, `student_state`, `student_country`, `student_phone`, `student_mobile`, `student_email`, `student_photo`, `guardian_phone`, `guardian_name`, `guardian_city`, `guardian_address`, `guardian_state`, `guardian_email`, `guardian_country`, `guardian_mobile`, `guardian_relation`, `guardian_occupation`, `father_name`, `father_mobile`, `fathers_occupation`, `mother_name`, `mother_mobile`, `mother_occupation`, `hostel_room`, `hostel_registration_date`, `hostel_vacating_date`, `inoculation_taken`, `inoculation_not_taken`, `infectious_disease`, `infections_disease_have`, `suffer`, `suffer_from`, `last_form_token`, `created_at`, `updated_at`) VALUES
(456, 'SS0011', '', '0000-00-00', 'Angel', 'Mmesoma ', 'Peter', '2021-06-29', '', 'PRE-SCHOOL', 1, 'Violet', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '27, Caroline, E', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Mmesoma ', '', '27, Caroline, Ejigbo ', '', 'simidschools421@gnail.com', '08087717645', '08087717645', '', '', '', '07081798267', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(457, 'SS0003', '', '0000-00-00', 'Joseph ', '', 'Dauda', '2021-03-11', '', 'PRE-SCHOOL', 1, 'Lilly', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '23, Animashahun', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Dauda ', '', '23, Animashahun Street ', '', 'simidschools412@gmail.com', '09065541080', '09065541080', '', '', '', '09065541080', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(458, 'SS0522', '', '0000-00-00', 'Precious ', '', 'Aboke', '2010-10-04', '', 'JSS', 3, 'Zinnia', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian', '17, Ilufunmi ', '', '', '', '', '', '', '', '', '', 'Aboke', '', '17, Ilufunmi', '', 'Simidschool421@gmail.com', '08117671090', '08117671090', '', '', 'Mr Aboke', '08011767109', '', 'Mrs Aboke', '080277440291', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(459, 'SS0031', '', '0000-00-00', 'Imisioluwa ', 'Divine ', 'Obanufin', '2021-06-10', '', 'PRE-SCHOOL', 1, 'Violet', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '6, Sabitu Buhar', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Obanufin', '', '6, Sabitu Buhari Street', '', 'simidschools412@gmail.com', '08130000414', '08130000414', '', '', '', '08130000414', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(460, 'SSO524', '', '0000-00-00', 'Benedicta', '', 'Azike', '2009-09-19', '', 'JSS', 3, 'Zinnia', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '34, Araromi', '', '', '', '', '', '', '', '', '', 'Mr Azike', '', '34, Araromi', '', 'Simidschool421@gmail.com', '08035761179', '08035761179', '', '', 'Mr Azike', '08035761179', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(461, 'SS0015', '', '0000-00-00', 'Emmanuel ', '', 'Oladipo', '2021-03-07', '', 'PRE-SCHOOL', 1, 'Daisy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '11, Olufunmi Am', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Oladipo ', '', '11, Olufunmi Amida ', '', 'simidschools421@gmail.com', '08122006456', '08122006456', '', '', '', '08028406904', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(462, 'SS0029', '', '0000-00-00', 'Demian', '', 'Godwin', '2021-04-08', '', 'PRE-SCHOOL', 1, 'Violet', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '14, Daleko Road', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Godwin', '', '14, Daleko Road, NNPC', '', 'simidschools421@gmail.com', '08164105031', '08164105031', '', '', '', '08164105031', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(463, 'SS0527', '', '0000-00-00', 'Ezichim', 'Gracious ', 'Francis', '2010-07-07', '', 'JSS', 3, 'Zinnia', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '11, Owuromi Ape', '', 'Ohozara', 'Ebonyi', '', '', '', '', '', '', 'Mrs Ezichim', '', '11, Owuromi Apena', '', 'Simidschool421@gmail.com', '08063452567', '08063452567', '', '', 'Mr Francis ', '08063452567', 'Business man', 'Mrs Francis ', '08063452567', 'Teacher ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(464, 'SS0521', '', '0000-00-00', 'Trust', 'Esther', 'Ayanda', '2009-06-08', '', 'JSS', 3, 'Zinnia', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '10, Areola Alma', '', '', '', '', '08087152336', '', '', '', '', 'Mrs Ayanda', '', '10, Areola Almoroof', '', 'Simidschool421@gmail.com', '08087152336', '08087152336', '', '', 'Mr Ayanda ', '08033828413', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(465, 'SS0526', '', '0000-00-00', 'Daniel ', 'Tochukwu', 'Victor', '2010-06-14', '', 'JSS', 3, 'Zinnia', '', 'SSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian ', '5, Olusoga', '', '', '', '', '', '', '', '', '', 'Mr Victor', '', '5, Olusoga', '', 'Simidschool421@gmail.com', '08033053031', '08033053031', '', '', 'Mr victor', '08033053031', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(466, 'SS0534', '', '0000-00-00', 'Fathia', 'Opeyemi', 'Ariyo', '2010-01-12', '', 'JSS', 3, 'Zinnia', '', 'JSS', '3', '', '2022/2023', '', 0, 'Female', '', '', 'Nigeria', '', 'Muslim', 'Jubril Olabisi', '', '', '', '', '', '', '', '', '', 'Mrs Ariyo', '', 'Jubril Olabisi', '', 'Simidschool421@gmail.com', '08092735906', '08092735906', '', '', 'Mr Ariyo', '08092735906', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 13:46:12', '0000-00-00 00:00:00'),
(467, 'SS0513', '', '0000-00-00', 'Wisdom', 'Rex', 'Timpaul', '2011-01-20', '', 'JSS', 3, 'Zinnia', '', 'SSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian ', '7, sabitu buhar', '', 'Okigwe', 'Imo', '', '', '', '', '', '', 'Mr Timpaul', '', 'Ile iwe', '', 'Simidschool421@gmail.com', '08108021338', '08108021338', '', '', 'Mr Timpaul', '08108021338', 'Pastor ', 'Mrs Prisca Timpaul', '08108021338', 'Caterer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(468, 'SS0520', '', '0000-00-00', 'Oyinkansola', 'Priscilla ', 'Ojelabi', '2011-11-05', '', 'JSS', 3, 'Zinnia', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian', '20/22 Sumonu An', '', 'Obokun', 'Osun', '', '', '', '', '', '', 'Mr Ojelabi', '', '20/22 Sunmonu Animashaun', '', 'Simidschool421@gmail.com', '08029019181', '08029019181', '', '', 'Mr Ojelabi', '08029019181', 'Factory worker ', 'Mrs Ojelabi', '08032072276', 'Nurse', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(469, 'SS0512', '', '0000-00-00', 'Blessing ', 'Opeyemi', 'Adelakun', '2008-04-25', '', 'JSS', 3, 'Zinnia', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '8, Kola olukotu', '', 'Akinyele', 'Oyo', '', '', '', '', '', '', 'Mrs Adelakun', '', 'Ejigbo', '', 'Simidschool421@gmail.com', '08039609922', '08039609922', '', '', 'Mr Adelakun', '08039609922', '', 'Mrs Adelakun', '08039609922', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(470, 'SS0518', '', '0000-00-00', 'Choioma', 'Deborah', 'Erege', '2010-08-01', '', 'JSS', 3, 'Zinnia', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '11, Chris oladu', '', '', '', '', '', '', '', '', '', 'Mr Erege', '', '11,', '', 'Simidschool421@gmail.com', '07085554631', '07085554631', '', '', 'Mr Erege Patrik', '07085554631', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(471, 'SS0028', '', '0000-00-00', 'Goodnews ', '', 'Onu', '2021-02-21', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Male', '', 'Lagos ', '', '', 'Christain ', '35, Abeokuta st', '', 'simidschools421@gmail.com', 'Lagos', '', '', '', '', '', '', 'Mr and Mrs onu', '', '35, Abeokuta street,idimu', '', 'simidschools421@gmail.com', '09046316496', '09046316496', '', '', 'Mr Onu', '09046316496', '', 'Mrs Onu', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(472, 'SS0529', '', '0000-00-00', 'Dominic', '', 'Nnabuenyi', '2010-11-01', '', 'JSS', 3, 'Zinnia', '', 'SSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian', '7, Osaigbevou', '', '', '', '', '', '', '', '', '', 'Mr Nnabuenyi', '', '7, Osaigbevou', '', 'Simidschool421@gmail.com', '08166323603', '08166323603', '', '', 'Mr NNabuenyi', '08166323603', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(473, 'SS0517', '', '0000-00-00', 'Beulah', 'Oluebubechukwu', 'Patrick', '2010-04-22', '', 'JSS', 3, 'Zinnia', '', 'SSS', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '57/59 Caroline', '', '', '', '', '', '', '', '', '', 'Mr Emeka Patrick', '', '57/59 Caroline', '', 'Simidschool421@gmail.com', '08034016257', '08034016257', '', '', 'Mr Patrick Emeka', '08034016257', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(474, 'SS0017', '', '0000-00-00', 'Anjolaoluwua', 'Victoria ', 'Paul', '2020-12-21', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christain ', '94 idimu road e', '', '', 'Lagos', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs paul', '', '94 idimu road ejigbo ', '', 'simidschools421@gmail.com', '09061281346', '09061281346', '', '', 'Mr paul', '09061381346', '', 'Mrs paul', '08064701880', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(475, 'SS0016', '', '0000-00-00', 'Kendrick ', '', 'Jubilee ', '2020-09-29', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christian ', '41 Dauda illo S', '', '', 'Lagos ', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs jubilee ', '', '41 Dauda illo Street ', '', 'simidschools421@gmail.com', '07068576492', '07068576492', '', '', 'Mr jubilee ', '07068576492', '', 'Mrs jubilee ', '07068576492', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(476, 'SS0012', '', '0000-00-00', 'Chideziri', '', 'Ezeala ', '2021-03-19', '', 'PRE-SCHOOL', 1, 'Violet', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', 'Blotto Block B,', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Ezeala', '', 'Blotto Block B, Jola Jay Estate, Orisunbare ', '', 'simidschools421@gmail.com', '08064701808', '08064701808', '', '', '', '08085088222', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(477, 'SS0020', '', '0000-00-00', 'Awwal', '', 'Olamiposi', '2021-03-16', '', 'PRE-SCHOOL', 1, 'Daisy', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '9, Fayemi Stree', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Olamiposi', '', '9, Fayemi Street, Chemist bus stop', '', 'simidschools421@gmail.com', '09015083036', '09015083036', '', '', '', '09040020026', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(478, 'SS0010', '', '0000-00-00', 'Monica', '', 'Nwaorgu', '2021-05-12', '', 'PRE-SCHOOL', 1, 'Lilly', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '3, Shofunmade S', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Nwaorgu', '', '3, Shofunmade Street', '', 'simidschools421@gmail.com', '07040573062', '07040573062', '', '', '', '09015541742', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(479, 'SS0021', '', '0000-00-00', 'Annabel ', '', 'Onwe', '2020-12-05', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christian ', '4,oluolanikan s', '', '', '', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs onwe', '', '4, oluolanikan street Ejigbo ', '', 'simidschools421@gmail.com', '08034962750', '08034962750', '', '', 'Mr onwe', '08034962750', '', 'Mrs onwe', '09029918844', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(480, 'SS0394', '', '0000-00-00', 'Ezekiel ', '', 'Achemu', '2012-04-17', '', 'YEAR', 4, 'Hyacinth ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '31 Jubril Olabi', '', '', '', '', '', '', '', '', '', 'Mr Achemu', '', '31 Jubril Olabisi ', '', 'Simidschools421@gmail.com', '07038660211', '07038660211', '', '', 'Mr Achemu', '07038660211', 'Cvil servant ', 'Mrs Achemu ', '07038660211', 'Trading ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:32:29', '0000-00-00 00:00:00'),
(481, 'SS0008', '', '0000-00-00', 'Mahmud', '', 'Abdulateef ', '2021-07-12', '', 'PRE-SCHOOL', 1, 'Lilly', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '10, Fadun Stree', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Abdulateef', '', '10, Fadun Street ', '', 'simidschools421@gmail.com', '0810 158 2284', '0810 158 228', '', '', '', '08056445572', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(482, 'SS0509', '', '0000-00-00', 'INIOLUWA', 'FAVOUR', 'BIOBAKU', '2011-11-23', '', 'JSS', 2, 'ZINNIA ', '', 'JSS', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christainity', '9, Damilola Mor', '', 'Abeokuta North ', 'Ogun', '', '', '', '', '', '', 'Mr Biobaku', '', '9, Damilola', '', 'simidschools421@gmail.com', '07036461818', '07036461818', '', '', 'Mr Biobaku ', '07036461818', 'Business ', 'Mrs Biobaku ', '07036461818', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:26:15', '0000-00-00 00:00:00'),
(483, 'SS0567', '', '0000-00-00', 'Segun', 'William ', 'OGUTUGA ', '0000-00-00', '', 'SSS', 1, 'Marigold ', 'Sciences', 'SSS', '2', 'Sciences', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', '', '10 Wahab close ', '', 'Alimisho Lagos ', '', '', '', '', 'Simidschool421@gmail.com', '', '', 'Oguntuga Roseline ', '', '10 Wahab close ', '', 'simidschool421@gmail.com', '08029905782', '08029905782', 'Parents ', '', 'Mr. Oguntuga ', '08029905782', '', 'Roseline ', '', '', '', '0000-00-00', '0000-00-00', 'No', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(484, 'SS0562', '', '0000-00-00', 'Abooluwa ', 'Gift', 'Balogun ', '2008-08-24', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '2', 'Art', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '4 Agbedion Stre', '', 'Oshodi/isolo ', 'Lagos ', '', '', '', 'Simidschool421@gmail.com', '', '', 'Balogun bola ', '', '4 Agbedion Street', '', 'simidschool421@gmail.com', '08093605549 ', '08093605549 ', 'Parents ', '', 'Mr Balogun ', '08093605549', '', 'Bola ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(485, 'SS0548', '', '0000-00-00', 'Deborah ', 'Onyinyechi ', 'Nwoke ', '2008-04-30', '', 'SSS', 1, 'Marigold ', 'Sciences', 'SSS', '2', 'Sciences', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '1 Tunji ladipo ', '', 'Alimisho Lagos ', 'Lagos ', '', '', '', 'Simidschool421@gmail.com', '', '', 'Nwoke  Rose ', '', '1 Tunji ladipo Ejigbo ', '', 'simidschool421@gmail.com', '08036244088', '08036244088', 'Parents ', '', 'Mr Nwoke', '08036244088', '', 'Mrs Rose ', '070398461133', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(486, 'SS0147', '', '0000-00-00', 'Chimamanda', '', 'Akah', '2018-08-27', '', 'NURSERY', 1, 'Iris ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '12, Chief Adene', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Akah', '', '12, Chief Adenekan Street ', '', 'simidschools421@gmail.com', '09131418021', '09131418021', 'Parent', '', 'Mr Akah', '09131418021', 'Business ', 'Mrs Akah ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(487, 'SS0220', '', '0000-00-00', 'Esther ', 'Tobiloba ', 'Obaseki ', '2016-07-09', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '7 Ilufunmi Stre', '', '', 'Edo state', '', '', '', '', '', '', 'Obaseki', '', '7 Ilufunmi Street', '', 'simidschools421@gmail.com', '08033377388 ', '08033377388 ', '', '', '', '08033377388', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(488, 'SS0257', '', '0000-00-00', 'Shine', '', 'Arielle', '2016-06-13', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '13 Kola Olukotu', '', '', '', '', '', '', '', '', '', 'Arielle ', '', '13 Kola Olukotun Street', '', 'simidschools421@gmail.com', '09063847500', '09063847500', '', '', '', '09063847500', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:37:18', '0000-00-00 00:00:00'),
(489, 'SS0219', '', '0000-00-00', 'Chinonso ', '', 'Victor ', '2016-12-20', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '13 Saka Street', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Victor', '', '13 Saka Street', '', 'simidschools421@gmail.com', '08032090361', '08032090361', '', '', '', '07066376516', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(490, 'SS0222', '', '0000-00-00', 'Nelson', 'Chigozie ', 'Peters', '2017-05-14', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '43 Ifelodun Str', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Peters', '', '43 Ifelodun Street ', '', 'simidschools421@gmail.com', '08109551569', '08109551569', '', '', '', '08109551569', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(491, 'SS0223', '', '0000-00-00', 'Royal', 'Ugochukwu ', 'Anyasodor', '2017-07-03', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '36 Apana Street', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Anyasodor', '', '36 Apana Street', '', 'simidschool421@gmail.com', '08066417440', '08066417440', '', '', '', '08066417440', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(492, 'SS0253', '', '0000-00-00', 'Queeneth ', '', 'Adeyemi ', '2016-06-11', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '21 Idimu Road', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Adeyemi', '', '21 Idimu Road', '', 'simidschools421@gmail.com', '08032427966', '08032427966', '', '', '', '08082861813', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:37:18', '0000-00-00 00:00:00'),
(493, 'SS0258', '', '0000-00-00', 'Jane', 'Chidinma ', 'Nchekwube', '2017-07-14', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '8 Akogun Street', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Nchekwube', '', '8 Akogun Street', '', 'simidschools421@gmail.com', '08036759801', '08036759801', '', '', '', '08031966744', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:37:18', '0000-00-00 00:00:00'),
(494, 'SS0240', '', '0000-00-00', 'Korede ', '', 'Elekolusi', '2012-12-29', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '1', '', '2022/2023', '', 0, 'Male', '', '', '', '', '', '2 Jubril Olabis', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Elekolusi', '', '2 Jubril Olabisi street', '', 'simidschools421@gmail.com', '08070920211', '08070920211', '', '', '', '08070920211', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 17:48:43', '0000-00-00 00:00:00'),
(495, 'SS0241', '', '0000-00-00', 'Amanda ', '', 'Onuchimama', '2016-02-29', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '23 Abeokuta str', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Onuchimama', '', '23 Abeokuta street', '', 'simidschools421@gmail.com', '09046316496', '09046316496', '', '', '', '09046316496', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(496, 'SS0308', '', '0000-00-00', 'Ijeoma', '', 'Igbokwe', '2015-11-20', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '3 Mayowa Close', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Igbokwe', '', '3 Mayowa Close', '', 'simidschools421@gmail.com', '08039324788', '08039324788', '', '', '', '08039324788', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:37:18', '0000-00-00 00:00:00'),
(497, 'SS0276', '', '0000-00-00', 'Favour ', '', 'Sodiq ', '2015-01-25', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '23 Ilufunmi str', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Sodiq', '', '23 Ilufunmi street ', '', 'simidschools421@gmail.com', '07084075051', '07084075051', '', '', '', '07084075051', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(498, 'SS0216', '', '0000-00-00', 'Sharon', 'Chiamaka ', 'Okwodu ', '2017-05-11', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '25 Agbede Stree', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Okwodu', '', '25 Agbede Street ', '', 'simidschools421@gmail.com', '08033507606', '08033507606', '', '', '', '08033507606', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(499, 'SS0213', '', '0000-00-00', 'Joshua ', '', 'Okolie', '2016-08-26', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '1', '', '2022/2023', '', 0, 'Male', '', '', '', '', '', '17 Sumonu Anima', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Okolie', '', '17 Sumonu Animashaun Street ', '', 'simidschools421@gmail.com', '07036395827', '07036395827', '', '', '', '07036395827', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 18:12:22', '0000-00-00 00:00:00'),
(500, 'SS0309', '', '0000-00-00', 'Jeremiah ', '', 'Joseph ', '2015-10-11', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '4 Christ Oladun', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Joseph ', '', '4 Christ Oladunni', '', 'simidschools421@gmail.com', '07038859554', '07038859554', '', '', '', '07038859554', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:37:18', '0000-00-00 00:00:00'),
(501, 'SS0252', '', '0000-00-00', 'Franklin', 'Munachiso', 'Ugochukwu ', '2013-11-16', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '1', '', '2022/2023', '', 0, 'Male', '', '', '', '', '', '6 Wahab Close', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Ugochukwu ', '', '6 Wahab Close', '', 'simidschools421@gmail.com', '07034199337', '07034199337', '', '', '', '07034199337', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 18:20:11', '0000-00-00 00:00:00'),
(502, 'SS0218', '', '0000-00-00', 'Rhoda', '', 'Adeosun ', '2016-06-20', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '20 Yusuf street', '', '', 'Ogun', '', '', '', '', '', '', 'Mr and Mrs Adeosun', '', '20 Yusuf street ', '', 'simidschools421@gmail.com', '07043817485', '07043817485', '', '', '', '07043817485', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(503, 'SS0214', '', '0000-00-00', 'Mardhiyat', '', 'Ismail ', '2017-01-20', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '1 Olabisi close', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Ismail', '', '1 Olabisi close', '', 'simidschools421@gmail.com', '08055111907', '08055111907', '', '', '', '08055111907', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(504, 'SS0256', '', '0000-00-00', 'Miracle', '', 'Onwe ', '2015-09-12', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '4 Olu Olamikan ', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Onwe', '', '4 Olu Olamikan street ', '', 'simidschools421@gmail.com', '09029918844', '09029918844', '', '', '', '09029918844', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:37:18', '0000-00-00 00:00:00'),
(505, 'SS0227', '', '0000-00-00', 'Samuel ', '', 'Aderibigbe ', '2016-08-11', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '16 Olusesi clos', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Aderibigbe', '', '16 Olusesi close', '', 'simidschools421@gmail.com', '09015581619', '09015581619', '', '', '', '08074823389', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(506, 'SS0244', '', '0000-00-00', 'David', 'Gabriel', 'Bassey ', '2016-01-05', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '15 Tajudeen str', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Bassey', '', '15 Tajudeen street ', '', 'simidschools421@gmail.com', '08163920847', '08163920847', '', '', '', '08109513659', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(507, 'SS0224', '', '0000-00-00', 'Daniel ', '', 'Longe', '2016-02-11', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '14 Idimu Road', '', '', 'Osun', '', '', '', '', '', '', 'Mr and Mrs Longe', '', '14 Idimu Road', '', 'simidschools421@gmail.com', '08166506808', '08166506808', '', '', '', '08166506808', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(508, 'SS0217', '', '0000-00-00', 'Morenikeji ', '', 'Alabi ', '2017-02-01', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '20 Jubril Olabi', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Alabi', '', '20 Jubril Olabisi street ', '', 'simidschools421@gmail.com', '08078440175', '08078440175', '', '', '', '08067596774', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(509, 'SS0226', '', '0000-00-00', 'Treasure ', '', 'Elijah ', '2016-10-14', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '2 Kolawole stre', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Elijah ', '', '2 Kolawole street ', '', 'simidschools421@gmail.com', '07030260857', '07030260857', '', '', '', '07030260857', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(510, 'SS0259', '', '0000-00-00', 'Hillary', '', 'Bassey', '2014-08-13', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '4 Aina Close ', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Bassey ', '', '4 Aina Close ', '', 'simidschools421@gmail.com', '08126165435', '08126165435', '', '', '', '08126165435', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:40:02', '0000-00-00 00:00:00'),
(511, 'SS0225', '', '0000-00-00', 'Delightsome ', '', 'Simeon', '2017-05-13', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '12 Idimu Road', '', '', 'Ondo state', '', '', '', '', '', '', 'Mr and Mrs Simeon', '', '12 Idimu Road', '', 'simidschools421@gmail.com', '09036596555', '09036596555', '', '', '', '08034789782', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(512, 'SS0228', '', '0000-00-00', 'Gift ', '', 'Chukwuemeka', '2017-12-03', '', 'YEAR', 1, 'Hyacinth ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '7 Moumatu stree', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Chukwuemeka', '', '7 Moumatu street ', '', 'simidschools421@gmail.com', '07013359423', '07013359423', '', '', '', '07013359423', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(513, 'SS0229', '', '0000-00-00', 'Blossom ', '', 'Emmanuel ', '2016-08-12', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '1', '', '2022/2023', '', 0, 'Female', '', '', '', '', '', '5 Aina Orisumba', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Emmanuel ', '', '5 Aina Orisumbare', '', 'simidschools421@gmail.com', '07069475795', '07069475795', '', '', '', '07069475795', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 19:14:28', '0000-00-00 00:00:00'),
(514, 'SS0242', '', '0000-00-00', 'Oluchi ', 'Grace ', 'Asomugha', '2015-10-28', '', 'YEAR', 1, 'Tulip ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '12 Jubril Olabi', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Asomugha', '', '12 Jubril Olabisi ', '', 'simidschools421@gmail.com', '08022686182', '08022686182', '', '', '', '08060074308', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:00:47', '0000-00-00 00:00:00'),
(515, 'SS0002', '', '0000-00-00', 'Chisom ', '', 'Robert ', '2021-01-02', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christian ', '15, Jubril olab', '', '', '', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs Robert ', '', '15, Jubril olabisi ', '', 'simidschools421@gmail.com', '08066243938', '08066243938', '', '', 'Mr Robert ', '08066243938', '', 'Mrs Robert ', '08066243938', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(516, 'SS0030', '', '0000-00-00', 'Zion', '', 'Akinwumi', '2020-11-18', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christian ', '16,Krist oladun', '', '', '', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs Akinwumi ', '', '16, Krist oladuni street Ejigbo ', '', 'simidschools421@gmail.com', '08023810359', '08023810359', '', '', 'Mr Akinwumi ', '08023810359', '', 'Mrs Akinwumi ', '08023810359', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(517, 'SS0025', '', '0000-00-00', 'Shanita', '', 'Emuejevoke', '2021-02-26', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christian ', '7,oyebade off A', '', '', '', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs Emuejevoke ', '', '7, oyebade off Adewal street Ejigbo ', '', 'simidschools421@gmail.com', '08137476082', '08137476082', '', '', 'Mr Emuejevoke ', '08137476082', '', 'Mrs Emuejevoke ', '08137476082', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(518, 'SS0032', '', '0000-00-00', 'Candace ', '', 'Shodubi', '2020-10-17', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'PRE-SCHOOL', '1', '', '2022/2023', '', 0, 'Female', '', '', '', '', 'Christian ', '14, Jubril olab', '', '', '', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs shodubi ', '', '14, Jubril olabisi idimu ', '', 'simidschools421@gmail.com', '08039766498', '08039766498', '', '', 'Mr shodubi ', '08039766498', '', 'Mrs shodubi ', '08039766498', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-23 21:44:55', '0000-00-00 00:00:00'),
(519, 'SS0007', '', '0000-00-00', 'Prisca', '', 'Chukwuemeka', '2020-03-09', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christian ', '16,Agbede stree', '', '', '', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs Chukwuemeka ', '', '16, Agbede street Ejigbo ', '', 'simidschools421@gmail.com', '08061200081', '08061200081', '', '', 'Mr chukwuemeka ', '08061200081', '', 'Mrs Chukwuemeka ', '08061200081', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(520, 'SS0018', '', '0000-00-00', 'Theresa', '', 'Chukwunedu', '2020-12-31', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christian ', '21,olusesi, Jub', '', '', '', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs Chukwunedu ', '', '21, olusesi Jubril close ', '', 'simidschools421@gmail.com', '08176573009', '08176573009', '', '', 'Mr chukwunedu ', '07038248850', '', 'Mrs Chukwunedu ', '08176573009', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(521, 'S$0019', '', '0000-00-00', 'Oluwashindara', '', 'Robert', '2020-12-22', '', 'PRE-SCHOOL', 1, 'preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christian ', '12 edagbeja Cok', '', '', 'Lagos', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs robert', '', '12 edagbeja Coker road nnpc', '', 'simidschools421@gmail.com', '08098629860', '08098629860', '', '', 'Mr robert', '08098068877', '', 'Mrs robert ', '08098629860', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(522, 'SS0100', '', '0000-00-00', 'Obanufin', 'Iretomiwa', 'Daimond', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Violet ', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '6, sabitu Buhar', '', '', '', '', '', '', '', '', '', 'Mr Obanufin ', '', '6 sabitu Buhari ', '', 'simidschools421@gmail.com', '08162292489', '08162292489', '', '', 'Mr Obanufin ', '08162292489', 'Business ', 'Mrs Obanufin ', '08162292489', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(523, 'SS0150', '', '0000-00-00', 'Ninilomo', 'Labibat', 'Sarumi', '2018-10-16', '', 'NURSERY', 1, 'Lilac', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Muslim', '119b idimu road', '', '', 'Lagos', '', '', '', '', '', '', 'Mrs sarumi', '', '119b idimu road Ejigbo', '', 'simidschools421@gmail.com', '08080649060', '08080649060', '', '', 'Mr sarumi', '08080649060', '', 'Mrs Sarumi', '08080649060', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(524, 'SS006', '', '0000-00-00', 'Mary', '', 'Longe', '0000-00-00', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christian ', '15 araromi stre', '', '', 'Lagos', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs longe', '', '15 araromi street ejigbo ', '', 'simidschools421@gmail.com', '08024939481', '08024939481', '', '', 'Mr longe ', '08024939481', '', 'Mrs longe ', '0802493481', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(525, 'SS0037', 'SS0@37', '0000-00-00', 'Sarah', '', 'Longe', '2020-08-03', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian', 'No14,idimu road', '', 'Alimosho', 'Lagos', '', '', '', '', '', '', 'Mr and Mrs Longe', '', '14,idimu road, Ejigbo', '', 'longe@gmail.com', '08034934763', '08034934763', 'Mr and Mrs Longe', '', 'Longe', '08166506808', '', 'Mrs Longe', '08034934763', 'Business ', '', '0000-00-00', '0000-00-00', 'No', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(526, 'SS0014', '', '0000-00-00', 'Shinoayomi ', '', 'Olanrewaju', '2021-11-26', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christian ', '5 owonikoko Str', '', '', 'Lagos', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs olanrewaju ', '', '5 owonikoko Street idimu ', '', 'simidschools421@gmail.com', '08037227542', '08037227542', '', '', 'Mr olanrewaju ', '08037227542', '', 'Mrs olanrewaju ', '08037227542', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(527, 'SS0197', 'SS0@97', '0000-00-00', 'Munachi', '', 'Emedike ', '0000-00-00', '', 'NURSERY', 2, 'Iris ', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christianity', 'No 3 Deborah Ad', '', '', '', '', '', '', '', '', '', 'Emedike', '', 'No 3 Deborah Adefebi street', '', 'Simidschools421@gmail.com', '08106875173', '08106875173', '', '', '', '08106875173', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:55:16', '0000-00-00 00:00:00'),
(528, 'SS0245', '', '0000-00-00', 'Chimezie ', 'Godson ', 'Emeghara ', '2009-11-19', '', 'YEAR', 1, 'Tulip', '', 'YEAR', '1', '', '2022/2023', '', 0, 'Male', '', '', '', '', '', '31b Jubril Olab', '', '', '', '', '', '', '', '', '', 'Mr and Mrs Emeghara ', '', '31b Jubril Olabisi street ', '', 'simidschools421@gmail.com', '08063123559', '08063123559', '', '', '', '08063123559', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 08:50:03', '0000-00-00 00:00:00'),
(529, 'SS0026', '', '0000-00-00', 'Aishat', '', 'Ganiu ', '2020-10-10', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christian ', '16 elder adeyem', '', '', 'Lagos', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs ganiu', '', '6 elder adeyemi street ', '', 'simidschools421@gmail.com', '08131006122', '08131006122', '', '', 'My ganiu', '08131006122', '', 'Mrs ganiu ', '08131006122', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(530, 'SS0027', '', '0000-00-00', 'Michelle ', '', 'Odikemerem', '2021-02-06', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christian ', '12 chief adenek', '', '', 'Lagos', '', '08062105489', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs odikemerem ', '', '12 chief adeneka ilewe street ', '', 'simidschools421@gmail.com', '08062105428', '08062105428', '', '', 'Mr odikemerem ', '08062105428', '', 'Mrs odikemerem ', '08163553242', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(531, 'SS0157', '', '0000-00-00', 'Gloria', '', 'Aderibigbe', '2018-08-03', '', 'NURSERY', 1, 'Iris', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '16, Olusesi clo', '', '', 'Lagos ', '', '', '', '', '', '', 'Mr& Mrs Aderibigbe ', '', '16, Olusesi close', '', 'simidschools421@gmail.com', '09015581619/08074823389', '09015581619/', 'Parents ', '', 'Mr Aderibigbe ', '09015581619', 'Business ', 'Mrs Aderibigbe ', '08074823389', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:58:56', '0000-00-00 00:00:00'),
(532, 'SS0450', 'SS0@50', '0000-00-00', 'Odoh', '', 'Emmanuel', '2008-11-22', '', 'JSS', 1, 'Rose', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '17, Adeniyi Ade', '', 'Omachi', 'Enugu', '', '', '', '', '', '', 'Mr. Odoh', '', '17, Adeniyi Adeyemi', '', 'simidschool421@gmail.com', '08133899679', '08133899679', '', '', 'Mr. Odoh', '08133899679', 'Business man', 'Mrs. Odoh', '', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(533, 'SS0442', 'SS0@42', '0000-00-00', 'Okoye', 'Ugochukwu', 'Augustine', '2010-08-18', '', 'JSS', 1, 'Zinnia', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '25, Okejide str', '', 'Adaziana', 'Anambra', '', '', '', '', '', '', 'Mr. Okoye', '', '25, Okejide street', '', 'okoyea474@gmail.com', '08094426641', '08094426641', '', '', 'Mr. Okoye', '07068812353', 'Business man', 'Mrs. Okoye', '08094426641', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-02 09:50:14', '0000-00-00 00:00:00'),
(534, 'SS0146', '', '0000-00-00', 'Victoria ', '', 'Uchechukwu', '2018-09-19', '', 'NURSERY', 1, 'Iris ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '34, Christ Olad', '', '', 'Abia ', '', '', '', '', '', '', 'Mr & Mrs Uchechukwu ', '', '34, Christ Oladunni street ', '', 'simidschools421@gmail.com', '07036190226/07069242257', '07036190226/', 'Parents ', '', 'Mr Uchechukwu ', '07036190226', 'Business ', 'Mrs Uchechukwu ', '07069242257', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:58:56', '0000-00-00 00:00:00'),
(535, 'SS0468', 'SS0@68', '0000-00-00', 'Igwe', 'Chidera', 'Donatus', '2012-03-07', '', 'JSS', 1, 'Rose', '', 'JSS', '1', '', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '19, Apena stree', '', 'Mbanu', 'Imo', '', '', '', '', '', '', 'Igwe', '', '19, Apena street', '', 'simidschool421@gmail.com', '09050322068', '09050322068', '', '', 'Mr. Igwe', '09050322068', 'Business man', 'Mrs. Igwe', '09064527914', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-25 14:57:41', '0000-00-00 00:00:00'),
(536, 'SS0595', 'SS0@95', '0000-00-00', 'Aworh', 'Chibuzor', 'Emmauel', '2012-04-07', '', 'JSS', 1, 'Zinnia', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '14, Gbada Salam', '', 'Oshimili South', 'Delta', '', '', '', '', '', '', 'Aworh', '', '14, Gbada Salami', '', 'francisaworh22@gmail.com', '08023232360', '08023232360', '', '', 'Mr Aworh', '08023232360', 'Business man', 'Mrs. Aworh', '08036290303', 'Caterer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(537, 'SS0158', '', '0000-00-00', 'Joshua ', '', 'Richard ', '0000-00-00', '', 'NURSERY', 1, 'Iris ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '1, Oyeyinka str', '', '', 'Edo ', '', '', '', '', '', '', 'Mr & Mrs Richard', '', '1, Oyeyinka street ', '', 'simidschools421@gmail.com', '07043336390', '07043336390', 'Parents ', '', 'Mr Richard ', '07043336390', 'Salesman', 'Mrs Rose Richard ', '07043336390', 'Caregiver ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:58:56', '0000-00-00 00:00:00'),
(538, 'SS0143', '', '0000-00-00', 'Fareed', '', 'Balogun ', '0000-00-00', '', 'NURSERY', 1, 'Iris ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '11a, Jubril Ola', '', '', 'Lagos ', '', '09089037995/', '', '', '', '', 'Mr & Mrs Balogun ', '', '11a Jubril Olabisi', '', 'simidschools421@gmail.com', '09089037995', '09089037995', 'Parents ', '', 'Mr Balogun ', '09089037995', 'Business ', 'Mrs Balogun ', '09025069131', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:58:56', '0000-00-00 00:00:00'),
(539, 'SS0065', 'SS0@65', '0000-00-00', 'Omoyeni', '', 'Agbede', '2019-06-19', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Muslim', '58, Joseph stre', '', 'Alimosho', 'Lagos', '', '', '', '', '', '', 'Mr and Mrs Agbede', '', '58, Joseph street', '', 'agbede@yahoo.com', '09092170577', '09092170577', 'Mr and Mrs Agbede', '', 'Mr Agbede', '09092170577', 'Traditional man', 'Mrs Agbede', '09092170577', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(540, 'SS0023', '', '0000-00-00', 'Amarachi ', '', 'Obinna ', '2020-09-29', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christian ', '13 kola olukotu', '', '', 'Lagos', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs obinna', '', '13 kola olukotu street ', '', 'simidschools421@gmail.com', '08066204906', '08066204906', '', '', 'Me obinna', '08066209906', '', 'Mrs obinna ', '08067586231', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(541, 'SS0155', '', '0000-00-00', 'Miracle', '', 'Igwe', '2018-09-17', '', 'NURSERY', 1, 'Lilac', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '19 owuronmi ape', '', '', 'Lagos', '', '', '', '', '', '', 'Mrs lgwe', '', '19 owuronmi apena street ile Ewe Ejigbo', '', 'simidschools421@gmail.com', '09064527914', '09064527914', '', '', 'Mr lgwe', '09064527914', '', 'Mrs lgwe', '09064527914', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(542, 'SS0594', '', '0000-00-00', 'David', 'Tochukwu', 'Awoh', '2010-07-10', '', 'JSS', 3, '', '', 'SSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian ', '14, Gbada Salam', '', 'Oshimili South', 'Delta', '', '', '', '', '', '', 'Mr Francis ', '', '14, Gbada Salami', '', 'Francisaworh22@gmail.com', '08023232360', '08023232360', '', '', 'Mr Francis', '08023232360', 'Business man', 'Mrs Evelyn Aworh', '08036290303', 'Caterer', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:28:24', '0000-00-00 00:00:00'),
(543, 'SS0038', 'SS0@38', '0000-00-00', 'Chidiebere', '', 'Ogechukwu', '2020-04-06', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian', '12,Toke way,maf', '', 'Alimosho', 'Lagos', '', '', '', '', '', '', 'Mr and Mrs Ogechukwu', '', '12,Toke way,mafo', '', 'ogech@gmail.com', '07063700040', '07063700040', 'Mr and Mrs Ogechukwu', '', 'Mr Ogechukwu', '08039213720', 'Business', 'Mrs Ogechukwu', '07063700040', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(544, 'SSO148', '', '0000-00-00', 'David', 'Chukwuemeka', 'Mark', '2019-01-07', '', 'NURSERY', 1, 'Cactus', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian', '13, Okesola st', '', '', '', '', '', '', '', '', '', 'Mark ', '', '13, Okesola', '', 'simidschools421@gmail.com', '08098615190/', '08098615190/', 'Parent ', '', '', '08098615190', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:58:56', '0000-00-00 00:00:00'),
(545, 'SS0045', 'SS0@45', '0000-00-00', 'Praise ', '', 'Oyemade', '2020-06-28', '', 'LANGUAGE DEVELOPMENT', 1, 'Daisy ', 'Commercial', 'LANGUAGE DEVELOPMENT', '2', 'Commercial', '2023/2024', '', 0, 'Female', '', 'Lagos ', 'Nigeria', '', 'Christian ', '12,llufunmi str', '', '', 'Lagos ', '', '', '', '', '', '', 'Mr and Mrs Oyemade ', '', '12, llufunmi street ', '', 'Oye@gmail.com', '08033716888', '08033716888', 'Parents ', '', 'Mr Oyemade ', '08033716888', '', 'Mrs Oyemade ', '08085419756', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00');
INSERT INTO `registered_students` (`id`, `student_admission_number`, `password`, `student_admission_date`, `student_firstname`, `student_middlename`, `student_lastname`, `student_dob`, `height`, `class`, `level`, `class_number`, `department`, `current_class`, `current_level`, `current_department`, `current_year`, `graduated`, `avg_sc`, `student_gender`, `student_bloodgroup`, `student_birthplace`, `student_nationality`, `student_mothertongue`, `student_religion`, `student_address1`, `student_address2`, `student_lga`, `student_state`, `student_country`, `student_phone`, `student_mobile`, `student_email`, `student_photo`, `guardian_phone`, `guardian_name`, `guardian_city`, `guardian_address`, `guardian_state`, `guardian_email`, `guardian_country`, `guardian_mobile`, `guardian_relation`, `guardian_occupation`, `father_name`, `father_mobile`, `fathers_occupation`, `mother_name`, `mother_mobile`, `mother_occupation`, `hostel_room`, `hostel_registration_date`, `hostel_vacating_date`, `inoculation_taken`, `inoculation_not_taken`, `infectious_disease`, `infections_disease_have`, `suffer`, `suffer_from`, `last_form_token`, `created_at`, `updated_at`) VALUES
(546, 'SS0036', 'SS0@36', '0000-00-00', 'Prosper', '', 'Anthony', '2020-08-14', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian', '5, James Omoboy', '', 'Alimosho', 'Lagos', '', '', '', '', '', '', 'Mr and Mrs Anthony', '', '5, James Omoboye', '', 'Anthony@gmail.com', '08038055747', '08038055747', 'Mr and Mrs Anthony', '', 'Mr Anthony', '09014405859', 'Business', 'Mrs Anthony', '08038055747', 'Business', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(547, 'SS0138', '', '0000-00-00', 'Darasimi', 'Deborah', 'Owoeye', '2018-05-06', '', 'NURSERY', 1, 'Lilac', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity', '35 Dauda llo st', '', '', 'Lagos', '', '', '', '', '', '', 'Mrs Owoeye', '', '35 Dauda llo street Ejigbo', '', 'simidschools421@gmail.com', '07056938655', '07056938655', '', '', 'Mr Owoeye', '08061350567', '', 'Mrs Owoeye', '07056938655', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:58:56', '0000-00-00 00:00:00'),
(548, 'SS0311', '', '0000-00-00', 'Ameerat ', '', 'Adetayo ', '2014-07-25', '', 'YEAR', 2, 'Tulip ', '', 'YEAR', '2', '', '2022/2023', '', 0, 'Female', '', '', '', '', '', '45, Dauda Ilo s', '', '', '', '', '', '', '', '', '', 'Mrs Adetayo ', '', '45, Dauda Ilo street ', '', 'Simidschools421@gmail.com', '08081305434', '08081305434', '', '', 'Mr Adetayo ', '08081305434', '', 'Mrs Adetayo ', '08081305434', 'Trading ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 11:41:29', '0000-00-00 00:00:00'),
(549, 'SS0079', 'SS0@79', '0000-00-00', 'Oluwadarasimi', '', 'Oluwapelumi', '2019-04-17', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian', '52, Ewenla stre', '', 'Alimosho', 'Lagos', '', '', '', '', '', '', 'Mr and Mrs Oluwapelumi', '', '52, Ewenla street', '', 'pelu@yahoo.com', '0909389846', '0909389846', 'Mr and Mrs Oluwapelumi', '', 'Mr Oluwapelumi', '09083251630', 'Business', 'Mrs Oluwapelumi', '090832516301', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:18:43', '0000-00-00 00:00:00'),
(550, 'SS0305', '', '0000-00-00', 'Favour ', '', 'Anyanwu', '2015-06-06', '', 'YEAR', 2, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christianity ', '12, Ganiyu stre', '', '', '', '', '', '', '', '', '', 'Mr Anyanwu ', '', '12, Ganiyu street Ejigbo ', '', 'Simidschools421@gmail.com', '07035404583', '07035404583', '', '', 'Mr Anyanwu ', '07035404583', 'Cvil servant ', 'Mrs Anyanwu ', '07035404583', 'Trading ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(551, 'SS0160', '', '0000-00-00', 'Chima', '', 'Onu', '2018-05-13', '', 'NURSERY', 1, 'Cactus ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian', '23,Idimu Rd.', '', '', '', '', '', '', '', '', '', 'Onu', '', '23, Idimu Rd ', '', 'simidschools421@gmail.com', '09046316496', '09046316496', 'Parent ', '', 'Mr Onu', '09046316496', 'Trader ', 'Mrs Onu', '09046316496', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(552, 'SS0280', '', '0000-00-00', 'Racheal', '', 'Ojo', '2011-12-21', '', 'YEAR', 2, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '19, Jubril Olab', '', '', '', '', '', '', '', '', '', 'Mrs Ojo', '', '19, Jubril Olabisi, street', '', 'Simidschools421@gmail.com', '08142306153', '08142306153', '', '', '', '08142306153', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(553, 'SS0448', 'SS0@48', '0000-00-00', 'Olabanji', '', 'Opemiposi', '2012-07-07', '', 'JSS', 1, 'Zinnia', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '6, Aina Efon st', '', '', 'Oyo', '', '', '', '', '', '', 'Olabanji', '', '6, Aina Efon', '', 'simidschool421@gmail.com', '08020761655', '08020761655', '', '', 'Mr. Olabanji', '08020761655', 'Business man', 'Mrs. Olabanji', '08169340448', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(554, 'SS0278', '', '0000-00-00', 'Esther ', '', 'Monday ', '2016-04-28', '', 'YEAR', 2, 'Tulip ', '', 'YEAR', '2', '', '2022/2023', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '2, Adesina stre', '', '', '', '', '', '', '', '', '', 'Mr Monday ', '', '2,Adesina street Idimu', '', 'Simidschools421@gmail.com', '08030750931', '08030750931', '', '', 'Mr Monday ', '08030750931', 'Trading ', 'Mrs Monday ', '08030750931', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 11:57:17', '0000-00-00 00:00:00'),
(555, 'SS0268', '', '0000-00-00', 'Inioluwa ', '', 'Olatunji', '2016-06-12', '', 'YEAR', 2, 'Tulip ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '19, Omo Osaigbo', '', '', '', '', '', '', '', '', '', 'Mr Olatunji ', '', '19, Omo Osaigbovo street ', '', 'Simidschools421@gmail.com', '08066676271', '08066676271', '', '', 'Mr Olatunji ', '08066676271', '', 'Mrs Olatunji ', '08066676271', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(556, 'SS0306', '', '0000-00-00', 'Toheebat', '', 'Taiwo', '2015-11-17', '', 'YEAR', 2, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '1, Osho close, ', '', '', '', '', '', '', '', '', '', 'Mrs Taiwo', '', '1, Osho close, off Opc junction ', '', 'Simidschools421@gmail.com', '09063605655', '09063605655', '', '', '', '09063605655', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(557, 'SS0467', 'SS0@67', '0000-00-00', 'Francis', 'Tobechi', 'Dominion', '2012-01-26', '', 'JSS', 1, 'Rose', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '11, Owurumi Ape', '', 'Ohazara', 'Ebonyi', '', '', '', '', '', '', 'Mr. Francis', '', '11, Owurumi Apena', '', 'francisestheranoke@gmail.com', '08063452567', '08063452567', '', '', 'Mr.Francis', '08063452567', 'Business man', 'Mrs. Francis Esther', '08063452567', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(558, 'SS0035', 'SS0@35', '0000-00-00', 'Emmanuel', '', 'David', '2020-04-17', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', '', 'LANGUAGE DEVELOPMENT', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian', '15,jubril olabi', '', 'Alimosho', 'Lagos', '', '', '', '', '', '', 'Mr and Mrs David', '', '15, jubril olabisi street', '', 'Dav@gmail.com', '08033728121', '08033728121', 'Mr and Mrs David', '', 'Mr David', '08033728121', 'Business', 'Mrs David', '080334728121', 'Business', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:16:54', '0000-00-00 00:00:00'),
(559, 'SSO153', '', '0000-00-00', 'Munirat', '', 'Salako ', '2018-04-22', '', 'NURSERY', 1, 'Cactus ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Muslim ', '15, Pipeline Rd', '', '', '', '', '', '', '', '', '', 'Salako ', '', '15 Pipeline Rd, Ejigbo ', '', 'simidschools421@gmail.com', '080244199257', '080244199257', 'Parent ', '', 'Mr Salako ', '07011662823', 'Business man', 'Mrs Salako ', '08024199257', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(560, 'SS0266', '', '0000-00-00', 'Chimdiuto', '', 'Nwonu', '2016-02-15', '', 'YEAR', 2, 'Tulip ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '17, Olusesi str', '', '', '', '', '', '', '', '', '', 'Mr Nwonu', '', '17, Olusesi street ', '', 'Simidschools421@gmail.com', '07036610790', '07036610790', '', '', 'Mr Nwonu ', '07036610790', '', 'Mrs Nwonu', '07036610790', 'Educationist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(561, 'SS0445', 'SS0@45', '0000-00-00', 'Ikusika', '', 'Abel', '2011-10-31', '', 'JSS', 1, 'Rose', '', 'JSS', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '!2, Ekundayo st', '', 'Ondo west', 'Ondo', '', '', '', '', '', '', 'Mr. Ikusika', '', '12, Ekundayo', '', 'simidschool421@gmail.com', '090822938522', '090822938522', '', '', 'Mr. Ikusika', '09082293852', 'Business man', 'Mrs. Ikusika', '090822938522', 'Business woman', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 10:56:27', '0000-00-00 00:00:00'),
(562, 'SS0140', '', '0000-00-00', 'Kelvin', 'Evasam', 'Equali', '0000-00-00', '', 'NURSERY', 1, 'Lilac', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '22, Azeez  stre', '', '', '', '', '', '', '', '', '', 'Mr&Mrs Equali', '', '22 Azeez street orisumbare', '', 'simidschools421@gmail.com', '09083413664/09021321614', '09083413664/', 'Parents', '', 'Mr Equali', '09083413664', 'Business', 'Mrs Equali', '09021321614', 'Teacher', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:58:56', '0000-00-00 00:00:00'),
(563, 'SS0073', 'SS0@73', '0000-00-00', 'Chinonso', '', 'Precious', '2020-06-30', '', 'LANGUAGE DEVELOPMENT', 1, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian', '4,agbedion stre', '', 'Alimosho', 'Lagos', '', '', '', '', '', '', 'Mr and Mrs Chinonso', '', '4, Agbedion Street', '', 'chino@gmail.com', '08109675391', '08109675391', 'Mr and Mrs Chinonso', '', 'Mr Chinonso', '08109675391', 'Business', 'Mrs Chinonso', '08109675391', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:18:43', '0000-00-00 00:00:00'),
(564, 'SS0095', '', '0000-00-00', 'Moronkeji', 'Oluwaseun', 'Babara', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '3/8 Amida ilufu', '', '', 'Ekiti', '', '08032377187', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs Moronkeji', '', '3/8 Amida ilufumi street , Ejigbo', '', 'simidschools421@gmail.com', '08028298264', '08028298264', '', '', 'Mr Moronkeji', '08028298264', 'Pastor', 'Mrs Moronkeji', '08032377187', 'Civil servants ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(565, 'SS0314', '', '0000-00-00', 'Emmanuel ', '', 'Odigbo', '2015-05-21', '', 'YEAR', 2, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '20,Kola Olukotu', '', '', '', '', '', '', '', '', '', 'Mr Odigbo ', '', '20, Kola Olukotun street ', '', 'Simidschools421@gmail.com', 'Mr Odigbo ', 'Mr Odigbo ', '', '', 'Mr Odigbo ', '08147824129', '', 'Mrs Odigbo ', '08147824129', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(566, 'SS0022', '', '0000-00-00', 'Esther', '', 'Joseph ', '2021-05-03', '', 'PRE-SCHOOL', 1, 'Preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christian ', '8 rafun tijan i', '', '', 'Lagos', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs Joseph ', '', '8 rafun tijan iyana ejigbo', '', 'simidschools421@gmail.com', '07038859554', '07038859554', '', '', 'Mr Joseph ', '07038859554', '', 'Mrs Joseph ', '07038859554', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(567, 'SS0131', '', '0000-00-00', 'David', 'Eyimofe', 'Oloma', '2018-01-09', '', 'NURSERY', 1, 'Lilac', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '34,Okejide stre', '', '', 'Lagos', '', '', '', '', '', '', 'Mr&Mrs Oloma', '', '34 Okejide street Ejigbo', '', 'simidschools421@gmail.com', '08069230192/08067897593', '08069230192/', 'Parents', '', 'Mr Oloma', '08069230192', 'Business', 'Mrs Oloma', '08067897593', 'Business', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(568, 'SS0094', '', '0000-00-00', 'Kalu-iche', 'Emmanuel ', 'Kalu', '0000-00-00', '', 'LANGUAGE DEVELOPMENT', 2, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '11, khrist Olad', '', '', 'Lagos', '', '08060467465', '', '', '', '', 'Mr and Mrs kalu-iche', '', '11 khrist oladuni street, Ejigbo', '', 'simidschools421@gmail.com', '08060467465', '08060467465', '', '', 'Mr kalu-iche', '08060467465', 'Business ', 'Mrs kalu-iche', '08060467465', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:24:04', '0000-00-00 00:00:00'),
(569, 'SS0243', 'SS0@43', '0000-00-00', 'Ifeanyi ', '', 'Onwuka ', '0000-00-00', '', 'NURSERY', 2, 'Iris', '', 'NURSERY', '2', '', '2022/2023', '', 0, 'Male', '', '', '', '', 'Christianity', 'No 7 Anuoluwapo', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Onwuka ', '', 'No 7 Anuoluwapo Ejigbo', '', 'simidschools421@gmail.com', '09066621482', '09066621482', '', '', '', '09066621482', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 20:19:30', '0000-00-00 00:00:00'),
(570, 'SS0096', '', '0000-00-00', 'Robert ', 'Chiamaka', 'Amake', '0000-00-00', '', 'NURSERY', 1, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '17, jubril olab', '', '', 'Imo', '', '08135148835', '', '', '', '', 'Mr and Mrs Robert ', '', '16 Jubril olabisi street, Ejigbo', '', 'simidschools421@gmail.com', '08135148835', '08135148835', '', '', 'Mr Robert ', '08135148835', 'Business ', 'Mrs Robert', '08135148835', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:09:24', '0000-00-00 00:00:00'),
(571, 'SS0184', '', '0000-00-00', 'David', '', 'Olorunfemi', '2018-03-12', '', 'NURSERY', 1, 'Lilac', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '2,Ilufunmi Amin', '', '', 'Lagos', '', '', '', '', '', '', 'Mr&Mrs Olorunfemi', '', '2, Ilufunmi Amida', '', 'simidschools421@gmail.com', '08035010679', '08035010679', 'Parents', '', 'Mr Olorunfemi', '08035010679', 'Business', 'Mrs Olorunfemi', '08035010679', 'Business', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:52:04', '0000-00-00 00:00:00'),
(572, 'SS0263', '', '0000-00-00', 'Mitchell ', 'Nifemi', 'Jaye- Adeyemi', '2016-09-16', '', 'YEAR', 2, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '17,Idimu road ', '', '', '', '', '', '', '', '', '', 'Mr Jaye- Adeyemi ', '', '17, Idimu road ', '', 'Simidschools421@gmail.com', '07039705003', '07039705003', '', '', 'Mr Jaye-Adeyemi ', '07039705003', '', 'Mrs Jaye-Adeyemi', '07039705003', 'Educationist', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:21:32', '0000-00-00 00:00:00'),
(573, 'SSO142', '', '0000-00-00', 'Oyinkansola ', '', 'Olugunoba', '2018-08-27', '', 'NURSERY', 1, 'Cactus ', '', 'NURSERY', '1', '', '2022/2023', '', 0, 'Female', '', '', '', '', 'Christian ', '23, Folawewo ', '', '', '', '', '', '', '', '', '', 'Olugunoba ', '', '23, Folawewo st ', '', 'simidschools421@gmail.com', '08084574000', '08084574000', 'Parent ', '', 'Mr Olugunoba ', '09027612634', 'Trader ', 'Mrs Olugunoba ', '08084574000', 'Teacher ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 12:39:03', '0000-00-00 00:00:00'),
(574, 'SS0005', '', '0000-00-00', 'Victory ', '', 'Anigbogu', '2021-03-15', '', 'PRE-SCHOOL', 1, 'preparatory pansy ', '', 'LANGUAGE DEVELOPMENT', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christian ', '50 idimu road', '', '', 'Lagos', '', '', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs anigbogu ', '', '50 idimu ejigbo ', '', 'simidschools421@gmail.com', '08067966496', '08067966496', '', '', 'Mr anigbogu ', '08067966496', '', 'Mrs anigbogu ', '08067966496', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-01 13:01:42', '0000-00-00 00:00:00'),
(575, 'SS0134', '', '0000-00-00', 'Jamal', '', 'Feyisetan', '0000-00-00', '', 'YEAR', 1, 'Lilac', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '2 imodu moshala', '', '', 'Lagos', '', '', '', '', '', '', 'Mr&Mrs Feyisetan', '', '2 lmodu moshalashi street Ejigbo', '', 'simidschools421@gmail.com', '08035748001/', '08035748001/', 'Parents', '', 'Mr Feyisetan', '08035748001', 'Business', 'Mrs Feyisetan', '08033130182', 'Business', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 17:03:51', '0000-00-00 00:00:00'),
(576, 'SS0312', '', '0000-00-00', 'Faridat ', '', 'Yusuf ', '2015-07-06', '', 'YEAR', 2, 'Tulip ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Muslim ', '9,Tunji Akindel', '', '', '', '', '', '', '', '', '', 'Mr Yusuf ', '', '9.Tunji Akindele street Idimu ', '', 'Simidschools421@gmail.com', '08020664862', '08020664862', '', '', 'Mr  Yusuf ', '08020664862', '', 'Mrs Yusuf ', '08020664862', 'Trading ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(577, 'SS0174', 'SS0@74', '0000-00-00', 'Duru', '', 'Emmanuella', '2017-04-06', '', 'NURSERY', 2, 'Iris', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian', '5,Aina Close, E', '', '', 'Lagos', '', '', '', '', '', '', 'Mr Duru', '', '5,Aina Close, Ejigbo', '', 'simidschools421@gmail.com', '08036388286', '08036388286', '', '', 'Mr Duru', '08036388286', '', 'Mrs Duru', '08036388286', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:53:29', '0000-00-00 00:00:00'),
(578, 'SS0193', '', '0000-00-00', 'Oluwashikemi', 'Benjamin', 'Oyedepo', '2017-07-01', '', 'NURSERY', 1, 'Lilac', '', 'JSS', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '13, Saka street', '', '', 'Lagos', '', '', '', '', '', '', 'Mr&Mrs Oyedepo', '', '13 saka street lafenwa Ejigbo', '', 'simidschools421@gmail.com', '08179569884', '08179569884', 'Parents', '', 'Mr Oyedepo', '08179569884', 'Business', 'Mrs Oyedepo', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:46:03', '0000-00-00 00:00:00'),
(579, 'SS0097', '', '0000-00-00', 'Olajide', 'Ireoluwa', 'Isaac', '0000-00-00', '', 'NURSERY', 1, 'Lily', '', 'NURSERY', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '19 Mechanic vil', '', '', 'Lagos', '', '08066842929', '', 'simidschools421@gmail.com', '', '', 'Mr and Mrs Olajide', '', '19 Mechanic village ', '', 'simidschools421@gmail.com', '08066842929', '08066842929', '', '', 'Mr Olajide', '08066842929', 'Business ', 'Mrs Olajide', '08066842929', 'Business ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:10:34', '0000-00-00 00:00:00'),
(580, 'SS0261', '', '0000-00-00', 'Favour ', '', 'Akomolafe', '2015-12-15', '', 'YEAR', 2, 'Tulip ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '32, Daniel stre', '', '', '', '', '', '', '', '', '', 'Mr Akomolafe ', '', '32, Daniel street off Orisumbare ', '', 'Simidschools421@gmail.com', '08030777970', '08030777970', '', '', 'Mr Akomolafe ', '08030777970', '', 'Mrs Akomolafe ', '08030777970', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(581, 'SS0176', 'SS0@76', '0000-00-00', 'Chibuike', '', 'Obinna', '2016-05-17', '', 'NURSERY', 2, 'Iris', '', 'NURSERY', '2', '', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '13 Kola Olukotu', '', '', '', '', '', '', '', '', '', 'Mr /Mrs Obinna ', '', '13 Kola Olukotun ', '', 'simidschools421@gmail.com', '08067586231', '08067586231', '', '', 'Mr Obinna ', '08067586231', '', 'Mrs Obinna ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 20:19:30', '0000-00-00 00:00:00'),
(582, 'SS0137', '', '0000-00-00', 'Donald', '', 'Augustine', '2017-01-17', '', 'NURSERY', 1, 'Lilac', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '31, Ilufunmi st', '', '', 'Lagos', '', '', '', '', '', '', 'Mr&Mrs Augustine', '', '31, llufumi street Ejigbo', '', 'simidschools421@gmail.com', '08038520202', '08038520202', 'Parents', '', 'Mr Augustine', '08038520202', 'Business', 'Mrs Augustine', '', 'Business', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:47:22', '0000-00-00 00:00:00'),
(583, 'SS0264', '', '0000-00-00', 'Perfect ', '', 'Adedokun', '2015-07-11', '', 'YEAR', 2, 'Tulip ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '18, Lasisi Lade', '', '', '', '', '', '', '', '', '', 'Mr Adedokun ', '', '18, Lasisi Ladega street ', '', 'Simidschools421@gmail.com', '08139299625', '08139299625', '', '', 'Mr Adedokun ', '08139299625', '', 'Mrs Adedokun ', '08139299625', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(584, 'SS0271', '', '0000-00-00', 'David ', '', 'Nwaobi', '2015-09-17', '', 'YEAR', 2, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '41, Dauda Ilo s', '', '', '', '', '', '', '', '', '', 'Mr Nwaobi', '', '41, Dauda Ilo street', '', 'Simidschools421@gmail.com', '08035090434', '08035090434', '', '', '', '08035090434', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(585, 'SS0205', 'SS0@05', '0000-00-00', 'Eyinju', '', 'Ajibade ', '0000-00-00', '', 'NURSERY', 2, 'Iris ', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christianity', '19b Adegboye St', '', '', '', '', '', '', '', '', '', 'Mr & Mrs Ajibade ', '', '19b Adegboye Street Orisunbare', '', 'simidschools421@gmail.com', '09124013980', '09124013980', '', '', '', '09124013980', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:54:56', '0000-00-00 00:00:00'),
(586, 'SS0209', 'SS0@09', '0000-00-00', 'Moyosoluwa', '', 'Isaac', '2016-12-22', '', 'NURSERY', 2, 'Iris', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '1 Ok close ', '', '', '', '', '', '', '', '', '', 'Mr/Mrs Isaac', '', '1 Ok close ', '', 'simidschools421@gmail.com', '08028124184', '08028124184', '', '', 'Mr Isaac ', '08028124184', '', 'Mrs Isaac ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:54:56', '0000-00-00 00:00:00'),
(587, 'SSO162', '', '0000-00-00', 'Felix', '', 'Exe', '2018-06-09', '', 'NURSERY', 1, 'Cactus  ', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christian ', '11, wahab close', '', '', '', '', '', '', '', '', '', 'Eze', '', '11, wahab st, Ejigbo ', '', 'simidschools421@gmail.com', '07019837574/08033922497', '07019837574/', 'Parent ', '', 'Mr Eze', '07066541204', 'Business man', 'Mrs Eze', '07032498029', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(588, 'SS0269', '', '0000-00-00', 'Ifunanya', '', 'Okonji', '2014-03-25', '', 'YEAR', 2, 'Tulip ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '1, Aina close E', '', '', '', '', '', '', '', '', '', 'Mr Okonji ', '', '1,Aina close, Ejigbo ', '', 'Simidschools421@gmail.com', '08036675173', '08036675173', '', '', 'Mr Okonji ', '08036675173', '', 'Mrs Okonji ', '08036675173', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:21:32', '0000-00-00 00:00:00'),
(589, 'SS0279', '', '0000-00-00', 'Damilola ', '', 'Olawore', '2016-01-09', '', 'YEAR', 2, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '3, Fayemi stree', '', '', '', '', '', '', '', '', '', 'Mr Olawore', '', '3, Fayemi street Ejigbo ', '', 'Simidschools421@gmail.com', '070403888460', '070403888460', '', '', 'Mr Olawore ', '07040388460', 'Cvil servant ', 'Mrs Olawore ', '07040388460', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(590, 'SS0556', '', '0000-00-00', 'Theodora', '', 'Isuiweh', '2010-10-30', '', 'SSS', 1, 'Marigold ', 'Sciences', 'SSS', '2', 'Sciences', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '17 sabitu buhar', '', 'Alimisho Lagos ', 'Lagos ', '', '', '', 'Simidschool421@gmail.com', '', '', 'Mr &Mrs Isuiweh', '', '17 sabitu buhari ', '', 'simidschool421@gmail.com', '08033664284', '08033664284', 'Parents ', '', 'Mr Isuiweh ', '08033664284', '', 'Mrs isuiweh ', '08033664284', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-12 13:29:59', '0000-00-00 00:00:00'),
(591, 'SS0201', 'SS0@01', '0000-00-00', 'Nicholas ', '', 'Asuije ', '2016-02-26', '', 'NURSERY', 2, 'Iris', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '4 Oladende stre', '', '', '', '', '', '', '', '', '', 'Mr/Mrs Asuije ', '', '4 Oladende', '', 'simidschools421@gmail.com', '07032022938', '07032022938', '', '', 'Mr Isaac ', '07032022938', '', 'Mrs Asuije ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:54:56', '0000-00-00 00:00:00'),
(592, 'SS0262', '', '0000-00-00', 'Halimat', '', 'Salako ', '2015-10-29', '', 'YEAR', 2, 'Tulip ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Muslim ', '5, Pipeline str', '', '', '', '', '', '', '', '', '', 'Mr Salako', '', '5, Pipeline street ', '', 'Simidschools421@gmail.com', '08024199257', '08024199257', '', '', 'Mr Salako ', '08024199257', '', 'Mrs Salako ', '08024199257', 'Trading ', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(593, 'SS0203', 'SS0@03', '0000-00-00', 'Abdulsalam ', '', 'Olaoye ', '2016-08-28', '', 'NURSERY', 2, 'Iris', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Muslim ', '40 Chris Oladun', '', '', '', '', '', '', '', '', '', 'Mr/Mrs Olaoye ', '', '40 Chris Oladunni ', '', 'simidschools421@gmail.com', '09133048629', '09133048629', '', '', 'Mr Olaoye', '09133048629', '', 'Mrs Olaoye ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:54:56', '0000-00-00 00:00:00'),
(594, 'SS0185', '', '0000-00-00', 'Daniel', '', 'Daini', '0000-00-00', '', 'NURSERY', 1, 'Lilac', '', 'NURSERY', '1', '', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '16, Saka street', '', '', 'Lagos', '', '', '', '', '', '', 'Mr&Mrs Daini', '', '16, Saka street', '', 'simidschools421@gmail.com', '070667172742', '070667172742', 'Parents', '', 'Mr Daini', '07066172742', 'Business', 'Mrs Daini', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 13:27:12', '0000-00-00 00:00:00'),
(595, 'SS0552', '', '0000-00-00', 'Zandra', '', 'Nwaozuzu ', '2008-01-29', '', 'SSS', 1, 'Lotus ', 'Art', 'SSS', '1', 'Art', '2022/2023', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '3 Aina close Ej', '', 'Alimisho Lagos ', 'Lagos ', '', '', '', 'Simidschool421@gmail.com', '', '', 'Mr Nwaozuzu ', '', 'Aina close Ejigbo ', '', 'simidschool421@gmail.com', '07029309072', '07029309072', 'Parents ', '', 'Mr Nwaozuzu ', '07029309072', '', 'Mrs Nwaozuzu ', '07029309072', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 13:27:18', '0000-00-00 00:00:00'),
(596, 'SS0316', '', '0000-00-00', 'Alfred', '', 'Olatunde', '2013-07-17', '', 'YEAR', 2, 'Tulip ', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '1,Akogun street', '', '', '', '', '', '', '', '', '', 'Mr Olatunde ', '', '1, Akogun street, Ejigbo ', '', 'Simidschools421@gmail.com', '08023700596', '08023700596', '', '', 'Mr Olatunde ', '08023700596', '', 'Mrs Olatunde ', '08023700596', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:39:20', '0000-00-00 00:00:00'),
(597, 'SS0179', 'SS0@79', '0000-00-00', 'Timileyin', '', 'Oyemade', '2017-08-05', '', 'NURSERY', 2, 'Iris', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '12 Ilufunmi str', '', '', '', '', '', '', '', '', '', 'Mr /Mrs Oyemade ', '', '12 Ilufunmi street ', '', 'simidschools421@gmail.com', '08085419756', '08085419756', '', '', 'Mr Oyemade ', '08085419756', '', 'Mrs Oyemade ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:53:29', '0000-00-00 00:00:00'),
(598, 'SS0178', 'SS0@78', '0000-00-00', 'Precious ', '', 'Anigbogu ', '2017-11-11', '', 'NURSERY', 2, 'Iris', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christianity ', '50 Ilufunmi str', '', '', '', '', '', '', '', '', '', 'Mr /Mrs Anigbogu ', '', '50 Idimu road', '', 'simidschools421@gmail.com', '07064761231', '07064761231', '', '', 'Mr Anigbogu ', '07064761231', '', 'Mrs Anigbogu', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:55:16', '0000-00-00 00:00:00'),
(599, 'SS0139', '', '0000-00-00', 'Fortune', '', 'Oni', '0000-00-00', '', 'NURSERY', 1, 'Lilac', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity', '13, Araromi str', '', '', 'Lagos', '', '', '', '', '', '', 'Mr&Mrs Oni', '', '13, Araromi street Ejigbo', '', 'simidschools421@gmail.com', '07041376731/08108522468', '07041376731/', 'Parents', '', 'Mr Oni', '07041376731', 'Business', 'Mrs Oni', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(600, 'SS0186', '', '0000-00-00', 'Gift', '', 'Eshua', '2018-10-08', '', 'NURSERY', 1, 'Cactus ', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christian ', '9,wahab close o', '', '', '', '', '', '', '', '', '', 'Eshua', '', '9, wahab close off Dauda str', '', 'simidschools421@gmail.com', '08115251420', '08115251420', 'Parent ', '', 'Mr Eshua', '08115251420', 'Business man', 'Mrs Eshua', '08115251420', 'Trader', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:52:04', '0000-00-00 00:00:00'),
(601, 'SS0204', 'SS0@04', '0000-00-00', 'Alexander ', '', 'Davis', '2016-10-15', '', 'NURSERY', 2, 'Iris', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christianity ', '13/15 Fadu Aven', '', '', '', '', '', '', '', '', '', 'Mr /Mrs Davis ', '', '13/15 Fadu Avenue ', '', 'simidschools421@gmail.com', '08172505451', '08172505451', '', '', 'Mr Davis ', '08172505451', '', 'Mrs Davis ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:56:17', '0000-00-00 00:00:00'),
(602, 'SS0207', 'SS0@07', '0000-00-00', 'Faizat', '', 'Ajetunmobi', '2017-05-10', '', 'NURSERY', 2, 'Iris', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Muslim ', '6 Sabitu Buhari', '', '', '', '', '', '', '', '', '', 'Mr /Mrs Ajetunmobi ', '', '6 Sabitu Buhari ', '', 'simidschools421@gmail.com', '08139383969', '08139383969', '', '', 'Mr Ajetunmobi ', '08139383969', '', 'Mrs Ajetunmobi ', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:54:56', '0000-00-00 00:00:00'),
(603, 'SS0206', 'SS0@06', '0000-00-00', 'Abdullahi', '', 'Ganiu', '2015-10-14', '', 'NURSERY', 2, 'Iris', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Muslim ', '16 Elder Adeyem', '', '', '', '', '', '', '', '', '', 'Mr /Mrs Ganiu ', '', '16 Elder Adeyemi street ', '', 'simidschools421@gmail.com', '08166671320', '08166671320', '', '', 'Mr Ganiu', '08166671320', '', 'Mrs Ganiu', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:54:56', '0000-00-00 00:00:00'),
(604, 'SS0318', '', '0000-00-00', 'Agbede', '', 'Kahlid', '0000-00-00', '', 'YEAR', 2, 'Orchid', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '8 Taiwo oke str', '', '', '', '', '', '', '', '', '', 'Mr kahlid', '', '8 Taiwo oke street', '', 'simidschools421@gmail.com', '081308543358 ', '081308543358', '', '', '', '08130854335', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:39:20', '0000-00-00 00:00:00'),
(605, 'SS0288', '', '0000-00-00', 'Inioluwa', '', 'Alabi', '2015-05-09', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christian ', '21 Jubril Olabi', '', '', '', '', '08067596774', '', 'simidschools421@gmail.com', '', '', 'Mr Alabi', '', '21 Jubril Olabisi street Ejigbo ', '', 'Simidschools421@gmail.com', '08067596774', '08067596774', '', '', '', '08067596774', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(606, 'SS0317', '', '0000-00-00', 'Alamin', '', 'Adebowale', '2013-08-07', '', 'YEAR', 2, 'Hyacinth ', '', 'YEAR', '2', '', '2022/2023', '', 0, 'Male', '', '', 'Nigeria', '', 'Muslim', '13 St Augustine', '', '', '', '', '08035725171', '', 'simidschools421@gmail.com', '', '', 'Mr Adebowale ', '', '13 St Augustine street Ejigbo ', '', 'Simidschools421@gmail.com', '08035725171', '08035725171', '', '', '', '08035725171', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-08-24 16:16:28', '0000-00-00 00:00:00'),
(607, 'SS0273', '', '0000-00-00', 'Cherish', '', 'Ekpemiro', '2015-10-19', '', 'YEAR', 2, 'Orchid', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '9, Sunny Dawodu', '', '', '', '', '', '', '', '', '', 'Mrs Ekpemiro', '', '9, Sunny Dawodu junction', '', 'simidschools421@gmail.com', '08128400270', '08128400270', '', '', '', '08128400270', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(608, 'SS0198', 'SS0@98', '0000-00-00', 'Purity ', '', 'Nwefulu ', '0000-00-00', '', 'NURSERY', 2, 'Iris', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christianity', 'No 4A Sani Daud', '', '', '', '', '08068459558', '', '', '', '', 'Mr& Mrs Nwefulu ', '', 'No 4 A Sani Dauda ', '', 'simidschools421@gmail.com', '08068459558', '08068459558', '', '', '', '08068459558', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:55:16', '0000-00-00 00:00:00'),
(609, 'SS0177', 'SS0@77', '0000-00-00', 'Irewamiri ', '', 'Kudojo', '0000-00-00', '', 'NURSERY', 2, 'Iris ', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Christianity', '29 Dauda Ilo Ej', '', '', '', '', '08124139035', '', '', '', '', 'Mr & Mrs Nwefulu', '', '29 Dauda ilo', '', 'simidschools421@gmail.com', '08124139035 ', '08124139035 ', '', '', '', '08124139035', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:53:29', '0000-00-00 00:00:00'),
(610, 'SS0320', '', '0000-00-00', 'Ifechukwu', '', 'Eleazars', '2015-06-06', '', 'YEAR', 4, 'Orchid', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '23, Wahab stree', '', '', '', '', '', '', '', '', '', 'Mrs Eleazars', '', '23, Wahab street', '', 'simidschools421@gmail.com', '08066461012', '08066461012', '', '', '', '08066461012', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 13:41:17', '0000-00-00 00:00:00'),
(611, 'SS0274', '', '0000-00-00', 'Emmanuel ', '', 'Fidelis ', '2014-11-10', '', 'YEAR', 2, 'Orchid ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', 'Nigeria', '', 'Christian ', '109 Idimu road ', '', 'Oshodi Isolo ', 'Imo State ', '', '09071204445', '', 'simidschools421@gmail.com', '', '', 'Mr Fidelis ', '', '109 Idimu road ', '', 'Simidschools421@gmail.com', '09071204445', '09071204445', '', '', '', '09071204445', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(612, 'SS0301', '', '0000-00-00', 'Praise', '', 'Chukwuemeka', '2015-05-09', '', 'YEAR', 2, 'Orchid', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '14, NNPC road', '', '', '', '', '', '', '', '', '', 'Mrs Chukwuemeka', '', '14, NNPC road', '', 'simidschools421@gmail.com', '08062860841', '08062860841', '', '', '', '08062860841', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(613, 'SS0292', '', '0000-00-00', 'Oluchi ', '', 'Anyanwu ', '2015-09-10', '', 'YEAR', 2, 'Orchid ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', '4, Adeola Armor', '', '', 'Imo State ', '', '08035657105', '', 'simidschools421@gmail.com', '', '', 'Mr Anyanwu ', '', '4 Adeola Armoruf street Ejigbo ', '', 'Simidschools421@gmail.com', '08035657105', '08035657105', '', '', '', '08035657105', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(614, 'SS0281', '', '0000-00-00', 'Chizaram', '', 'Uzowulu', '2016-05-13', '', 'YEAR', 2, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '13, Madam Okesh', '', '', '', '', '', '', '', '', '', 'Mrs Uzowulu', '', '13, Madam Okeshola', '', 'simidschools421@gmail.com', '08037127490', '08037127490', '', '', '', '08037127490', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(615, 'SS0267', '', '0000-00-00', 'Racheal', 'Oluwafikayomi', 'Oke', '2016-05-14', '', 'YEAR', 2, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '14, Idimu road', '', '', '', '', '', '', '', '', '', 'Mrs Oke', '', '14, Idimu road', '', 'simidschools421@gmail.com', '08030855406', '08030855406', '', '', '', '08030855406', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:19:27', '0000-00-00 00:00:00'),
(616, 'SS0200', 'SS0@00', '0000-00-00', 'Farida ', '', 'Sholola ', '0000-00-00', '', 'NURSERY', 2, 'Iris', '', 'YEAR', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', 'Muslim', 'No 91 Ogunde St', '', '', '', '', '', '', '', '', '', 'Mrs & Mrs Sholola', '', 'No 19 Ogunde', '', 'simidschools421@gmail.com', '09081553047', '09081553047', '', '', '', '09081553047', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:54:56', '0000-00-00 00:00:00'),
(617, 'SS0270', '', '0000-00-00', 'Chikamso ', 'Benedicta', 'Ezeala ', '2015-01-04', '', 'YEAR', 2, 'Tulip', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Female', '', '', 'Nigeria', '', 'Christian ', 'Gate B Jolajay ', '', '', '', '', '08069417454', '', 'simidschools421@gmail.com', '', '', 'Mr Ezeala ', '', 'Gate B Jolajay Estate Orisunmbare', '', 'Simidschools421@gmail.com', '08069417454', '08069417454', '', '', '', '08069417454', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:38:44', '0000-00-00 00:00:00'),
(618, 'SS0175', 'SS0@75', '0000-00-00', 'Samuel', '', 'Ndukwe ', '0000-00-00', '', 'NURSERY', 2, 'Iris', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Male', '', '', '', '', 'Christianity', '28 Jubril Olabi', '', '', '', '', '08062683731', '', '', '', '', 'Mr & Mrs ', '', '28 Jubril Olabisi street', '', 'simidschools421@gmail.com', '08062683731', '08062683731', '', '', '', '08062683731', '', '', '08062683731', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:53:29', '0000-00-00 00:00:00'),
(619, 'SS0135', '', '0000-00-00', 'Esther', '', 'Gbadamosi', '0000-00-00', '', 'NURSERY', 1, 'Cactus', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', 'images/student_import_pics/SS0135.jpg', '', '', '', '', '', 'simidschools421@gmail.com', '', '90', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:58:56', '0000-00-00 00:00:00'),
(620, 'SS0133', '', '0000-00-00', 'Toke', '', 'Bankole', '0000-00-00', '', 'NURSERY', 1, 'Cactus', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', 'images/student_import_pics/SS0133.jpg', '', '', '', '', '', 'simidschools421@gmail.com', '', '90', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(621, 'SS0180', '', '0000-00-00', 'Munachimso', '', 'Ejike', '0000-00-00', '', 'NURSERY', 1, 'Cactus', '', 'YEAR', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', 'images/student_import_pics/SS0180.jpg', '', '', '', '', '', 'simidschools421@gmail.com', '', '90', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:52:04', '0000-00-00 00:00:00'),
(622, 'SS0191', '', '0000-00-00', 'Peculiar', '', 'Sunday', '2043-04-07', '', 'NURSERY', 1, 'Cactus', '', 'JSS', '1', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', 'images/student_import_pics/SS0191.jpg', '', '', '', '', '', 'simidschools421@gmail.com', '', '90', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-13 12:46:03', '0000-00-00 00:00:00'),
(623, 'SS0168', '', '0000-00-00', 'Fiyinfoluwa', '', 'Dauda', '0000-00-00', '', 'NURSERY', 1, 'Cactus', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', 'images/student_import_pics/SS0168.jpg', '', '', '', '', '', 'simidschools421@gmail.com', '', '90', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:51:03', '0000-00-00 00:00:00'),
(624, 'SS0166', '', '0000-00-00', 'Olamiposi', '', 'Raji', '0000-00-00', '', 'NURSERY', 1, 'Cactus', '', 'NURSERY', '2', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', 'images/student_import_pics/SS0166.jpg', '', '', '', '', '', 'simidschools421@gmail.com', '', '90', '', '', '', '', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:58:56', '0000-00-00 00:00:00'),
(625, 'SS0374', '', '0000-00-00', 'David', '', 'Oyerinde', '0000-00-00', '', 'YEAR', 5, 'Tulip ', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '9', '', '', '', '', '', '', '', '', '', 'Mrs Oyerinde ', '', '9', '', 'simidschools421@gmail.com', '08177263878', '08177263878', '', '', '', '08076371975', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:07:56', '0000-00-00 00:00:00'),
(626, 'SS0282', '', '0000-00-00', 'Daniel ', '', 'Oyerinde ', '0000-00-00', '', 'YEAR', 3, 'Hyacinth ', '', 'YEAR', '3', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '9', '', '', '', '', '', '', '', '', '', 'Mrs Oyerinde ', '', '9', '', 'simidschools421@gmail.com', '08177263878', '08177263878', '', '', '', '08076371975', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-06 14:06:36', '0000-00-00 00:00:00'),
(627, 'SS0380', '', '0000-00-00', 'Chisom', '', 'Ubaka ', '0000-00-00', '', 'YEAR', 5, 'Hyacinth', '', 'YEAR', '5', '', '2023/2024', '', 0, 'Male', '', '', '', '', '', '8', '', '', '', '', '', '', '', '', '', 'Mrs Ubaka', '', '8', '', 'simidschools421@gmail.com', '07037908794', '07037908794', '', '', '', '07037908794', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:33:31', '0000-00-00 00:00:00'),
(628, 'SS0354', '', '0000-00-00', 'Precious ', '', 'Ubaka ', '0000-00-00', '', 'YEAR', 4, 'Tulip', '', 'YEAR', '4', '', '2023/2024', '', 0, 'Female', '', '', '', '', '', '9', '', '', '', '', '', '', '', '', '', 'Mrs Ubaka ', '', '9', '', 'simidschools421@gmail.com', '07037908794', '07037908794', '', '', '', '07037908794', '', '', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', NULL, '2023-09-11 16:37:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `stud_id` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `category_id`, `stud_id`, `score`, `total`, `date`) VALUES
(1, 1, 'SSS153', 2, 2, '2023-08-16 06:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `result_template`
--

CREATE TABLE `result_template` (
  `id` int(11) NOT NULL,
  `template_id` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `result_template`
--

INSERT INTO `result_template` (`id`, `template_id`, `created_at`) VALUES
(1, 'template2', '2023-04-11 10:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `roseville_events`
--

CREATE TABLE `roseville_events` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `start_time` varchar(100) NOT NULL,
  `end_time` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `roseville_events`
--

INSERT INTO `roseville_events` (`id`, `event_name`, `start_date`, `end_date`, `start_time`, `end_time`) VALUES
(0000000001, 'Event name', '2019-01-01', '2019-01-01', '2pm', '3pm');

-- --------------------------------------------------------

--
-- Table structure for table `school_color`
--

CREATE TABLE `school_color` (
  `id` int(11) NOT NULL,
  `color1` varchar(255) NOT NULL,
  `color2` varchar(255) NOT NULL,
  `color3` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `school_color`
--

INSERT INTO `school_color` (`id`, `color1`, `color2`, `color3`, `created_at`) VALUES
(1, '#999999', '#bbb9bb', '#c7c7c7', '2023-04-21 11:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `secondary_addmission_form_filled`
--

CREATE TABLE `secondary_addmission_form_filled` (
  `id` int(10) UNSIGNED NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `otherNames` varchar(60) NOT NULL,
  `dayOfBirth` varchar(2) NOT NULL,
  `monthOfBirth` varchar(2) NOT NULL,
  `yearOfBirth` varchar(4) NOT NULL,
  `religion` varchar(10) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `previousSchoolName` varchar(191) NOT NULL,
  `previousFrom` varchar(191) NOT NULL,
  `previousTo` varchar(191) NOT NULL,
  `leavingReasons` varchar(255) NOT NULL,
  `passport` varchar(191) NOT NULL,
  `fatherGuardian` varchar(60) DEFAULT NULL,
  `paymentResponsibility` varchar(30) NOT NULL,
  `payeeName` varchar(60) DEFAULT NULL,
  `payeeEmail` varchar(191) DEFAULT NULL,
  `payeeOccupation` varchar(191) NOT NULL,
  `payeeOfficeAddress` varchar(255) DEFAULT NULL,
  `payeeOfficePhone` varchar(11) DEFAULT NULL,
  `payeeHomeAddress` varchar(191) DEFAULT NULL,
  `payeeHomePhone` varchar(11) DEFAULT NULL,
  `fatherName` varchar(60) DEFAULT NULL,
  `fatherEmail` varchar(191) DEFAULT NULL,
  `fatherOccupation` varchar(191) DEFAULT NULL,
  `fatherOfficeAddress` varchar(255) DEFAULT NULL,
  `fatherOfficePhone` varchar(11) DEFAULT NULL,
  `fatherHomeAddress` varchar(255) DEFAULT NULL,
  `fatherHomePhone` varchar(11) DEFAULT NULL,
  `motherName` varchar(60) DEFAULT NULL,
  `motherEmail` varchar(191) NOT NULL,
  `motherOccupation` varchar(191) DEFAULT NULL,
  `motherOfficeAddress` varchar(255) DEFAULT NULL,
  `motherOfficePhone` varchar(11) DEFAULT NULL,
  `motherHomeAddress` varchar(255) DEFAULT NULL,
  `motherHomePhone` varchar(11) DEFAULT NULL,
  `livesWith` varchar(30) DEFAULT NULL,
  `inoculations` varchar(3) NOT NULL,
  `inoculationsNotTaken` varchar(191) DEFAULT NULL,
  `disease` varchar(3) NOT NULL,
  `diseaseSufferingFrom` varchar(191) DEFAULT NULL,
  `suffer` varchar(3) NOT NULL,
  `sufferFrom` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(11) UNSIGNED NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sss`
--

CREATE TABLE `sss` (
  `id` int(11) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sss`
--

INSERT INTO `sss` (`id`, `subject`, `created_at`) VALUES
(1, 'English', '2023-04-25 10:40:25'),
(2, 'Maths', '2023-04-25 10:40:25'),
(3, 'Biology', '2023-04-25 10:40:25'),
(4, 'Economic', '2023-04-25 10:40:25'),
(5, 'Geography', '2023-04-25 10:40:25'),
(6, 'Civic Education', '2023-04-25 10:40:25'),
(9, 'Chemistry', '2023-04-25 10:40:25'),
(10, 'Commerce', '2023-04-25 10:40:25'),
(11, 'Literature In English', '2023-04-25 10:40:25'),
(12, 'Goverment', '2023-04-25 10:40:25'),
(13, 'Further Maths', '2023-04-25 10:40:25'),
(14, 'Christian Religious Studies', '2023-04-25 10:40:25'),
(15, 'Physics', '2023-04-26 13:46:19'),
(16, 'Financial Accounting', '2023-04-26 13:46:19'),
(17, 'Information Technology', '2023-04-26 13:46:19'),
(18, 'Yoruba', '2023-04-26 13:46:19'),
(19, 'Agricultural Science', '2023-04-26 13:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `sss_result`
--

CREATE TABLE `sss_result` (
  `id` int(2) UNSIGNED NOT NULL,
  `class` varchar(12) NOT NULL,
  `level` varchar(2) NOT NULL,
  `class_number` varchar(255) NOT NULL,
  `student_admission_number` varchar(12) NOT NULL,
  `Agricultural_Science` text NOT NULL,
  `Information_Technology` text NOT NULL,
  `Financial_Accounting` text NOT NULL,
  `Physics` text NOT NULL,
  `english` int(3) DEFAULT NULL,
  `maths` int(3) DEFAULT NULL,
  `biology` int(3) DEFAULT NULL,
  `economic` int(3) DEFAULT NULL,
  `geography` int(3) DEFAULT NULL,
  `civic_education` int(3) DEFAULT NULL,
  `account` int(3) DEFAULT NULL,
  `physic` int(3) DEFAULT NULL,
  `chemistry` int(3) DEFAULT NULL,
  `tourism` int(3) DEFAULT NULL,
  `garment_making` int(3) DEFAULT NULL,
  `data_processing` int(3) DEFAULT NULL,
  `commerce` int(3) DEFAULT NULL,
  `agriculture_science` int(3) DEFAULT NULL,
  `technical_drawing` int(3) DEFAULT NULL,
  `literature_in_english` int(3) DEFAULT NULL,
  `yoruba` int(3) DEFAULT NULL,
  `diction` int(3) DEFAULT NULL,
  `crs_irs` int(3) DEFAULT NULL,
  `goverment` int(3) DEFAULT NULL,
  `further_maths` int(3) DEFAULT NULL,
  `dyeing_and_bleaching` int(3) NOT NULL,
  `marketing` int(3) NOT NULL,
  `visual_art` int(3) NOT NULL,
  `christian_religious_studies` int(3) NOT NULL,
  `computer` int(3) NOT NULL,
  `food_and_nutrition` int(3) NOT NULL,
  `affective_psychological_development` int(3) NOT NULL,
  `health` int(3) NOT NULL,
  `cognition_development` int(3) NOT NULL,
  `safety_measures` int(3) NOT NULL,
  `protection_issues` int(3) NOT NULL,
  `physical_development` int(3) NOT NULL,
  `water_and_environmental` int(3) NOT NULL,
  `number_of_times_present` int(3) DEFAULT NULL,
  `number_of_times_punctual` int(3) DEFAULT NULL,
  `cleanliness` varchar(10) DEFAULT NULL,
  `conduct` varchar(60) DEFAULT NULL,
  `teacher_comment` varchar(100) DEFAULT NULL,
  `principal_comment` varchar(100) DEFAULT NULL,
  `academic_year` varchar(100) DEFAULT NULL,
  `term_type` varchar(10) NOT NULL,
  `result_type` varchar(6) NOT NULL,
  `next_resumption_date` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `approval` varchar(80) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id` int(11) UNSIGNED NOT NULL,
  `stud_id` varchar(50) NOT NULL,
  `question_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `choice_id` int(11) NOT NULL,
  `has_quiz` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `stud_id`, `question_id`, `category_id`, `choice_id`, `has_quiz`) VALUES
(1, 'SSS153', 1482829680, 1, 1, 1),
(2, 'SSS153', 815639003, 1, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) UNSIGNED NOT NULL,
  `studid` varchar(50) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `graduated` date DEFAULT NULL,
  `last_school` varchar(100) DEFAULT NULL,
  `pref_course` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance`
--

CREATE TABLE `student_attendance` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_admission_number` varchar(100) DEFAULT NULL,
  `current_session` varchar(100) DEFAULT NULL,
  `current_term` varchar(100) DEFAULT NULL,
  `checkdate_time_in` datetime DEFAULT NULL,
  `checkdate_time_out` datetime DEFAULT NULL,
  `checkdate` varchar(100) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `level` varchar(100) DEFAULT NULL,
  `class_number` varchar(100) DEFAULT NULL,
  `reason_for_absence` varchar(100) NOT NULL,
  `date_posted` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_attendance`
--

INSERT INTO `student_attendance` (`id`, `student_admission_number`, `current_session`, `current_term`, `checkdate_time_in`, `checkdate_time_out`, `checkdate`, `class`, `level`, `class_number`, `reason_for_absence`, `date_posted`) VALUES
(1, 'SS0212', '2023/2024', 'First Term', '2023-09-07 11:57:24', NULL, '2023-09-07', 'YEAR', '2', 'Iris', '', '2023-10-30 03:51:21'),
(2, 'SS0208', '2023/2024', 'First Term', '2023-09-07 11:57:24', NULL, '2023-09-07', 'YEAR', '2', 'Iris', '', '2023-10-30 03:51:21'),
(3, 'SS0202', '2023/2024', 'First Term', '2023-09-07 11:57:24', NULL, '2023-09-07', 'YEAR', '2', 'Iris', '', '2023-10-30 03:51:21'),
(4, 'SS0204', '2023/2024', 'First Term', '2023-09-07 11:57:24', NULL, '2023-09-07', 'YEAR', '2', 'Iris', '', '2023-10-30 03:51:21'),
(19, 'SS0159', '2023/2024', 'First Term', '2023-09-11 08:44:11', '2023-09-11 05:57:18', '2023-09-11', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(20, 'SS0146', '2023/2024', 'First Term', '2023-09-11 08:44:11', '2023-09-11 05:57:18', '2023-09-11', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(21, 'SS0158', '2023/2024', 'First Term', '2023-09-11 08:44:11', '2023-09-11 05:57:18', '2023-09-11', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(22, 'SS0143', '2023/2024', 'First Term', '2023-09-11 08:44:11', '2023-09-11 05:57:18', '2023-09-11', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(23, 'SS0374', '2023/2024', 'First Term', '2023-09-11 12:29:04', NULL, '2023-09-11', 'YEAR', '5', 'Tulip ', '', '2023-10-30 03:51:21'),
(24, 'SS0151', '2023/2024', 'First Term', '2023-09-11 05:57:18', '2023-09-11 05:57:18', '2023-09-11', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(25, 'SS0190', '2023/2024', 'First Term', '2023-09-11 05:57:18', '2023-09-11 05:57:18', '2023-09-11', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(26, 'SS0152', '2023/2024', 'First Term', '2023-09-11 05:57:18', '2023-09-11 05:57:18', '2023-09-11', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(27, 'SS0183', '2023/2024', 'First Term', '2023-09-11 05:57:18', '2023-09-11 05:57:18', '2023-09-11', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(28, 'SS0145', '2023/2024', 'First Term', '2023-09-11 05:57:18', '2023-09-11 05:57:18', '2023-09-11', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(29, 'SS0144', '2023/2024', 'First Term', '2023-09-11 05:57:18', '2023-09-11 05:57:18', '2023-09-11', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(30, 'SS0156', '2023/2024', 'First Term', '2023-09-11 05:57:18', '2023-09-11 05:57:18', '2023-09-11', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(31, 'SS0147', '2023/2024', 'First Term', '2023-09-11 05:57:18', '2023-09-11 05:57:18', '2023-09-11', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(32, 'SS0157', '2023/2024', 'First Term', '2023-09-11 05:57:18', '2023-09-11 05:57:18', '2023-09-11', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(33, 'SS0151', '2023/2024', 'First Term', '2023-09-12 05:59:56', '2023-09-12 05:59:56', '2023-09-12', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(34, 'SS0190', '2023/2024', 'First Term', '2023-09-12 05:59:56', '2023-09-12 05:59:56', '2023-09-12', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(35, 'SS0152', '2023/2024', 'First Term', '2023-09-12 05:59:56', '2023-09-12 05:59:56', '2023-09-12', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(36, 'SS0183', '2023/2024', 'First Term', '2023-09-12 05:59:56', '2023-09-12 05:59:56', '2023-09-12', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(37, 'SS0159', '2023/2024', 'First Term', '2023-09-12 05:59:56', '2023-09-12 05:59:56', '2023-09-12', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(38, 'SS0145', '2023/2024', 'First Term', '2023-09-12 05:59:56', '2023-09-12 05:59:56', '2023-09-12', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(39, 'SS0144', '2023/2024', 'First Term', '2023-09-12 05:59:56', '2023-09-12 05:59:56', '2023-09-12', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(40, 'SS0156', '2023/2024', 'First Term', '2023-09-12 05:59:56', '2023-09-12 05:59:56', '2023-09-12', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(41, 'SS0147', '2023/2024', 'First Term', '2023-09-12 05:59:56', '2023-09-12 05:59:56', '2023-09-12', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(42, 'SS0157', '2023/2024', 'First Term', '2023-09-12 05:59:56', '2023-09-12 05:59:56', '2023-09-12', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(43, 'SS0146', '2023/2024', 'First Term', '2023-09-12 05:59:56', '2023-09-12 05:59:56', '2023-09-12', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(44, 'SS0158', '2023/2024', 'First Term', '2023-09-12 05:59:56', '2023-09-12 05:59:56', '2023-09-12', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(45, 'SS0143', '2023/2024', 'First Term', '2023-09-12 05:59:56', '2023-09-12 05:59:56', '2023-09-12', 'NURSERY', '2', 'Iris ', '', '2023-10-30 03:51:21'),
(46, 'SS0285', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(47, 'SS0284', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(48, 'SS0304', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(49, 'SS0283', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(50, 'SS0294', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(51, 'SS0323', '2023/2024', 'First Term', '2023-09-13 02:42:12', NULL, '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(52, 'SS0289', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(53, 'SS0286', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(54, 'SS0298', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(55, 'SS0300', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(56, 'SS0307', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(57, 'SS0322', '2023/2024', 'First Term', '2023-09-13 02:42:12', NULL, '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(58, 'SS0319', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(59, 'SS0299', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(60, 'SS0293', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(61, 'SS0257', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(62, 'SS0253', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(63, 'SS0258', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(64, 'SS0308', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(65, 'SS0309', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(66, 'SS0256', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(67, 'SS0288', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(68, 'SS0282', '2023/2024', 'First Term', '2023-09-13 02:42:12', '2023-09-13 02:43:14', '2023-09-13', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(69, 'SS0361', '2023/2024', 'First Term', '2023-09-13 03:41:27', '2023-09-13 03:41:48', '2023-09-13', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(70, 'SS0275', '2023/2024', 'First Term', '2023-09-13 03:41:27', '2023-09-13 03:41:48', '2023-09-13', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(71, 'SS0290', '2023/2024', 'First Term', '2023-09-13 03:41:27', '2023-09-13 03:41:48', '2023-09-13', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(72, 'SS0296', '2023/2024', 'First Term', '2023-09-13 03:41:27', '2023-09-13 03:41:48', '2023-09-13', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(73, 'SS0273', '2023/2024', 'First Term', '2023-09-13 03:41:27', '2023-09-13 03:41:48', '2023-09-13', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(74, 'SS0274', '2023/2024', 'First Term', '2023-09-13 03:41:27', '2023-09-13 03:41:48', '2023-09-13', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(75, 'SS0301', '2023/2024', 'First Term', '2023-09-13 03:41:27', '2023-09-13 03:41:48', '2023-09-13', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(76, 'SS0292', '2023/2024', 'First Term', '2023-09-13 03:41:27', '2023-09-13 03:41:48', '2023-09-13', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(77, 'SS0249', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(78, 'SS0260', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(79, 'SS0277', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(80, 'SS0255', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(81, 'SS0251', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(82, 'SS0250', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(83, 'SS0249', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(84, 'SS0172', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(85, 'SS0305', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(86, 'SS0280', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(87, 'SS0268', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(88, 'SS0306', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(89, 'SS0266', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(90, 'SS0314', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(91, 'SS0263', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(92, 'SS0312', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(93, 'SS0264', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(94, 'SS0271', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(95, 'SS0269', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(96, 'SS0262', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(97, 'SS0281', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(98, 'SS0267', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(99, 'SS0270', '2023/2024', 'First Term', '2023-09-13 03:43:22', NULL, '2023-09-13', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(100, 'SS0238', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(101, 'SS0235', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(102, 'SS0231', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(103, 'SS0236', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(104, 'SS0246', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(105, 'SS0232', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(106, 'SS0246', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(107, 'SS0230', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(108, 'SS0233', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(109, 'SS0237', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(110, 'SS0170', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(111, 'SS0239', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(112, 'SS0220', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(113, 'SS0242', '2023/2024', 'First Term', '2023-09-13 05:05:01', '2023-09-13 05:05:53', '2023-09-13', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(114, 'SS0238', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(115, 'SS0235', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(116, 'SS0231', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(117, 'SS0236', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(118, 'SS0246', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(119, 'SS0232', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(120, 'SS0246', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(121, 'SS0230', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(122, 'SS0233', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(123, 'SS0237', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(124, 'SS0170', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(125, 'SS0239', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(126, 'SS0220', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(127, 'SS0242', '2023/2024', 'First Term', '2023-09-14 11:55:34', NULL, '2023-09-14', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(128, 'SS0285', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(129, 'SS0284', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(130, 'SS0304', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(131, 'SS0283', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(132, 'SS0294', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(133, 'SS0289', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(134, 'SS0286', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(135, 'SS0298', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(136, 'SS0300', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(137, 'SS0307', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(138, 'SS0319', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(139, 'SS0299', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(140, 'SS0293', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(141, 'SS0257', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(142, 'SS0253', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(143, 'SS0258', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(144, 'SS0308', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(145, 'SS0309', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(146, 'SS0256', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(147, 'SS0288', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(148, 'SS0282', '2023/2024', 'First Term', '2023-09-14 12:54:42', NULL, '2023-09-14', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(149, 'SS0238', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(150, 'SS0235', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(151, 'SS0231', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(152, 'SS0236', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(153, 'SS0246', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(154, 'SS0232', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(155, 'SS0246', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(156, 'SS0230', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(157, 'SS0233', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(158, 'SS0237', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(159, 'SS0170', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(160, 'SS0239', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(161, 'SS0220', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(162, 'SS0242', '2023/2024', 'First Term', '2023-09-15 08:33:05', NULL, '2023-09-15', 'YEAR', '2', 'Tulip ', '', '2023-10-30 03:51:21'),
(163, 'SS0361', '2023/2024', 'First Term', '2023-09-15 01:02:28', '2023-09-15 01:02:50', '2023-09-15', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(164, 'SS0275', '2023/2024', 'First Term', '2023-09-15 01:02:28', '2023-09-15 01:02:50', '2023-09-15', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(165, 'SS0290', '2023/2024', 'First Term', '2023-09-15 01:02:28', '2023-09-15 01:02:50', '2023-09-15', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(166, 'SS0296', '2023/2024', 'First Term', '2023-09-15 01:02:28', '2023-09-15 01:02:50', '2023-09-15', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(167, 'SS0273', '2023/2024', 'First Term', '2023-09-15 01:02:28', '2023-09-15 01:02:50', '2023-09-15', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(168, 'SS0274', '2023/2024', 'First Term', '2023-09-15 01:02:28', '2023-09-15 01:02:50', '2023-09-15', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(169, 'SS0301', '2023/2024', 'First Term', '2023-09-15 01:02:28', '2023-09-15 01:02:50', '2023-09-15', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(170, 'SS0292', '2023/2024', 'First Term', '2023-09-15 01:02:28', '2023-09-15 01:02:50', '2023-09-15', 'YEAR', '3', 'Orchid ', '', '2023-10-30 03:51:21'),
(171, 'SS0285', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(172, 'SS0284', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(173, 'SS0304', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(174, 'SS0283', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(175, 'SS0294', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(176, 'SS0289', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(177, 'SS0286', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(178, 'SS0298', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(179, 'SS0300', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(180, 'SS0307', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(181, 'SS0319', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(182, 'SS0299', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(183, 'SS0293', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(184, 'SS0257', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(185, 'SS0253', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(186, 'SS0258', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(187, 'SS0308', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(188, 'SS0309', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(189, 'SS0256', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(190, 'SS0288', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(191, 'SS0282', '2023/2024', 'First Term', '2023-09-15 01:05:30', NULL, '2023-09-15', 'YEAR', '3', 'Hyacinth ', '', '2023-10-30 03:51:21'),
(192, 'SS0249', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(193, 'SS0260', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(194, 'SS0277', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(195, 'SS0255', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(196, 'SS0251', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(197, 'SS0250', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(198, 'SS0249', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(199, 'SS0172', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(200, 'SS0305', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(201, 'SS0280', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(202, 'SS0268', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(203, 'SS0306', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(204, 'SS0266', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(205, 'SS0314', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(206, 'SS0263', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(207, 'SS0312', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(208, 'SS0261', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(209, 'SS0264', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(210, 'SS0271', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(211, 'SS0269', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(212, 'SS0279', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(213, 'SS0262', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(214, 'SS0281', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(215, 'SS0267', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(216, 'SS0270', '2023/2024', 'First Term', '2023-09-15 03:32:00', NULL, '2023-09-15', 'YEAR', '3', 'Tulip', '', '2023-10-30 03:51:21'),
(333, 'SS0446', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(334, 'SS0451', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(335, 'SS0462', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(336, 'SS0473', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(337, 'SS0453', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(338, 'SS0441', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(339, 'SS0439', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(340, 'SS0458', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(341, 'SS0475', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(342, 'SS0469', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(343, 'SS0464', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(344, 'SS0442', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(345, 'SS0595', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(346, 'SS0448', '2023/2024', 'First Term', '2023-10-30 04:51:47', '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(347, 'SS0465', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose', '', '2023-10-30 03:51:47'),
(348, 'SS0455', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose', '', '2023-10-30 03:51:47'),
(349, 'SS0461', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose ', '', '2023-10-30 03:51:47'),
(350, 'SS0454', '2023/2024', 'First Term', NULL, '2023-10-30 04:52:55', '2023-10-30', 'JSS', '2', 'Zinnia ', 'Medical appointments', '2023-10-30 03:51:47'),
(351, 'SS0456', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose', '', '2023-10-30 03:51:47'),
(352, 'SS0443', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Zinnia', '', '2023-10-30 03:51:47'),
(353, 'SS0470', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Zinnia ', 'Family emergencies', '2023-10-30 03:51:47'),
(354, 'SS0452', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose', '', '2023-10-30 03:51:47'),
(355, 'SS0444', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose', '', '2023-10-30 03:51:47'),
(356, 'SS0460', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose', '', '2023-10-30 03:51:47'),
(357, 'SS0449', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose', '', '2023-10-30 03:51:47'),
(358, 'SS0457', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose', '', '2023-10-30 03:51:47'),
(359, 'SS0466', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose', '', '2023-10-30 03:51:47'),
(360, 'SS0463', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose', '', '2023-10-30 03:51:47'),
(361, 'SS0450', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose', '', '2023-10-30 03:51:47'),
(362, 'SS0467', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose', '', '2023-10-30 03:51:47'),
(363, 'SS0445', '2023/2024', 'First Term', NULL, NULL, '2023-10-30', 'JSS', '2', 'Rose', '', '2023-10-30 03:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `student_attendance_settings`
--

CREATE TABLE `student_attendance_settings` (
  `id` int(11) UNSIGNED ZEROFILL NOT NULL,
  `current_session` varchar(100) NOT NULL,
  `current_term` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_attendance_settings`
--

INSERT INTO `student_attendance_settings` (`id`, `current_session`, `current_term`, `date_created`, `date_updated`) VALUES
(00000000001, '2023/2024', 'First Term', '2023-04-21 11:20:18', '2023-04-21 11:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `student_fee_payment_details`
--

CREATE TABLE `student_fee_payment_details` (
  `id` int(11) UNSIGNED NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `session` varchar(50) NOT NULL,
  `term` varchar(20) NOT NULL,
  `class` varchar(20) NOT NULL,
  `level` int(11) NOT NULL,
  `fee_category` varchar(255) DEFAULT NULL,
  `fee_setup_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `total_amount_due` varchar(200) NOT NULL,
  `discount` varchar(200) NOT NULL,
  `approval` varchar(200) NOT NULL DEFAULT ' ',
  `discount_trans_id` varchar(500) NOT NULL,
  `discount_availability` varchar(500) NOT NULL,
  `fee_payment_history_id` int(11) DEFAULT NULL,
  `approval_status` varchar(500) NOT NULL,
  `fee_editable_status` varchar(500) NOT NULL,
  `prev_outstanding_debt` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject_allocate`
--

CREATE TABLE `subject_allocate` (
  `id` int(10) UNSIGNED ZEROFILL NOT NULL,
  `emp_id` int(11) NOT NULL,
  `class` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subject_allocate`
--

INSERT INTO `subject_allocate` (`id`, `emp_id`, `class`, `level`, `subject`) VALUES
(0000000001, 192, 'jss', '1', 'Business Studies'),
(0000000003, 194, 'nursery', '1', 'Mathematics'),
(0000000004, 194, 'nursery', '1', 'Quantitative Reasoning'),
(0000000005, 194, 'nursery', '1', 'Practical Life'),
(0000000006, 194, 'nursery', '1', 'Nursery Science');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checkin`
--

CREATE TABLE `tbl_checkin` (
  `id` int(11) UNSIGNED NOT NULL,
  `checkdate` varchar(10) DEFAULT NULL,
  `checktime` time DEFAULT NULL,
  `type` varchar(6) DEFAULT NULL COMMENT '0-checkin, 1-checkout, 2-breakin, 3-breakout, 4-otin 5-otout',
  `SN` varchar(20) DEFAULT NULL,
  `user_id` varchar(20) DEFAULT NULL,
  `dateCreated` varchar(20) DEFAULT NULL,
  `dateUpdated` varchar(20) DEFAULT NULL,
  `valid` varchar(11) DEFAULT NULL,
  `pin` varchar(11) DEFAULT NULL,
  `compid` varchar(11) DEFAULT NULL,
  `checkdatetime` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checkinout`
--

CREATE TABLE `tbl_checkinout` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `SN` varchar(20) DEFAULT NULL,
  `checkdate` date DEFAULT NULL,
  `checkin` time DEFAULT NULL,
  `checkout` time DEFAULT NULL,
  `breakout` time DEFAULT NULL,
  `breakin` time DEFAULT NULL,
  `otin` time DEFAULT NULL,
  `otout` time DEFAULT NULL,
  `verifycode` varchar(11) DEFAULT NULL,
  `sensorid` varchar(5) DEFAULT NULL,
  `WorkCode` varchar(20) DEFAULT NULL,
  `Reserved` varchar(20) DEFAULT NULL,
  `stat` varchar(10) DEFAULT 'no',
  `cit` varchar(20) DEFAULT NULL,
  `cot` varchar(20) DEFAULT NULL,
  `bot` varchar(20) DEFAULT NULL,
  `bit` varchar(20) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `compid` varchar(20) DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `clock_input_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_device`
--

CREATE TABLE `tbl_device` (
  `id` int(11) UNSIGNED NOT NULL,
  `SN` varchar(20) DEFAULT NULL,
  `State` varchar(11) DEFAULT '0',
  `LastActivity` varchar(20) DEFAULT NULL,
  `LogStamp` varchar(20) DEFAULT NULL,
  `OpLogStamp` varchar(20) DEFAULT NULL,
  `PhotoStamp` varchar(20) DEFAULT NULL,
  `Alias` varchar(50) DEFAULT NULL,
  `DeptID` varchar(11) DEFAULT NULL,
  `UpdateDB` varchar(200) DEFAULT '1111101100',
  `IPAddress` varchar(20) DEFAULT NULL,
  `CompanyID` varchar(20) DEFAULT NULL,
  `deviceType` varchar(100) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateUpdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) UNSIGNED NOT NULL,
  `pin` int(20) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `device` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Card` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Privilege` int(11) DEFAULT NULL,
  `AccGroup` int(11) DEFAULT NULL,
  `TimeZones` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `compid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `emptype` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `designation_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `grade_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `shift_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `bg` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dob` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `empdate` varchar(20) DEFAULT NULL,
  `phone` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `department_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `location_id` varchar(10) DEFAULT NULL,
  `imgpath` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `paddr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `oemail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `emergcontact` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `genotype` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pass` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `city` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lga` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `staffid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `emppriv` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lastemp` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dateleft` date DEFAULT NULL,
  `latestq` text CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `dateq` date DEFAULT NULL,
  `smsbalance` int(11) DEFAULT 10,
  `datecreated` datetime DEFAULT NULL,
  `dateupdated` datetime DEFAULT NULL,
  `image` tinyblob DEFAULT NULL,
  `usertype` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'Employee',
  `bankname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `accno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `login_type` varchar(90) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `resetpass` varchar(200) DEFAULT NULL,
  `country_id` varchar(11) DEFAULT NULL,
  `hierarchy` varchar(100) DEFAULT NULL,
  `upload_file` text DEFAULT NULL,
  `usergroup` varchar(50) DEFAULT NULL,
  `sup_pin` int(11) DEFAULT NULL,
  `hr_pin` int(11) DEFAULT NULL,
  `pm_pin` int(11) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `nok_name` varchar(50) DEFAULT NULL,
  `nok_address` text DEFAULT NULL,
  `nok_phone` varchar(20) DEFAULT NULL,
  `nok_relationship` varchar(100) DEFAULT NULL,
  `marital_status` varchar(50) DEFAULT NULL,
  `regulatory_id` varchar(50) DEFAULT NULL,
  `regulatory_expirydate` date DEFAULT NULL,
  `vehicle_make` varchar(50) DEFAULT NULL,
  `plate_no` varchar(50) DEFAULT NULL,
  `add_doc` varchar(10) DEFAULT NULL,
  `delete_doc` varchar(10) DEFAULT NULL,
  `update_doc` varchar(10) DEFAULT NULL,
  `view_doc` varchar(10) DEFAULT NULL,
  `resetcode` text DEFAULT NULL,
  `bankid` varchar(10) DEFAULT NULL,
  `pension` varchar(20) DEFAULT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `nsitf` varchar(20) DEFAULT NULL,
  `nhf` varchar(20) DEFAULT NULL,
  `itf` varchar(20) DEFAULT NULL,
  `aboutme` varchar(200) DEFAULT NULL,
  `lrate` varchar(10) DEFAULT NULL,
  `arate` varchar(10) DEFAULT NULL,
  `ot1rate` varchar(10) DEFAULT NULL,
  `ot2rate` varchar(10) DEFAULT NULL,
  `dateresign` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_template`
--

CREATE TABLE `tbl_user_template` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `SN` varchar(20) NOT NULL,
  `Template` longtext NOT NULL,
  `FingerID` smallint(6) NOT NULL,
  `Valid` smallint(6) NOT NULL,
  `DelTag` smallint(6) NOT NULL,
  `UTime` datetime DEFAULT NULL,
  `BITMAPPICTURE` longtext DEFAULT NULL,
  `BITMAPPICTURE2` longtext DEFAULT NULL,
  `BITMAPPICTURE3` longtext DEFAULT NULL,
  `BITMAPPICTURE4` longtext DEFAULT NULL,
  `USETYPE` smallint(6) DEFAULT NULL,
  `Template2` longtext DEFAULT NULL,
  `Template3` longtext DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `dateUpdated` datetime DEFAULT NULL,
  `pin` int(11) DEFAULT NULL,
  `compid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(191) UNSIGNED NOT NULL,
  `first_start` date NOT NULL,
  `first_end` date NOT NULL,
  `second_start` date NOT NULL,
  `second_end` date NOT NULL,
  `third_start` date NOT NULL,
  `third_end` date NOT NULL,
  `academic_year` varchar(10) NOT NULL,
  `status` varchar(9) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `first_start`, `first_end`, `second_start`, `second_end`, `third_start`, `third_end`, `academic_year`, `status`, `created_at`, `updated_at`) VALUES
(16, '2023-09-11', '2023-12-15', '2024-01-08', '2024-04-05', '2024-04-22', '2024-07-19', '2023/2024', 'active', '2023-09-01 12:55:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE `userdata` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `str_password` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(100) DEFAULT NULL,
  `user_role` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `user_role`, `created_at`) VALUES
(1, 'SSSadmin', '', '2023-08-24 08:35:28'),
(2, 'SSS_T_003', 'Vice Principal', '2023-09-01 11:59:48'),
(3, 'SSS_T_009', 'Teacher', '2023-09-06 14:13:23'),
(4, 'SSS_T_040', 'Teacher', '2023-09-07 10:47:21'),
(5, 'SSS_T_031', 'Teacher', '2023-09-07 10:49:29'),
(6, 'SSS_T_022', 'Teacher ', '2023-09-07 10:50:31'),
(7, 'SSS_T_032', 'Teacher', '2023-09-07 10:51:16'),
(8, 'SSS_T_015', 'Teacher', '2023-09-07 10:51:20'),
(9, 'SSS_T_011', 'Teacher', '2023-09-07 10:52:07'),
(10, 'SSS_T_029', 'Teacher', '2023-09-07 10:53:25'),
(11, 'SSS_T_017', 'Teacher', '2023-09-07 10:54:10'),
(12, 'SSS_T_013', 'Teacher', '2023-09-07 10:54:14'),
(13, 'SSS_T_034', 'Educator', '2023-09-07 10:55:04'),
(14, 'SSS_T_039', 'Teacher', '2023-09-07 10:55:26'),
(15, 'SSS_T_005', 'School Administraor 2', '2023-09-07 11:04:51'),
(16, 'SSS_T_036', 'Teacher', '2023-09-08 11:36:42'),
(17, 'SSS_T_041', 'Teacher', '2023-09-10 12:26:08'),
(18, 'SSS_T_042', 'Teacher', '2023-09-10 18:08:10'),
(19, 'SSS_T_020', 'Class Educator', '2023-09-11 15:42:10'),
(20, 'SSS_T_023', 'Teacher', '2023-09-13 14:22:28'),
(21, 'SSS_T_018', 'Teacher', '2023-09-14 12:05:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_control`
--
ALTER TABLE `access_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_charts`
--
ALTER TABLE `account_charts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acct_transactions`
--
ALTER TABLE `acct_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affective`
--
ALTER TABLE `affective`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `choice`
--
ALTER TABLE `choice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_choices_1` (`questionid`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communication_diary`
--
ALTER TABLE `communication_diary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_comm`
--
ALTER TABLE `daily_comm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_sched`
--
ALTER TABLE `exam_sched`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_payment_history`
--
ALTER TABLE `fee_payment_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_columns_payment_history` (`student_id`,`session`,`term`,`class`,`level`);

--
-- Indexes for table `fee_payment_installments`
--
ALTER TABLE `fee_payment_installments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_reference` (`payment_reference`),
  ADD KEY `fee_payment_history_id` (`fee_payment_history_id`);

--
-- Indexes for table `fee_setups`
--
ALTER TABLE `fee_setups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_fee_category_columns` (`fee_category`,`session`,`term`,`class`,`level`);

--
-- Indexes for table `institution_details`
--
ALTER TABLE `institution_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jss`
--
ALTER TABLE `jss`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject` (`subject`);

--
-- Indexes for table `jss_result`
--
ALTER TABLE `jss_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kindergarten_result`
--
ALTER TABLE `kindergarten_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_development`
--
ALTER TABLE `language_development`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject` (`subject`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`),
  ADD UNIQUE KEY `user_id-user_category` (`user_id`,`user_category`) USING BTREE;

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nursery`
--
ALTER TABLE `nursery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject` (`subject`);

--
-- Indexes for table `nursery_result`
--
ALTER TABLE `nursery_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preschool_classes`
--
ALTER TABLE `preschool_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`);

--
-- Indexes for table `preschool_result`
--
ALTER TABLE `preschool_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preschool_subjects`
--
ALTER TABLE `preschool_subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject` (`subject`);

--
-- Indexes for table `primary`
--
ALTER TABLE `primary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject` (`subject`);

--
-- Indexes for table `primary_addmission_form_filled`
--
ALTER TABLE `primary_addmission_form_filled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primary_quarterly_report`
--
ALTER TABLE `primary_quarterly_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `primary_result`
--
ALTER TABLE `primary_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `psychomotors`
--
ALTER TABLE `psychomotors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_question_1` (`category_id`);

--
-- Indexes for table `registered_employees`
--
ALTER TABLE `registered_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registered_students`
--
ALTER TABLE `registered_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result_template`
--
ALTER TABLE `result_template`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roseville_events`
--
ALTER TABLE `roseville_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_color`
--
ALTER TABLE `school_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secondary_addmission_form_filled`
--
ALTER TABLE `secondary_addmission_form_filled`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sss`
--
ALTER TABLE `sss`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subject` (`subject`);

--
-- Indexes for table `sss_result`
--
ALTER TABLE `sss_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_student_1` (`pref_course`),
  ADD KEY `FK_student_2` (`user_id`);

--
-- Indexes for table `student_attendance`
--
ALTER TABLE `student_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendance_settings`
--
ALTER TABLE `student_attendance_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fee_payment_details`
--
ALTER TABLE `student_fee_payment_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_columns_student_fee_payment_details` (`student_id`,`session`,`term`,`class`,`level`,`fee_setup_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `fee_payment_history_id` (`fee_payment_history_id`);

--
-- Indexes for table `subject_allocate`
--
ALTER TABLE `subject_allocate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_checkin`
--
ALTER TABLE `tbl_checkin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK416B98AC3C9F2E8D` (`user_id`),
  ADD KEY `FK_4fagmo0nikeon8ubhpaxq8f11` (`SN`);

--
-- Indexes for table `tbl_checkinout`
--
ALTER TABLE `tbl_checkinout`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`checkdate`,`checkin`),
  ADD KEY `FK81D47223C9F2E8D` (`user_id`),
  ADD KEY `FK_mvtpkbvm9cpksqwh7eka6w8al` (`compid`),
  ADD KEY `FK_eya0rrd8oqvhekwmnnmgxihlr` (`SN`);

--
-- Indexes for table `tbl_device`
--
ALTER TABLE `tbl_device`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `SN` (`SN`),
  ADD KEY `FK_nwc7y9q9bcvkriey3mc3yv011` (`CompanyID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `PIN_DEVICE` (`pin`,`device`),
  ADD UNIQUE KEY `UK_939pc8m70ucbaueo2oxq1xc1u` (`pin`,`device`),
  ADD KEY `FK_flwks5q9oqcgdsyy7on3f7qlp` (`compid`);

--
-- Indexes for table `tbl_user_template`
--
ALTER TABLE `tbl_user_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniqe_idx` (`user_id`,`FingerID`),
  ADD KEY `FK54EC53AD3C9F2E8D` (`user_id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_control`
--
ALTER TABLE `access_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_charts`
--
ALTER TABLE `account_charts`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acct_transactions`
--
ALTER TABLE `acct_transactions`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `affective`
--
ALTER TABLE `affective`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `choice`
--
ALTER TABLE `choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `communication_diary`
--
ALTER TABLE `communication_diary`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_comm`
--
ALTER TABLE `daily_comm`
  MODIFY `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_sched`
--
ALTER TABLE `exam_sched`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_payment_history`
--
ALTER TABLE `fee_payment_history`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_payment_installments`
--
ALTER TABLE `fee_payment_installments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_setups`
--
ALTER TABLE `fee_setups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `institution_details`
--
ALTER TABLE `institution_details`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jss`
--
ALTER TABLE `jss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `jss_result`
--
ALTER TABLE `jss_result`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kindergarten_result`
--
ALTER TABLE `kindergarten_result`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language_development`
--
ALTER TABLE `language_development`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `nursery`
--
ALTER TABLE `nursery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `nursery_result`
--
ALTER TABLE `nursery_result`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preschool_classes`
--
ALTER TABLE `preschool_classes`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preschool_result`
--
ALTER TABLE `preschool_result`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `preschool_subjects`
--
ALTER TABLE `preschool_subjects`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `primary`
--
ALTER TABLE `primary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `primary_addmission_form_filled`
--
ALTER TABLE `primary_addmission_form_filled`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `primary_quarterly_report`
--
ALTER TABLE `primary_quarterly_report`
  MODIFY `id` int(2) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `primary_result`
--
ALTER TABLE `primary_result`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psychomotors`
--
ALTER TABLE `psychomotors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2114921289;

--
-- AUTO_INCREMENT for table `registered_employees`
--
ALTER TABLE `registered_employees`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `registered_students`
--
ALTER TABLE `registered_students`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=631;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `result_template`
--
ALTER TABLE `result_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roseville_events`
--
ALTER TABLE `roseville_events`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `school_color`
--
ALTER TABLE `school_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `secondary_addmission_form_filled`
--
ALTER TABLE `secondary_addmission_form_filled`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sss`
--
ALTER TABLE `sss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sss_result`
--
ALTER TABLE `sss_result`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_attendance`
--
ALTER TABLE `student_attendance`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT for table `student_attendance_settings`
--
ALTER TABLE `student_attendance_settings`
  MODIFY `id` int(11) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_fee_payment_details`
--
ALTER TABLE `student_fee_payment_details`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_allocate`
--
ALTER TABLE `subject_allocate`
  MODIFY `id` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_checkin`
--
ALTER TABLE `tbl_checkin`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_checkinout`
--
ALTER TABLE `tbl_checkinout`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_device`
--
ALTER TABLE `tbl_device`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_template`
--
ALTER TABLE `tbl_user_template`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(191) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userdata`
--
ALTER TABLE `userdata`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `FK_question_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
