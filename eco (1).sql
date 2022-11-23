-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2022 pada 07.27
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eco`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_attribute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(2, 'Album', 'album', '2022-09-11 21:14:23', '2022-11-14 18:35:01'),
(6, 'Photobook', 'photobook', '2022-09-11 21:14:24', '2022-11-16 18:59:01'),
(18, 'Membership', 'membership', '2022-11-21 05:49:24', '2022-11-21 05:49:24'),
(19, 'Welcoming Collection', 'welcoming-collection', '2022-11-21 05:50:42', '2022-11-21 05:50:42'),
(20, 'Merch', 'merch', '2022-11-21 05:50:54', '2022-11-21 05:50:54'),
(21, 'Fashion Merch', 'fashion-merch', '2022-11-21 05:53:08', '2022-11-21 05:53:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'emil', 'emil@emil.com', '(+62) 82330314158', 'test', '2022-11-02 05:58:27', '2022-11-02 05:58:27'),
(2, 'ya', 'kasir@gmail.com', '651723', 'yolo yolo', '2022-11-02 06:00:09', '2022-11-02 06:00:09'),
(3, 'Aris', 'aris@gmail.com', '1234567890', 'KOKarisNOOB', '2022-11-07 06:39:18', '2022-11-07 06:39:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` decimal(8,2) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `countries`
--

