-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2021 at 12:42 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datn`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `area` varchar(255) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `open` time NOT NULL,
  `close` time NOT NULL,
  `image` text NOT NULL,
  `maps` text NOT NULL,
  `id_categori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `name`, `address`, `area`, `phone`, `open`, `close`, `image`, `maps`, `id_categori`, `id_user`) VALUES
(2, 'Bông Food-Drink', '38 Hàm Tử, Bắc Mỹ Phú, Ngũ Hành Sơn', 'Đà Nẵng', '0937974223', '07:00:00', '20:00:00', 'images\\maps/images1476819_TCT_1860.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.351446582623!2d108.23608451482941!3d16.047242288894463!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142176273b04ac7%3A0x2f2c77e42d8d6219!2zMzggSMOgbSBU4butLCBC4bqvYyBN4bu5IFBow7osIE5nxakgSMOgbmggU8ahbiwgxJDDoCBO4bq1bmcgNTUwMDAwLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1634928383479!5m2!1svi!2s\" width=\"400\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 1, 1),
(3, 'Trà sữa Money', '17 Nguyễn Du, Thạch Thang, Hải Châu', 'Đà Nẵng', '093531241', '14:00:00', '23:00:00', 'images\\maps/tra-sua-money-8.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.7445394456313!2d108.22034641417002!3d16.07874094345544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142183ba66df46b%3A0xdffaed1d8b374e00!2zVHLDoCBz4buvYSBNb25leQ!5e0!3m2!1svi!2s!4v1593073237952!5m2!1svi!2s\" width=\"330\" height=\"310\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 1, 1),
(4, 'Nướng Đà Thành', '105 – 106 Nguyễn Văn Linh', 'Đà Nẵng', '0977837145', '00:00:00', '17:00:00', 'images\\maps/2020-05-07.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.1091242332727!2d108.21162845782519!3d16.059826102246657!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219b5efce7fb9%3A0x61d8e783f0d33b8c!2zMTA1IE5ndXnhu4VuIFbEg24gTGluaCwgVsSpbmggVHJ1bmcsIFRoYW5oIEtow6osIMSQw6AgTuG6tW5nIDU1MDAwMCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1593072131265!5m2!1svi!2s\" width=\"330\" height=\"310\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 5, 1),
(5, 'Bún thịt nướng Bà Trai', '194 Đống Đa, Hải Châu', 'Đà Nẵng', '0923541232', '00:00:00', '17:00:00', 'images\\maps/foody-mobile-foody-bun-thit-nuong-728-636011472220626220.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d7667.486006684401!2d108.21725077301635!3d16.07882059143811!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb8f68fb96c255946!2zQsO6biB0aOG7i3Qgbsaw4bubbmcgQsOgIFRyYWk!5e0!3m2!1svi!2s!4v1610117667058!5m2!1svi!2s\" width=\"330\" height=\"310\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 5, 1),
(6, 'Cơm gà Ngọc Diệp', '56 Hải Phòng, Thanh Khê', 'Đà Nẵng', '0942434175', '07:00:00', '14:00:00', 'images\\maps/foody-upload-api-foody-mobile-cach-lam-com-ga-xoi--190904134643.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.862469519433!2d108.21665161416995!3d16.072625043617773!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421836df349f21%3A0x5499870f2067d335!2zUXXDoW4gxINuIE5n4buNYyBEaeG7h3A!5e0!3m2!1svi!2s!4v1593072932100!5m2!1svi!2s\" width=\"330\" height=\"310\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 5, 1),
(7, 'Quán chè Liên', '175 Hải Phòng, Thanh Khê', 'Đà Nẵng', '0835112444', '10:00:00', '23:00:00', 'images\\maps/file_restaurant_photo_nb24_16188-4ccc2e76-210419131333.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.8840978572234!2d108.21041451416988!3d16.071503143647494!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421849eac51b25%3A0x2664c2573bd8d5c6!2zQ2jDqCBMacOqbg!5e0!3m2!1svi!2s!4v1593073043369!5m2!1svi!2s\" width=\"310\" height=\"330\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 6, 1),
(8, 'Ốc Ngon Đà Nẵng', '137 Nguyễn Đức Trung, Hòa Khê, Thanh Khê', 'Đà Nẵng', '0905511302', '15:00:00', '21:00:00', 'images\\maps/foody-mobile-oc-jpg.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.984208324584!2d108.1864624141698!3d16.066309243785238!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219003c5310a3%3A0x9d3d2bf38db8204e!2z4buQYyBOZ29uIMSQw6AgTuG6tW5n!5e0!3m2!1svi!2s!4v1593073832109!5m2!1svi!2s\" width=\"330\" height=\"310\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 6, 1),
(9, 'Bánh tráng cuốn thịt heo', '12 Lê Hồng Phong, Phước Ninh, Hải Châu', 'Đà Nẵng', '0905156012', '11:00:00', '23:00:00', 'images\\maps/foody-upload-api-foody-mobile-capture-191001134315.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.028404646009!2d108.2207897141698!3d16.064015743846138!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219cb3bb29bfb%3A0x53754b77dfd04574!2zxJDhurdjIHPhuqNuIEhvw6BuZyBUw61uIC0gQsOhbmggdHLDoW5nIGN14buRbiB0aOG7i3QgaGVv!5e0!3m2!1svi!2s!4v1593073956256!5m2!1svi!2s\" width=\"330\" height=\"310\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 5, 1),
(10, 'Ăn vặt cô Liên', '12 Hải Phòng, Thạch Thang, Hải Châu', 'Đà Nẵng', '0933434342', '15:00:00', '22:00:00', 'images\\maps/foody-upload-api-foody-mobile-co-lien-jpg-180620143559.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.8618390965976!2d108.21752711416991!3d16.07265774361687!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3142195a2133f56f%3A0xc902ada55d9bba99!2zxIJuIHbhurd0IGPDtCBMacOqbg!5e0!3m2!1svi!2s!4v1593074067278!5m2!1svi!2s\" width=\"330\" height=\"310\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 6, 1),
(11, 'Cơm niêu Nhà Đỏ', '176 Nguyễn Tri Phương, Thạc Gián, Thanh Khê', 'Đà Nẵng', '090527682', '11:00:00', '20:00:00', 'images\\maps/24991353_2019569704771654_1445673155651543248_n.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.0889899657805!2d108.20254476416977!3d16.06087124392951!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219b122847b3f%3A0x17896ca8c13d76bc!2zQ8ahbSBOacOqdSBOaMOgIMSQ4buP!5e0!3m2!1svi!2s!4v1593074252399!5m2!1svi!2s\" width=\"330\" height=\"310\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 5, 1),
(12, 'Mười Rau Quán', '12 Phạm Ngọc Thạch, Thuận Phước, Hải Châu', 'Đà Nẵng', '02367109105', '10:00:00', '12:00:00', 'images\\maps/20201-02-11.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.5583211337635!2d108.21501021483003!3d16.08839368886906!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219743955c5a1%3A0xc918ee2753aefe28!2zTcaw4budaSBSYXUgUXXDoW4!5e0!3m2!1svi!2s!4v1634939944297!5m2!1svi!2s\" width=\"400\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 5, 1),
(13, 'Ăn Đêm Đà Nẵng', '11 Ông Ích Khiêm, Thanh Bình, Hải Châu', 'Đà Nẵng', '0708069127', '21:00:00', '02:00:00', 'images\\maps/Mì quảng gà.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3833.7460814547026!2d108.20944431482997!3d16.078660988875033!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421847a8d4d1d1%3A0x4af43b6403e9ed3a!2zxIJuIMSQw6ptIMSQw6AgTuG6tW5n!5e0!3m2!1svi!2s!4v1634940057462!5m2!1svi!2s\" width=\"400\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 5, 1),
(14, 'Yes! Sushi', '103 Hoàng Diệu, Phước Ninh, Hải Châu', 'Đà Nẵng', '0909896237', '10:30:00', '22:30:00', 'images\\maps/2017-12-10.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3834.040423498613!2d108.21599931482966!3d16.063391988884526!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314219cb3972fdd5%3A0x681a5d53c26839c7!2sYes*21%20Sushi!5e0!3m2!1svi!2s!4v1634940180117!5m2!1svi!2s\" width=\"400\" height=\"300\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `id_user`) VALUES
(1, 'Drink', 1),
(5, 'Food', 1),
(6, 'Snacks', 1);

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
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `subject` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `content`) VALUES
(1, 'Quang', 'tvquang.19i@gmail.com', 'hello', '123123');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
  `id` int(11) NOT NULL,
  `name_product` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `id_categori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_address` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name_product`, `price`, `content`, `image`, `id_categori`, `id_user`, `id_address`) VALUES
(6, 'Trà sữa', 26000, 'Bông food-drink', 'images\\product/foody-bong-food-drink-dong-da-417-636734292918919049.jpg', 1, 1, 2),
(7, 'Trà sữa socola', 22000, 'Money', 'images\\product/ty.jpg', 1, 1, 3),
(8, 'Bò nướng khoai tây', 70000, 'Nướng', 'images\\product/garlic-steak-foil-pack-15303478628851015691203.jpg', 5, 1, 4),
(9, 'Gà nướng', 300000, 'Nướng', 'images\\product/gia-vi-uop-ga-nuong.jpg', 5, 1, 4),
(10, 'Gà Chỉ', 86000, 'Nướng', 'images\\product/foody-mobile-cach-uop-ga-nuong-mu-499-636074849849674960.jpg', 5, 1, 4),
(11, 'Gỏi cơm dừa heo quay', 300000, 'Gỏi', 'images\\product/CachLamGOICOMDUA1200-1200x676.jpg', 5, 1, 4),
(12, 'Bún thịt nướng', 30000, 'Bún', 'images\\product/cach-lam-bun-thit-nuong-tai-nha-don-gian-dam-da-thom-ngon-nuc-mui-2-760x367.jpg', 5, 1, 5),
(13, 'Cơm gà Ngọc Diệp', 30000, 'Cơm gà', 'images\\product/quan-com-ga-da-nang-cuon-hut.jpg', 5, 1, 6),
(14, 'Chè thái', 15000, 'Chè', 'images\\product/che-thai-6.jpg', 6, 1, 7),
(15, 'Sữa chua trái cây', 17000, 'Sữa chua', 'images\\product/cach-lam-sua-chua-hoa-qua-ngon-tai-nha-cach-lam-sua-chua-hoa-qua-3-1556854456-365-width551height366.jpg', 6, 1, 7),
(16, 'Chè trái cây', 30000, 'Chè', 'images\\product/20171012152957-che-trai-cay-chua-ngot.jpg', 6, 1, 7),
(17, 'Chè long nhãn', 30000, 'Chè', 'images\\product/che-hat-sen-long-nhan.jpg', 6, 1, 7),
(18, 'Trà sữa truyền thống', 30000, 'Trà Sữa', 'images\\product/tra-sua-truyen-thong.jpg', 1, 1, 3),
(19, 'Trà sữa khoai môn', 25000, 'Trà Sữa', 'images\\product/cong-thuc-pha-tra-sua-khoai-mon.jpg', 1, 1, 3),
(20, 'Ốc hương', 25000, 'Ốc', 'images\\product/Trần Văn Quang 191C900033.jpg', 6, 1, 8),
(21, 'Ốc bưu', 25000, 'Ốc', 'images\\product/oc-buou-tron-kieu-thai-thumbnail.jpg', 6, 1, 8),
(22, 'Ốc hút', 25000, 'Ốc', 'images\\product/anhbia-b.jpg', 6, 1, 8),
(23, 'Bún ốc', 30000, 'Bún', 'images\\product/bun-oc-ha-noi.jpg', 5, 1, 8),
(24, 'Bánh tráng cuốn', 25000, 'Bánh tráng', 'images\\product/cach-lam-banh-trang-cuon-cham-sot-tac-tai-nha-800x675.jpg', 5, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'employee'),
(3, 'user\r\n'),
(4, 'employee'),
(5, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 3
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `phone`, `address`, `avatar`, `role_id`) VALUES
(1, 'Quang', 'tvquang.19i@gmail.com', NULL, '$2y$10$xrbSemfZXFkEXZfDgznk/O.6lYeUiNFMVywyO594tbH3LGlj5JycG', 'cX6msQZzRA1peJk6FAmW4x7zQTJlCOUV4opuhAcwWo2jr2pyjladiifIwddX', NULL, NULL, '0397391045', 'Da Nang', 'images\\avatar/Trần Văn Quang 191C900033.jpg', 1),
(2, 'Quang11', 'tvquang.19i1@gmail.com', NULL, '$2y$10$t4/lK/mCKcyPX749jS/Q0uSRA.KMbaWfdwSmW5KPpmdgogD0YnyNC', NULL, NULL, NULL, '0397391045', 'Da Nang', 'images\\avatar/logo.png', 3),
(4, 'Quang', 'tvquang.19i@cit.udn.vn', NULL, '$2y$10$csN52q8DGxSFI23pOf/XWeJJMXAvqG//Ql3GOIWG.72fH1Lh.5.ny', '0sjq5ONzbd1XbsOS0G0SP6O5lMLvfH1apBmVEVnrtHJpGi9n0JK5aZc0tznV', NULL, NULL, '0397391045', 'Da Nang', 'images\\avatar/Trần Văn Quang 191C900033.jpg', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categori` (`id_categori`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `products_ibfk_2` (`id_address`),
  ADD KEY `products_ibfk_3` (`id_categori`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`id_categori`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `address_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_address`) REFERENCES `address` (`id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`id_categori`) REFERENCES `categories` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
