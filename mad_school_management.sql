-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2025 at 09:20 AM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mad_school_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `features` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `version` float DEFAULT NULL,
  `purchase_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `copies` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `copies`, `school_id`, `session_id`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 'Comoputer Fudamental 1', 'ABCD', 60, 4, 2, 1747332000, '2025-05-16 12:17:42', '2025-05-16 12:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `issue_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`id`, `book_id`, `class_id`, `student_id`, `issue_date`, `status`, `school_id`, `session_id`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 8, '1747332000', 1, 4, 2, 1747332000, '2025-05-16 12:18:03', '2025-05-16 12:18:21'),
(2, 1, 1, 8, '1747332000', 0, 4, 2, 1747332000, '2025-05-16 12:18:35', '2025-05-16 12:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'BCA 1st Semester', 4, '2025-05-14 12:03:39', '2025-05-14 12:03:39'),
(2, 'BCA 2nd Semester', 4, '2025-05-14 12:04:03', '2025-05-14 12:04:03'),
(3, 'BCA 3rd Semeter', 4, '2025-05-14 12:04:41', '2025-05-14 12:04:41'),
(4, 'BCA 4rthS emester', 4, '2025-05-14 12:05:01', '2025-05-14 12:05:01'),
(5, 'BCA 5th Semeter', 4, '2025-05-14 12:05:22', '2025-05-14 12:05:36'),
(6, 'BCA 6th Semester', 4, '2025-05-14 12:06:00', '2025-05-14 12:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_rooms`
--

INSERT INTO `class_rooms` (`id`, `name`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'Room 1', 4, '2025-05-14 12:00:37', '2025-05-14 12:00:37'),
(2, 'Room 2', 4, '2025-05-14 12:00:57', '2025-05-14 12:00:57'),
(3, 'Room 3', 4, '2025-05-14 12:01:13', '2025-05-14 12:01:13'),
(4, 'Room 4', 4, '2025-05-14 12:01:22', '2025-05-14 12:01:22'),
(5, 'Room 5', 4, '2025-05-14 12:01:32', '2025-05-14 12:01:32'),
(6, 'Room 6', 4, '2025-05-14 12:01:52', '2025-05-14 12:01:52'),
(7, 'Room 7', 4, '2025-05-14 12:02:05', '2025-05-14 12:02:05'),
(8, 'Room 8', 4, '2025-05-14 12:02:14', '2025-05-14 12:02:14'),
(9, 'Room 9', 4, '2025-05-14 12:02:25', '2025-05-14 12:02:25'),
(10, 'Room 10', 4, '2025-05-14 12:02:36', '2025-05-14 12:02:36'),
(11, 'Room 11', 4, '2025-05-14 12:02:45', '2025-05-14 12:02:45'),
(12, 'Room 12', 4, '2025-05-14 12:02:54', '2025-05-14 12:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `paypal_supported` int(11) DEFAULT NULL,
  `stripe_supported` int(11) DEFAULT NULL,
  `flutterwave_supported` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `name`, `code`, `symbol`, `paypal_supported`, `stripe_supported`, `flutterwave_supported`) VALUES
(1, 'US Dollar', 'USD', '$', 1, 1, 1),
(2, 'Albanian Lek', 'ALL', 'Lek', 0, 1, 0),
(3, 'Algerian Dinar', 'DZD', 'دج', 1, 1, 0),
(4, 'Angolan Kwanza', 'AOA', 'Kz', 1, 1, 0),
(5, 'Argentine Peso', 'ARS', '$', 1, 1, 1),
(6, 'Armenian Dram', 'AMD', '֏', 1, 1, 0),
(7, 'Aruban Florin', 'AWG', 'ƒ', 1, 1, 0),
(8, 'Australian Dollar', 'AUD', '$', 1, 1, 0),
(9, 'Azerbaijani Manat', 'AZN', 'm', 1, 1, 0),
(10, 'Bahamian Dollar', 'BSD', 'B$', 1, 1, 0),
(11, 'Bahraini Dinar', 'BHD', '.د.ب', 1, 1, 0),
(12, 'Bangladeshi Taka', 'BDT', '৳', 1, 1, 0),
(13, 'Barbadian Dollar', 'BBD', 'Bds$', 1, 1, 0),
(14, 'Belarusian Ruble', 'BYR', 'Br', 0, 0, 0),
(15, 'Belgian Franc', 'BEF', 'fr', 1, 1, 0),
(16, 'Belize Dollar', 'BZD', '$', 1, 1, 0),
(17, 'Bermudan Dollar', 'BMD', '$', 1, 1, 0),
(18, 'Bhutanese Ngultrum', 'BTN', 'Nu.', 1, 1, 0),
(19, 'Bitcoin', 'BTC', '฿', 1, 1, 0),
(20, 'Bolivian Boliviano', 'BOB', 'Bs.', 1, 1, 0),
(21, 'Bosnia', 'BAM', 'KM', 1, 1, 0),
(22, 'Botswanan Pula', 'BWP', 'P', 1, 1, 0),
(23, 'Brazilian Real', 'BRL', 'R$', 1, 1, 1),
(24, 'British Pound Sterling', 'GBP', '£', 1, 1, 1),
(25, 'Brunei Dollar', 'BND', 'B$', 1, 1, 0),
(26, 'Bulgarian Lev', 'BGN', 'Лв.', 1, 1, 0),
(27, 'Burundian Franc', 'BIF', 'FBu', 1, 1, 0),
(28, 'Cambodian Riel', 'KHR', 'KHR', 1, 1, 0),
(29, 'Canadian Dollar', 'CAD', '$', 1, 1, 1),
(30, 'Cape Verdean Escudo', 'CVE', '$', 1, 1, 1),
(31, 'Cayman Islands Dollar', 'KYD', '$', 1, 1, 0),
(32, 'CFA Franc BCEAO', 'XOF', 'CFA', 1, 1, 1),
(33, 'CFA Franc BEAC', 'XAF', 'FCFA', 1, 1, 1),
(34, 'CFP Franc', 'XPF', '₣', 1, 1, 0),
(35, 'Chilean Peso', 'CLP', '$', 1, 1, 1),
(36, 'Chinese Yuan', 'CNY', '¥', 1, 1, 0),
(37, 'Colombian Peso', 'COP', '$', 1, 1, 0),
(38, 'Comorian Franc', 'KMF', 'CF', 1, 1, 0),
(39, 'Congolese Franc', 'CDF', 'FC', 1, 1, 1),
(40, 'Costa Rican ColÃ³n', 'CRC', '₡', 1, 1, 0),
(41, 'Croatian Kuna', 'HRK', 'kn', 1, 1, 0),
(42, 'Cuban Convertible Peso', 'CUC', '$, CUC', 1, 1, 0),
(43, 'Czech Republic Koruna', 'CZK', 'Kč', 1, 1, 0),
(44, 'Danish Krone', 'DKK', 'Kr.', 1, 1, 0),
(45, 'Djiboutian Franc', 'DJF', 'Fdj', 1, 1, 0),
(46, 'Dominican Peso', 'DOP', '$', 1, 1, 0),
(47, 'East Caribbean Dollar', 'XCD', '$', 1, 1, 0),
(48, 'Egyptian Pound', 'EGP', 'ج.م', 1, 1, 1),
(49, 'Eritrean Nakfa', 'ERN', 'Nfk', 1, 1, 0),
(50, 'Estonian Kroon', 'EEK', 'kr', 1, 1, 0),
(51, 'Ethiopian Birr', 'ETB', 'Nkf', 1, 1, 0),
(52, 'Euro', 'EUR', '€', 1, 1, 1),
(53, 'Falkland Islands Pound', 'FKP', '£', 1, 1, 0),
(54, 'Fijian Dollar', 'FJD', 'FJ$', 1, 1, 0),
(55, 'Gambian Dalasi', 'GMD', 'D', 1, 1, 1),
(56, 'Georgian Lari', 'GEL', 'ლ', 1, 1, 0),
(57, 'German Mark', 'DEM', 'DM', 1, 1, 0),
(58, 'Ghanaian Cedi', 'GHS', 'GH₵', 1, 1, 1),
(59, 'Gibraltar Pound', 'GIP', '£', 1, 1, 0),
(60, 'Greek Drachma', 'GRD', '₯, Δρχ, Δρ', 1, 1, 0),
(61, 'Guatemalan Quetzal', 'GTQ', 'Q', 1, 1, 0),
(62, 'Guinean Franc', 'GNF', 'FG', 1, 1, 1),
(63, 'Guyanaese Dollar', 'GYD', '$', 1, 1, 0),
(64, 'Haitian Gourde', 'HTG', 'G', 1, 1, 0),
(65, 'Honduran Lempira', 'HNL', 'L', 1, 1, 0),
(66, 'Hong Kong Dollar', 'HKD', '$', 1, 1, 0),
(67, 'Hungarian Forint', 'HUF', 'Ft', 1, 1, 0),
(68, 'Icelandic KrÃ³na', 'ISK', 'kr', 1, 1, 0),
(69, 'Indian Rupee', 'INR', '₹', 1, 1, 0),
(70, 'Indonesian Rupiah', 'IDR', 'Rp', 1, 1, 0),
(71, 'Iranian Rial', 'IRR', '﷼', 1, 1, 0),
(72, 'Iraqi Dinar', 'IQD', 'د.ع', 1, 1, 0),
(73, 'Israeli New Sheqel', 'ILS', '₪', 1, 1, 0),
(74, 'Italian Lira', 'ITL', 'L,£', 1, 1, 0),
(75, 'Jamaican Dollar', 'JMD', 'J$', 1, 1, 0),
(76, 'Japanese Yen', 'JPY', '¥', 1, 1, 0),
(77, 'Jordanian Dinar', 'JOD', 'ا.د', 1, 1, 0),
(78, 'Kazakhstani Tenge', 'KZT', 'лв', 1, 1, 0),
(79, 'Kenyan Shilling', 'KES', 'KSh', 1, 1, 1),
(80, 'Kuwaiti Dinar', 'KWD', 'ك.د', 1, 1, 0),
(81, 'Kyrgystani Som', 'KGS', 'лв', 1, 1, 0),
(82, 'Laotian Kip', 'LAK', '₭', 1, 1, 0),
(83, 'Latvian Lats', 'LVL', 'Ls', 0, 0, 0),
(84, 'Lebanese Pound', 'LBP', '£', 1, 1, 0),
(85, 'Lesotho Loti', 'LSL', 'L', 1, 1, 0),
(86, 'Liberian Dollar', 'LRD', '$', 1, 1, 1),
(87, 'Libyan Dinar', 'LYD', 'د.ل', 1, 1, 0),
(88, 'Lithuanian Litas', 'LTL', 'Lt', 0, 0, 0),
(89, 'Macanese Pataca', 'MOP', '$', 1, 1, 0),
(90, 'Macedonian Denar', 'MKD', 'ден', 1, 1, 0),
(91, 'Malagasy Ariary', 'MGA', 'Ar', 1, 1, 0),
(92, 'Malawian Kwacha', 'MWK', 'MK', 1, 1, 1),
(93, 'Malaysian Ringgit', 'MYR', 'RM', 1, 1, 0),
(94, 'Maldivian Rufiyaa', 'MVR', 'Rf', 1, 1, 0),
(95, 'Mauritanian Ouguiya', 'MRO', 'MRU', 1, 1, 0),
(96, 'Mauritian Rupee', 'MUR', '₨', 1, 1, 0),
(97, 'Mexican Peso', 'MXN', '$', 1, 1, 0),
(98, 'Moldovan Leu', 'MDL', 'L', 1, 1, 0),
(99, 'Mongolian Tugrik', 'MNT', '₮', 1, 1, 0),
(100, 'Moroccan Dirham', 'MAD', 'MAD', 1, 1, 1),
(101, 'Mozambican Metical', 'MZM', 'MT', 1, 1, 0),
(102, 'Myanmar Kyat', 'MMK', 'K', 1, 1, 0),
(103, 'Namibian Dollar', 'NAD', '$', 1, 1, 0),
(104, 'Nepalese Rupee', 'NPR', '₨', 1, 1, 0),
(105, 'Netherlands Antillean Guilder', 'ANG', 'ƒ', 1, 1, 0),
(106, 'New Taiwan Dollar', 'TWD', '$', 1, 1, 0),
(107, 'New Zealand Dollar', 'NZD', '$', 1, 1, 0),
(108, 'Nicaraguan CÃ³rdoba', 'NIO', 'C$', 1, 1, 0),
(109, 'Nigerian Naira', 'NGN', '₦', 1, 1, 1),
(110, 'North Korean Won', 'KPW', '₩', 0, 0, 0),
(111, 'Norwegian Krone', 'NOK', 'kr', 1, 1, 0),
(112, 'Omani Rial', 'OMR', '.ع.ر', 0, 0, 0),
(113, 'Pakistani Rupee', 'PKR', '₨', 1, 1, 0),
(114, 'Panamanian Balboa', 'PAB', 'B/.', 1, 1, 0),
(115, 'Papua New Guinean Kina', 'PGK', 'K', 1, 1, 0),
(116, 'Paraguayan Guarani', 'PYG', '₲', 1, 1, 0),
(117, 'Peruvian Nuevo Sol', 'PEN', 'S/.', 1, 1, 0),
(118, 'Philippine Peso', 'PHP', '₱', 1, 1, 0),
(119, 'Polish Zloty', 'PLN', 'zł', 1, 1, 0),
(120, 'Qatari Rial', 'QAR', 'ق.ر', 1, 1, 0),
(121, 'Romanian Leu', 'RON', 'lei', 1, 1, 0),
(122, 'Russian Ruble', 'RUB', '₽', 1, 1, 0),
(123, 'Rwandan Franc', 'RWF', 'FRw', 1, 1, 1),
(124, 'Salvadoran ColÃ³n', 'SVC', '₡', 0, 0, 0),
(125, 'Samoan Tala', 'WST', 'SAT', 1, 1, 0),
(126, 'Saudi Riyal', 'SAR', '﷼', 1, 1, 0),
(127, 'Serbian Dinar', 'RSD', 'din', 1, 1, 0),
(128, 'Seychellois Rupee', 'SCR', 'SRe', 1, 1, 0),
(129, 'Sierra Leonean Leone', 'SLL', 'Le', 1, 1, 1),
(130, 'Singapore Dollar', 'SGD', '$', 1, 1, 0),
(131, 'Slovak Koruna', 'SKK', 'Sk', 1, 1, 0),
(132, 'Solomon Islands Dollar', 'SBD', 'Si$', 1, 1, 0),
(133, 'Somali Shilling', 'SOS', 'Sh.so.', 1, 1, 0),
(134, 'South African Rand', 'ZAR', 'R', 1, 1, 1),
(135, 'South Korean Won', 'KRW', '₩', 1, 1, 0),
(136, 'Special Drawing Rights', 'XDR', 'SDR', 1, 1, 0),
(137, 'Sri Lankan Rupee', 'LKR', 'Rs', 1, 1, 0),
(138, 'St. Helena Pound', 'SHP', '£', 1, 1, 0),
(139, 'Sudanese Pound', 'SDG', '.س.ج', 1, 1, 0),
(140, 'Surinamese Dollar', 'SRD', '$', 1, 1, 0),
(141, 'Swazi Lilangeni', 'SZL', 'E', 1, 1, 0),
(142, 'Swedish Krona', 'SEK', 'kr', 1, 1, 0),
(143, 'Swiss Franc', 'CHF', 'CHf', 1, 1, 0),
(144, 'Syrian Pound', 'SYP', 'LS', 0, 0, 0),
(145, 'São Tomé and Príncipe Dobra', 'STD', 'Db', 1, 1, 1),
(146, 'Tajikistani Somoni', 'TJS', 'SM', 1, 1, 0),
(147, 'Tanzanian Shilling', 'TZS', 'TSh', 1, 1, 1),
(148, 'Thai Baht', 'THB', '฿', 1, 1, 0),
(149, 'Tongan pa\'anga', 'TOP', '$', 1, 1, 0),
(150, 'Trinidad & Tobago Dollar', 'TTD', '$', 1, 1, 0),
(151, 'Tunisian Dinar', 'TND', 'ت.د', 1, 1, 0),
(152, 'Turkish Lira', 'TRY', '₺', 1, 1, 0),
(153, 'Turkmenistani Manat', 'TMT', 'T', 1, 1, 0),
(154, 'Ugandan Shilling', 'UGX', 'UGX', 1, 1, 1),
(155, 'Ukrainian Hryvnia', 'UAH', '₴', 1, 1, 0),
(156, 'United Arab Emirates Dirham', 'AED', 'إ.د', 1, 1, 0),
(157, 'Uruguayan Peso', 'UYU', '$', 1, 1, 0),
(158, 'Afghan Afghani', 'AFA', '؋', 1, 1, 0),
(159, 'Uzbekistan Som', 'UZS', 'лв', 1, 1, 0),
(160, 'Vanuatu Vatu', 'VUV', 'VT', 1, 1, 0),
(161, 'Venezuelan BolÃvar', 'VEF', 'Bs', 0, 0, 0),
(162, 'Vietnamese Dong', 'VND', '₫', 1, 1, 0),
(163, 'Yemeni Rial', 'YER', '﷼', 1, 1, 0),
(164, 'Zambian Kwacha', 'ZMK', 'ZK', 1, 1, 1),
(165, 'PesosColombian Peso', 'COP', '$', 0, 0, 1),
(166, 'SEPA', 'EUR', '€', 0, 0, 1),
(167, 'Mozambican Metical', 'MZN', 'MT', 0, 0, 1),
(168, 'Peruvian Sol', 'SOL', 'S/', 0, 0, 1),
(169, 'Zambian Kwacha', 'ZMW', 'ZK', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_attendances`
--

CREATE TABLE `daily_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `daily_attendances`
--

INSERT INTO `daily_attendances` (`id`, `class_id`, `section_id`, `student_id`, `status`, `session_id`, `school_id`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 8, 1, 2, 4, 1747332000, '2025-05-16 12:30:21', '2025-05-16 12:30:21'),
(2, 1, 1, 9, 0, 2, 4, 1747332000, '2025-05-16 12:30:21', '2025-05-16 12:30:21'),
(3, 1, 1, 8, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(4, 1, 1, 9, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(5, 1, 1, 10, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(6, 1, 1, 11, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(7, 1, 1, 12, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(8, 1, 1, 13, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(9, 1, 1, 14, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(10, 1, 1, 15, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(11, 1, 1, 16, 0, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(12, 1, 1, 17, 0, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(13, 1, 1, 18, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(14, 1, 1, 19, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(15, 1, 1, 20, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(16, 1, 1, 21, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(17, 1, 1, 22, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(18, 1, 1, 23, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(19, 1, 1, 24, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(20, 1, 1, 25, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(21, 1, 1, 26, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(22, 1, 1, 27, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(23, 1, 1, 28, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(24, 1, 1, 29, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(25, 1, 1, 30, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(26, 1, 1, 31, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(27, 1, 1, 32, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(28, 1, 1, 33, 1, 2, 4, 1747591200, '2025-05-19 11:39:20', '2025-05-19 11:39:20'),
(29, 1, 1, 8, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(30, 1, 1, 9, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(31, 1, 1, 10, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(32, 1, 1, 11, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(33, 1, 1, 12, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(34, 1, 1, 13, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(35, 1, 1, 14, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(36, 1, 1, 15, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(37, 1, 1, 16, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(38, 1, 1, 17, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(39, 1, 1, 18, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(40, 1, 1, 19, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(41, 1, 1, 20, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(42, 1, 1, 21, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(43, 1, 1, 22, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(44, 1, 1, 23, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(45, 1, 1, 24, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(46, 1, 1, 25, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(47, 1, 1, 26, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(48, 1, 1, 27, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(49, 1, 1, 28, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(50, 1, 1, 29, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(51, 1, 1, 30, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(52, 1, 1, 31, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(53, 1, 1, 32, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(54, 1, 1, 33, 1, 2, 4, 1746036000, '2025-05-19 11:40:16', '2025-05-19 11:40:16'),
(55, 1, 1, 8, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(56, 1, 1, 9, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(57, 1, 1, 10, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(58, 1, 1, 11, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(59, 1, 1, 12, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(60, 1, 1, 13, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(61, 1, 1, 14, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(62, 1, 1, 15, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(63, 1, 1, 16, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(64, 1, 1, 17, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(65, 1, 1, 18, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(66, 1, 1, 19, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(67, 1, 1, 20, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(68, 1, 1, 21, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(69, 1, 1, 22, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(70, 1, 1, 23, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(71, 1, 1, 24, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(72, 1, 1, 25, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(73, 1, 1, 26, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(74, 1, 1, 27, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(75, 1, 1, 28, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(76, 1, 1, 29, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(77, 1, 1, 30, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(78, 1, 1, 31, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(79, 1, 1, 32, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(80, 1, 1, 33, 1, 2, 4, 1746468000, '2025-05-19 11:40:39', '2025-05-19 11:40:39'),
(81, 1, 1, 8, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(82, 1, 1, 9, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(83, 1, 1, 10, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(84, 1, 1, 11, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(85, 1, 1, 12, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(86, 1, 1, 13, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(87, 1, 1, 14, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(88, 1, 1, 15, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(89, 1, 1, 16, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(90, 1, 1, 17, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(91, 1, 1, 18, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(92, 1, 1, 19, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(93, 1, 1, 20, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(94, 1, 1, 21, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(95, 1, 1, 22, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(96, 1, 1, 23, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(97, 1, 1, 24, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(98, 1, 1, 25, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(99, 1, 1, 26, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(100, 1, 1, 27, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(101, 1, 1, 28, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(102, 1, 1, 29, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(103, 1, 1, 30, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(104, 1, 1, 31, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(105, 1, 1, 32, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(106, 1, 1, 33, 1, 2, 4, 1746122400, '2025-05-19 11:41:11', '2025-05-19 11:41:11'),
(107, 1, 1, 8, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(108, 1, 1, 9, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(109, 1, 1, 10, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(110, 1, 1, 11, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(111, 1, 1, 12, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(112, 1, 1, 13, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(113, 1, 1, 14, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(114, 1, 1, 15, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(115, 1, 1, 16, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(116, 1, 1, 17, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(117, 1, 1, 18, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(118, 1, 1, 19, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(119, 1, 1, 20, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(120, 1, 1, 21, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(121, 1, 1, 22, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(122, 1, 1, 23, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(123, 1, 1, 24, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(124, 1, 1, 25, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(125, 1, 1, 26, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(126, 1, 1, 27, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(127, 1, 1, 28, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(128, 1, 1, 29, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(129, 1, 1, 30, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(130, 1, 1, 31, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(131, 1, 1, 32, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(132, 1, 1, 33, 0, 2, 4, 1746208800, '2025-05-19 11:41:41', '2025-05-19 11:41:41'),
(133, 1, 1, 8, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(134, 1, 1, 9, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(135, 1, 1, 10, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(136, 1, 1, 11, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(137, 1, 1, 12, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(138, 1, 1, 13, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(139, 1, 1, 14, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(140, 1, 1, 15, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(141, 1, 1, 16, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(142, 1, 1, 17, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(143, 1, 1, 18, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(144, 1, 1, 19, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(145, 1, 1, 20, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(146, 1, 1, 21, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(147, 1, 1, 22, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(148, 1, 1, 23, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(149, 1, 1, 24, 0, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(150, 1, 1, 25, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(151, 1, 1, 26, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(152, 1, 1, 27, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(153, 1, 1, 28, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(154, 1, 1, 29, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(155, 1, 1, 30, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(156, 1, 1, 31, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(157, 1, 1, 32, 0, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10'),
(158, 1, 1, 33, 1, 2, 4, 1746381600, '2025-05-19 11:42:10', '2025-05-19 11:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `school_id`, `created_at`, `updated_at`) VALUES
(1, 'Teacher', 4, '2025-05-14 11:10:05', '2025-05-14 11:11:44'),
(2, 'Admin', 4, '2025-05-14 11:10:16', '2025-05-14 11:10:16'),
(3, 'Account', 4, '2025-05-14 11:10:28', '2025-05-14 11:10:28'),
(4, 'Librarian', 4, '2025-05-14 11:10:58', '2025-05-14 11:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`id`, `user_id`, `class_id`, `section_id`, `school_id`, `department_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 1, 4, NULL, 2, '2025-05-15 09:04:46', '2025-05-15 09:04:46'),
(2, 9, 1, 1, 4, NULL, 2, '2025-05-15 09:06:19', '2025-05-15 09:06:19'),
(3, 10, 1, 1, 4, NULL, 2, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(4, 11, 1, 1, 4, NULL, 2, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(5, 12, 1, 1, 4, NULL, 2, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(6, 13, 1, 1, 4, NULL, 2, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(7, 14, 1, 1, 4, NULL, 2, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(8, 15, 1, 1, 4, NULL, 2, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(9, 16, 1, 1, 4, NULL, 2, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(10, 17, 1, 1, 4, NULL, 2, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(11, 18, 1, 1, 4, NULL, 2, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(12, 19, 1, 1, 4, NULL, 2, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(13, 20, 1, 1, 4, NULL, 2, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(14, 21, 1, 1, 4, NULL, 2, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(15, 22, 1, 1, 4, NULL, 2, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(16, 23, 1, 1, 4, NULL, 2, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(17, 24, 1, 1, 4, NULL, 2, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(18, 25, 1, 1, 4, NULL, 2, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(19, 26, 1, 1, 4, NULL, 2, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(20, 27, 1, 1, 4, NULL, 2, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(21, 28, 1, 1, 4, NULL, 2, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(22, 29, 1, 1, 4, NULL, 2, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(23, 30, 1, 1, 4, NULL, 2, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(24, 31, 1, 1, 4, NULL, 2, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(25, 32, 1, 1, 4, NULL, 2, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(26, 33, 1, 1, 4, NULL, 2, '2025-05-19 11:38:18', '2025-05-19 11:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exam_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starting_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ending_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_marks` float NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `name`, `exam_type`, `starting_time`, `ending_time`, `total_marks`, `status`, `class_id`, `subject_id`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'pre semester exam', 'offline', '1748186100', '1748673000', 500, 'pending', 1, 1, 4, 2, '2025-05-19 11:52:36', '2025-05-19 11:52:36');

-- --------------------------------------------------------

--
-- Table structure for table `exam_categories`
--

CREATE TABLE `exam_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_categories`
--

INSERT INTO `exam_categories` (`id`, `name`, `school_id`, `session_id`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 'pre semester exam', 4, 2, 1747591200, '2025-05-19 11:50:22', '2025-05-19 11:50:22'),
(2, 'Pre Practical Exam', 4, 2, 1747591200, '2025-05-19 11:50:39', '2025-05-19 11:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `expense_category_id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expense_category_id`, `date`, `amount`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1747332000, '500', 4, 2, '2025-05-16 12:24:38', '2025-05-16 12:24:38'),
(2, 2, 1747332000, '50000', 4, 2, '2025-05-16 12:24:51', '2025-05-16 12:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'Others', 4, 2, '2025-05-16 12:23:15', '2025-05-16 12:23:15'),
(2, 'Computer Maintainence', 4, 2, '2025-05-16 12:23:34', '2025-05-16 12:23:34'),
(3, 'daily expence', 4, 2, '2025-05-16 12:24:23', '2025-05-16 12:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `title`, `description`) VALUES
(1, 'What is NRT School APP?', 'NRT School  APP  is a collection of programs designed to assist schools in administering their executive responsibilities on a day-to-day basis. NRT School  APP  is an updated version of Ekattor ERP (Enterprise Resource Planning). AlsoNRT School  APP is designed for SAAS (Software as a Service) projects.'),
(2, 'How can I get developed my customer features?', 'Custom features do not coming with product support. You can contact our support center and send us details about your requirement. If our schedule is open, we can give you a quotation and take your project according to the contract.'),
(5, 'Which license to choose for my client project?', 'If you use academy LMS for a commercial project of a client, you will be required extended license.'),
(6, 'How much time will I get developer support?', 'By default, you are entitled to developer support for 6 months from the date of your purchase. Later on anytime you can renew the support pack if you need developer support. If you don’t need any developer support, you don’t need to buy it.');

-- --------------------------------------------------------

--
-- Table structure for table `frontend_events`
--

CREATE TABLE `frontend_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontend_events`
--

INSERT INTO `frontend_events` (`id`, `title`, `timestamp`, `status`, `school_id`, `session_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Event 1', 1748541600, 1, 4, 2, 2, '2025-05-16 12:21:17', '2025-05-16 12:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `global_settings`
--

CREATE TABLE `global_settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `global_settings`
--

INSERT INTO `global_settings` (`id`, `key`, `value`) VALUES
(1, 'system_name', 'School Managment'),
(2, 'system_title', 'School Managment'),
(3, 'system_email', 'info@nrt.co.in'),
(4, 'phone', '9752655455'),
(5, 'address', '463 - A, Pacific Business Center, Behind D-Mart Shopping Center, Hoshangabad Rd, Bhopal, Madhya Pradesh 462026 India'),
(6, 'purchase_code', NULL),
(7, 'system_currency', 'INR'),
(8, 'currency_position', 'left-space'),
(9, 'running_session', '1'),
(10, 'language', 'english'),
(11, 'payment_settings', '[]'),
(12, 'footer_text', 'By NRT'),
(13, 'footer_link', 'https://nrt.co.in/'),
(14, 'version', '1.7'),
(15, 'fax', '9752655455'),
(16, 'timezone', 'Asia/Dhaka'),
(17, 'smtp_protocol', 'smtp'),
(18, 'smtp_crypto', 'tls'),
(19, 'smtp_host', 'smtp.googlemail.com'),
(20, 'smtp_port', '587'),
(21, 'smtp_user', 'your-email'),
(22, 'smtp_pass', 'Email-password'),
(28, 'offline', '{\"status\":\"1\"}'),
(29, 'light_logo', 'light-logo.png'),
(30, 'dark_logo', '17472065151.png'),
(31, 'favicon', 'favicon.png'),
(32, 'randCallRange', '30'),
(33, 'help_link', 'https://nrt.co.in/'),
(34, 'youtube_api_key', 'youtube-api-key'),
(35, 'vimeo_api_key', 'vimeo-api-key'),
(36, 'banner_title', 'School Managment'),
(37, 'banner_subtitle', 'Empowering and inspiring all students to excel as life long learners'),
(38, 'facebook_link', 'https://www.facebook.com/nrtinc'),
(39, 'twitter_link', 'https://www.twitter.com/nrtinc'),
(40, 'linkedin_link', 'https://www.linkedin.com/company/newrise-technosys-pvt-ltd/'),
(41, 'instagram_link', 'https://www.instagram.com/nrtinc_bhopal/'),
(42, 'price_subtitle', 'Choose the best subscription plan for your school'),
(43, 'copyright_text', 'Copyright © 2010-2025  NewRise Technosys Pvt. Ltd. All Rights Reserved'),
(44, 'contact_email', 'info@nrt.co.in'),
(45, 'frontend_footer_text', 'NRT Inc. established in the year 2010 by people who believe in believing & creating innovative ideas. We firmly believe that any organization, in order to survive and achieve success, must have a sound set of beliefs on which it premises all its policies and actions. Next, we believe that the most important single factor in corporate success is faithful adherence those believes and finally we believe that the organization must be willing to change everything about itself except those beliefs as its move through corporate life'),
(46, 'faq_subtitle', 'Frequently asked questions'),
(49, 'frontend_view', '1'),
(50, 'white_logo', '16864783704.png'),
(51, 'navbar_title', 'NRT'),
(53, 'email_title', 'Subscription'),
(54, 'email_details', 'Feel free to reach out to us anytime if you have questions or feedback. We value your input and strive to provide the best experience possible.'),
(55, 'warning_text', 'This email is from an automated address so please do not reply.'),
(56, 'email_logo', '17472059521.png'),
(57, 'socialLogo1', '16907191042.png'),
(58, 'socialLogo2', '16907191913.png'),
(59, 'socialLogo3', '16907194544.png');

-- --------------------------------------------------------

--
-- Table structure for table `gradebooks`
--

CREATE TABLE `gradebooks` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_category_id` int(11) NOT NULL,
  `marks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gradebooks`
--

INSERT INTO `gradebooks` (`id`, `class_id`, `section_id`, `student_id`, `exam_category_id`, `marks`, `comment`, `school_id`, `session_id`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 8, 1, '{\"1\":\"90\",\"2\":\"89\"}', 'good', 4, 2, 1747591200, '2025-05-19 11:33:16', '2025-05-19 12:03:16'),
(2, 1, 1, 33, 1, '{\"1\":\"84\"}', 'good', 4, 2, 1747591200, '2025-05-19 11:56:07', '2025-05-19 11:56:07'),
(3, 1, 1, 9, 1, '{\"1\":\"84\",\"2\":\"23\"}', 'good', 4, 2, 1747591200, '2025-05-19 11:33:17', '2025-05-19 12:03:17'),
(4, 1, 1, 10, 1, '{\"1\":\"65\",\"2\":\"023\"}', 'improve', 4, 2, 1747591200, '2025-05-19 11:33:23', '2025-05-19 12:03:23'),
(5, 1, 1, 11, 1, '{\"1\":\"50\",\"2\":\"65\"}', 'average', 4, 2, 1747591200, '2025-05-19 11:33:27', '2025-05-19 12:03:27'),
(6, 1, 1, 12, 1, '{\"1\":\"100\",\"2\":\"056\"}', 'excelent', 4, 2, 1747591200, '2025-05-19 11:33:29', '2025-05-19 12:03:29'),
(7, 1, 1, 14, 1, '{\"1\":\"030\",\"2\":\"05\"}', 'put extra effort', 4, 2, 1747591200, '2025-05-19 11:33:36', '2025-05-19 12:03:36'),
(8, 1, 1, 15, 1, '{\"1\":\"65\",\"2\":\"065\"}', 'average', 4, 2, 1747591200, '2025-05-19 11:33:39', '2025-05-19 12:03:39'),
(9, 1, 1, 16, 1, '{\"1\":\"95\",\"2\":\"65\"}', 'average', 4, 2, 1747591200, '2025-05-19 11:33:41', '2025-05-19 12:03:41'),
(10, 1, 1, 17, 1, '{\"1\":\"56\",\"2\":\"065\"}', 'average', 4, 2, 1747591200, '2025-05-19 11:33:43', '2025-05-19 12:03:43'),
(11, 1, 1, 19, 1, '{\"1\":\"83\",\"2\":\"65\"}', 'good', 4, 2, 1747591200, '2025-05-19 11:33:50', '2025-05-19 12:03:50'),
(12, 1, 1, 29, 1, '{\"1\":\"95\"}', 'excelent', 4, 2, 1747591200, '2025-05-19 12:00:33', '2025-05-19 12:00:33'),
(13, 1, 1, 27, 1, '{\"1\":\"15\",\"2\":\"34\"}', 'hard work', 4, 2, 1747591200, '2025-05-19 11:34:21', '2025-05-19 12:04:21'),
(14, 1, 1, 26, 1, '{\"1\":\"50\",\"2\":\"65\"}', 'improve', 4, 2, 1747591200, '2025-05-19 11:34:17', '2025-05-19 12:04:17'),
(15, 1, 1, 25, 1, '{\"1\":\"62\",\"2\":\"54\"}', 'good', 4, 2, 1747591200, '2025-05-19 11:34:12', '2025-05-19 12:04:12'),
(16, 1, 1, 24, 1, '{\"1\":\"65\",\"2\":\"45\"}', 'good', 4, 2, 1747591200, '2025-05-19 11:34:08', '2025-05-19 12:04:08'),
(17, 1, 1, 23, 1, '{\"1\":\"65\",\"2\":\"45\"}', 'good', 4, 2, 1747591200, '2025-05-19 11:34:03', '2025-05-19 12:04:03'),
(18, 1, 1, 22, 1, '{\"1\":\"65\",\"2\":\"75\"}', 'good', 4, 2, 1747591200, '2025-05-19 11:34:00', '2025-05-19 12:04:00'),
(19, 1, 1, 21, 1, '{\"1\":\"65\",\"2\":\"75\"}', 'good', 4, 2, 1747591200, '2025-05-19 11:33:55', '2025-05-19 12:03:55'),
(20, 1, 1, 20, 1, '{\"1\":\"65\",\"2\":\"65\"}', 'good', 4, 2, 1747591200, '2025-05-19 11:33:52', '2025-05-19 12:03:52'),
(21, 1, 1, 18, 1, '{\"1\":\"77\",\"2\":\"65\"}', 'good', 4, 2, 1747591200, '2025-05-19 11:33:46', '2025-05-19 12:03:46'),
(22, 1, 1, 13, 1, '{\"1\":\"50\",\"2\":\"65\"}', 'average', 4, 2, 1747591200, '2025-05-19 11:33:32', '2025-05-19 12:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade_point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phrase` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `translated` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `phrase`, `translated`) VALUES
(1, 'english', 'Dashboard', 'Dashboard'),
(2, 'english', 'Home', 'Home'),
(3, 'english', 'Schools', 'Schools'),
(4, 'english', 'Total Schools', 'Total Schools'),
(5, 'english', 'Subscription', 'Subscription'),
(6, 'english', 'Total Active Subscription', 'Total Active Subscription'),
(7, 'english', 'Subscription Payment', 'Subscription Payment'),
(8, 'english', 'Superadmin | Ekator 8', 'Superadmin | Ekator 8'),
(9, 'english', 'Close', 'Close'),
(10, 'english', 'School List', 'School List'),
(11, 'english', 'Create school', 'Create school'),
(12, 'english', 'Pending List', 'Pending List'),
(13, 'english', 'Package', 'Package'),
(14, 'english', 'Subscriptions', 'Subscriptions'),
(15, 'english', 'Subscription Report', 'Subscription Report'),
(16, 'english', 'Pending Request', 'Pending Request'),
(17, 'english', 'Confirmed Payment', 'Confirmed Payment'),
(18, 'english', 'Addons', 'Addons'),
(19, 'english', 'Settings', 'Settings'),
(20, 'english', 'System Settings', 'System Settings'),
(21, 'english', 'Session Manager', 'Session Manager'),
(22, 'english', 'Payment Settings', 'Payment Settings'),
(23, 'english', 'Smtp settings', 'Smtp settings'),
(24, 'english', 'About', 'About'),
(25, 'english', 'Superadmin', 'Superadmin'),
(26, 'english', 'My Account', 'My Account'),
(27, 'english', 'Change Password', 'Change Password'),
(28, 'english', 'Log out', 'Log out'),
(29, 'english', 'Loading...', 'Loading...'),
(30, 'english', 'Heads up!', 'Heads up!'),
(31, 'english', 'Are you sure?', 'Are you sure?'),
(32, 'english', 'Back', 'Back'),
(33, 'english', 'Continue', 'Continue'),
(34, 'english', 'You won\'t able to revert this!', 'You won\'t able to revert this!'),
(35, 'english', 'Yes', 'Yes'),
(36, 'english', 'Cancel', 'Cancel'),
(37, 'english', 'Add School', 'Add School'),
(38, 'english', 'Name', 'Name'),
(39, 'english', 'Address', 'Address'),
(40, 'english', 'Phone', 'Phone'),
(41, 'english', 'Info', 'Info'),
(42, 'english', 'Status', 'Status'),
(43, 'english', 'Action', 'Action'),
(44, 'english', 'Active', 'Active'),
(45, 'english', 'Actions', 'Actions'),
(46, 'english', 'Edit School', 'Edit School'),
(47, 'english', 'Edit', 'Edit'),
(48, 'english', 'Delete', 'Delete'),
(49, 'english', 'School Form', 'School Form'),
(50, 'english', 'Provide all the information required for your school.', 'Provide all the information required for your school.'),
(51, 'english', 'Also provide a admin information with email and passwoard.', 'Also provide a admin information with email and passwoard.'),
(52, 'english', 'So that admin can access the created school.', 'So that admin can access the created school.'),
(53, 'english', 'SCHOOL INFO', 'SCHOOL INFO'),
(54, 'english', 'School Name', 'School Name'),
(55, 'english', 'School Address', 'School Address'),
(56, 'english', 'School Email', 'School Email'),
(57, 'english', 'School Phone', 'School Phone'),
(58, 'english', 'ADMIN INFO', 'ADMIN INFO'),
(59, 'english', 'Gender', 'Gender'),
(60, 'english', 'Select a gender', 'Select a gender'),
(61, 'english', 'Male', 'Male'),
(62, 'english', 'Female', 'Female'),
(63, 'english', 'Blood group', 'Blood group'),
(64, 'english', 'Select a blood group', 'Select a blood group'),
(65, 'english', 'A+', 'A+'),
(66, 'english', 'A-', 'A-'),
(67, 'english', 'B+', 'B+'),
(68, 'english', 'B-', 'B-'),
(69, 'english', 'AB+', 'AB+'),
(70, 'english', 'AB-', 'AB-'),
(71, 'english', 'O+', 'O+'),
(72, 'english', 'O-', 'O-'),
(73, 'english', 'Admin Address', 'Admin Address'),
(74, 'english', 'Admin Phone Number', 'Admin Phone Number'),
(75, 'english', 'Photo', 'Photo'),
(76, 'english', 'Admin Email', 'Admin Email'),
(77, 'english', 'Admin Password', 'Admin Password'),
(78, 'english', 'Submit', 'Submit'),
(79, 'english', 'Pending School List', 'Pending School List'),
(80, 'english', 'No data found', 'No data found'),
(81, 'english', 'Packages', 'Packages'),
(82, 'english', 'Add Package', 'Add Package'),
(83, 'english', 'Price', 'Price'),
(84, 'english', 'Interval', 'Interval'),
(85, 'english', 'Preiod', 'Preiod'),
(86, 'english', 'Filter', 'Filter'),
(87, 'english', 'Export', 'Export'),
(88, 'english', 'PDF', 'PDF'),
(89, 'english', 'CSV', 'CSV'),
(90, 'english', 'Print', 'Print'),
(91, 'english', 'Paid By', 'Paid By'),
(92, 'english', 'Purchase Date', 'Purchase Date'),
(93, 'english', 'Expire Date', 'Expire Date'),
(94, 'english', 'Confirmed Request', 'Confirmed Request'),
(95, 'english', 'Payment For', 'Payment For'),
(96, 'english', 'Payment Document', 'Payment Document'),
(97, 'english', 'Approve', 'Approve'),
(98, 'english', 'Manage Addons', 'Manage Addons'),
(99, 'english', 'Install addon', 'Install addon'),
(100, 'english', 'Add new addon', 'Add new addon'),
(101, 'english', 'System Name', 'System Name'),
(102, 'english', 'System Title', 'System Title'),
(103, 'english', 'System Email', 'System Email'),
(104, 'english', 'Fax', 'Fax'),
(105, 'english', 'Timezone', 'Timezone'),
(106, 'english', 'Footer Text', 'Footer Text'),
(107, 'english', 'Footer Link', 'Footer Link'),
(108, 'english', 'PRODUCT UPDATE', 'PRODUCT UPDATE'),
(109, 'english', 'File', 'File'),
(110, 'english', 'Update', 'Update'),
(111, 'english', 'SYSTEM LOGO', 'SYSTEM LOGO'),
(112, 'english', 'Dark logo', 'Dark logo'),
(113, 'english', 'Light logo', 'Light logo'),
(114, 'english', 'Favicon', 'Favicon'),
(115, 'english', 'Update Logo', 'Update Logo'),
(116, 'english', 'Create Session', 'Create Session'),
(117, 'english', 'Add Session', 'Add Session'),
(118, 'english', 'Active session ', 'Active session '),
(119, 'english', 'Select a session', 'Select a session'),
(120, 'english', 'Activate', 'Activate'),
(121, 'english', 'Session title', 'Session title'),
(122, 'english', 'Options', 'Options'),
(123, 'english', 'Edit Session', 'Edit Session'),
(124, 'english', 'Global Currency', 'Global Currency'),
(125, 'english', 'Select system currency', 'Select system currency'),
(126, 'english', 'Currency Position', 'Currency Position'),
(127, 'english', 'Left', 'Left'),
(128, 'english', 'Right', 'Right'),
(129, 'english', 'Left with a space', 'Left with a space'),
(130, 'english', 'Right with a space', 'Right with a space'),
(131, 'english', 'Update Currency', 'Update Currency'),
(132, 'english', 'Protocol', 'Protocol'),
(133, 'english', 'Smtp crypto', 'Smtp crypto'),
(134, 'english', 'Smtp host', 'Smtp host'),
(135, 'english', 'Smtp port', 'Smtp port'),
(136, 'english', 'Smtp username', 'Smtp username'),
(137, 'english', 'Smtp password', 'Smtp password'),
(138, 'english', 'Save', 'Save'),
(139, 'english', 'Not found', 'Not found'),
(140, 'english', 'About this application', 'About this application'),
(141, 'english', 'Software version', 'Software version'),
(142, 'english', 'Check update', 'Check update'),
(143, 'english', 'PHP version', 'PHP version'),
(144, 'english', 'Curl enable', 'Curl enable'),
(145, 'english', 'Enabled', 'Enabled'),
(146, 'english', 'Purchase code', 'Purchase code'),
(147, 'english', 'Product license', 'Product license'),
(148, 'english', 'invalid', 'invalid'),
(149, 'english', 'Enter valid purchase code', 'Enter valid purchase code'),
(150, 'english', 'Customer support status', 'Customer support status'),
(151, 'english', 'Support expiry date', 'Support expiry date'),
(152, 'english', 'Customer name', 'Customer name'),
(153, 'english', 'Get customer support', 'Get customer support'),
(154, 'english', 'Customer support', 'Customer support'),
(155, 'english', 'Email', 'Email'),
(156, 'english', 'Password', 'Password'),
(157, 'english', 'Forgot password', 'Forgot password'),
(158, 'english', 'Help', 'Help'),
(159, 'english', 'Login', 'Login'),
(160, 'english', 'Total Student', 'Total Student'),
(161, 'english', 'Teacher', 'Teacher'),
(162, 'english', 'Total Teacher', 'Total Teacher'),
(163, 'english', 'Parents', 'Parents'),
(164, 'english', 'Total Parent', 'Total Parent'),
(165, 'english', 'Staff', 'Staff'),
(166, 'english', 'Total Staff', 'Total Staff'),
(167, 'english', 'Todays Attendance', 'Todays Attendance'),
(168, 'english', 'Go to Attendance', 'Go to Attendance'),
(169, 'english', 'Income Report', 'Income Report'),
(170, 'english', 'Year', 'Year'),
(171, 'english', 'Month', 'Month'),
(172, 'english', 'Week', 'Week'),
(173, 'english', 'Upcoming Events', 'Upcoming Events'),
(174, 'english', 'See all', 'See all'),
(175, 'english', 'Admin', 'Admin'),
(176, 'english', 'Users', 'Users'),
(177, 'english', 'Accountant', 'Accountant'),
(178, 'english', 'Librarian', 'Librarian'),
(179, 'english', 'Parent', 'Parent'),
(180, 'english', 'Student', 'Student'),
(181, 'english', 'Teacher Permission', 'Teacher Permission'),
(182, 'english', 'Admissions', 'Admissions'),
(183, 'english', 'Examination', 'Examination'),
(184, 'english', 'Exam Category', 'Exam Category'),
(185, 'english', 'Offline Exam', 'Offline Exam'),
(186, 'english', 'Marks', 'Marks'),
(187, 'english', 'Grades', 'Grades'),
(188, 'english', 'Promotion', 'Promotion'),
(189, 'english', 'Academic', 'Academic'),
(190, 'english', 'Daily Attendance', 'Daily Attendance'),
(191, 'english', 'Class List', 'Class List'),
(192, 'english', 'Class Routine', 'Class Routine'),
(193, 'english', 'Subjects', 'Subjects'),
(194, 'english', 'Gradebooks', 'Gradebooks'),
(195, 'english', 'Syllabus', 'Syllabus'),
(196, 'english', 'Class Room', 'Class Room'),
(197, 'english', 'Department', 'Department'),
(198, 'english', 'Accounting', 'Accounting'),
(199, 'english', 'Student Fee Manager', 'Student Fee Manager'),
(200, 'english', 'Offline Payment Request', 'Offline Payment Request'),
(201, 'english', 'Expense Manager', 'Expense Manager'),
(202, 'english', 'Expense Category', 'Expense Category'),
(203, 'english', 'Back Office', 'Back Office'),
(204, 'english', 'Book List Manager', 'Book List Manager'),
(205, 'english', 'Book Issue Report', 'Book Issue Report'),
(206, 'english', 'Noticeboard', 'Noticeboard'),
(207, 'english', 'Events', 'Events'),
(208, 'english', 'School Settings', 'School Settings'),
(209, 'english', 'School information', 'School information'),
(210, 'english', 'Update settings', 'Update settings'),
(211, 'english', 'Deactive', 'Deactive'),
(212, 'english', 'Session has been activated', 'Session has been activated'),
(213, 'english', 'Update session', 'Update session'),
(214, 'english', 'Admins', 'Admins'),
(215, 'english', 'Create Admin', 'Create Admin'),
(216, 'english', 'User Info', 'User Info'),
(217, 'english', 'Oprions', 'Oprions'),
(218, 'english', 'Edit Admin', 'Edit Admin'),
(219, 'english', 'Teachers', 'Teachers'),
(220, 'english', 'Create Teacher', 'Create Teacher'),
(221, 'english', 'Create Accountant', 'Create Accountant'),
(222, 'english', 'Edit Accountant', 'Edit Accountant'),
(223, 'english', 'Librarians', 'Librarians'),
(224, 'english', 'Create Librarian', 'Create Librarian'),
(225, 'english', 'Edit Librarian', 'Edit Librarian'),
(226, 'english', 'Create Parent', 'Create Parent'),
(227, 'english', 'Edit Parent', 'Edit Parent'),
(228, 'english', 'Students', 'Students'),
(229, 'english', 'Create Student', 'Create Student'),
(230, 'english', 'Generate id card', 'Generate id card'),
(231, 'english', 'Assigned Permission For Teacher', 'Assigned Permission For Teacher'),
(232, 'english', 'Select a class', 'Select a class'),
(233, 'english', 'First select a class', 'First select a class'),
(234, 'english', 'Please select a class and section', 'Please select a class and section'),
(235, 'english', 'Attendance', 'Attendance'),
(236, 'english', 'Permission updated successfully.', 'Permission updated successfully.'),
(237, 'english', 'Admission', 'Admission'),
(238, 'english', 'Bulk student admission', 'Bulk student admission'),
(239, 'english', 'Class', 'Class'),
(240, 'english', 'Section', 'Section'),
(241, 'english', 'Select section', 'Select section'),
(242, 'english', 'Birthday', 'Birthday'),
(243, 'english', 'Select gender', 'Select gender'),
(244, 'english', 'Others', 'Others'),
(245, 'english', 'Student profile image', 'Student profile image'),
(246, 'english', 'Add Student', 'Add Student'),
(247, 'english', 'Create Exam Category', 'Create Exam Category'),
(248, 'english', 'Add Exam Category', 'Add Exam Category'),
(249, 'english', 'Title', 'Title'),
(250, 'english', 'Class test', 'Class test'),
(251, 'english', 'Edit Exam Category', 'Edit Exam Category'),
(252, 'english', 'Midterm exam', 'Midterm exam'),
(253, 'english', 'Final exam', 'Final exam'),
(254, 'english', 'Admission exam', 'Admission exam'),
(255, 'english', 'Create Exam', 'Create Exam'),
(256, 'english', 'Add Exam', 'Add Exam'),
(257, 'english', 'Exam', 'Exam'),
(258, 'english', 'Starting Time', 'Starting Time'),
(259, 'english', 'Ending Time', 'Ending Time'),
(260, 'english', 'Total Marks', 'Total Marks'),
(261, 'english', 'Edit Exam', 'Edit Exam'),
(262, 'english', 'Manage Marks', 'Manage Marks'),
(263, 'english', 'Select category', 'Select category'),
(264, 'english', 'Select class', 'Select class'),
(265, 'english', 'Please select all the fields', 'Please select all the fields'),
(266, 'english', 'Examknation', 'Examknation'),
(267, 'english', 'Create Grade', 'Create Grade'),
(268, 'english', 'Add grade', 'Add grade'),
(269, 'english', 'Grade', 'Grade'),
(270, 'english', 'Grade Point', 'Grade Point'),
(271, 'english', 'Mark From', 'Mark From'),
(272, 'english', 'Mark Upto', 'Mark Upto'),
(273, 'english', 'Promotions', 'Promotions'),
(274, 'english', 'Current session', 'Current session'),
(275, 'english', 'Session from', 'Session from'),
(276, 'english', 'Next session', 'Next session'),
(277, 'english', 'Session to', 'Session to'),
(278, 'english', 'Promoting from', 'Promoting from'),
(279, 'english', 'Promoting to', 'Promoting to'),
(280, 'english', 'Manage promotion', 'Manage promotion'),
(281, 'english', 'Take Attendance', 'Take Attendance'),
(282, 'english', 'Select a month', 'Select a month'),
(283, 'english', 'January', 'January'),
(284, 'english', 'February', 'February'),
(285, 'english', 'March', 'March'),
(286, 'english', 'April', 'April'),
(287, 'english', 'May', 'May'),
(288, 'english', 'June', 'June'),
(289, 'english', 'July', 'July'),
(290, 'english', 'August', 'August'),
(291, 'english', 'September', 'September'),
(292, 'english', 'October', 'October'),
(293, 'english', 'November', 'November'),
(294, 'english', 'December', 'December'),
(295, 'english', 'Select a year', 'Select a year'),
(296, 'english', 'Please select in all fields !', 'Please select in all fields !'),
(297, 'english', 'Classes', 'Classes'),
(298, 'english', 'Create Class', 'Create Class'),
(299, 'english', 'Add class', 'Add class'),
(300, 'english', 'Edit Section', 'Edit Section'),
(301, 'english', 'Edit Class', 'Edit Class'),
(302, 'english', 'Routines', 'Routines'),
(303, 'english', 'Add class routine', 'Add class routine'),
(304, 'english', 'Create Subject', 'Create Subject'),
(305, 'english', 'Add subject', 'Add subject'),
(306, 'english', 'Edit Subject', 'Edit Subject'),
(307, 'english', 'Select a exam category', 'Select a exam category'),
(308, 'english', 'Create syllabus', 'Create syllabus'),
(309, 'english', 'Add syllabus', 'Add syllabus'),
(310, 'english', 'Class Rooms', 'Class Rooms'),
(311, 'english', 'Create Class Room', 'Create Class Room'),
(312, 'english', 'Add class room', 'Add class room'),
(313, 'english', 'Edit Class Room', 'Edit Class Room'),
(314, 'english', 'Departments', 'Departments'),
(315, 'english', 'Create Department', 'Create Department'),
(316, 'english', 'Add department', 'Add department'),
(317, 'english', 'Edit Department', 'Edit Department'),
(318, 'english', 'Add Single Invoice', 'Add Single Invoice'),
(319, 'english', 'Add Mass Invoice', 'Add Mass Invoice'),
(320, 'english', 'All class', 'All class'),
(321, 'english', 'All status', 'All status'),
(322, 'english', 'Paid', 'Paid'),
(323, 'english', 'Unpaid', 'Unpaid'),
(324, 'english', 'Invoice No', 'Invoice No'),
(325, 'english', 'Invoice Title', 'Invoice Title'),
(326, 'english', 'Total Amount', 'Total Amount'),
(327, 'english', 'Created at', 'Created at'),
(328, 'english', 'Paid Amount', 'Paid Amount'),
(329, 'english', 'Expense', 'Expense'),
(330, 'english', 'Create Expense', 'Create Expense'),
(331, 'english', 'Add New Expense', 'Add New Expense'),
(332, 'english', 'Create Expense Category', 'Create Expense Category'),
(333, 'english', 'Add Expense Category', 'Add Expense Category'),
(334, 'english', 'Option', 'Option'),
(335, 'english', 'Edit Expense Category', 'Edit Expense Category'),
(336, 'english', 'Book', 'Book'),
(337, 'english', 'Add book', 'Add book'),
(338, 'english', 'Book name', 'Book name'),
(339, 'english', 'Author', 'Author'),
(340, 'english', 'Copies', 'Copies'),
(341, 'english', 'Available copies', 'Available copies'),
(342, 'english', 'Edit Book', 'Edit Book'),
(343, 'english', 'Book Issue', 'Book Issue'),
(344, 'english', 'Issue Book', 'Issue Book'),
(345, 'english', 'Noticeboard calendar', 'Noticeboard calendar'),
(346, 'english', 'Add New Notice', 'Add New Notice'),
(347, 'english', 'Locales:', 'Locales:'),
(348, 'english', 'Current Plan', 'Current Plan'),
(349, 'english', 'Silver', 'Silver'),
(350, 'english', 'Monthly', 'Monthly'),
(351, 'english', 'Subscription Renew Date', 'Subscription Renew Date'),
(352, 'english', 'Amount To Be Charged', 'Amount To Be Charged'),
(353, 'english', 'Create Event', 'Create Event'),
(354, 'english', 'Event title', 'Event title'),
(355, 'english', 'Date', 'Date'),
(356, 'english', 'Update event', 'Update event'),
(357, 'english', 'Upload addons zip file', 'Upload addons zip file'),
(358, 'english', 'Verified', 'Verified'),
(359, 'english', 'Details info', 'Details info'),
(360, 'english', 'Phone Number', 'Phone Number'),
(361, 'english', 'Designation', 'Designation'),
(362, 'english', 'Save Changes', 'Save Changes'),
(363, 'english', 'Select a status', 'Select a status'),
(364, 'english', 'Update school', 'Update school'),
(365, 'english', 'Package price', 'Package price'),
(366, 'english', 'Package Type', 'Package Type'),
(367, 'english', 'Select a package type', 'Select a package type'),
(368, 'english', 'Trail', 'Trail'),
(369, 'english', 'Select a interval', 'Select a interval'),
(370, 'english', 'Days', 'Days'),
(371, 'english', 'Yearly', 'Yearly'),
(372, 'english', 'Interval Preiod', 'Interval Preiod'),
(373, 'english', 'Description', 'Description'),
(374, 'english', 'Create package', 'Create package'),
(375, 'english', 'Update package', 'Update package'),
(376, 'english', 'Invalid purchase code', 'Invalid purchase code'),
(377, 'english', 'Inactive', 'Inactive'),
(378, 'english', 'Save event', 'Save event'),
(379, 'english', 'Create', 'Create'),
(380, 'english', 'Select a department', 'Select a department'),
(381, 'english', 'One', 'One'),
(382, 'english', 'Two', 'Two'),
(383, 'english', 'Three', 'Three'),
(384, 'english', 'Four', 'Four'),
(385, 'english', 'Five', 'Five'),
(386, 'english', 'Six', 'Six'),
(387, 'english', 'Seven', 'Seven'),
(388, 'english', 'Eight', 'Eight'),
(389, 'english', 'Nine', 'Nine'),
(390, 'english', 'Ten', 'Ten'),
(391, 'english', 'Add students', 'Add students'),
(392, 'english', 'Create category', 'Create category'),
(393, 'english', 'Exam Name', 'Exam Name'),
(394, 'english', 'Select exam category name', 'Select exam category name'),
(395, 'english', 'Subject', 'Subject'),
(396, 'english', 'Starting date', 'Starting date'),
(397, 'english', 'Ending date', 'Ending date'),
(398, 'english', 'Student name', 'Student name'),
(399, 'english', 'Mark', 'Mark'),
(400, 'english', 'Comment', 'Comment'),
(401, 'english', 'Value has been updated successfully', 'Value has been updated successfully'),
(402, 'english', 'Required mark field', 'Required mark field'),
(403, 'english', 'Image', 'Image'),
(404, 'english', 'Enroll to', 'Enroll to'),
(405, 'english', 'Select a section', 'Select a section'),
(406, 'english', 'Attendance Report Of', 'Attendance Report Of'),
(407, 'english', 'Last Update at', 'Last Update at'),
(408, 'english', 'Time', 'Time'),
(409, 'english', 'Please select the required fields', 'Please select the required fields'),
(410, 'english', 'Saturday', 'Saturday'),
(411, 'english', 'Sunday', 'Sunday'),
(412, 'english', 'Monday', 'Monday'),
(413, 'english', 'Tuesday', 'Tuesday'),
(414, 'english', 'Wednesday', 'Wednesday'),
(415, 'english', 'Update subject', 'Update subject'),
(416, 'english', 'Select subject', 'Select subject'),
(417, 'english', 'Assign a teacher', 'Assign a teacher'),
(418, 'english', 'Select a class room', 'Select a class room'),
(419, 'english', 'Day', 'Day'),
(420, 'english', 'Select a day', 'Select a day'),
(421, 'english', 'Thursday', 'Thursday'),
(422, 'english', 'Friday', 'Friday'),
(423, 'english', 'Starting hour', 'Starting hour'),
(424, 'english', 'Starting minute', 'Starting minute'),
(425, 'english', 'Ending hour', 'Ending hour'),
(426, 'english', 'Ending minute', 'Ending minute'),
(427, 'english', 'Add routine', 'Add routine'),
(428, 'english', 'Edit class routine', 'Edit class routine'),
(429, 'english', 'Tittle', 'Tittle'),
(430, 'english', 'Upload syllabus', 'Upload syllabus'),
(431, 'english', 'Select student', 'Select student'),
(432, 'english', 'Select a student', 'Select a student'),
(433, 'english', 'Payment method', 'Payment method'),
(434, 'english', 'Select a payment method', 'Select a payment method'),
(435, 'english', 'Cash', 'Cash'),
(436, 'english', 'Paypal', 'Paypal'),
(437, 'english', 'Paytm', 'Paytm'),
(438, 'english', 'Razorpay', 'Razorpay'),
(439, 'english', 'Create invoice', 'Create invoice'),
(440, 'english', 'Payment date', 'Payment date'),
(441, 'english', 'Print invoice', 'Print invoice'),
(442, 'english', 'Edit Invoice', 'Edit Invoice'),
(443, 'english', 'Amount', 'Amount'),
(444, 'english', 'Select an expense category', 'Select an expense category'),
(445, 'english', 'Edit Expense', 'Edit Expense'),
(446, 'english', 'Issue date', 'Issue date'),
(447, 'english', 'Select book', 'Select book'),
(448, 'english', 'Id', 'Id'),
(449, 'english', 'Pending', 'Pending'),
(450, 'english', 'Update issued book', 'Update issued book'),
(451, 'english', 'Return this book', 'Return this book'),
(452, 'english', 'Notice title', 'Notice title'),
(453, 'english', 'Start date', 'Start date'),
(454, 'english', 'Setup additional date & time', 'Setup additional date & time'),
(455, 'english', 'Start time', 'Start time'),
(456, 'english', 'End date', 'End date'),
(457, 'english', 'End time', 'End time'),
(458, 'english', 'Notice', 'Notice'),
(459, 'english', 'Show on website', 'Show on website'),
(460, 'english', 'Show', 'Show'),
(461, 'english', 'Do not need to show', 'Do not need to show'),
(462, 'english', 'Upload notice photo', 'Upload notice photo'),
(463, 'english', 'Save notice', 'Save notice'),
(464, 'english', 'School Currency', 'School Currency'),
(465, 'english', 'Exam List', 'Exam List'),
(466, 'english', 'Profile', 'Profile'),
(467, 'english', ' Download', ' Download'),
(468, 'english', 'Select a subject', 'Select a subject'),
(469, 'english', 'Welcome, to', 'Welcome, to'),
(470, 'english', 'Fee Manager', 'Fee Manager'),
(471, 'english', 'List Of Books', 'List Of Books'),
(472, 'english', 'Issued Book', 'Issued Book'),
(473, 'english', 'Student Code', 'Student Code'),
(474, 'english', 'Candice Kennedy', 'Candice Kennedy'),
(475, 'english', 'English', 'English'),
(476, 'english', 'Natalie Ashley', 'Natalie Ashley'),
(477, 'english', 'Byron Chase', 'Byron Chase'),
(478, 'english', 'Rafael Hardy', 'Rafael Hardy'),
(479, 'english', 'Mathematics', 'Mathematics'),
(480, 'english', 'Aphrodite Shaffer', 'Aphrodite Shaffer'),
(481, 'english', 'Bangla', 'Bangla'),
(482, 'english', 'Fatima Phillips', 'Fatima Phillips'),
(483, 'english', 'Sydney Pearson', 'Sydney Pearson'),
(484, 'english', 'Drawing', 'Drawing'),
(485, 'english', 'Imani Cooper', 'Imani Cooper'),
(486, 'english', 'Ulric Spencer', 'Ulric Spencer'),
(487, 'english', 'Yoshio Gentry', 'Yoshio Gentry'),
(488, 'english', 'Attendance report', 'Attendance report'),
(489, 'english', 'Of', 'Of'),
(490, 'english', 'Last updated at', 'Last updated at'),
(491, 'english', 'View Marks', 'View Marks'),
(492, 'english', 'Subject name', 'Subject name'),
(493, 'english', 'Pay', 'Pay'),
(494, 'english', 'List Of Book', 'List Of Book'),
(495, 'english', 'Child', 'Child'),
(496, 'english', 'Teaches', 'Teaches'),
(498, 'english', 'Student List', 'Student List'),
(499, 'english', 'Id card', 'Id card'),
(500, 'english', 'Code', 'Code'),
(501, 'english', 'Not found', 'Not found'),
(502, 'english', 'Contact', 'Contact'),
(503, 'english', 'Search Attendance Report', 'Search Attendance Report'),
(504, 'english', 'Please select in all fields !', 'Please select in all fields !'),
(505, 'english', 'Please select student', 'Please select student'),
(506, 'english', 'Download', 'Download'),
(507, 'english', 'Ekattor', 'Ekattor'),
(508, 'english', 'Add  Single Invoice', 'Add  Single Invoice'),
(509, 'english', 'Add  Mass Invoice', 'Add  Mass Invoice'),
(510, 'english', 'Update invoice', 'Update invoice'),
(511, 'english', 'Invoice', 'Invoice'),
(512, 'english', 'Please find below the invoice', 'Please find below the invoice'),
(513, 'english', 'Billing Address', 'Billing Address'),
(514, 'english', 'Due Amount', 'Due Amount'),
(515, 'english', 'Student Fee', 'Student Fee'),
(516, 'english', 'Subtotal', 'Subtotal'),
(517, 'english', 'Due', 'Due'),
(518, 'english', 'Grand Total', 'Grand Total'),
(519, 'english', 'Update book issue information', 'Update book issue information'),
(520, 'english', 'Not Subscribed', 'Not Subscribed'),
(521, 'english', 'You are not subscribed to any plan. Subscribe now.', 'You are not subscribed to any plan. Subscribe now.'),
(522, 'english', 'Subscribe', 'Subscribe'),
(523, 'english', 'Package List', 'Package List'),
(524, 'english', 'Payment | Ekator 8', 'Payment | Ekator 8'),
(525, 'english', 'Make Payment', 'Make Payment'),
(526, 'english', 'Payment Gateway', 'Payment Gateway'),
(527, 'english', 'Offline', 'Offline'),
(528, 'english', 'Addon', 'Addon'),
(529, 'english', 'Invoice Summary', 'Invoice Summary'),
(530, 'english', 'Document of your payment', 'Document of your payment'),
(531, 'english', 'Submit payment document', 'Submit payment document'),
(532, 'english', 'Instruction', 'Instruction'),
(533, 'english', 'Admin will review your payment document and then approve the Payment.', 'Admin will review your payment document and then approve the Payment.'),
(534, 'english', 'Pending Payment', 'Pending Payment'),
(535, 'english', 'You payment request has been sent to Superadmin ', 'You payment request has been sent to Superadmin '),
(536, 'english', 'Suspended', 'Suspended'),
(537, 'english', 'Enter your email address to reset your password.', 'Enter your email address to reset your password.'),
(538, 'english', 'Reset password', 'Reset password'),
(539, 'english', 'Language Settings', 'Language Settings'),
(540, 'english', 'Language', 'Language'),
(541, 'english', 'Edit phrase', 'Edit phrase'),
(542, 'english', 'Delete language', 'Delete language'),
(543, 'english', 'edit_phrase', 'edit_phrase'),
(544, 'english', 'delete_language', 'delete_language'),
(545, 'english', 'System default language can not be removed', 'System default language can not be removed'),
(546, 'english', 'language_list', 'language_list'),
(547, 'english', 'add_language', 'add_language'),
(548, 'english', 'Language list', 'Language list'),
(549, 'english', 'Add language', 'Add language'),
(550, 'english', 'Add new phrase', 'Add new phrase'),
(551, 'english', 'add_new_language', 'add_new_language'),
(552, 'english', 'No special character or space is allowed', 'No special character or space is allowed'),
(553, 'english', 'valid_examples', 'valid_examples'),
(554, 'english', 'No special character or space is allowed', 'No special character or space is allowed'),
(555, 'english', 'Validexamples', 'Validexamples'),
(556, 'english', 'Add new language', 'Add new language'),
(557, 'english', 'Valid examples', 'Valid examples'),
(560, 'english', 'Phrase updated', 'Phrase updated'),
(561, 'english', 'System Language', 'System Language'),
(562, 'english', 'Edit Grade', 'Edit Grade'),
(563, 'english', 'Number of scopy', 'Number of scopy'),
(564, 'english', 'Save book', 'Save book'),
(565, 'english', 'New Password', 'New Password'),
(566, 'english', 'Confirm Password', 'Confirm Password'),
(567, 'english', 'Current Password', 'Current Password'),
(568, 'english', 'Add Parent', 'Add Parent'),
(569, 'english', 'Parent profile image', 'Parent profile image'),
(570, 'english', 'Allowances', 'Allowances'),
(571, 'english', 'Type', 'Type'),
(572, 'english', 'Select child', 'Select child'),
(573, 'english', 'Show student list', 'Show student list'),
(574, 'english', 'Update attendance', 'Update attendance'),
(575, 'english', 'Present All', 'Present All'),
(576, 'english', 'Absent All', 'Absent All'),
(577, 'english', 'present', 'present'),
(578, 'english', 'absent', 'absent'),
(579, 'english', 'not_updated_yet', 'not_updated_yet'),
(580, 'english', '31', '31'),
(581, 'english', 'Not updated yet', 'Not updated yet'),
(582, 'english', 'Update class', 'Update class'),
(583, 'english', 'Edit syllabus', 'Edit syllabus'),
(584, 'english', 'Select expense category', 'Select expense category'),
(585, 'english', 'Filter Options', 'Filter Options'),
(586, 'english', 'Reset', 'Reset'),
(587, 'english', 'Apply', 'Apply'),
(588, 'english', 'Profile info updated successfully', 'Profile info updated successfully'),
(589, 'english', 'not_found', 'not_found'),
(590, 'english', 'No date found', 'No date found'),
(591, 'english', 'No date found', 'No date found'),
(592, 'english', 'Blood ', 'Blood '),
(593, 'english', 'Blood Type', 'Blood Type'),
(594, 'english', 'Help Link', 'Help Link'),
(595, 'english', 'From', 'From'),
(596, 'english', 'To', 'To'),
(597, 'english', 'Select a parent', 'Select a parent'),
(598, 'english', 'Add', 'Add'),
(599, 'english', 'Document', 'Document'),
(600, 'english', 'Decline', 'Decline'),
(601, 'english', 'Number of child:', 'Number of child:'),
(602, 'english', 'Number of child', 'Number of child'),
(603, 'english', 'Parent Create', 'Parent Create'),
(604, 'english', 'Parent Update', 'Parent Update'),
(2452, 'english', 'Version updated successfully', 'Version updated successfully'),
(2453, 'english', 'Subcription', 'Subcription'),
(2454, 'english', 'Expired Subscription', 'Expired Subscription'),
(2455, 'english', 'Website Settings', 'Website Settings'),
(2456, 'english', 'Manage Faq', 'Manage Faq'),
(2457, 'english', 'Visit Website', 'Visit Website'),
(2458, 'english', 'School Logo', 'School Logo'),
(2459, 'english', 'Feature', 'Feature'),
(2460, 'english', 'Faq', 'Faq'),
(2461, 'english', 'Register', 'Register'),
(2462, 'english', 'School Register Form', 'School Register Form'),
(2463, 'english', 'Admin Name', 'Admin Name'),
(2464, 'english', 'User Account', 'User Account'),
(2465, 'english', 'Our Features', 'Our Features'),
(2466, 'english', 'Features', 'Features'),
(2467, 'english', 'Students Admission', 'Students Admission'),
(2468, 'english', 'Your schools can add their students in two different ways', 'Your schools can add their students in two different ways'),
(2469, 'english', 'Take your students attendance in a smart way', 'Take your students attendance in a smart way'),
(2470, 'english', 'Manage your schools class list whenever you want', 'Manage your schools class list whenever you want'),
(2471, 'english', 'Add different subjects for different classes', 'Add different subjects for different classes'),
(2472, 'english', 'Event Calender', 'Event Calender'),
(2473, 'english', 'The school admin can manage their schools events separately', 'The school admin can manage their schools events separately'),
(2474, 'english', 'Routine', 'Routine'),
(2475, 'english', 'Manage your schools class routine easily', 'Manage your schools class routine easily'),
(2476, 'english', 'Student Information', 'Student Information'),
(2477, 'english', 'Add your students information within a few minute', 'Add your students information within a few minute'),
(2478, 'english', 'Manage syllabuses based on the classes', 'Manage syllabuses based on the classes'),
(2479, 'english', 'Fees Management', 'Fees Management'),
(2480, 'english', 'Pay academic fees in a smart way with Ekattor 8', 'Pay academic fees in a smart way with Ekattor 8'),
(2481, 'english', 'ID Card Generator', 'ID Card Generator'),
(2482, 'english', 'Generate your students ID card whenever you want', 'Generate your students ID card whenever you want'),
(2483, 'english', 'Online Payment Gateway', 'Online Payment Gateway'),
(2484, 'english', 'Pay your subscription and academic fees', 'Pay your subscription and academic fees'),
(2485, 'english', 'Invoice Generator', 'Invoice Generator'),
(2486, 'english', 'Generate invoices to make the payments more reliable', 'Generate invoices to make the payments more reliable'),
(2487, 'english', 'Offline Payment', 'Offline Payment'),
(2488, 'english', 'Complete payment with local money', 'Complete payment with local money'),
(2489, 'english', 'Book List', 'Book List'),
(2490, 'english', 'Manage your schools library within a few clicks', 'Manage your schools library within a few clicks'),
(2491, 'english', 'Manage your schools notices smartly', 'Manage your schools notices smartly'),
(2492, 'english', 'Create and manage your schools exams and categories', 'Create and manage your schools exams and categories'),
(2493, 'english', 'Marks Management', 'Marks Management'),
(2494, 'english', 'Manage your students exam marks', 'Manage your students exam marks'),
(2495, 'english', 'Add and manage grades in the examination', 'Add and manage grades in the examination'),
(2496, 'english', 'Have Any Question', 'Have Any Question'),
(2497, 'english', 'Contact us with any questions', 'Contact us with any questions'),
(2498, 'english', 'Contact Us', 'Contact Us'),
(2499, 'english', 'Social Link', 'Social Link'),
(2500, 'english', 'Navbar Title', 'Navbar Title'),
(2501, 'english', 'Frontend View', 'Frontend View'),
(2502, 'english', 'No', 'No'),
(2503, 'english', 'Youtube Api Key', 'Youtube Api Key'),
(2504, 'english', 'Vimeo Api Key', 'Vimeo Api Key'),
(2505, 'english', 'Has to be bigger than', 'Has to be bigger than'),
(2506, 'english', 'Nav Bar Logo', 'Nav Bar Logo'),
(2507, 'english', 'Email Template Settings', 'Email Template Settings'),
(2508, 'english', 'Email Title', 'Email Title'),
(2509, 'english', 'Email Details', 'Email Details'),
(2510, 'english', 'Remaining characters is', 'Remaining characters is'),
(2511, 'english', 'Warning Text', 'Warning Text'),
(2512, 'english', 'Email logo', 'Email logo'),
(2513, 'english', 'Social logo-1', 'Social logo-1'),
(2514, 'english', 'Social logo-2', 'Social logo-2'),
(2515, 'english', 'Social logo-3', 'Social logo-3'),
(2516, 'english', 'Only the server will support email logos and social media icons.Localhost won\'t support this.', 'Only the server will support email logos and social media icons.Localhost won\'t support this.'),
(2517, 'english', 'GENERAL SETTINGS', 'GENERAL SETTINGS'),
(2518, 'english', 'Banner Title', 'Banner Title'),
(2519, 'english', 'Banner Subtitle', 'Banner Subtitle'),
(2520, 'english', 'Price Subtitle', 'Price Subtitle'),
(2521, 'english', 'Faq Subtitle', 'Faq Subtitle'),
(2522, 'english', 'Facebook Link', 'Facebook Link'),
(2523, 'english', 'Twitter Link', 'Twitter Link'),
(2524, 'english', 'Linkedin Link', 'Linkedin Link'),
(2525, 'english', 'Instagram Link', 'Instagram Link'),
(2526, 'english', 'Contact Mail', 'Contact Mail'),
(2527, 'english', 'Frontend Footer Text', 'Frontend Footer Text'),
(2528, 'english', 'Copyright Text', 'Copyright Text'),
(2529, 'english', 'Add question and answer', 'Add question and answer'),
(2530, 'english', 'Faq List', 'Faq List'),
(2531, 'english', 'Update question and answer', 'Update question and answer'),
(2532, 'english', 'Question Title', 'Question Title'),
(2533, 'english', 'Question Description', 'Question Description'),
(2534, 'english', 'Archive ', 'Archive '),
(2535, 'english', 'Admin List', 'Admin List'),
(2536, 'english', 'Trial', 'Trial'),
(2537, 'english', 'Administrator', 'Administrator'),
(2538, 'english', 'Email receipt title', 'Email receipt title'),
(2539, 'english', 'Social Link 1', 'Social Link 1'),
(2540, 'english', 'Social Link 2', 'Social Link 2'),
(2541, 'english', 'Social Link 3', 'Social Link 3'),
(2542, 'english', 'Email template Logo', 'Email template Logo'),
(2543, 'english', 'Admin Profile', 'Admin Profile'),
(2544, 'english', 'Showing', 'Showing'),
(2545, 'english', 'data', 'data'),
(2546, 'english', 'Payment', 'Payment'),
(2547, 'english', 'Excel upload', 'Excel upload'),
(2548, 'english', 'Teacher Profile', 'Teacher Profile'),
(2549, 'english', 'Update routine', 'Update routine'),
(2550, 'english', 'librarian Profile', 'librarian Profile'),
(2551, 'english', 'Accountant Profile', 'Accountant Profile'),
(2552, 'english', '', ''),
(2553, 'english', 'Returned', 'Returned'),
(2554, 'english', 'Class & Section', 'Class & Section'),
(2555, 'english', 'Stripe', 'Stripe'),
(2556, 'english', 'Flutterwave', 'Flutterwave'),
(2557, 'english', 'Paystack', 'Paystack'),
(2558, 'english', 'Expense category name', 'Expense category name'),
(2559, 'english', 'Save category', 'Save category'),
(2560, 'english', 'Data not found', 'Data not found');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE `noticeboard` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notice_title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `show_on_website` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `noticeboard`
--

INSERT INTO `noticeboard` (`id`, `notice_title`, `notice`, `start_date`, `start_time`, `end_date`, `end_time`, `status`, `show_on_website`, `image`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'insitution Holiday', 'there will be a holiday announced by instituion', '05/17/2025', '17:48', '05/17/2025', '17:48', 1, 1, NULL, 4, 2, '2025-05-16 12:20:16', '2025-05-16 12:20:16');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `price`, `package_type`, `interval`, `days`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 'trial package', '50000', 'trial', 'Yearly', 9091987, 1, 'test', '2025-05-14 08:28:01', '2025-05-14 08:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `expense_type` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_keys` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) DEFAULT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `name`, `status`, `configuration`, `created_at`, `updated_at`) VALUES
(1, 'Offline', 1, '[]', 1571608810, 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `transaction_keys` longtext COLLATE utf8mb4_unicode_ci,
  `document_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_history`
--

INSERT INTO `payment_history` (`id`, `payment_type`, `user_id`, `course_id`, `package_id`, `amount`, `school_id`, `transaction_keys`, `document_image`, `paid_by`, `status`, `timestamp`, `created_at`, `updated_at`) VALUES
(1, 'subscription', 2, NULL, 1, 50000, 4, '[]', 'cropped-logo-8-1.jpg', 'offline', 'approve', 1747217768, '2025-05-14 10:46:08', '2025-05-14 10:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_keys` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0=inactive , 1=active',
  `mode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'test' COMMENT 'test / live',
  `created_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `payment_keys`, `image`, `status`, `mode`, `created_at`, `updated_at`, `school_id`) VALUES
(1, 'offline', '{}', 'offline.png', 1, 'offline', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '2022-05-17 07:14:27', '2022-05-17 07:14:27'),
(2, 'admin', '2022-05-17 07:14:27', '2022-05-17 07:14:27'),
(3, 'teacher', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(4, 'accountant', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(5, 'librarian', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(6, 'parent', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(7, 'student', '2022-05-17 07:15:14', '2022-05-17 07:14:27'),
(8, 'user', '2023-06-15 06:29:10', '2023-06-15 06:29:10'),
(9, 'alumni', '2023-06-15 06:29:10', '2023-06-15 06:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `routines`
--

CREATE TABLE `routines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `starting_hour` int(11) NOT NULL,
  `ending_hour` int(11) NOT NULL,
  `starting_minute` int(11) NOT NULL,
  `ending_minute` int(11) NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `routines`
--

INSERT INTO `routines` (`id`, `class_id`, `section_id`, `subject_id`, `starting_hour`, `ending_hour`, `starting_minute`, `ending_minute`, `day`, `teacher_id`, `room_id`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 8, 9, 0, 0, 'monday', 4, 1, 4, 2, '2025-05-14 12:14:36', '2025-05-14 12:14:36'),
(2, 1, 1, 1, 9, 10, 5, 0, 'wednesday', 4, 1, 4, 2, '2025-05-14 12:15:53', '2025-05-14 12:15:53'),
(3, 1, 1, 1, 8, 9, 0, 0, 'friday', 4, 1, 4, 2, '2025-05-14 12:19:59', '2025-05-14 12:19:59'),
(4, 1, 1, 2, 8, 9, 0, 0, 'tuesday', 7, 1, 4, 2, '2025-05-19 11:48:37', '2025-05-19 11:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_info` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `email_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `running_session` int(11) DEFAULT NULL,
  `email_details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warning_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialLink1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialLink2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialLink3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialLogo1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialLogo2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialLogo3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `school_currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `title`, `email`, `phone`, `address`, `school_info`, `status`, `email_title`, `running_session`, `email_details`, `warning_text`, `school_logo`, `socialLink1`, `socialLink2`, `socialLink3`, `email_logo`, `socialLogo1`, `socialLogo2`, `socialLogo3`, `created_at`, `updated_at`, `school_currency`, `currency_position`) VALUES
(1, 'New Rise School', 'school@example.com', '9425458052', 'superadmin@gmail.com', 'bhopal', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-14 08:02:16', '2025-05-14 08:10:52', NULL, NULL),
(2, 'New Rise School', 'school@example.com', '9425458052', 'superadmin@gmail.com', 'bhopal', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-14 08:02:30', '2025-05-14 08:25:20', NULL, NULL),
(3, 'NRT', 'nrt@gmail.com', '8103099592', 'NRT', 'NRT', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-14 08:37:40', '2025-05-14 08:38:49', NULL, NULL),
(4, 'NRT', 'nrt@gmail.com', '8103099592', 'NRT', 'NRT', 1, NULL, 2, NULL, NULL, '1747210115.webp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-14 08:38:35', '2025-05-14 10:47:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `class_id`, `created_at`, `updated_at`) VALUES
(1, 'A', 1, '2025-05-14 12:03:39', '2025-05-14 12:03:39'),
(2, 'A', 2, '2025-05-14 12:04:03', '2025-05-14 12:04:03'),
(3, 'A', 3, '2025-05-14 12:04:41', '2025-05-14 12:04:41'),
(4, 'A', 4, '2025-05-14 12:05:01', '2025-05-14 12:05:01'),
(5, 'A', 5, '2025-05-14 12:05:22', '2025-05-14 12:05:22'),
(6, 'A', 6, '2025-05-14 12:06:00', '2025-05-14 12:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `school_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session_title`, `status`, `school_id`, `created_at`, `updated_at`) VALUES
(1, '2025', 1, NULL, NULL, NULL),
(2, '2025', 1, 4, '2025-05-14 08:38:35', '2025-05-14 08:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `student_fee_managers`
--

CREATE TABLE `student_fee_managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `document_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_fee_managers`
--

INSERT INTO `student_fee_managers` (`id`, `title`, `total_amount`, `class_id`, `student_id`, `parent_id`, `payment_method`, `paid_amount`, `status`, `school_id`, `session_id`, `timestamp`, `created_at`, `updated_at`, `document_image`) VALUES
(1, 'fee of 1st Semester', 50000, 1, 8, NULL, 'cash', 50000, 'paid', 4, 2, 1747332000, '2025-05-16 12:22:22', '2025-05-16 12:22:39', NULL),
(2, 'fee of 1st Semester', 50000, 1, 9, NULL, 'cash', 50000, 'paid', 4, 2, 1747332000, '2025-05-16 12:22:22', '2025-05-19 11:44:14', NULL),
(3, '50000', 50000, 1, 8, NULL, 'paytm', 50000, 'paid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:44:45', NULL),
(4, '50000', 50000, 1, 9, NULL, 'cash', 50000, 'paid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:45:24', NULL),
(5, '50000', 50000, 1, 10, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(6, '50000', 50000, 1, 11, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(7, '50000', 50000, 1, 12, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(8, '50000', 50000, 1, 13, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(9, '50000', 50000, 1, 14, NULL, 'paytm', 50000, 'paid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:45:38', NULL),
(10, '50000', 50000, 1, 15, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(11, '50000', 50000, 1, 16, NULL, 'cash', 50000, 'paid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:45:51', NULL),
(12, '50000', 50000, 1, 17, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(13, '50000', 50000, 1, 18, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(14, '50000', 50000, 1, 19, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(15, '50000', 50000, 1, 20, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(16, '50000', 50000, 1, 21, NULL, 'cash', 50000, 'paid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:46:23', NULL),
(17, '50000', 50000, 1, 22, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(18, '50000', 50000, 1, 23, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(19, '50000', 50000, 1, 24, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(20, '50000', 50000, 1, 25, NULL, 'cash', 50000, 'paid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:46:09', NULL),
(21, '50000', 50000, 1, 26, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(22, '50000', 50000, 1, 27, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(23, '50000', 50000, 1, 28, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(24, '50000', 50000, 1, 29, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(25, '50000', 50000, 1, 30, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(26, '50000', 50000, 1, 31, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(27, '50000', 50000, 1, 32, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL),
(28, '50000', 50000, 1, 33, NULL, NULL, 50000, 'unpaid', 4, 2, 1747591200, '2025-05-19 11:43:35', '2025-05-19 11:43:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `class_id`, `school_id`, `session_id`, `created_at`, `updated_at`) VALUES
(1, 'CS1', 1, 4, 2, '2025-05-14 12:08:14', '2025-05-14 12:08:14'),
(2, 'CS2', 1, 4, 2, '2025-05-14 12:08:26', '2025-05-14 12:11:19'),
(3, 'CS3', 1, 4, 2, '2025-05-14 12:08:39', '2025-05-14 12:08:39'),
(4, 'CS3', 3, 4, 2, '2025-05-14 12:08:51', '2025-05-14 12:08:51'),
(5, 'CS4', 1, 4, 2, '2025-05-14 12:09:02', '2025-05-14 12:10:49'),
(6, 'CS5', 1, 4, 2, '2025-05-14 12:09:17', '2025-05-14 12:10:58'),
(7, 'CS6', 1, 4, 2, '2025-05-14 12:10:35', '2025-05-14 12:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `paid_amount` double(8,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_keys` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` int(11) NOT NULL,
  `date_added` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `package_id`, `school_id`, `paid_amount`, `payment_method`, `transaction_keys`, `expire_date`, `date_added`, `active`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 50000.00, 'Offline', '{\"document_file\":\"cropped-logo-8-1.jpg\"}', 2147483647, 1747159200, 1, 1, '2025-05-14 10:47:43', '2025-05-14 10:47:43');

-- --------------------------------------------------------

--
-- Table structure for table `syllabuses`
--

CREATE TABLE `syllabuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_permissions`
--

CREATE TABLE `teacher_permissions` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `attendance` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_permissions`
--

INSERT INTO `teacher_permissions` (`id`, `class_id`, `section_id`, `school_id`, `teacher_id`, `marks`, `attendance`, `updated_at`) VALUES
(1, 1, 1, 4, 4, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_information` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `role_id`, `parent_id`, `school_id`, `password`, `code`, `user_information`, `status`, `department_id`, `designation`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'superadmin@gmail.com', NULL, 1, NULL, NULL, '$2y$10$6LdqEHXv6aLA5GgfxVN86.Zkn33.5aHqRUFeY25qxozFrXnAJwgD6', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1747204048,\"phone\":\"8103099592\",\"address\":\"NRT\",\"photo\":\"user.png\"}', 1, NULL, NULL, NULL, '2025-05-14 16:27:28', '2025-05-14 16:27:28'),
(2, 'nrt', 'nrt@gmail.com', NULL, 2, NULL, 4, '$2y$10$a2xZL0c4Vvq/eagLb2lkq.K2A69EDDxs46.jjHyFDVRgRYQEJWHfa', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":\"\",\"phone\":\"8103099592\",\"address\":\"NRT\",\"photo\":\"1747210115.webp\"}', 1, NULL, NULL, NULL, '2025-05-14 08:38:35', '2025-05-14 08:38:35'),
(4, 'Avinash Choure', 'nrtavinash@gmail.com', NULL, 3, NULL, 4, '$2y$10$l5bblzIhpY.4pq7TJDWw/uDSex4ZS4ojrR/BEeAVyO3U3kC5VLG8G', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":516391200,\"phone\":\"3216546544\",\"address\":\">Bhopal\",\"photo\":\"\"}', 1, 1, 'Computer science', NULL, '2025-05-14 11:58:13', '2025-05-14 12:06:54'),
(5, 'VIkram  Singh', 'vikramnrt@nrtco.in', NULL, 5, NULL, 4, '$2y$10$WZtOewX7..b5ZZXfixxLpeJq4m6eqv4syaYLFZmKg.j8eCT9/8Zqm', NULL, '{\"gender\":\"Male\",\"blood_group\":\"b+\",\"birthday\":1747245600,\"phone\":\"12345612345\",\"address\":\"bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-15 08:55:24', '2025-05-15 08:55:24'),
(6, 'Hariom', 'librarian@nrt.co.in', NULL, 4, NULL, 4, '$2y$10$GkAtCwKGCBqw1X3j./xMCu9X5lgskVx7DghKBPFRRer5bXIG526OO', NULL, '{\"gender\":\"Male\",\"blood_group\":\"b+\",\"birthday\":1747245600,\"phone\":\"9877899877\",\"address\":\"bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-15 08:56:47', '2025-05-15 08:56:47'),
(7, 'prashant', 'math@nrt.co.in', NULL, 3, NULL, 4, '$2y$10$tMaJRbnq.3zzJig1LvhakOxxzWoQAONcsQ10vx6RQtAGVAYTGyC/C', NULL, '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1747245600,\"phone\":\"6546544565\",\"address\":\"bhopal\",\"photo\":\"\"}', 1, 1, 'Teacher', NULL, '2025-05-15 09:01:12', '2025-05-15 09:01:12'),
(8, 'Shashank Tripathi', 'Stud1@nrt.co.in', NULL, 7, NULL, 4, '$2y$10$J3kzbbSMBjR5YYCMkxRyR.79te36zKWR5cNmM9WW/O.CuBNLBdVcC', '2025-7425-1860', '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1746036000,\"phone\":\"7418521471\",\"address\":\"bhopal\",\"photo\":\"\"}', NULL, NULL, NULL, NULL, '2025-05-15 09:04:46', '2025-05-15 09:04:46'),
(9, 'Ankur Awasthi', 'std2@nrt.co.in', NULL, 7, NULL, 4, '$2y$10$xXszSnJNdZPvYH2WCiLOM.mWOnVG0xQPWQqNl4qO7cj8O63/oGhsm', '2025-7839-1250', '{\"gender\":\"Male\",\"blood_group\":\"b+\",\"birthday\":548013600,\"phone\":\"3216549878\",\"address\":\"bhopal\",\"photo\":\"\"}', NULL, NULL, NULL, NULL, '2025-05-15 09:06:19', '2025-05-15 09:06:19'),
(10, 'Ritika Singh', 'std001@nrt.co1', NULL, 7, NULL, 4, '$2y$10$zABJHmy7xMwaMohx/HqCtORaifq2uKdOAGVxm0wcrX2wmuUIQmUSG', '2025-1097-4253', '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1840644000,\"phone\":\"1234567890\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(11, 'Arisha Khan', 'std001@nrt.co2', NULL, 7, NULL, 4, '$2y$10$YdJeZf9L30AelAS.Dd8XeOmZ.8oXnHuRi3nRSs5xnmsS/e5obffUG', '2025-7189-2650', '{\"gender\":\"Female\",\"blood_group\":\"b+\",\"birthday\":false,\"phone\":\"1234567891\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(12, 'Tanishka Saxena', 'std001@nrt.co3', NULL, 7, NULL, 4, '$2y$10$1ujF6WwvUIpnlShvw.bx0OVPMablAHxeKy18/QeYI5sBM7qH3Hnoe', '2025-6924-7051', '{\"gender\":\"Male\",\"blood_group\":\"b-\",\"birthday\":1633802400,\"phone\":\"1234567892\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(13, 'Vanya Gupta', 'std001@nrt.co4', NULL, 7, NULL, 4, '$2y$10$vBmtCyeQr2xkbFZsg2tFAOshiy3v3FVo15adm.1eST4hBz5xO1ZPq', '2025-3501-2684', '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1840730400,\"phone\":\"1234567893\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(14, 'HRIDHYA GIANCHANDANI', 'std001@nrt.co5', NULL, 7, NULL, 4, '$2y$10$jlwcm0I7cAg61ivVlOd4z.hbI9pJtl7FVVrrttg8pKEp5kDWX.mvq', '2025-8179-0542', '{\"gender\":\"Female\",\"blood_group\":\"b+\",\"birthday\":1425924000,\"phone\":\"1234567894\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(15, 'Koushiki chouksey', 'std001@nrt.co6', NULL, 7, NULL, 4, '$2y$10$FpFziOk6/BECe5yo0TIBGOhvCWTFHFPU/dVN5UAX12/08xQAe0Ysu', '2025-5894-0176', '{\"gender\":\"Male\",\"blood_group\":\"b-\",\"birthday\":1633888800,\"phone\":\"1234567895\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(16, 'Navya Choudhary', 'std001@nrt.co7', NULL, 7, NULL, 4, '$2y$10$CTTNjFDj2RVtLW6z8/YCPudHc7e6rrzS4sVTYKsEQy1RT2KD9VpsS', '2025-2871-3569', '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1840816800,\"phone\":\"1234567896\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(17, 'MAHIRAH SHAFQAT', 'std001@nrt.co8', NULL, 7, NULL, 4, '$2y$10$ddsmALL/j9tbiNnva1lHHucRQRA8XVY0Qx73sv1SBAmNhQKylbVni', '2025-8405-6132', '{\"gender\":\"Female\",\"blood_group\":\"b+\",\"birthday\":1425924000,\"phone\":\"1234567897\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(18, 'Bhumika Vishwkarma', 'std001@nrt.co9', NULL, 7, NULL, 4, '$2y$10$Iyy.sZxMUbauWmT3kGstNeStk504K2RYwg1S6AYBq4OkQiD6hZVDG', '2025-3198-4250', '{\"gender\":\"Male\",\"blood_group\":\"b-\",\"birthday\":1633975200,\"phone\":\"1234567898\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(19, 'Dishita Agrawal', 'std001@nrt.co10', NULL, 7, NULL, 4, '$2y$10$c4wc6BJ2Rshn1QuXiReHmu8WR7kvLOHygz9kKRQmf7y.xFh0hODK2', '2025-5264-0917', '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1840903200,\"phone\":\"1234567899\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(20, 'Keertika Rathod', 'std001@nrt.co11', NULL, 7, NULL, 4, '$2y$10$uwYN2dexSR.R38zb5ucwyuT4r3cxpA7BfoDY3LeEyf8Bv4gNXB9ja', '2025-1684-3975', '{\"gender\":\"Female\",\"blood_group\":\"b+\",\"birthday\":1425924000,\"phone\":\"1234567900\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(21, 'Laibah Rahil', 'std001@nrt.co12', NULL, 7, NULL, 4, '$2y$10$tLDhrtCVh4O4eVBIdpNzHex2j9CuTUb7EgmUC61/VqTS1Brs5oIn6', '2025-5619-3247', '{\"gender\":\"Male\",\"blood_group\":\"b-\",\"birthday\":1634061600,\"phone\":\"1234567901\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:16', '2025-05-19 11:38:16'),
(22, 'Vaibhavi saxena', 'std001@nrt.co13', NULL, 7, NULL, 4, '$2y$10$tYjNIIsk/XXz7cbsesl5QOVA/a9EcJ8rRHtQ.K.QeUqVGcZDABFI.', '2025-3018-5976', '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1840989600,\"phone\":\"1234567902\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(23, 'Tanishka Deshmukh', 'std001@nrt.co14', NULL, 7, NULL, 4, '$2y$10$L3HjVyF2lAZFvThkdDct5OAA60eyVv1S5.i6KXA1l.EeodXDeQTEG', '2025-3765-8092', '{\"gender\":\"Female\",\"blood_group\":\"b+\",\"birthday\":1425924000,\"phone\":\"1234567903\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(24, 'Aarushi Aswani', 'std001@nrt.co15', NULL, 7, NULL, 4, '$2y$10$fpHB8HtmcCtL8F6W7QxYPevTmkJ2Sj3zpvgqaV1IbV4MhDxxe/7Du', '2025-1074-2536', '{\"gender\":\"Male\",\"blood_group\":\"b-\",\"birthday\":1634148000,\"phone\":\"1234567904\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(25, 'Avnee Sharma', 'std001@nrt.co16', NULL, 7, NULL, 4, '$2y$10$zUTCShl/H2oI/5yS6Hs8o.EiIZMauuTk9n/HN4oMGcmheq1DP43Zu', '2025-9605-1742', '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1841076000,\"phone\":\"1234567905\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(26, 'Dhwani Upadhyay', 'std001@nrt.co17', NULL, 7, NULL, 4, '$2y$10$nfKj0WTy2U.U1JfoWVw7X.JBABZMQ0hcAntF7AOmlSbyRAWxschnO', '2025-6209-7813', '{\"gender\":\"Female\",\"blood_group\":\"b+\",\"birthday\":false,\"phone\":\"1234567906\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(27, 'Hania', 'std001@nrt.co18', NULL, 7, NULL, 4, '$2y$10$BXTZvj3jspBoGswQWkr50uveDoeszR9KlokclrpDHUrOgWqdQR3We', '2025-9026-4531', '{\"gender\":\"Male\",\"blood_group\":\"b-\",\"birthday\":1634234400,\"phone\":\"1234567907\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(28, 'NORA SALAH', 'std001@nrt.co19', NULL, 7, NULL, 4, '$2y$10$t/WKPcNuBnBbakw5Rey9JOlyLbmI0/Y.CD6pR0VeBlb6nVIsjBO0u', '2025-6982-7503', '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1841162400,\"phone\":\"1234567908\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(29, 'Erina Asif', 'std001@nrt.co20', NULL, 7, NULL, 4, '$2y$10$/8jVxd7mkTbbwbzaSYDKNeLfYF8cWs98j.58BhQg0MxIB5TeYjKPO', '2025-1392-7546', '{\"gender\":\"Female\",\"blood_group\":\"b+\",\"birthday\":1425924000,\"phone\":\"1234567909\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(30, 'Himanshi Lachhwani', 'std001@nrt.co21', NULL, 7, NULL, 4, '$2y$10$fSlrfLlU8yv7qUX4q/44s.oYAy8oz09EOwbqk3EMDHK.tDw/YX1V6', '2025-2819-3456', '{\"gender\":\"Male\",\"blood_group\":\"b-\",\"birthday\":1634320800,\"phone\":\"1234567910\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(31, 'Jai yogshree sahu', 'std001@nrt.co22', NULL, 7, NULL, 4, '$2y$10$o378DESJWNm2rAAI9sXOleiCJEwHiTBuzR1Ys12wEeo87h53QFuCa', '2025-9268-7041', '{\"gender\":\"Male\",\"blood_group\":\"a+\",\"birthday\":1841248800,\"phone\":\"1234567911\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(32, 'Mayank choudhary', 'std001@nrt.co23', NULL, 7, NULL, 4, '$2y$10$vzKwf6Vholxfmt6cV/WfkeeOXT6aZgw5tDbCKfZj29FNv50S5u3wa', '2025-6531-8902', '{\"gender\":\"Female\",\"blood_group\":\"b+\",\"birthday\":1425924000,\"phone\":\"1234567912\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:17', '2025-05-19 11:38:17'),
(33, 'Shivansh', 'std001@nrt.co24', NULL, 7, NULL, 4, '$2y$10$gOjvefCQTATunBEUOHuOKeKqykezDlJrzCxnJUPbXfyabVRRdesBC', '2025-8736-5240', '{\"gender\":\"Male\",\"blood_group\":\"b-\",\"birthday\":1634407200,\"phone\":\"1234567913\",\"address\":\"Bhopal\",\"photo\":\"\"}', 1, NULL, NULL, NULL, '2025-05-19 11:38:18', '2025-05-19 11:38:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_attendances`
--
ALTER TABLE `daily_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_categories`
--
ALTER TABLE `exam_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontend_events`
--
ALTER TABLE `frontend_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_settings`
--
ALTER TABLE `global_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gradebooks`
--
ALTER TABLE `gradebooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `routines`
--
ALTER TABLE `routines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fee_managers`
--
ALTER TABLE `student_fee_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabuses`
--
ALTER TABLE `syllabuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_permissions`
--
ALTER TABLE `teacher_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `daily_attendances`
--
ALTER TABLE `daily_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exam_categories`
--
ALTER TABLE `exam_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `frontend_events`
--
ALTER TABLE `frontend_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `global_settings`
--
ALTER TABLE `global_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `gradebooks`
--
ALTER TABLE `gradebooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2561;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `routines`
--
ALTER TABLE `routines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_fee_managers`
--
ALTER TABLE `student_fee_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `syllabuses`
--
ALTER TABLE `syllabuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_permissions`
--
ALTER TABLE `teacher_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
