-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 28, 2020 at 01:55 AM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matrinomial`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext,
  `phone` longtext,
  `address` longtext,
  `email` longtext,
  `password` longtext,
  `role` varchar(10) DEFAULT NULL,
  `timestamp` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `phone`, `address`, `email`, `password`, `role`, `timestamp`) VALUES
(1, 'Master Admin', '123456789', 'NY', 'admin@admin.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '1', '1476397936');

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `business_settings_id` int(11) NOT NULL,
  `type` longtext NOT NULL,
  `value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_settings`
--

INSERT INTO `business_settings` (`business_settings_id`, `type`, `value`) VALUES
(1, 'paypal_set', 'ok'),
(2, 'stripe_set', 'ok'),
(3, 'paypal_email', ''),
(4, 'paypal_account_type', 'sandbox'),
(5, 'stripe_secret_key', 'sk_test_NYIpPjs6gbmuogdwUuJ8She4'),
(6, 'stripe_publishable_key', 'pk_test_SuCjGKYkw5J5c0ZXvCfvX3zx'),
(7, 'home_def_currency', '1'),
(8, 'currency', '1'),
(9, 'currency_format', 'us'),
(10, 'symbol_format', 's_amount'),
(11, 'no_of_decimals', '2'),
(12, 'pum_merchant_key', ''),
(13, 'pum_merchant_salt', ''),
(14, 'pum_set', 'ok'),
(15, 'pum_account_type', 'sandbox'),
(16, 'instamojo_set', 'ok'),
(17, 'instamojo_account_type', 'sandbox'),
(18, 'instamojo_api_key', ''),
(19, 'instamojo_auth_token', ''),
(20, 'custom_payment_method_1_set', 'ok'),
(21, 'custom_payment_method_1_name', 'Wire'),
(22, 'custom_payment_method_1_number', '001234567800'),
(23, 'custom_payment_method_1_instruction', 'Send money to the wire account\r\nEnter the transaction id\r\nIf you do not have transaction id upload a copy of the bill\r\nOr screenshot'),
(24, 'custom_payment_method_2_set', 'ok'),
(25, 'custom_payment_method_2_name', 'Bank Transfer'),
(26, 'custom_payment_method_2_number', 'ABC Bank, AC-4484132'),
(27, 'custom_payment_method_2_instruction', 'Send money to the sendmoney account\r\nEnter the transaction id\r\nIf you do not have transaction id upload a copy of the bill\r\nOr screenshot'),
(28, 'custom_payment_method_3_set', 'ok'),
(29, 'custom_payment_method_3_name', 'Bank Transfer 2'),
(30, 'custom_payment_method_3_number', '42424 2422222 4444'),
(31, 'custom_payment_method_3_instruction', 'Send money to the sendmoney account\r\nEnter the transaction id\r\nIf you do not have transaction id upload a copy of the bill\r\nOr screenshot'),
(32, 'custom_payment_method_4_set', 'ok'),
(33, 'custom_payment_method_4_name', 'Mypay'),
(34, 'custom_payment_method_4_number', '31168 2144'),
(35, 'custom_payment_method_4_instruction', 'Send money to the mypay account\r\nEnter the transaction id\r\nIf you do not have transaction id upload a copy of the bill\r\nOr screenshot');

-- --------------------------------------------------------

--
-- Table structure for table `caste`
--

CREATE TABLE `caste` (
  `caste_id` int(11) NOT NULL,
  `caste_name` varchar(255) NOT NULL,
  `religion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `caste`
--

INSERT INTO `caste` (`caste_id`, `caste_name`, `religion_id`) VALUES
(2, 'Brahmin', 4),
(3, 'Kshatriyas', 4),
(4, 'Vaishyas', 4),
(5, 'Shudras', 4),
(6, 'Shia', 7),
(7, 'Sunni', 7),
(8, 'Kohanim (Priests)', 2),
(9, 'Levites', 2),
(10, 'Israelites (Yisraelim)', 2),
(11, 'Khatri', 8),
(12, 'Jat', 8),
(13, 'Saini', 8),
(14, 'Sikh Rajputs', 8),
(15, 'Arora', 8),
(16, 'Mazhabi Sikhs', 8),
(17, 'Ramdasia', 8),
(18, 'Digambar', 9),
(19, 'Shwetamber', 9),
(20, 'Vania', 9),
(21, 'Anglo Indian', 3),
(22, 'Basel Mission', 3),
(23, 'Born Again', 3),
(24, 'Bretheren', 3),
(25, 'Catholic', 3),
(26, 'Catholic Knanya', 3),
(27, 'Chaldean Syrian', 3),
(28, 'Christian Nadar', 3),
(29, 'Church of North India (CNI)', 3),
(30, 'Church of South India (CSI)', 3),
(31, 'CMS', 3),
(32, 'Convert', 3),
(33, 'Evangelical', 3),
(34, 'Indian Orthodox', 3),
(35, 'Intercaste', 3),
(36, 'IPC', 3),
(37, 'Jacobite', 3),
(38, 'Knanaya Pentecostal', 3),
(39, 'Latin Catholic', 3),
(40, 'Marthoma', 3),
(41, 'Methodist', 3),
(42, 'Mormon', 3),
(43, 'Orthodox', 3),
(44, 'Pentecost', 3),
(45, 'Presbyterian', 3),
(46, 'Protestant', 3),
(47, 'Roman Catholic', 3),
(48, 'Salvation Army', 3),
(49, 'Scheduled Caste (SC)', 3),
(50, 'Scheduled Tribe (ST)', 3),
(51, 'Seventh day Adventist', 3),
(52, 'Syrian', 3),
(53, 'Syrian Catholic', 3),
(54, 'Syrian Orthodo', 3),
(55, 'Syro Malabar', 3);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `name`, `state_id`) VALUES
(1, 'Bombuflat', 1),
(2, 'Garacharma', 1),
(3, 'Port Blair', 1),
(4, 'Rangat', 1),
(5, 'Addanki', 2),
(6, 'Adivivaram', 2),
(7, 'Adoni', 2),
(8, 'Aganampudi', 2),
(9, 'Ajjaram', 2),
(10, 'Akividu', 2),
(11, 'Akkarampalle', 2),
(12, 'Akkayapalle', 2),
(13, 'Akkireddipalem', 2),
(14, 'Alampur', 2),
(15, 'Amalapuram', 2),
(16, 'Amudalavalasa', 2),
(17, 'Amur', 2),
(18, 'Anakapalle', 2),
(19, 'Anantapur', 2),
(20, 'Andole', 2),
(21, 'Atmakur', 2),
(22, 'Attili', 2),
(23, 'Avanigadda', 2),
(24, 'Badepalli', 2),
(25, 'Badvel', 2),
(26, 'Balapur', 2),
(27, 'Bandarulanka', 2),
(28, 'Banganapalle', 2),
(29, 'Bapatla', 2),
(30, 'Bapulapadu', 2),
(31, 'Belampalli', 2),
(32, 'Bestavaripeta', 2),
(33, 'Betamcherla', 2),
(34, 'Bhattiprolu', 2),
(35, 'Bhimavaram', 2),
(36, 'Bhimunipatnam', 2),
(37, 'Bobbili', 2),
(38, 'Bombuflat', 2),
(39, 'Bommuru', 2),
(40, 'Bugganipalle', 2),
(41, 'Challapalle', 2),
(42, 'Chandur', 2),
(43, 'Chatakonda', 2),
(44, 'Chemmumiahpet', 2),
(45, 'Chidiga', 2),
(46, 'Chilakaluripet', 2),
(47, 'Chimakurthy', 2),
(48, 'Chinagadila', 2),
(49, 'Chinagantyada', 2),
(50, 'Chinnachawk', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contact_message`
--

CREATE TABLE `contact_message` (
  `contact_message_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `subject` varchar(1000) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `message` longtext,
  `timestamp` varchar(20) DEFAULT NULL,
  `view` varchar(10) DEFAULT NULL,
  `reply` longtext,
  `other` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_message`
--

INSERT INTO `contact_message` (`contact_message_id`, `name`, `subject`, `email`, `message`, `timestamp`, `view`, `reply`, `other`) VALUES
(2, 'Geoffrey Jennings', 'Id labore fuga Quibusdam quis dolores aspernatur illum rerum pariatur Molestiae quia proident voluptas ipsum consectetur esse esse tenetur', 'wemomaqiz@yahoo.com', 'Ab dolor consequatur elit sed Nam aut', '1516102345', 'no', '<p>testing</p>', NULL),
(3, 'Thomas Middleton', 'Nam perferendis quos omnis doloremque corporis qui consectetur qui est quidem ut quae', 'hifuwum@yahoo.com', 'Ut labore molestias consequatur consequuntur laudantium aspernatur occaecat quisquam dolorem odit aliquam non', '1516102635', 'no', '<p>mbhjbk</p>', NULL),
(4, 'DemoName', 'Demo Subject', 'demo@address.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncill', '1516161820', 'no', '<p>ok</p>', NULL),
(5, 'Cecilia Sharp', 'Deleniti pariatur Tempor rerum sunt id nihil nulla Nam labore', 'myhaw@hotmail.com', 'Hic consectetur nisi Nam pariatur Consectetur est et qui ut ex voluptas delectus exercitationem sit pariatur', '1517824102', 'no', '<p>sdEQWRTWYHtsrifyupogui[gipjursrawsafcxc</p>', NULL),
(6, 'Amal Parks', 'Consequat Aspernatur numquam sint esse numquam laborum sed', 'qovuw@yahoo.com', 'Autem voluptate sunt et voluptatem quos esse', '1521114026', 'no', NULL, NULL),
(8, 'Test new', 'testing', 'hoimuswana212@gmail.com', 'demo text', '1524565938', 'no', 'hi', NULL),
(9, 'demo', 'demo', 'hoimuswarna212@gmail.com', 'text', '1524647429', 'no', 'demo reply', NULL),
(10, 'Demo', 'Test', 'demonew@gmail.com', 'Test dummy', '1526382961', 'no', 'ok', NULL),
(11, 'navuwywyb@mailinator.com', 'boxexi@mailinator.com', 'fufohakihi@mailinator.net', 'Qui aut sit a iusto ut', '1531129088', 'no', NULL, NULL),
(12, 'rtryrtysu', 'fdgsfadhgf', 'vorumaze@mailinator.com', 'Ullamco minima qui molestias cumque repudiandae', '1531130180', 'no', NULL, NULL),
(13, 'ActiveIt Developer', 'Tsting', 'developer.activeitzone@gmail.com', 'This is a test message.', '1532602669', 'no', NULL, NULL),
(14, 'fico@mailinator.com', 'furymac@mailinator.com', 'kufeme@mailinator.net', 'Minus autem ipsum iure qui labore ut in impedit et similique Nam pariatur Ducimus et', '1532602698', 'no', NULL, NULL),
(15, 'sfghjk', 'kjhgf', 'memb@mat.com', 'mnbvcxz', '1533119784', 'no', NULL, NULL),
(16, 'usser', 'wwwwww', 'demo@gmail.com', 'rrrrrrrrrrrrrrr', '1534577821', 'no', NULL, NULL),
(17, 'dubokedy@mailinator.com', 'wuqibike', 'lumaq@mailinator.com', 'Quia maiores eveniet facere libero vel voluptas do qui et', '1547542268', 'no', NULL, NULL),
(18, 'test', 'Check', 'tebas@mailinator.com', 'Cupiditate dolores voluptate et ipsa modi nemo enim ad', '1547542339', 'no', NULL, NULL),
(19, 'giraxo@mailinator.com', 'zodojuk@mailinator.net', 'bumuxyfo@mailinator.com', 'Eos eos delectus animi quasi eos do earum aut ex est dolorem quis ut', '1560316714', 'no', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `sortname`, `name`, `phonecode`) VALUES
(101, 'IN', 'India', 91);

-- --------------------------------------------------------

--
-- Table structure for table `currency_settings`
--

CREATE TABLE `currency_settings` (
  `currency_settings_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `exchange_rate` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `code` varchar(20) DEFAULT NULL,
  `exchange_rate_def` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency_settings`
--

INSERT INTO `currency_settings` (`currency_settings_id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `exchange_rate_def`) VALUES
(1, 'U.S. Dollar', '$', '1', 'ok', 'USD', '1'),
(2, 'Australian Dollar', '$', '1.2762', 'ok', 'AUD', '1.2762'),
(5, 'Brazilian Real', 'R$', '3.238', 'ok', 'BRL', '3.238'),
(6, 'Canadian Dollar', '$', '1.272', 'ok', 'CAD', '1.272'),
(7, 'Czech Koruna', 'Kč', '20.647', 'ok', 'CZK', '20.647'),
(8, 'Danish Krone', 'kr', '6.0532', 'ok', 'DKK', '6.0532'),
(9, 'Euro', '€', '0.84861', 'ok', 'EUR', '0.84861'),
(10, 'Hong Kong Dollar', '$', '7.8264', 'ok', 'HKD', '7.8264'),
(11, 'Hungarian Forint', 'Ft', '255.24', 'ok', 'HUF', '255.24'),
(12, 'Israeli New Sheqel', '₪', '3.4812', 'ok', 'ILS', '3.4812'),
(13, 'Japanese Yen', '¥', '107.12', 'ok', 'JPY', '107.12'),
(14, 'Malaysian Ringgit', 'RM', '3.908', 'ok', 'MYR', '3.908'),
(15, 'Mexican Peso', '$', '18.722', 'ok', 'MXN', '18.722'),
(16, 'Norwegian Krone', 'kr', '7.8278', 'ok', 'NOK', '7.8278'),
(17, 'New Zealand Dollar', '$', '1.3753', 'ok', 'NZD', '1.3753'),
(18, 'Philippine Peso', '₱', '52.261', 'ok', 'PHP', '52.261'),
(19, 'Polish Zloty', 'zł', '3.3875', 'ok', 'PLN', '3.3875'),
(20, 'Pound Sterling', '£', '0.71864', 'ok', 'GBP', '0.71864'),
(21, 'Russian Ruble', 'руб', '55.929', 'ok', 'RUB', '55.929'),
(22, 'Singapore Dollar', '$', '1.3198', 'ok', 'SGD', '1.3198'),
(23, 'Swedish Krona', 'kr', '8.1945', 'ok', 'SEK', '8.1945'),
(24, 'Swiss Franc', 'CHF', '0.93805', 'ok', 'CHF', '0.93805'),
(26, 'Thai Baht', '฿', '31.39', 'ok', 'THB', '31.39'),
(27, 'your_currency', '?', '1', 'no', '??', '1');

-- --------------------------------------------------------

--
-- Table structure for table `decision`
--

CREATE TABLE `decision` (
  `decision_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decision`
--

INSERT INTO `decision` (`decision_id`, `name`) VALUES
(1, 'Yes'),
(2, 'No'),
(3, 'Doesn\'t Matter');

-- --------------------------------------------------------

--
-- Table structure for table `deleted_member`
--

CREATE TABLE `deleted_member` (
  `member_id` int(11) NOT NULL,
  `member_profile_id` varchar(25) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `email_verification_code` varchar(50) DEFAULT NULL,
  `email_verification_status` int(11) DEFAULT NULL,
  `mobile` varchar(20) NOT NULL,
  `is_closed` varchar(20) NOT NULL,
  `date_of_birth` varchar(50) NOT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `profile_image` mediumtext NOT NULL,
  `introduction` longtext NOT NULL,
  `basic_info` longtext NOT NULL,
  `present_address` longtext NOT NULL,
  `education_and_career` longtext NOT NULL,
  `physical_attributes` longtext NOT NULL,
  `language` longtext NOT NULL,
  `hobbies_and_interest` longtext NOT NULL,
  `personal_attitude_and_behavior` longtext NOT NULL,
  `residency_information` longtext NOT NULL,
  `spiritual_and_social_background` longtext NOT NULL,
  `life_style` longtext NOT NULL,
  `astronomic_information` longtext NOT NULL,
  `permanent_address` longtext NOT NULL,
  `family_info` longtext NOT NULL,
  `additional_personal_details` longtext NOT NULL,
  `partner_expectation` longtext NOT NULL,
  `interest` longtext NOT NULL,
  `short_list` longtext NOT NULL,
  `followed` longtext NOT NULL,
  `ignored` longtext NOT NULL,
  `ignored_by` longtext NOT NULL,
  `gallery` longtext NOT NULL,
  `happy_story` longtext NOT NULL,
  `package_info` longtext NOT NULL,
  `payments_info` longtext NOT NULL,
  `interested_by` longtext NOT NULL,
  `follower` int(11) NOT NULL,
  `membership` int(11) NOT NULL,
  `notifications` longtext NOT NULL,
  `profile_status` int(11) NOT NULL,
  `member_since` datetime NOT NULL,
  `express_interest` int(11) NOT NULL,
  `direct_messages` int(11) NOT NULL,
  `photo_gallery` int(11) NOT NULL,
  `profile_completion` int(11) NOT NULL,
  `is_blocked` varchar(20) NOT NULL,
  `privacy_status` longtext NOT NULL,
  `pic_privacy` longtext NOT NULL,
  `report_profile` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `reported_by` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deleted_member`
--

INSERT INTO `deleted_member` (`member_id`, `member_profile_id`, `status`, `first_name`, `last_name`, `gender`, `email`, `email_verification_code`, `email_verification_status`, `mobile`, `is_closed`, `date_of_birth`, `height`, `password`, `profile_image`, `introduction`, `basic_info`, `present_address`, `education_and_career`, `physical_attributes`, `language`, `hobbies_and_interest`, `personal_attitude_and_behavior`, `residency_information`, `spiritual_and_social_background`, `life_style`, `astronomic_information`, `permanent_address`, `family_info`, `additional_personal_details`, `partner_expectation`, `interest`, `short_list`, `followed`, `ignored`, `ignored_by`, `gallery`, `happy_story`, `package_info`, `payments_info`, `interested_by`, `follower`, `membership`, `notifications`, `profile_status`, `member_since`, `express_interest`, `direct_messages`, `photo_gallery`, `profile_completion`, `is_blocked`, `privacy_status`, `pic_privacy`, `report_profile`, `reported_by`) VALUES
(61, 'D4EDFA9461', 'approved', 'Keaton', 'Lowe', 2, 'dutogozir@mailinator.com', NULL, NULL, '65', 'no', '3002400', '0.00', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"default.jpg\",\"thumb\":\"default_thumb.jpg\"}]', '', '[{\"age\":\"\",\"marital_status\":\"\",\"number_of_children\":\"\",\"area\":\"\",\"on_behalf\":\"1\"}]', '[{\"country\":\"\",\"city\":\"\",\"state\":\"\",\"postal_code\":\"\"}]', '[{\"highest_education\":\"\",\"occupation\":\"\",\"annual_income\":\"\"}]', '[{\"weight\":\"\",\"eye_color\":\"\",\"hair_color\":\"\",\"complexion\":\"\",\"blood_group\":\"\",\"body_type\":\"\",\"body_art\":\"\",\"any_disability\":\"\"}]', '[{\"mother_tongue\":\"\",\"language\":\"\",\"speak\":\"\",\"read\":\"\"}]', '[{\"hobby\":\"\",\"interest\":\"\",\"music\":\"\",\"books\":\"\",\"movie\":\"\",\"tv_show\":\"\",\"sports_show\":\"\",\"fitness_activity\":\"\",\"cuisine\":\"\",\"dress_style\":\"\"}]', '[{\"affection\":\"\",\"humor\":\"\",\"political_view\":\"\",\"religious_service\":\"\"}]', '[{\"birth_country\":\"\",\"residency_country\":\"\",\"citizenship_country\":\"\",\"grow_up_country\":\"\",\"immigration_status\":\"\"}]', '[{\"religion\":\"\",\"caste\":\"\",\"sub_caste\":\"\",\"ethnicity\":\"\",\"u_manglik\":\"\",\"personal_value\":\"\",\"family_value\":\"\",\"community_value\":\"\",\"family_status\":\"\"}]', '[{\"diet\":\"\",\"drink\":\"\",\"smoke\":\"\",\"living_with\":\"\"}]', '[{\"sun_sign\":\"\",\"moon_sign\":\"\",\"time_of_birth\":\"\",\"city_of_birth\":\"\"}]', '[{\"permanent_country\":\"\",\"permanent_city\":\"\",\"permanent_state\":\"\",\"permanent_postal_code\":\"\"}]', '[{\"father\":\"\",\"mother\":\"\",\"brother_sister\":\"\"}]', '[{\"home_district\":\"\",\"family_residence\":\"\",\"fathers_occupation\":\"\",\"special_circumstances\":\"\"}]', '[{\"general_requirement\":\"\",\"partner_age\":\"\",\"partner_height\":\"\",\"partner_weight\":\"\",\"partner_marital_status\":\"\",\"with_children_acceptables\":\"\",\"partner_country_of_residence\":\"\",\"partner_religion\":\"\",\"partner_caste\":\"\",\"partner_subcaste\":\"\",\"partner_complexion\":\"\",\"partner_education\":\"\",\"partner_profession\":\"\",\"partner_drinking_habits\":\"\",\"partner_smoking_habits\":\"\",\"partner_diet\":\"\",\"partner_body_type\":\"\",\"partner_personal_value\":\"\",\"manglik\":\"\",\"partner_any_disability\":\"\",\"partner_mother_tongue\":\"\",\"partner_family_value\":\"\",\"prefered_country\":\"\",\"prefered_state\":\"\",\"prefered_status\":\"\"}]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[{\"current_package\":\"Default\",\"package_price\":\"0\",\"payment_type\":\"None\"}]', '[]', '[]', 0, 1, '[]', 1, '2019-04-13 13:10:14', 5, 6, 3, 0, 'no', '[{\"present_address\":\"no\",\"education_and_career\":\"no\",\"physical_attributes\":\"no\",\"language\":\"no\",\"hobbies_and_interest\":\"no\",\"personal_attitude_and_behavior\":\"no\",\"residency_information\":\"no\",\"spiritual_and_social_background\":\"no\",\"life_style\":\"no\",\"astronomic_information\":\"no\",\"permanent_address\":\"no\",\"family_info\":\"no\",\"additional_personal_details\":\"no\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"premium\"}]', '[]', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_template`
--

CREATE TABLE `email_template` (
  `email_template_id` int(11) NOT NULL,
  `title` longtext NOT NULL,
  `subject` longtext NOT NULL,
  `body` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_template`
--

INSERT INTO `email_template` (`email_template_id`, `title`, `subject`, `body`) VALUES
(1, 'Password Reset Email', 'Password Reset Successful', 'Hi [[to]],\r\nYou have recently requested a new password. We\'ve received the request and your password has been changed.\r\nYour account type is : [[account_type]]\r\nYour new password is : [[password]]\r\nThanks,\r\n[[from]]'),
(2, 'Package Purchase Successful', 'Package Purchase Successful', 'Hi [[to]],\r\nThank you for purchasing premium packages from our site [[sitename]].\r\nYour account type is : [[account_type]]\r\nEmail is : [[email]]\r\nPurchased Package is : [[package]]\r\nAmount is : $[[amount]]\r\nPlease contact with the administration team if you have any further question. Best wishes.\r\nThanks,\r\n[[from]]'),
(4, 'Account Opening By Admin Email', 'Account Opening', 'Hi [[to]],\r\nThank you for registering at our site [[sitename]].\r\nYour account type is : [[account_type]]\r\nEmail is : [[email]]\r\nPassword is : [[password]]\r\nYou will be able to login from here : [[url]]\r\nPlease contact with the administration team if you have any further question. Best wishes.\r\nThanks,\r\n[[from]]'),
(5, 'Staff Account Add Email', 'New Staff Account Add', 'Hi [[to]],\r\nYou have been Added [[sitename]] as Staff.\r\nYour account role is : [[role_type]]\r\nEmail is : [[email]]\r\nPassword is : [[password]]\r\nYou will be able to login from here : [[url]]\r\nPlease contact with the administration team if you have any further question. Best wishes.\r\nThanks,\r\n[[from]]'),
(6, 'Member Approval Email', 'Member Approval', 'Hi [[to]],\r\nYour account type is : [[account_type]]\r\nEmail is : [[email]]\r\nThank you for registering at our site. Your account has been approved. Please contact with the administration team if you have any further question. Best wishes.\r\nYou will be able to login from here : [[url]]\r\nPlease contact with the administration team if you have any further question. Best wishes.\r\nThanks,\r\n[[from]]'),
(7, 'Account Opening From User Email', 'Account Opening ', 'Hi [[to]],\r\nThank you for registering at our site [[sitename]].\r\nYour account type is : [[account_type]]\r\nEmail is : [[email]]\r\nPassword is : [[password]]\r\nYour account is now being reviewed by administration team.\r\nPlease wait for Admin approval. You will get a  confirmation email soon and after that you will be able to login from here :  [[url]]\r\nPlease contact with the administration team if you have any further question. Best wishes.\r\nThanks,\r\n[[from]]'),
(8, 'Member Registration Email to Admin', 'User Registration', 'Congratulation!\r\nYou have a new Registered Member in your system.\r\nMember Name : [[member_name]]\r\nEmail is : [[email]]\r\nThanks,\r\n\r\n[[from]]'),
(9, 'Account Opening From User Email  When Member Approval Dactivated.', 'Account Opening', 'Hi [[to]],\r\nThank you for registering at our site [[sitename]].\r\nYour account type is : [[account_type]]\r\nEmail is : [[email]]\r\nPassword is : [[password]]\r\nYou will be able to login from here : [[url]]\r\nPlease contact with the administration team if you have any further question. Best wishes.\r\nThanks,\r\n[[from]]'),
(10, 'Member Email verification', 'Email Verification ', 'Hi [[to]],\r\nYour account type is : [[account_type]]\r\nYour email is : [[email]]\r\nClick on the link to verify your email :  [[email_verify]]\r\nPlease contact with the administration team if you have any further question. Best wishes.\r\nThanks,\r\n[[from]]');

-- --------------------------------------------------------

--
-- Table structure for table `family_status`
--

CREATE TABLE `family_status` (
  `family_status_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `family_status`
--

INSERT INTO `family_status` (`family_status_id`, `name`) VALUES
(1, 'High Class'),
(2, 'Middle Class'),
(3, 'Low Class'),
(4, 'Upper Middle Class ');

-- --------------------------------------------------------

--
-- Table structure for table `family_value`
--

CREATE TABLE `family_value` (
  `family_value_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `family_value`
--

INSERT INTO `family_value` (`family_value_id`, `name`) VALUES
(1, 'Traditional'),
(2, 'Moderate'),
(3, 'Liberal');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_settings`
--

CREATE TABLE `frontend_settings` (
  `frontend_settings_id` int(11) NOT NULL,
  `type` varchar(150) DEFAULT NULL,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `frontend_settings`
--

INSERT INTO `frontend_settings` (`frontend_settings_id`, `type`, `value`) VALUES
(1, 'home_slider_image', '[{\"index\":0,\"img\":\"slider_image_1.jpg\"},{\"index\":1,\"img\":\"slider_image_2.jpg\"},{\"index\":2,\"img\":\"slider_image_3.jpg\"}]'),
(3, 'home_parallax_image', '[{\"image\":\"parallax_image_1513662458.jpg\"}]'),
(4, 'home_parallax_text', 'Demo in Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas neque diam, luctus at laoreet in, auctor ut tellus. Etiam enim lacus, ornare et tempor, rhoncus rhoncus sem.'),
(6, 'home_premium_plans_image', '[{\"image\":\"premium_plans_image_1524736468.jpg\"}]'),
(7, 'home_contact_info_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit sed do eiusmod tempor'),
(8, 'premium_plans_image', '[{\"image\":\"premium_plans_image_1528609776.jpg\"}]'),
(10, 'contact_us_text', 'This is a Demo Text from Admin Panel'),
(9, 'happy_stories_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita hic, quam iusto alias iste! Animi ipsum consequuntur officiis ratione cupiditate dolor voluptatibus similique tenetur, iure et, earum, deleniti reiciendis laboriosam.'),
(2, 'max_premium_member_num', '26'),
(5, 'max_story_num', '30'),
(11, 'login_image', '[{\"image\":\"login_image_1514094632.jpg\"}]'),
(12, 'registration_image', '[{\"image\":\"registration_image_1514094952.jpg\"}]'),
(13, 'header_logo', '[{\"image\":\"header_logo_1524735792.png\"}]'),
(14, 'footer_logo', '[{\"image\":\"footer_logo_1514108335.png\"}]'),
(15, 'footer_logo_position', 'left'),
(16, 'footer_text', 'Demo text from Admin'),
(17, 'favicon', '[{\"image\":\"favicon_1515409281.png\"}]'),
(18, 'theme_color', 'default-color'),
(19, 'slider_position', 'right'),
(20, 'slider_status', 'yes'),
(21, 'advance_search_position', 'left'),
(22, 'home_members_status', 'yes'),
(23, 'home_parallax_status', 'yes'),
(24, 'home_stories_status', 'yes'),
(25, 'home_plans_status', 'yes'),
(26, 'home_contact_status', 'yes'),
(27, 'present_address', 'yes'),
(28, 'education_and_career', 'yes'),
(29, 'physical_attributes', 'yes'),
(30, 'language', 'yes'),
(31, 'hobbies_and_interests', 'yes'),
(32, 'personal_attitude_and_behavior', 'yes'),
(33, 'residency_information', 'yes'),
(34, 'spiritual_and_social_background', 'yes'),
(35, 'life_style', 'yes'),
(36, 'astronomic_information', 'yes'),
(37, 'permanent_address', 'yes'),
(38, 'family_information', 'yes'),
(39, 'additional_personal_details', 'yes'),
(40, 'partner_expectation', 'yes'),
(41, 'home_search_style', '1'),
(42, 'home_searching_heading', 'Search Your Soul Mates'),
(43, 'sticky_header', 'no'),
(44, 'registration_message', '<b><h2></h2></b>\r\n\r\n\r\n\r\n<b><h2>Thanks For Registration ! </h2></b><p>You Have To Wait For Admin Approval. Approval Confirmation Will Be Sent To Your Email.</p>\r\n\r\n\r\n\r\n<p></p>'),
(45, 'registration_message_image', '[{\"image\":\"registration_message_image1548057147.jpg\"}]'),
(46, 'email_verification_message', 'Please check your email account, and follow instructions within that email to verify your email.');

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `gender_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`gender_id`, `name`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `general_settings_id` int(11) NOT NULL,
  `type` longtext,
  `value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`general_settings_id`, `type`, `value`) VALUES
(1, 'system_name', 'Active  Matrimonial CMS'),
(2, 'system_email', 'matrimonial@gmail.com'),
(3, 'system_title', 'Active  Matrimonial CMS'),
(4, 'address', '9975 Emerald Escape, LA'),
(5, 'phone', '+11 - 012 3456 7890'),
(6, 'language', 'english'),
(9, 'terms_conditions', '<p></p>\r\n\r\nExcepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. sercitation similique excepteur vitae culpa.Excepteur labore in id.&nbsp;<div><br></div><div>Modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae.</div><div><br></div><div>Proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\n&nbsp;sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id,&nbsp;</div>'),
(10, 'fb_appid', ''),
(11, 'fb_secret', ''),
(12, 'google_languages', '{}'),
(24, 'meta_description', ''),
(25, 'meta_keywords', 'active,matrimonial'),
(26, 'meta_author', 'ActiveItZone'),
(27, 'captcha_public', ''),
(28, 'captcha_private', ''),
(29, 'application_name', ''),
(30, 'client_id', ''),
(31, 'client_secret', ''),
(32, 'redirect_uri', ''),
(33, 'api_key', ''),
(44, 'contact_about', '<p>about contact</p>'),
(39, 'contact_phone', '00-000-00000'),
(40, 'contact_email', 'yourmail@mail.com'),
(41, 'contact_website', 'www.yoursite.com'),
(42, 'footer_text', '<p>Your Footer Text</p>'),
(43, 'footer_category', '[]'),
(38, 'contact_address', 'Demo Address'),
(45, 'admin_notification_sound', 'ok'),
(46, 'admin_notification_volume', '7.47'),
(47, 'privacy_policy', '<p>\r\nExcepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, \r\n\r\n\r\n\r\n</p>'),
(48, 'discus_id', ''),
(49, 'home_notification_sound', 'ok'),
(50, 'homepage_notification_volume', '7.36'),
(51, 'fb_login_set', 'no'),
(52, 'g_login_set', 'no'),
(53, 'slider', 'no'),
(54, 'revisit_after', '2'),
(55, 'default_member_product_limit', '5'),
(56, 'fb_comment_api', ''),
(57, 'comment_type', 'google'),
(58, 'vendor_system', 'no'),
(59, 'cache_time', '0'),
(60, 'file_folder', 'jfkfkiriwnfjkmskdcsdfasaa'),
(62, 'slides', 'ok'),
(63, 'preloader', '21'),
(64, 'preloader_bg', 'rgba(71,4,103,0.9)'),
(65, 'preloader_obj', 'rgba(255,255,255,1)'),
(66, 'contact_lat_lang', '(40.7127837, -74.00594130000002)'),
(67, 'google_api_key', ''),
(68, 'physical_product_activation', 'ok'),
(69, 'digital_product_activation', 'no'),
(70, 'data_all_brands', ''),
(71, 'data_all_vendors', ''),
(72, 'smtp_host', 'demo_host'),
(73, 'smtp_port', 'demo_port'),
(74, 'smtp_user', 'demo_user'),
(75, 'smtp_pass', '1234'),
(76, 'mail_status', 'mail'),
(77, 'captcha_status', 'no'),
(79, 'version', '2.5'),
(80, 'privacy_policy', '<p>\r\nExcepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, aspernatur accusamus in doloremque vitae et illum, pariatur. Optio, et ab repudiandae sed quisquam et officiis officia quod rerum corporis ea recusandae. Dolor ut ipsum sed mollit ut quibusdam voluptate blanditiis quis sit, non ut expedita reiciendis magni facere nostrud at iste dolores dolor cillum exercitation similique excepteur vitae culpa.Excepteur labore in id, modi itaque autem sit, \r\n\r\n\r\n\r\n</p>'),
(82, 'faqs', '[{\"question\":\"Demo Question 1\",\"answer\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\"},{\"question\":\"Demo Question 2\",\"answer\":\"<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\"},{\"question\":\"Demo Question 3\",\"answer\":\"<p>\\r\\n\\r\\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<br><\\/p>\"}]'),
(83, 'admin_login_image', '[{\"image\":\"admin_login_image_1519553043.jpg\"}]'),
(84, 'forget_pass_image', '[{\"image\":\"forget_pass_image_1519553360.jpg\"}]'),
(85, 'right_click_option', 'off'),
(86, 'member_approval_by_admin', 'no'),
(87, 'time_zone', 'Asia/Dhaka'),
(88, 'member_email_verification', 'on'),
(89, 'meta_title', 'Active Matrimonial CMS'),
(90, 'seo_image_facebook', 'seo_image_facebook_1580622300.png'),
(91, 'seo_image_twitter', 'seo_image_twitter_1580622324.png'),
(92, 'member_profile_pic_approval_by_admin', 'off'),
(93, 'email_notification_on_express_interest', 'off'),
(94, 'email_notification_on_sending_message', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `happy_story`
--

CREATE TABLE `happy_story` (
  `happy_story_id` int(11) NOT NULL,
  `title` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `image` longtext NOT NULL,
  `partner_name` varchar(150) NOT NULL,
  `posted_by` int(11) NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `approval_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `happy_story`
--

INSERT INTO `happy_story` (`happy_story_id`, `title`, `description`, `image`, `partner_name`, `posted_by`, `post_time`, `approval_status`) VALUES
(1, 'Demo Happy Story Title 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum quasi, temporibus, optio necessitatibus harum quis eaque, asperiores illo velit veniam, quod quas deleniti corrupti officia cumque fugiat ipsum odio a.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur deserunt labore nobis corporis reiciendis quisquam reprehenderit, rem porro consectetur aut architecto temporibus. Praesentium dicta aut, alias est? Voluptatum, iusto, minima!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab dolorem debitis nesciunt dolor beatae delectus cumque sequi accusamus voluptatum, nihil fugiat, consequatur ratione iusto! Laboriosam minus sit quia illo sapiente.', '[{\"index\":0,\"img\":\"img-1.jpg\",\"thumb\":\"img-1.jpg\"},{\"index\":1,\"img\":\"img-2.jpg\",\"thumb\":\"img-2.jpg\"}]', 'Lucy', 1, '2019-03-04 05:29:42', 1),
(2, 'Demo Happy Story Title 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum quasi, temporibus, optio necessitatibus harum quis eaque, asperiores illo velit veniam, quod quas deleniti corrupti officia cumque fugiat ipsum odio a.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur deserunt labore nobis corporis reiciendis quisquam reprehenderit, rem porro consectetur aut architecto temporibus. Praesentium dicta aut, alias est? Voluptatum, iusto, minima!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab dolorem debitis nesciunt dolor beatae delectus cumque sequi accusamus voluptatum, nihil fugiat, consequatur ratione iusto! Laboriosam minus sit quia illo sapiente.', '[{\"index\":0,\"img\":\"img-2.jpg\",\"thumb\":\"img-2.jpg\"},{\"index\":1,\"img\":\"img-1.jpg\",\"thumb\":\"img-1.jpg\"}]', 'Jacob', 2, '2019-03-04 05:29:42', 1),
(3, 'Demo Happy Story Title 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum quasi, temporibus, optio necessitatibus harum quis eaque, asperiores illo velit veniam, quod quas deleniti corrupti officia cumque fugiat ipsum odio a.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur deserunt labore nobis corporis reiciendis quisquam reprehenderit, rem porro consectetur aut architecto temporibus. Praesentium dicta aut, alias est? Voluptatum, iusto, minima!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab dolorem debitis nesciunt dolor beatae delectus cumque sequi accusamus voluptatum, nihil fugiat, consequatur ratione iusto! Laboriosam minus sit quia illo sapiente.', '[{\"index\":0,\"img\":\"img-3.jpg\",\"thumb\":\"img-3.jpg\"},{\"index\":1,\"img\":\"img-1.jpg\",\"thumb\":\"img-1.jpg\"}]', 'xyz', 3, '2019-03-04 05:29:42', 1),
(4, 'Demo Happy Story Title 4', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum quasi, temporibus, optio necessitatibus harum quis eaque, asperiores illo velit veniam, quod quas deleniti corrupti officia cumque fugiat ipsum odio a.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur deserunt labore nobis corporis reiciendis quisquam reprehenderit, rem porro consectetur aut architecto temporibus. Praesentium dicta aut, alias est? Voluptatum, iusto, minima!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab dolorem debitis nesciunt dolor beatae delectus cumque sequi accusamus voluptatum, nihil fugiat, consequatur ratione iusto! Laboriosam minus sit quia illo sapiente.', '[{\"index\":0,\"img\":\"img-4.jpg\",\"thumb\":\"img-4.jpg\"},{\"index\":1,\"img\":\"img-1.jpg\",\"thumb\":\"img-1.jpg\"}]', '', 4, '2019-03-04 05:29:42', 1),
(5, 'Demo Happy Story Title 5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum quasi, temporibus, optio necessitatibus harum quis eaque, asperiores illo velit veniam, quod quas deleniti corrupti officia cumque fugiat ipsum odio a.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur deserunt labore nobis corporis reiciendis quisquam reprehenderit, rem porro consectetur aut architecto temporibus. Praesentium dicta aut, alias est? Voluptatum, iusto, minima!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab dolorem debitis nesciunt dolor beatae delectus cumque sequi accusamus voluptatum, nihil fugiat, consequatur ratione iusto! Laboriosam minus sit quia illo sapiente.', '[{\"index\":0,\"img\":\"img-5.jpg\",\"thumb\":\"img-5.jpg\"},{\"index\":1,\"img\":\"img-1.jpg\",\"thumb\":\"img-1.jpg\"}]', '', 5, '2019-03-04 05:29:42', 1),
(7, 'Demo Happy Story', 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', '[{\"index\":0,\"img\":\"happy_story_7_1.jpg\",\"thumb\":\"happy_story_7_1_thumb.jpg\"}]', 'Demo Partner', 44, '2019-03-04 05:29:42', 1),
(8, 'mmmmmm', 'mmmmmm', '[{\"index\":0,\"img\":\"happy_story_8_1.jpg\",\"thumb\":\"happy_story_8_1_thumb.jpg\"},{\"index\":1,\"img\":\"happy_story_8_2.jpg\",\"thumb\":\"happy_story_8_2_thumb.jpg\"}]', 'nnnnn', 55, '2019-03-04 05:29:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `name`) VALUES
(2, 'Bengali'),
(4, 'German'),
(7, 'English'),
(8, 'Hindi'),
(9, 'Urdu');

-- --------------------------------------------------------

--
-- Table structure for table `marital_status`
--

CREATE TABLE `marital_status` (
  `marital_status_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marital_status`
--

INSERT INTO `marital_status` (`marital_status_id`, `name`) VALUES
(1, 'Never Married'),
(2, 'Married'),
(3, 'Divorced '),
(4, 'Separated '),
(5, 'Widowed');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(11) NOT NULL,
  `member_profile_id` varchar(25) NOT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_verification_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verification_status` int(11) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `is_closed` varchar(20) NOT NULL,
  `date_of_birth` varchar(50) DEFAULT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `profile_image` mediumtext NOT NULL,
  `profile_image_status` tinyint(4) DEFAULT NULL COMMENT '0=pending, 1=approved, 2=rejected',
  `profile_image_update_time` varchar(50) DEFAULT NULL,
  `google_login_id` varchar(100) DEFAULT NULL,
  `facebook_login_id` varchar(100) DEFAULT NULL,
  `twitter_login_id` varchar(100) NOT NULL,
  `introduction` longtext NOT NULL,
  `basic_info` longtext NOT NULL,
  `present_address` longtext NOT NULL,
  `education_and_career` longtext NOT NULL,
  `physical_attributes` longtext NOT NULL,
  `language` longtext NOT NULL,
  `hobbies_and_interest` longtext NOT NULL,
  `personal_attitude_and_behavior` longtext NOT NULL,
  `residency_information` longtext NOT NULL,
  `spiritual_and_social_background` longtext NOT NULL,
  `life_style` longtext NOT NULL,
  `astronomic_information` longtext NOT NULL,
  `permanent_address` longtext NOT NULL,
  `family_info` longtext NOT NULL,
  `additional_personal_details` longtext NOT NULL,
  `partner_expectation` longtext NOT NULL,
  `interest` longtext NOT NULL,
  `short_list` longtext NOT NULL,
  `followed` longtext NOT NULL,
  `ignored` longtext NOT NULL,
  `ignored_by` longtext NOT NULL,
  `gallery` longtext NOT NULL,
  `happy_story` longtext NOT NULL,
  `package_info` longtext,
  `payments_info` longtext NOT NULL,
  `interested_by` longtext NOT NULL,
  `follower` int(11) NOT NULL,
  `membership` int(11) NOT NULL,
  `notifications` longtext NOT NULL,
  `profile_status` int(11) NOT NULL,
  `member_since` datetime NOT NULL,
  `express_interest` int(11) NOT NULL,
  `direct_messages` int(11) NOT NULL,
  `photo_gallery` int(11) NOT NULL,
  `profile_completion` int(11) NOT NULL,
  `is_blocked` varchar(20) NOT NULL,
  `privacy_status` longtext NOT NULL,
  `pic_privacy` longtext NOT NULL,
  `report_profile` longtext,
  `reported_by` int(11) DEFAULT '0',
  `registration_type` varchar(20) DEFAULT NULL,
  `otp` int(8) DEFAULT NULL,
  `mobile_verify` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_profile_id`, `status`, `first_name`, `last_name`, `gender`, `email`, `email_verification_code`, `email_verification_status`, `mobile`, `is_closed`, `date_of_birth`, `height`, `password`, `profile_image`, `profile_image_status`, `profile_image_update_time`, `google_login_id`, `facebook_login_id`, `twitter_login_id`, `introduction`, `basic_info`, `present_address`, `education_and_career`, `physical_attributes`, `language`, `hobbies_and_interest`, `personal_attitude_and_behavior`, `residency_information`, `spiritual_and_social_background`, `life_style`, `astronomic_information`, `permanent_address`, `family_info`, `additional_personal_details`, `partner_expectation`, `interest`, `short_list`, `followed`, `ignored`, `ignored_by`, `gallery`, `happy_story`, `package_info`, `payments_info`, `interested_by`, `follower`, `membership`, `notifications`, `profile_status`, `member_since`, `express_interest`, `direct_messages`, `photo_gallery`, `profile_completion`, `is_blocked`, `privacy_status`, `pic_privacy`, `report_profile`, `reported_by`, `registration_type`, `otp`, `mobile_verify`) VALUES
(1, '479CDDC01', 'approved', 'Slade', 'Bennett', 1, 'user@gmail.com', NULL, 1, '0134567890', 'no', '724183200', '6.00', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"profile_1.jpg\",\"thumb\":\"profile_1_thumb.jpg\"}]', 0, '2020-04-13 12:01:46', NULL, NULL, '', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '[{\"marital_status\":\"1\",\"number_of_children\":\"\",\"area\":\"US\",\"on_behalf\":\"1\"}]', '[{\"country\":\"212\",\"city\":\"39400\",\"state\":\"3442\",\"postal_code\":\"xyz\"}]', '[{\"highest_education\":\"MSc\",\"occupation\":\"Lead Developer\",\"annual_income\":\"100,000 USD\"}]', '[{\"weight\":\"78kg\",\"eye_color\":\"Brown\",\"hair_color\":\"Black\",\"complexion\":\"None\",\"blood_group\":\"A+\",\"body_type\":\"Fit\",\"body_art\":\"Slim\",\"any_disability\":\"None\"}]', '[{\"mother_tongue\":\"2\",\"language\":\"2\",\"speak\":\"7\",\"read\":\"7\"}]', '[{\"hobby\":\"\",\"interest\":\"\",\"music\":\"\",\"books\":\"\",\"movie\":\"\",\"tv_show\":\"\",\"sports_show\":\"\",\"fitness_activity\":\"\",\"cuisine\":\"\",\"dress_style\":\"\"}]', '[{\"affection\":\"Mollitia fugiat volu\",\"humor\":\"Atque vel et eveniet\",\"political_view\":\"Perferendis voluptat\",\"religious_service\":\"Corrupti molestiae \"}]', '[{\"birth_country\":\"214\",\"residency_country\":\"17\",\"citizenship_country\":\"231\",\"grow_up_country\":\"226\",\"immigration_status\":\"None\"}]', '[{\"religion\":\"4\",\"caste\":\"2\",\"sub_caste\":\"4\",\"ethnicity\":\"None\",\"personal_value\":\"Decent\",\"family_value\":\"2\",\"u_manglik\":\"\",\"community_value\":\"Ok\",\"family_status\":\"1\"}]', '[{\"diet\":\"xyz\",\"drink\":\"2\",\"smoke\":\"2\",\"living_with\":\"Family\"}]', '[{\"sun_sign\":\"A\",\"moon_sign\":\"B\",\"time_of_birth\":\"12 AM\",\"city_of_birth\":\"NY\"}]', '[{\"permanent_country\":\"220\",\"permanent_city\":\"39989\",\"permanent_state\":\"3613\",\"permanent_postal_code\":\"xyz\"}]', '[{\"father\":\"\",\"mother\":\"\",\"brother_sister\":\"\"}]', '[{\"home_district\":\"NY\",\"family_residence\":\"NY\",\"fathers_occupation\":\"Business\",\"special_circumstances\":\"None\"}]', '[{\"general_requirement\":\"None\",\"partner_age\":\"18-24\",\"partner_height\":\"Doesn\'t Matter\",\"partner_weight\":\"Doesn\'t Matter\",\"partner_marital_status\":\"1\",\"with_children_acceptables\":\"3\",\"partner_country_of_residence\":\"231\",\"partner_religion\":\"3\",\"partner_caste\":\"25\",\"partner_sub_caste\":\"\",\"partner_complexion\":\"Doesn\'t Matter\",\"partner_education\":\"Doesn\'t Matter\",\"partner_profession\":\"Professor \",\"partner_drinking_habits\":\"3\",\"partner_smoking_habits\":\"3\",\"partner_diet\":\"Doesn\'t Matter\",\"partner_body_type\":\"Fit\",\"partner_personal_value\":\"Doesn\'t Matter\",\"manglik\":\"\",\"partner_any_disability\":\"None\",\"partner_mother_tongue\":\"2\",\"partner_family_value\":\"Doesn\'t Matter\",\"prefered_country\":\"230\",\"prefered_state\":\"3817\",\"prefered_status\":\"Doesn\'t Matter\"}]', '[{\"id\":\"2\",\"status\":\"accepted\",\"time\":1513143748},{\"id\":\"3\",\"status\":\"rejected\",\"time\":1513145656},{\"id\":\"34\",\"status\":\"accepted\",\"is_seen\":\"no\",\"time\":1526374791}]', '[\"4\",\"13\",\"9\",\"3\",\"2\"]', '[\"3\",\"4\",\"5\",\"9\",\"6\",\"2\"]', '[\"12\",\"27\"]', '[\"34\",\"39\",\"46\"]', '[{\"index\":2,\"title\":\"Image1\",\"image\":\"gallery_1_2.jpg\"},{\"index\":4,\"title\":\"image 5\",\"image\":\"gallery_1_4.jpg\"},{\"index\":5,\"title\":\"me :D\",\"image\":\"gallery_1_5.jpg\"}]', '[]', '[{\"current_package\":\"Bronze\",\"package_price\":\"15\",\"payment_type\":\"Wire\"}]', '[]', '[{\"id\":\"2\",\"status\":\"accepted\",\"time\":1520328686},{\"id\":\"26\",\"status\":\"accepted\",\"time\":1524644524},{\"id\":\"34\",\"status\":\"accepted\",\"time\":1526374328},{\"id\":\"45\",\"status\":\"pending\",\"time\":1531127607},{\"id\":\"44\",\"status\":\"pending\",\"time\":1531381947},{\"id\":\"46\",\"status\":\"pending\",\"time\":1531651287},{\"id\":\"54\",\"status\":\"pending\",\"time\":1533106984}]', 8, 2, '[{\"by\":\"2\",\"type\":\"interest_expressed\",\"status\":\"accepted\",\"is_seen\":\"yes\",\"time\":1520328686},{\"by\":\"3\",\"type\":\"rejected_interest\",\"status\":\"rejected\",\"is_seen\":\"yes\",\"time\":1513145656},{\"by\":\"2\",\"type\":\"interest_expressed\",\"status\":\"accepted\",\"is_seen\":\"yes\",\"time\":1520328686},{\"by\":\"34\",\"type\":\"interest_expressed\",\"status\":\"accepted\",\"is_seen\":\"yes\",\"time\":1526374328},{\"by\":\"34\",\"type\":\"accepted_interest\",\"status\":\"accepted\",\"is_seen\":\"yes\",\"time\":1526374791}]', 1, '2017-10-20 15:45:27', 40, 35, 20, 1, 'no', '[{\"present_address\":\"yes\",\"education_and_career\":\"yes\",\"physical_attributes\":\"yes\",\"language\":\"yes\",\"hobbies_and_interest\":\"yes\",\"personal_attitude_and_behavior\":\"yes\",\"residency_information\":\"yes\",\"spiritual_and_social_background\":\"yes\",\"life_style\":\"yes\",\"astronomic_information\":\"yes\",\"permanent_address\":\"yes\",\"family_info\":\"yes\",\"additional_personal_details\":\"yes\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"premium\"}]', '[\"23\",\"40\",\"44\",\"55\"]', 1, NULL, NULL, 0),
(2, '2D6A17B22', 'approved', 'Emma', 'Clark', 2, 'emma@gmail.com', NULL, 1, '0789321456', 'no', '755823600', '5.06', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"profile_2.jpg\",\"thumb\":\"profile_2_thumb.jpg\"}]', 0, '2020-04-11 12:01:46', NULL, NULL, '', 'Quam voluptatibus commodi hic porro nisi rerum ut dignissimos animi neque ad maiores optio atque pariatur', '[{\"age\":\"25\",\"marital_status\":\"1\",\"number_of_children\":\"0\",\"area\":\"USA\",\"on_behalf\":\"1\"}]', '[{\"country\":\"230\",\"city\":\"41402\",\"state\":\"3807\",\"postal_code\":\"1230\"}]', '[{\"highest_education\":\"Consequatur Est eius dignissimos esse atque earum culpa et eos ut\",\"occupation\":\"Marketing Manager\",\"annual_income\":\"A aliquid in inventore quia lorem necessitatibus unde numquam qui facere placeat eos nesciunt aliquam autem autem quas non ex\"}]', '[{\"weight\":\"Voluptas modi labore veritatis iusto laboris mollitia laborum Sed aliquam dolore deserunt\",\"eye_color\":\"Voluptates proident nobis quia quia necessitatibus eos pariatur Quis ea voluptate dolor quae quibusdam id id quo voluptates\",\"hair_color\":\"Voluptate dicta libero debitis dignissimos quam ea officiis earum quia quis\",\"complexion\":\"Excepturi vitae voluptate mollitia quia dolor quisquam nostrud et nostrud debitis et\",\"blood_group\":\"Dolor velit asperiores quo alias impedit ducimus est accusantium sint dolorem tempora adipisci amet reprehenderit consectetur esse quis id\",\"body_type\":\"Voluptatem accusamus temporibus minus sint\",\"body_art\":\"Corporis pariatur Veritatis nihil qui enim commodo\",\"any_disability\":\"Dolores consequatur dolor perspiciatis voluptatibus velit blanditiis dolor blanditiis praesentium ut provident dolor culpa ut eveniet voluptas adipisicing\"}]', '[{\"mother_tongue\":\"7\",\"language\":\"7\",\"speak\":\"7\",\"read\":\"7\"}]', '[{\"hobby\":\"Ea nemo quam sapiente assumenda autem in reprehenderit hic voluptatem tenetur\",\"interest\":\"Explicabo Rerum sit obcaecati eu qui omnis reprehenderit adipisicing fugiat veritatis quaerat minima tempora pariatur Mollit qui sunt\",\"music\":\"Vel provident quisquam omnis omnis voluptate pariatur Vero rerum nesciunt aut qui nostrum quia molestiae incididunt odit maiores sunt\",\"books\":\"Autem officia accusantium necessitatibus a nesciunt laborum Aperiam ut esse elit pariatur Sunt illo molestias et\",\"movie\":\"Dolores sit doloremque doloremque sint\",\"tv_show\":\"Adipisicing consequatur consequatur Quae perspiciatis quia\",\"sports_show\":\"Expedita recusandae Laudantium in dolorem quidem est eveniet enim et animi fugiat culpa et sed est\",\"fitness_activity\":\"Quis sed autem magni ratione officia molestias unde voluptas totam aliquid quo officiis id\",\"cuisine\":\"Eum porro dolor ea magnam nostrum\",\"dress_style\":\"Quidem sunt eum inventore Nam\"}]', '[{\"affection\":\"Sequi modi officia nihil omnis consequatur Voluptas ea\",\"humor\":\"Sed distinctio Quis cupiditate rerum reprehenderit elit ea quis\",\"political_view\":\"Molestiae commodo nulla nesciunt est quia repudiandae corporis labore lorem doloribus consequatur Non sunt incididunt eum quo placeat\",\"religious_service\":\"Enim blanditiis aliquid qui ad culpa\"}]', '[{\"birth_country\":\"121\",\"residency_country\":\"186\",\"citizenship_country\":\"7\",\"grow_up_country\":\"46\",\"immigration_status\":\"Sint nihil dolor laboris ea aute sit sint\"}]', '[{\"religion\":\"2\",\"caste\":\"3\",\"sub_caste\":\"Nostrud suscipit magnam minima ea voluptatum non explicabo Similique inventore delectus illo at ullamco quasi possimus enim rem\",\"ethnicity\":\"In similique dolore in elit molestias qui molestiae aut eum ut dolores enim quasi reiciendis\",\"personal_value\":\"Delectus rerum incidunt quasi elit sed amet molestiae eligendi fugiat quia vel eligendi autem odit explicabo Ut delectus\",\"family_value\":\"Quia debitis quas consequat Dolor architecto nemo ad aliquam quas ullamco et voluptatem\",\"community_value\":\"Nisi voluptatem esse sunt illum et sed sed quo ea nostrud voluptate modi sed qui quo ad molestiae omnis\"}]', '[{\"diet\":\"Dicta sunt placeat repudiandae tempor voluptate debitis esse impedit fugiat\",\"drink\":\"3\",\"smoke\":\"3\",\"living_with\":\"Occaecat doloremque est doloremque et sed ipsum quasi qui eos voluptas sint officia\"}]', '[{\"sun_sign\":\"Sit dolorem exercitation nostrud non ex ut fugit non officia voluptatem consequat Omnis molestiae exercitationem quidem\",\"moon_sign\":\"Sint saepe eum irure totam nisi ut quod fugit qui dolor doloribus expedita minima est velit laboris beatae qui ad\",\"time_of_birth\":\"Eos temporibus odio ea in iste reprehenderit possimus velit qui officia quia enim\",\"city_of_birth\":\"Praesentium nihil doloremque nulla iure eu sed numquam\"}]', '[{\"permanent_country\":\"185\",\"permanent_city\":\"37371\",\"permanent_state\":\"3103\",\"permanent_postal_code\":\"Ut amet dolor qui et quia est nulla\"}]', '[{\"father\":\"Dolor qui rem quia est corrupti tempor labore iste tenetur dolor pariatur Sequi culpa voluptatum excepturi eos totam\",\"mother\":\"Similique voluptatum ipsum ex ullam voluptatem non aut cupidatat libero vel cupidatat dolor aliqua Iusto eum ea\",\"brother_sister\":\"Esse vitae accusantium pariatur Ratione ut voluptatem voluptates sed aliquip voluptatibus\"}]', '[{\"home_district\":\"Qui ab ab accusamus repudiandae\",\"family_residence\":\"Ex mollit dolore tempora ut necessitatibus culpa id voluptatum repudiandae veniam iusto est\",\"fathers_occupation\":\"Vitae nostrud porro in dolor deleniti do repudiandae\",\"special_circumstances\":\"Non nisi beatae officia eveniet rerum quaerat suscipit\"}]', '[{\"general_requirement\":\"None\",\"partner_age\":\"18-24\",\"partner_height\":\"Doesn\'t Matter\",\"partner_weight\":\"Doesn\'t Matter\",\"partner_marital_status\":\"1\",\"with_children_acceptables\":\"3\",\"partner_country_of_residence\":\"231\",\"partner_religion\":\"4\",\"partner_caste\":\"2\",\"partner_sub_caste\":\"1\",\"partner_complexion\":\"Doesn\'t Matter\",\"partner_education\":\"Doesn\'t Matter\",\"partner_profession\":\"Professor \",\"partner_drinking_habits\":\"3\",\"partner_smoking_habits\":\"3\",\"partner_diet\":\"Doesn\'t Matter\",\"partner_body_type\":\"Fit\",\"partner_personal_value\":\"Doesn\'t Matter\",\"manglik\":\"Doesn\'t Matter\",\"partner_any_disability\":\"None\",\"partner_mother_tongue\":\"2\",\"partner_family_value\":\"Doesn\'t Matter\",\"prefered_country\":\"230\",\"prefered_state\":\"3817\",\"prefered_status\":\"Doesn\'t Matter\"}]', '[{\"id\":\"3\",\"status\":\"accepted\",\"time\":1513145902},{\"id\":\"5\",\"status\":\"pending\",\"time\":1516880544},{\"id\":\"10\",\"status\":\"pending\",\"time\":1520230499},{\"id\":\"1\",\"status\":\"accepted\",\"is_seen\":\"no\",\"time\":1520328686}]', '[\"3\",\"1\"]', '[\"3\",\"4\",\"1\"]', '[\"12\",\"13\"]', '[\"45\",\"44\",\"46\",\"1\"]', '[{\"index\":1,\"title\":\"image 2\",\"image\":\"gallery_2_1.jpg\"},{\"index\":2,\"title\":\"Image 2\",\"image\":\"gallery_2_2.jpg\"}]', '[]', '[{\"current_package\":\"Default\",\"package_price\":\"0\",\"payment_type\":\"None\"}]', '[]', '[{\"id\":\"1\",\"status\":\"accepted\",\"time\":1513143748},{\"id\":\"3\",\"status\":\"pending\",\"time\":1531030948},{\"id\":\"46\",\"status\":\"pending\",\"time\":1531645317},{\"id\":\"55\",\"status\":\"pending\",\"time\":1534573205}]', 4, 2, '[{\"by\":\"1\",\"type\":\"interest_expressed\",\"status\":\"accepted\",\"is_seen\":\"yes\",\"time\":1513143748},{\"by\":\"3\",\"type\":\"accepted_interest\",\"status\":\"accepted\",\"is_seen\":\"yes\",\"time\":1513145902},{\"by\":\"1\",\"type\":\"accepted_interest\",\"status\":\"accepted\",\"is_seen\":\"yes\",\"time\":1520328686},{\"by\":\"3\",\"type\":\"interest_expressed\",\"status\":\"pending\",\"is_seen\":\"yes\",\"time\":1531030948},{\"by\":\"46\",\"type\":\"interest_expressed\",\"status\":\"pending\",\"is_seen\":\"no\",\"time\":1531645317},{\"by\":\"55\",\"type\":\"interest_expressed\",\"status\":\"pending\",\"is_seen\":\"no\",\"time\":1534573205}]', 1, '2017-10-24 00:00:00', 6, 6, 2, 1, 'no', '[{\"present_address\":\"no\",\"education_and_career\":\"no\",\"physical_attributes\":\"no\",\"language\":\"no\",\"hobbies_and_interest\":\"no\",\"personal_attitude_and_behavior\":\"no\",\"residency_information\":\"no\",\"spiritual_and_social_background\":\"no\",\"life_style\":\"no\",\"astronomic_information\":\"no\",\"permanent_address\":\"no\",\"family_info\":\"no\",\"additional_personal_details\":\"no\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"premium\"}]', '[]', 0, NULL, NULL, 0),
(3, '775EB6873', 'approved', 'Jaden', 'Reyes', 1, 'jaden@hotmail.com', NULL, 1, '012345675967', 'no', '637542000', '5.11', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"profile_3.jpg\",\"thumb\":\"profile_3_thumb.jpg\"}]', 1, NULL, NULL, NULL, '', 'Temporibus aut ullam eu tenetur enim sed ad officia officiis rerum incidunt incidunt provident', '[{\"age\":\"25\",\"marital_status\":\"1\",\"number_of_children\":\"0\",\"area\":\"\"}]', '[{\"country\":\"106\",\"city\":\"22023\",\"state\":\"1784\",\"postal_code\":\"1234\"}]', '[{\"highest_education\":\"Rerum nulla id delectus dolore consectetur odit quis dolorem ullam a veritatis\",\"occupation\":\"In ab nulla cupidatat quasi dolor\",\"annual_income\":\"Totam eos dignissimos culpa impedit cillum nulla unde perferendis id distinctio Qui autem tempora fugit dolores nobis et\"}]', '[{\"height\":\"5.10 Ft\",\"weight\":\"Sunt beatae ad voluptatem est\",\"eye_color\":\"Perspiciatis quo deserunt dolorem qui eveniet ullam qui magnam labore proident reprehenderit\",\"hair_color\":\"Quasi doloremque autem ex elit nisi\",\"complexion\":\"Non veniam doloremque illo laborum Sint qui enim dolores excepturi natus voluptatem ad\",\"blood_group\":\"Deleniti quia eveniet molestiae quia iure iste est elit non natus dolorem\",\"body_type\":\"Soluta excepturi tempore consectetur adipisci alias quia et fugit quibusdam provident corporis in ut odit et fugiat asperiores in\",\"body_art\":\"Ipsum qui aliquip culpa distinctio Unde optio quis deserunt in et eum ex consequatur\",\"any_disability\":\"Quia mollitia saepe omnis sapiente consequatur Dolores non eos est sint sed voluptatem voluptas consequuntur\"}]', '[{\"mother_tongue\":\"4\",\"language\":\"4\",\"speak\":\"2\",\"read\":\"1\"}]', '[{\"hobby\":\"Nostrud accusamus duis facilis corrupti nihil consectetur in aliquip minus vel irure corporis eius\",\"interest\":\"Officiis inventore corporis adipisicing magni omnis provident ad dolorum et velit et corrupti sint quo ipsum\",\"music\":\"Unde nostrum cum perspiciatis est voluptatibus dolore perspiciatis dolore\",\"books\":\"Sapiente veritatis eligendi in suscipit\",\"movie\":\"Inventore id sint eveniet eius quae qui tempor dolore est porro anim\",\"tv_show\":\"Corrupti aspernatur nisi quaerat cupiditate cum ad\",\"sports_show\":\"Fugiat ducimus ad incidunt doloremque eos saepe rerum id nostrud\",\"fitness_activity\":\"Dolor est ab voluptates dolor autem officia est odit amet impedit corrupti amet repudiandae dolores in accusamus\",\"cuisine\":\"Doloribus libero dolorum ipsum voluptatem ea ut lorem\",\"dress_style\":\"Qui dolorum illo dicta velit iusto voluptate quia est quia duis id sint facilis cillum\"}]', '[{\"affection\":\"Esse pariatur Quidem consectetur omnis rerum laboriosam sit et aut consequatur Quo maxime et quia\",\"humor\":\"Eos porro officia qui ut suscipit ex quia nemo ab\",\"political_view\":\"Quia ab quibusdam est ad enim illum maxime rerum excepturi cum velit cupidatat corporis est\",\"religious_service\":\"Veniam quis sint qui quia eligendi\"}]', '[{\"birth_country\":\"242\",\"residency_country\":\"33\",\"citizenship_country\":\"88\",\"grow_up_country\":\"151\",\"immigration_status\":\"Officia elit in repellendus Nulla id blanditiis praesentium qui aliquip\"}]', '[{\"religion\":\"4\",\"caste\":\"2\",\"sub_caste\":\"1\",\"ethnicity\":\"Quidem ullamco numquam officiis proident eiusmod est impedit dolor laudantium eiusmod nostrum eius unde\",\"personal_value\":\"Officia consequat Enim deserunt molestiae praesentium minima vel rerum eos possimus esse excepturi ut atque nulla doloribus\",\"family_value\":\"Ea ullamco velit officiis sunt quibusdam et recusandae Irure fugit dolor a in voluptas molestiae ea vel ad anim blanditiis\",\"community_value\":\"Ut excepturi minima debitis dolores hic et molestiae voluptatem unde ea\"}]', '[{\"diet\":\"In natus ullam maxime omnis officia dolorem qui totam modi aut ratione aute aliqua Maxime voluptate\",\"drink\":\"1\",\"smoke\":\"2\",\"living_with\":\"Eius labore magni id optio elit saepe et sit nisi illo culpa veniam eu temporibus sed sit\"}]', '[{\"sun_sign\":\"Deleniti porro reprehenderit sequi ratione eos ipsa\",\"moon_sign\":\"Cum commodo quasi accusamus magna perspiciatis consectetur eu occaecat eius minima eu dolore qui in qui\",\"time_of_birth\":\"Eum vel est consectetur voluptatem Magna amet omnis est sequi fugiat dolores hic\",\"city_of_birth\":\"Nobis reprehenderit fuga Harum consequat Exercitation inventore\"}]', '[{\"permanent_country\":\"34\",\"permanent_city\":\"Tempore dolor et quae ex hic omnis voluptatem dolores ut commodi mollit\",\"permanent_state\":\"Voluptas illo facilis repellendus Nulla minim\",\"permanent_postal_code\":\"Lorem velit qui laborum Necessitatibus neque labore expedita ut tenetur quia laborum sequi impedit\"}]', '[{\"father\":\"Eos elit voluptate quaerat animi\",\"mother\":\"In fuga Amet sint quos dolorum ut soluta velit facilis est enim voluptatem Ut\",\"brother_sister\":\"Deserunt aute irure reprehenderit vel explicabo Vel consequatur qui ducimus quas cumque omnis reprehenderit dolor qui nostrud voluptate praesentium in\"}]', '[{\"home_district\":\"Magna ad expedita ut necessitatibus esse\",\"family_residence\":\"Sit placeat impedit animi saepe mollitia beatae impedit harum\",\"fathers_occupation\":\"Exercitationem voluptatibus inventore et at eaque provident in sequi id quis tenetur veniam eu harum sunt\",\"special_circumstances\":\"Laboris sint ut dolore et molestias maiores quas et quas sed quia pariatur Incididunt est doloribus\"}]', '[{\"general_requirement\":\"None\",\"partner_age\":\"18-24\",\"partner_height\":\"Doesn\'t Matter\",\"partner_weight\":\"Doesn\'t Matter\",\"partner_marital_status\":\"1\",\"with_children_acceptables\":\"3\",\"partner_country_of_residence\":\"231\",\"partner_religion\":\"4\",\"partner_caste\":\"2\",\"partner_sub_caste\":\"1\",\"partner_complexion\":\"Doesn\'t Matter\",\"partner_education\":\"Doesn\'t Matter\",\"partner_profession\":\"Professor \",\"partner_drinking_habits\":\"3\",\"partner_smoking_habits\":\"3\",\"partner_diet\":\"Doesn\'t Matter\",\"partner_body_type\":\"Fit\",\"partner_personal_value\":\"Doesn\'t Matter\",\"manglik\":\"Doesn\'t Matter\",\"partner_any_disability\":\"None\",\"partner_mother_tongue\":\"2\",\"partner_family_value\":\"Doesn\'t Matter\",\"prefered_country\":\"230\",\"prefered_state\":\"3817\",\"prefered_status\":\"Doesn\'t Matter\"}]', '[{\"id\":\"2\",\"status\":\"pending\",\"time\":1531030947}]', '[\"2\"]', '[\"1\"]', '[]', '[\"44\",\"46\"]', '[]', '[]', '[{\"current_package\":\"Default\",\"package_price\":\"0\",\"payment_type\":\"None\"}]', '[]', '[{\"id\":\"1\",\"status\":\"rejected\",\"time\":1513145656},{\"id\":\"2\",\"status\":\"accepted\",\"time\":1513145902},{\"id\":\"34\",\"status\":\"accepted\",\"time\":1531031198},{\"id\":\"44\",\"status\":\"pending\",\"time\":1531381963}]', 3, 2, '[{\"by\":\"1\",\"type\":\"interest_expressed\",\"status\":\"rejected\",\"is_seen\":\"yes\",\"time\":1513145656},{\"by\":\"2\",\"type\":\"interest_expressed\",\"status\":\"accepted\",\"is_seen\":\"yes\",\"time\":1513145902},{\"by\":\"34\",\"type\":\"interest_expressed\",\"status\":\"accepted\",\"is_seen\":\"yes\",\"time\":1531031198},{\"by\":\"44\",\"type\":\"interest_expressed\",\"status\":\"pending\",\"is_seen\":\"no\",\"time\":1531381963}]', 1, '2017-10-02 00:00:00', 34, 25, 5, 1, 'no', '[{\"present_address\":\"no\",\"education_and_career\":\"no\",\"physical_attributes\":\"no\",\"language\":\"no\",\"hobbies_and_interest\":\"no\",\"personal_attitude_and_behavior\":\"no\",\"residency_information\":\"no\",\"spiritual_and_social_background\":\"no\",\"life_style\":\"no\",\"astronomic_information\":\"no\",\"permanent_address\":\"no\",\"family_info\":\"no\",\"additional_personal_details\":\"no\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"all\"}]', '[]', 2, NULL, NULL, 0),
(7, 'BB131E6E7', 'approved', 'Demo', 'Name', 1, 'admin@matrimonial.com', NULL, 1, '01234', 'no', '692665200', '5.11', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"profile_7.jpg\",\"thumb\":\"profile_7_thumb.jpg\"}]', 0, '2020-04-16 10:01:46', NULL, NULL, '', '', '[{\"age\":\"\",\"marital_status\":\"\",\"number_of_children\":\"\",\"area\":\"\"}]', '[{\"country\":\"\",\"city\":\"\",\"state\":\"\",\"postal_code\":\"\"}]', '[{\"highest_education\":\"\",\"occupation\":\"\",\"annual_income\":\"\"}]', '[{\"height\":\"\",\"weight\":\"\",\"eye_color\":\"\",\"hair_color\":\"\",\"complexion\":\"\",\"blood_group\":\"\",\"body_type\":\"\",\"body_art\":\"\",\"any_disability\":\"\"}]', '[{\"mother_tongue\":\"\",\"language\":\"\",\"speak\":\"\",\"read\":\"\"}]', '[{\"hobby\":\"\",\"interest\":\"\",\"music\":\"\",\"books\":\"\",\"movie\":\"\",\"tv_show\":\"\",\"sports_show\":\"\",\"fitness_activity\":\"\",\"cuisine\":\"\",\"dress_style\":\"\"}]', '[{\"affection\":\"\",\"humor\":\"\",\"political_view\":\"\",\"religious_service\":\"\"}]', '[{\"birth_country\":\"\",\"residency_country\":\"\",\"citizenship_country\":\"\",\"grow_up_country\":\"\",\"immigration_status\":\"\"}]', '[{\"religion\":\"\",\"caste\":\"\",\"sub_caste\":\"\",\"ethnicity\":\"\",\"personal_value\":\"\",\"family_value\":\"\",\"community_value\":\"\"}]', '[{\"diet\":\"\",\"drink\":\"\",\"smoke\":\"\",\"living_with\":\"\"}]', '[{\"sun_sign\":\"\",\"moon_sign\":\"\",\"date_of_birth\":\"\",\"time_of_birth\":\"\",\"city_of_birth\":\"\"}]', '[{\"permanent_country\":\"\",\"permanent_city\":\"\",\"permanent_state\":\"\",\"permanent_postal_code\":\"\"}]', '[{\"father\":\"\",\"mother\":\"\",\"brother_sister\":\"\"}]', '[{\"home_district\":\"\",\"family_residence\":\"\",\"fathers_occupation\":\"\",\"special_circumstances\":\"\"}]', '[{\"general_requirement\":\"None\",\"partner_age\":\"18-24\",\"partner_height\":\"Doesn\'t Matter\",\"partner_weight\":\"Doesn\'t Matter\",\"partner_marital_status\":\"1\",\"with_children_acceptables\":\"3\",\"partner_country_of_residence\":\"231\",\"partner_religion\":\"4\",\"partner_caste\":\"2\",\"partner_sub_caste\":\"1\",\"partner_complexion\":\"Doesn\'t Matter\",\"partner_education\":\"Doesn\'t Matter\",\"partner_profession\":\"Professor \",\"partner_drinking_habits\":\"3\",\"partner_smoking_habits\":\"3\",\"partner_diet\":\"Doesn\'t Matter\",\"partner_body_type\":\"Fit\",\"partner_personal_value\":\"Doesn\'t Matter\",\"manglik\":\"Doesn\'t Matter\",\"partner_any_disability\":\"None\",\"partner_mother_tongue\":\"2\",\"partner_family_value\":\"Doesn\'t Matter\",\"prefered_country\":\"230\",\"prefered_state\":\"3817\",\"prefered_status\":\"Doesn\'t Matter\"}]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[{\"current_package\":\"Default\",\"package_price\":\"0\",\"payment_type\":\"None\"}]', '[]', '[{\"id\":\"14\",\"status\":\"pending\",\"time\":1517827010}]', 0, 1, '[{\"by\":\"14\",\"type\":\"interest_expressed\",\"status\":\"pending\",\"is_seen\":\"yes\",\"time\":1517827010}]', 1, '2017-11-01 10:11:44', 0, 0, 0, 0, 'no', '[{\"present_address\":\"no\",\"education_and_career\":\"no\",\"physical_attributes\":\"no\",\"language\":\"no\",\"hobbies_and_interest\":\"no\",\"personal_attitude_and_behavior\":\"no\",\"residency_information\":\"no\",\"spiritual_and_social_background\":\"no\",\"life_style\":\"no\",\"astronomic_information\":\"no\",\"permanent_address\":\"no\",\"family_info\":\"no\",\"additional_personal_details\":\"no\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"all\"}]', '[]', 0, NULL, NULL, 0),
(29, '31C448E129', 'approved', 'Emily', 'Britt', 2, 'newuser1@gmail.com', NULL, 1, '13214354563', 'no', '1252792800', '0.00', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"profile_29.jpg\",\"thumb\":\"profile_29_thumb.jpg\"}]', 1, NULL, NULL, NULL, '', '', '[{\"age\":\"\",\"marital_status\":\"\",\"number_of_children\":\"\",\"area\":\"\"}]', '[{\"country\":\"\",\"city\":\"\",\"state\":\"\",\"postal_code\":\"\"}]', '[{\"highest_education\":\"\",\"occupation\":\"\",\"annual_income\":\"\"}]', '[{\"weight\":\"\",\"eye_color\":\"\",\"hair_color\":\"\",\"complexion\":\"\",\"blood_group\":\"\",\"body_type\":\"\",\"body_art\":\"\",\"any_disability\":\"\"}]', '[{\"mother_tongue\":\"\",\"language\":\"\",\"speak\":\"\",\"read\":\"\"}]', '[{\"hobby\":\"\",\"interest\":\"\",\"music\":\"\",\"books\":\"\",\"movie\":\"\",\"tv_show\":\"\",\"sports_show\":\"\",\"fitness_activity\":\"\",\"cuisine\":\"\",\"dress_style\":\"\"}]', '[{\"affection\":\"\",\"humor\":\"\",\"political_view\":\"\",\"religious_service\":\"\"}]', '[{\"birth_country\":\"\",\"residency_country\":\"\",\"citizenship_country\":\"\",\"grow_up_country\":\"\",\"immigration_status\":\"\"}]', '[{\"religion\":\"2\",\"caste\":\"\",\"sub_caste\":\"\",\"ethnicity\":\"\",\"personal_value\":\"\",\"family_value\":\"\",\"u_manglik\":\"3\",\"community_value\":\"\"}]', '[{\"diet\":\"\",\"drink\":\"\",\"smoke\":\"\",\"living_with\":\"\"}]', '[{\"sun_sign\":\"\",\"moon_sign\":\"\",\"time_of_birth\":\"\",\"city_of_birth\":\"\"}]', '[{\"permanent_country\":\"\",\"permanent_city\":\"\",\"permanent_state\":\"\",\"permanent_postal_code\":\"\"}]', '[{\"father\":\"\",\"mother\":\"\",\"brother_sister\":\"\"}]', '[{\"home_district\":\"\",\"family_residence\":\"\",\"fathers_occupation\":\"\",\"special_circumstances\":\"\"}]', '[{\"general_requirement\":\"\",\"partner_age\":\"\",\"partner_height\":\"\",\"partner_weight\":\"\",\"partner_marital_status\":\"\",\"with_children_acceptables\":\"\",\"partner_country_of_residence\":\"\",\"partner_religion\":\"\",\"partner_caste\":\"\",\"partner_sub_caste\":\"\",\"partner_complexion\":\"\",\"partner_education\":\"\",\"partner_profession\":\"\",\"partner_drinking_habits\":\"\",\"partner_smoking_habits\":\"\",\"partner_diet\":\"\",\"partner_body_type\":\"\",\"partner_personal_value\":\"\",\"manglik\":\"\",\"partner_any_disability\":\"\",\"partner_mother_tongue\":\"\",\"partner_family_value\":\"\",\"prefered_country\":\"\",\"prefered_state\":\"\",\"prefered_status\":\"\"}]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[{\"current_package\":\"Default\",\"package_price\":\"0\",\"payment_type\":\"None\"}]', '[]', '[]', 0, 1, '[]', 1, '2018-04-25 01:04:35', 5, 6, 7, 0, 'no', '[{\"present_address\":\"no\",\"education_and_career\":\"no\",\"physical_attributes\":\"no\",\"language\":\"no\",\"hobbies_and_interest\":\"no\",\"personal_attitude_and_behavior\":\"no\",\"residency_information\":\"no\",\"spiritual_and_social_background\":\"no\",\"life_style\":\"no\",\"astronomic_information\":\"no\",\"permanent_address\":\"no\",\"family_info\":\"no\",\"additional_personal_details\":\"no\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"all\"}]', '[]', 0, NULL, NULL, 0),
(33, '36DAB56033', 'pending', 'Dorothy Buchanan', 'Jesse Mcguire', 2, 'levoj@mailinator.com', NULL, 1, 'Est sit assumenda pa', 'no', '802216800', '0.00', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"profile_33.jpg\",\"thumb\":\"profile_33_thumb.jpg\"}]', 1, NULL, NULL, NULL, '', '', '[{\"age\":\"\",\"marital_status\":\"\",\"number_of_children\":\"\",\"area\":\"\",\"on_behalf\":\"3\"}]', '[{\"country\":\"\",\"city\":\"\",\"state\":\"\",\"postal_code\":\"\"}]', '[{\"highest_education\":\"\",\"occupation\":\"\",\"annual_income\":\"\"}]', '[{\"weight\":\"\",\"eye_color\":\"\",\"hair_color\":\"\",\"complexion\":\"\",\"blood_group\":\"\",\"body_type\":\"\",\"body_art\":\"\",\"any_disability\":\"\"}]', '[{\"mother_tongue\":\"\",\"language\":\"\",\"speak\":\"\",\"read\":\"\"}]', '[{\"hobby\":\"\",\"interest\":\"\",\"music\":\"\",\"books\":\"\",\"movie\":\"\",\"tv_show\":\"\",\"sports_show\":\"\",\"fitness_activity\":\"\",\"cuisine\":\"\",\"dress_style\":\"\"}]', '[{\"affection\":\"\",\"humor\":\"\",\"political_view\":\"\",\"religious_service\":\"\"}]', '[{\"birth_country\":\"\",\"residency_country\":\"\",\"citizenship_country\":\"\",\"grow_up_country\":\"\",\"immigration_status\":\"\"}]', '[{\"religion\":\"\",\"caste\":\"\",\"sub_caste\":\"\",\"ethnicity\":\"\",\"u_manglik\":\"\",\"personal_value\":\"\",\"family_value\":\"\",\"community_value\":\"\"}]', '[{\"diet\":\"\",\"drink\":\"\",\"smoke\":\"\",\"living_with\":\"\"}]', '[{\"sun_sign\":\"\",\"moon_sign\":\"\",\"time_of_birth\":\"\",\"city_of_birth\":\"\"}]', '[{\"permanent_country\":\"\",\"permanent_city\":\"\",\"permanent_state\":\"\",\"permanent_postal_code\":\"\"}]', '[{\"father\":\"\",\"mother\":\"\",\"brother_sister\":\"\"}]', '[{\"home_district\":\"\",\"family_residence\":\"\",\"fathers_occupation\":\"\",\"special_circumstances\":\"\"}]', '[{\"general_requirement\":\"\",\"partner_age\":\"\",\"partner_height\":\"\",\"partner_weight\":\"\",\"partner_marital_status\":\"\",\"with_children_acceptables\":\"\",\"partner_country_of_residence\":\"\",\"partner_religion\":\"\",\"partner_caste\":\"\",\"partner_sub_caste\":\"\",\"partner_complexion\":\"\",\"partner_education\":\"\",\"partner_profession\":\"\",\"partner_drinking_habits\":\"\",\"partner_smoking_habits\":\"\",\"partner_diet\":\"\",\"partner_body_type\":\"\",\"partner_personal_value\":\"\",\"manglik\":\"\",\"partner_any_disability\":\"\",\"partner_mother_tongue\":\"\",\"partner_family_value\":\"\",\"prefered_country\":\"\",\"prefered_state\":\"\",\"prefered_status\":\"\"}]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[{\"current_package\":\"Default\",\"package_price\":\"0\",\"payment_type\":\"None\"}]', '[]', '[]', 0, 1, '[]', 1, '2018-05-13 10:05:14', 5, 6, 7, 0, 'no', '[{\"present_address\":\"no\",\"education_and_career\":\"no\",\"physical_attributes\":\"no\",\"language\":\"no\",\"hobbies_and_interest\":\"no\",\"personal_attitude_and_behavior\":\"no\",\"residency_information\":\"no\",\"spiritual_and_social_background\":\"no\",\"life_style\":\"no\",\"astronomic_information\":\"no\",\"permanent_address\":\"no\",\"family_info\":\"no\",\"additional_personal_details\":\"no\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"all\"}]', '[]', 0, NULL, NULL, 0),
(34, '7C064C7E34', 'approved', 'Cary ', 'Campbell', 2, 'demonew@gmail.com', NULL, 1, '0987654321', 'no', '757378800', '0.00', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"profile_34.jpeg\",\"thumb\":\"profile_34_thumb.jpeg\"}]', 0, '2020-04-16 12:08:08', NULL, NULL, '', 'Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry Lorem Ipsumis simply dummy text of the printing and typesetting industry', '[{\"marital_status\":\"1\",\"number_of_children\":\"\",\"area\":\"\",\"on_behalf\":\"1\"}]', '[{\"country\":\"18\",\"city\":\"7291\",\"state\":\"348\",\"postal_code\":\"\"}]', '[{\"highest_education\":\"Bsc\",\"occupation\":\"Engineer\",\"annual_income\":\"\"}]', '[{\"weight\":\"\",\"eye_color\":\"\",\"hair_color\":\"\",\"complexion\":\"\",\"blood_group\":\"\",\"body_type\":\"\",\"body_art\":\"\",\"any_disability\":\"\"}]', '[{\"mother_tongue\":\"2\",\"language\":\"2\",\"speak\":\"\",\"read\":\"\"}]', '[{\"hobby\":\"\",\"interest\":\"\",\"music\":\"\",\"books\":\"\",\"movie\":\"\",\"tv_show\":\"\",\"sports_show\":\"\",\"fitness_activity\":\"\",\"cuisine\":\"\",\"dress_style\":\"\"}]', '[{\"affection\":\"\",\"humor\":\"\",\"political_view\":\"\",\"religious_service\":\"\"}]', '[{\"birth_country\":\"\",\"residency_country\":\"\",\"citizenship_country\":\"\",\"grow_up_country\":\"\",\"immigration_status\":\"\"}]', '[{\"religion\":\"4\",\"caste\":\"2\",\"sub_caste\":\"257\",\"ethnicity\":\"\",\"personal_value\":\"\",\"family_value\":\"1\",\"u_manglik\":\"3\",\"community_value\":\"\",\"family_status\":\"2\"}]', '[{\"diet\":\"\",\"drink\":\"\",\"smoke\":\"\",\"living_with\":\"\"}]', '[{\"sun_sign\":\"\",\"moon_sign\":\"\",\"time_of_birth\":\"\",\"city_of_birth\":\"\"}]', '[{\"permanent_country\":\"\",\"permanent_city\":\"\",\"permanent_state\":\"\",\"permanent_postal_code\":\"\"}]', '[{\"father\":\"\",\"mother\":\"\",\"brother_sister\":\"\"}]', '[{\"home_district\":\"\",\"family_residence\":\"\",\"fathers_occupation\":\"\",\"special_circumstances\":\"\"}]', '[{\"general_requirement\":\"Doctors\",\"partner_age\":\"25\",\"partner_height\":\"\",\"partner_weight\":\"\",\"partner_marital_status\":\"1\",\"with_children_acceptables\":\"2\",\"partner_country_of_residence\":\"18\",\"partner_religion\":\"4\",\"partner_caste\":\"2\",\"partner_sub_caste\":\"\",\"partner_complexion\":\"\",\"partner_education\":\"\",\"partner_profession\":\"\",\"partner_drinking_habits\":\"\",\"partner_smoking_habits\":\"\",\"partner_diet\":\"\",\"partner_body_type\":\"\",\"partner_personal_value\":\"\",\"manglik\":\"\",\"partner_any_disability\":\"\",\"partner_mother_tongue\":\"2\",\"partner_family_value\":\"\",\"prefered_country\":\"\",\"prefered_state\":null,\"prefered_status\":\"\"}]', '[{\"id\":\"1\",\"status\":\"accepted\",\"is_seen\":\"no\",\"time\":1526374328},{\"id\":\"14\",\"status\":\"accepted\",\"is_seen\":\"no\",\"time\":1531135416},{\"id\":\"3\",\"status\":\"accepted\",\"is_seen\":\"no\",\"time\":1531031198},{\"id\":\"5\",\"status\":\"pending\",\"time\":1526377064},{\"id\":\"10\",\"status\":\"pending\",\"time\":1526377735}]', '[\"1\",\"14\",\"3\",\"5\",\"10\"]', '[\"1\"]', '[\"14\"]', '[\"14\"]', '[{\"index\":0,\"title\":\"image\",\"image\":\"gallery_34_0.jpg\"}]', '[]', '[{\"current_package\":\"Bronze\",\"package_price\":\"15\",\"payment_type\":\"Stripe\"}]', '[]', '[{\"id\":\"1\",\"status\":\"accepted\",\"time\":1526374791}]', 0, 2, '[{\"by\":\"1\",\"type\":\"interest_expressed\",\"status\":\"accepted\",\"is_seen\":\"yes\",\"time\":1526374791},{\"by\":\"1\",\"type\":\"interest_expressed\",\"status\":\"accepted\",\"is_seen\":\"yes\",\"time\":1526374791},{\"by\":\"3\",\"type\":\"accepted_interest\",\"status\":\"accepted\",\"is_seen\":\"yes\",\"time\":1531031198},{\"by\":\"14\",\"type\":\"accepted_interest\",\"status\":\"accepted\",\"is_seen\":\"yes\",\"time\":1531135416}]', 1, '2018-05-15 10:05:36', 35, 35, 18, 0, 'no', '[{\"present_address\":\"yes\",\"education_and_career\":\"yes\",\"physical_attributes\":\"no\",\"language\":\"no\",\"hobbies_and_interest\":\"no\",\"personal_attitude_and_behavior\":\"no\",\"residency_information\":\"no\",\"spiritual_and_social_background\":\"yes\",\"life_style\":\"no\",\"astronomic_information\":\"no\",\"permanent_address\":\"no\",\"family_info\":\"no\",\"additional_personal_details\":\"no\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"all\"}]', '[\"1\",\"3\",\"5\",\"10\",\"59\",\"60\"]', 2, NULL, NULL, 0),
(56, 'B649477656', 'approved', 'Nigel', 'Clemons', 1, 'padyjyjo@mailinator.net', NULL, 1, '93', 'no', '1492192800', '0.00', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"profile_56.jpg\",\"thumb\":\"profile_56_thumb.jpg\"}]', 0, '2020-04-15 9:01:46', NULL, NULL, '', '', '[{\"age\":\"\",\"marital_status\":\"\",\"number_of_children\":\"\",\"area\":\"\",\"on_behalf\":\"5\"}]', '[{\"country\":\"\",\"city\":\"\",\"state\":\"\",\"postal_code\":\"\"}]', '[{\"highest_education\":\"\",\"occupation\":\"\",\"annual_income\":\"\"}]', '[{\"weight\":\"\",\"eye_color\":\"\",\"hair_color\":\"\",\"complexion\":\"\",\"blood_group\":\"\",\"body_type\":\"\",\"body_art\":\"\",\"any_disability\":\"\"}]', '[{\"mother_tongue\":\"\",\"language\":\"\",\"speak\":\"\",\"read\":\"\"}]', '[{\"hobby\":\"\",\"interest\":\"\",\"music\":\"\",\"books\":\"\",\"movie\":\"\",\"tv_show\":\"\",\"sports_show\":\"\",\"fitness_activity\":\"\",\"cuisine\":\"\",\"dress_style\":\"\"}]', '[{\"affection\":\"\",\"humor\":\"\",\"political_view\":\"\",\"religious_service\":\"\"}]', '[{\"birth_country\":\"\",\"residency_country\":\"\",\"citizenship_country\":\"\",\"grow_up_country\":\"\",\"immigration_status\":\"\"}]', '[{\"religion\":\"\",\"caste\":\"\",\"sub_caste\":\"\",\"ethnicity\":\"\",\"u_manglik\":\"\",\"personal_value\":\"\",\"family_value\":\"\",\"community_value\":\"\",\"family_status\":\"\"}]', '[{\"diet\":\"\",\"drink\":\"\",\"smoke\":\"\",\"living_with\":\"\"}]', '[{\"sun_sign\":\"\",\"moon_sign\":\"\",\"time_of_birth\":\"\",\"city_of_birth\":\"\"}]', '[{\"permanent_country\":\"\",\"permanent_city\":\"\",\"permanent_state\":\"\",\"permanent_postal_code\":\"\"}]', '[{\"father\":\"\",\"mother\":\"\",\"brother_sister\":\"\"}]', '[{\"home_district\":\"\",\"family_residence\":\"\",\"fathers_occupation\":\"\",\"special_circumstances\":\"\"}]', '[{\"general_requirement\":\"\",\"partner_age\":\"\",\"partner_height\":\"\",\"partner_weight\":\"\",\"partner_marital_status\":\"\",\"with_children_acceptables\":\"\",\"partner_country_of_residence\":\"\",\"partner_religion\":\"\",\"partner_caste\":\"\",\"partner_sub_caste\":\"\",\"partner_complexion\":\"\",\"partner_education\":\"\",\"partner_profession\":\"\",\"partner_drinking_habits\":\"\",\"partner_smoking_habits\":\"\",\"partner_diet\":\"\",\"partner_body_type\":\"\",\"partner_personal_value\":\"\",\"manglik\":\"\",\"partner_any_disability\":\"\",\"partner_mother_tongue\":\"\",\"partner_family_value\":\"\",\"prefered_country\":\"\",\"prefered_state\":\"\",\"prefered_status\":\"\"}]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[{\"current_package\":\"Default\",\"package_price\":\"0\",\"payment_type\":\"None\"}]', '[]', '[]', 0, 1, '[]', 1, '2018-11-26 02:11:14', 5, 6, 3, 0, 'no', '[{\"present_address\":\"no\",\"education_and_career\":\"no\",\"physical_attributes\":\"no\",\"language\":\"no\",\"hobbies_and_interest\":\"no\",\"personal_attitude_and_behavior\":\"no\",\"residency_information\":\"no\",\"spiritual_and_social_background\":\"no\",\"life_style\":\"no\",\"astronomic_information\":\"no\",\"permanent_address\":\"no\",\"family_info\":\"no\",\"additional_personal_details\":\"no\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"premium\"}]', '[]', 0, NULL, NULL, 0),
(66, '1EFA179B66', 'approved', 'Byron', 'Black', 1, 'cevy@mailinator.com', '', 1, '28', 'no', '537559200', '0.00', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"profile_66.jpg\",\"thumb\":\"profile_66_thumb.jpg\"}]', 1, '2020-04-16 12:01:46', NULL, NULL, '', 'Est non dolore volup', '[{\"marital_status\":\"2\",\"number_of_children\":\"1\",\"area\":\"Quia vero officia fu\",\"on_behalf\":\"5\"}]', '[{\"country\":\"101\",\"city\":\"\",\"state\":\"5\",\"postal_code\":\"0145\"}]', '[{\"highest_education\":\"Tenetur veniam nesc\",\"occupation\":\"Non quos aliquam ali\",\"annual_income\":\"187\"}]', '[{\"weight\":\"Dolores dolore in co\",\"eye_color\":\"Minima velit nemo au\",\"hair_color\":\"Magna ab ducimus Na\",\"complexion\":\"Dolor sequi incididu\",\"blood_group\":\"Vel voluptate odio v\",\"body_type\":\"Dolore porro velit i\",\"body_art\":\"Quis repellendus Mo\",\"any_disability\":\"Ipsum quia expedita \"}]', '[{\"mother_tongue\":\"4\",\"language\":\"7\",\"speak\":\"4\",\"read\":\"8\"}]', '[{\"hobby\":\"Dolorem consequat S\",\"interest\":\"Et in ipsum culpa \",\"music\":\"Modi odit similique \",\"books\":\"Nihil amet pariatur\",\"movie\":\"Dignissimos doloribu\",\"tv_show\":\"Eum quis iusto at et\",\"sports_show\":\"Mollit earum fugiat\",\"fitness_activity\":\"Reiciendis asperiore\",\"cuisine\":\"Est ducimus volupta\",\"dress_style\":\"Sed nihil voluptatem\"}]', '[{\"affection\":\"Nihil officiis delec\",\"humor\":\"Suscipit dolorem qui\",\"political_view\":\"Dolorum sunt delectu\",\"religious_service\":\"Blanditiis sit exer\"}]', '[{\"birth_country\":\"101\",\"residency_country\":\"15\",\"citizenship_country\":\"16\",\"grow_up_country\":\"17\",\"immigration_status\":\"Et inventore laborum\"}]', '[{\"religion\":\"4\",\"caste\":\"3\",\"sub_caste\":\"330\",\"ethnicity\":\"Quisquam fugiat ali\",\"personal_value\":\"Nemo consequatur ut\",\"family_value\":\"\",\"u_manglik\":\"\",\"community_value\":\"Sed ut labore et dol\",\"family_status\":\"\"}]', '[{\"diet\":\"Quia corporis conseq\",\"drink\":\"\",\"smoke\":\"\",\"living_with\":\"Qui aut accusantium \"}]', '[{\"sun_sign\":\"Maxime in necessitat\",\"moon_sign\":\"Nesciunt animi cum\",\"time_of_birth\":\"Dolorem tempor quibu\",\"city_of_birth\":\"Est reprehenderit ac\"}]', '[{\"permanent_country\":\"18\",\"permanent_city\":\"7303\",\"permanent_state\":\"352\",\"permanent_postal_code\":\"234567\"}]', '[{\"father\":\"Architecto occaecat \",\"mother\":\"Consequat In volupt\",\"brother_sister\":\"Eaque quaerat nesciu\"}]', '[{\"home_district\":\"Obcaecati ullamco am\",\"family_residence\":\"Sunt iste magnam sin\",\"fathers_occupation\":\"Neque minima corpori\",\"special_circumstances\":\"Ex ipsa amet excep\"}]', '[{\"general_requirement\":\"Adipisci non quis ex\",\"partner_age\":\"Accusamus velit dese\",\"partner_height\":\"Laboriosam elit au\",\"partner_weight\":\"Qui ut architecto co\",\"partner_marital_status\":\"\",\"with_children_acceptables\":\"\",\"partner_country_of_residence\":\"\",\"partner_religion\":\"\",\"partner_caste\":\"\",\"partner_complexion\":\"Deserunt occaecat ma\",\"partner_education\":\"Amet odio in fugiat\",\"partner_profession\":\"Quis libero enim rep\",\"partner_drinking_habits\":\"\",\"partner_smoking_habits\":\"\",\"partner_diet\":\"Ea ea perspiciatis \",\"partner_body_type\":\"Incididunt rerum adi\",\"partner_personal_value\":\"Non vitae incididunt\",\"manglik\":\"\",\"partner_any_disability\":\"Et a a eum cillum\",\"partner_mother_tongue\":\"\",\"partner_family_value\":\"Aut dolor numquam fu\",\"prefered_country\":\"\",\"prefered_state\":\"\",\"prefered_status\":\"Fugit perferendis r\"}]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[{\"current_package\":\"Default\",\"package_price\":\"0\",\"payment_type\":\"None\"}]', '[]', '[]', 0, 1, '[]', 1, '2019-07-18 15:53:40', 5, 6, 3, 0, 'no', '[{\"present_address\":\"no\",\"education_and_career\":\"no\",\"physical_attributes\":\"no\",\"language\":\"no\",\"hobbies_and_interest\":\"no\",\"personal_attitude_and_behavior\":\"no\",\"residency_information\":\"no\",\"spiritual_and_social_background\":\"no\",\"life_style\":\"no\",\"astronomic_information\":\"no\",\"permanent_address\":\"no\",\"family_info\":\"no\",\"additional_personal_details\":\"no\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"premium\"}]', '[]', 0, NULL, NULL, 0),
(71, '2D3D310F71', 'approved', 'guruvacha', 'jain', 1, 'guruvachanj@gmail.com', '_768ffff7cea04470d9d4', 1, '8527136561', 'no', '1546279200', '0.00', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"default.jpg\",\"thumb\":\"default_thumb.jpg\"}]', NULL, NULL, NULL, NULL, '', '', '[{\"age\":\"\",\"marital_status\":\"\",\"number_of_children\":\"\",\"area\":\"\",\"on_behalf\":\"1\"}]', '[{\"country\":\"\",\"city\":\"\",\"state\":\"\",\"postal_code\":\"\"}]', '[{\"highest_education\":\"\",\"occupation\":\"\",\"annual_income\":\"\"}]', '[{\"weight\":\"\",\"eye_color\":\"\",\"hair_color\":\"\",\"complexion\":\"\",\"blood_group\":\"\",\"body_type\":\"\",\"body_art\":\"\",\"any_disability\":\"\"}]', '[{\"mother_tongue\":\"\",\"language\":\"\",\"speak\":\"\",\"read\":\"\"}]', '[{\"hobby\":\"\",\"interest\":\"\",\"music\":\"\",\"books\":\"\",\"movie\":\"\",\"tv_show\":\"\",\"sports_show\":\"\",\"fitness_activity\":\"\",\"cuisine\":\"\",\"dress_style\":\"\"}]', '[{\"affection\":\"\",\"humor\":\"\",\"political_view\":\"\",\"religious_service\":\"\"}]', '[{\"birth_country\":\"\",\"residency_country\":\"\",\"citizenship_country\":\"\",\"grow_up_country\":\"\",\"immigration_status\":\"\"}]', '[{\"religion\":\"\",\"caste\":\"\",\"sub_caste\":\"\",\"ethnicity\":\"\",\"u_manglik\":\"\",\"personal_value\":\"\",\"family_value\":\"\",\"community_value\":\"\",\"family_status\":\"\"}]', '[{\"diet\":\"\",\"drink\":\"\",\"smoke\":\"\",\"living_with\":\"\"}]', '[{\"sun_sign\":\"\",\"moon_sign\":\"\",\"time_of_birth\":\"\",\"city_of_birth\":\"\"}]', '[{\"permanent_country\":\"\",\"permanent_city\":\"\",\"permanent_state\":\"\",\"permanent_postal_code\":\"\"}]', '[{\"father\":\"\",\"mother\":\"\",\"brother_sister\":\"\"}]', '[{\"home_district\":\"\",\"family_residence\":\"\",\"fathers_occupation\":\"\",\"special_circumstances\":\"\"}]', '[{\"general_requirement\":\"\",\"partner_age\":\"\",\"partner_height\":\"\",\"partner_weight\":\"\",\"partner_marital_status\":\"\",\"with_children_acceptables\":\"\",\"partner_country_of_residence\":\"\",\"partner_religion\":\"\",\"partner_caste\":\"\",\"partner_sub_caste\":\"\",\"partner_complexion\":\"\",\"partner_education\":\"\",\"partner_profession\":\"\",\"partner_drinking_habits\":\"\",\"partner_smoking_habits\":\"\",\"partner_diet\":\"\",\"partner_body_type\":\"\",\"partner_personal_value\":\"\",\"manglik\":\"\",\"partner_any_disability\":\"\",\"partner_mother_tongue\":\"\",\"partner_family_value\":\"\",\"prefered_country\":\"\",\"prefered_state\":\"\",\"prefered_status\":\"\"}]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', '[{\"current_package\":\"Default\",\"package_price\":\"0\",\"payment_type\":\"None\"}]', '[]', '[]', 0, 1, '[]', 1, '2020-09-16 18:52:14', 5, 6, 3, 0, 'no', '[{\"present_address\":\"no\",\"education_and_career\":\"no\",\"physical_attributes\":\"no\",\"language\":\"no\",\"hobbies_and_interest\":\"no\",\"personal_attitude_and_behavior\":\"no\",\"residency_information\":\"no\",\"spiritual_and_social_background\":\"no\",\"life_style\":\"no\",\"astronomic_information\":\"no\",\"permanent_address\":\"no\",\"family_info\":\"no\",\"additional_personal_details\":\"no\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"premium\"}]', '[]', 0, NULL, 5345, 1);
INSERT INTO `member` (`member_id`, `member_profile_id`, `status`, `first_name`, `last_name`, `gender`, `email`, `email_verification_code`, `email_verification_status`, `mobile`, `is_closed`, `date_of_birth`, `height`, `password`, `profile_image`, `profile_image_status`, `profile_image_update_time`, `google_login_id`, `facebook_login_id`, `twitter_login_id`, `introduction`, `basic_info`, `present_address`, `education_and_career`, `physical_attributes`, `language`, `hobbies_and_interest`, `personal_attitude_and_behavior`, `residency_information`, `spiritual_and_social_background`, `life_style`, `astronomic_information`, `permanent_address`, `family_info`, `additional_personal_details`, `partner_expectation`, `interest`, `short_list`, `followed`, `ignored`, `ignored_by`, `gallery`, `happy_story`, `package_info`, `payments_info`, `interested_by`, `follower`, `membership`, `notifications`, `profile_status`, `member_since`, `express_interest`, `direct_messages`, `photo_gallery`, `profile_completion`, `is_blocked`, `privacy_status`, `pic_privacy`, `report_profile`, `reported_by`, `registration_type`, `otp`, `mobile_verify`) VALUES
(74, '3654F1CE74', 'approved', 'guruvachan', 'jain', 1, 'guruvachan@gmail.com', NULL, 1, '8527136562', 'no', '1603908000', '0.00', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"default.jpg\",\"thumb\":\"default_thumb.jpg\"}]', NULL, NULL, NULL, NULL, '', '', '[{\"age\":\"\",\"marital_status\":\"\",\"number_of_children\":\"\",\"area\":\"\",\"on_behalf\":\"1\"}]', '[{\"country\":\"\",\"city\":\"\",\"state\":\"\",\"postal_code\":\"\"}]', '[{\"highest_education\":\"\",\"occupation\":\"\",\"annual_income\":\"\"}]', '[{\"weight\":\"\",\"eye_color\":\"\",\"hair_color\":\"\",\"complexion\":\"\",\"blood_group\":\"\",\"body_type\":\"\",\"body_art\":\"\",\"any_disability\":\"\"}]', '[{\"mother_tongue\":\"\",\"language\":\"\",\"speak\":\"\",\"read\":\"\"}]', '[{\"hobby\":\"\",\"interest\":\"\",\"music\":\"\",\"books\":\"\",\"movie\":\"\",\"tv_show\":\"\",\"sports_show\":\"\",\"fitness_activity\":\"\",\"cuisine\":\"\",\"dress_style\":\"\"}]', '[{\"affection\":\"\",\"humor\":\"\",\"political_view\":\"\",\"religious_service\":\"\"}]', '[{\"birth_country\":\"\",\"residency_country\":\"\",\"citizenship_country\":\"\",\"grow_up_country\":\"\",\"immigration_status\":\"\"}]', '[{\"religion\":\"\",\"caste\":\"\",\"sub_caste\":\"\",\"ethnicity\":\"\",\"u_manglik\":\"\",\"personal_value\":\"\",\"family_value\":\"\",\"community_value\":\"\",\"family_status\":\"\"}]', '[{\"diet\":\"\",\"drink\":\"\",\"smoke\":\"\",\"living_with\":\"\"}]', '[{\"sun_sign\":\"\",\"moon_sign\":\"\",\"time_of_birth\":\"\",\"city_of_birth\":\"\"}]', '[{\"permanent_country\":\"\",\"permanent_city\":\"\",\"permanent_state\":\"\",\"permanent_postal_code\":\"\"}]', '[{\"father\":\"\",\"mother\":\"\",\"brother_sister\":\"\"}]', '[{\"home_district\":\"\",\"family_residence\":\"\",\"fathers_occupation\":\"\",\"special_circumstances\":\"\"}]', '[{\"general_requirement\":\"\",\"partner_age\":\"\",\"partner_height\":\"\",\"partner_weight\":\"\",\"partner_marital_status\":\"\",\"with_children_acceptables\":\"\",\"partner_country_of_residence\":\"\",\"partner_religion\":\"\",\"partner_caste\":\"\",\"partner_sub_caste\":\"\",\"partner_complexion\":\"\",\"partner_education\":\"\",\"partner_profession\":\"\",\"partner_drinking_habits\":\"\",\"partner_smoking_habits\":\"\",\"partner_diet\":\"\",\"partner_body_type\":\"\",\"partner_personal_value\":\"\",\"manglik\":\"\",\"partner_any_disability\":\"\",\"partner_mother_tongue\":\"\",\"partner_family_value\":\"\",\"prefered_country\":\"\",\"prefered_state\":\"\",\"prefered_status\":\"\"}]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', NULL, '[]', '[]', 0, 1, '[]', 1, '2020-10-28 00:56:30', 0, 0, 0, 0, 'no', '[{\"present_address\":\"no\",\"education_and_career\":\"no\",\"physical_attributes\":\"no\",\"language\":\"no\",\"hobbies_and_interest\":\"no\",\"personal_attitude_and_behavior\":\"no\",\"residency_information\":\"no\",\"spiritual_and_social_background\":\"no\",\"life_style\":\"no\",\"astronomic_information\":\"no\",\"permanent_address\":\"no\",\"family_info\":\"no\",\"additional_personal_details\":\"no\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"premium\"}]', '[]', 0, NULL, NULL, 0),
(75, '30A87A8275', 'approved', 'chikoo', 'jain', 1, 'bipin1990chaurasia@gmail.com', NULL, 1, '8527136560', 'no', '1603821600', '0.00', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"default.jpg\",\"thumb\":\"default_thumb.jpg\"}]', NULL, NULL, NULL, NULL, '', '', '[{\"age\":\"\",\"marital_status\":\"\",\"number_of_children\":\"\",\"area\":\"\",\"on_behalf\":\"1\"}]', '[{\"country\":\"\",\"city\":\"\",\"state\":\"\",\"postal_code\":\"\"}]', '[{\"highest_education\":\"\",\"occupation\":\"\",\"annual_income\":\"\"}]', '[{\"weight\":\"\",\"eye_color\":\"\",\"hair_color\":\"\",\"complexion\":\"\",\"blood_group\":\"\",\"body_type\":\"\",\"body_art\":\"\",\"any_disability\":\"\"}]', '[{\"mother_tongue\":\"\",\"language\":\"\",\"speak\":\"\",\"read\":\"\"}]', '[{\"hobby\":\"\",\"interest\":\"\",\"music\":\"\",\"books\":\"\",\"movie\":\"\",\"tv_show\":\"\",\"sports_show\":\"\",\"fitness_activity\":\"\",\"cuisine\":\"\",\"dress_style\":\"\"}]', '[{\"affection\":\"\",\"humor\":\"\",\"political_view\":\"\",\"religious_service\":\"\"}]', '[{\"birth_country\":\"\",\"residency_country\":\"\",\"citizenship_country\":\"\",\"grow_up_country\":\"\",\"immigration_status\":\"\"}]', '[{\"religion\":\"\",\"caste\":\"\",\"sub_caste\":\"\",\"ethnicity\":\"\",\"u_manglik\":\"\",\"personal_value\":\"\",\"family_value\":\"\",\"community_value\":\"\",\"family_status\":\"\"}]', '[{\"diet\":\"\",\"drink\":\"\",\"smoke\":\"\",\"living_with\":\"\"}]', '[{\"sun_sign\":\"\",\"moon_sign\":\"\",\"time_of_birth\":\"\",\"city_of_birth\":\"\"}]', '[{\"permanent_country\":\"\",\"permanent_city\":\"\",\"permanent_state\":\"\",\"permanent_postal_code\":\"\"}]', '[{\"father\":\"\",\"mother\":\"\",\"brother_sister\":\"\"}]', '[{\"home_district\":\"\",\"family_residence\":\"\",\"fathers_occupation\":\"\",\"special_circumstances\":\"\"}]', '[{\"general_requirement\":\"\",\"partner_age\":\"\",\"partner_height\":\"\",\"partner_weight\":\"\",\"partner_marital_status\":\"\",\"with_children_acceptables\":\"\",\"partner_country_of_residence\":\"\",\"partner_religion\":\"\",\"partner_caste\":\"\",\"partner_sub_caste\":\"\",\"partner_complexion\":\"\",\"partner_education\":\"\",\"partner_profession\":\"\",\"partner_drinking_habits\":\"\",\"partner_smoking_habits\":\"\",\"partner_diet\":\"\",\"partner_body_type\":\"\",\"partner_personal_value\":\"\",\"manglik\":\"\",\"partner_any_disability\":\"\",\"partner_mother_tongue\":\"\",\"partner_family_value\":\"\",\"prefered_country\":\"\",\"prefered_state\":\"\",\"prefered_status\":\"\"}]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', NULL, '[]', '[]', 0, 1, '[]', 1, '2020-10-28 01:50:18', 0, 0, 0, 0, 'no', '[{\"present_address\":\"no\",\"education_and_career\":\"no\",\"physical_attributes\":\"no\",\"language\":\"no\",\"hobbies_and_interest\":\"no\",\"personal_attitude_and_behavior\":\"no\",\"residency_information\":\"no\",\"spiritual_and_social_background\":\"no\",\"life_style\":\"no\",\"astronomic_information\":\"no\",\"permanent_address\":\"no\",\"family_info\":\"no\",\"additional_personal_details\":\"no\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"premium\"}]', '[]', 0, NULL, NULL, 0),
(76, 'A8F0206B76', 'approved', 'chikoolaal', 'jain', 1, 'g@gmail.com', NULL, 1, '8905787441', 'no', '1603908000', '0.00', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '[{\"profile_image\":\"default.jpg\",\"thumb\":\"default_thumb.jpg\"}]', NULL, NULL, NULL, NULL, '', '', '[{\"age\":\"\",\"marital_status\":\"\",\"number_of_children\":\"\",\"area\":\"\",\"on_behalf\":\"1\"}]', '[{\"country\":\"\",\"city\":\"\",\"state\":\"\",\"postal_code\":\"\"}]', '[{\"highest_education\":\"\",\"occupation\":\"\",\"annual_income\":\"\"}]', '[{\"weight\":\"\",\"eye_color\":\"\",\"hair_color\":\"\",\"complexion\":\"\",\"blood_group\":\"\",\"body_type\":\"\",\"body_art\":\"\",\"any_disability\":\"\"}]', '[{\"mother_tongue\":\"\",\"language\":\"\",\"speak\":\"\",\"read\":\"\"}]', '[{\"hobby\":\"\",\"interest\":\"\",\"music\":\"\",\"books\":\"\",\"movie\":\"\",\"tv_show\":\"\",\"sports_show\":\"\",\"fitness_activity\":\"\",\"cuisine\":\"\",\"dress_style\":\"\"}]', '[{\"affection\":\"\",\"humor\":\"\",\"political_view\":\"\",\"religious_service\":\"\"}]', '[{\"birth_country\":\"\",\"residency_country\":\"\",\"citizenship_country\":\"\",\"grow_up_country\":\"\",\"immigration_status\":\"\"}]', '[{\"religion\":\"\",\"caste\":\"\",\"sub_caste\":\"\",\"ethnicity\":\"\",\"u_manglik\":\"\",\"personal_value\":\"\",\"family_value\":\"\",\"community_value\":\"\",\"family_status\":\"\"}]', '[{\"diet\":\"\",\"drink\":\"\",\"smoke\":\"\",\"living_with\":\"\"}]', '[{\"sun_sign\":\"\",\"moon_sign\":\"\",\"time_of_birth\":\"\",\"city_of_birth\":\"\"}]', '[{\"permanent_country\":\"\",\"permanent_city\":\"\",\"permanent_state\":\"\",\"permanent_postal_code\":\"\"}]', '[{\"father\":\"\",\"mother\":\"\",\"brother_sister\":\"\"}]', '[{\"home_district\":\"\",\"family_residence\":\"\",\"fathers_occupation\":\"\",\"special_circumstances\":\"\"}]', '[{\"general_requirement\":\"\",\"partner_age\":\"\",\"partner_height\":\"\",\"partner_weight\":\"\",\"partner_marital_status\":\"\",\"with_children_acceptables\":\"\",\"partner_country_of_residence\":\"\",\"partner_religion\":\"\",\"partner_caste\":\"\",\"partner_sub_caste\":\"\",\"partner_complexion\":\"\",\"partner_education\":\"\",\"partner_profession\":\"\",\"partner_drinking_habits\":\"\",\"partner_smoking_habits\":\"\",\"partner_diet\":\"\",\"partner_body_type\":\"\",\"partner_personal_value\":\"\",\"manglik\":\"\",\"partner_any_disability\":\"\",\"partner_mother_tongue\":\"\",\"partner_family_value\":\"\",\"prefered_country\":\"\",\"prefered_state\":\"\",\"prefered_status\":\"\"}]', '[]', '[]', '[]', '[]', '[]', '[]', '[]', NULL, '[]', '[]', 0, 1, '[]', 1, '2020-10-28 01:51:10', 0, 0, 0, 0, 'no', '[{\"present_address\":\"no\",\"education_and_career\":\"no\",\"physical_attributes\":\"no\",\"language\":\"no\",\"hobbies_and_interest\":\"no\",\"personal_attitude_and_behavior\":\"no\",\"residency_information\":\"no\",\"spiritual_and_social_background\":\"no\",\"life_style\":\"no\",\"astronomic_information\":\"no\",\"permanent_address\":\"no\",\"family_info\":\"no\",\"additional_personal_details\":\"no\",\"partner_expectation\":\"yes\"}]', '[{\"profile_pic_show\":\"all\",\"gallery_show\":\"premium\"}]', '[]', 0, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `message_thread_id` int(11) NOT NULL,
  `message_from` int(11) NOT NULL,
  `message_to` int(11) NOT NULL,
  `message_text` longtext NOT NULL,
  `message_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `message_thread_id`, `message_from`, `message_to`, `message_text`, `message_time`) VALUES
(1, 1, 1, 2, 'Hi', '1513161222'),
(2, 1, 2, 1, 'Hello there :)', '1513161223'),
(5, 1, 1, 2, 'How are u?', '1513252901'),
(28, 1, 1, 2, 'hi', '1513595067'),
(29, 1, 1, 2, 'what', '1513595084'),
(30, 1, 2, 1, 'hi', '1513767513'),
(31, 1, 1, 2, 'oi oioioi', '1514009214'),
(32, 1, 2, 1, ':D what', '1514009222'),
(33, 1, 1, 2, 'nothing', '1514009266'),
(34, 1, 2, 1, 'why nothing', '1514009279'),
(35, 1, 1, 2, 'nothing nothing', '1514009289'),
(39, 1, 1, 2, 'Do you know that I am...', '1520014977'),
(40, 1, 1, 2, 'hello?', '1520230228'),
(41, 2, 1, 3, 'Yo bro!', '1520230242'),
(54, 1, 1, 2, 'hai.....', '1530684829'),
(55, 5, 2, 3, 'dgfsdg', '1530685674'),
(56, 10, 45, 2, 'dsgfdf', '1531128611'),
(57, 11, 44, 5, 'Hi', '1531381625'),
(58, 12, 46, 23, 'Hello....', '1531645577'),
(59, 12, 46, 23, 'Hai....', '1531645607'),
(60, 1, 2, 1, 'Hlw', '1592740912');

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_from` int(11) NOT NULL,
  `message_thread_to` int(11) NOT NULL,
  `message_thread_time` varchar(50) NOT NULL,
  `message_to_seen` varchar(100) DEFAULT NULL,
  `message_from_seen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_thread`
--

INSERT INTO `message_thread` (`message_thread_id`, `message_thread_from`, `message_thread_to`, `message_thread_time`, `message_to_seen`, `message_from_seen`) VALUES
(1, 1, 2, '1592740914', 'yes', ''),
(2, 1, 3, '1520230242', '', 'yes'),
(5, 2, 3, '1530685675', 'yes', 'yes'),
(10, 45, 2, '1531128611', '', 'yes'),
(11, 44, 5, '1531381626', '', 'yes'),
(12, 46, 23, '1531645607', '', 'yes'),
(13, 55, 5, '1534573230', NULL, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `occupation`
--

CREATE TABLE `occupation` (
  `occupation_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `occupation`
--

INSERT INTO `occupation` (`occupation_id`, `name`) VALUES
(1, 'Teacher'),
(2, 'Programmer'),
(3, 'Doctor'),
(4, 'Engineer');

-- --------------------------------------------------------

--
-- Table structure for table `on_behalf`
--

CREATE TABLE `on_behalf` (
  `on_behalf_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `on_behalf`
--

INSERT INTO `on_behalf` (`on_behalf_id`, `name`) VALUES
(1, 'Self'),
(2, 'Daughter/Son'),
(3, 'Sister'),
(4, 'Brother'),
(5, 'Friend');

-- --------------------------------------------------------

--
-- Table structure for table `package_payment`
--

CREATE TABLE `package_payment` (
  `package_payment_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `payment_type` varchar(30) NOT NULL,
  `payment_status` varchar(30) NOT NULL,
  `payment_details` longtext NOT NULL,
  `amount` int(11) NOT NULL,
  `purchase_datetime` int(11) NOT NULL,
  `payment_code` varchar(50) NOT NULL,
  `custom_payment_method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_payment_method_transaction_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `custom_payment_method_comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `custom_payment_method_bill_copy` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `payment_timestamp` int(11) NOT NULL,
  `expire` varchar(20) NOT NULL,
  `expire_timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package_payment`
--

INSERT INTO `package_payment` (`package_payment_id`, `plan_id`, `member_id`, `payment_type`, `payment_status`, `payment_details`, `amount`, `purchase_datetime`, `payment_code`, `custom_payment_method_name`, `custom_payment_method_transaction_id`, `custom_payment_method_comment`, `custom_payment_method_bill_copy`, `payment_timestamp`, `expire`, `expire_timestamp`) VALUES
(3, 5, 2, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_BisexufY1CgrrA\",\"object\":\"customer\",\"account_balance\":0,\"created\":1510037317,\"currency\":null,\"default_source\":\"card_1BLQsuKmGdRDZlHS0A6zjiUQ\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"trevor@gmail.com\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1BLQt1KmGdRDZlHSi8R7pzFI\",\"object\":\"charge\",\"amount\":4500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1BLQt1KmGdRDZlHS9FATXAMS\",\"captured\":true,\"created\":1510037319,\"currency\":\"usd\",\"customer\":\"cus_BisexufY1CgrrA\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 45, 1510037316, '2017113', NULL, NULL, NULL, NULL, 1510037317, 'no', 0),
(5, 2, 2, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_BiuNm9NsPu47ob\",\"object\":\"customer\",\"account_balance\":0,\"created\":1510043744,\"currency\":null,\"default_source\":\"card_1BLSYYKmGdRDZlHShyzK1gJs\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"trevor@gmail.com\",\"livemode\":false,\"metadata\":{},\"shipping\":null,\"sources\":{},\"subscriptions\":{}},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1BLSYgKmGdRDZlHSbt3H8P3W\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"balance_transaction\":\"txn_1BLSYgKmGdRDZlHSNXcYCgRI\",\"captured\":true,\"created\":1510043746,\"currency\":\"usd\",\"customer\":\"cus_BiuNm9NsPu47ob\",\"description\":null,\"destination\":null,\"dispute\":null,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"receipt_email\":null,\"receipt_number\":null,\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"status\":\"succeeded\",\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1510043746, '2017115', NULL, NULL, NULL, NULL, 1510043746, 'no', 0),
(7, 2, 1, 'Paypal', 'due', 'none', 15, 1581322458, '', NULL, NULL, NULL, NULL, 0, '', 0),
(8, 2, 1, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GhxPsFEJTkLwC9\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1581322778,\"currency\":null,\"default_source\":\"card_1GAXUNKmGdRDZlHSDqv0c8w8\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"user@gmail.com\",\"invoice_prefix\":\"37E92C33\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1GAXUUKmGdRDZlHSOTFCQBza\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1GAXUVKmGdRDZlHSCzaKZEhO\",\"billing_details\":{},\"captured\":true,\"created\":1581322778,\"currency\":\"usd\",\"customer\":\"cus_GhxPsFEJTkLwC9\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1GAXUNKmGdRDZlHSDqv0c8w8\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1GAXUUKmGdRDZlHSOTFCQBza\\/rcpt_GhxPcBrGNNSww3Tw7hX27At5IVxkqVK\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1581322814, '2020028', NULL, NULL, NULL, NULL, 1581322814, 'no', 0),
(9, 3, 1, 'Instamojo', 'paid', '{\"id\":\"5eca1c18fd8b49cc96d027ae3d90ee74\",\"phone\":\"+914224324648\",\"email\":\"user@gmail.com\",\"buyer_name\":\"Slade\",\"amount\":\"25.00\",\"purpose\":\"Package Payment\",\"expires_at\":null,\"status\":\"Completed\",\"send_sms\":false,\"send_email\":true,\"sms_status\":null,\"email_status\":\"Sent\",\"shorturl\":null,\"longurl\":\"https:\\/\\/test.instamojo.com\\/@ravi_kavya01\\/5eca1c18fd8b49cc96d027ae3d90ee74\",\"redirect_url\":\"http:\\/\\/localhost\\/matrimonial\\/v2.1\\/home\\/instamojo_success\",\"webhook\":null,\"payments\":[{\"payment_id\":\"MOJO0210X05A57411783\",\"status\":\"Credit\",\"currency\":\"INR\",\"amount\":\"25.00\",\"buyer_name\":\"Slade\",\"buyer_phone\":\"+914224324648\",\"buyer_email\":\"user@gmail.com\",\"shipping_address\":null,\"shipping_city\":null,\"shipping_state\":null,\"shipping_zip\":null,\"shipping_country\":null,\"quantity\":1,\"unit_price\":\"25.00\",\"fees\":\"0.48\",\"variants\":[],\"custom_fields\":[],\"affiliate_commission\":\"0\",\"payment_request\":\"https:\\/\\/test.instamojo.com\\/api\\/1.1\\/payment-requests\\/5eca1c18fd8b49cc96d027ae3d90ee74\\/\",\"instrument_type\":\"CARD\",\"billing_instrument\":\"Corporate Card\",\"tax_invoice_id\":\"\",\"failure\":null,\"payout\":null,\"created_at\":\"2020-02-10T08:21:32.799881Z\"}],\"allow_repeated_payments\":false,\"customer_id\":null,\"created_at\":\"2020-02-10T08:21:19.759019Z\",\"modified_at\":\"2020-02-10T08:21:42.995068Z\"}', 25, 1581322943, '2020029', NULL, NULL, NULL, NULL, 1581322943, 'no', 0),
(10, 3, 1, 'custom_payment_method_1', 'due', 'none', 25, 1583912657, '', 'Wire', 'Wire- 12345', 'Payment by Wire', 'cpm_1_bill_copy_1583912657.pdf', 0, '', 0),
(11, 2, 1, 'custom_payment_method_1', 'paid', 'none', 15, 1583913002, '', 'Wire', 'Wire 1234', 'Information check', 'cpm_1_bill_copy_1583913002.pdf', 1583913002, 'no', 0),
(13, 2, 1, 'custom_payment_method_1', 'due', 'none', 15, 1583913357, '', 'Wire', '12034879', 'Custom Payment comment', 'cpm_1_bill_copy_1583913357.png', 1583913357, 'no', 0),
(14, 2, 1, 'custom_payment_method_1', 'due', 'none', 15, 1583913399, '', 'Wire', 'ID73692p', 'Custom Payment comment 1', 'cpm_1_bill_copy_1583913399.jpg', 1583913399, 'no', 0),
(15, 2, 1, 'Stripe', 'paid', 'User Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"cus_GtBpP4f8jW0F3k\",\"object\":\"customer\",\"account_balance\":0,\"address\":null,\"balance\":0,\"created\":1583913476,\"currency\":null,\"default_source\":\"card_1GLPRpKmGdRDZlHSu6lnRuqm\",\"delinquent\":false,\"description\":null,\"discount\":null,\"email\":\"user@gmail.com\",\"invoice_prefix\":\"72C00A9D\",\"invoice_settings\":{},\"livemode\":false,\"metadata\":{},\"name\":null,\"next_invoice_sequence\":1,\"phone\":null,\"preferred_locales\":[],\"shipping\":null,\"sources\":{},\"subscriptions\":{},\"tax_exempt\":\"none\",\"tax_ids\":{},\"tax_info\":null,\"tax_info_verification\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}\n \n Charge Info: \n{\"\\u0000*\\u0000_opts\":{\"headers\":[],\"apiKey\":\"sk_test_NYIpPjs6gbmuogdwUuJ8She4\"},\"\\u0000*\\u0000_values\":{\"id\":\"ch_1GLPRxKmGdRDZlHS1ralS1YV\",\"object\":\"charge\",\"amount\":1500,\"amount_refunded\":0,\"application\":null,\"application_fee\":null,\"application_fee_amount\":null,\"balance_transaction\":\"txn_1GLPRxKmGdRDZlHSL0mKDhy4\",\"billing_details\":{},\"captured\":true,\"created\":1583913477,\"currency\":\"usd\",\"customer\":\"cus_GtBpP4f8jW0F3k\",\"description\":null,\"destination\":null,\"dispute\":null,\"disputed\":false,\"failure_code\":null,\"failure_message\":null,\"fraud_details\":[],\"invoice\":null,\"livemode\":false,\"metadata\":{},\"on_behalf_of\":null,\"order\":null,\"outcome\":{},\"paid\":true,\"payment_intent\":null,\"payment_method\":\"card_1GLPRpKmGdRDZlHSu6lnRuqm\",\"payment_method_details\":{},\"receipt_email\":null,\"receipt_number\":null,\"receipt_url\":\"https:\\/\\/pay.stripe.com\\/receipts\\/acct_16RWzfKmGdRDZlHS\\/ch_1GLPRxKmGdRDZlHS1ralS1YV\\/rcpt_GtBp3uMueBqDI2fhZG24RAshW63QJt5\",\"refunded\":false,\"refunds\":{},\"review\":null,\"shipping\":null,\"source\":{},\"source_transfer\":null,\"statement_descriptor\":null,\"statement_descriptor_suffix\":null,\"status\":\"succeeded\",\"transfer_data\":null,\"transfer_group\":null},\"\\u0000*\\u0000_unsavedValues\":{},\"\\u0000*\\u0000_transientValues\":{},\"\\u0000*\\u0000_retrieveOptions\":[]}', 15, 1583913553, '20200315', NULL, NULL, NULL, NULL, 1583913553, 'no', 0),
(16, 2, 1, 'custom_payment_method_2', 'due', 'none', 15, 1583914401, '', 'Bank Transfer', 'ac73528667', 'Custom Payment comment 2', 'cpm_2_bill_copy_1583914401.png', 1583914401, 'no', 0),
(17, 3, 1, 'custom_payment_method_2', 'due', 'none', 25, 1583914495, '', 'Bank Transfer', 'GFk92639RR', 'Custom Payment comment 3', 'cpm_2_bill_copy_1583914495.pdf', 1583914495, 'no', 0),
(18, 2, 1, 'custom_payment_method_3', 'due', 'none', 15, 1583915926, '', 'Bank Transfer 2', 'bd864628', 'Custom Payment comment 4', 'cpm_3_bill_copy_1583915926.png', 1583915926, 'no', 0),
(19, 4, 1, 'custom_payment_method_4', 'paid', 'none', 35, 1583916016, '', 'Mypay', 'mypay-3563897', 'Custom Payment comment 5', 'cpm_4_bill_copy_1583916016.jpg', 1583916016, 'no', 0);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `codename` varchar(30) DEFAULT NULL,
  `parent_status` varchar(30) DEFAULT NULL,
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`permission_id`, `name`, `codename`, `parent_status`, `description`) VALUES
(1, NULL, 'members', 'parent', NULL),
(2, NULL, 'premium_plans', 'parent', NULL),
(3, NULL, 'stories', 'parent', NULL),
(4, NULL, 'earnings', 'parent', NULL),
(5, NULL, 'contact_messages', 'parent', NULL),
(6, NULL, 'general_settings', 'parent', NULL),
(7, NULL, 'frontend_settings', 'parent', NULL),
(8, NULL, 'configuration', 'parent', NULL),
(9, NULL, 'send_sms', 'parent', NULL),
(10, NULL, 'language', 'parent', NULL),
(11, NULL, 'manage_admin', 'parent', NULL),
(12, NULL, 'seo_settings', 'parent', NULL),
(13, NULL, 'online_knowledge_base', 'parent', NULL),
(14, NULL, 'activasion', 'parent', NULL),
(15, NULL, 'free_members', '1', NULL),
(16, NULL, 'premium_members', '1', NULL),
(17, NULL, 'add_members', '1', NULL),
(18, NULL, 'choose_theme_color', '7', NULL),
(19, NULL, 'frontend_appearances', '7', NULL),
(20, NULL, 'member_profile', '8', NULL),
(21, NULL, 'social_media_comments', '8', NULL),
(22, NULL, 'payments', '8', NULL),
(23, NULL, 'email_setup', '8', NULL),
(24, NULL, 'captcha_settings', '8', NULL),
(25, NULL, 'sms_settings', '8', NULL),
(26, NULL, 'faq', '8', NULL),
(27, NULL, 'header', '19', NULL),
(28, NULL, 'pages', '19', NULL),
(29, NULL, 'footer', '19', NULL),
(30, NULL, 'religion', '20', NULL),
(31, NULL, 'caste', '20', NULL),
(32, NULL, 'sub_caste', '20', NULL),
(33, NULL, 'language', '20', NULL),
(34, NULL, 'country', '20', NULL),
(35, NULL, 'state', '20', NULL),
(36, NULL, 'city', '20', NULL),
(37, NULL, 'twilio', '25', NULL),
(38, NULL, 'msg91', '25', NULL),
(39, NULL, 'staffs_panel', 'parent', NULL),
(40, NULL, 'all_staffs', '39', NULL),
(41, NULL, 'manage_roles', '39', NULL),
(42, NULL, 'profile_sections', '8', NULL),
(43, NULL, 'deleted_members', '1', NULL),
(44, '', 'google_analytics_settings', '8', NULL),
(45, NULL, 'currency_settings', '8', NULL),
(46, NULL, 'bulk_member_add', '1', NULL),
(47, NULL, 'facebook_chat_settings', '8', NULL),
(48, NULL, 'member_profile_pic_approval', '1', NULL),
(49, NULL, 'social_media_login_settings', '8', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `plan_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `amount` decimal(10,0) NOT NULL,
  `express_interest` int(11) NOT NULL,
  `direct_messages` int(11) NOT NULL,
  `photo_gallery` int(11) NOT NULL,
  `image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`plan_id`, `name`, `amount`, `express_interest`, `direct_messages`, `photo_gallery`, `image`) VALUES
(1, 'Default', '0', 5, 6, 3, '[{\"image\":\"plan_1.png\",\"thumb\":\"plan_1_thumb.png\"}]'),
(2, 'Bronze', '15', 10, 10, 5, '[{\"image\":\"plan_2.png\",\"thumb\":\"plan_2_thumb.png\"}]'),
(3, 'Silver', '25', 15, 10, 5, '[{\"image\":\"plan_3.png\",\"thumb\":\"plan_3_thumb.png\"}]'),
(4, 'Gold', '35', 20, 15, 5, '[{\"image\":\"plan_4.png\",\"thumb\":\"plan_4_thumb.png\"}]'),
(5, 'Platinum', '45', 25, 20, 7, '[{\"image\":\"plan_5.png\",\"thumb\":\"plan_5_thumb.png\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `religion`
--

CREATE TABLE `religion` (
  `religion_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `religion`
--

INSERT INTO `religion` (`religion_id`, `name`) VALUES
(2, 'Judaism'),
(3, 'Cristianity'),
(4, 'Hinduism'),
(5, 'Buddhism'),
(6, 'Atheism'),
(7, 'Islam'),
(8, 'Sikhism'),
(9, 'Jain');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `permission` longtext,
  `description` longtext
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`, `permission`, `description`) VALUES
(1, 'Master', ' ', ' '),
(12, 'Accountant', '[\"1\",\"4\",\"5\",\"6\",\"8\",\"9\"]', 'Description for Accountant');

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE `score` (
  `id` int(5) NOT NULL,
  `member_id` int(5) NOT NULL,
  `score` int(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`id`, `member_id`, `score`, `created_at`) VALUES
(1, 71, 0, '2020-10-27 13:01:41'),
(2, 71, 7, '2020-10-27 13:03:04'),
(3, 74, 1, '2020-10-28 00:28:59'),
(4, 76, 5, '2020-10-28 01:22:51'),
(5, 76, 3, '2020-10-28 01:26:17'),
(6, 76, 3, '2020-10-28 01:26:17'),
(7, 76, 3, '2020-10-28 01:26:17'),
(8, 76, 3, '2020-10-28 01:26:17'),
(9, 76, 3, '2020-10-28 01:26:17'),
(10, 76, 3, '2020-10-28 01:26:17'),
(11, 76, 3, '2020-10-28 01:26:17'),
(12, 76, 3, '2020-10-28 01:26:17');

-- --------------------------------------------------------

--
-- Table structure for table `site_language`
--

CREATE TABLE `site_language` (
  `word_id` int(11) NOT NULL,
  `word` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci,
  `Bangla` longtext COLLATE utf8_unicode_ci,
  `Spanish` longtext COLLATE utf8_unicode_ci,
  `Arabic` longtext COLLATE utf8_unicode_ci,
  `French` longtext COLLATE utf8_unicode_ci,
  `Chinese` longtext COLLATE utf8_unicode_ci,
  `lang_7` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_language`
--

INSERT INTO `site_language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`, `lang_7`) VALUES
(1, 'home', 'Home', 'বাড়ি', 'Casa', NULL, NULL, NULL, 'होम'),
(2, 'active_members', 'Active Members', 'সক্রিয় সদস্যগণ', 'Miembros activos', NULL, NULL, NULL, 'सक्रिय सदस्य'),
(3, 'all_members', 'All Members', 'সকল সদস্য', 'Todos los miembros', NULL, NULL, NULL, 'सभी सदस्य'),
(4, 'premium_members', 'Premium Members', 'প্রিমিয়াম সদস্য', 'Miembros premium', NULL, NULL, NULL, 'प्रीमियम सदस्य'),
(5, 'free_members', 'Free Members', 'ফ্রি সদস্য', 'Miembros gratis', NULL, NULL, NULL, 'नि: शुल्क सदस्य'),
(6, 'premium_plans', 'Premium Plans', 'প্রিমিয়াম পরিকল্পনা', 'Planes de primas', NULL, NULL, NULL, 'प्रीमियम योजनाएं'),
(7, 'happy_stories', 'Happy Stories', 'শুভ গল্প', 'Historias felices', NULL, NULL, NULL, 'हैप्पी कहानियां'),
(8, 'contact_us', 'Contact Us', 'আমাদের সাথে যোগাযোগ করুন', 'Contáctenos', NULL, NULL, NULL, 'हमसे संपर्क करें'),
(9, 'i\'m_looking_for_a', 'I\'m Looking For A', 'আমি খোঁজ করছি একটি', 'Estoy buscando', NULL, NULL, NULL, 'मैं तलाश कर रहा हूं एक'),
(10, 'aged_from', 'Aged From', 'থেকে আগাছা', 'Envejecido desde', NULL, NULL, NULL, 'से वृद्ध'),
(11, 'to', 'To', 'থেকে', 'A', NULL, NULL, NULL, 'सेवा मेरे'),
(12, 'religion', 'Religion', 'ধর্ম', 'Religión', NULL, NULL, NULL, 'धर्म'),
(13, 'caste_/_sect', 'Caste / Sect', 'জাতি / অংশ', 'Casta / Secta', NULL, NULL, NULL, 'जाति / संप्रदाय'),
(14, 'choose_a_religion_first', 'Choose A Religion First', 'একটি ধর্ম প্রথম চয়ন করুন', 'Elige una religión primero', NULL, NULL, NULL, 'पहले एक धर्म चुनें'),
(15, 'sub_caste', 'Sub Caste', 'উপ - জাতি', 'Sub casta', NULL, NULL, NULL, 'उप जाति'),
(16, 'choose_a_caste_first', 'Choose A Caste First', 'একটি জাতি প্রথম চয়ন করুন', 'Elige una casta primero', NULL, NULL, NULL, 'पहले जाति चुनें'),
(17, 'mother_tongue', 'Mother Tongue', 'মাতৃভাষা', 'Lengua materna', NULL, NULL, NULL, 'मातृ भाषा'),
(18, 'min_height_(Feet)', 'Min Height (Feet)', 'ন্যূনতম উচ্চতা (ফুট)', 'Altura mínima (pies)', NULL, NULL, NULL, 'न्यूनतम ऊंचाई (फीट)'),
(19, 'max_height_(Feet)', 'Max Height (Feet)', 'সর্বোচ্চ উচ্চতা (ফুট)', 'Altura máxima (pies)', NULL, NULL, NULL, 'अधिकतम ऊंचाई (फीट)'),
(20, 'search_now', 'Search Now', 'এখনই খুঁজুন', 'Buscar ahora', NULL, NULL, NULL, 'अभी खोजो'),
(21, 'follower(s)', 'Follower(s)', 'অনুসরণ (কারীর)', 'Seguidor (es)', NULL, NULL, NULL, 'अनुयायी (रों)'),
(22, 'following', 'Following', 'অনুসরণ', 'Siguiendo', NULL, NULL, NULL, 'निम्नलिखित'),
(23, 'full_profile', 'Full Profile', 'সম্পূর্ণ প্রোফাইল', 'Perfil completo', NULL, NULL, NULL, 'पूर्ण प्रोफाइल'),
(24, 'please_login', 'Please Login', 'দয়া করে লগইন করুন', 'Por favor Iniciar sesión', NULL, NULL, NULL, 'कृपया लॉगिन करें'),
(25, 'please_login_to_view_full_profile_of_this_member', 'Please Login To View Full Profile Of This Member', 'এই সদস্য সম্পূর্ণ প্রোফাইল দেখুন লগ ইন করুন', 'Por favor, inicie sesión para ver el perfil completo de este miembro', NULL, NULL, NULL, 'कृपया इस सदस्य की पूरी प्रोफ़ाइल देखने के लिए लॉग इन करें'),
(26, 'close', 'Close', 'ঘনিষ্ঠ', 'Cerca', NULL, NULL, NULL, 'बंद करे'),
(27, 'login', 'Login', 'লগইন', 'Iniciar sesión', NULL, NULL, NULL, 'लॉग इन करें'),
(28, 'register_now', 'Register Now', 'এখন নিবন্ধন করুন', 'Regístrate ahora', NULL, NULL, NULL, 'अभी पंजीकरण करें'),
(29, 'express_interests:', 'Express Interests:', 'এক্সপ্রেস রুচি:', 'Intereses expresos:', NULL, NULL, NULL, 'एक्सप्रेस रूचि:'),
(30, 'times', 'Times', 'টাইমস', 'Veces', NULL, NULL, NULL, 'टाइम्स'),
(31, 'direct_messages', 'Direct Messages', 'সরাসরি বার্তা', 'Mensajes directos', NULL, NULL, NULL, 'प्रत्यक्ष संदेश'),
(32, 'photo_gallery', 'Photo Gallery', 'ফটো গ্যালারি', 'Galería de fotos', NULL, NULL, NULL, 'चित्र प्रदर्शनी'),
(33, 'images', 'Images', 'চিত্র', 'Imágenes', NULL, NULL, NULL, 'इमेजिस'),
(34, 'get_this_package', 'Get This Package', 'এই প্যাকেজ পান', 'Obtener este paquete', NULL, NULL, NULL, 'यह पैकेज प्राप्त करें'),
(35, 'contact_information ', 'Contact Information ', 'যোগাযোগের তথ্য ', 'Información del contacto ', NULL, NULL, NULL, 'संपर्क जानकारी '),
(36, 'facebook', 'Facebook', 'ফেসবুক', 'Facebook', NULL, NULL, NULL, 'फेसबुक'),
(37, 'google-plus', 'Google-plus', 'গুগল প্লাস', 'Google Mas', NULL, NULL, NULL, 'गूगल प्लस'),
(38, 'twitter', 'Twitter', 'টুইটার', 'Gorjeo', NULL, NULL, NULL, 'ट्विटर'),
(39, 'skype', 'Skype', 'স্কাইপ', 'Skype', NULL, NULL, NULL, 'स्काइप'),
(40, 'pinterest', 'Pinterest', 'পিন্টারেস্ট', 'Pinterest', NULL, NULL, NULL, 'Pinterest'),
(41, 'youtube', 'Youtube', 'ইউটিউব', 'Youtube', NULL, NULL, NULL, 'यूट्यूब'),
(42, 'none', 'None', 'না', 'Ninguna', NULL, NULL, NULL, 'कोई नहीं'),
(43, 'main_menu', 'Main Menu', 'প্রধান সূচি', 'Menú principal', NULL, NULL, NULL, 'मुख्य मेनू'),
(44, 'quick_search', 'Quick Search', 'দ্রুত সন্ধান', 'Búsqueda rápida', NULL, NULL, NULL, 'त्वरित खोज'),
(45, 'useful_links', 'Useful Links', 'উপকারী সংজুক', 'Enlaces útiles', NULL, NULL, NULL, 'उपयोगी कड़ियाँ'),
(46, 'terms_&_conditions', 'Terms & Conditions', 'শর্তাবলী', 'Términos y condiciones', NULL, NULL, NULL, 'नियम एवं शर्तें'),
(47, 'privacy_policy', 'Privacy Policy', 'গোপনীয়তা নীতি', 'Política de privacidad', NULL, NULL, NULL, 'गोपनीयता नीति'),
(48, 'copyright', 'Copyright', 'কপিরাইট', 'Derechos de autor', NULL, NULL, NULL, 'कॉपीराइट'),
(49, 'all_rights_reserved', 'All Rights Reserved', 'সর্বস্বত্ব সংরক্ষিত', 'Todos los derechos reservados', NULL, NULL, NULL, 'सर्वाधिकार सुरक्षित'),
(50, 'open', 'Open', 'খোলা', 'Abierto', NULL, NULL, NULL, 'खुला'),
(51, 'title', 'Title', 'খেতাব', 'Título', NULL, NULL, NULL, 'शीर्षक'),
(52, 'please_wait_...', 'Please Wait ...', 'অনুগ্রহপূর্বক অপেক্ষা করুন ...', 'Por favor espera ...', NULL, NULL, NULL, 'कृपया प्रतीक्षा करें ...'),
(53, 'please_log_in_to_accept_this_request', 'Please Log In To Accept This Request', 'এই অনুরোধটি স্বীকার করতে লগ ইন করুন', 'Inicie sesión para aceptar esta solicitud', NULL, NULL, NULL, 'कृपया इस अनुरोध को स्वीकार करने के लिए लॉग इन करें'),
(54, 'are_you_sure_that_you_want_to_accept_this_request', 'Are You Sure That You Want To Accept This Request', 'আপনি এই অনুরোধটি স্বীকার করতে চান যে আপনি কি নিশ্চিত', '¿Estás seguro de que quieres aceptar esta solicitud?', NULL, NULL, NULL, 'क्या आप निश्चित हैं कि आप इस अनुरोध को स्वीकार करना चाहते हैं'),
(55, 'processing', 'Processing', 'প্রসেসিং', 'Tratamiento', NULL, NULL, NULL, 'प्रसंस्करण'),
(56, 'you_have_accepted_the_interest', 'You Have Accepted The Interest', 'আপনি সুদ গ্রহণ করেছেন', 'Usted ha aceptado el interés', NULL, NULL, NULL, 'आपने ब्याज स्वीकार कर लिया है'),
(57, 'you_have_accepted_the_request', 'You Have Accepted The Request', 'আপনি অনুরোধ গ্রহণ করেছেন', 'Usted ha aceptado la solicitud', NULL, NULL, NULL, 'आपने अनुरोध स्वीकार कर लिया है'),
(58, 'please_log_in', 'Please Log In', 'দয়া করে লগইন করুন', 'Por favor Iniciar sesión', NULL, NULL, NULL, 'कृपया लॉगिन करें'),
(59, 'please_log_in_to_reject_this_request', 'Please Log In To Reject This Request', 'এই অনুরোধ প্রত্যাখ্যান করতে লগ ইন করুন', 'Inicie sesión para rechazar esta solicitud', NULL, NULL, NULL, 'कृपया इस अनुरोध को अस्वीकार करने के लिए लॉग इन करें'),
(60, 'log_in', 'Log In', 'লগ ইন করুন', 'Iniciar sesión', NULL, NULL, NULL, 'लॉग इन करें'),
(61, 'confirm_reject_request', 'Confirm Reject Request', 'প্রত্যাখ্যান অনুরোধ নিশ্চিত করুন', 'Confirmar solicitud de rechazo', NULL, NULL, NULL, 'अनुरोध अस्वीकार की पुष्टि करें'),
(62, 'are_you_sure_that_you_want_to_reject_this_request?', 'Are You Sure That You Want To Reject This Request?', 'আপনি এই অনুরোধ প্রত্যাখ্যান করতে চান যে আপনি কি নিশ্চিত?', '¿Estás seguro de que quieres rechazar esta solicitud?', NULL, NULL, NULL, 'क्या आप वाकई इस अनुरोध को अस्वीकार करना चाहते हैं?'),
(63, 'confirm', 'Confirm', 'নিশ্চিত করা', 'Confirmar', NULL, NULL, NULL, 'की पुष्टि करें'),
(64, 'you_have_rejected_the_interest', 'You Have Rejected The Interest', 'আপনি সুদ প্রত্যাখ্যান করেছেন', 'Has rechazado el interés', NULL, NULL, NULL, 'आपने ब्याज को अस्वीकार कर दिया है'),
(65, 'you_have_rejected_this_request!', 'You Have Rejected This Request!', 'আপনি এই অনুরোধ বাতিল করেছেন!', '¡Has rechazado esta solicitud!', NULL, NULL, NULL, 'आपने इस अनुरोध को अस्वीकार कर दिया है!'),
(66, 'register', 'Register', 'নিবন্ধন', 'Registro', NULL, NULL, NULL, 'रजिस्टर'),
(67, 'advanced_search', 'Advanced Search', 'উন্নত অনুসন্ধান', 'Búsqueda Avanzada', NULL, NULL, NULL, 'उन्नत खोज'),
(68, 'looking_for', 'Looking For', 'খুঁজছি', 'Buscando', NULL, NULL, NULL, 'के लिए खोज रहे हैं'),
(69, 'bride', 'Bride', 'নববধূ', 'Novia', NULL, NULL, NULL, 'दुल्हन'),
(70, 'groom', 'Groom', 'বর', 'Novio', NULL, NULL, NULL, 'दूल्हा'),
(71, 'age_from', 'Age From', 'থেকে বয়স', 'Edad desde', NULL, NULL, NULL, 'से आयु'),
(72, 'member_id', 'Member Id', 'সদস্য আইডি', 'Identificación de miembro', NULL, NULL, NULL, 'सदस्य आईडी'),
(73, 'marital_status', 'Marital Status', 'বৈবাহিক অবস্থা', 'Estado civil', NULL, NULL, NULL, 'वैवाहिक स्थिति'),
(74, 'profession', 'Profession', 'পেশা', 'Profesión', NULL, NULL, NULL, 'व्यवसाय'),
(75, 'country', 'Country', 'দেশ', 'País', NULL, NULL, NULL, 'देश'),
(76, 'state', 'State', 'রাষ্ট্র', 'Estado', NULL, NULL, NULL, 'राज्य'),
(77, 'choose_a_country_first', 'Choose A Country First', 'একটি দেশ প্রথম নির্বাচন করুন', 'Elige un país primero', NULL, NULL, NULL, 'पहले एक देश चुनें'),
(78, 'city', 'City', 'শহর', 'Ciudad', NULL, NULL, NULL, 'शहर'),
(79, 'choose_a_state_first', 'Choose A State First', 'একটি রাজ্য প্রথম নির্বাচন করুন', 'Elija A State First', NULL, NULL, NULL, 'पहले एक राज्य चुनें'),
(80, 'member_type', 'Member Type', 'সদস্য প্রকার', 'Tipo de miembro', NULL, NULL, NULL, 'सदस्य का प्रकार'),
(81, 'search', 'Search', 'অনুসন্ধান', 'Buscar', NULL, NULL, NULL, 'खोज'),
(82, 'choose_one', 'Choose One', 'একটি নির্বাচন করুন', 'Elige uno', NULL, NULL, NULL, 'एक चुनो'),
(83, 'premium', 'Premium', 'প্রিমিয়াম', 'Prima', NULL, NULL, NULL, 'प्रीमियम'),
(84, 'Member ID', 'Member ID', 'সদস্য আইডি', 'Identificación de miembro', NULL, NULL, NULL, 'सदस्य आईडी'),
(85, 'age', 'Age', 'বয়স', 'Años', NULL, NULL, NULL, 'आयु'),
(86, 'height', 'Height', 'উচ্চতা', 'Altura', NULL, NULL, NULL, 'ऊंचाई'),
(87, 'feet', 'Feet', 'ফুট', 'Pies', NULL, NULL, NULL, 'पैर का पंजा'),
(88, 'location', 'Location', 'অবস্থান', 'Ubicación', NULL, NULL, NULL, 'स्थान'),
(89, 'express_interest', 'Express Interest', 'এক্সপ্রেস আগ্রহ', 'Expresa interes', NULL, NULL, NULL, 'एक्सप्रेस ब्याज'),
(90, 'shortlist', 'Shortlist', 'বাছাই তালিকা', 'Lista corta', NULL, NULL, NULL, 'शॉर्टलिस्ट'),
(91, 'follow', 'Follow', 'অনুসরণ করা', 'Seguir', NULL, NULL, NULL, 'का पालन करें'),
(92, 'ignore', 'Ignore', 'উপেক্ষা করা', 'Ignorar', NULL, NULL, NULL, 'नज़रअंदाज़ करना'),
(93, 'please_log_in_to_view_full_profile_of_this_member', 'Please Log In To View Full Profile Of This Member', 'এই সদস্য সম্পূর্ণ প্রোফাইল দেখুন লগ ইন করুন', 'Inicie sesión para ver el perfil completo de este miembro', NULL, NULL, NULL, 'कृपया इस सदस्य की पूरी प्रोफ़ाइल देखने के लिए लॉग इन करें'),
(94, 'please_log_in_to_express_interest_on_this_member', 'Please Log In To Express Interest On This Member', 'এই সদস্য উপর আগ্রহ প্রকাশ করতে লগ ইন করুন', 'Inicia sesión para expresar interés en este miembro', NULL, NULL, NULL, 'कृपया इस सदस्य पर ब्याज व्यक्त करने के लिए लॉग इन करें'),
(95, 'buy_premium_packages', 'Buy Premium Packages', 'প্রিমিয়াম প্যাকেজ কিনুন', 'Compre paquetes Premium', NULL, NULL, NULL, 'प्रीमियम पैकेज खरीदें'),
(96, 'please_buy_packages_from_the_premium_plans.', 'Please Buy Packages From The Premium Plans.', 'প্রিমিয়াম প্ল্যানগুলি থেকে প্যাকেজগুলি কিনুন', 'Por favor, compre paquetes de los planes premium.', NULL, NULL, NULL, 'कृपया प्रीमियम योजनाओं से पैकेज खरीदें।'),
(97, 'confirm_express_interest', 'Confirm Express Interest', 'এক্সপ্রেস ব্যয়ের নিশ্চিত করুন', 'Confirmar interés expreso', NULL, NULL, NULL, 'एक्सप्रेस ब्याज की पुष्टि करें'),
(98, 'remaining_express_interest(s): ', 'Remaining Express Interest(s): ', 'অবশিষ্ট এক্সপ্রেস ব্যস্ত (গুলি): ', 'Interés (es) restante (s): ', NULL, NULL, NULL, 'शेष एक्सप्रेस ब्याज (ओं): '),
(99, 'expressing_an_interest_will_cost_1_from_your_remaining_interests', 'Expressing An Interest Will Cost 1 From Your Remaining Interests', 'আপনার আগ্রহের আগ্রহ থেকে একটি সুদ প্রকাশ করা হবে 1', 'Expresar un interés costará 1 de tus intereses restantes', NULL, NULL, NULL, 'एक ब्याज व्यक्त करना आपके शेष ब्याज से 1 खर्च करेगा'),
(100, 'interest_expressed', 'Interest Expressed', 'আগ্রহ প্রকাশ করেছে', 'Interés expresado', NULL, NULL, NULL, 'ब्याज व्यक्त किया गया'),
(101, 'you_have_expressed_an_interest_on_this_member!', 'You Have Expressed An Interest On This Member!', 'আপনি এই সদস্যের উপর একটি সুদ প্রকাশ করেছেন!', '¡Has expresado interés en este miembro!', NULL, NULL, NULL, 'आपने इस सदस्य पर एक ब्याज व्यक्त किया है!'),
(102, 'please_log_in_to_shortlist_this_member', 'Please Log In To Shortlist This Member', 'এই সদস্যটি তালিকাভুক্ত করতে দয়া করে লগইন করুন', 'Inicia sesión para preseleccionar a este miembro', NULL, NULL, NULL, 'कृपया इस सदस्य को शॉर्टलिस्ट करने के लिए लॉग इन करें'),
(103, 'shortlisting', 'Shortlisting', 'সংক্ষিপ্ত', 'Breve lista', NULL, NULL, NULL, 'लघुसूचीयन'),
(104, 'shortlisted', 'Shortlisted', 'খুব', 'Preseleccionado', NULL, NULL, NULL, 'चुने'),
(105, 'you_have_shortlisted_this_member!', 'You Have Shortlisted This Member!', 'আপনি এই সদস্যের তালিকাভুক্ত করেছেন!', '¡Has preseleccionado a este miembro!', NULL, NULL, NULL, 'आपने इस सदस्य को शॉर्टलिस्ट किया है!'),
(106, 'please_log_in_to_remove_this_member_from_shortlist', 'Please Log In To Remove This Member From Shortlist', 'এই সদস্যটি সরলীকৃত থেকে সরানোর জন্য লগইন করুন', 'Inicia sesión para eliminar a este usuario de la lista restringida', NULL, NULL, NULL, 'शॉर्टलिस्ट से इस सदस्य को निकालने के लिए कृपया लॉग इन करें'),
(107, 'removing', 'Removing', 'সরানো হচ্ছে', 'Eliminando', NULL, NULL, NULL, 'निकाला जा रहा है'),
(108, 'you_have_removed_this_member_from_shortlist!', 'You Have Removed This Member From Shortlist!', 'আপনি এই সদস্য সরানো তালিকা থেকে সরানো হয়েছে!', '¡Has eliminado a este miembro de la lista restringida!', NULL, NULL, NULL, 'आपने शॉर्टलिस्ट से इस सदस्य को हटा दिया है!'),
(109, 'please_log_in_to_follow_this_member', 'Please Log In To Follow This Member', 'এই সদস্যটি অনুসরণ করতে লগ ইন করুন', 'Por favor, inicie sesión para seguir a este miembro', NULL, NULL, NULL, 'कृपया इस सदस्य का पालन करने के लिए लॉग इन करें'),
(110, 'unfollow', 'Unfollow', 'অনুসরণ', 'Dejar de seguir', NULL, NULL, NULL, 'करें'),
(111, 'you_have_followed_this_member!', 'You Have Followed This Member!', 'আপনি এই সদস্য অনুসরণ করেছেন!', '¡Has seguido a este miembro!', NULL, NULL, NULL, 'आपने इस सदस्य का पालन किया है!'),
(112, 'please_log_in_to_unfollow_this_member', 'Please Log In To Unfollow This Member', 'এই সদস্যকে অনুসরণ করতে লগইন করুন', 'Inicia sesión para dejar de seguir a este miembro', NULL, NULL, NULL, 'कृपया इस सदस्य को अनफ़ॉलो करने के लिए लॉग इन करें'),
(113, 'unfollowing', 'Unfollowing', 'অনুসরণ করছেন', 'Siguiendo', NULL, NULL, NULL, 'अनुसरण'),
(114, 'you_have_unfollowed_this_member!', 'You Have Unfollowed This Member!', 'আপনি এই সদস্য অনুসরণ করেছেন!', '¡Has dejado de seguir a este miembro!', NULL, NULL, NULL, 'आपने इस सदस्य को अनफ़ॉलो किया है!'),
(115, 'please_log_in_to_ignore_this_member', 'Please Log In To Ignore This Member', 'এই সদস্য টি উপেক্ষা করতে লগ ইন করুন', 'Por favor, inicie sesión para ignorar a este miembro', NULL, NULL, NULL, 'कृपया इस सदस्य को अनदेखा करने के लिए लॉग इन करें'),
(116, 'confirm_ignore', 'Confirm Ignore', 'অবহেলা নিশ্চিত করুন', 'Confirmar Ignorar', NULL, NULL, NULL, 'अनदेखा की पुष्टि करें'),
(117, 'are_you_sure_that_you_want_to_ignore_this_member?', 'Are You Sure That You Want To Ignore This Member?', 'আপনি এই সদস্য উপেক্ষা করতে চান যে আপনি কি নিশ্চিত?', '¿Estás seguro de que quieres ignorar a este miembro?', NULL, NULL, NULL, 'क्या आप निश्चित हैं कि आप इस सदस्य को अनदेखा करना चाहते हैं?'),
(118, 'you_have_ignored_this_member!', 'You Have Ignored This Member!', 'আপনি এই সদস্য উপেক্ষা করেছেন!', '¡Has ignorado a este miembro!', NULL, NULL, NULL, 'आपने इस सदस्य को अनदेखा कर लिया है!'),
(119, 'direct_messages:', 'Direct Messages:', 'সরাসরি বার্তা:', 'Mensajes directos:', NULL, NULL, NULL, 'प्रत्यक्ष संदेश:'),
(120, 'photo_gallery:', 'Photo Gallery:', 'ফটো গ্যালারি:', 'Galería de fotos:', NULL, NULL, NULL, 'चित्र प्रदर्शनी:'),
(121, 'images:', 'Images:', 'ছবি:', 'Imágenes:', NULL, NULL, NULL, 'इमेजिस:'),
(122, 'log_in_to_your_account', 'Log In To Your Account', 'আপনার অ্যাকাউন্টে লগ ইন করুন', 'Ingrese a su cuenta', NULL, NULL, NULL, 'अपने खाते में प्रवेश करें'),
(123, 'email', 'Email', 'ইমেইল', 'Email', NULL, NULL, NULL, 'ईमेल'),
(124, 'password', 'Password', 'পাসওয়ার্ড', 'Contraseña', NULL, NULL, NULL, 'पारण शब्द'),
(125, 'remember_me', 'Remember Me', 'আমাকে মনে কর', 'Recuérdame', NULL, NULL, NULL, 'मुझे याद रखना'),
(126, 'recover_password', 'Recover Password', 'পরিবর্তনকারী চাবিকাঠি', 'Recuperar contraseña', NULL, NULL, NULL, 'गोपनीय शब्द पुन प्राप्त करे'),
(127, 'new_here?', 'New Here?', 'এখানে নতুন?', '¿Nuevo aquí?', NULL, NULL, NULL, 'यहाँ नये?'),
(128, 'create_an_account_from_here!', 'Create An Account From Here!', 'এখানে একটি অ্যাকাউন্ট তৈরি করুন!', '¡Crea una cuenta desde aquí!', NULL, NULL, NULL, 'यहां से एक खाता बनाएँ!'),
(129, 'recover_your_password', 'Recover Your Password', 'আপনার পাসওয়ার্ড পুনরুদ্ধার', 'Recupera tu contraseña', NULL, NULL, NULL, 'पासवर्ड पुनः प्राप्त करना'),
(130, 'submit', 'Submit', 'জমা দিন', 'Enviar', NULL, NULL, NULL, 'जमा करें'),
(131, 'create_your_account', 'Create Your Account', 'আপনার একাউন্ট তৈরী করুন', 'Crea tu cuenta', NULL, NULL, NULL, 'अपने खाते बनाएँ'),
(132, 'first_name', 'First Name', 'নামের প্রথম অংশ', 'Nombre de pila', NULL, NULL, NULL, 'पहला नाम'),
(133, 'last_name', 'Last Name', 'নামের শেষাংশ', 'Apellido', NULL, NULL, NULL, 'अंतिम नाम'),
(134, 'gender', 'Gender', 'লিঙ্গ', 'Género', NULL, NULL, NULL, 'लिंग'),
(135, 'date_of_birth', 'Date Of Birth', 'জন্ম তারিখ', 'Fecha de nacimiento', NULL, NULL, NULL, 'जन्म की तारीख'),
(136, 'mobile', 'Mobile', 'মোবাইল', 'Móvil', NULL, NULL, NULL, 'मोबाइल'),
(137, 'on_behalf', 'On Behalf', 'পক্ষে', 'En nombre de', NULL, NULL, NULL, 'की ओर से'),
(138, 'confirm_password', 'Confirm Password', 'পাসওয়ার্ড নিশ্চিত করুন', 'Confirmar contraseña', NULL, NULL, NULL, 'पासवर्ड की पुष्टि कीजिये'),
(139, 'by_clicking_REGISTER_you_agree_to_our', 'By Clicking REGISTER You Agree To Our', 'নিবন্ধন ক্লিক করে আপনি আমাদের সাথে সম্মত হন', 'Al hacer clic en REGISTRAR, acepta nuestra', NULL, NULL, NULL, 'रजिस्ट्रार पर क्लिक करके आप हमसे सहमत हैं'),
(140, 'terms_and_conditions', 'Terms And Conditions', 'শর্তাবলী', 'Términos y Condiciones', NULL, NULL, NULL, 'नियम और शर्तें'),
(141, 'log_in_page', 'Log In Page', 'লগইন পৃষ্ঠায়', 'Página de inicio de sesión', NULL, NULL, NULL, 'लॉगिन वाला पन्ना'),
(142, 'go_to_profile', 'Go To Profile', 'প্রোফাইলে যান', 'Ir a perfil', NULL, NULL, NULL, 'प्रोफ़ाइल करने के लिए जाना'),
(143, 'notifications', 'Notifications', 'বিজ্ঞপ্তিগুলি', 'Notificaciones', NULL, NULL, NULL, 'सूचनाएं'),
(144, 'accepted_your_interest', 'Accepted Your Interest', 'আপনার আগ্রহ স্বীকার', 'Aceptado su interés', NULL, NULL, NULL, 'आपकी रुचि स्वीकार की गई'),
(145, 'has_expressed_an_interest_on_you', 'Has Expressed An Interest On You', 'আপনার উপর একটি সুদ প্রকাশ করেছে', 'Ha expresado interés en ti', NULL, NULL, NULL, 'आपने पर एक ब्याज व्यक्त किया है'),
(146, 'rejected_your_interest', 'Rejected Your Interest', 'আপনার আগ্রহ অস্বীকৃত', 'Rechazó su interés', NULL, NULL, NULL, 'आपकी रुचि अस्वीकार कर दी'),
(147, 'messages', 'Messages', 'বার্তা', 'Mensajes', NULL, NULL, NULL, 'संदेश'),
(148, 'last_conversation_with', 'Last Conversation With', 'সর্বশেষ কথোপকথন সঙ্গে সঙ্গে', 'Última conversación con', NULL, NULL, NULL, 'के साथ अंतिम बातचीत'),
(149, 'in', 'In', 'মধ্যে', 'En', NULL, NULL, NULL, 'में'),
(150, 'log_out', 'Log Out', 'প্রস্থান', 'Cerrar sesión', NULL, NULL, NULL, 'लोग आउट'),
(151, 'confirm_your_purchase', 'Confirm Your Purchase', 'আপনার ক্রয় নিশ্চিত করুন', 'Confirma tu compra', NULL, NULL, NULL, 'अपनी खरीद की पुष्टि करें'),
(152, 'express_interest:', 'Express Interest:', 'এক্সপ্রেস আগ্রহ:', 'Expresa interes:', NULL, NULL, NULL, 'एक्सप्रेस ब्याज:'),
(153, 'select_a_payment_method', 'Select A Payment Method', 'একটি পেমেন্ট পদ্ধতি নির্বাচন করুন', 'Seleccione un método de pago', NULL, NULL, NULL, 'किसी भुगतान पद्धति का चयन करें'),
(154, 'please_wait', 'Please Wait', 'অনুগ্রহপূর্বক অপেক্ষা করুন', 'Por favor espera', NULL, NULL, NULL, 'कृपया प्रतीक्षा करें'),
(155, 'confirm_purchase', 'Confirm Purchase', 'কেনাকাটা নিশ্চিত', 'Confirmar compra', NULL, NULL, NULL, 'खरीदी की पुष्टि करें'),
(156, 'select', 'Select', 'নির্বাচন করা', 'Seleccionar', NULL, NULL, NULL, 'चुनते हैं'),
(157, 'selected', 'Selected', 'নির্বাচিত', 'Seleccionado', NULL, NULL, NULL, 'चयनित'),
(158, 'your_name', 'Your Name', 'তোমার নাম', 'Tu nombre', NULL, NULL, NULL, 'आपका नाम'),
(159, 'email_address', 'Email Address', 'ইমেল ঠিকানা', 'Dirección de correo electrónico', NULL, NULL, NULL, 'ईमेल पता'),
(160, 'subject', 'Subject', 'বিষয়', 'Tema', NULL, NULL, NULL, 'विषय'),
(161, 'message', 'Message', 'বার্তা', 'Mensaje', NULL, NULL, NULL, 'संदेश'),
(162, 'max_300_characters', 'Max 300 Characters', 'সর্বোচ্চ 300 অক্ষর', 'Max 300 caracteres', NULL, NULL, NULL, 'अधिकतम 300 वर्ण'),
(163, 'send_message', 'Send Message', 'বার্তা পাঠান', 'Enviar mensaje', NULL, NULL, NULL, 'मेसेज भेजें'),
(164, 'profile', 'Profile', 'প্রোফাইলের', 'Perfil', NULL, NULL, NULL, 'प्रोफाइल'),
(165, 'my_interests', 'My Interests', 'আমার আগ্রহ', 'Mis intereses', NULL, NULL, NULL, 'मेरी रुचियाँ'),
(166, 'followed_users', 'Followed Users', 'অনুসরণ করা ব্যবহারকারীরা', 'Usuarios seguidos', NULL, NULL, NULL, 'अनुवर्ती उपयोगकर्ता'),
(167, 'messaging', 'Messaging', 'মেসেজিং', 'Mensajería', NULL, NULL, NULL, 'संदेश'),
(168, 'ignored_list', 'Ignored List', 'অবহিত তালিকা', 'Lista ignorada', NULL, NULL, NULL, 'अनदेखा सूची'),
(169, 'you_have_successfully_edited_your_profile!', 'You Have Successfully Edited Your Profile!', 'আপনি সফলভাবে আপনার প্রোফাইল সম্পাদনা করেছেন!', '¡Has editado exitosamente tu perfil!', NULL, NULL, NULL, 'आपने सफलतापूर्वक अपनी प्रोफ़ाइल संपादित की है!'),
(170, 'save_image', 'Save Image', 'ছবি সংরক্ষন করুন', 'Guardar imagen', NULL, NULL, NULL, 'चित्र को सेव करें'),
(171, 'followers', 'Followers', 'অনুসরণ', 'Seguidores', NULL, NULL, NULL, 'समर्थक'),
(172, 'package_informations', 'Package Informations', 'প্যাকেজ তথ্য', 'Información del paquete', NULL, NULL, NULL, 'पैकेज सूचनाएं'),
(173, 'current_package', 'Current Package', 'বর্তমান প্যাকেজ', 'El paquete actual', NULL, NULL, NULL, 'वर्तमान पैकेज'),
(174, 'package_price', 'Package Price', 'প্যাকেজ মূল্য', 'Precio del paquete', NULL, NULL, NULL, 'पैकेज कीमत'),
(175, 'payment_gateway', 'Payment Gateway', 'পেমেন্ট গেটওয়ে', 'Pasarela de pago', NULL, NULL, NULL, 'अदायगी रास्ता'),
(176, 'remaining_interest', 'Remaining Interest', 'অবশিষ্ট সুদ', 'Interés restante', NULL, NULL, NULL, 'शेष ब्याज'),
(177, 'remaining_message', 'Remaining Message', 'অবশিষ্ট বার্তা', 'Mensaje restante', NULL, NULL, NULL, 'शेष संदेश'),
(178, 'gallery', 'Gallery', 'দরদালান', 'Galería', NULL, NULL, NULL, 'गेलरी'),
(179, 'happy_story', 'Happy Story', 'সুখী গল্প', 'Feliz historia', NULL, NULL, NULL, 'हैप्पी स्टोरी'),
(180, 'My_package', 'My Package', 'আমার প্যাকেজ', 'Mi paquete', NULL, NULL, NULL, 'मेरा पैकेज'),
(181, 'payment_informations', 'Payment Informations', 'পেমেন্ট তথ্য', 'Informaciones de pago', NULL, NULL, NULL, 'भुगतान सूचनाएं'),
(182, 'picture_privacy', 'Picture Privacy', 'ছবি গোপনীয়তা', 'Privacidad de la imagen', NULL, NULL, NULL, 'चित्र गोपनीयता'),
(183, 'change_password', 'Change Password', 'পাসওয়ার্ড পরিবর্তন করুন', 'Cambia la contraseña', NULL, NULL, NULL, 'पासवर्ड बदलें'),
(184, 'close_account', 'Close Account', 'বন্ধ হিসাব', 'Cerrar cuenta', NULL, NULL, NULL, 'खाता बंद करें'),
(185, 'profile_information', 'Profile Information', 'জীবন তথ্য', 'información del perfil', NULL, NULL, NULL, 'प्रोफ़ाइल जानकारी'),
(186, 'edit_all', 'Edit All', 'সমস্ত সম্পাদনা করুন', 'Editar todo', NULL, NULL, NULL, 'सभी संपादित करें'),
(187, 'introduction', 'Introduction', 'ভূমিকা', 'Introducción', NULL, NULL, NULL, 'परिचय'),
(188, 'basic_information', 'Basic Information', 'মৌলিক তথ্য', 'Información básica', NULL, NULL, NULL, 'मूलभूत जानकारी'),
(189, 'number_of_children', 'Number Of Children', 'সন্তান সংখ্যা', 'Numero de niños', NULL, NULL, NULL, 'बच्चों की संख्या'),
(190, 'area', 'Area', 'ফোন', 'Zona', NULL, NULL, NULL, 'क्षेत्र'),
(191, 'present_address', 'Present Address', 'বর্তমান ঠিকানা', 'La dirección actual', NULL, NULL, NULL, 'वर्तमान पता'),
(192, 'show', 'Show', 'প্রদর্শনী', 'Espectáculo', NULL, NULL, NULL, 'प्रदर्शन'),
(193, 'hide', 'Hide', 'লুকান', 'Esconder', NULL, NULL, NULL, 'छिपाना'),
(194, 'postal-Code', 'Postal-Code', 'পোস্ট অফিসের নাম্বার', 'Código postal', NULL, NULL, NULL, 'डाक कोड'),
(195, 'education_and_career', 'Education And Career', 'শিক্ষা এবং ক্যারিয়ার', 'Educación y carrera', NULL, NULL, NULL, 'शिक्षा और करियर'),
(196, 'highest_education', 'Highest Education', 'সর্বচ্চো শিক্ষা', 'Alta educación', NULL, NULL, NULL, 'उच्चतम शिक्षा'),
(197, 'occupation', 'Occupation', 'পেশা', 'Ocupación', NULL, NULL, NULL, 'व्यवसाय'),
(198, 'annual_income', 'Annual Income', 'বার্ষিক আয়', 'Ingresos anuales', NULL, NULL, NULL, 'वार्षिक आय'),
(199, 'physical_attributes', 'Physical Attributes', 'শারীরিক বৈশিষ্ট্য', 'Atributos físicos', NULL, NULL, NULL, 'शारीरिक विशेषताएं'),
(200, 'weight', 'Weight', 'ওজন', 'Peso', NULL, NULL, NULL, 'वजन'),
(201, 'eye_color', 'Eye Color', 'চোখের রঙ', 'Color de los ojos', NULL, NULL, NULL, 'आँखों का रंग'),
(202, 'hair_color', 'Hair Color', 'চুলের রঙ', 'Color de pelo', NULL, NULL, NULL, 'बालो का रंग'),
(203, 'complexion', 'Complexion', 'রুপ', 'Tez', NULL, NULL, NULL, 'रंग'),
(204, 'blood_group', 'Blood Group', 'রক্তের গ্রুপ', 'Grupo sanguíneo', NULL, NULL, NULL, 'रक्त समूह'),
(205, 'body_type', 'Body Type', 'শারীরিক প্রকার', 'Tipo de cuerpo', NULL, NULL, NULL, 'शरीर के प्रकार'),
(206, 'body_art', 'Body Art', 'শারীরিক কারুকার্য', 'Arte Corporal', NULL, NULL, NULL, 'शारीरिक कला'),
(207, 'any_disability', 'Any Disability', 'কোন অক্ষমতা', 'cualquier discapacidad', NULL, NULL, NULL, 'कोई अक्षमता'),
(208, 'language', 'Language', 'ভাষা', 'Idioma', NULL, NULL, NULL, 'भाषा'),
(209, 'speak', 'Speak', 'কথা বলা', 'Hablar', NULL, NULL, NULL, 'बोले'),
(210, 'read', 'Read', 'পড়া', 'Leer', NULL, NULL, NULL, 'पढ़ना'),
(211, 'personal_attitude_and_behavior', 'Personal Attitude And Behavior', 'ব্যক্তিগত মনোভাব এবং আচরণ', 'Actitud y comportamiento personal', NULL, NULL, NULL, 'व्यक्तिगत दृष्टिकोण और व्यवहार'),
(212, 'affection', 'Affection', 'স্নেহ', 'Afecto', NULL, NULL, NULL, 'स्नेह'),
(213, 'humor', 'Humor', 'মেজাজ', 'Humor', NULL, NULL, NULL, 'हास्य'),
(214, 'political_view', 'Political View', 'রাজনৈতিক দৃষ্টিকোন', 'Visión política', NULL, NULL, NULL, 'राजनीतिक दृष्टिकोण'),
(215, 'religious_service', 'Religious Service', 'ধর্মীয় সেবা', 'Servicio religioso', NULL, NULL, NULL, 'आध्यात्मिक सेवा'),
(216, 'residency_information', 'Residency Information', 'রেসিডেন্সি তথ্য', 'Información de residencia', NULL, NULL, NULL, 'रेजीडेंसी सूचना'),
(217, 'birth_country', 'Birth Country', 'জন্মভূমি', 'País de nacimiento', NULL, NULL, NULL, 'जन्म भूमि'),
(218, 'residency_country', 'Residency Country', 'রেসিডেন্সি দেশ', 'Residencia País', NULL, NULL, NULL, 'रेजीडेंसी देश'),
(219, 'citizenship_country', 'Citizenship Country', 'নাগরিকত্ব দেশ', 'Pais de ciudadania', NULL, NULL, NULL, 'नागरिक स्वत्व देश'),
(220, 'grow_up_country', 'Grow Up Country', 'দেশ বাড়ান', 'Crecer país', NULL, NULL, NULL, 'देश बढ़ो'),
(221, 'immigration_status', 'Immigration Status', 'অভিবাসন অবস্থা', 'Estado de inmigración', NULL, NULL, NULL, 'आव्रजन स्थिति'),
(222, 'spiritual_and_social_background', 'Spiritual And Social Background', 'আধ্যাত্মিক ও সামাজিক পটভূমি', 'Antecedentes espirituales y sociales', NULL, NULL, NULL, 'आध्यात्मिक और सामाजिक पृष्ठभूमि'),
(223, 'sub-Caste', 'Sub-Caste', 'উপ - জাতি', 'Sub casta', NULL, NULL, NULL, 'उप जाति'),
(224, 'ethnicity', 'Ethnicity', 'জাতিতত্ত্ব', 'Etnicidad', NULL, NULL, NULL, 'जातीयता'),
(225, 'personal_value', 'Personal Value', 'ব্যক্তিগত মূল্য', 'Valor personal', NULL, NULL, NULL, 'व्यक्तिगत मूल्य'),
(226, 'family_value', 'Family Value', 'পারিবারিক মূল্য', 'Valor familiar', NULL, NULL, NULL, 'पारिवारिक मूल्य'),
(227, 'community_value', 'Community Value', 'কমিউনিটি মূল্য', 'Valor comunitario', NULL, NULL, NULL, 'सामुदायिक मूल्य'),
(228, 'family_status', 'Family Status', 'পরিবারের অবস্থা', 'Estado familiar', NULL, NULL, NULL, 'पारिवारिक स्थिति'),
(229, 'manglik', 'Manglik', 'Nadaglik', 'Manglik', NULL, NULL, NULL, 'Manglik'),
(230, 'caste', 'Caste', 'জাত', 'Casta', NULL, NULL, NULL, 'जाति'),
(231, 'life_style', 'Life Style', 'জীবনধারা', 'Estilo de vida', NULL, NULL, NULL, 'जीवन शैली'),
(232, 'diet', 'Diet', 'সাধারণ খাদ্য', 'Dieta', NULL, NULL, NULL, 'आहार'),
(233, 'drink', 'Drink', 'পান করা', 'Beber', NULL, NULL, NULL, 'पेय'),
(234, 'smoke', 'Smoke', 'ধোঁয়া', 'Fumar', NULL, NULL, NULL, 'धुआं'),
(235, 'living_with', 'Living With', 'একসাথে বাস করা', 'Viviendo con', NULL, NULL, NULL, 'इसके साथ जीना'),
(236, 'astronomic_information', 'Astronomic Information', 'জ্যোতির্বিদ্যা সংক্রান্ত তথ্য', 'Información astronómica', NULL, NULL, NULL, 'खगोलीय सूचना'),
(237, 'sun_sign', 'Sun Sign', 'সূর্য সাইন ইন', 'Signo del sol', NULL, NULL, NULL, 'कुण्डली'),
(238, 'moon_sign', 'Moon Sign', 'চাঁদ সাইন ইন', 'Signo de la Luna', NULL, NULL, NULL, 'राशि'),
(239, 'city_of_birth', 'City Of Birth', 'জন্মের শহর', 'Ciudad de nacimiento', NULL, NULL, NULL, 'जन्म का शहर'),
(240, 'time_of_birth', 'Time Of Birth', 'জন্মের সময়', 'Fecha de nacimiento', NULL, NULL, NULL, 'जन्म का समय'),
(241, 'permanent_address', 'Permanent Address', 'স্থায়ী ঠিকানা', 'dirección permanente', NULL, NULL, NULL, 'स्थाई पता'),
(242, 'additional_personal_details', 'Additional Personal Details', 'অতিরিক্ত ব্যক্তিগত বিবরণ', 'Detalles personales adicionales', NULL, NULL, NULL, 'अतिरिक्त व्यक्तिगत विवरण'),
(243, 'home_district', 'Home District', 'হোম জেলা', 'Distrito de origen', NULL, NULL, NULL, 'गृह जनपद'),
(244, 'family_residence', 'Family Residence', 'পরিবারের বাসভবন', 'Residencia de la familia', NULL, NULL, NULL, 'पारिवारिक निवास स्थान'),
(245, 'father\'s_occupation', 'Father\'s Occupation', 'পিতার পেশা', 'Trabajo del padre', NULL, NULL, NULL, 'पिता का व्यवसाय'),
(246, 'special_circumstances', 'Special Circumstances', 'বিশেষ পরিস্থিতিতে', 'Circunstancias especiales', NULL, NULL, NULL, 'विशेष परिस्थितियाँ'),
(247, 'partner_expectation', 'Partner Expectation', 'অংশীদার প্রত্যাশা', 'Expectativa del socio', NULL, NULL, NULL, 'साथी उम्मीद'),
(248, 'general_requirement', 'General Requirement', 'সাধারন যোগ্যতা', 'Requisito general', NULL, NULL, NULL, 'सामान्य आवश्यकता'),
(249, 'with_children_acceptables', 'With Children Acceptables', 'শিশু গ্রহণযোগ্যতা সঙ্গে', 'Con niños aceptables', NULL, NULL, NULL, 'बच्चों के स्वीकार्य के साथ'),
(250, 'country_of_residence', 'Country Of Residence', 'দেশের নাগরিক', 'País de residencia', NULL, NULL, NULL, 'निवास का देश'),
(251, 'education', 'Education', 'শিক্ষা', 'Educación', NULL, NULL, NULL, 'शिक्षा'),
(252, 'drinking_habits', 'Drinking Habits', 'পানীয় অভ্যাস', 'Hábitos de consumo', NULL, NULL, NULL, 'पीने की लत'),
(253, 'smoking_habits', 'Smoking Habits', 'ধূমপান অভ্যাস', 'Hábito de fumar', NULL, NULL, NULL, 'धूम्रपान की आदतें'),
(254, 'prefered_country', 'Prefered Country', 'পছন্দ দেশ', 'País preferido', NULL, NULL, NULL, 'पसंदीदा देश'),
(255, 'prefered_state', 'Prefered State', 'স্পষ্ট রাজ্য', 'Estado preferido', NULL, NULL, NULL, 'पसंदीदा राज्य'),
(256, 'prefered_status', 'Prefered Status', 'শর্তাবলী', 'Estado preferido', NULL, NULL, NULL, 'पसंदीदा स्थिति'),
(257, 'this_section_is_successfully_showed', 'This Section Is Successfully Showed', 'এই বিভাগ সফলভাবে দেখানো হয়', 'Esta sección se muestra con éxito', NULL, NULL, NULL, 'यह खंड सफलतापूर्वक दिखाया गया है'),
(258, 'this_section_is_successfully_hidden', 'This Section Is Successfully Hidden', 'এই বিভাগ সফলভাবে লুকানো আছে', 'Esta sección es exitosamente escondida', NULL, NULL, NULL, 'यह खंड सफलतापूर्वक छिपा हुआ है'),
(259, 'refresh', 'Refresh', 'সতেজ করা', 'Refrescar', NULL, NULL, NULL, 'ताज़ा करना'),
(260, 'send', 'Send', 'পাঠান', 'Enviar', NULL, NULL, NULL, 'भेजना'),
(261, 'upload_image', 'Upload Image', 'চিত্র আপলোড', 'Cargar imagen', NULL, NULL, NULL, 'तस्वीर डालिये'),
(262, 'please_log_in_to_delete_this_image', 'Please Log In To Delete This Image', 'এই ছবিটি মুছে ফেলার জন্য লগ ইন করুন', 'Inicie sesión para eliminar esta imagen', NULL, NULL, NULL, 'कृपया इस छवि को हटाने के लिए लॉग इन करें'),
(263, 'are_you_sure_that_you_want_to_delete_this_image', 'Are You Sure That You Want To Delete This Image', 'আপনি কি এই ছবিটি মুছে ফেলতে চান তা আপনি কি নিশ্চিত?', '¿Estás seguro de que quieres eliminar esta imagen?', NULL, NULL, NULL, 'क्या आप निश्चित हैं कि आप इस छवि को हटाना चाहते हैं'),
(264, 'deleting_an_image_will_not_refund_your_remaining_gallery_capacity', 'Deleting An Image Will Not Refund Your Remaining Gallery Capacity', 'একটি চিত্র মুছে ফেলা আপনার অবশিষ্ট গ্যালারি ক্যাপাসিটি ফেরত পাবেন না', 'Eliminar una imagen no reembolsará la capacidad restante de la galería', NULL, NULL, NULL, 'एक छवि को हटाने से आपकी शेष गैलरी क्षमता वापस नहीं आती है'),
(265, 'you_have_deleted_the_image', 'You Have Deleted The Image', 'আপনি ইমেজ মুছে ফেলা হয়েছে', 'Has eliminado la imagen', NULL, NULL, NULL, 'आपने छवि हटा दी है'),
(266, 'upload_your_image', 'Upload Your Image', 'আপনার চিত্র আপলোড করুন', 'Cargue su imagen', NULL, NULL, NULL, 'अपनी छवि अपलोड करें'),
(267, 'image_title', 'Image Title', 'চিত্র শিরোনাম', 'titulo de la imagen', NULL, NULL, NULL, 'छवि शीर्षक'),
(268, 'select_a_photo', 'Select A Photo', 'একটি ছবি নির্বাচন করুন', 'Seleccione una foto', NULL, NULL, NULL, 'एक फोटो का चयन करें'),
(269, 'go_back', 'Go Back', 'ফিরে যাও', 'Regresa', NULL, NULL, NULL, 'वापस जाओ'),
(270, 'upload', 'Upload', 'আপলোড', 'Subir', NULL, NULL, NULL, 'अपलोड'),
(271, 'please_log_in_to_upload_images_in_gallery', 'Please Log In To Upload Images In Gallery', 'গ্যালারি মধ্যে চিত্র আপলোড করতে লগ ইন করুন', 'Inicia sesión para subir imágenes en la galería', NULL, NULL, NULL, 'गैलरी में छवियों को अपलोड करने के लिए कृपया लॉग इन करें'),
(272, 'remaining_gallery_upload(s): ', 'Remaining Gallery Upload(s): ', 'অবশিষ্ট গ্যালারি আপলোড (গুলি): ', 'Carga (s) restante (s) de la Galería: ', NULL, NULL, NULL, 'शेष गैलरी अपलोड (ओं): '),
(273, 'confirm_gallery_upload', 'Confirm Gallery Upload', 'গ্যালারি আপলোড নিশ্চিত করুন', 'Confirmar la carga de la galería', NULL, NULL, NULL, 'गैलरी अपलोड की पुष्टि करें'),
(274, 'uploading_an_image_will_cost_1_from_your_remaining_gallery_uploads', 'Uploading An Image Will Cost 1 From Your Remaining Gallery Uploads', 'আপলোড করা ছবিটি আপনার বাকি গ্যালারি আপলোডের 1 থেকে খরচ হবে', 'Cargar una imagen costará 1 desde las cargas de la galería restantes', NULL, NULL, NULL, 'एक छवि अपलोड करने से आपके शेष गैलरी अपलोड से 1 लागत आएगी'),
(275, 'your_story', 'Your Story', 'তোমার গল্প', 'Tu historia', NULL, NULL, NULL, 'आपकी कहानी'),
(276, 'approved', 'Approved', 'অনুমোদিত', 'Aprobado', NULL, NULL, NULL, 'मंजूर की'),
(277, 'please_log_in_to_upload_your_story!', 'Please Log In To Upload Your Story!', 'আপনার গল্প আপলোড করতে লগ ইন করুন!', 'Por favor inicie sesión para cargar su historia!', NULL, NULL, NULL, 'कृपया अपनी कहानी अपलोड करने के लिए लॉग इन करें!'),
(278, 'confirm_story_upload', 'Confirm Story Upload', 'গল্প আপলোড নিশ্চিত করুন', 'Confirmar la carga de la historia', NULL, NULL, NULL, 'कहानी अपलोड की पुष्टि करें'),
(279, 'after_submitting_the_story,_admin_will_review_the_upload_and_varify_the_informations._then_admin_may_approve_your_post', 'After Submitting The Story, Admin Will Review The Upload And Varify The Informations. Then Admin May Approve Your Post', 'গল্প দাখিল করার পর, অ্যাডমিন আপলোড এবং পর্যালোচনা Varify তথ্য পর্যালোচনা করবে। তারপর অ্যাডমিন আপনার পোস্ট অনুমোদন পারে', 'Después de enviar la historia, el administrador revisará la carga y variará las informaciones. Entonces el administrador puede aprobar su publicación', NULL, NULL, NULL, 'कहानी सबमिट करने के बाद, व्यवस्थापक अपलोड की समीक्षा करेगा और जानकारी को सत्यापित करेगा। फिर व्यवस्थापक आपकी पोस्ट को मंजूरी दे सकता है'),
(280, 'max_limit_25_Mb', 'Max Limit 25 Mb', 'সর্বোচ্চ লিমিট 25 Mb', 'Límite máximo 25 Mb', NULL, NULL, NULL, 'अधिकतम सीमा 25 एमबी'),
(281, 'video_file_exceeded_25_Mb!', 'Video File Exceeded 25 Mb!', 'ভিডিও ফাইলটি ২5 Mb অতিক্রম করেছে!', '¡El archivo de video excedió 25 Mb!', NULL, NULL, NULL, 'वीडियो फाइल 25 एमबी से अधिक!'),
(282, 'your_current_package', 'Your Current Package', 'আপনার বর্তমান প্যাকেজ', 'Su paquete actual', NULL, NULL, NULL, 'आपका वर्तमान पैकेज'),
(283, 'info', 'Info', 'তথ্য', 'Información', NULL, NULL, NULL, 'जानकारी'),
(284, 'user_package', 'User Package', 'ব্যবহারকারী প্যাকেজ', 'Paquete de usuario', NULL, NULL, NULL, 'उपयोगकर्ता पैकेज'),
(285, 'package_gateway', 'Package Gateway', 'প্যাকেজ গেটওয়ে', 'Paquete Gateway', NULL, NULL, NULL, 'पैकेज गेटवे'),
(286, 'remaining_package', 'Remaining Package', 'অবশিষ্ট প্যাকেজ', 'Paquete restante', NULL, NULL, NULL, 'शेष पैकेज'),
(287, 'features', 'Features', 'বৈশিষ্ট্য', 'Caracteristicas', NULL, NULL, NULL, 'विशेषताएं'),
(288, 'unit_left', 'Unit Left', 'ইউনিট বাম', 'Unidad izquierda', NULL, NULL, NULL, 'यूनिट बाएं'),
(289, 'remaining_interests', 'Remaining Interests', 'অবশিষ্ট আগ্রহ', 'Intereses restantes', NULL, NULL, NULL, 'शेष रूचि'),
(290, 'remaining_messages', 'Remaining Messages', 'অবশিষ্ট বার্তাগুলি', 'Mensajes restantes', NULL, NULL, NULL, 'शेष संदेश'),
(291, 'buy_packages', 'Buy Packages', 'প্যাকেজ কিনুন', 'Comprar paquetes', NULL, NULL, NULL, 'पैकेज खरीदें'),
(292, 'please_log_in_to_view_the_payment_details', 'Please Log In To View The Payment Details', 'পেমেন্ট বিবরণ দেখতে লগ ইন করুন', 'Inicie sesión para ver los detalles del pago', NULL, NULL, NULL, 'भुगतान विवरण देखने के लिए कृपया लॉग इन करें'),
(293, 'payment_details', 'Payment Details', 'পেমেন্ট বিবরণ', 'Detalles del pago', NULL, NULL, NULL, 'भुगतान विवरण'),
(294, 'date', 'Date', 'তারিখ', 'Fecha', NULL, NULL, NULL, 'तारीख'),
(295, 'payment_type', 'Payment Type', 'শোধের ধরণ', 'Tipo de pago', NULL, NULL, NULL, 'भुगतान के प्रकार'),
(296, 'amount', 'Amount', 'পরিমাণ', 'Cantidad', NULL, NULL, NULL, 'रकम'),
(297, 'package', 'Package', 'প্যাকেজ', 'Paquete', NULL, NULL, NULL, 'पैकेज'),
(298, 'status', 'Status', 'অবস্থা', 'Estado', NULL, NULL, NULL, 'स्थिति'),
(299, 'paypal', 'Paypal', 'পেপ্যাল', 'Paypal', NULL, NULL, NULL, 'Paypal'),
(300, 'due', 'Due', 'দরুন', 'Debido', NULL, NULL, NULL, 'देय'),
(301, 'view_details', 'View Details', 'বিস্তারিত দেখুন', 'Ver detalles', NULL, NULL, NULL, 'विवरण देखें'),
(302, 'stripe', 'Stripe', 'ডোরা', 'Raya', NULL, NULL, NULL, 'पट्टी'),
(303, 'paid', 'Paid', 'পেইড', 'Pagado', NULL, NULL, NULL, 'भुगतान किया है'),
(304, 'view_invoice', 'View Invoice', 'চালান দেখুন', 'Mirar la factura', NULL, NULL, NULL, 'चालान देखें'),
(305, 'payUMoney', 'PayUMoney', 'PayUMoney', 'Payumoney', NULL, NULL, NULL, 'PayUMoney'),
(306, 'picture_privacy_settings', 'Picture Privacy Settings', 'ছবি গোপনীয়তা সেটিংস', 'Configuración de privacidad de la imagen', NULL, NULL, NULL, 'चित्र गोपनीयता सेटिंग्स'),
(307, 'profile_picture', 'Profile Picture', 'প্রোফাইল ছবি', 'Foto de perfil', NULL, NULL, NULL, 'प्रोफ़ाइल फोटो'),
(308, 'only_me', 'Only Me', 'শুধু আমি', 'Solo yo', NULL, NULL, NULL, 'केवल मैं'),
(309, 'all_member', 'All Member', 'সব সদস্য', 'Todos los miembros', NULL, NULL, NULL, 'सभी सदस्य'),
(310, 'premium_member', 'Premium Member', 'বিশেষ সদস্য', 'Miembro Premium', NULL, NULL, NULL, 'प्रीमियम सदस्य'),
(311, 'gallery_images', 'Gallery Images', 'গ্যালারি চিত্রগুলি', 'Imágenes de la galería', NULL, NULL, NULL, 'गैलरी छवियां'),
(312, 'save', 'Save', 'সংরক্ষণ করুন', 'Salvar', NULL, NULL, NULL, 'बचाना'),
(313, 'you_have_successfully_edited_picture_privacy!', 'You Have Successfully Edited Picture Privacy!', 'আপনি সফলভাবে সম্পাদিত ছবি গোপনীয়তা!', '¡Has editado con éxito la privacidad de la imagen!', NULL, NULL, NULL, 'आपने सफलतापूर्वक चित्र गोपनीयता संपादित की है!'),
(314, 'current_password', 'Current Password', 'বর্তমান পাসওয়ার্ড', 'contraseña actual', NULL, NULL, NULL, 'वर्तमान पासवर्ड'),
(315, 'new_password', 'New Password', 'নতুন পাসওয়ার্ড', 'Nueva contraseña', NULL, NULL, NULL, 'नया पासवर्ड'),
(316, 'you_have_successfully_edited_your_password!', 'You Have Successfully Edited Your Password!', 'আপনি আপনার পাসওয়ার্ড সফলভাবে সম্পাদনা করেছেন!', '¡Has editado con éxito tu contraseña!', NULL, NULL, NULL, 'आपने सफलतापूर्वक अपना पासवर्ड संपादित कर लिया है!'),
(317, 'new_password_and_current_password_are_same', 'New Password And Current Password Are Same', 'নতুন পাসওয়ার্ড এবং বর্তমান পাসওয়ার্ড একই', 'Nueva contraseña y contraseña actual son iguales', NULL, NULL, NULL, 'नया पासवर्ड और वर्तमान पासवर्ड वही हैं'),
(318, 'invalid_current_password', 'Invalid Current Password', 'বর্তমান পাসওয়ার্ড অবৈধ', 'Contraseña actual inválida', NULL, NULL, NULL, 'अमान्य वर्तमान पासवर्ड'),
(319, 'you_have_successfully_edited_your_profile_image!', 'You Have Successfully Edited Your Profile Image!', 'আপনি আপনার প্রোফাইল চিত্র সফলভাবে সম্পাদনা করেছেন!', '¡Has editado con éxito la imagen de tu perfil!', NULL, NULL, NULL, 'आपने सफलतापूर्वक अपनी प्रोफाइल छवि संपादित की है!'),
(320, 'to_colse_your_account_we_want_some_informations._please_answer_the_question_bellow', 'To Colse Your Account We Want Some Informations. Please Answer The Question Bellow', 'আপনার অ্যাকাউন্ট কলস আমরা কিছু তথ্য চাই অনুগ্রহপূর্বক প্রশ্নের উত্তর দাও', 'Para colmar su cuenta, queremos algunas informaciones. Por favor responda la pregunta a continuación', NULL, NULL, NULL, 'अपने खाते को सम्मिलित करने के लिए हम कुछ जानकारी चाहते हैं। कृपया प्रश्न का उत्तर दें'),
(321, 'do_you_realy_want_to_close_your_account?', 'Do You Realy Want To Close Your Account?', 'আপনি কি আপনার অ্যাকাউন্ট বন্ধ করতে চান?', '¿Realmente quiere cerrar su cuenta?', NULL, NULL, NULL, 'क्या आप अपने खाते को बंद करना चाहते हैं?'),
(322, 'yes', 'Yes', 'হাঁ', 'Sí', NULL, NULL, NULL, 'हाँ'),
(323, 'no', 'No', 'না', 'No', NULL, NULL, NULL, 'नहीं'),
(324, 'closed', 'Closed', 'বন্ধ', 'Cerrado', NULL, NULL, NULL, 'बन्द है'),
(325, 're-open_account?', 'Re-open Account?', 'অ্যাকাউন্ট পুনরায় খুলুন?', '¿Volver a abrir la cuenta?', NULL, NULL, NULL, 'खाता फिर से खोलें?'),
(326, 're-open_account', 'Re-open Account', 'অ্যাকাউন্ট পুনরায় খুলুন', 'Volver a abrir la cuenta', NULL, NULL, NULL, 'खाता खोलें'),
(327, 'are_you_sure_to_re-open_the_account?', 'Are You Sure To Re-open The Account?', 'আপনি অ্যাকাউন্ট পুনরায় খুলতে নিশ্চিত?', '¿Estás seguro de volver a abrir la cuenta?', NULL, NULL, NULL, 'क्या आप खाते को फिर से खोलने के लिए निश्चित हैं?'),
(328, 'select_a_member', 'Select A Member', 'একটি সদস্য নির্বাচন করুন', 'Seleccione un miembro', NULL, NULL, NULL, 'एक सदस्य का चयन करें'),
(329, 'select_a_member_from_the_contact_list_to_start_messaging', 'Select A Member From The Contact List To Start Messaging', 'মেসেজিং শুরু করতে যোগাযোগের তালিকা থেকে সদস্য নির্বাচন করুন', 'Seleccione un miembro de la lista de contactos para iniciar la mensajería', NULL, NULL, NULL, 'संदेश शुरू करने के लिए संपर्क सूची से एक सदस्य का चयन करें'),
(330, 'contact_list', 'Contact List', 'যোগাযোগ তালিকা', 'Lista de contactos', NULL, NULL, NULL, 'संपर्क सूची'),
(331, 'image', 'Image', 'ভাবমূর্তি', 'Imagen', NULL, NULL, NULL, 'छवि'),
(332, 'name', 'Name', 'নাম', 'Nombre', NULL, NULL, NULL, 'नाम'),
(333, 'accepted', 'Accepted', 'গৃহীত', 'Aceptado', NULL, NULL, NULL, 'स्वीकार किए जाते हैं'),
(334, 'rejected', 'Rejected', 'প্রত্যাখ্যাত', 'Rechazado', NULL, NULL, NULL, 'अस्वीकृत'),
(335, 'short_list', 'Short List', 'সংক্ষিপ্ত তালিকা', 'Lista corta', NULL, NULL, NULL, 'लघु सूची'),
(336, 'please_log_in_to_express_your_interest_on_this_member', 'Please Log In To Express Your Interest On This Member', 'এই সদস্য উপর আপনার আগ্রহ প্রকাশ করতে লগ ইন করুন', 'Inicie sesión para expresar su interés en este miembro', NULL, NULL, NULL, 'कृपया इस सदस्य पर अपनी रुचि व्यक्त करने के लिए लॉग इन करें'),
(337, 'you_have_no_express_interests_left. please_buy_any_package_from_premium_plans.', 'You Have No Express Interests Left. Please Buy Any Package From Premium Plans.', 'আপনি কোন এক্সপ্রেস রুচি বাম আছে। প্রিমিয়াম প্ল্যানগুলি থেকে কোন প্যাকেজ কিনুন।', 'No tiene intereses expresos a la izquierda. Por favor, compre cualquier paquete de planes premium.', NULL, NULL, NULL, 'आपके पास कोई एक्सप्रेस रूचि नहीं है। प्रीमियम योजनाओं से कोई भी पैकेज खरीदें।'),
(338, 'confirm_remove', 'Confirm Remove', 'সরান নিশ্চিত করুন', 'Confirmar Eliminar', NULL, NULL, NULL, 'निकालें की पुष्टि करें'),
(339, 'options', 'Options', 'বিকল্প', 'Opciones', NULL, NULL, NULL, 'विकल्प'),
(340, 'remove', 'Remove', 'অপসারণ', 'retirar', NULL, NULL, NULL, 'हटाना'),
(341, 'please_login_to_express_your_interest_on_this_member', 'Please Login To Express Your Interest On This Member', 'এই সদস্য এ আপনার আগ্রহ প্রকাশ করতে লগইন করুন', 'Inicie sesión para expresar su interés en este miembro', NULL, NULL, NULL, 'इस सदस्य पर अपनी रुचि व्यक्त करने के लिए कृपया लॉगिन करें'),
(342, 'you_have_no_remaining_express_interests. Please_buy_any_package_from_the_premium_plans.', 'You Have No Remaining Express Interests. Please Buy Any Package From The Premium Plans.', 'আপনার কাছে কোনও এক্সপ্রেস রুচি নেই প্রিমিয়াম প্ল্যান থেকে কোন প্যাকেজ কিনতে দয়া করে।', 'No tiene intereses expresos restantes. Por favor, compre cualquier paquete de los planes premium.', NULL, NULL, NULL, 'आपके पास कोई स्थायी एक्सप्रेस रूचि नहीं है। कृपया प्रीमियम योजनाओं से कोई भी पैकेज खरीदें।'),
(343, 'confirm_unfollow', 'Confirm Unfollow', 'বাতিল করা নিশ্চিত করুন', 'Confirmar Dejar de seguir', NULL, NULL, NULL, 'अनफ़ॉलो करें की पुष्टि करें'),
(344, 'are_you_sure_that_you_want_to_unfollow_this_member?', 'Are You Sure That You Want To Unfollow This Member?', 'আপনি এই সদস্য অনুসরণ করতে চান যে আপনি কি নিশ্চিত?', '¿Estás seguro de que quieres dejar de seguir a este miembro?', NULL, NULL, NULL, 'क्या आप निश्चित हैं कि आप इस सदस्य को अनफ़ॉलो करना चाहते हैं?'),
(345, 'please_log_in_to_unblock_this_member_from_ignored_list', 'Please Log In To Unblock This Member From Ignored List', 'এই সদস্যকে অবহেলা করা তালিকা থেকে অবরোধ মুক্ত করতে লগ ইন করুন', 'Inicie sesión para desbloquear este miembro de la lista ignorada', NULL, NULL, NULL, 'अनदेखा सूची से इस सदस्य को अनवरोधित करने के लिए कृपया लॉग इन करें'),
(346, 'confirm_unblock', 'Confirm Unblock', 'আনলক নিশ্চিত করুন', 'Confirmar Desbloquear', NULL, NULL, NULL, 'अनब्लॉक की पुष्टि करें'),
(347, 'are_you_sure_that_you_want_to_unblock_this_member_from_ignored_list?', 'Are You Sure That You Want To Unblock This Member From Ignored List?', 'আপনি কি এই অবহেলিত তালিকা থেকে এই সদস্য অবরোধ মুক্ত করতে চান?', '¿Estás seguro de que quieres desbloquear este miembro de la lista ignorada?', NULL, NULL, NULL, 'क्या आप निश्चित हैं कि आप इस सदस्य को अनदेखा सूची से अनवरोधित करना चाहते हैं?'),
(348, 'you_have_unblocked_this_member!', 'You Have Unblocked This Member!', 'আপনি এই সদস্য অবরোধ করেছেন!', '¡Has desbloqueado a este miembro!', NULL, NULL, NULL, 'आपने इस सदस्य को अनवरोधित कर दिया है!'),
(349, 'unblock', 'Unblock', 'অবরোধ মুক্ত করুন', 'Desatascar', NULL, NULL, NULL, 'अनब्लॉक'),
(350, 'frequently_asked_questions', 'Frequently Asked Questions', 'সচরাচর জিজ্ঞাস্য', 'Preguntas frecuentes', NULL, NULL, NULL, 'अक्सर पूछे जाने वाले प्रश्न'),
(351, 'your_email_or_password_is_invalid!', 'Your Email Or Password Is Invalid!', 'আপনার ইমেল বা পাসওয়ার্ড অবৈধ!', 'Su correo electrónico o contraseña no es válido', NULL, NULL, NULL, 'आपका ईमेल या पासवर्ड अमान्य है!'),
(352, 'no_notification_to_show', 'No Notification To Show', 'কোন বিজ্ঞপ্তি দেখান', 'Sin notificación para mostrar', NULL, NULL, NULL, 'दिखाने के लिए कोई अधिसूचना नहीं है'),
(353, 'no_messages_to_show', 'No Messages To Show', 'কোনও বার্তাগুলি দেখানোর জন্য', 'Sin mensajes para mostrar', NULL, NULL, NULL, 'दिखाने के लिए कोई संदेश नहीं'),
(354, 'edit_profile_informations', 'Edit Profile Informations', 'প্রোফাইল তথ্য সম্পাদনা করুন', 'Editar información del perfil', NULL, NULL, NULL, 'प्रोफाइल जानकारी संपादित करें'),
(355, 'update', 'Update', 'হালনাগাদ', 'Actualizar', NULL, NULL, NULL, 'अद्यतन करें'),
(356, 'cancel', 'Cancel', 'বাতিল', 'Cancelar', NULL, NULL, NULL, 'रद्द करना'),
(357, 'no_gallery_image_uploaded!', 'No Gallery Image Uploaded!', 'কোন গ্যালারী চিত্র আপলোড করা হয়েছে!', '¡No se cargó ninguna imagen de la galería!', NULL, NULL, NULL, 'कोई गैलरी छवि अपलोड नहीं की गई!'),
(358, 'please_upgrade_to_premium_membership_to_post_your_stories', 'Please Upgrade To Premium Membership To Post Your Stories', 'আপনার গল্প পোস্ট প্রিমিয়াম সদস্যপদ আপগ্রেড করুন দয়া করে', 'Actualice su membresía Premium para publicar sus historias', NULL, NULL, NULL, 'कृपया अपनी कहानियां पोस्ट करने के लिए प्रीमियम सदस्यता में अपग्रेड करें'),
(359, 'get_premium_membership', 'Get Premium Membership', 'প্রিমিয়াম সদস্যতা পান', 'Obtenga membresía Premium', NULL, NULL, NULL, 'प्रीमियम सदस्यता प्राप्त करें'),
(360, 'no_result_found!', 'No Result Found!', 'কোন ফলাফল পাওয়া যায়নি!', '¡No se han encontrado resultados!', NULL, NULL, NULL, 'कोई परिणाम नहीं मिला!'),
(361, 'please_log_in_to_send_messages', 'Please Log In To Send Messages', 'বার্তাগুলি লগ ইন করতে লগ ইন করুন', 'Inicia sesión para enviar mensajes', NULL, NULL, NULL, 'संदेश भेजने के लिए कृपया लॉग इन करें'),
(362, 'remaining_direct_message(s):', 'Remaining Direct Message(s):', 'অবশিষ্ট বার্তা (গুলি):', 'Mensaje (s) directo (s) restante (s):', NULL, NULL, NULL, 'शेष प्रत्यक्ष संदेश:'),
(363, 'please_buy_packages_from_the_premium_plans', 'Please Buy Packages From The Premium Plans', 'প্রিমিয়াম প্ল্যানগুলি থেকে প্যাকেজগুলি কিনুন', 'Por favor compre paquetes de los planes premium', NULL, NULL, NULL, 'कृपया प्रीमियम योजनाओं से पैकेज खरीदें'),
(364, 'confirm_send_message', 'Confirm Send Message', 'বার্তা প্রেরণ নিশ্চিত করুন', 'Confirmar Enviar mensaje', NULL, NULL, NULL, 'संदेश भेजें की पुष्टि करें'),
(365, 'sending_message_will_cost_1_from_your_remaining_direct_messages', 'Sending Message Will Cost 1 From Your Remaining Direct Messages', 'বার্তা পাঠানো আপনার বাকি সরাসরি বার্তা থেকে 1 খরচ হবে', 'Enviar mensaje costará 1 de sus mensajes directos restantes', NULL, NULL, NULL, 'संदेश भेजना आपके शेष प्रत्यक्ष संदेशों से 1 होगा'),
(366, 'message_enabled', 'Message Enabled', 'বার্তা সক্রিয়', 'Mensaje habilitado', NULL, NULL, NULL, 'संदेश सक्षम'),
(367, 'you_have_enable_messaging_with_this_member!', 'You Have Enable Messaging With This Member!', 'আপনি এই সদস্যের সাথে মেসেজিং সক্ষম করেছেন!', '¡Has habilitado la mensajería con este miembro!', NULL, NULL, NULL, 'आपने इस सदस्य के साथ संदेश सक्षम कर दिया है!');
INSERT INTO `site_language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`, `lang_7`) VALUES
(368, 'quick_information', 'Quick Information', 'দ্রুত তথ্য', 'Información rápida', NULL, NULL, NULL, 'त्वरित जानकारी'),
(369, 'education_&_career', 'Education & Career', 'শিক্ষা ও ক্যারিয়ার', 'Educación y carrera', NULL, NULL, NULL, 'शिक्षा और करियर'),
(370, 'personal_atitude_&_behavior', 'Personal Atitude & Behavior', 'ব্যক্তিগত অভ্যাস এবং আচরণ', 'Atitud y comportamiento personal', NULL, NULL, NULL, 'व्यक्तिगत आबादी और व्यवहार'),
(371, 'you_are_not_allowed_to_view_the_gallery!', 'You Are Not Allowed To View The Gallery!', 'আপনি গ্যালারী দেখতে অনুমোদিত নয়!', '¡No se te permite ver la galería!', NULL, NULL, NULL, 'आपको गैलरी देखने की अनुमति नहीं है!'),
(372, 'accept', 'Accept', 'গ্রহণ করা', 'Aceptar', NULL, NULL, NULL, 'स्वीकार करना'),
(373, 'reject', 'Reject', 'প্রত্যাখ্যান', 'Rechazar', NULL, NULL, NULL, 'अस्वीकार'),
(374, 'enable_messaging', 'Enable Messaging', 'মেসেজিং সক্ষম করুন', 'Habilitar mensajería', NULL, NULL, NULL, 'संदेश सक्षम करें'),
(375, 'messaging_enabled', 'Messaging Enabled', 'মেসেজিং সক্রিয়', 'Mensajería habilitada', NULL, NULL, NULL, 'मैसेजिंग सक्षम'),
(376, 'confirm_to_enable_messaging', 'Confirm To Enable Messaging', 'মেসেজিং সক্ষম করতে নিশ্চিত করুন', 'Confirmar para habilitar la mensajería', NULL, NULL, NULL, 'संदेश सक्षम करने के लिए पुष्टि करें'),
(377, 'please_log_in_to_enable_messaging', 'Please Log In To Enable Messaging', 'মেসেজিং সক্ষম করতে লগ ইন করুন', 'Inicie sesión para habilitar la mensajería', NULL, NULL, NULL, 'संदेश सक्षम करने के लिए कृपया लॉग इन करें'),
(378, 'confirm_enable_messaging', 'Confirm Enable Messaging', 'মেসেজিং সক্ষম নিশ্চিত করুন', 'Confirmar Habilitar Mensajería', NULL, NULL, NULL, 'संदेश सक्षम करने की पुष्टि करें'),
(379, 'enable_messaging_will_cost_1_from_your_remaining_direct_messages', 'Enable Messaging Will Cost 1 From Your Remaining Direct Messages', 'মেসেজিং সক্ষম করুন আপনার অবশিষ্ট সরাসরি বার্তা থেকে খরচ হবে 1', 'Habilitar la mensajería costará 1 de sus mensajes directos restantes', NULL, NULL, NULL, 'मैसेजिंग सक्षम करें आपके शेष प्रत्यक्ष संदेशों से 1 लागत होगी'),
(380, 'payment_invoice', 'Payment Invoice', 'পেমেন্ট চালান', 'Factura de pago', NULL, NULL, NULL, 'भुगतान इनवॉइस'),
(381, 'your_payment_via_stripe_has_been_successfull!', 'Your Payment Via Stripe Has Been Successfull!', 'স্ট্রাইপ মাধ্যমে আপনার অর্থ সফল হয়েছে!', '¡Su pago a través de Stripe ha sido exitoso!', NULL, NULL, NULL, 'आपका भुगतान सफलतापूर्वक सफल रहा है!'),
(382, 'invoice', 'Invoice', 'চালান', 'Factura', NULL, NULL, NULL, 'बीजक'),
(383, 'purchase_code_#', 'Purchase Code #', 'ক্রয় কোড #', 'Código de compra #', NULL, NULL, NULL, 'खरीद कोड #'),
(384, 'purchase_date:', 'Purchase Date:', 'ক্রয় তারিখ:', 'Fecha de compra:', NULL, NULL, NULL, 'खरीद की तारीख:'),
(385, 'billed_to,', 'Billed To,', 'বিল,', 'Facturado a,', NULL, NULL, NULL, 'बिल किया गया,'),
(386, 'name: ', 'Name: ', 'নাম: ', 'Nombre: ', NULL, NULL, NULL, 'नाम: '),
(387, 'address:', 'Address:', 'ঠিকানা:', 'Dirección:', NULL, NULL, NULL, 'पता:'),
(388, 'Payment Method: ', 'Payment Method: ', 'মূল্যপরিশোধ পদ্ধতি: ', 'Método de pago: ', NULL, NULL, NULL, 'भुगतान का तरीका: '),
(389, 'purchase_summary', 'Purchase Summary', 'ক্রয়ের সারসংক্ষেপ', 'Resumen de compra', NULL, NULL, NULL, 'सारांश सारांश'),
(390, 'item', 'Item', 'পদ', 'ít.', NULL, NULL, NULL, 'मद'),
(391, 'price', 'Price', 'মূল্য', 'Precio', NULL, NULL, NULL, 'मूल्य'),
(392, 'pachakge_type:', 'Pachakge Type:', 'পাচকজ প্রকার:', 'Tipo Pachakge:', NULL, NULL, NULL, 'पचक प्रकार:'),
(393, 'total', 'Total', 'মোট', 'Total', NULL, NULL, NULL, 'कुल'),
(394, 'print', 'Print', 'ছাপা', 'Impresión', NULL, NULL, NULL, 'छाप'),
(395, 'upload_your_story', 'Upload Your Story', 'আপনার গল্প আপলোড করুন', 'Suba su historia', NULL, NULL, NULL, 'अपनी कहानी अपलोड करें'),
(396, 'story_title', 'Story Title', 'গল্পের শিরোনাম', 'Título de la historia', NULL, NULL, NULL, 'कहानी शीर्षक'),
(397, 'story_details', 'Story Details', 'গল্পের বিবরণ', 'Detalles de la historia', NULL, NULL, NULL, 'कहानी विवरण'),
(398, 'partner_name', 'Partner Name', 'অংশীদার নাম', 'Nombre del socio', NULL, NULL, NULL, 'साथी का नाम'),
(399, 'add_another_image', 'Add Another Image', 'অন্য চিত্র যোগ করুন', 'Añadir otra imagen', NULL, NULL, NULL, 'एक और छवि जोड़ें'),
(400, 'upload_video', 'Upload Video', 'ভিডিও আপলোড কর', 'Subir video', NULL, NULL, NULL, 'विडियो को अॅॅपलोड करें'),
(401, 'upload_method', 'Upload Method', 'পদ্ধতি আপলোড করুন', 'Método de carga', NULL, NULL, NULL, 'विधि अपलोड करें'),
(402, 'choose_an_option', 'Choose An Option', 'একটি বিকল্প নির্বাচন করুন', 'Escoge una opción', NULL, NULL, NULL, 'एक विकल्प चुनें'),
(403, 'share_link', 'Share Link', 'লিঙ্ক ভাগ করুন', 'Compartir enlace', NULL, NULL, NULL, 'लिंक शेयर करें'),
(404, 'select_a_video', 'Select A Video', 'একটি ভিডিও নির্বাচন করুন', 'Seleccione un video', NULL, NULL, NULL, 'एक वीडियो का चयन करें'),
(405, 'video_preview', 'Video Preview', 'ভিডিও প্রিভিউ', 'Vista previa de video', NULL, NULL, NULL, 'वीडियो पूर्वावलोकन'),
(406, 'sharing_site', 'Sharing Site', 'শেয়ারিং সাইট', 'Compartir sitio', NULL, NULL, NULL, 'साइट साझा करना'),
(407, 'dailymotion', 'Dailymotion', 'প্রত্যুত্তর', 'Dailymotion', NULL, NULL, NULL, 'Dailymotion'),
(408, 'vimeo', 'Vimeo', 'Vimeo', 'Vimeo', NULL, NULL, NULL, 'Vimeo'),
(409, 'video_link', 'Video Link', 'ভিডিও লিঙ্ক', 'Enlace de video', NULL, NULL, NULL, 'वीडियो लिंक'),
(410, 'apply', 'Apply', 'প্রয়োগ করা', 'Aplicar', NULL, NULL, NULL, 'लागू करें'),
(411, 'pending', 'Pending', 'মুলতুবী', 'Pendiente', NULL, NULL, NULL, 'अपूर्ण'),
(412, 'your_message_has_been_successfully_sent!', 'Your Message Has Been Successfully Sent!', 'আপনার বার্তাটি সফলভাবে পাঠানো হয়েছে!', '¡Su mensaje ha sido enviado con éxito!', NULL, NULL, NULL, 'आपका संदेश सफलतापूर्वक भेज दिया गया है!'),
(413, 'visit_home_page', 'Visit Home Page', 'হোম পৃষ্ঠা দেখুন', 'Visita la página de inicio', NULL, NULL, NULL, 'होम पेज पर जाएं'),
(414, 'manage_profile', 'Manage Profile', 'প্রোফাইল পরিচালনা করুন', 'Administrar perfil', NULL, NULL, NULL, 'प्रोफाइल प्रबंधित करें'),
(415, 'logout', 'Logout', 'প্রস্থান', 'Cerrar sesión', NULL, NULL, NULL, 'लोग आउट'),
(416, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড', 'Tablero', NULL, NULL, NULL, 'डैशबोर्ड'),
(417, 'earnings', 'Earnings', 'উপার্জন', 'Ganancias', NULL, NULL, NULL, 'कमाई'),
(418, 'member_informations', 'Member Informations', 'সদস্য তথ্য', 'Información para miembros', NULL, NULL, NULL, 'सदस्य सूचनाएं'),
(419, 'total_members', 'Total Members', 'মোট সদস্যবৃন্দ', 'Miembros totales', NULL, NULL, NULL, 'कुल सदस्य'),
(420, 'blocked_members', 'Blocked Members', 'ব্লক করা সদস্যগণ', 'Miembros bloqueados', NULL, NULL, NULL, 'अवरुद्ध सदस्य'),
(421, 'total_earnings', 'Total Earnings', 'মোট উপার্জন', 'Ganancias Totales', NULL, NULL, NULL, 'कुल आय'),
(422, 'last_month', 'Last Month', 'গত মাসে', 'El mes pasado', NULL, NULL, NULL, 'पिछले महीने'),
(423, 'last_3_months', 'Last 3 Months', 'শেষ 3 মাস', 'Últimos 3 meses', NULL, NULL, NULL, 'पिछले 3 महीने'),
(424, 'half_yearly', 'Half Yearly', 'অর্ধ বার্ষিক', 'Medio año', NULL, NULL, NULL, 'अर्धवार्षिक'),
(425, 'yearly', 'Yearly', 'বাত্সরিক', 'Anual', NULL, NULL, NULL, 'सालाना'),
(426, 'stories_informations', 'Stories Informations', 'গল্পের তথ্য', 'Historias Informaciones', NULL, NULL, NULL, 'कहानियां सूचनाएं'),
(427, 'total_stories', 'Total Stories', 'মোট গল্প', 'Historias totales', NULL, NULL, NULL, 'कुल कहानियां'),
(428, 'approved_stories', 'Approved Stories', 'অনুমোদিত গল্প', 'Historias aprobadas', NULL, NULL, NULL, 'स्वीकृत कहानियां'),
(429, 'pending_stories', 'Pending Stories', 'বাকি গল্পগুলি', 'Historias pendientes', NULL, NULL, NULL, 'लंबित कहानियां'),
(430, 'informatives', 'Informatives', 'তথ্যপূর্ণ', 'informativas', NULL, NULL, NULL, 'जानकारीपूर्ण'),
(431, 'frontend_pages_settings', 'Frontend Pages Settings', 'সম্মুখ পৃষ্ঠা পৃষ্ঠা সেটিংস', 'Configuración de páginas frontend', NULL, NULL, NULL, 'फ्रंटेंड पेज सेटिंग्स'),
(432, 'payments_settings', 'Payments Settings', 'পরিশোধের সেটিংস', 'Configuración de pagos', NULL, NULL, NULL, 'भुगतान सेटिंग्स'),
(433, 'social_comments_settings', 'Social Comments Settings', 'সামাজিক মন্তব্য সেটিংস', 'Configuración de comentarios sociales', NULL, NULL, NULL, 'सामाजिक टिप्पणियाँ सेटिंग्स'),
(434, 'diagram', 'Diagram', 'নকশা', 'Diagrama', NULL, NULL, NULL, 'आरेख'),
(435, 'how_to', 'How To', 'কিভাবে', 'Cómo', NULL, NULL, NULL, 'कैसे'),
(436, 'structural_info', 'Structural Info', 'কাঠামোগত তথ্য', 'Información estructural', NULL, NULL, NULL, 'संरचनात्मक जानकारी'),
(437, 'members', 'Members', 'সদস্য', 'Miembros', NULL, NULL, NULL, 'सदस्य'),
(438, 'add_member', 'Add Member', 'সদস্য যোগ করুন', 'Añadir miembro', NULL, NULL, NULL, 'सदस्य जोड़ें'),
(439, 'stories', 'Stories', 'খবর', 'Cuentos', NULL, NULL, NULL, 'कहानियों'),
(440, 'contact_messages', 'Contact Messages', 'যোগাযোগ বার্তা', 'Mensajes de contacto', NULL, NULL, NULL, 'संपर्क संदेश'),
(441, 'general_settings', 'General Settings', 'সাধারণ সেটিংস', 'Configuración general', NULL, NULL, NULL, 'सामान्य सेटिंग्स'),
(442, 'frontend_settings', 'Frontend Settings', 'সম্মুখস্থ সেটিংস', 'Configuración frontend', NULL, NULL, NULL, 'फ्रंटेंड सेटिंग्स'),
(443, 'choose_theme_color', 'Choose Theme Color', 'থিম রঙ নির্বাচন করুন', 'Elige el color del tema', NULL, NULL, NULL, 'थीम रंग चुनें'),
(444, 'frontend_appearances', 'Frontend Appearances', 'সম্মুখভাগের উপস্থিতি', 'Apariciones Frontend', NULL, NULL, NULL, 'फ्रंटेंड उपस्थिति'),
(445, 'header', 'Header', 'শিরোলেখ', 'Encabezamiento', NULL, NULL, NULL, 'हैडर'),
(446, 'pages', 'Pages', 'পেজ', 'Páginas', NULL, NULL, NULL, 'पेज'),
(447, 'footer', 'Footer', 'পেয়াদা', 'Pie de página', NULL, NULL, NULL, 'फ़ुटबाल'),
(448, 'configurations', 'Configurations', 'কনফিগারেশন', 'Configuraciones', NULL, NULL, NULL, 'विन्यास'),
(449, 'profile_attributes', 'Profile Attributes', 'প্রোফাইল গুণাবলী', 'Atributos del perfil', NULL, NULL, NULL, 'प्रोफाइल गुण'),
(450, 'sub_-Caste', 'Sub -Caste', 'উপ - জাতি', 'Sub-Caste', NULL, NULL, NULL, 'उप जाति'),
(451, 'profile_sections', 'Profile Sections', 'প্রোফাইল বিভাগ', 'Secciones de perfil', NULL, NULL, NULL, 'प्रोफाइल अनुभाग'),
(452, 'social_media_comments', 'Social Media Comments', 'সামাজিক মিডিয়া মন্তব্য', 'Comentarios de redes sociales', NULL, NULL, NULL, 'सोशल मीडिया टिप्पणियाँ'),
(453, 'payments', 'Payments', 'পেমেন্টস্', 'Pagos', NULL, NULL, NULL, 'भुगतान'),
(454, 'email_setup', 'Email Setup', 'ইমেল সেটআপ', 'Configuración de correo electrónico', NULL, NULL, NULL, 'ईमेल सेटअप'),
(455, 'currency_settings', 'Currency Settings', 'মুদ্রা সেটিংস', 'Configuración de moneda', NULL, NULL, NULL, 'मुद्रा सेटिंग्स'),
(456, 'configure', 'Configure', 'কনফিগার করুন', 'Configurar', NULL, NULL, NULL, 'कॉन्फ़िगर'),
(457, 'all_currencies', 'All Currencies', 'সমস্ত মুদ্রায়', 'Todas las monedas', NULL, NULL, NULL, 'सभी मुद्राएं'),
(458, 'captcha_settings', 'Captcha Settings', 'ক্যাপচা সেটিংস', 'Configuraciones de Captcha', NULL, NULL, NULL, 'कैप्चा सेटिंग्स'),
(459, 'sms_settings', 'Sms Settings', 'এসএমএস সেটিংস', 'Configuración de SMS', NULL, NULL, NULL, 'एसएमएस सेटिंग्स'),
(460, 'twilio', 'Twilio', 'Twilio', 'Twilio', NULL, NULL, NULL, 'Twilio'),
(461, 'msg91', 'Msg91', 'Msg91', 'Msg91', NULL, NULL, NULL, 'Msg91'),
(462, 'FAQ', 'FAQ', 'প্রায়শই জিজ্ঞাসিত প্রশ্নাবলী', 'Preguntas más frecuentes', NULL, NULL, NULL, 'सामान्य प्रश्न'),
(463, 'send_SMS', 'Send SMS', 'এসএমএস পাঠান', 'Enviar SMS', NULL, NULL, NULL, 'संदेश भेजो'),
(464, 'manage_admin_profile', 'Manage Admin Profile', 'অ্যাডমিন প্রোফাইল পরিচালনা করুন', 'Administrar perfil de administrador', NULL, NULL, NULL, 'व्यवस्थापक प्रोफाइल प्रबंधित करें'),
(465, 'SEO_settings', 'SEO Settings', 'এসইও সেটিংস', 'Configuración de SEO', NULL, NULL, NULL, 'एसईओ सेटिंग्स'),
(466, 'staffs_panel', 'Staffs Panel', 'স্টাফ প্যানেল', 'Panel de Staffs', NULL, NULL, NULL, 'कर्मचारी पैनल'),
(467, 'all_staffs', 'All Staffs', 'সমস্ত স্টাফ', 'Todo el personal', NULL, NULL, NULL, 'सभी कर्मचारी'),
(468, 'manage_roles', 'Manage Roles', 'ভূমিকা পরিচালনা করুন', 'Administrar Roles', NULL, NULL, NULL, 'भूमिकाएं प्रबंधित करें'),
(469, 'online_knowledge_base', 'Online Knowledge Base', 'অনলাইন জ্ঞান বেস', 'Base de conocimiento en línea', NULL, NULL, NULL, 'ऑनलाइन ज्ञान आधार'),
(470, 'activation', 'Activation', 'অ্যাক্টিভেশন', 'Activación', NULL, NULL, NULL, 'सक्रियण'),
(471, 'Free', 'Free', 'বিনামূল্যে', 'Gratis', NULL, NULL, NULL, 'मुक्त'),
(472, 'members_list', 'Members List', 'সদস্য তালিকা', 'Lista de miembros', NULL, NULL, NULL, 'सदस्यों की सूची'),
(473, 'user_image', 'User Image', 'ব্যবহারকারী চিত্র', 'Imagen del usuario', NULL, NULL, NULL, 'उपयोगकर्ता छवि'),
(474, 'member_since', 'Member Since', 'সদস্য থেকে', 'Miembro desde', NULL, NULL, NULL, 'से सदस्ये'),
(475, 'member_status', 'Member Status', 'সদস্য স্থিতি', 'Estado de miembro', NULL, NULL, NULL, 'सदस्य की स्थिति'),
(476, 'package_information', 'Package Information', 'প্যাকেজ সংক্রান্ত তথ্য', 'Información del paquete', NULL, NULL, NULL, 'पैकेज जानकारी'),
(477, 'confirm_your_action', 'Confirm Your Action', 'আপনার অ্যাকশন নিশ্চিত করুন', 'Confirma tu acción', NULL, NULL, NULL, 'अपनी कार्रवाई की पुष्टि करें'),
(478, 'are_you_sure_you_want_to', 'Are You Sure You Want To', 'তুমি কি নিশ্চিত তুমি কি চাও', 'Estás seguro que quieres', NULL, NULL, NULL, 'क्या आप निस्चय ही यह कार्य करना चाहते हैं'),
(479, 'this_user?', 'This User?', 'এই ব্যবহারকারী?', 'Este usuario?', NULL, NULL, NULL, 'यह उपयोगकर्ता?'),
(480, 'confirm_delete', 'Confirm Delete', 'নিশ্চিত বাতিল', 'Confirmar eliminación', NULL, NULL, NULL, 'हटाने की पुष्टि करें'),
(481, 'are_you_sure_you_want_to_delete_this_data?', 'Are You Sure You Want To Delete This Data?', 'আপনি এই ডেটা মুছে ফেলতে চান আপনি কি নিশ্চিত?', '¿Estás seguro de que quieres eliminar esta información?', NULL, NULL, NULL, 'क्या आप वाकई इस डेटा को हटाना चाहते हैं?'),
(482, 'delete', 'Delete', 'মুছে ফেলা', 'Borrar', NULL, NULL, NULL, 'हटाना'),
(483, 'block', 'Block', 'বাধা', 'Bloquear', NULL, NULL, NULL, 'खंड'),
(484, 'Active', 'Active', 'সক্রিয়', 'Activo', NULL, NULL, NULL, 'सक्रिय'),
(485, 'view_profile', 'View Profile', 'প্রোফাইল দেখুন', 'Ver perfil', NULL, NULL, NULL, 'प्रोफाइल देखिये'),
(486, 'packages', 'Packages', 'প্যাকেজগুলি', 'Paquetes', NULL, NULL, NULL, 'संकुल'),
(487, 'delete_member', 'Delete Member', 'সদস্য মুছুন', 'Eliminar miembro', NULL, NULL, NULL, 'सदस्य हटाएं'),
(488, 'member_details', 'Member Details', 'সদস্য বিশদ বিবরণ', 'Detalles del miembro', NULL, NULL, NULL, 'सदस्य विवरण'),
(489, 'block_user', 'Block User', 'নিষিদ্ধ ব্যবহারকারী', 'Bloquear usuario', NULL, NULL, NULL, 'उपयोगकर्ता को रोक देना, ब्लॉक यूजर'),
(490, 'active_account', 'Active Account', 'সক্রিয় অ্যাকাউন্ট', 'Cuenta activa', NULL, NULL, NULL, 'सक्रिय खाता'),
(491, 'onbehalf', 'Onbehalf', 'পক্ষে', 'En nombre de', NULL, NULL, NULL, 'की ओर से'),
(492, 'personal_attitude_&_behavior', 'Personal Attitude & Behavior', 'ব্যক্তিগত মনোভাব এবং আচরণ', 'Actitud y comportamiento personal', NULL, NULL, NULL, 'व्यक्तिगत दृष्टिकोण और व्यवहार'),
(493, 'spiritual_&_social_background', 'Spiritual & Social Background', 'আধ্যাত্মিক ও সামাজিক পটভূমি', 'Antecedentes espirituales y sociales', NULL, NULL, NULL, 'आध्यात्मिक और सामाजिक पृष्ठभूमि'),
(494, 'you_have_successfully_blocked_this_member!', 'You Have Successfully Blocked This Member!', 'আপনি এই সদস্যকে সফলভাবে অবরুদ্ধ করেছেন!', '¡Has bloqueado exitosamente a este miembro!', NULL, NULL, NULL, 'आपने सफलतापूर्वक इस सदस्य को अवरुद्ध कर दिया है!'),
(495, 'you_have_successfully_unlocked_this_member!', 'You Have Successfully Unlocked This Member!', 'আপনি এই সদস্যকে সফলভাবে আনলক করেছেন!', '¡Has desbloqueado exitosamente a este miembro!', NULL, NULL, NULL, 'आपने सफलतापूर्वक इस सदस्य को अनलॉक कर दिया है!'),
(496, 'you_have_successfully_deleted_this_member!', 'You Have Successfully Deleted This Member!', 'আপনি এই সদস্যকে সফলভাবে মুছে ফেলেছেন!', '¡Has eliminado exitosamente a este miembro!', NULL, NULL, NULL, 'आपने सफलतापूर्वक इस सदस्य को हटा दिया है!'),
(497, 'add_new_member_info', 'Add New Member Info', 'নতুন সদস্য তথ্য যোগ করুন', 'Agregar nueva información de miembro', NULL, NULL, NULL, 'नई सदस्य जानकारी जोड़ें'),
(498, 'mobile_no.', 'Mobile No.', 'মোবাইল নাম্বার.', 'No móviles.', NULL, NULL, NULL, 'मोबाइल नहीं है।'),
(499, 'plan', 'Plan', 'পরিকল্পনা', 'Plan', NULL, NULL, NULL, 'योजना'),
(500, 'you_have_successfully_added_a_member!!', 'You Have Successfully Added A Member!!', 'আপনি একটি সদস্য সফলভাবে যোগদান করেছেন !!', '¡Has añadido exitosamente un miembro!', NULL, NULL, NULL, 'आपने सफलतापूर्वक एक सदस्य जोड़ा है !!'),
(501, 'packages_list', 'Packages List', 'প্যাকেজ তালিকা', 'Lista de paquetes', NULL, NULL, NULL, 'पैकेज सूची'),
(502, 'edit', 'Edit', 'সম্পাদন করা', 'Editar', NULL, NULL, NULL, 'संपादित करें'),
(503, 'edit_package', 'Edit Package', 'প্যাকেজ সম্পাদনা করুন', 'Editar paquete', NULL, NULL, NULL, 'पैकेज संपादित करें'),
(504, 'package_name', 'Package Name', 'প্যাকেজ নাম', 'Nombre del paquete', NULL, NULL, NULL, 'पैकेज का नाम'),
(505, 'package_image', 'Package Image', 'প্যাকেজ চিত্র', 'Imagen del paquete', NULL, NULL, NULL, 'पैकेज छवि'),
(506, 'you_have_successfully_edited_the_package!', 'You Have Successfully Edited The Package!', 'আপনি প্যাকেজ সফলভাবে সম্পাদনা করেছেন!', '¡Has editado exitosamente el paquete!', NULL, NULL, NULL, 'आपने पैकेज को सफलतापूर्वक संपादित किया है!'),
(507, 'stories_list', 'Stories List', 'গল্পের তালিকা', 'Lista de historias', NULL, NULL, NULL, 'कहानियां सूची'),
(508, 'member_name', 'Member Name', 'সদস্যের নাম', 'Nombre de miembro', NULL, NULL, NULL, 'सदस्य का नाम'),
(509, 'this_story?', 'This Story?', 'এই গল্পটি?', '¿Esta historia?', NULL, NULL, NULL, 'इस कहानी?'),
(510, 'unpublish', 'Unpublish', 'অপ্রকাশিত', 'No publicar', NULL, NULL, NULL, 'अप्रकाशित'),
(511, 'approve', 'Approve', 'অনুমোদন করা', 'Aprobar', NULL, NULL, NULL, 'मंजूर'),
(512, 'view', 'View', 'দৃশ্য', 'Ver', NULL, NULL, NULL, 'राय'),
(513, 'you_have_successfully_unpublished_the_story!', 'You Have Successfully Unpublished The Story!', 'আপনি সফলভাবে অদৃশ্য গল্প!', '¡Has anotado exitosamente la historia!', NULL, NULL, NULL, 'आपने कहानी सफलतापूर्वक अप्रकाशित की है!'),
(514, 'you_have_successfully_approved_the_story!', 'You Have Successfully Approved The Story!', 'আপনি সফলভাবে গল্প অনুমোদন করেছেন!', '¡Has aprobado la historia con éxito!', NULL, NULL, NULL, 'आपने सफलतापूर्वक कहानी को मंजूरी दे दी है!'),
(515, 'posted_by', 'Posted By', 'কারো দ্বারা কোন কিছু ডাকঘরে পাঠানো', 'Publicado por', NULL, NULL, NULL, 'द्वारा प्रकाशित किया गया था'),
(516, 'post_time:', 'Post Time:', 'পোস্ট সময়:', 'Hora de publicación:', NULL, NULL, NULL, 'पोस्ट समय:'),
(517, 'by', 'By', 'দ্বারা', 'Por', NULL, NULL, NULL, 'द्वारा'),
(518, 'you_have_successfully_deleted_the_data!', 'You Have Successfully Deleted The Data!', 'আপনি ডেটা সফলভাবে মুছে ফেলেছেন!', '¡Has eliminado con éxito los datos!', NULL, NULL, NULL, 'आपने डेटा को सफलतापूर्वक हटा दिया है!'),
(519, 'earnings_list', 'Earnings List', 'উপার্জন তালিকা', 'Lista de ganancias', NULL, NULL, NULL, 'आय सूची'),
(520, 'earning_name', 'Earning Name', 'নাম অর্জন করুন', 'Ganar nombre', NULL, NULL, NULL, 'कमाई का नाम'),
(521, 'contact_messages_list', 'Contact Messages List', 'বার্তা তালিকা যোগাযোগ করুন', 'Lista de mensajes de contacto', NULL, NULL, NULL, 'संपर्क संदेश सूची'),
(522, 'are_you_sure_you_want_to_delete_this_message?', 'Are You Sure You Want To Delete This Message?', 'আপনি কি এই বার্তাটি মুছে দিতে চান আপনি কি নিশ্চিত?', '¿Seguro que quieres borrar este mensaje?', NULL, NULL, NULL, 'क्या आप निश्चित रूप से यह संदेश हटाना चाहते हैं?'),
(523, 'replied', 'Replied', 'জবাব দিয়েছে', 'Respondido', NULL, NULL, NULL, 'उत्तर दिया'),
(524, 'not_replied', 'Not Replied', 'উত্তর নেই', 'No contestado', NULL, NULL, NULL, 'जवाब नहीं दिया'),
(525, 'view_contact_message', 'View Contact Message', 'যোগাযোগ বার্তা দেখুন', 'Ver mensaje de contacto', NULL, NULL, NULL, 'संपर्क संदेश देखें'),
(526, 'date_&_time', 'Date & Time', 'তারিখ সময়', 'Fecha y hora', NULL, NULL, NULL, 'दिनांक समय'),
(527, 'reply', 'Reply', 'উত্তর', 'Respuesta', NULL, NULL, NULL, 'जवाब दे दो'),
(528, 'you_have_successfully_deleted_this_message!', 'You Have Successfully Deleted This Message!', 'আপনি এই বার্তাটি সফলভাবে মুছে ফেলেছেন!', '¡Has eliminado exitosamente este mensaje!', NULL, NULL, NULL, 'आपने सफलतापूर्वक इस संदेश को हटा दिया है!'),
(529, 'reply_message', 'Reply Message', 'উত্তর বার্তা', 'Mensaje de respuesta', NULL, NULL, NULL, 'प्रतिक्रिया संदेश'),
(530, 'manage_settings', 'Manage Settings', 'সেটিংস পরিচালনা করুন', 'Administrar configuración', NULL, NULL, NULL, 'सेटिंग्स प्रबंधित करें'),
(531, 'SMTP_settings', 'SMTP Settings', 'SMTP সেটিংস', 'Configuración de SMTP', NULL, NULL, NULL, 'एसएमटीपी सेटिंग्स'),
(532, 'social_links', 'Social Links', 'সামাজিক লিংকগুলি', 'vínculos sociales', NULL, NULL, NULL, 'सामाजिक लिंक'),
(533, 'system_name', 'System Name', 'সিস্টেমের নাম', 'Nombre del sistema', NULL, NULL, NULL, 'सिस्टम का नाम'),
(534, 'system_email', 'System Email', 'সিস্টেম ইমেল', 'Correo electrónico del sistema', NULL, NULL, NULL, 'सिस्टम ईमेल'),
(535, 'system_title', 'System Title', 'সিস্টেম শিরোনাম', 'Título del sistema', NULL, NULL, NULL, 'सिस्टम शीर्षक'),
(536, 'address', 'Address', 'ঠিকানা', 'Dirección', NULL, NULL, NULL, 'पता'),
(537, 'phone', 'Phone', 'ফোন', 'Teléfono', NULL, NULL, NULL, 'फ़ोन'),
(538, 'homepage_cache_time', 'Homepage Cache Time', 'হোমপেজ ক্যাশের সময়', 'Tiempo de caché del sitio web', NULL, NULL, NULL, 'होमपेज कैश समय'),
(539, 'minutes', 'Minutes', 'মিনিট', 'Minutos', NULL, NULL, NULL, 'मिनट'),
(540, 'mouse_right_click_off', 'Mouse Right Click Off', 'মাউস ডান ক্লিক করুন', 'Mouse Haga clic derecho en Off', NULL, NULL, NULL, 'माउस राइट क्लिक ऑफ'),
(541, 'SMTP_status', 'SMTP Status', 'SMTP স্থিতি', 'Estado de SMTP', NULL, NULL, NULL, 'एसएमटीपी स्थिति'),
(542, 'SMTP_host', 'SMTP Host', 'SMTP হোস্ট', 'Servidor SMTP', NULL, NULL, NULL, 'एसएमटीपी होस्ट'),
(543, 'SMTP_port', 'SMTP Port', 'SMTP পোর্ট', 'Puerto SMTP', NULL, NULL, NULL, 'एसएमटीपी पोर्ट'),
(544, 'SMTP_user', 'SMTP User', 'SMTP ব্যবহারকারী', 'Usuario SMTP', NULL, NULL, NULL, 'एसएमटीपी उपयोगकर्ता'),
(545, 'SMTP_password', 'SMTP Password', 'SMTP পাসওয়ার্ড', 'Contraseña SMTP', NULL, NULL, NULL, 'एसएमटीपी पासवर्ड'),
(546, 'from', 'From', 'থেকে', 'De', NULL, NULL, NULL, 'से'),
(547, 'you_have_successfully_edited_the_settings!', 'You Have Successfully Edited The Settings!', 'আপনি সেটিংস সফলভাবে সম্পাদনা করেছেন!', '¡Has editado con éxito la configuración!', NULL, NULL, NULL, 'आपने सेटिंग्स को सफलतापूर्वक संपादित किया है!'),
(548, 'successfully_saved', 'Successfully Saved', 'সফলভাবে সংরক্ষিত', 'Guardado con éxito', NULL, NULL, NULL, 'सफलतापूर्वक संचित कर लिया गया है'),
(549, 'choose_color', 'Choose Color', 'রং নির্বাচন করুন', 'Elige color', NULL, NULL, NULL, 'रंग पसंद करो'),
(550, 'preview', 'Preview', 'পূর্বরূপ', 'Avance', NULL, NULL, NULL, 'पूर्वावलोकन'),
(551, 'preview_theme_color', 'Preview Theme Color', 'থিম রং প্রাকদর্শন', 'Vista previa del color del tema', NULL, NULL, NULL, 'पूर्वावलोकन थीम रंग'),
(552, 'selecting..', 'Selecting..', 'নির্বাচন ..', 'Seleccionando ...', NULL, NULL, NULL, 'चयन ..'),
(553, 'manage_frontend_header', 'Manage Frontend Header', 'ফ্রন্টেন্ড হেডার পরিচালনা করুন', 'Administrar encabezado frontend', NULL, NULL, NULL, 'फ्रंटेंड हैडर प्रबंधित करें'),
(554, 'header_logo', 'Header Logo', 'হেডার লোগো', 'El logotipo de cabecera', NULL, NULL, NULL, 'शीर्षलेख का प्रतीक चिह्न'),
(555, 'favicon', 'Favicon', 'ফেভিকন', 'Favicon', NULL, NULL, NULL, 'फ़ेविकॉन'),
(556, 'manage_frontend_pages', 'Manage Frontend Pages', 'সম্মুখ পৃষ্ঠাগুলি পরিচালনা করুন', 'Administrar páginas frontend', NULL, NULL, NULL, 'फ्रंटेंड पेज प्रबंधित करें'),
(557, 'listing', 'Listing', 'তালিকা', 'Listado', NULL, NULL, NULL, 'लिस्टिंग'),
(558, 'registration', 'Registration', 'নিবন্ধন', 'Registro', NULL, NULL, NULL, 'पंजीकरण'),
(559, 'slider_section', 'Slider Section', 'স্লাইডার বিভাগ', 'Sección deslizante', NULL, NULL, NULL, 'स्लाइडर अनुभाग'),
(560, 'display_status', 'Display Status', 'প্রদর্শন স্থিতি', 'Estado de visualización', NULL, NULL, NULL, 'प्रदर्शन स्थिति'),
(561, 'position', 'Position', 'অবস্থান', 'Posición', NULL, NULL, NULL, 'पद'),
(562, 'left', 'Left', 'বাম', 'Izquierda', NULL, NULL, NULL, 'बाएं'),
(563, 'right', 'Right', 'অধিকার', 'Derecha', NULL, NULL, NULL, 'सही'),
(564, 'select_image', 'Select Image', 'চিত্র নির্বাচন করুন', 'Seleccionar imagen', NULL, NULL, NULL, 'छवि चुने'),
(565, 'add_more_image', 'Add More Image', 'আরও ছবি যোগ করুন', 'Añadir más imagen', NULL, NULL, NULL, 'अधिक छवि जोड़ें'),
(566, 'premium_members_section', 'Premium Members Section', 'প্রিমিয়াম সদস্য সেকশন', 'Sección de Miembros Premium', NULL, NULL, NULL, 'प्रीमियम सदस्य अनुभाग'),
(567, 'max_premium_member_number', 'Max Premium Member Number', 'সর্বোচ্চ প্রিমিয়াম সদস্য সংখ্যা', 'Número máximo de miembros de Max', NULL, NULL, NULL, 'अधिकतम प्रीमियम सदस्य संख्या'),
(568, 'parallax_section', 'Parallax Section', 'পার্ল্যাক্স সেকশন', 'Sección de paralaje', NULL, NULL, NULL, 'लंबन खंड'),
(569, 'background_image', 'Background Image', 'পৃষ্ঠভূমি চিত্র', 'Imagen de fondo', NULL, NULL, NULL, 'पृष्ठभूमि छवि'),
(570, 'parallax_text', 'Parallax Text', 'পার্ল্যাক্স টেক্সট', 'Texto de Parallax', NULL, NULL, NULL, 'लंबन पाठ'),
(571, 'happy_stories_section', 'Happy Stories Section', 'শুভ গল্প অধ্যায়', 'Sección de historias felices', NULL, NULL, NULL, 'हैप्पी कहानियां अनुभाग'),
(572, 'max_happy_stories_number', 'Max Happy Stories Number', 'সর্বোচ্চ হ্যাপি গল্প সংখ্যা', 'Max Happy Stories Number', NULL, NULL, NULL, 'मैक्स हैप्पी कहानियां संख्या'),
(573, 'premium_plans_section', 'Premium Plans Section', 'প্রিমিয়াম পরিকল্পনা বিভাগ', 'Sección Planes Premium', NULL, NULL, NULL, 'प्रीमियम योजना अनुभाग'),
(574, 'contact_information_section', 'Contact Information Section', 'যোগাযোগের তথ্য বিভাগ', 'Sección de información de contacto', NULL, NULL, NULL, 'संपर्क जानकारी अनुभाग'),
(575, 'contact_information_text', 'Contact Information Text', 'যোগাযোগ তথ্য টেক্সট', 'Texto de información de contacto', NULL, NULL, NULL, 'संपर्क जानकारी पाठ'),
(576, 'listing_page', 'Listing Page', 'তালিকা পৃষ্ঠা', 'Página de listado', NULL, NULL, NULL, 'लिस्टिंग पेज'),
(577, 'advance_search_position', 'Advance Search Position', 'অগ্রিম অনুসন্ধান অবস্থান', 'Posición de búsqueda avanzada', NULL, NULL, NULL, 'अग्रिम खोज स्थिति'),
(578, 'happy_stories_header_text', 'Happy Stories Header Text', 'শুভ গল্প শিরোনাম পাঠ্য', 'Happy Stories Header Text', NULL, NULL, NULL, 'हैप्पी कहानियां हैडर टेक्स्ट'),
(579, 'contact_us_header_text', 'Contact Us Header Text', 'আমাদের সাথে যোগাযোগ', 'Contáctanos Texto del encabezado', NULL, NULL, NULL, 'हमसे संपर्क करें हैडर टेक्स्ट'),
(580, 'manage_frontend_footer', 'Manage Frontend Footer', 'ফ্রন্টেন্ড পাদলেখ পরিচালনা করুন', 'Administrar pie de página frontend', NULL, NULL, NULL, 'फ्रंटेंड पाद लेख प्रबंधित करें'),
(581, 'footer_logo', 'Footer Logo', 'পাদটীকা লোগো', 'Logotipo de pie de página', NULL, NULL, NULL, 'पाद लेख लोगो'),
(582, 'logo_position', 'Logo Position', 'লোগো অবস্থান', 'Posición del logotipo', NULL, NULL, NULL, 'लोगो की स्थिति'),
(583, 'footer_text', 'Footer Text', 'পাদচরণ', 'Texto de pie de página', NULL, NULL, NULL, 'फूटर टेक्स्ट'),
(584, 'Configuration', 'Configuration', 'কনফিগারেশন', 'Configuración', NULL, NULL, NULL, 'विन्यास'),
(585, 'member_profile', 'Member Profile', 'সদস্য প্রোফাইল', 'Perfil de miembro', NULL, NULL, NULL, 'सदस्य प्रोफाइल'),
(586, 'religions', 'Religions', 'ধর্ম', 'Religiones', NULL, NULL, NULL, 'धर्म'),
(587, 'create_new', 'Create New', 'নতুন তৈরী করা', 'Crear nuevo', NULL, NULL, NULL, 'नया बनाओ'),
(588, 'religion_name', 'Religion Name', 'ধর্ম নাম', 'Religión Nombre', NULL, NULL, NULL, 'धर्म का नाम'),
(589, 'you_have_successfully_edited_the_data!', 'You Have Successfully Edited The Data!', 'আপনি ডেটা সফলভাবে সম্পাদনা করেছেন!', '¡Has editado con éxito los datos!', NULL, NULL, NULL, 'आपने सफलतापूर्वक डेटा संपादित किया है!'),
(590, 'castes', 'Castes', 'জাতি', 'Castas', NULL, NULL, NULL, 'जाति'),
(591, 'caste_name', 'Caste Name', 'জাস্ট নাম', 'Nombre de casta', NULL, NULL, NULL, 'जाति का नाम'),
(592, 'sub_castes', 'Sub Castes', 'উপজাত', 'Subcastas', NULL, NULL, NULL, 'उप जातियां'),
(593, 'sub_caste_name', 'Sub Caste Name', 'উপজাত নাম', 'Nombre de la casta secundaria', NULL, NULL, NULL, 'उप जाति का नाम'),
(594, 'languages', 'Languages', 'ভাষাসমূহ', 'Idiomas', NULL, NULL, NULL, 'बोली'),
(595, 'language_name', 'Language Name', 'ভাষার নাম', 'Nombre del lenguaje', NULL, NULL, NULL, 'भाषा का नाम'),
(596, 'countries', 'Countries', 'দেশ', 'Países', NULL, NULL, NULL, 'देश'),
(597, 'country_name', 'Country Name', 'দেশের নাম', 'Nombre del país', NULL, NULL, NULL, 'देश का नाम'),
(598, 'states', 'States', 'যুক্তরাষ্ট্র', 'Estados', NULL, NULL, NULL, 'राज्य अमेरिका'),
(599, 'state_name', 'State Name', 'রাজ্য নাম', 'Nombre del Estado', NULL, NULL, NULL, 'राज्य का नाम'),
(600, 'family_values', 'Family Values', 'পারিবারিক মূল্যবোধ', 'Valores familiares', NULL, NULL, NULL, 'पारिवारिक मान्यता'),
(601, 'family_value_name', 'Family Value Name', 'পারিবারিক মূল্য নাম', 'Nombre del valor familiar', NULL, NULL, NULL, 'पारिवारिक मूल्य का नाम'),
(602, 'family_statuss', 'Family Statuss', 'পারিবারিক স্টেটাস', 'Familia Statuss', NULL, NULL, NULL, 'पारिवारिक Statuss'),
(603, 'family_status_name', 'Family Status Name', 'পারিবারিক স্থিতি নাম', 'Nombre del estado familiar', NULL, NULL, NULL, 'पारिवारिक स्थिति का नाम'),
(604, 'on_behalfs', 'On Behalfs', 'বেহাফদের উপর', 'En nombre de', NULL, NULL, NULL, 'Behalfs पर'),
(605, 'on_behalf_name', 'On Behalf Name', 'নাম', 'Nombre en nombre', NULL, NULL, NULL, 'Behalf नाम पर'),
(606, 'profile_sections_configuration', 'Profile Sections Configuration', 'প্রোফাইল বিভাগ কনফিগারেশন', 'Configuración de secciones de perfil', NULL, NULL, NULL, 'प्रोफाइल अनुभाग विन्यास'),
(607, 'hobbies_and_interests', 'Hobbies And Interests', 'শখ ও আগ্রহ', 'Pasatiempos e intereses', NULL, NULL, NULL, 'शौक एवं रुचियाँ'),
(608, 'family_information', 'Family Information', 'পারিবারিক তথ্য', 'Información familiar', NULL, NULL, NULL, 'परिवार की जानकारी'),
(609, 'you_have_successfully_updated_the_settings!', 'You Have Successfully Updated The Settings!', 'আপনি সেটিংস সফলভাবে আপডেট করেছেন!', '¡Has actualizado con éxito la configuración!', NULL, NULL, NULL, 'आपने सेटिंग्स को सफलतापूर्वक अपडेट किया है!'),
(610, 'social_media_comments_configuration', 'Social Media Comments Configuration', 'সামাজিক মিডিয়া মন্তব্য কনফিগারেশন', 'Configuración de comentarios de redes sociales', NULL, NULL, NULL, 'सोशल मीडिया टिप्पणियाँ कॉन्फ़िगरेशन'),
(611, 'type', 'Type', 'আদর্শ', 'Tipo', NULL, NULL, NULL, 'प्रकार'),
(612, 'discus', 'Discus', 'চাকতি', 'Disco', NULL, NULL, NULL, 'चक्र'),
(613, 'discus_id', 'Discus Id', 'ডিস্কস আইডি', 'Discus Id', NULL, NULL, NULL, 'डिस्कस आईडी'),
(614, 'your_discus_id', 'Your Discus Id', 'আপনার ডিস্ক আইডি', 'Su ID de discusión', NULL, NULL, NULL, 'आपका डिस्कस आईडी'),
(615, 'facebook_comment_id', 'Facebook Comment Id', 'ফেসবুক মন্তব্য আইডি', 'ID de comentario de Facebook', NULL, NULL, NULL, 'फेसबुक टिप्पणी आईडी'),
(616, 'your_facebook_comment_id', 'Your Facebook Comment Id', 'আপনার ফেসবুক মন্তব্য আইডি', 'Su ID de comentario de Facebook', NULL, NULL, NULL, 'आपका फेसबुक टिप्पणी आईडी'),
(617, 'twilio_settings', 'Twilio Settings', 'Twilio সেটিংস', 'Configuración de Twilio', NULL, NULL, NULL, 'Twilio सेटिंग्स'),
(618, 'twilio_settings_configuration', 'Twilio Settings Configuration', 'Twilio সেটিংস কনফিগারেশন', 'Configuración de configuración Twilio', NULL, NULL, NULL, 'Twilio सेटिंग्स विन्यास'),
(619, 'twilio_activation', 'Twilio Activation', 'Twilio অ্যাক্টিভেশন', 'Activación Twilio', NULL, NULL, NULL, 'Twilio सक्रियण'),
(620, 'account_sid', 'Account Sid', 'অ্যাকাউন্ট সিড', 'Cuenta Sid', NULL, NULL, NULL, 'खाता सिड'),
(621, 'authetication_token', 'Authetication Token', 'অটেটিকেশন টোকেন', 'Token de Authetication', NULL, NULL, NULL, 'स्वभाव टोकन'),
(622, 'sender_phone_number', 'Sender Phone Number', 'প্রেরক ফোন নম্বর', 'Número de teléfono del remitente', NULL, NULL, NULL, 'प्रेषक फोन नंबर'),
(623, 'msg91_settings', 'Msg91 Settings', 'Msg91 সেটিংস', 'Configuración de Msg91', NULL, NULL, NULL, 'Msg91 सेटिंग्स'),
(624, 'msg91_settings_configuration', 'Msg91 Settings Configuration', 'Msg91 সেটিংস কনফিগারেশন', 'Configuración de configuración Msg91', NULL, NULL, NULL, 'Msg91 सेटिंग्स कॉन्फ़िगरेशन'),
(625, 'msg91_activation', 'Msg91 Activation', 'Msg91 অ্যাক্টিভেশন', 'Activación Msg91', NULL, NULL, NULL, 'Msg91 सक्रियण'),
(626, 'account_type', 'Account Type', 'অ্যাকাউন্ট ধরন', 'Tipo de cuenta', NULL, NULL, NULL, 'खाते का प्रकार'),
(627, 'test', 'Test', 'পরীক্ষা', 'Prueba', NULL, NULL, NULL, 'परीक्षा'),
(628, 'original', 'Original', 'মূল', 'Original', NULL, NULL, NULL, 'मूल'),
(629, 'authentication_key', 'Authentication Key', 'প্রমাণীকরণ কী', 'Clave de autenticación', NULL, NULL, NULL, 'प्रमाणीकरण कुंजी'),
(630, 'sender_ID', 'Sender ID', 'প্রেরকের আইডি', 'identificación del remitente', NULL, NULL, NULL, 'प्रेषक आईडी'),
(631, 'country_code', 'Country Code', 'কান্ট্রি কোড', 'Código de país', NULL, NULL, NULL, 'देश कोड'),
(632, 'route', 'Route', 'রুট', 'Ruta', NULL, NULL, NULL, 'मार्ग'),
(633, 'SMS_send_to_members', 'SMS Send To Members', 'এসএমএস সদস্য পাঠান', 'SMS Enviar a los miembros', NULL, NULL, NULL, 'एसएमएस सदस्यों को भेजें'),
(634, 'send_message_by', 'Send Message By', 'বার্তা পাঠান', 'Enviar mensaje por', NULL, NULL, NULL, 'द्वारा संदेश भेजें'),
(635, 'select_members', 'Select Members', 'সদস্য নির্বাচন করুন', 'Seleccionar miembros', NULL, NULL, NULL, 'सदस्यों का चयन करें'),
(636, 'primium_members', 'Primium Members', 'প্রিমিয়াম সদস্যদের', 'Miembros de Primium', NULL, NULL, NULL, 'Primium सदस्य'),
(637, 'language_list', 'Language List', 'ভাষা তালিকা', 'Lista de idiomas', NULL, NULL, NULL, 'भाषा सूची'),
(638, '#', '#', '#', '#', NULL, NULL, NULL, '#'),
(639, 'icon', 'Icon', 'আইকন', 'Icono', NULL, NULL, NULL, 'चिह्न'),
(640, 'set_translations', 'Set Translations', 'অনুবাদ সেট করুন', 'Establecer traducciones', NULL, NULL, NULL, 'सेट अनुवाद'),
(641, 'publish', 'Publish', 'প্রকাশ করা', 'Publicar', NULL, NULL, NULL, 'प्रकाशित करना'),
(642, 'this_language?', 'This Language?', 'এই ভাষা?', '¿Este lenguaje?', NULL, NULL, NULL, 'इस भाषा?'),
(643, 'add_language', 'Add Language', 'ভাষা যোগ করুন', 'Añadir idioma', NULL, NULL, NULL, 'भाषा जोड़ें'),
(644, 'edit_language', 'Edit Language', 'ভাষা সম্পাদনা করুন', 'Editar idioma', NULL, NULL, NULL, 'भाषा संपादित करें'),
(645, 'word', 'Word', 'শব্দ', 'Palabra', NULL, NULL, NULL, 'शब्द'),
(646, 'translation', 'Translation', 'অনুবাদ', 'Traducción', NULL, NULL, NULL, 'अनुवाद'),
(647, 'translate', 'Translate', 'অনুবাদ', 'Traducir', NULL, NULL, NULL, 'अनुवाद करना'),
(648, 'save_all', 'Save All', 'সব সংরক্ষণ করুন', 'Salvar a todos', NULL, NULL, NULL, 'सभी को सुरक्षित करें'),
(649, 'manage_details', 'Manage Details', 'বিস্তারিত পরিচালনা করুন', 'Administrar detalles', NULL, NULL, NULL, 'विवरण प्रबंधित करें'),
(650, 'your_current_password', 'Your Current Password', 'আপনার বর্তমান পাসওয়ার্ড', 'Tu contraseña actual', NULL, NULL, NULL, 'आपका वर्तमान पासवर्ड'),
(651, 'your_new_password', 'Your New Password', 'আপনার নতুন গোপন নাম্বার', 'Tu nueva contraseña', NULL, NULL, NULL, 'आपका नया पासवर्ड'),
(652, 'admin_login_background', 'Admin Login Background', 'অ্যাডমিন লগইন ব্যাকগ্রাউন্ড', 'Fondo de acceso de administrador', NULL, NULL, NULL, 'व्यवस्थापक लॉगिन पृष्ठभूमि'),
(653, 'admin_forget_password_background', 'Admin Forget Password Background', 'অ্যাডমিন পাসওয়ার্ড ব্যাকগ্রাউন্ড ভুলে', 'Admin olvida el fondo de la contraseña', NULL, NULL, NULL, 'व्यवस्थापक पासवर्ड पृष्ठभूमि भूल जाओ'),
(654, 'you_have_successfully_updated_your_profile!', 'You Have Successfully Updated Your Profile!', 'আপনি সফলভাবে আপনার প্রোফাইল আপডেট করেছি!', '¡Ha actualizado correctamente tu perfil!', NULL, NULL, NULL, 'आपने आपका प्रोफाइल सफलतापूर्वक अद्यतन किया है!'),
(655, 'you_have_successfully_updated_the_backgroundimage!', 'You Have Successfully Updated The Backgroundimage!', 'আপনি ব্যাকগ্রাউন্ডিফাই সফলভাবে আপডেট করেছেন!', '¡Has actualizado con éxito la imagen de fondo!', NULL, NULL, NULL, 'आपने पृष्ठभूमि को सफलतापूर्वक अपडेट किया है!'),
(656, 'seo_settings_configuration', 'Seo Settings Configuration', 'এসইও সেটিংস কনফিগারেশন', 'Configuración de configuración de Seo', NULL, NULL, NULL, 'एसईओ सेटिंग्स विन्यास'),
(657, 'keywords', 'Keywords', 'কীওয়ার্ড', 'Palabras clave', NULL, NULL, NULL, 'कीवर्ड'),
(658, 'author', 'Author', 'লেখক', 'Autor', NULL, NULL, NULL, 'लेखक'),
(659, 'revisit_after', 'Revisit After', 'পরে ফিরে দেখুন', 'Revisitar después', NULL, NULL, NULL, 'बाद में पुनरीक्षण करें'),
(660, 'day(s)', 'Day(s)', 'দিন (গুলি)', 'Dias)', NULL, NULL, NULL, 'दिवस (रों)'),
(661, 'description', 'Description', 'বিবরণ', 'Descripción', NULL, NULL, NULL, 'विवरण'),
(662, 'manage_staffs', 'Manage Staffs', 'স্টাফদের পরিচালনা করুন', 'Administrar personal', NULL, NULL, NULL, 'कर्मचारियों को प्रबंधित करें'),
(663, 'manage_staff', 'Manage Staff', 'স্টাফ পরিচালনা করুন', 'Administrar el personal', NULL, NULL, NULL, 'कर्मचारी प्रबंधित करें'),
(664, 'all_roles', 'All Roles', 'সমস্ত ভূমিকা', 'Todos los roles', NULL, NULL, NULL, 'सभी भूमिकाएं'),
(665, 'role', 'Role', 'ভূমিকা', 'Papel', NULL, NULL, NULL, 'भूमिका'),
(666, 'staffs_role_panel', 'Staffs Role Panel', 'স্টাফ রোল প্যানেল', 'Panel de funciones del personal', NULL, NULL, NULL, 'कर्मचारी भूमिका पैनल'),
(667, 'manage_role', 'Manage Role', 'ভূমিকা পরিচালনা করুন', 'Administrar rol', NULL, NULL, NULL, 'भूमिका का प्रबंधन करें'),
(668, 'unblock_user', 'Unblock User', 'ব্যবহারকারীকে অবরোধ মুক্ত করুন', 'Desbloquear usuario', NULL, NULL, NULL, 'उपयोगकर्ता को अनब्लॉक करें'),
(669, 'admin_sign_in', 'Admin Sign In', 'অ্যাডমিন সাইন ইন', 'Iniciar sesión Admin', NULL, NULL, NULL, 'व्यवस्थापक साइन इन करें'),
(670, 'sign_in', 'Sign In', 'প্রবেশ কর', 'Registrarse', NULL, NULL, NULL, 'साइन इन करें'),
(671, 'forgot_password?', 'Forgot Password?', 'পাসওয়ার্ড ভুলে গেছেন?', '¿Se te olvidó tu contraseña?', NULL, NULL, NULL, 'पासवर्ड भूल गए?'),
(672, 'create_a_new_account', 'Create A New Account', 'একটি নতুন অ্যাকাউন্ট তৈরি করুন', 'Crea una cuenta nueva', NULL, NULL, NULL, 'एक नया खाता बनाएं'),
(673, 'currency_name', 'Currency Name', 'মুদ্রা নাম', 'Nombre de Moneda', NULL, NULL, NULL, 'मुद्रा का नाम'),
(674, 'currency_symbol', 'Currency Symbol', 'মুদ্রা প্রতীক', 'Símbolo de moneda', NULL, NULL, NULL, 'मुद्रा चिन्ह'),
(675, 'default', 'Default', 'ডিফল্ট', 'Defecto', NULL, NULL, NULL, 'चूक'),
(676, 'saving', 'Saving', 'রক্ষা', 'Ahorro', NULL, NULL, NULL, 'बचत'),
(677, 'exchange_rate_updated', 'Exchange Rate Updated', 'বিনিময় হার আপডেট করা হয়েছে', 'Tipo de cambio actualizado', NULL, NULL, NULL, 'एक्सचेंज रेट अपडेट किया गया'),
(678, 'you_have_successfully_added_the_photo_into_your_gallery!', 'You Have Successfully Added The Photo Into Your Gallery!', 'আপনার গ্যালারিতে ছবিটি সফলভাবে জুড়েছে!', '¡Has añadido exitosamente la foto a tu galería!', NULL, NULL, NULL, 'आपने सफलतापूर्वक फोटो को अपनी गैलरी में जोड़ा है!'),
(679, 'you_have_been_blocked_by_the_admin', 'You Have Been Blocked By The Admin', 'আপনি অ্যাডমিন দ্বারা ব্লক করা হয়েছে', 'Usted ha sido bloqueado por el administrador', NULL, NULL, NULL, 'आपको व्यवस्थापक द्वारा अवरुद्ध किया गया है'),
(680, 'have_you_found_your_partner_from_this_website?', 'Have You Found Your Partner From This Website?', 'আপনি এই ওয়েবসাইট থেকে আপনার অংশীদার খুঁজে পেয়েছেন?', '¿Encontraste a tu pareja en este sitio web?', NULL, NULL, NULL, 'क्या आपने इस वेबसाइट से अपना साथी पाया है?'),
(681, 'Next', 'Next', 'পরবর্তী', 'Siguiente', NULL, NULL, NULL, 'आगामी'),
(682, 'do_you_want_to_share_your_story?', 'Do You Want To Share Your Story?', 'আপনি আপনার গল্প ভাগ করতে চান?', '¿Quieres compartir tu historia?', NULL, NULL, NULL, 'क्या आप अपनी कहानी साझा करना चाहते हैं?'),
(683, 'you_have_successfully_added_your_story._please_wait_till_it_is_approved!', 'You Have Successfully Added Your Story. Please Wait Till It Is Approved!', 'আপনি আপনার গল্প সফলভাবে যোগ করেনি এটি অনুমোদন পর্যন্ত অপেক্ষা করুন!', 'Usted ha agregado exitosamente su historia. Por favor espere hasta que se apruebe!', NULL, NULL, NULL, 'आपने सफलतापूर्वक अपनी कहानी जोड़ दी है। कृपया इसे स्वीकृत होने तक प्रतीक्षा करें!'),
(684, 'me', 'Me', 'আমাকে', 'Yo', NULL, NULL, NULL, 'मुझे'),
(685, 'you_have_registered_successfully._please_log_in_to_continue', 'You Have Registered Successfully. Please Log In To Continue', NULL, NULL, NULL, NULL, NULL, 'आपने सफलतापूर्वक पंजीकरण कर लिया है। जारी रखने के लिए कृपया लॉग इन करें'),
(686, 'search_tour_soul_mate', 'Search Tour Soul Mate', NULL, NULL, NULL, NULL, NULL, 'टूर सोल मेट खोजें'),
(687, 'search_your_soul_mate', 'Search Your Soul Mate', NULL, NULL, NULL, NULL, NULL, 'अपने आत्मा दोस्त खोजें'),
(688, 'language_icon', 'Language Icon', NULL, NULL, NULL, NULL, NULL, 'भाषा चिह्न'),
(689, 'you_have_successfully_added_the_language!', 'You Have Successfully Added The Language!', NULL, NULL, NULL, NULL, NULL, 'आपने भाषा को सफलतापूर्वक जोड़ा है!'),
(690, 'search_style', 'Search Style', NULL, NULL, NULL, NULL, NULL, NULL),
(691, 'slider_position', 'Slider Position', NULL, NULL, NULL, NULL, NULL, NULL),
(692, 'searching_heading', 'Searching Heading', NULL, NULL, NULL, NULL, NULL, NULL),
(693, 'search_box_heading', 'Search Box Heading', NULL, NULL, NULL, NULL, NULL, NULL),
(694, 'your_payment_via_payUMoney_has_been_failed!', 'Your Payment Via PayUMoney Has Been Failed!', NULL, NULL, NULL, NULL, NULL, NULL),
(695, 'not_approved', 'Not Approved', NULL, NULL, NULL, NULL, NULL, NULL),
(696, 'home_default_currency', 'Home Default Currency', NULL, NULL, NULL, NULL, NULL, NULL),
(697, 'system_default_currency', 'System Default Currency', NULL, NULL, NULL, NULL, NULL, NULL),
(698, 'changing_system_default_currency_will_require_changing_all_price_values', 'Changing System Default Currency Will Require Changing All Price Values', NULL, NULL, NULL, NULL, NULL, NULL),
(699, 'currency_format', 'Currency Format', NULL, NULL, NULL, NULL, NULL, NULL),
(700, 'symbol_format', 'Symbol Format', NULL, NULL, NULL, NULL, NULL, NULL),
(701, 'no_of_decimals', 'No Of Decimals', NULL, NULL, NULL, NULL, NULL, NULL),
(702, 'edit_staff', 'Edit Staff', NULL, NULL, NULL, NULL, NULL, NULL),
(703, 'staff_panel', 'Staff Panel', NULL, NULL, NULL, NULL, NULL, NULL),
(704, 'staff_name', 'Staff Name', NULL, NULL, NULL, NULL, NULL, NULL),
(705, 'staff_email', 'Staff Email', NULL, NULL, NULL, NULL, NULL, NULL),
(706, 'phone_no.', 'Phone No.', NULL, NULL, NULL, NULL, NULL, NULL),
(707, 'staff_phone_no.', 'Staff Phone No.', NULL, NULL, NULL, NULL, NULL, NULL),
(708, 'staff_address', 'Staff Address', NULL, NULL, NULL, NULL, NULL, NULL),
(709, 'you_have_successfully_added_the_data!', 'You Have Successfully Added The Data!', NULL, NULL, NULL, NULL, NULL, NULL),
(710, 'add_staff', 'Add Staff', NULL, NULL, NULL, NULL, NULL, NULL),
(711, 'create_new_staff', 'Create New Staff', NULL, NULL, NULL, NULL, NULL, NULL),
(712, 'add_role', 'Add Role', NULL, NULL, NULL, NULL, NULL, NULL),
(713, 'create_new_role', 'Create New Role', NULL, NULL, NULL, NULL, NULL, NULL),
(714, 'role_name', 'Role Name', NULL, NULL, NULL, NULL, NULL, NULL),
(715, 'role_description', 'Role Description', NULL, NULL, NULL, NULL, NULL, NULL),
(716, 'access_permissions', 'Access Permissions', NULL, NULL, NULL, NULL, NULL, NULL),
(717, 'manage_admin', 'Manage Admin', NULL, NULL, NULL, NULL, NULL, NULL),
(718, 'activasion', 'Activasion', NULL, NULL, NULL, NULL, NULL, NULL),
(719, 'add_members', 'Add Members', NULL, NULL, NULL, NULL, NULL, NULL),
(720, 'cities', 'Cities', NULL, NULL, NULL, NULL, NULL, NULL),
(721, 'paypal_settings', 'Paypal Settings', NULL, NULL, NULL, NULL, NULL, NULL),
(722, 'paypal_email', 'Paypal Email', NULL, NULL, NULL, NULL, NULL, NULL),
(723, 'your_email_address', 'Your Email Address', NULL, NULL, NULL, NULL, NULL, NULL),
(724, 'sandbox', 'Sandbox', NULL, NULL, NULL, NULL, NULL, NULL),
(725, 'stripe_settings', 'Stripe Settings', NULL, NULL, NULL, NULL, NULL, NULL),
(726, 'secret_key', 'Secret Key', NULL, NULL, NULL, NULL, NULL, NULL),
(727, 'your_secret_key', 'Your Secret Key', NULL, NULL, NULL, NULL, NULL, NULL),
(728, 'publishable_key', 'Publishable Key', NULL, NULL, NULL, NULL, NULL, NULL),
(729, 'your_publishable_key', 'Your Publishable Key', NULL, NULL, NULL, NULL, NULL, NULL),
(730, 'payUmoney_settings', 'PayUmoney Settings', NULL, NULL, NULL, NULL, NULL, NULL),
(731, 'merchant_key', 'Merchant Key', NULL, NULL, NULL, NULL, NULL, NULL),
(732, 'merchant_SALT', 'Merchant SALT', NULL, NULL, NULL, NULL, NULL, NULL),
(733, 'password_reset_email', 'Password Reset Email', NULL, NULL, NULL, NULL, NULL, NULL),
(734, 'package_purchase_email', 'Package Purchase Email', NULL, NULL, NULL, NULL, NULL, NULL),
(735, 'account_opening_email', 'Account Opening Email', NULL, NULL, NULL, NULL, NULL, NULL),
(736, 'staff_account_add_email', 'Staff Account Add Email', NULL, NULL, NULL, NULL, NULL, NULL),
(737, 'email_body', 'Email Body', NULL, NULL, NULL, NULL, NULL, NULL),
(738, 'Do Not Change The Variables Like', 'Do Not Change The Variables Like', NULL, NULL, NULL, NULL, NULL, NULL),
(739, 'captcha_settings_configuration', 'Captcha Settings Configuration', NULL, NULL, NULL, NULL, NULL, NULL),
(740, 'captcha_activation', 'Captcha Activation', NULL, NULL, NULL, NULL, NULL, NULL),
(741, 'public_key', 'Public Key', NULL, NULL, NULL, NULL, NULL, NULL),
(742, 'private_key', 'Private Key', NULL, NULL, NULL, NULL, NULL, NULL),
(743, 'to_colse_your_account_we_want_some_informations._please_answer_the_question_below', 'To Colse Your Account We Want Some Informations. Please Answer The Question Below', NULL, NULL, NULL, NULL, NULL, NULL),
(744, 'member_registration_failed!', 'Member Registration Failed!', NULL, NULL, NULL, NULL, NULL, NULL),
(745, 'no_details_available', 'No Details Available', NULL, NULL, NULL, NULL, NULL, NULL),
(746, 'FAQ_configuration', 'FAQ Configuration', NULL, NULL, NULL, NULL, NULL, NULL),
(747, 'question', 'Question', NULL, NULL, NULL, NULL, NULL, NULL),
(748, 'add_more_FAQ', 'Add More FAQ', NULL, NULL, NULL, NULL, NULL, NULL),
(749, 'answer', 'Answer', NULL, NULL, NULL, NULL, NULL, NULL),
(750, 'hobby', 'Hobby', NULL, NULL, NULL, NULL, NULL, NULL),
(751, 'interest', 'Interest', NULL, NULL, NULL, NULL, NULL, NULL),
(752, 'music', 'Music', NULL, NULL, NULL, NULL, NULL, NULL),
(753, 'books', 'Books', NULL, NULL, NULL, NULL, NULL, NULL),
(754, 'movie', 'Movie', NULL, NULL, NULL, NULL, NULL, NULL),
(755, 'TV_show', 'TV Show', NULL, NULL, NULL, NULL, NULL, NULL),
(756, 'sports_show', 'Sports Show', NULL, NULL, NULL, NULL, NULL, NULL),
(757, 'fitness_activity', 'Fitness Activity', NULL, NULL, NULL, NULL, NULL, NULL),
(758, 'cuisine', 'Cuisine', NULL, NULL, NULL, NULL, NULL, NULL),
(759, 'dress_style', 'Dress Style', NULL, NULL, NULL, NULL, NULL, NULL),
(760, 'father', 'Father', NULL, NULL, NULL, NULL, NULL, NULL),
(761, 'mother', 'Mother', NULL, NULL, NULL, NULL, NULL, NULL),
(762, 'brother_/_sister', 'Brother / Sister', NULL, NULL, NULL, NULL, NULL, NULL),
(763, 'hobbies_&_interest', 'Hobbies & Interest', NULL, NULL, NULL, NULL, NULL, NULL),
(764, 'you_have_successfully_edited_the_profile!', 'You Have Successfully Edited The Profile!', NULL, NULL, NULL, NULL, NULL, NULL),
(765, '_Feet', ' Feet', NULL, NULL, NULL, NULL, NULL, NULL),
(766, '____Feet', '    Feet', NULL, NULL, NULL, NULL, NULL, NULL),
(767, 'sticky_header', 'Sticky Header', NULL, NULL, NULL, NULL, NULL, NULL),
(768, 'create_a_new_package', 'Create A New Package', NULL, NULL, NULL, NULL, NULL, NULL),
(769, 'add_new_package', 'Add New Package', NULL, NULL, NULL, NULL, NULL, NULL),
(770, 'add_package', 'Add Package', NULL, NULL, NULL, NULL, NULL, NULL),
(771, 'you_have_successfully_added_the_package!', 'You Have Successfully Added The Package!', NULL, NULL, NULL, NULL, NULL, NULL),
(772, 'are_you_sure_you_want_to_delete_this_package?', 'Are You Sure You Want To Delete This Package?', NULL, NULL, NULL, NULL, NULL, NULL),
(773, 'you_have_successfully_deleted_the_package!', 'You Have Successfully Deleted The Package!', NULL, NULL, NULL, NULL, NULL, NULL),
(774, 'upgrade_package', 'Upgrade Package', NULL, NULL, NULL, NULL, NULL, NULL),
(775, 'choose_your_package', 'Choose Your Package', NULL, NULL, NULL, NULL, NULL, NULL),
(776, 'you_have_successfully_upgraded_the_member_package!', 'You Have Successfully Upgraded The Member Package!', NULL, NULL, NULL, NULL, NULL, NULL),
(777, 'you_have_successfully_updated_your_payments_settings!', 'You Have Successfully Updated Your Payments Settings!', NULL, NULL, NULL, NULL, NULL, NULL),
(778, 'failed_to_delete_this_member!', 'Failed To Delete This Member!', NULL, NULL, NULL, NULL, NULL, NULL),
(779, 'deleted_members', 'Deleted Members', NULL, NULL, NULL, NULL, NULL, NULL),
(780, 'Deleted', 'Deleted', NULL, NULL, NULL, NULL, NULL, NULL),
(781, 'restore', 'Restore', NULL, NULL, NULL, NULL, NULL, NULL),
(782, 'deleted_members_list', 'Deleted Members List', NULL, NULL, NULL, NULL, NULL, NULL),
(783, 'you_have_successfully_restored_this_member!', 'You Have Successfully Restored This Member!', NULL, NULL, NULL, NULL, NULL, NULL),
(784, 'google_analytics_settings', 'Google Analytics Settings', NULL, NULL, NULL, NULL, NULL, NULL),
(785, 'google_analytics_settings_configuration', 'Google Analytics Settings Configuration', NULL, NULL, NULL, NULL, NULL, NULL),
(786, 'google_analytics_activation', 'Google Analytics Activation', NULL, NULL, NULL, NULL, NULL, NULL),
(787, 'google_analytics_key', 'Google Analytics Key', NULL, NULL, NULL, NULL, NULL, NULL),
(788, 'your_payment_via_payUMoney_has_been_successfull!', 'Your Payment Via PayUMoney Has Been Successfull!', NULL, NULL, NULL, NULL, NULL, NULL),
(789, 'report_profile', 'Report Profile', NULL, NULL, NULL, NULL, NULL, NULL),
(790, 'please_log_in_to_report_this_member', 'Please Log In To Report This Member', NULL, NULL, NULL, NULL, NULL, NULL),
(791, 'reporting', 'Reporting', NULL, NULL, NULL, NULL, NULL, NULL),
(792, 'reported', 'Reported', NULL, NULL, NULL, NULL, NULL, NULL),
(793, 'you_have_reported_this_member!', 'You Have Reported This Member!', NULL, NULL, NULL, NULL, NULL, NULL),
(794, 'profile_report', 'Profile Report', NULL, NULL, NULL, NULL, NULL, NULL),
(795, 'profile_reported', 'Profile Reported', NULL, NULL, NULL, NULL, NULL, NULL),
(796, 'you_already_reported_this_persion', 'You Already Reported This Persion', NULL, NULL, NULL, NULL, NULL, NULL),
(797, 'approval_status', 'Approval Status', NULL, NULL, NULL, NULL, NULL, NULL),
(798, 'account_opening_from_admin_email', 'Account Opening From Admin Email', NULL, NULL, NULL, NULL, NULL, NULL),
(799, 'account_opening_from_user_email', 'Account Opening From User Email', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `site_language` (`word_id`, `word`, `english`, `Bangla`, `Spanish`, `Arabic`, `French`, `Chinese`, `lang_7`) VALUES
(800, 'member_approval_email', 'Member Approval Email', NULL, NULL, NULL, NULL, NULL, NULL),
(801, 'thanks_for_registration', 'Thanks For Registration', NULL, NULL, NULL, NULL, NULL, NULL),
(802, 'you_have_to_wait_for_admin_approval', 'You Have To Wait For Admin Approval', NULL, NULL, NULL, NULL, NULL, NULL),
(803, 'approval_confirmation_will_be_sent_to_your_email', 'Approval Confirmation Will Be Sent To Your Email', NULL, NULL, NULL, NULL, NULL, NULL),
(804, 'check_your_email', 'Check Your Email', NULL, NULL, NULL, NULL, NULL, NULL),
(805, 'after_confirmation_you_can_', 'After Confirmation You Can ', NULL, NULL, NULL, NULL, NULL, NULL),
(806, 'login_from_here', 'Login From Here', NULL, NULL, NULL, NULL, NULL, NULL),
(807, 'as_vendor', 'As Vendor', NULL, NULL, NULL, NULL, NULL, NULL),
(808, 'account_not_approved._wait_for_approval', 'Account Not Approved. Wait For Approval', NULL, NULL, NULL, NULL, NULL, NULL),
(809, 'you_have_successfully_approved_this_member!', 'You Have Successfully Approved This Member!', NULL, NULL, NULL, NULL, NULL, NULL),
(810, 'member_registration_email_to_admin', 'Member Registration Email To Admin', NULL, NULL, NULL, NULL, NULL, NULL),
(811, 'account_not_approved._wait_for_approval!', 'Account Not Approved. Wait For Approval!', NULL, NULL, NULL, NULL, NULL, NULL),
(812, 'after_registration_message', 'After Registration Message', NULL, NULL, NULL, NULL, NULL, NULL),
(813, 'after_registration', 'After Registration', NULL, NULL, NULL, NULL, NULL, NULL),
(814, 'registration_message', 'Registration Message', NULL, NULL, NULL, NULL, NULL, NULL),
(815, 'member_approval_by_admin', 'Member Approval By Admin', NULL, NULL, NULL, NULL, NULL, NULL),
(816, 'account_opening_from_user_email_when_member_member_approval_active', 'Account Opening From User Email When Member Member Approval Active', NULL, NULL, NULL, NULL, NULL, NULL),
(817, 'account_opening_from_user_email._when_member_member_approval_active', 'Account Opening From User Email. When Member Member Approval Active', NULL, NULL, NULL, NULL, NULL, NULL),
(818, 'time_zone', 'Time Zone', NULL, NULL, NULL, NULL, NULL, NULL),
(819, 'asia/', 'Asia/', NULL, NULL, NULL, NULL, NULL, NULL),
(820, 'dhaka', 'Dhaka', NULL, NULL, NULL, NULL, NULL, NULL),
(821, 'profile_image', 'Profile Image', NULL, NULL, NULL, NULL, NULL, NULL),
(822, 'this_member_is_moved_to_deleted_member_list!', 'This Member Is Moved To Deleted Member List!', NULL, NULL, NULL, NULL, NULL, NULL),
(823, 'permanently_delete_member', 'Permanently Delete Member', NULL, NULL, NULL, NULL, NULL, NULL),
(824, 'are_you_sure_you_want_to_delete_this_data_permanently?', 'Are You Sure You Want To Delete This Data Permanently?', NULL, NULL, NULL, NULL, NULL, NULL),
(825, 'you_have_successfully_deleted_this_member_permanently!', 'You Have Successfully Deleted This Member Permanently!', NULL, NULL, NULL, NULL, NULL, NULL),
(826, 'newsletter', 'Newsletter', NULL, NULL, NULL, NULL, NULL, NULL),
(827, 'emails', 'Emails', NULL, NULL, NULL, NULL, NULL, NULL),
(828, 'e-mails_(users)', 'E-mails (users)', NULL, NULL, NULL, NULL, NULL, NULL),
(829, 'from_:_email_address', 'From : Email Address', NULL, NULL, NULL, NULL, NULL, NULL),
(830, 'newsletter_subject', 'Newsletter Subject', NULL, NULL, NULL, NULL, NULL, NULL),
(831, 'send_newsletter', 'Send Newsletter', NULL, NULL, NULL, NULL, NULL, NULL),
(832, 'should_not_be_empty', 'Should Not Be Empty', NULL, NULL, NULL, NULL, NULL, NULL),
(833, 'newsletter_sent_successfully!', 'Newsletter Sent Successfully!', NULL, NULL, NULL, NULL, NULL, NULL),
(834, 'email_verification', 'Email Verification', NULL, NULL, NULL, NULL, NULL, NULL),
(835, 'You Have To Wait For Admin Approval. Approval Confirmation Will Be Sent To Your Email.', 'You Have To Wait For Admin Approval. Approval Confirmation Will Be Sent To Your Email.', NULL, NULL, NULL, NULL, NULL, NULL),
(836, 'Please Verfy Your Email.', 'Please Verfy Your Email.', NULL, NULL, NULL, NULL, NULL, NULL),
(837, 'Please check your email account, and follow instructions within that email to activate your account. ', 'Please Check Your Email Account, And Follow Instructions Within That Email To Activate Your Account. ', NULL, NULL, NULL, NULL, NULL, NULL),
(838, 'email_verified_successfully', 'Email Verified Successfully', NULL, NULL, NULL, NULL, NULL, NULL),
(839, 'email_verified', 'Email Verified', NULL, NULL, NULL, NULL, NULL, NULL),
(840, 'email_not_verified', 'Email Not Verified', NULL, NULL, NULL, NULL, NULL, NULL),
(841, 'account_opening_from_user_email._when_member_member_approval_deactivated', 'Account Opening From User Email. When Member Member Approval Deactivated', NULL, NULL, NULL, NULL, NULL, NULL),
(842, 'Instamojo_settings', 'Instamojo Settings', NULL, NULL, NULL, NULL, NULL, NULL),
(843, 'api_key', 'Api Key', NULL, NULL, NULL, NULL, NULL, NULL),
(844, 'auth_token', 'Auth Token', NULL, NULL, NULL, NULL, NULL, NULL),
(845, 'registration_message_when_member_approval_on', 'Registration Message When Member Approval On', NULL, NULL, NULL, NULL, NULL, NULL),
(846, 'registration_when_member_approval_on', 'Registration When Member Approval On', NULL, NULL, NULL, NULL, NULL, NULL),
(847, 'registration_when_member_approval_off', 'Registration When Member Approval Off', NULL, NULL, NULL, NULL, NULL, NULL),
(848, 'Did_not_get_mail_?', 'Did Not Get Mail ?', NULL, NULL, NULL, NULL, NULL, NULL),
(849, 'send_it_again', 'Send It Again', NULL, NULL, NULL, NULL, NULL, NULL),
(850, 'resend_email_verification_code', 'Resend Email Verification Code', NULL, NULL, NULL, NULL, NULL, NULL),
(851, 'resend', 'Resend', NULL, NULL, NULL, NULL, NULL, NULL),
(852, 'account_opening_by_admin_email', 'Account Opening By Admin Email', NULL, NULL, NULL, NULL, NULL, NULL),
(853, 'resend_email_verification_email', 'Resend Email Verification Email', NULL, NULL, NULL, NULL, NULL, NULL),
(854, 'member_email_verification', 'Member Email Verification', NULL, NULL, NULL, NULL, NULL, NULL),
(855, 'on', 'On', NULL, NULL, NULL, NULL, NULL, NULL),
(856, 'off', 'Off', NULL, NULL, NULL, NULL, NULL, NULL),
(857, 'account_opening_from_user_email._when_member_approval_deactivated', 'Account Opening From User Email. When Member Approval Deactivated', NULL, NULL, NULL, NULL, NULL, NULL),
(858, 'member_email_verification_resend', 'Member Email Verification Resend', NULL, NULL, NULL, NULL, NULL, NULL),
(859, 'email_verification_message', 'Email Verification Message', NULL, NULL, NULL, NULL, NULL, NULL),
(860, 'bulk_member_add', 'Bulk Member Add', NULL, NULL, NULL, NULL, NULL, NULL),
(861, 'premium_packages', 'Premium Packages', NULL, NULL, NULL, NULL, NULL, NULL),
(862, 'backup', 'Backup', NULL, NULL, NULL, NULL, NULL, NULL),
(863, 'bulk_add_member', 'Bulk Add Member', NULL, NULL, NULL, NULL, NULL, NULL),
(864, 'Instructions', 'Instructions', NULL, NULL, NULL, NULL, NULL, NULL),
(865, 'Download the skeleton file and fill it with data.', 'Download The Skeleton File And Fill It With Data.', NULL, NULL, NULL, NULL, NULL, NULL),
(866, 'You can download the example file to understand how the data must be filled', 'You Can Download The Example File To Understand How The Data Must Be Filled', NULL, NULL, NULL, NULL, NULL, NULL),
(867, 'Once you have downloaded and filled the skeleton file , upload it in the form below and\r\n                        submit.', 'Once You Have Downloaded And Filled The Skeleton File , Upload It In The Form Below And\r\n                        Submit.', NULL, NULL, NULL, NULL, NULL, NULL),
(868, 'Do not upload more than 50 member at a time .', 'Do Not Upload More Than 50 Member At A Time .', NULL, NULL, NULL, NULL, NULL, NULL),
(869, 'Members should be uploaded successfully.', 'Members Should Be Uploaded Successfully.', NULL, NULL, NULL, NULL, NULL, NULL),
(870, 'Download member bulk add skeleton file', 'Download Member Bulk Add Skeleton File', NULL, NULL, NULL, NULL, NULL, NULL),
(871, 'Download member bulk add example file', 'Download Member Bulk Add Example File', NULL, NULL, NULL, NULL, NULL, NULL),
(872, 'More Instructions', 'More Instructions', NULL, NULL, NULL, NULL, NULL, NULL),
(873, 'Gender, On Behalf and Package should be in', 'Gender, On Behalf And Package Should Be In', NULL, NULL, NULL, NULL, NULL, NULL),
(874, 'numerical ids', 'Numerical Ids', NULL, NULL, NULL, NULL, NULL, NULL),
(875, 'Male Id = 1, Female Id = 2', 'Male Id = 1, Female Id = 2', NULL, NULL, NULL, NULL, NULL, NULL),
(876, 'Click the', 'Click The', NULL, NULL, NULL, NULL, NULL, NULL),
(877, 'On Behalf and Package modals/pop-ups', 'On Behalf And Package Modals/pop-ups', NULL, NULL, NULL, NULL, NULL, NULL),
(878, 'to see the related ids', 'To See The Related Ids', NULL, NULL, NULL, NULL, NULL, NULL),
(879, 'Member email must be unique.', 'Member Email Must Be Unique.', NULL, NULL, NULL, NULL, NULL, NULL),
(880, 'Be careful to enter the member package id.', 'Be Careful To Enter The Member Package Id.', NULL, NULL, NULL, NULL, NULL, NULL),
(881, 'On Behalf', 'On Behalf', NULL, NULL, NULL, NULL, NULL, NULL),
(882, 'Upload members', 'Upload Members', NULL, NULL, NULL, NULL, NULL, NULL),
(883, 'Choose File', 'Choose File', NULL, NULL, NULL, NULL, NULL, NULL),
(884, 'Add Members', 'Add Members', NULL, NULL, NULL, NULL, NULL, NULL),
(885, 'On Behalf IDs', 'On Behalf IDs', NULL, NULL, NULL, NULL, NULL, NULL),
(886, 'On Behalf Name', 'On Behalf Name', NULL, NULL, NULL, NULL, NULL, NULL),
(887, 'Package IDs', 'Package IDs', NULL, NULL, NULL, NULL, NULL, NULL),
(888, 'Package Name', 'Package Name', NULL, NULL, NULL, NULL, NULL, NULL),
(889, 'If you select member email verification off, then registered members email will be auto verified', 'If You Select Member Email Verification Off, Then Registered Members Email Will Be Auto Verified', NULL, NULL, NULL, NULL, NULL, NULL),
(890, 'your_payment_via_instamojo_has_been_successfull!', 'Your Payment Via Instamojo Has Been Successfull!', NULL, NULL, NULL, NULL, NULL, NULL),
(891, 'Instamojo', 'Instamojo', NULL, NULL, NULL, NULL, NULL, NULL),
(892, 'facebook_chat_settings', 'Facebook Chat Settings', NULL, NULL, NULL, NULL, NULL, NULL),
(893, 'facebook_chat_page_id', 'Facebook Chat Page Id', NULL, NULL, NULL, NULL, NULL, NULL),
(894, 'facebook_chat_activation', 'Facebook Chat Activation', NULL, NULL, NULL, NULL, NULL, NULL),
(895, 'facebook_page_id', 'Facebook Page Id', NULL, NULL, NULL, NULL, NULL, NULL),
(896, 'facebook_chat_logged_in_greeting(Optional)', 'Facebook Chat Logged In Greeting(Optional)', NULL, NULL, NULL, NULL, NULL, NULL),
(897, 'hello_sir!', 'Hello Sir!', NULL, NULL, NULL, NULL, NULL, NULL),
(898, 'Facebook Chat Logged Out Greeting(Optional)', 'Facebook Chat Logged Out Greeting(Optional)', NULL, NULL, NULL, NULL, NULL, NULL),
(899, 'thank_you', 'Thank You', NULL, NULL, NULL, NULL, NULL, NULL),
(900, 'Facebook_chat Logged Out Greeting(Optional)', 'Facebook Chat Logged Out Greeting(Optional)', NULL, NULL, NULL, NULL, NULL, NULL),
(901, 'Facebook Chat Theme Color (Optional)', 'Facebook Chat Theme Color (Optional)', NULL, NULL, NULL, NULL, NULL, NULL),
(902, 'facebook_chat_logged-out_greeting(Optional)', 'Facebook Chat Logged-out Greeting(Optional)', NULL, NULL, NULL, NULL, NULL, NULL),
(903, 'facebook-chat_theme-color(Optional)', 'Facebook-chat Theme-color(Optional)', NULL, NULL, NULL, NULL, NULL, NULL),
(904, 'custom_payment_method_1', 'Custom Payment Method 1', NULL, NULL, NULL, NULL, NULL, NULL),
(905, 'number', 'Number', NULL, NULL, NULL, NULL, NULL, NULL),
(906, 'instruction', 'Instruction', NULL, NULL, NULL, NULL, NULL, NULL),
(907, 'custom_payment_method_2', 'Custom Payment Method 2', NULL, NULL, NULL, NULL, NULL, NULL),
(908, 'custom_payment_method_3', 'Custom Payment Method 3', NULL, NULL, NULL, NULL, NULL, NULL),
(909, 'custom_payment_method_4', 'Custom Payment Method 4', NULL, NULL, NULL, NULL, NULL, NULL),
(910, 'seo_image_facebook', 'Seo Image Facebook', NULL, NULL, NULL, NULL, NULL, NULL),
(911, 'seo_image_twitter', 'Seo Image Twitter', NULL, NULL, NULL, NULL, NULL, NULL),
(912, 'Transaction Id', 'Transaction Id', NULL, NULL, NULL, NULL, NULL, NULL),
(913, 'Upload Screenshot or bill copy', 'Upload Screenshot Or Bill Copy', NULL, NULL, NULL, NULL, NULL, NULL),
(914, 'Info/Comment', 'Info/Comment', NULL, NULL, NULL, NULL, NULL, NULL),
(915, 'Enter additional info/comment', 'Enter Additional Info/comment', NULL, NULL, NULL, NULL, NULL, NULL),
(916, 'change_payment_status', 'Change Payment Status', NULL, NULL, NULL, NULL, NULL, NULL),
(917, 'are_you_sure_you_want_change_the_status_to_paid?', 'Are You Sure You Want Change The Status To Paid?', NULL, NULL, NULL, NULL, NULL, NULL),
(918, 'after_changing_the_status_to_paid_member_will_get_the_required_package', 'After Changing The Status To Paid Member Will Get The Required Package', NULL, NULL, NULL, NULL, NULL, NULL),
(919, 'after_changing_the_status_to_paid_member_will_get_the_required', 'After Changing The Status To Paid Member Will Get The Required', NULL, NULL, NULL, NULL, NULL, NULL),
(920, 'custom_payment_method_details', 'Custom Payment Method Details', NULL, NULL, NULL, NULL, NULL, NULL),
(921, 'payment_method', 'Payment Method', NULL, NULL, NULL, NULL, NULL, NULL),
(922, 'transaction_id', 'Transaction Id', NULL, NULL, NULL, NULL, NULL, NULL),
(923, 'method_comment', 'Method Comment', NULL, NULL, NULL, NULL, NULL, NULL),
(924, 'method_bill_copy', 'Method Bill Copy', NULL, NULL, NULL, NULL, NULL, NULL),
(925, 'accept_payment', 'Accept Payment', NULL, NULL, NULL, NULL, NULL, NULL),
(926, 'are_you_sure_you_want_to_accept_this_payment?', 'Are You Sure You Want To Accept This Payment?', NULL, NULL, NULL, NULL, NULL, NULL),
(927, 'accept_manual_payment', 'Accept Manual Payment', NULL, NULL, NULL, NULL, NULL, NULL),
(928, 'payment_accepted_successfully!', 'Payment Accepted Successfully!', NULL, NULL, NULL, NULL, NULL, NULL),
(929, 'payment_already_accepted', 'Payment Already Accepted', NULL, NULL, NULL, NULL, NULL, NULL),
(930, 'download', 'Download', NULL, NULL, NULL, NULL, NULL, NULL),
(931, 'Comment', 'Comment', NULL, NULL, NULL, NULL, NULL, NULL),
(932, 'bill_copy', 'Bill Copy', NULL, NULL, NULL, NULL, NULL, NULL),
(933, 'profile_pic_approval', 'Profile Pic Approval', NULL, NULL, NULL, NULL, NULL, NULL),
(934, 'member_image', 'Member Image', NULL, NULL, NULL, NULL, NULL, NULL),
(935, 'image_update_date', 'Image Update Date', NULL, NULL, NULL, NULL, NULL, NULL),
(936, 'member_profile_picture_approval', 'Member Profile Picture Approval', NULL, NULL, NULL, NULL, NULL, NULL),
(937, 'member_photo_approval', 'Member Photo Approval', NULL, NULL, NULL, NULL, NULL, NULL),
(938, 'profile_picture_approval_requests', 'Profile Picture Approval Requests', NULL, NULL, NULL, NULL, NULL, NULL),
(939, 'this_profile_picture?', 'This Profile Picture?', NULL, NULL, NULL, NULL, NULL, NULL),
(940, 'are_you_sure,_you_want_to', 'Are You Sure, You Want To', NULL, NULL, NULL, NULL, NULL, NULL),
(941, 'member_profile_picture_approval_by_admin', 'Member Profile Picture Approval By Admin', NULL, NULL, NULL, NULL, NULL, NULL),
(942, 'member_profile_pic_approval', 'Member Profile Pic Approval', NULL, NULL, NULL, NULL, NULL, NULL),
(943, 'email_notification_on_express_interest', 'Email Notification On Express Interest', NULL, NULL, NULL, NULL, NULL, NULL),
(945, 'email_notification_on_sending_message', 'Email Notification On Sending Message', NULL, NULL, NULL, NULL, NULL, NULL),
(946, 'social_media_login', 'Social Media Login', NULL, NULL, NULL, NULL, NULL, NULL),
(947, 'social_login_configurations', 'Social Login Configurations', NULL, NULL, NULL, NULL, NULL, NULL),
(948, 'google_login_configuration', 'Google Login Configuration', NULL, NULL, NULL, NULL, NULL, NULL),
(949, 'google_login_activation', 'Google Login Activation', NULL, NULL, NULL, NULL, NULL, NULL),
(950, 'client_ID', 'Client ID', NULL, NULL, NULL, NULL, NULL, NULL),
(951, 'client_secret', 'Client Secret', NULL, NULL, NULL, NULL, NULL, NULL),
(952, 'facebook_login_configuration', 'Facebook Login Configuration', NULL, NULL, NULL, NULL, NULL, NULL),
(953, 'facebook_login_activation', 'Facebook Login Activation', NULL, NULL, NULL, NULL, NULL, NULL),
(954, 'app_ID', 'App ID', NULL, NULL, NULL, NULL, NULL, NULL),
(955, 'app_secret', 'App Secret', NULL, NULL, NULL, NULL, NULL, NULL),
(956, 'secret', 'Secret', NULL, NULL, NULL, NULL, NULL, NULL),
(957, 'If the member account is created by phone number, then they will not get any mail', 'If The Member Account Is Created By Phone Number, Then They Will Not Get Any Mail', NULL, NULL, NULL, NULL, NULL, NULL),
(958, 'twitter_login_configuration', 'Twitter Login Configuration', NULL, NULL, NULL, NULL, NULL, NULL),
(959, 'twitter_login_activation', 'Twitter Login Activation', NULL, NULL, NULL, NULL, NULL, NULL),
(960, 'app_key', 'App Key', NULL, NULL, NULL, NULL, NULL, NULL),
(961, 'email_not_verified!', 'Email Not Verified!', NULL, NULL, NULL, NULL, NULL, NULL),
(962, 'OTP', 'OTP', NULL, NULL, NULL, NULL, NULL, NULL),
(963, 'Verify OTP', 'Verify OTP', NULL, NULL, NULL, NULL, NULL, NULL),
(964, 'Mobile_not_verified!', 'Mobile Not Verified!', NULL, NULL, NULL, NULL, NULL, NULL),
(965, 'OTP - 8527136561', 'OTP - 8527136561', NULL, NULL, NULL, NULL, NULL, NULL),
(966, 'Question Paper', 'Question Paper', NULL, NULL, NULL, NULL, NULL, NULL),
(967, 'Score', 'Score', NULL, NULL, NULL, NULL, NULL, NULL),
(968, 'created_at', 'Created At', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_language_list`
--

CREATE TABLE `site_language_list` (
  `site_language_list_id` int(11) NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_field` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_language_list`
--

INSERT INTO `site_language_list` (`site_language_list_id`, `name`, `db_field`, `status`) VALUES
(1, 'English', 'english', 'ok'),
(2, 'বাংলা', 'Bangla', 'ok'),
(3, 'Español', 'Spanish', 'ok'),
(4, 'عربى', 'Arabic', 'no'),
(5, 'français', 'French', 'no'),
(6, '中文', 'Chinese', 'no'),
(7, 'हिंदी', 'lang_7', 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `social_links_id` int(11) NOT NULL,
  `type` longtext COLLATE utf8_unicode_ci,
  `value` longtext COLLATE utf8_unicode_ci,
  `icon` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`social_links_id`, `type`, `value`, `icon`) VALUES
(1, 'facebook', 'http://facebook.com', 'fa fa-facebook-square'),
(2, 'google-plus', 'http://google.com', 'fa fa-google-plus-square'),
(3, 'twitter', 'http://twitter.com', 'fa fa-twitter-square'),
(4, 'skype', 'http://skype.com', 'fa fa-skype'),
(5, 'pinterest', 'http://pinterest.com', 'fa fa-pinterest'),
(6, 'youtube', 'http://youtube.com', 'fa fa-youtube');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `name`, `country_id`) VALUES
(1, 'Andaman and Nicobar Islands', 101),
(2, 'Andhra Pradesh', 101),
(3, 'Arunachal Pradesh', 101),
(4, 'Assam', 101);

-- --------------------------------------------------------

--
-- Table structure for table `story_video`
--

CREATE TABLE `story_video` (
  `story_video_id` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `from` varchar(50) NOT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `video_code` varchar(100) DEFAULT NULL,
  `video_src` varchar(255) NOT NULL,
  `preview_image_name` varchar(50) DEFAULT NULL,
  `timestamp` varchar(50) NOT NULL,
  `story_video_uploader_id` int(11) NOT NULL,
  `story_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `story_video`
--

INSERT INTO `story_video` (`story_video_id`, `type`, `from`, `video_link`, `video_code`, `video_src`, `preview_image_name`, `timestamp`, `story_video_uploader_id`, `story_id`) VALUES
(4, 'upload', 'local', '', NULL, 'uploads/story_video/story_video_4.mp4', NULL, '1534574565', 55, 8);

-- --------------------------------------------------------

--
-- Table structure for table `sub_caste`
--

CREATE TABLE `sub_caste` (
  `sub_caste_id` int(11) NOT NULL,
  `sub_caste_name` varchar(255) NOT NULL,
  `caste_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_caste`
--

INSERT INTO `sub_caste` (`sub_caste_id`, `sub_caste_name`, `caste_id`) VALUES
(1, 'Aatharvas', 2),
(2, 'Ayodya', 2),
(3, 'Arihant', 2),
(4, 'Aamat', 2),
(5, 'Achyuta', 2);

-- --------------------------------------------------------

--
-- Table structure for table `third_party_settings`
--

CREATE TABLE `third_party_settings` (
  `third_party_settings_id` int(11) NOT NULL,
  `type` longtext NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `third_party_settings`
--

INSERT INTO `third_party_settings` (`third_party_settings_id`, `type`, `value`) VALUES
(1, 'captcha_public', ''),
(2, 'captcha_private', ''),
(3, 'fb_login_set', 'no'),
(4, 'fb_appid', ''),
(5, 'fb_secret', ''),
(6, 'g_login_set', 'no'),
(7, 'g_application_name', ''),
(8, 'g_client_id', ''),
(9, 'g_client_secret', ''),
(10, 'g_redirect_uri', ''),
(11, 'g_api_key', ''),
(12, 'comment_type', 'facebook'),
(13, 'discus_id', ''),
(14, 'fb_comment_api', ''),
(15, 'g_map_api_key', ''),
(16, 'captcha_status', 'no'),
(17, 'twilio_status', 'ok'),
(18, 'twilio_account_sid', ''),
(19, 'twilio_auth_token', ''),
(20, 'twilio_sender_phone_number', ''),
(21, 'msg91_status', 'ok'),
(22, 'msg91_authentication_key', ''),
(23, 'msg91_sender_ID', ''),
(24, 'msg91_country_code', ''),
(25, 'msg91_route', ''),
(26, 'msg91_type', 'test'),
(27, 'google_analytics_set', 'no'),
(28, 'google_analytics_key', ''),
(29, 'facebook_chat_set', 'yes'),
(30, 'facebook_chat_page_id', ''),
(31, 'facebook_chat_logged_in_greeting', 'Hello sir!'),
(32, 'facebook_chat_logged_out_greeting', 'Thank You'),
(33, 'facebook_chat_theme_color', '#671861'),
(34, 'twitter_login_set', 'no'),
(35, 'twitter_app_key', ''),
(36, 'twitter_app_secret', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`business_settings_id`);

--
-- Indexes for table `caste`
--
ALTER TABLE `caste`
  ADD PRIMARY KEY (`caste_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `contact_message`
--
ALTER TABLE `contact_message`
  ADD PRIMARY KEY (`contact_message_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `currency_settings`
--
ALTER TABLE `currency_settings`
  ADD PRIMARY KEY (`currency_settings_id`);

--
-- Indexes for table `decision`
--
ALTER TABLE `decision`
  ADD PRIMARY KEY (`decision_id`);

--
-- Indexes for table `deleted_member`
--
ALTER TABLE `deleted_member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `email_template`
--
ALTER TABLE `email_template`
  ADD PRIMARY KEY (`email_template_id`);

--
-- Indexes for table `family_status`
--
ALTER TABLE `family_status`
  ADD PRIMARY KEY (`family_status_id`);

--
-- Indexes for table `family_value`
--
ALTER TABLE `family_value`
  ADD PRIMARY KEY (`family_value_id`);

--
-- Indexes for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  ADD PRIMARY KEY (`frontend_settings_id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`general_settings_id`);

--
-- Indexes for table `happy_story`
--
ALTER TABLE `happy_story`
  ADD PRIMARY KEY (`happy_story_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_id`);

--
-- Indexes for table `marital_status`
--
ALTER TABLE `marital_status`
  ADD PRIMARY KEY (`marital_status_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `occupation`
--
ALTER TABLE `occupation`
  ADD PRIMARY KEY (`occupation_id`);

--
-- Indexes for table `on_behalf`
--
ALTER TABLE `on_behalf`
  ADD PRIMARY KEY (`on_behalf_id`);

--
-- Indexes for table `package_payment`
--
ALTER TABLE `package_payment`
  ADD PRIMARY KEY (`package_payment_id`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`plan_id`);

--
-- Indexes for table `religion`
--
ALTER TABLE `religion`
  ADD PRIMARY KEY (`religion_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_language`
--
ALTER TABLE `site_language`
  ADD PRIMARY KEY (`word_id`);

--
-- Indexes for table `site_language_list`
--
ALTER TABLE `site_language_list`
  ADD PRIMARY KEY (`site_language_list_id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`social_links_id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `story_video`
--
ALTER TABLE `story_video`
  ADD PRIMARY KEY (`story_video_id`);

--
-- Indexes for table `sub_caste`
--
ALTER TABLE `sub_caste`
  ADD PRIMARY KEY (`sub_caste_id`);

--
-- Indexes for table `third_party_settings`
--
ALTER TABLE `third_party_settings`
  ADD PRIMARY KEY (`third_party_settings_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `business_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `caste`
--
ALTER TABLE `caste`
  MODIFY `caste_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48315;
--
-- AUTO_INCREMENT for table `contact_message`
--
ALTER TABLE `contact_message`
  MODIFY `contact_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT for table `currency_settings`
--
ALTER TABLE `currency_settings`
  MODIFY `currency_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `decision`
--
ALTER TABLE `decision`
  MODIFY `decision_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `email_template`
--
ALTER TABLE `email_template`
  MODIFY `email_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `family_status`
--
ALTER TABLE `family_status`
  MODIFY `family_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `family_value`
--
ALTER TABLE `family_value`
  MODIFY `family_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `frontend_settings`
--
ALTER TABLE `frontend_settings`
  MODIFY `frontend_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `gender_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `general_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `happy_story`
--
ALTER TABLE `happy_story`
  MODIFY `happy_story_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `marital_status`
--
ALTER TABLE `marital_status`
  MODIFY `marital_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `occupation`
--
ALTER TABLE `occupation`
  MODIFY `occupation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `on_behalf`
--
ALTER TABLE `on_behalf`
  MODIFY `on_behalf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `package_payment`
--
ALTER TABLE `package_payment`
  MODIFY `package_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `religion`
--
ALTER TABLE `religion`
  MODIFY `religion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `score`
--
ALTER TABLE `score`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `site_language`
--
ALTER TABLE `site_language`
  MODIFY `word_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=969;
--
-- AUTO_INCREMENT for table `site_language_list`
--
ALTER TABLE `site_language_list`
  MODIFY `site_language_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `social_links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4122;
--
-- AUTO_INCREMENT for table `story_video`
--
ALTER TABLE `story_video`
  MODIFY `story_video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sub_caste`
--
ALTER TABLE `sub_caste`
  MODIFY `sub_caste_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=633;
--
-- AUTO_INCREMENT for table `third_party_settings`
--
ALTER TABLE `third_party_settings`
  MODIFY `third_party_settings_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
