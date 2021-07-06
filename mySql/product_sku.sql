-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-07-06 13:21:57
-- 伺服器版本： 10.4.18-MariaDB
-- PHP 版本： 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mfee17_4_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `product_sku`
--

CREATE TABLE `product_sku` (
  `id` int(6) UNSIGNED NOT NULL,
  `product_id` int(5) UNSIGNED NOT NULL,
  `sku_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku_group` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(6) UNSIGNED NOT NULL,
  `stock` int(5) UNSIGNED NOT NULL,
  `Sales` int(6) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `product_sku`
--

INSERT INTO `product_sku` (`id`, `product_id`, `sku_code`, `sku_group`, `price`, `stock`, `Sales`, `status`) VALUES
(1, 1, '10011011', '1,4', 476, 10, 42, 1),
(2, 1, '10011012', '1,5', 476, 42, 56, 1),
(3, 1, '10011013', '1,6', 476, 23, 75, 1),
(4, 1, '10011014', '1,7', 476, 11, 76, 1),
(5, 1, '10011015', '1,8', 476, 2, 75, 1),
(6, 1, '10011021', '2,4', 476, 45, 78, 1),
(7, 1, '10011022', '2,5', 476, 36, 45, 1),
(8, 1, '10011023', '2,6', 476, 25, 98, 1),
(9, 1, '10011024', '2,7', 476, 22, 57, 1),
(10, 1, '10011025', '2,8', 476, 10, 96, 1),
(11, 1, '10011031', '3,4', 476, 35, 44, 1),
(12, 1, '10011032', '3,5', 476, 45, 87, 1),
(13, 1, '10011033', '3,6', 476, 20, 46, 1),
(14, 1, '10011034', '3,7', 476, 23, 47, 1),
(15, 1, '10011035', '3,8', 476, 57, 64, 1),
(16, 2, '10022101', '9', 857, 24, 45, 1),
(17, 2, '10022102', '10', 857, 32, 67, 1),
(18, 2, '10022103', '11', 857, 15, 57, 1),
(19, 3, '10033101', '12', 870, 15, 45, 1),
(20, 3, '10033102', '13', 870, 13, 78, 1),
(21, 3, '10033103', '14', 870, 15, 75, 1),
(22, 3, '10033104', '15', 870, 65, 79, 1),
(23, 3, '10033105', '16', 870, 42, 120, 1),
(24, 4, '30013010', '17', 1120, 56, 84, 1),
(25, 4, '30013020', '18', 1120, 14, 68, 1),
(26, 5, '20013011', '19,21', 1599, 43, 56, 1),
(27, 5, '20013012', '19,22', 1599, 51, 75, 1),
(28, 5, '20013013', '19,23', 1599, 65, 12, 1),
(29, 5, '20013021', '20,21', 1599, 46, 23, 1),
(30, 5, '20013022', '20,22', 1599, 14, 56, 1),
(31, 5, '20013023', '20,23', 1599, 42, 44, 1),
(32, 6, '10041011', '24,26', 648, 45, 12, 1),
(33, 6, '10041012', '24,27', 648, 10, 75, 1),
(34, 6, '10041013', '24,28', 648, 12, 45, 1),
(35, 6, '10041014', '24,29', 648, 32, 25, 1),
(36, 6, '10041021', '25,26', 648, 45, 10, 1),
(37, 6, '10041022', '25,27', 648, 32, 45, 1),
(38, 6, '10041023', '25,28', 648, 54, 12, 1),
(39, 6, '10041024', '25,29', 648, 42, 12, 1),
(40, 7, '10051011', '30,31', 616, 45, 21, 1),
(41, 7, '10051012', '30,32', 616, 12, 41, 1),
(42, 7, '10051013', '30,33', 616, 10, 23, 1),
(43, 8, '10062011', '34,35', 572, 23, 12, 1),
(44, 8, '10062012', '34,36', 572, 10, 24, 1),
(45, 8, '10062013', '34,37', 572, 56, 77, 1),
(46, 8, '10062014', '34,38', 572, 65, 30, 1),
(47, 8, '10062015', '34,39', 572, 95, 10, 1),
(48, 9, '10072011', '40,41', 1237, 9, 102, 1),
(49, 9, '10072012', '40,42', 1237, 32, 78, 1),
(50, 9, '10072013', '40,43', 1237, 12, 45, 1),
(51, 9, '10072014', '40,44', 1237, 20, 12, 1),
(52, 10, '10082001', '45', 599, 18, 102, 1),
(53, 10, '10082002', '46', 599, 20, 100, 1),
(54, 11, '10092011', '47,52', 616, 22, 120, 1),
(55, 11, '10092012', '48,52', 616, 35, 112, 1),
(56, 11, '10092013', '49,52', 616, 30, 123, 1),
(57, 11, '10092014', '50,52', 616, 21, 112, 1),
(58, 11, '10092015', '51,52', 616, 32, 132, 1),
(59, 11, '10092021', '47,53', 616, 45, 95, 1),
(60, 11, '10092022', '48,53', 616, 20, 82, 1),
(61, 11, '10092023', '49,53', 616, 35, 102, 1),
(62, 11, '10092024', '50,53', 616, 12, 123, 1),
(63, 11, '10092025', '51,53', 616, 35, 73, 1),
(64, 12, '10101011', '54,56', 1080, 24, 68, 1),
(65, 12, '10101012', '54,57', 1080, 33, 74, 1),
(66, 12, '10101013', '54,58', 1080, 24, 80, 1),
(67, 12, '10101021', '55,56', 1080, 32, 75, 1),
(68, 12, '10101022', '55,57', 1080, 32, 88, 1),
(69, 12, '10101023', '55,58', 1080, 24, 77, 1),
(70, 13, '20022001', '59', 2090, 23, 54, 1),
(71, 13, '20022002', '60', 2090, 32, 46, 1),
(72, 13, '20022003', '61', 2090, 21, 66, 1),
(73, 13, '20022004', '62', 2090, 34, 64, 1),
(74, 13, '20022005', '63', 2090, 44, 33, 1),
(75, 13, '20022006', '64', 2090, 54, 24, 1),
(76, 13, '20022007', '65', 2090, 22, 77, 1),
(77, 13, '20022008', '66', 2090, 31, 68, 1),
(78, 14, '20032011', '67,68', 1760, 32, 87, 1),
(79, 14, '20032012', '67,69', 1760, 33, 76, 1),
(80, 14, '20032013', '67,70', 1760, 24, 77, 1),
(81, 14, '20032014', '67,71', 1760, 21, 88, 1),
(82, 15, '20042001', '72', 4383, 21, 100, 1),
(83, 15, '20042002', '73', 4383, 25, 102, 1),
(84, 15, '20042003', '74', 4383, 22, 103, 1),
(85, 15, '20042004', '75', 4383, 26, 104, 1),
(86, 15, '20042005', '76', 4383, 24, 104, 1),
(87, 15, '20042006', '77', 4383, 23, 105, 1),
(88, 15, '20042007', '78', 4383, 54, 110, 1),
(89, 15, '20042008', '79', 4383, 66, 103, 1),
(90, 16, '20052001', '80', 5504, 55, 44, 1),
(91, 16, '20052002', '81', 5504, 56, 42, 1),
(92, 16, '20052003', '82', 5504, 57, 42, 1),
(93, 16, '20052004', '83', 5504, 56, 46, 1),
(94, 16, '20052005', '84', 5504, 58, 64, 1),
(95, 16, '20052006', '85', 5504, 52, 66, 1),
(96, 17, '20061001', '86', 4080, 45, 91, 1),
(97, 17, '20061002', '87', 4080, 50, 88, 1),
(98, 17, '20061003', '88', 4080, 49, 93, 1),
(99, 17, '20061004', '89', 4080, 47, 99, 1),
(100, 17, '20061005', '90', 4080, 46, 101, 1),
(101, 17, '20061006', '91', 4080, 44, 100, 1),
(102, 17, '20061007', '92', 4080, 45, 93, 1),
(103, 18, '20071001', '93', 1490, 77, 120, 1),
(104, 18, '20071002', '94', 1490, 75, 125, 1),
(105, 19, '20081001', '95', 2980, 84, 140, 1),
(106, 19, '20081002', '96', 2980, 87, 141, 1),
(107, 19, '20081003', '97', 2980, 89, 143, 1),
(108, 19, '20081004', '98', 2980, 82, 146, 1),
(109, 19, '20081005', '99', 2980, 81, 149, 1),
(110, 20, '20091001', '100', 2208, 84, 130, 1),
(111, 20, '20091002', '101', 2208, 88, 128, 1),
(112, 20, '20091003', '102', 2208, 89, 124, 1),
(113, 21, '20101011', '103,107', 3303, 54, 176, 1),
(114, 21, '20101012', '103,108', 3303, 56, 172, 1),
(115, 21, '20101013', '103,109', 3303, 54, 173, 1),
(116, 21, '20101014', '103,110', 3303, 42, 143, 1),
(117, 21, '20101015', '103,111', 3303, 54, 169, 1),
(118, 21, '20101021', '104,107', 3303, 50, 168, 1),
(119, 21, '20101022', '104,108', 3303, 54, 173, 1),
(120, 21, '20101023', '104,109', 3303, 52, 171, 1),
(121, 21, '20101024', '104,110', 3303, 53, 169, 1),
(122, 21, '20101025', '104,111', 3303, 55, 160, 1),
(123, 21, '20101031', '105,107', 3303, 53, 174, 1),
(124, 21, '20101032', '105,108', 3303, 59, 140, 1),
(125, 21, '20101033', '105,109', 3303, 54, 173, 1),
(126, 21, '20101034', '105,110', 3303, 52, 143, 1),
(127, 21, '20101035', '105,111', 3303, 55, 160, 1),
(128, 21, '20101041', '106,107', 3303, 54, 180, 1),
(129, 21, '20101042', '106,108', 3303, 55, 140, 1),
(130, 21, '20101043', '106,109', 3303, 43, 100, 1),
(131, 21, '20101044', '106,110', 3303, 39, 170, 1),
(132, 21, '20101045', '106,111', 3303, 36, 144, 1),
(133, 22, '30020001', '112', 504, 74, 33, 1),
(134, 22, '30020002', '113', 864, 54, 130, 1),
(135, 22, '30020003', '114', 1224, 56, 120, 1),
(136, 22, '30020004', '115', 1764, 34, 94, 1),
(137, 22, '30020005', '116', 2210, 20, 110, 1),
(138, 23, '30030001', '117', 480, 0, 0, 1),
(139, 23, '30030002', '118', 700, 64, 77, 1),
(140, 23, '30030003', '119', 960, 30, 56, 1),
(141, 23, '30030004', '120', 1160, 23, 40, 1),
(142, 23, '30030005', '121', 1300, 20, 30, 1),
(143, 24, '30040001', '122', 2100, 52, 40, 1),
(144, 24, '30040002', '123', 2400, 70, 31, 1),
(145, 25, '30050001', '124', 2341, 77, 40, 1),
(146, 25, '30050002', '125', 3024, 86, 12, 1),
(147, 25, '30050003', '126', 3278, 99, 12, 1),
(148, 25, '30050004', '127', 3745, 94, 9, 1),
(149, 24, '30060001', '128', 531, 56, 70, 1),
(150, 24, '30060002', '129', 801, 43, 41, 1),
(151, 24, '30060003', '130', 972, 75, 40, 1),
(152, 24, '30060004', '131', 1280, 64, 31, 1),
(153, 27, '30070001', '132', 540, 69, 120, 1),
(154, 27, '30070002', '133', 540, 88, 100, 1),
(155, 28, '30080001', '134', 599, 64, 130, 1),
(156, 28, '30080002', '135', 599, 51, 120, 1),
(157, 29, '30090001', '136', 1062, 21, 160, 1),
(158, 30, '30100001', '137', 999, 84, 210, 1),
(159, 30, '30100002', '138', 999, 94, 200, 1),
(160, 30, '30100003', '139', 999, 76, 160, 1),
(161, 30, '30100004', '140', 999, 65, 192, 1),
(162, 31, '40010001', '141', 1999, 94, 213, 1),
(163, 31, '40010002', '142', 1999, 86, 240, 1),
(164, 32, '40020001', '143', 3399, 120, 261, 1),
(165, 32, '40020002', '144', 3399, 98, 254, 1),
(166, 33, '40030001', '145', 899, 123, 246, 1),
(167, 33, '40030002', '146', 1699, 120, 265, 1),
(168, 34, '40040001', '147', 999, 54, 160, 1),
(169, 35, '40050001', '148', 49, 560, 1240, 1),
(170, 36, '40060001', '149', 1350, 56, 40, 1),
(171, 37, '40070001', '150', 1199, 130, 36, 1),
(172, 38, '40080001', '151', 1299, 120, 68, 1),
(173, 39, '40090011', '152,154', 175, 83, 354, 1),
(174, 39, '40090012', '152,155', 615, 103, 360, 1),
(175, 39, '40090021', '153,154', 198, 84, 298, 1),
(176, 39, '40090022', '153,155', 729, 94, 260, 1),
(177, 40, '40100000', '', 285, 163, 340, 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `product_sku`
--
ALTER TABLE `product_sku`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `product_sku`
--
ALTER TABLE `product_sku`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
