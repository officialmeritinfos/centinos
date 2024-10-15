-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 27, 2022 at 11:15 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timesInvest`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `automatic_deposit_methods`
--

CREATE TABLE `automatic_deposit_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merchantId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pubKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` char(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coins`
--

CREATE TABLE `coins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coins`
--

INSERT INTO `coins` (`id`, `name`, `asset`, `code`, `address`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Bitcoin', 'BTC', 'BTC', 'bc1qvyqkzvpn8hwljfhg0vdvycp6xvsgg3vl396qjk', 1, '2022-05-22 02:14:25', '2022-06-20 05:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) NOT NULL,
  `reference` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cryptoAmount` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asset` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transactionHash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentRef` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentProof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentMethod` int(11) DEFAULT NULL,
  `methodType` int(11) DEFAULT NULL,
  `timeOfPayment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_verifications`
--

CREATE TABLE `email_verifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fiat_deposit_methods`
--

CREATE TABLE `fiat_deposit_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` char(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` char(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` char(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification` int(11) NOT NULL DEFAULT 1,
  `emailVerification` int(11) NOT NULL DEFAULT 2,
  `twoFactor` int(11) NOT NULL DEFAULT 1,
  `registration` int(11) NOT NULL DEFAULT 1,
  `withdrawal` int(11) NOT NULL DEFAULT 1,
  `compounding` int(11) NOT NULL DEFAULT 2,
  `paymentMethod` int(11) NOT NULL DEFAULT 2,
  `codeExpiration` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '24 Hours',
  `minDeposit` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '50',
  `refBonus` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currencySign` char(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `name`, `email`, `phone`, `address`, `notification`, `emailVerification`, `twoFactor`, `registration`, `withdrawal`, `compounding`, `paymentMethod`, `codeExpiration`, `minDeposit`, `refBonus`, `logo`, `favicon`, `currency`, `currencySign`, `created_at`, `updated_at`) VALUES
(1, 'Chevrprimes', 'info@chevrprimes.com', '', '1 Great George St, London SW1P 3AA @51.501128,-0.129027, UK', 1, 1, 2, 1, 1, 2, 2, '24 Hours', '100', '5', 'logo.png', 'logo.png', 'SSP', '', '2022-05-16 15:54:10', '2022-05-16 15:54:10');

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profitPerReturn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currentProfit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nextReturn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currentReturn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `returnType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numberOfReturns` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package` int(11) NOT NULL,
  `asset` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wallet` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investments`
--

INSERT INTO `investments` (`id`, `user`, `amount`, `roi`, `reference`, `source`, `profitPerReturn`, `currentProfit`, `nextReturn`, `currentReturn`, `returnType`, `numberOfReturns`, `duration`, `package`, `asset`, `wallet`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 5, '1000', '22', 'j5G6rwmL412dR6i', 'balance', '220', '0', '1661641560', '0', '1', '1', '24 Hours', 4, 'BTC', 'bc1qvyqkzvpn8hwljfhg0vdvycp6xvsgg3vl396qjk', 2, NULL, '2022-08-26 22:06:00', '2022-08-26 22:06:00'),
(2, 5, '1000', '22', '4z3Z7xZDhZA46G8', 'balance', '220', '0', '1661641864', '0', '1', '1', '24 Hours', 4, 'BTC', 'bc1qvyqkzvpn8hwljfhg0vdvycp6xvsgg3vl396qjk', 2, NULL, '2022-08-26 22:11:04', '2022-08-26 22:11:04'),
(3, 5, '1000', '22', 'IWL4PwyRaYlLmcZ', 'balance', '220', '0', '1661641887', '0', '1', '1', '24 Hours', 4, 'BTC', 'bc1qvyqkzvpn8hwljfhg0vdvycp6xvsgg3vl396qjk', 2, NULL, '2022-08-26 22:11:27', '2022-08-26 22:11:27');

-- --------------------------------------------------------

--
-- Table structure for table `investment_returns`
--

CREATE TABLE `investment_returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `investment` int(11) NOT NULL,
  `amount` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(83, 'default', '{\"uuid\":\"45caeb71-cc59-4a08-ae1b-cabad79fc245\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653199227, 1653199227),
(84, 'default', '{\"uuid\":\"eefdcc0b-6802-4c32-b348-1d0ce5b7feb1\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:175:\\\"\\n                Your withdrawal request with reference Id <b>BxHO1Hwbit <\\/b>\\n                has been received and forwarded to you. This should reflect soonest.\\n            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:19:\\\"Withdrawal Approval\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653200428, 1653200428),
(85, 'default', '{\"uuid\":\"5d8fe169-47fb-4b23-9199-c0346ba727e0\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:170:\\\"\\n                Your withdrawal request with reference Id <b>BxHO1Hwbit <\\/b>\\n                has been rejected and account refunded of the requested amount.\\n            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:19:\\\"Withdrawal Rejected\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653200547, 1653200547),
(86, 'default', '{\"uuid\":\"40aef2d8-9048-4761-8060-60e5dcbcb7ff\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:5;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:83:\\\"\\n                Your Account balance has been credited with $<b>100 .\\n            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:13:\\\"Balance Topup\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653201677, 1653201677),
(87, 'default', '{\"uuid\":\"9e4fc5fc-3db3-467d-8dd8-4877d3486d21\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653225047, 1653225047),
(88, 'default', '{\"uuid\":\"6e37dbff-def2-4168-86a2-46252c19a015\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:9;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653245555, 1653245555),
(89, 'default', '{\"uuid\":\"32ab5846-3d15-4454-a66c-7e02f23a357e\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653307234, 1653307234),
(90, 'default', '{\"uuid\":\"121e2ae5-d7e9-4e92-9c8d-a27a86914266\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653408912, 1653408912),
(91, 'default', '{\"uuid\":\"1b7d1f2c-9edd-4dc3-9560-0bca7765a279\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653415234, 1653415234),
(92, 'default', '{\"uuid\":\"4e27a6d1-fe9a-4804-bb4a-c5f1cb20d2c0\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:11;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653514764, 1653514764),
(93, 'default', '{\"uuid\":\"3f744b29-5d34-489b-b13e-3d42925818ef\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653523229, 1653523229),
(94, 'default', '{\"uuid\":\"dd9f72ae-dae0-454a-8c5a-7629c55b5767\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653609650, 1653609650),
(95, 'default', '{\"uuid\":\"eda625cb-bdb8-4a18-82db-5f4259495801\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:12;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653701868, 1653701868),
(96, 'default', '{\"uuid\":\"d7a32f28-5b89-4cd1-a5af-5663219f1a15\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:13;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653704439, 1653704439),
(97, 'default', '{\"uuid\":\"2d33747b-6cce-443c-ac21-93a46ff81f60\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653717620, 1653717620),
(98, 'default', '{\"uuid\":\"a2c718fb-a44f-4d43-a870-f0bf2de09d44\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653804047, 1653804047),
(99, 'default', '{\"uuid\":\"c3ef5a17-4a55-410f-8c27-48ef441b9df8\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:475:\\\"\\n                                Your Investment with reference Id is <b>ICJTrfxDNomNhCs<\\/b> has returned\\n                                <b>$22500<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653847247, 1653847247),
(100, 'default', '{\"uuid\":\"da35d8fb-2547-4481-8ca1-be01e50f4891\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1653912031, 1653912031),
(101, 'default', '{\"uuid\":\"038af14c-16a3-4df4-b8ec-8b84a24cb05c\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654020026, 1654020026),
(102, 'default', '{\"uuid\":\"b8eda0d5-73b9-474e-87cd-5c751811f3ce\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:14;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654031268, 1654031268),
(103, 'default', '{\"uuid\":\"18f82431-67b7-44c2-8c04-7da9b922330c\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:475:\\\"\\n                                Your Investment with reference Id is <b>N696VqSV4YQYIAZ<\\/b> has returned\\n                                <b>$15000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654084837, 1654084837),
(104, 'default', '{\"uuid\":\"5d573853-5845-4b58-a037-21ee5f45989f\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:15;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654101924, 1654101924),
(105, 'default', '{\"uuid\":\"2ee7529f-dc99-4713-84c9-c89afce82fe2\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654106431, 1654106431),
(106, 'default', '{\"uuid\":\"e0dd1ead-4562-468f-8622-bc736343fbca\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:16;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654119464, 1654119464),
(107, 'default', '{\"uuid\":\"6a5764ec-36d2-453d-8788-882068e4e19c\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654192849, 1654192849),
(108, 'default', '{\"uuid\":\"b9908b76-372b-49d0-b1b8-2044a6a46a59\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeMail\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\SendWelcomeMail\\\":11:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:17;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654276902, 1654276902),
(109, 'default', '{\"uuid\":\"2a8fe910-b73f-4481-9cab-42197db37560\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654300850, 1654300850),
(110, 'default', '{\"uuid\":\"02e6abbd-2cd5-41da-828e-0f8f7b86f160\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654408817, 1654408817),
(111, 'default', '{\"uuid\":\"33c9db7c-d60c-4d12-8d6e-de0789d503d5\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:8;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:475:\\\"\\n                                Your Investment with reference Id is <b>ICJTrfxDNomNhCs<\\/b> has returned\\n                                <b>$22500<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654473638, 1654473638),
(112, 'default', '{\"uuid\":\"81e9f0c8-7e9f-4844-a260-8fd1dad4e0ad\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654495245, 1654495245),
(113, 'default', '{\"uuid\":\"10ba1f9d-9623-41ed-b389-9389a3f5e85c\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654603203, 1654603203),
(114, 'default', '{\"uuid\":\"946362da-c992-4ba0-8c9a-fd9127671c3e\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:474:\\\"\\n                                Your Investment with reference Id is <b>cCkauJ789sKzgdW<\\/b> has returned\\n                                <b>$3000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654689643, 1654689643),
(115, 'default', '{\"uuid\":\"c90bae1a-b0f0-4bc9-bccf-28ba6e2300b2\",\"displayName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendInvestmentNotification\",\"command\":\"O:35:\\\"App\\\\Jobs\\\\SendInvestmentNotification\\\":13:{s:7:\\\"\\u0000*\\u0000user\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":4:{s:5:\\\"class\\\";s:15:\\\"App\\\\Models\\\\User\\\";s:2:\\\"id\\\";i:10;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";}s:10:\\\"\\u0000*\\u0000message\\\";s:475:\\\"\\n                                Your Investment with reference Id is <b>N696VqSV4YQYIAZ<\\/b> has returned\\n                                <b>$15000<\\/b> to your account. <br> You can find this in the specific\\n                                investment Current Profit column. <br>\\n                                <p>Please Note: <b>All returns will be credited to your profit balance at the end of\\n                                the cycle.<\\/b><\\/p>\\n                            \\\";s:10:\\\"\\u0000*\\u0000subject\\\";s:17:\\\"Investment Return\\\";s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 0, NULL, 1654689643, 1654689643);

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) NOT NULL,
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`id`, `user`, `agent`, `ip`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', '127.0.0.1', NULL, '2022-05-17 06:24:43', '2022-05-17 06:24:43'),
(2, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', '127.0.0.1', NULL, '2022-05-17 17:08:14', '2022-05-17 17:08:14'),
(3, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', '127.0.0.1', NULL, '2022-05-17 21:32:47', '2022-05-17 21:32:47'),
(4, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', '127.0.0.1', NULL, '2022-05-18 04:45:40', '2022-05-18 04:45:40'),
(5, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', '127.0.0.1', NULL, '2022-05-20 13:22:08', '2022-05-20 13:22:08'),
(6, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', '127.0.0.1', NULL, '2022-05-20 13:22:26', '2022-05-20 13:22:26'),
(7, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', '127.0.0.1', NULL, '2022-05-20 13:22:31', '2022-05-20 13:22:31'),
(8, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', '127.0.0.1', NULL, '2022-05-20 14:51:50', '2022-05-20 14:51:50'),
(9, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', '127.0.0.1', NULL, '2022-05-21 04:11:01', '2022-05-21 04:11:01'),
(10, 1, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.64 Safari/537.36', '51.159.180.239', NULL, '2022-05-21 19:08:00', '2022-05-21 19:08:00'),
(11, 2, 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_4_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1', '197.210.54.121', NULL, '2022-05-21 19:43:39', '2022-05-21 19:43:39');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manual_deposit_methods`
--

CREATE TABLE `manual_deposit_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hasMemo` int(11) NOT NULL DEFAULT 2,
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(150, '2014_10_12_000000_create_users_table', 1),
(151, '2014_10_12_100000_create_password_resets_table', 1),
(152, '2019_08_19_000000_create_failed_jobs_table', 1),
(153, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(154, '2022_05_04_161831_create_general_settings_table', 1),
(155, '2022_05_04_161906_create_deposits_table', 1),
(156, '2022_05_04_161916_create_withdrawals_table', 1),
(157, '2022_05_04_161941_create_manual_deposit_methods_table', 1),
(158, '2022_05_04_161954_create_logins_table', 1),
(159, '2022_05_04_162007_create_activities_table', 1),
(160, '2022_05_04_162207_create_two_factors_table', 1),
(161, '2022_05_04_162235_create_investments_table', 1),
(162, '2022_05_04_162243_create_packages_table', 1),
(163, '2022_05_04_162254_create_return_types_table', 1),
(164, '2022_05_04_162321_create_automatic_deposit_methods_table', 1),
(165, '2022_05_04_164508_create_fiat_deposit_methods_table', 1),
(166, '2022_05_04_172626_create_faqs_table', 1),
(167, '2022_05_04_172635_create_abouts_table', 1),
(168, '2022_05_04_172646_create_mails_table', 1),
(169, '2022_05_04_172656_create_pages_table', 1),
(170, '2022_05_04_172704_create_services_table', 1),
(171, '2022_05_07_152340_create_email_verifications_table', 1),
(172, '2022_05_07_154520_create_jobs_table', 1),
(173, '2022_05_16_155540_create_coins_table', 1),
(174, '2022_05_17_093014_create_investment_returns_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minAmount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maxAmount` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numberOfReturns` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `returnType` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Duration` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `isUnlimited` int(11) NOT NULL DEFAULT 2,
  `canLoan` int(11) NOT NULL DEFAULT 2,
  `withdrawEnd` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `minAmount`, `maxAmount`, `roi`, `numberOfReturns`, `returnType`, `Duration`, `status`, `isUnlimited`, `canLoan`, `withdrawEnd`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'Forex margin plan', '100', '10000', '1', '7', '1', '7 Days', 1, 2, 2, 2, NULL, '2022-05-18 06:54:07', '2022-05-18 06:54:07'),
(5, 'Crypto plan', '10100', '100000', '2', '7', '1', '7 Days', 1, 2, 2, 2, NULL, '2022-05-18 06:54:39', '2022-05-18 06:54:39'),
(6, 'NFT plan', '100000', '300000', '3', '7', '1', '7 Days', 1, 2, 2, 2, NULL, '2022-05-18 06:55:08', '2022-05-18 06:55:08'),
(7, 'Venture plan', '300000', NULL, '4', '7', '1', '7 Days', 1, 1, 2, 2, NULL, '2022-05-18 06:55:50', '2022-05-18 06:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `expiration`, `created_at`, `updated_at`) VALUES
('ismaelmusicomusico42@gmail.com', 'f2952aaf3e86f0edf4ee093ccb9066c5c8fe147b', '1653495540', '2022-05-24 20:19:00', '2022-05-24 20:19:00'),
('ismaelmusicomusico42@gmail.com', 'a907e5d32cd7e744655c63d9dd236d1799c90dcb', '1653495572', '2022-05-24 20:19:32', '2022-05-24 20:19:32'),
('ismaelmusicomusico42@gmail.com', '60163f534f44c6a5f9fa2919348995d4e5201f45', '1653495643', '2022-05-24 20:20:43', '2022-05-24 20:20:43');

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_types`
--

CREATE TABLE `return_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `return_types`
--

INSERT INTO `return_types` (`id`, `name`, `duration`, `created_at`, `updated_at`) VALUES
(1, 'Daily', '24 Hours', NULL, NULL),
(2, 'Weekly', '7 Days', NULL, NULL),
(3, 'Monthly', '30 Days', NULL, NULL),
(4, 'Quarterly', '3 Months', NULL, NULL),
(5, 'Bi-annal', '6 Months', NULL, NULL),
(6, 'Yearly', '1 Year', NULL, NULL),
(7, '2 Days', '48 Hours', NULL, NULL),
(8, '3 Days', '72 Hours', NULL, NULL),
(9, '4 Days', '96 Hours', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `reference`, `title`, `content`, `photo`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'trjjfhfd', 'Forex Trading', 'Forex is a portmanteau of foreign currency and exchange. Foreign exchange is the process of changing one currency into another currency for a variety of reasons, usually for commerce, trading, or tourism. According to a recent triennial report from the Bank for International Settlements (a global bank for national central banks), the average was more than $5.1 trillion in daily forex trading volume. Because of the worldwide reach of trade, commerce, and finance, forex markets tend to be the largest and most liquid asset markets in the world. Market participants use forex to hedge against international currency and interest rate risk, to speculate on geopolitical events, and to diversify portfolios, among several other reasons.', 'forex.jpeg', 1, NULL, NULL, NULL),
(2, 'r67390hej', 'Real Estate', 'Real estate investment involves the purchase, ownership, management, rental and/or sale of real estate for profit. Improvement of realty property as part of a real estate investment strategy is generally considered to be a sub-specialty of real estate investing called real estate development. Real estate is an asset form with limited liquidity relative to other investments (such as stocks or bonds that openly trade on financial markets). It is also capital intensive (although capital may be gained through mortgage leverage) and is highly cash flow dependent. If these factors are not well understood and managed by the investor, real estate becomes a risky investment.', 'realestate.jpeg', 1, NULL, NULL, NULL),
(3, 'fghhii6498', 'Gold Investment', 'Commonly seen as a great store of wealth, this precious metal is also known as a reliable safe-haven asset. With a rich history amongst almost all global cultures, gold remains a highly popular investment. Although it has multiple uses, its primary function is typically to hedge against inflation in an often volatile futures market, as well as to diversify existing Precious Metals Investment Retirement Accounts. Gold has been one of the most valuable precious metals throughout human history, used by elites as a symbol of wealth for centuries due to its rarity and its ability to hold its worth for a long time. Historically, it has been the most common way to pass on one’s wealth as an inheritance from one generation to the next. Gold is considered a worthy investment, with coins and bars available for purchase in various sizes, ranging from one gram to a whopping 400 ounces. Being the most reliable investment commodity available, gold has proven to be a perfect way to diversify your investment portfolio and an excellent safeguard against volatile currency.', 'gold.jpeg', 1, NULL, NULL, NULL),
(4, 'ghfsjorui76983', 'Retirement planning', 'Saving for retirement can be a daunting task, but with a sound strategy, it’s well within reach. SITENAME is here to bring clarity to retirement planning and set you on your path to success. Here you’ll better understand your options and find the right investment.\r\n\r\nIf you had the chance to double—or even quadruple—your retirement savings, you’d probably jump at that opportunity, right? Well, there’s one simple change you can make today that’s sure to boost your retirement savings.\r\n<br>\r\nOur study of worldwide retirement saving habits discovered that people with some kind of retirement plan have more than three times as much in their nest egg than those with no plan at all. And savers who take it one step further by working with an investing advisor to put their plan to paper? Their average nest egg is a whopping 445% bigger than non-planners. That’s a big deal! Now, did you catch that? By working with an advisor and by having a plan in place, you can supercharge your retirement savings.', 'retirement.jpeg', 1, NULL, NULL, NULL),
(5, '66jjfkkgmi', 'Cryptocurrency Trading', 'SITENAME now offers all traders the opportunity to trade a wide range of the top ranked digital coins 24/7*. Today cryptocurrencies have become known to most people as a conventional and popular investment option. The main purpose of this new technology is to allow people to buy, trade, and invest without the need for banks or any other financial institution. Cryptocurrencies are highly volatile and can be profitable to any trader’s portfolio. Cryptocurrencies are not physical coins they are electronic, a digital asset that remains as data. The technology behind the cryptocurrency controls a large part of its value which holds new technology on the secure way to identify and transfer money. The first digital coin introduced was the Bitcoin and today it remains the standard that all other coins compare themselves to. Following in its steps came Litecoin, so to date they stand as the top 2 highly valued coins on the market. Several other coins also reach a high-level market share, such as Bitcoin and Bitcoin Cash, Dash, Ripple, Ethereum, and Ethereum Classic.', 'crypto.jpeg', 1, NULL, NULL, NULL),
(6, '796hhdoodh', 'Stock & Share Trading', 'A stock or share (also known as a company\'s \"equity\") is a financial instrument that represents ownership in a company or corporation and represents a proportionate claim on its assets (what it owns) and earnings (what it generates in profits). Stock ownership implies that the shareholder owns a slice of the company equal to the number of shares held as a proportion of the company\'s total outstanding shares. For instance, an individual or entity that owns 100,000 shares of a company with one million outstanding shares would have a 10% ownership stake in it. Most companies have outstanding shares that run into the millions or billions.', 'stock.jpeg', 1, NULL, NULL, NULL),
(7, '458fjp9729', 'Loan and Grants', 'Getting a loan doesn’t have to be intimidating, with the right lender it can be a simple process. You only need a lender committed to taking the mystery out of the mortgage loan process! At SITENAME, we understand! Our investors want simple facts, honest answers and competitive products. DGS automatically offers loan services to investors with over $50,000 investment either in our normal SITENAME financial Services packages or the NFP plans. Investors over $50,000 are entitled to loans of $200,000-1millon dollars yearly with 5% paid monthly, or the investor could wish to compound the interest till the time limit, provided all required information and identity of the investor are duly confirmed by Greenville Global Firm loan board. Every investor above $50,000 is provided with a personal account manager and the investor has a direct communication with the manager in order to see that our loan offers are secured. GREAT INVESTING WITH SITENAME FAMILY\r\n\r\n', 'loans.jpeg', 1, NULL, NULL, NULL),
(8, '04e709dfhidh', 'NFTs', 'An NFT is a digital asset that represents real-world objects like art, music, in-game items and videos. They are bought and sold online, frequently with cryptocurrency, and they are generally encoded with the same underlying software as many cryptos.\r\nAlthough they’ve been around since 2014, NFTs are gaining notoriety now because they are becoming an increasingly popular way to buy and sell digital artwork. The market for NFTs was worth a staggering $41 billion in 2021 alone, an amount that is approaching the total value of the entire global fine art market.\r\nNFTs are also generally one of a kind, or at least one of a very limited run, and have unique identifying codes. “Essentially, NFTs create digital scarcity,” says Arry Yu, chair of the Washington Technology Industry Association Cascadia Blockchain Council and managing director of Yellow Umbrella Ventures.\r\n\r\nThis stands in stark contrast to most digital creations, which are almost always infinite in supply. Hypothetically, cutting off the supply should raise the value of a given asset, assuming it’s in demand. But many NFTs, at least in these early days, have been digital creations that already exist in some form elsewhere, like iconic video clips from NBA games or securitized versions of digital art that’s already floating around on Instagram.', 'nfts.jpeg', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `two_factors`
--

CREATE TABLE `two_factors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userRef` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profit` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `loan` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `balance` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `withdrawals` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `refBal` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `registrationIp` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` char(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `photo` char(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canWithdraw` int(11) NOT NULL DEFAULT 1,
  `canCompound` int(11) NOT NULL DEFAULT 2,
  `canLoan` int(11) NOT NULL DEFAULT 2,
  `status` int(11) NOT NULL DEFAULT 1,
  `referral` int(11) DEFAULT NULL,
  `refBonus` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountPin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twoWay` int(11) NOT NULL DEFAULT 2,
  `is_admin` int(11) NOT NULL DEFAULT 2,
  `twoWayPassed` int(11) NOT NULL DEFAULT 2,
  `emailVerified` int(11) NOT NULL DEFAULT 2,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `userRef`, `profit`, `loan`, `balance`, `withdrawals`, `refBal`, `registrationIp`, `phone`, `country`, `dateOfBirth`, `photo`, `canWithdraw`, `canCompound`, `canLoan`, `status`, `referral`, `refBonus`, `accountPin`, `twoWay`, `is_admin`, `twoWayPassed`, `emailVerified`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'System Admin', 'sysadmin@chevrprimes.com', 'mckenna.cruickshank', '2022-05-17 06:24:35', '$2y$10$zCo6UBWMbtYmVmL1h6EkreEiY1V.zN3WnS0dAUNLGQagvVPFZB1lu', 'Ieq50id9M1', '10000', '0', '5000', '10000', '0', '165.240.47.44', '+14325678464', 'US', '2022-05-31', NULL, 1, 2, 1, 1, NULL, NULL, NULL, 2, 1, 1, 1, 'gq3PurajVm8yBa1jJPFv3ueY56TtI2dMm3a60auCGF5EIe6RPZvTc4pnXGRU', NULL, '2022-05-16 15:54:10', '2022-06-20 05:21:20'),
(5, 'Michael Erastus', 'meritinfos@gmail.com', 'meritinfos', NULL, '$2y$10$zCo6UBWMbtYmVmL1h6EkreEiY1V.zN3WnS0dAUNLGQagvVPFZB1lu', 'SJpQrmmsrw', '0', '0', '-3900', '0', '100', '51.159.180.239', '08147298815', NULL, NULL, NULL, 1, 2, 1, 1, 0, NULL, NULL, 2, 1, 1, 1, NULL, NULL, '2022-05-21 19:55:09', '2022-08-27 05:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cryptoAmount` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transHash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentRef` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `user`, `reference`, `amount`, `asset`, `cryptoAmount`, `details`, `transHash`, `paymentRef`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 5, '4rfbaA3mRl', '50', 'BTC', NULL, '475895jdjhhf', NULL, NULL, 2, NULL, '2022-08-26 22:19:34', '2022-08-26 22:19:34'),
(2, 5, 'c7H4HRfUyE', '50', 'BTC', NULL, 'r9400-f', NULL, NULL, 2, NULL, '2022-08-26 22:20:36', '2022-08-26 22:20:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `automatic_deposit_methods`
--
ALTER TABLE `automatic_deposit_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_verifications`
--
ALTER TABLE `email_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_verifications_email_index` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fiat_deposit_methods`
--
ALTER TABLE `fiat_deposit_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investment_returns`
--
ALTER TABLE `investment_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_deposit_methods`
--
ALTER TABLE `manual_deposit_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `return_types`
--
ALTER TABLE `return_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `two_factors`
--
ALTER TABLE `two_factors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `two_factors_token_unique` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_userref_unique` (`userRef`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `automatic_deposit_methods`
--
ALTER TABLE `automatic_deposit_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coins`
--
ALTER TABLE `coins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_verifications`
--
ALTER TABLE `email_verifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fiat_deposit_methods`
--
ALTER TABLE `fiat_deposit_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `investment_returns`
--
ALTER TABLE `investment_returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manual_deposit_methods`
--
ALTER TABLE `manual_deposit_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_types`
--
ALTER TABLE `return_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `two_factors`
--
ALTER TABLE `two_factors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
