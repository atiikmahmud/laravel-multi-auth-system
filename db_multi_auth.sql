-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2022 at 01:14 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_multi_auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` decimal(8,2) NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employers`
--

INSERT INTO `employers` (`id`, `name`, `email`, `phone`, `salary`, `department`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Tyson Wunsch', 'edna.kuhlman@gmail.com', '+1 (267) 640-9697', '34738.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(2, 'Karen Quigley', 'tia89@hotmail.com', '419-709-9457', '45660.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(3, 'Emilio Pollich', 'ubaldo49@torp.com', '(445) 371-4249', '31509.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(4, 'Miss Dayana Donnelly III', 'darion.reinger@gmail.com', '1-610-617-5162', '48193.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(5, 'Ms. Margaret Leffler IV', 'fwalker@wiegand.com', '714-885-6534', '37819.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(6, 'Armani Gorczany', 'braun.lamar@luettgen.com', '+1-817-891-0212', '43920.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(7, 'Misty Green', 'queenie72@jast.info', '364.407.5730', '30634.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(8, 'Dr. Johan Hartmann V', 'adam95@hotmail.com', '806-887-2748', '39237.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(9, 'Miss Precious Brown', 'sheldon98@hauck.com', '1-986-370-5587', '45281.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(10, 'Bobby Zulauf', 'alexandrine54@gmail.com', '615.516.0130', '30742.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(11, 'Prof. Gino Schmidt II', 'maryjane88@hotmail.com', '+18705833016', '32189.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(12, 'Linnea Keeling PhD', 'kenyatta.gerhold@hotmail.com', '432-532-9550', '37646.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(13, 'Tony Konopelski DVM', 'eula31@yahoo.com', '+1-678-384-3359', '43576.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(14, 'Buford Altenwerth', 'braden73@gmail.com', '1-737-829-0116', '43705.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(15, 'Miss Gabriella O\'Conner V', 'blaise46@bode.com', '989-854-8502', '46819.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(16, 'Edwardo Jacobi II', 'reyna.hessel@gmail.com', '(689) 363-5495', '38729.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(17, 'Dr. Eliseo Gaylord', 'adele07@hotmail.com', '+1-628-871-0799', '44317.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(18, 'Henderson Marquardt', 'christiana.breitenberg@yahoo.com', '1-564-548-5508', '39564.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(19, 'Dr. Reece Zieme', 'scot.rippin@howe.com', '(630) 775-9053', '40390.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(20, 'Jada Lindgren', 'alfonso.daniel@hill.com', '(786) 542-1131', '34942.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(21, 'Mr. Jaylan Langosh', 'nikko.hahn@pollich.com', '267.451.9718', '39802.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(22, 'Ransom Bayer', 'shayna72@ferry.com', '(248) 650-9310', '35502.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(23, 'Jewel Watsica', 'fhoeger@osinski.com', '1-732-276-8125', '48304.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(24, 'Edison Boehm', 'abner77@hotmail.com', '1-732-528-1010', '33426.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(25, 'Nellie Mraz', 'zkeebler@gmail.com', '1-848-551-3231', '44882.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(26, 'Mr. Toby Kshlerin', 'leland78@ferry.com', '862-779-8412', '33308.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(27, 'Jaiden Strosin III', 'wwillms@rosenbaum.org', '925-842-8587', '40741.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(28, 'Harley Prohaska DVM', 'tjones@hotmail.com', '(602) 302-1798', '34246.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(29, 'Dr. Darlene Kulas', 'brandy.cole@hotmail.com', '(804) 919-9999', '30341.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(30, 'Alexandre Nolan', 'fadel.mckenna@hotmail.com', '920-633-5115', '33254.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(31, 'Bradford Grant', 'vilma.cormier@runolfsdottir.com', '+1-385-237-5500', '42934.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(32, 'Imani Rippin', 'onader@crona.com', '1-585-519-2831', '31461.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(33, 'Nicolette Schaefer', 'raphaelle.denesik@cruickshank.com', '+16403943552', '34804.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(34, 'Sabryna Schultz', 'sschuppe@hotmail.com', '325-674-0899', '32716.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(35, 'Miss Skyla Weimann', 'ijohnston@langosh.com', '+1 (361) 553-9489', '34238.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(36, 'Prof. Nolan Jaskolski IV', 'lawson24@grady.com', '+1.541.444.9162', '46406.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(37, 'Miss Claudie Greenholt MD', 'laury74@sawayn.com', '+15397686553', '47157.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(38, 'Arjun Romaguera', 'glennie53@hotmail.com', '281.317.6415', '41332.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(39, 'Anissa Harber', 'pfeffer.rubye@grant.biz', '+1-956-381-2705', '32526.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(40, 'Jerrod Mante DVM', 'kristian.cartwright@hotmail.com', '786.482.9797', '37684.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(41, 'Devon Dickinson', 'stamm.timmothy@boyle.com', '(959) 314-7889', '37103.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(42, 'Sunny Harvey', 'pharris@greenholt.org', '(586) 261-7363', '47892.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(43, 'Alva Medhurst II', 'muriel.leffler@upton.com', '1-351-255-8024', '42324.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(44, 'Bradly Ziemann', 'qkozey@hotmail.com', '1-212-374-4096', '36678.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(45, 'Prof. Anna Murazik', 'dbrown@hotmail.com', '+1.240.763.7360', '49606.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(46, 'Ms. Abbey Sipes', 'emurray@wilderman.com', '336.608.6369', '48435.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(47, 'Nia Nader', 'keagan.wehner@wilderman.biz', '+1 (872) 875-2205', '39456.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(48, 'Dr. Lazaro Nicolas', 'irving.lowe@yahoo.com', '+12488484857', '44769.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(49, 'Eugenia Gutkowski', 'schmidt.janae@gmail.com', '+1.480.693.5036', '32802.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(50, 'Teagan Bednar', 'crona.lue@abbott.com', '934-663-5360', '31694.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(51, 'Prof. Leta Dach', 'cleo52@kutch.biz', '907.708.8522', '35501.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(52, 'Easton Russel', 'schulist.magdalena@hotmail.com', '618.881.2067', '33830.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(53, 'Cordell Hirthe', 'larue.adams@tromp.com', '707-571-8715', '34616.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(54, 'Magnolia Bernhard', 'luz.rutherford@jaskolski.net', '+1-341-603-2229', '41798.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(55, 'Sallie Green', 'gerald.treutel@gmail.com', '283-234-3908', '40203.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(56, 'Prof. Georgianna Willms V', 'xbailey@frami.com', '+13378805411', '46947.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(57, 'Genoveva Rosenbaum Sr.', 'kertzmann.lane@gmail.com', '+1.640.726.4273', '36962.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(58, 'Thad Schimmel III', 'schuster.tabitha@adams.com', '(210) 399-9533', '42792.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(59, 'Janelle Bogisich', 'cordia44@schiller.com', '706-618-0315', '36053.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(60, 'Mrs. Gwen Jaskolski III', 'erling21@watsica.com', '1-515-355-4360', '40469.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(61, 'Camila Kiehn', 'isabelle36@gmail.com', '+1.218.942.1142', '46324.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(62, 'Mikayla Yost', 'price.jerad@hotmail.com', '1-934-491-9110', '34065.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(63, 'Aylin Beier', 'bahringer.daphne@gmail.com', '+1.314.366.6712', '47677.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(64, 'Prof. Toni Mayert I', 'peyton.hintz@hotmail.com', '+1 (323) 608-0083', '35418.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(65, 'Monique Batz V', 'lexie59@gmail.com', '(828) 758-0952', '34622.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(66, 'Amani Schoen', 'xerdman@yahoo.com', '(423) 662-1160', '37991.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(67, 'Georgiana Goyette', 'misty.schowalter@yahoo.com', '+1.213.410.1649', '36134.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(68, 'Larissa Becker', 'bglover@yahoo.com', '+1.425.901.7618', '35673.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(69, 'Ms. Lillian Steuber', 'dee.keebler@gmail.com', '+17854821096', '44735.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(70, 'Solon Bogan', 'claudine41@yahoo.com', '+1 (628) 664-0740', '47425.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(71, 'Ozella Huel', 'jannie46@koelpin.biz', '+1 (380) 602-4345', '32747.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(72, 'Ms. Lucy Spinka PhD', 'maia19@hammes.com', '1-857-906-8057', '47093.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(73, 'Tad Vandervort', 'rosalind44@mcglynn.com', '762-963-0212', '46644.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(74, 'Ramona Dare IV', 'jyundt@yahoo.com', '+1-650-464-5506', '45546.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(75, 'Prof. Marisa Schiller PhD', 'viola.dickinson@gmail.com', '+1.209.729.7158', '35846.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(76, 'Kip Douglas', 'welch.barney@orn.com', '(520) 920-4458', '36794.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(77, 'Elyssa Schiller DDS', 'kkoepp@ferry.org', '1-678-278-5153', '36449.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(78, 'Keyshawn Gibson', 'goodwin.gina@mayert.info', '563-506-6836', '31433.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(79, 'Gail Sporer', 'lillie16@hotmail.com', '1-810-499-8323', '47208.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(80, 'Dr. Lambert Vandervort MD', 'llind@yahoo.com', '828-556-7475', '39262.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(81, 'Gonzalo Simonis', 'glenda10@yahoo.com', '(315) 700-3168', '48901.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(82, 'Clarabelle Ortiz', 'ikuhic@gmail.com', '(463) 533-8451', '47108.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(83, 'Frederik Considine V', 'xvon@hotmail.com', '860-695-0236', '46492.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(84, 'Dr. Fabiola Sawayn', 'pjones@zboncak.com', '914-930-4577', '47228.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(85, 'Max Littel', 'okoelpin@dietrich.com', '609-434-2574', '30135.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(86, 'Mrs. Kayla Schiller DVM', 'meredith.lang@powlowski.com', '248.253.8991', '43405.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(87, 'Prof. Esperanza Stiedemann', 'casey.price@shields.com', '+1.332.388.3871', '42260.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(88, 'Mr. Vladimir Harris', 'vincenza.jakubowski@sauer.net', '724.800.2581', '42579.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(89, 'Blanche Cartwright', 'schowalter.ismael@maggio.com', '262-688-9045', '42042.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(90, 'Johanna Parisian DDS', 'reid.sanford@hotmail.com', '1-220-597-3630', '49727.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(91, 'Dawn Fadel PhD', 'weldon03@gmail.com', '1-564-749-0607', '31201.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(92, 'Mr. Garfield Goyette', 'sipes.electa@leffler.biz', '1-724-472-7883', '44395.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(93, 'Judy Strosin', 'daniella09@quigley.com', '+1-786-884-0500', '46341.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(94, 'Caleb Cummerata', 'felipe26@dicki.org', '(317) 407-2820', '34106.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(95, 'Tre Ankunding', 'daisy.barton@gmail.com', '1-567-941-6160', '32317.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(96, 'Scotty Baumbach', 'satterfield.margarett@hotmail.com', '+1-701-204-1779', '41724.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(97, 'Ms. Maxie Lowe', 'river42@yahoo.com', '424-528-8289', '35305.00', 'Engineering', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(98, 'Mable Rau', 'larue.christiansen@adams.com', '+12538611602', '47046.00', 'Sales', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(99, 'Hermann Kunde', 'ruecker.gerson@aufderhar.com', '+1-716-314-0116', '30740.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54'),
(100, 'Mrs. Laura Block', 'prince86@hotmail.com', '978.468.2389', '31154.00', 'Accounting', '2022-03-07 04:24:54', '2022-03-07 04:24:54');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_02_23_105117_create_sessions_table', 1),
(8, '2022_02_27_094621_create_employees_table', 2),
(9, '2022_03_06_093734_create_students_table', 3),
(10, '2022_03_07_073041_create_products_table', 4),
(11, '2022_03_07_083340_create_employers_table', 5);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Phone', NULL, NULL),
(2, 'Tablet', NULL, NULL),
(3, 'Laptop', NULL, NULL),
(4, 'Watch', NULL, NULL),
(5, 'Television', NULL, NULL),
(6, 'Radio', NULL, NULL),
(7, 'Camera', NULL, NULL),
(8, 'Fridge', NULL, NULL),
(9, 'Earbuds', NULL, NULL),
(10, 'Calculator', NULL, NULL),
(11, 'Phone', NULL, NULL),
(12, 'Tablet', NULL, NULL),
(13, 'Laptop', NULL, NULL),
(14, 'Watch', NULL, NULL),
(15, 'Television', NULL, NULL),
(16, 'Radio', NULL, NULL),
(17, 'Camera', NULL, NULL),
(18, 'Fridge', NULL, NULL),
(19, 'Earbuds', NULL, NULL),
(20, 'Calculator', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('2PWwoKee9JPeQrk1ALDjA3ruIbJ9IdTb7CyHs1VQ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib2ladW1wOFpKY2NUMnc1OUpGRkhiTzJianZYb0JwS3NoSkZOdmZoUiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozMzoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FsbC1zdHVkZW50Ijt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hbGwtc3R1ZGVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1647861504),
('4aX92pxdxJX7Rf3h7gR2VHU8CW188cXZDa4fA141', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGtYSlVZMUM1QUQwRkllSkdWUzZ4RE5ZeVVmajZwZ3pVQjdwU05xTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1647327699),
('8DFuOOm9DBSv7kGH7p640EPct2cPSzavVpFiNDbu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjc5Mmc1N3FsMGM0SGZWc0xsUkFTMG1QYkw3bk0xYVVmZ1hlb3RraSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1647861504),
('bGCC1zrfUAybdzgfua2irWJRG988vlEJtJxYVLyH', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTE1xcVdPNHFMeWo1NFdMRExIZG55R0xTSjdQZ1daTU54TDVBclFCaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hbGwtc3R1ZGVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRwTWN2STJ4eExLc0U0ejdXbjlpTU1lVkJISDg4RFpRUi5Fd1c1V3BOZGxTb1A1Um51V0pLRyI7fQ==', 1648029249),
('CaTRmAp9Q4wWoIxfb6ksGxCmY5IPG8cjrByxkQHo', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNG5ONDl4WFRzWDRDak9semJacXJQeXNwQU8wVVhtWHhINUZMSndPSSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMzOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWxsLXN0dWRlbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkcE1jdkkyeHhMS3NFNHo3V245aU1NZVZCSEg4OERaUVIuRXdXNVdwTmRsU29QNVJudVdKS0ciO30=', 1647327870),
('ewKkTjYwD2kpiSamdWkr8iYt6jcUnVfR5g6DEHgf', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMEp4RGFESXYxVEdKQlRhNExPNTZ5eU1tQWhSd25WNHBJc2pWWU9YZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9lbXBsb3llciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRwTWN2STJ4eExLc0U0ejdXbjlpTU1lVkJISDg4RFpRUi5Fd1c1V3BOZGxTb1A1Um51V0pLRyI7fQ==', 1648018778),
('iDMPAhspyJpMvHCH3qJ6Reiww31IKcTCqtpHl615', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGpZUmZnMkhzdDJEakJxeXgxU0FpTzQyRE1USXVsR01CcUJCc1k1MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1646650572),
('KxD4KgnQYjjxwgRVVVTntjZUx0thTkNNlY09qnk2', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiY0FBRkZnWGlVUmlMeXVQTlhKMHhNQ2JTY0plY2x6ZW9rc1pONTJacyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi11c2VyLWxpc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkcE1jdkkyeHhMS3NFNHo3V245aU1NZVZCSEg4OERaUVIuRXdXNVdwTmRsU29QNVJudVdKS0ciO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJHBNY3ZJMnh4TEtzRTR6N1duOWlNTWVWQkhIODhEWlFSLkV3VzVXcE5kbFNvUDVSbnVXSktHIjt9', 1647861532),
('uHKoOmQN2MaJRlP03jsxScGgS92Hku5Z89DwcsKb', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiaDVpQ3RFbGhNbkI3UHRLZlNZOTAzbzJsbTRnc3BaTzhvck5JRmRBOCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMwOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZW1wbG95ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkcE1jdkkyeHhMS3NFNHo3V245aU1NZVZCSEg4OERaUVIuRXdXNVdwTmRsU29QNVJudVdKS0ciO30=', 1646651567);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profileimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `profileimage`, `created_at`, `updated_at`) VALUES
(2, 'Adib Mahmud', '1646566940.jpg', '2022-03-06 05:42:20', '2022-03-06 05:42:20'),
(6, 'Rodoshee', '1646571057.png', '2022-03-06 06:50:57', '2022-03-06 06:50:57'),
(9, 'Tasfia Ruku', '1646571850.png', '2022-03-06 07:03:38', '2022-03-06 07:04:10'),
(11, 'Rokibul Islam Rocky', '1646635762.jpg', '2022-03-07 00:49:22', '2022-03-07 00:49:22'),
(12, 'Sejan', '1646637314.jpg', '2022-03-07 01:15:14', '2022-03-07 01:15:14'),
(13, 'Sojol', '1646637344.png', '2022-03-07 01:15:44', '2022-03-07 01:15:44'),
(14, 'Masum', '1646637497.jpg', '2022-03-07 01:18:17', '2022-03-07 01:18:17'),
(15, 'sdsdsdsdsd', '1648029236.png', '2022-03-23 03:53:56', '2022-03-23 03:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@gmail.com', '0', NULL, '$2y$10$1lkBs1OHpmzm6UyETEBpy.WXf4qKQpJJNYaR.pTl8S14GVJnDwzRW', NULL, NULL, NULL, NULL, NULL, '2022-02-23 05:10:57', '2022-02-23 05:10:57'),
(2, 'Admin', 'admin@gmail.com', '1', NULL, '$2y$10$pMcvI2xxLKsE4z7Wn9iMMeVBHH88DZQR.EwW5WpNdlSoP5RnuWJKG', NULL, NULL, NULL, NULL, NULL, '2022-02-23 05:11:32', '2022-02-23 05:11:32'),
(3, 'Seller', 'seller@gmail.com', '2', NULL, '$2y$10$SKzJSuzIstjhnpSdKCXbYuWbcs3ERRhJ6mbSsbd9jTO6bqma5BxnK', NULL, NULL, NULL, NULL, NULL, '2022-02-23 05:11:49', '2022-02-23 05:12:57'),
(5, 'Atik Mahmud', 'atik@shajgoj.com', '1', NULL, '$2y$10$VYrPEv1X1uRZJYOLJAwdCOHpVxKxsMcI4Hhvm2DDTdI6DTH0hiUsG', NULL, NULL, NULL, NULL, NULL, '2022-02-24 05:13:31', '2022-02-24 05:17:22'),
(6, 'Adib Mahmud', 'adib@gmail.com', '0', NULL, '$2y$10$5xcOtXG3FP8K2.V6F269puPX5jB.0C1O3muMF/4ACHfpyPZLcCWGK', NULL, NULL, NULL, NULL, NULL, '2022-02-24 05:18:24', '2022-02-24 05:18:24'),
(7, 'Khayrul Islam', 'khayrul@gmail.com', '2', NULL, '$2y$10$T/2TyIOgjZDxB.RuAU0kTeAJ.6yhKAFO15BApPCpm3s0TACG09B4G', NULL, NULL, NULL, NULL, NULL, '2022-02-24 06:27:47', '2022-02-24 06:27:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