INSERT INTO `countries` (`id`, `name`, `distance`, `status`, `created_at`, `updated_at`) VALUES
(1, 'El Salvador', '4261.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(2, 'Yemen', '1823.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(3, 'Wallis and Futuna', '2119.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(4, 'Iran', '1214.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(5, 'Japan', '4562.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(6, 'Anguilla', '4041.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(7, 'Latvia', '2430.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(8, 'Russian Federation', '2749.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(9, 'United Kingdom', '4157.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(10, 'Christmas Island', '3580.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(11, 'Samoa', '3454.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(12, 'Niger', '3146.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(13, 'Burkina Faso', '4956.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(14, 'Algeria', '4231.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(15, 'Croatia', '1890.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(16, 'Jersey', '4994.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(17, 'South Georgia and the South Sandwich Islands', '1058.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(18, 'Finland', '4318.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(19, 'Austria', '1450.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11'),
(20, 'Philippines', '2329.00', 1, '2022-11-20 22:20:11', '2022-11-20 22:20:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(1, 'OFF100', 'fixed', '100.00', '1000.00', '2022-10-08 19:39:27', '2022-10-10 19:59:23', '2022-10-12'),
(4, 'OFF30', 'percent', '10.00', '100.00', '2022-10-09 22:43:09', '2022-10-09 22:43:09', '2022-10-11'),
(5, 'OFF40', 'fixed', '30.00', '120.00', '2022-10-10 19:04:39', '2022-10-10 19:14:36', '2022-10-13'),
(6, 'OFFF12', 'fixed', '20.00', '50.00', '2022-11-16 18:47:16', '2022-11-16 18:47:16', '2022-11-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekspeditions`
--

CREATE TABLE `ekspeditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kurir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_km` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ekspeditions`
--

INSERT INTO `ekspeditions` (`id`, `kurir`, `price_km`, `created_at`, `updated_at`) VALUES
(1, 'JNE Express', '0.10', NULL, NULL),
(2, 'J&T Express', '0.20', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '2,6,18,19,20,21', 8, '2022-09-24 10:04:49', '2022-11-21 18:22:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `title`, `subtitle`, `price`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'LIGHTSTICK ', 'lightstick semua idol', '30', 'https://localhost:8000/shop', '1668644106.png', 1, '2022-09-23 03:10:58', '2022-11-16 17:16:58'),
(4, 'NEW ARRIVAL', 'all photocard and album', '200', 'http://127.0.0.1:8000/', '1668644170.png', 1, '2022-09-23 03:23:27', '2022-11-16 17:16:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_09_05_035347_create_sessions_table', 1),
(7, '2022_09_09_111635_create_categories_table', 1),
(8, '2022_09_09_111832_create_products_table', 1),
(9, '2022_09_19_033957_create_home_sliders_table', 2),
(10, '2022_09_24_095930_create_home_categories_table', 3),
(11, '2022_09_28_113632_create_sales_table', 4),
(12, '2022_10_08_105845_create_coupons_table', 5),
(13, '2022_10_11_011411_add_expiry_date_to_coupons_table', 6),
(14, '2022_10_12_062138_create_orders_table', 7),
(15, '2022_10_12_062346_create_order_items_table', 7),
(16, '2022_10_12_062455_create_shippings_table', 7),
(17, '2022_10_12_062608_create_transactions_table', 7),
(18, '2022_10_26_065627_add_delivered_canceled_date_to_orders_table', 8),
(19, '2022_10_27_052045_create_reviews_table', 9),
(20, '2022_10_27_053145_add_rstatus_to_order_items_table', 9),
(21, '2022_11_01_125221_create_contacts_table', 10),
(22, '2022_11_03_042656_create_settings_table', 11),
(23, '2022_11_05_023754_create_shoppingcart_table', 12),
(24, '2022_11_05_033555_create_subcategories_table', 13),
(25, '2022_11_06_032216_add_subcategory_id_to_products_table', 14),
(26, '2022_11_07_144259_create_profiles_table', 15),
(27, '2022_11_08_092129_create_product_attributes_table', 16),
(28, '2022_11_08_172857_create_attribute_values_table', 17),
(29, '2022_11_09_065614_add_options_to_order_items_table', 18),
(30, '2022_11_21_051429_create_countries_table', 19),
(31, '2022_11_21_051500_create_ekspeditions_table', 19);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL,
  `harga_ongkir` decimal(8,2) NOT NULL,
  `id_kurir` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `delivered_date`, `canceled_date`, `harga_ongkir`, `id_kurir`) VALUES
(1, 1, '567.00', '0.00', '119.07', '686.07', 'Emil', 'Cantik', '123456987654', 'emilnoviana23@gmail.com', 'te', 'sdf', 'sby', 'Jatim', 'iND', '3572', 'canceled', 1, '2022-10-17 04:53:23', '2022-10-26 05:18:24', '2022-10-26', '2022-10-26', '0.00', 0),
(2, 1, '386.00', '0.00', '81.06', '467.06', 'cemil', 'cantik', '7826365987373', 'emil@emil.com', 'Jl.Raya jaten', NULL, 'SBY', 'JAKPUS', 'INDONESIA', '61257', 'canceled', 0, '2022-10-23 21:15:02', '2022-10-26 05:51:24', '2022-10-26', '2022-10-26', '0.00', 0),
(3, 1, '386.00', '0.00', '81.06', '467.06', 'cemil', 'cantik', '7826365987373', 'emil@emil.com', 'Jl.Raya jaten', NULL, 'SBY', 'JAKPUS', 'INDONESIA', '61257', 'ordered', 0, '2022-10-23 21:16:00', '2022-10-23 21:16:00', NULL, NULL, '0.00', 0),
(4, 1, '386.00', '0.00', '81.06', '467.06', 'cemil', 'cantik', '7826365987373', 'emil@emil.com', 'Jl.Raya jaten', NULL, 'SBY', 'JAKPUS', 'INDONESIA', '61257', 'ordered', 0, '2022-10-23 21:17:17', '2022-10-23 21:17:17', NULL, NULL, '0.00', 0),
(5, 1, '386.00', '0.00', '81.06', '467.06', 'cemil', 'cantik', '7826365987373', 'emil@emil.com', 'Jl.Raya jaten', NULL, 'SBY', 'JAKPUS', 'INDONESIA', '61257', 'ordered', 0, '2022-10-23 21:23:04', '2022-10-23 21:23:04', NULL, NULL, '0.00', 0),
(6, 1, '386.00', '0.00', '81.06', '467.06', 'cemil', 'cantik', '7826365987373', 'emil@emil.com', 'Jl.Raya jaten', NULL, 'SBY', 'JAKPUS', 'INDONESIA', '61257', 'ordered', 0, '2022-10-23 21:23:27', '2022-10-23 21:23:27', NULL, NULL, '0.00', 0),
(7, 1, '716.00', '0.00', '150.36', '866.36', 'har', 'dini', '12345678954', 'hardini@har', 'candi', NULL, 'jak', 'kal', 'ind', '57432', 'canceled', 0, '2022-10-23 21:30:40', '2022-10-26 05:49:05', NULL, '2022-10-26', '0.00', 0),
(8, 1, '532.00', '0.00', '111.72', '643.72', 'e', 'm', '123457893682', 'admin@gmail.com', 'jl', NULL, 'bnd', 'jb', 'us', '36783', 'delivered', 1, '2022-10-25 23:19:40', '2022-10-26 05:20:45', '2022-10-26', NULL, '0.00', 0),
(9, 1, '540.00', '0.00', '113.40', '653.40', 'emil', 'cemil', '12456781526', 'emilnoviana23@gmail.com', 'Jl', 'Raya', 'Sidoarjo', 'Jawa Timur', 'Indonesia', '61257', 'ordered', 0, '2022-11-04 19:29:04', '2022-11-04 19:29:04', NULL, NULL, '0.00', 0),
(10, 1, '346.00', '0.00', '72.66', '418.66', 'emil', 'ya', '234567893674', 'emilnoviana23@gmail.com', 'Jl aja', 'Hahahay', 'Sidoarjo', 'Jawa Timur', 'Indonesia', '62457', 'ordered', 0, '2022-11-04 19:33:21', '2022-11-04 19:33:21', NULL, NULL, '0.00', 0),
(11, 1, '844.00', '0.00', '177.24', '1021.24', 'cemil', 'ia', '123456785873', 'emilnoviana23@gmail.com', 'Jl', 'Raya', 'jakarta57', 'Jawa Timur', 'Indonesia', '54743', 'ordered', 0, '2022-11-04 20:24:11', '2022-11-04 20:24:11', NULL, NULL, '0.00', 0),
(12, 1, '254.00', '0.00', '53.34', '307.34', 'CEMIL', 'IA', '12345678276', 'emilnoviana23@gmail.com', 'jl', 'kali', 'jakarta', 'Jatim', 'INDONESIA', '62437', 'ordered', 0, '2022-11-04 20:25:46', '2022-11-04 20:25:46', NULL, NULL, '0.00', 0),
(13, 5, '156.00', '0.00', '32.76', '188.76', 'putra', 'rizqy', '1234567890', 'budi@gmail.com', 'cobak order', 'cobak order', 'sidoarjoo', 'jatimm', 'indonesia', '123123', 'ordered', 0, '2022-11-12 03:59:19', '2022-11-12 03:59:19', NULL, NULL, '0.00', 0),
(15, 7, '24.00', '0.00', '5.04', '29.04', 'kale', 'kalendra', '085231601061', 'kalvin@gmail.com', 'jalannn', 'anjaty', 'jakarta', 'aceh', 'indonesia', '123578', 'delivered', 0, '2022-11-16 17:50:08', '2022-11-16 17:51:24', '2022-11-17', NULL, '0.00', 0),
(16, 7, '54.00', '0.00', '11.34', '65.34', 'kalevin', 'kalvin', '085231601061', 'kalvin@gmail.com', 'jalan', 'abyu', 'anjay', 'aceh', 'jakarta', '12345', 'delivered', 0, '2022-11-16 18:05:23', '2022-11-16 18:06:02', '2022-11-17', NULL, '0.00', 0),
(17, 8, '140.00', '20.00', '29.40', '169.40', 'ANJENG', 'KAU AYA', '1234567890', 'rizqullah284@gmail.com', 'JALAN', 'BOTI', 'HEHE', 'BANDIT', 'ANJER', '12345', 'delivered', 0, '2022-11-16 18:51:23', '2022-11-16 18:52:25', '2022-11-17', NULL, '0.00', 0),
(18, 10, '40.00', '0.00', '8.40', '504.60', 'kale', 'cakep', '081923457567', 'kalevpin7@gmail.com', 'kembang', 'wangi', 'surabaya', 'jakarta', '4562.00', '12345', 'ordered', 0, '2022-11-21 00:56:21', '2022-11-21 00:56:21', NULL, NULL, '456.20', 1),
(19, 10, '30.00', '0.00', '6.30', '492.50', 'kale', 'cakep', '081923457567', 'kalevpin7@gmail.com', 'kembang', 'boti', 'surabaya', 'jakarta', '4562.00', '12345', 'ordered', 0, '2022-11-21 00:57:55', '2022-11-21 00:57:55', NULL, NULL, '456.20', 1),
(20, 10, '9.00', '0.00', '1.89', '467.09', 'kale', 'cakep', '081923457567', 'kalevpin7@gmail.com', 'kembang', 'janda', 'surabaya', 'jakarta', '4562.00', '12345', 'ordered', 0, '2022-11-21 18:48:23', '2022-11-21 18:48:23', NULL, NULL, '456.20', 1),
(21, 8, '10.00', '0.00', '2.10', '287.00', 'kale', 'cakep', '081923457567', 'kalevpin7@gmail.com', 'jalana', 'hagjgs', 'surabaya', 'jakarta', '2749.00', '12345', 'ordered', 0, '2022-11-21 23:31:06', '2022-11-21 23:31:06', NULL, NULL, '274.90', 1),
(22, 10, '509.00', '0.00', '106.89', '1072.09', 'kale', 'cakep', '081923457567', 'kalevpin7@gmail.com', 'kalelee', 'dsfgdh', 'surabaya', 'jakarta', '4562.00', '12345', 'delivered', 0, '2022-11-22 23:24:49', '2022-11-22 23:25:50', '2022-11-23', NULL, '456.20', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rstatus` tinyint(1) NOT NULL DEFAULT 0,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `rstatus`, `options`) VALUES
(22, 40, 15, '24.00', 1, '2022-11-16 17:50:08', '2022-11-16 17:52:33', 1, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(23, 40, 16, '24.00', 1, '2022-11-16 18:05:23', '2022-11-16 18:05:23', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(28, 83, 20, '9.00', 1, '2022-11-21 18:48:23', '2022-11-21 18:48:23', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(29, 82, 21, '10.00', 1, '2022-11-21 23:31:06', '2022-11-21 23:31:06', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(30, 83, 22, '9.00', 1, '2022-11-22 23:24:49', '2022-11-22 23:24:49', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(31, 80, 22, '500.00', 1, '2022-11-22 23:24:49', '2022-11-22 23:24:49', 0, 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}');

--
-- Trigger `order_items`
--
DELIMITER $$
CREATE TRIGGER `kurang_stok` BEFORE INSERT ON `order_items` FOR EACH ROW UPDATE products SET quantity = quantity - new.quantity WHERE id = new.product_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('kalvin@gmail.com', '$2y$10$6/rcOskmMAvlV4gT/gHtI.vVt2w20ye88agaFPQMmITiCePZjD/4i', '2022-11-16 18:09:07'),
('rizqullah284@gmail.com', '$2y$10$uSS06WROc9yN6LhEaPPOv.wjYZPX3TUFHGRxQoR.q8o4fwDlEw5dG', '2022-11-21 20:49:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `subcategory_id`) VALUES
(40, 'HELLO', 'hello', '<h1><strong>TREASURE - THE SECOND STEP : CHAPTER TWO (PHOTOBOOK ver.)</strong></h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">DETAIL:</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">2 VERSION: DEEP BLUE / LIGHT GREEN</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">SIZE : 157*217*20</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Composition : SLEEVE + CD + PHOTOBOOK(150p) + RANDOM PHOTOCARD (1 of 13) + RANDOM SELFIE PHOTOCARD (2 of 20) + RANDOM POSTCARD (1 of 10) + STICKER (1ea) + RANDOM UNIT SELFIE PHOTOCARD (1 of 5) / FIRST EDITION ONLY) + RARE FIND TREASURE CARD (20ea ONLY / FIRST EDITION ONLY) + RANDOM UNIT LARGE POSTCARD (1 of 3 / FIRST EDITION ONLY) + DOUBLE SIDED POSTER (1ea / FIRST EDITION ONLY)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Pre Order Benefit WEB:</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">KTOWN : 2 photocard</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">WEVERSE : </span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- Buy ALBUM and get 1 unreleased holographic photocard (random 1 out of 10 total) + 1 common photocard (random 1 out of 10 total) + 1 paper photocard frame (random 1 out of 2 total).</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- Buy SET and get 2 unreleased holographic photocard (random 2 out of 10) + 2 common photocards (random 2 out of 10) + 2 paper photocard frames.</span></p>', '24.00', '20.00', 'DIGI2', 'instock', 1, 500000, '1668648804.jpg', ',16685803250.jpg,16685803251.jpg', 2, '2022-11-15 23:32:05', '2022-11-16 18:33:24', NULL),
(41, 'BEATBOX DIGIPACK', 'beatbox-digipack', '<h1 class=\"_2rQP1z\">NCT DREAM - Beatbox (Digipack Ver)</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">NCT DREAM - The 2nd Album Repackage [Beatbox] (Digipack Ver.)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">DETAIL:</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- COVER 7 TYPES (Member Cover)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- BOOKLET(24p) (Different images by version)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- PHOTOCARD SET 1p by version</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- FOLDED POSTER 1p by version</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- STICKER 1p by version</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- PHOTOCARD Radom 1p out of 7p</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- MIX TAPE CARD Random 1p out of 7p</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">NO POSTER</span></p>', '13.00', '13.00', 'DIGI3', 'instock', 1, 1000000, '1668648865.jpg', ',16685809020.jpg,16685809021.jpg', 2, '2022-11-15 23:41:42', '2022-11-16 19:04:42', 10),
(42, 'DIMENSION : ANSWER', 'dimension-answer', '<h1>ENHYPEN - Album [DIMENSION : ANSWER]</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">DETAIL:</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- 1CD</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- Holder&amp; CD-R : Each ver. 1 type</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- Photo Book : Each ver. 1 type / TYPE 1 112p,<span style=\"mso-spacerun: yes;\">&nbsp; </span>TYPE 2 116p</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- Lyric Book (stick together in Photo Book): 28p</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- Selfie Photocard : random 1 out of 7</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- Instant Photo : random 1 out of 7</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- Photo Stand : Each ver. 1 type</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- Clear Photo Bookmark : random 1 out of 7</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- Paper Dice : Each ver. 1 type</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- Sticker : Each ver. 1 type</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- Poster : Each ver. 1 type *First print only</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- OS<span style=\"mso-spacerun: yes;\">&nbsp; </span>Brochure : 1 type *First print only</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">NO POSTER</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">WEVERSE Benefit : Buy 1 album and get 1 undisclosed photocard (1 random member out of 7 total) + 1 photocard frame (random 1 out of 2 total).</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">M2U/SOUNDWAVE/POWERSTATION Lucky Draw Photocard : 1 LD random photocard (NO POSTER)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Naver Live Photocard : 1 random photocard (NO POSTER)</span></p>', '30.00', '25.00', 'DIGI4', 'instock', 1, 1000, '1668649284.jpg', ',16686492840.jpg,16686492841.jpg,16686492842.jpg,16686492843.jpg,16686492844.jpg,16686492845.jpg,16686492846.jpg,16686492847.jpg', 2, '2022-11-16 18:41:24', '2022-11-16 18:41:24', NULL),
(67, 'BORNPINK', 'bornpink', '<h1>BLACKPINK - 2nd ALBUM [BORN PINK] BOX SET ver.</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">DETAIL:</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">3 VERSIONS: BLACK / PINK / GRAY</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">PACKAGE BOX : 162x212x30mm</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">CD : 1ea</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">PHOTOBOOK : 150x200x7mm | 80p</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">ENVELOPE : 149x199x7.5mm</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">ACCORDION LYRICS PAPER : 70x170mm</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">RANDOM LARGE PHOTOCARD : 130x180mm | 1of 4</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">RANDOM POSTCARD : 105x148mm | 1 of 4</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">RANDOM INSTANT FILMS : 55x85mm | 2 of 8</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">RANDOM SELFIE PHOTOCARD : 55x85mm | 1 of 8</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">STICKER : 123x28mm | 1ea (*</span><span lang=\"EN-US\" style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Malgun Gothic\',sans-serif; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">초회한정</span><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">POSTER : 374x252mm | 1ea (*</span><span lang=\"EN-US\" style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Malgun Gothic\',sans-serif; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Times New Roman\';\">초회한정</span><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">)</span></p>', '40.00', '31.00', 'DIGI0', 'instock', 0, 123456, '1669036143.jpg', ',16690357740.png', 2, '2022-11-21 06:02:54', '2022-11-21 06:09:03', NULL),
(68, 'BORNPINK DIGIPACK', 'bornpink-digipack', '<h1>BLACKPINK - BORN PINK [Digipack Ver.]</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">DETAIL:</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- DIGIPACK</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- CD</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- BOOKLET (20P)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- RANDOM SELFIE PHOTOCARD (1 of 2)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- ACCORDION LYRICS PAPER</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- FOLDED POSTER (1ea / First Press Only)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span></span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">READY STOCK BENEFIT:</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Ktown: 1 random polaroid of 12 types</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">YG Shop : 1 random polaroid of 4 types, 1 exclusive photocard B ver of 8 types, 1 paper sleeve</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Weverse : 1 random photocard of 4 types</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Weverse Set : 1 set photocard (4 pcs), 1 group photo, 1 acrylic frame</span></p>', '25.00', '15.00', 'DIGI9', 'instock', 0, 1235, '1669035942.jpg', ',16690359420.png,16690359421.jpg', 2, '2022-11-21 06:05:42', '2022-11-21 06:05:42', 10),
(69, 'BLACKPINK MEMBERSHIP', 'blackpink-membership', '<h1>BLACKPINK - BLINK MEMBERSHIP ONLY</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Detail : 1 Membership</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Official Weverse Membership</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">FULL PAYMENT ONLY</span></p>', '90.00', '50.00', 'DIGI2', 'instock', 0, 123456, '1669036903.jpg', NULL, 18, '2022-11-21 06:21:43', '2022-11-21 06:21:43', NULL),
(70, 'LISA PHOTOBOOK [0327] VOL.2', 'lisa-photobook-0327-vol2', '<h1>BLACKPINK : LISA - LISA PHOTOBOOK [0327] VOL.2 -SECOND EDITION-</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">DETAIL :</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- HARDCOVER PHOTOBOOK : 216p</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- PET BOOKMARK : 1EA</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- STICKER SET : 1EA</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Ktown benefit: 2 photocard</span></p>', '75.00', '50.00', 'DIGI89', 'instock', 0, 123456, '1669037091.jpg', ',16690370910.jpg,16690370911.jpg', 6, '2022-11-21 06:24:51', '2022-11-21 06:24:51', 17),
(71, 'BTS Special 8 Photo-Folio Me, Myself, and Jungkook \'Time Difference\'', 'bts-special-8-photo-folio-me-myself-and-jungkook-time-difference', '<h1>BTS Special 8 Photo-Folio Me, Myself, and Jung Kook \'Time Difference\'</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">DETAIL :</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- photobook 80p</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- mini poster 1ea</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- folded poster 1ea</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- postage stamp 1ea</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- photocard random 1ea of 3ea</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- photo coaster 1ea</span></p>', '75.00', '50.00', 'DIGI467', 'instock', 0, 123456, '1669037231.jpg', ',16690372310.jpg', 6, '2022-11-21 06:27:11', '2022-11-21 06:27:11', 15),
(72, 'TREASURE - 2ND ANNIVERSARY MAGAZINE', 'treasure-2nd-anniversary-magazine', '<h1>PHOTOBOOK TREASURE MAGAZINE</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">DETAIL </span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">-SIZE : 210*280*20</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">-</span><span lang=\"EN-US\" style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Malgun Gothic\',sans-serif; mso-bidi-font-family: \'Malgun Gothic\';\">구성</span><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\"> : PACKAGE SLEEVE + PHOTOBOOK (196p) + BONUS BOOK (52p) + MESSAGE POSTCARD SET (11ea) + RANDOM PHOTOCARD SET (1set of 2 / 10ea) + RANDOM SELFIE PHOTOCARD (4 of 40) + VIDEO AUTHENTICATION CARD (1ea / 30min)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">WEB BENEFIT</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Ktown: 1 random photocard of 10 types</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">YG Shop : 2 random photocard of 10 types &amp; 1 group polaroid</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Weverse : 3 random PVC transparent photocards of 10 types</span></p>', '80.00', '50.00', 'DIGI56', 'instock', 0, 1234567, '1669037335.jpg', NULL, 6, '2022-11-21 06:28:55', '2022-11-21 06:28:55', 16),
(73, 'SF9 - The Second Story Photobook', 'sf9-the-second-story-photobook', '<h1>The Second Story Photobook</h1>', '<p>Detail : 1 photobook, 1 sticker</p>', '90.00', '45.00', 'DIGI57', 'instock', 0, 123456, '1669037436.jpg', ',16690374360.jpg,16690374361.jpg', 6, '2022-11-21 06:30:36', '2022-11-21 06:30:36', 17),
(74, 'BLACKPINK 2022 WELCOMING COLLECTION', 'blackpink-2022-welcoming-collection', '<h1>BLACKPINK 2022 WELCOMING COLLECTION</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">DETAIL:</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Package Box + Photobook (104 pages) + Desk Calendar (24 pages) + Mini Note Set (2 notes, 48 pages each) +</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Name Tag Sticker Set (2 stickers) + Sticky Note Set (2 notes, 70 pages each) + Folded Poster +</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">To Do List (70 pages) + Random Photocard Set (1 random set of 2 total, 12 photocards in 1 set) + Unit Photocard Set (8 photocards) + Polaroid Set (2 Polaroids) + Sticker (1 sheet) + Postcard Set (12 postcards)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Weverse Benefit Reguler:</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">1 set of undisclosed holographic photocards (4 photocards).</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">Weverse Benefit Digicode:</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">1 digicode, 1 set of undisclosed holographic photocards (4 photocards) and 1 set of unit Polaroids (2 Polaroids)</span></p>', '100.00', '56.00', 'DIGI78', 'instock', 0, 123456, '1669037752.jpg', ',16690377520.jpg,16690377521.jpg', 19, '2022-11-21 06:35:52', '2022-11-21 06:35:52', NULL),
(75, 'WINNER WELCOMING COLLECTION 2022', 'winner-welcoming-collection-2022', '<h1>WINNER WELCOMING COLLECTION 2022</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">DETAIL:</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- package box</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- photobook 80p</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- desk calendar 24ea</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- to-do list note (96p)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- mini photo calendar set 24ea</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- secret gift pack (1set / 4packs)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- file folder (1ea / 4pocket)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- room tag photocard holder 1ea</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- digital code card 1ea</span></p>', '100.00', '54.00', 'DIGI67', 'instock', 0, 34567, '1669037845.jpg', ',16690378450.jpg', 19, '2022-11-21 06:37:25', '2022-11-21 06:37:25', NULL),
(76, 'Yumi\'s Cells', 'yumis-cells', '<p>Yumi\'s Cells O.S.T - tvN Drama</p>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">𝐃𝐞𝐭𝐚𝐢𝐥</span><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\"> </span><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">𝐀𝐥𝐛𝐮𝐦</span><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\"> :<span style=\"mso-spacerun: yes;\">&nbsp; </span></span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- 2CD (total 48 tracks)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- Hardcover photo book (72p)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- 1 Yumi / Woong photo card each (2 total)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">- 2 Hologram Cell Cards</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>(2 random out of 17 types / *Glam cell 1 + male cell 1)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>- 2 bookmarks</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>- 2 postcards</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Times New Roman\',serif;\">(Ost by : Doyoung NCT, Wendy Redvelvet, dan lain lain</span></p>', '45.00', '20.00', 'DIGI57', 'instock', 0, 234567, '1669038097.jpg', ',16690380970.jpg', 2, '2022-11-21 06:41:37', '2022-11-21 06:41:37', 11),
(77, 'Rose - First Single ', 'rose-first-single', '<h1>Rose - First Single Vinyl LP -R- (Limited Edition)</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">𝐃𝐞𝐭𝐚𝐢𝐥 𝐀𝐥𝐛𝐮𝐦 :<span style=\"mso-spacerun: yes;\">&nbsp; </span></span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">Package Box + Vinyl (45RPM) + Large Lenticular Photo Card + Large Double Sided Photo Card (4ea) + Gate Fold + Lyrics Sleeve + Double Sided Folded Poster + Mini Flip Book (120p) + Metal Badge (3ea)</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\"><span style=\"mso-spacerun: yes;\">&nbsp;</span>-Play after selecting the 45RPM button on the LP player.</span></p>', '200.00', '100.00', 'DIGI72', 'instock', 0, 45678, '1669038183.jpg', NULL, 2, '2022-11-21 06:43:03', '2022-11-21 06:43:03', 13),
(78, 'NCT DREAM - HELLO FUTURE', 'nct-dream-hello-future', '<h1>NCT DREAM - HELLO FUTURE KIT ALBUM</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">𝐃𝐞𝐭𝐚𝐢𝐥 𝐀𝐥𝐛𝐮𝐦 :<span style=\"mso-spacerun: yes;\">&nbsp; </span></span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- Package </span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- Air kit</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- Folding photo</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- Poster</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- Photocard</span></p>', '300.00', '250.00', 'DIGI7586', 'instock', 0, 54678, '1669038264.jpg', NULL, 2, '2022-11-21 06:44:24', '2022-11-21 06:44:24', 12),
(79, 'Blackpink - 2020 Blackpink Summer Diary', 'blackpink-2020-blackpink-summer-diary', '<h1>Blackpink - 2020 Blackpink Summer Diary</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">DETAIL:</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- SIZE : 180x260x37</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- PACKAGE BOX</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- PHOTOBOOK : 152p</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- DVD : 70min</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- LARGE PHOTOCARD SET : 12p 1set</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- LARGE POLAROID SET : 2p set</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- PHOTOCARD SET : 12p 1set</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- POSTCARD SET : 12p 1set</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- FOLDED POSTER SET : 4p 1set</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- TRANSPARENT STICKER : 2p 11set</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- RANDOM POLAROID SET : Random 4p out of 16p</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- MASK STRAP</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">&nbsp;</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">[DVD SPEC]</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- DURATION : about 70min</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- DVD SUBTITLES : KOREAN, ENGLISH, CHINESE, JAPANESE</span></p>\n<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">- DVD REGION CODE : ALL CODE</span></p>', '400.00', '100.00', 'DIGI768', 'instock', 0, 2345678, '1669038467.jpg', ',16690384670.jpg', 2, '2022-11-21 06:47:47', '2022-11-21 06:47:47', 14),
(80, 'LIGHTSTICK BLACKPINK ', 'lightstick-blackpink', '<h1>LIGHTSTICK BLACKPINK VER 2</h1>', '<p class=\"MsoNormal\"><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">Include :</span></p>\n<p class=\"MsoListParagraphCxSpFirst\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-fareast-font-family: \'Cambria Math\'; mso-bidi-font-family: \'Cambria Math\';\"><span style=\"mso-list: Ignore;\">1.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">Box</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-fareast-font-family: \'Cambria Math\'; mso-bidi-font-family: \'Cambria Math\';\"><span style=\"mso-list: Ignore;\">2.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">Official lightstick ver 2 (bisa connect ke Blackpink light stick app)</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-fareast-font-family: \'Cambria Math\'; mso-bidi-font-family: \'Cambria Math\';\"><span style=\"mso-list: Ignore;\">3.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">Strap</span></p>\n<p class=\"MsoListParagraphCxSpMiddle\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-fareast-font-family: \'Cambria Math\'; mso-bidi-font-family: \'Cambria Math\';\"><span style=\"mso-list: Ignore;\">4.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">Guide book</span></p>\n<p class=\"MsoListParagraphCxSpLast\" style=\"text-indent: -.25in; mso-list: l0 level1 lfo1;\"><!-- [if !supportLists]--><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-fareast-font-family: \'Cambria Math\'; mso-bidi-font-family: \'Cambria Math\';\"><span style=\"mso-list: Ignore;\">5.<span style=\"font: 7.0pt \'Times New Roman\';\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size: 12.0pt; line-height: 107%; font-family: \'Cambria Math\',serif; mso-bidi-font-family: \'Cambria Math\';\">2 random photocard</span></p>', '500.00', '200.00', 'DGI5876', 'instock', 0, 345677, '1669038692.jpg', NULL, 20, '2022-11-21 06:51:32', '2022-11-21 06:51:32', 18),
(81, 'NCT x Sanrio 2nd Line up', 'nct-x-sanrio-2nd-line-up', '<h1>PC HOLDER KEYRING - NCT x Sanrio 2nd Line up</h1>', '<ul>\n<li>Holder</li>\n<li>Photocard 1</li>\n</ul>', '45.00', '12.00', 'DIGI76', 'instock', 0, 5467, '1669039168.jpg', ',16690391680.jpg', 20, '2022-11-21 06:59:28', '2022-11-21 06:59:28', 19),
(82, 'Seventeen', 'seventeen', '<h1 class=\"_2rQP1z\">Seventeen - An Ode Notebook</h1>', '<p>Seventeen - An Ode Notebook</p>', '10.00', '5.00', 'DIGI1', 'instock', 0, 345677, '1669039290.jpg', NULL, 20, '2022-11-21 07:01:30', '2022-11-21 07:01:30', 20),
(83, 'Blackpink - HYLT', 'blackpink-hylt', '<h1>Blackpink - HYLT Mask Set</h1>', '<p>Blackpink - HYLT Mask Set Official product from YG Entertainment</p>', '9.00', '5.00', 'DIGI12', 'instock', 0, 132, '1669039444.jpg', ',16690394440.jpg,16690394441.jpg,16690394442.jpg', 21, '2022-11-21 07:04:04', '2022-11-21 07:04:04', 27);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Colour', '2022-11-08 09:10:12', '2022-11-08 10:24:02'),
(3, 'Size', '2022-11-08 10:23:48', '2022-11-08 10:23:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(2, 7, '1668647032.jpg', '085231601061', 'Jalan', 'abyu', 'jakarta', 'jawa', 'england', '12345', '2022-11-16 18:02:58', '2022-11-16 18:03:52'),
(3, 8, '1668647557.jpg', '085231601061', 'jalan', 'anjayani', 'kalanganyar city', 'tambak', 'anjayyyy', '12345', '2022-11-16 18:11:47', '2022-11-16 18:12:37'),
(4, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-11-16 21:48:44', '2022-11-16 21:48:44'),
(5, 10, '1669079300.jpg', '0878-5494-2007', 'Kalanganyar', 'Sedati', 'Surabaya', 'Jawa Timur', 'Indonesia', '12345', '2022-11-21 18:07:02', '2022-11-21 18:08:20'),
(6, 11, '1669096492.jpg', '087854942007', 'Kkaka', 'nhhjgfhjg', 'Surabaya', 'Jawa Timur', 'Indonesia', '12345', '2022-11-21 22:53:45', '2022-11-21 22:54:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reviews`
--

INSERT INTO `reviews` (`id`, `rating`, `comment`, `order_item_id`, `created_at`, `updated_at`) VALUES
(4, 5, 'bBAGUSSS BGT', 22, '2022-11-16 17:52:33', '2022-11-16 17:52:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id`, `sale_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-11-30 05:47:57', 0, NULL, '2022-11-20 19:00:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
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
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('BJOGD4f2idEqRnF8wCxpqMrz3gad4OUg5KV8ZH31', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUtDZ1ZyU3c5cUtLNXhxOU5yUjZnazZSSldCQVJyQ296QkQ3Rkd6WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1669184469),
('o4tZf2iINO1ubARSeXcvqBkFfVqCU9X3fEmzoxb8', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicFZCRnFoSzEzOXN6MXd2WnE2OHJQdW1DODR5QlRyN2NldVlVZnExVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1669091627),
('sFoaxnZfd3lZQ5tDMCmwvhnCZsJQXMaCMJQXObUh', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', 'YTo3OntzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRkLzd5cHc2d3VZVzQva1NRVDlGUjZ1Vzc5OHVoaXNVc3NZUHp3ejJjdXpNUzRocFJibkNjNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC90aGFuay15b3UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjY6Il90b2tlbiI7czo0MDoiT0RZS0tIanJKeGozaGxMbXZ6dzRxVWpaWFhqTHdJUjU3VUh5a0JwTSI7czo0OiJjYXJ0IjthOjE6e3M6ODoid2lzaGxpc3QiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo4O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkd0FLVkZvVDJGS1FKRGQ4dFN2ZzBudXFYdGJPMTBJQkIxV2dobElEYXl0ekdqZVg5Y2pxYTIiO30=', 1669098673),
('wGWsHvpz0MzIbH4ltcQYqx3JUkhsfni5WtnKTHbc', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36 Edg/107.0.1418.52', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiWkkyUmZ5cGJNRkc5TDNNUFAzblJvcWVTMjNDNm9xYW5lV3ltd1JxMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MTp7aTowO3M6MTM6Im9yZGVyX21lc3NhZ2UiO31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYWRtaW4vb3JkZXJzIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHdBS1ZGb1QyRktRSkRkOHRTdmcwbnVxWHRiTzEwSUJCMVdnaGxJRGF5dHpHamVYOWNqcWEyIjtzOjQ6ImNhcnQiO2E6Mjp7czo0OiJjYXJ0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiI2NWE1OTk4Y2MwMzdiMDIzMzg0YzE4YjFiN2U1N2YyZSI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6IjY1YTU5OThjYzAzN2IwMjMzODRjMThiMWI3ZTU3ZjJlIjtzOjI6ImlkIjtpOjgyO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjk6IlNldmVudGVlbiI7czo1OiJwcmljZSI7ZDoxMDtzOjc6Im9wdGlvbnMiO086Mzk6Ikdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtT3B0aW9ucyI6Mjp7czo4OiIAKgBpdGVtcyI7YTowOnt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtzOjE4OiJBcHBcTW9kZWxzXFByb2R1Y3QiO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6ODoid2lzaGxpc3QiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjA6e31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR3QUtWRm9UMkZLUUpEZDh0U3ZnMG51cVh0Yk8xMElCQjFXZ2hsSURheXR6R2plWDljanFhMiI7fQ==', 1669184750);

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twiter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `email`, `phone`, `phone2`, `address`, `map`, `twiter`, `facebook`, `pinterest`, `instagram`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'rizqullah284@gmail.com', '0852-3160-1061', '0878-5494-2007', 'Kalanganyar', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31650.004859850706!2d112.7051213024753!3d-7.43749875007857!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7e6ae6814fd17%3A0x1df7890805bdaeaf!2sSMK%20Negeri%202%20Buduran%2C%20Bedrek%2C%20Siwalanpanji%2C%20Kec.%20Buduran%2C%20Kabupaten%20Sidoarjo%2C%20Jawa%20Timur!5e0!3m2!1sid!2sid!4v1668995383645!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\">', '#', '#', '#', 'https://instagram.com/midevio?igshid=YmMyMTA2M2Y=', '#', '2022-11-02 23:00:40', '2022-11-20 18:50:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 1, 'Avan', 'uhuy', '5657852381', 'avangans@gmail.com', 'dg', 'gj', 'bndg', 'Jabar', 'IND', '2435', '2022-10-17 04:53:23', '2022-10-17 04:53:23'),
(2, 8, 'a', 'na', '4357273645382', 'nov@nov', 'j', NULL, 'ku', 'ti', 'ha', '1335', '2022-10-25 23:19:40', '2022-10-25 23:19:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@admin.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-05 20:55:49', NULL),
('admin@admin.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-05 20:55:49', NULL),
('admin@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-16 19:23:24', NULL),
('admin@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-16 19:05:06', NULL),
('aris@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-12 04:07:39', NULL),
('aris@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-12 04:03:55', NULL),
('kalevpin7@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"834c1c99791743d34951c7f3f765cce0\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"834c1c99791743d34951c7f3f765cce0\";s:2:\"id\";i:83;s:3:\"qty\";i:1;s:4:\"name\";s:16:\"Blackpink - HYLT\";s:5:\"price\";d:9;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"36913b6d74e9c651c2d55a9fd1d27345\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"36913b6d74e9c651c2d55a9fd1d27345\";s:2:\"id\";i:80;s:3:\"qty\";i:1;s:4:\"name\";s:21:\"LIGHTSTICK BLACKPINK \";s:5:\"price\";d:500;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-22 23:24:12', NULL),
('kalevpin7@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-22 23:24:00', NULL),
('kalvin@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"0f6c1798aa972a19d9ae90e50c3d9c99\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"0f6c1798aa972a19d9ae90e50c3d9c99\";s:2:\"id\";i:40;s:3:\"qty\";i:1;s:4:\"name\";s:5:\"HELLO\";s:5:\"price\";d:24;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"6b770d0098eb5bc7f6e0a74e3314d4d0\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"6b770d0098eb5bc7f6e0a74e3314d4d0\";s:2:\"id\";i:38;s:3:\"qty\";i:1;s:4:\"name\";s:8:\"Bornpink\";s:5:\"price\";d:30;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-16 18:07:29', NULL),
('kalvin@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-16 18:07:29', NULL),
('rizqullah284@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"65a5998cc037b023384c18b1b7e57f2e\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"65a5998cc037b023384c18b1b7e57f2e\";s:2:\"id\";i:82;s:3:\"qty\";i:1;s:4:\"name\";s:9:\"Seventeen\";s:5:\"price\";d:10;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-21 23:30:44', NULL),
('rizqullah284@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-21 23:30:33', NULL),
('user@user.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-04 20:32:42', NULL),
('user@user.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:5:{s:32:\"a775bac9cff7dec2b984e023b95206aa\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a775bac9cff7dec2b984e023b95206aa\";s:2:\"id\";i:3;s:3:\"qty\";i:1;s:4:\"name\";s:29:\"recusandae enim eligendi quis\";s:5:\"price\";d:40;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";i:2;s:3:\"qty\";i:1;s:4:\"name\";s:20:\"dolor aut itaque sit\";s:5:\"price\";d:156;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:29:\"repudiandae sunt quia laborum\";s:5:\"price\";d:254;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"eef12573176125ce53e333e13d747a17\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"eef12573176125ce53e333e13d747a17\";s:2:\"id\";i:12;s:3:\"qty\";i:1;s:4:\"name\";s:25:\"quas fugit dolor pariatur\";s:5:\"price\";d:393;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"620d670d95f0419e35f9182695918c68\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"620d670d95f0419e35f9182695918c68\";s:2:\"id\";i:11;s:3:\"qty\";i:1;s:4:\"name\";s:33:\"voluptatem impedit beatae numquam\";s:5:\"price\";d:317;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-04 20:32:42', NULL),
('user2@user2', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"efb26e2c6ab6bd4d1323288923522d4e\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"efb26e2c6ab6bd4d1323288923522d4e\";s:2:\"id\";i:4;s:3:\"qty\";i:6;s:4:\"name\";s:15:\"cum modi in qui\";s:5:\"price\";d:100;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:21;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2022-11-04 19:51:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`) VALUES
(10, 'Digipack', 'digipack', 2, '2022-11-16 19:04:02', '2022-11-16 19:04:02'),
(11, 'OST', 'ost', 2, '2022-11-21 05:46:56', '2022-11-21 05:46:56'),
(12, 'KiT', 'kit', 2, '2022-11-21 05:47:12', '2022-11-21 05:47:12'),
(13, 'Vinyl', 'vinyl', 2, '2022-11-21 05:47:21', '2022-11-21 05:47:21'),
(14, 'Diary Kit', 'diary-kit', 2, '2022-11-21 05:47:30', '2022-11-21 05:47:30'),
(15, 'PB Special', 'pb-special', 6, '2022-11-21 05:50:04', '2022-11-21 05:50:04'),
(16, 'PB Limited', 'pb-limited', 6, '2022-11-21 05:50:11', '2022-11-21 05:50:11'),
(17, 'PB Vol', 'pb-vol', 6, '2022-11-21 05:50:16', '2022-11-21 05:50:16'),
(18, 'LightStick', 'lightstick', 20, '2022-11-21 05:51:24', '2022-11-21 05:51:24'),
(19, 'Photocard Holder', 'photocard-holder', 20, '2022-11-21 05:51:46', '2022-11-21 05:51:46'),
(20, 'Notebook', 'notebook', 20, '2022-11-21 05:52:54', '2022-11-21 05:52:54'),
(21, 'SweatPants', 'sweatpants', 21, '2022-11-21 05:53:41', '2022-11-21 05:53:41'),
(22, 'Hoodie', 'hoodie', 21, '2022-11-21 05:55:03', '2022-11-21 05:55:03'),
(23, 'Scrunchie', 'scrunchie', 21, '2022-11-21 05:55:16', '2022-11-21 05:55:16'),
(24, 'T Shirts', 't-shirts', 21, '2022-11-21 05:55:29', '2022-11-21 05:55:29'),
(25, 'Pouch', 'pouch', 21, '2022-11-21 05:55:38', '2022-11-21 05:55:38'),
(26, 'Crop Top', 'crop-top', 21, '2022-11-21 05:56:06', '2022-11-21 05:56:06'),
(27, 'Mask', 'mask', 21, '2022-11-21 05:56:15', '2022-11-21 05:56:15'),
(28, 'Mini Bag', 'mini-bag', 21, '2022-11-21 05:56:33', '2022-11-21 05:56:33'),
(29, 'Phone Case', 'phone-case', 20, '2022-11-21 05:56:50', '2022-11-21 05:56:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'cod', 'pending', '2022-10-17 04:53:23', '2022-10-17 04:53:23'),
(2, 1, 6, 'card', 'approved', '2022-10-23 21:23:31', '2022-10-23 21:23:31'),
(3, 1, 7, 'card', 'approved', '2022-10-23 21:30:50', '2022-10-23 21:30:50'),
(4, 1, 8, 'card', 'approved', '2022-10-25 23:19:49', '2022-10-25 23:19:49'),
(5, 1, 9, 'cod', 'pending', '2022-11-04 19:29:05', '2022-11-04 19:29:05'),
(6, 1, 10, 'cod', 'pending', '2022-11-04 19:33:21', '2022-11-04 19:33:21'),
(7, 1, 11, 'cod', 'pending', '2022-11-04 20:24:11', '2022-11-04 20:24:11'),
(8, 1, 12, 'cod', 'pending', '2022-11-04 20:25:46', '2022-11-04 20:25:46'),
(9, 5, 13, 'cod', 'pending', '2022-11-12 03:59:19', '2022-11-12 03:59:19'),
(11, 7, 15, 'cod', 'pending', '2022-11-16 17:50:08', '2022-11-16 17:50:08'),
(12, 7, 16, 'cod', 'pending', '2022-11-16 18:05:23', '2022-11-16 18:05:23'),
(13, 8, 17, 'cod', 'pending', '2022-11-16 18:51:23', '2022-11-16 18:51:23'),
(14, 10, 18, 'cod', 'pending', '2022-11-21 00:56:21', '2022-11-21 00:56:21'),
(15, 10, 19, 'cod', 'pending', '2022-11-21 00:57:55', '2022-11-21 00:57:55'),
(16, 10, 20, 'cod', 'pending', '2022-11-21 18:48:23', '2022-11-21 18:48:23'),
(17, 8, 21, 'cod', 'pending', '2022-11-21 23:31:06', '2022-11-21 23:31:06'),
(18, 10, 22, 'cod', 'pending', '2022-11-22 23:24:49', '2022-11-22 23:24:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for User or Customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@user.com', NULL, '$2y$10$6AKonf22HnoerL8WFs22tupp36gSt2JYa9rtjWLIeyiN4NVDQ3ByW', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-09-15 04:58:35', '2022-11-01 05:48:27'),
(3, 'user2', 'user2@user2', NULL, '$2y$10$z2O6olv9dMC95a2h3LjAa.X.jQgP3XofW76ldwGVLDX0fEdEnmgaS', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-10-25 23:53:34', '2022-10-25 23:53:34'),
(5, 'Admin', 'admin@gmail.com', NULL, '$2y$10$MIySt.gZC6.FlfFL46VWbeB32xeeRDH8RVD9B/pUt9Wx5QgsVBkvK', NULL, NULL, NULL, NULL, NULL, NULL, 'ADM', '2022-11-07 06:35:41', '2022-11-07 06:35:41'),
(7, 'Kale', 'kalvin@gmail.com', NULL, '$2y$10$qqm3JR4vBTWVJ/05RXotaeh3O7DTO2VvLv7MXq4iLlX58dnWMwkAy', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-11-13 22:50:14', '2022-11-13 22:50:14'),
(8, 'Kale Cakep', 'rizqullah284@gmail.com', '2022-11-16 22:38:03', '$2y$10$wAKVFoT2FKQJDd8tSvg0nuqXtbO10IBB1WghlIDaytzGjeX9cjqa2', NULL, NULL, NULL, 'l2GklnU7gdBILCpsLYKBEQvF3wT2DPQH6vM0ce9undA36II5G5elidAYnEoN', NULL, NULL, 'ADM', '2022-11-16 18:11:41', '2022-11-16 22:38:03'),
(9, 'KALELE', 'kale@gmail.com', NULL, '$2y$10$u/ZL2ZjdOgw87Tnu3X9Y.eA9W.bkjsIx1mEDBjB9FkZDExdYwdgiO', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-11-16 21:38:03', '2022-11-16 21:38:03'),
(10, 'Kale', 'kalevpin7@gmail.com', '2022-11-17 00:01:08', '$2y$10$d/7ypw6wuYW4/kSQT9FR6uW798uhisUssYPzwz2cuzMS4hpRbnCc6', NULL, NULL, NULL, NULL, NULL, NULL, 'USR', '2022-11-16 23:59:04', '2022-11-17 00:01:08'),
(11, 'Pegawai', 'kalenderbos23@gmail.com', '2022-11-21 22:53:25', '$2y$10$i0rTYYKLsEsuP2kcjVa8reGl5ZQzjRkQDEjMH90cjhM4ncYpYgX8K', NULL, NULL, NULL, NULL, NULL, NULL, 'PGW', '2022-11-21 22:50:47', '2022-11-21 22:53:25');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  ADD KEY `attribute_values_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indeks untuk tabel `ekspeditions`
--
ALTER TABLE `ekspeditions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indeks untuk tabel `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_order_item_id_foreign` (`order_item_id`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indeks untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `ekspeditions`
--
ALTER TABLE `ekspeditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
