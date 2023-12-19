-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Des 2023 pada 11.49
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ims_update`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_03_13_091736_create_products_table', 1),
(5, '2023_09_25_032026_modify_products_table', 2),
(6, '2023_09_25_035852_modify_products_table', 3),
(7, '2023_09_25_040046_modify_products_table', 4),
(8, '2023_09_25_040347_modify_products_table', 5),
(9, '2023_09_25_040925_create_products_table', 6),
(10, '2023_10_11_042615_add_status_to_products', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_serial` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_asset` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_equipment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahun_pembuatan` date DEFAULT NULL,
  `usage_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengguna` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `computer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usage_record` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `no_serial`, `no_asset`, `no_equipment`, `tipe`, `tahun_pembuatan`, `usage_date`, `pengguna`, `computer_name`, `plant`, `usage_record`, `keterangan`, `created_at`, `updated_at`, `status`) VALUES
(33, NULL, NULL, '300009953', 'PC LENOVO THINKCENTRE M700', NULL, '', 'MENIS 15606-Menis', NULL, '1', NULL, '-Windows 10 -SSD 240 GB', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(34, NULL, NULL, '300009732', 'PC ACER ASPIRE M3970', '2017-01-11', '6 Tahun, 11 Bulan, 7 Hari', 'QASHIFT QA-02', NULL, '1', NULL, 'Windows 7/ MS Office 2010', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(35, NULL, NULL, '300009735', 'PC ACER ASPIRE XC600', '2017-01-12', '6 Tahun, 11 Bulan, 6 Hari', 'DUDI X15415-Dudi', NULL, '1', NULL, 'Windows 8/ MS Office 2010  Barang berada diruang IT', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(36, NULL, '1610003140', '300011300', 'PC LENOVO THINKCENTRE M70T', NULL, '', 'QASHIFT QA-01', NULL, '1', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(37, NULL, NULL, '300011891', 'PC ACER ASPIRE M3970', NULL, '', 'DIANA 22747-Diana', NULL, '1', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(38, NULL, NULL, '30006153', 'PC ACER ASPIRE M3970', NULL, '', 'Suliyah WH-01', NULL, '1', NULL, 'Windows 10/ Ms.Office 365/ LCD & keyboard Acer/ Mouse Logitech  Dipakai Gudang barcode Management', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(39, NULL, NULL, '30006151', 'PC ACER ASPIRE M3970', NULL, '', 'Watik', NULL, '1', NULL, 'Windows 7/ MSOffice/ LCD & Keyboard Acer/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(40, NULL, NULL, '300010157', 'PC LENOVO THINKCENTRE', NULL, '', 'RINI 15325-Rini', NULL, '1', NULL, 'LCD & keyboard Acer/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(41, NULL, NULL, '300009836', 'PC LENOVO THINKCENTRE M73', NULL, '', 'PRAPTI 15604-Prapti', NULL, '1', NULL, 'Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(42, NULL, NULL, '300010690', 'PC LENOVO THINKCENTRE M720', NULL, '', 'NINO 21513-Nino', NULL, '1', NULL, 'WIndows 11/ MS Office 365 Sudah upgrade RAM 12gb', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(43, NULL, NULL, '300011253', 'PC ACER ASPIRE M3985', NULL, '', 'FARAH 22636-Farah', NULL, '1', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(44, NULL, NULL, '300011889', 'PC ACER ASPIRE M3970', NULL, '', 'DINI 15329-DiniHarianita', NULL, '1', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(45, NULL, '163000283', '300010285', 'PC DELL INSPIRON 3847', NULL, '', 'VANDENA 22539-Dena', NULL, '1', NULL, 'Windows 10/ MS Office 365 sudah upgrade SSD 480 GB', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(46, NULL, NULL, '300010356', 'PC LENOVO THINKCENTRE M720', NULL, '', 'LENI 15918-Leni', NULL, '1', NULL, 'Windows 10/ MS Office 365/ LCD Dell/ Keyboard & Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(47, NULL, NULL, '30006443', 'PC ACER ASPIRE M3985', NULL, '', 'TRI 15743-TriW', NULL, '1', NULL, 'WIndows 7/ MS Office/ LCD & Keyboard/ Mouse Lenovo', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(48, NULL, NULL, '30006442', 'PC ACER ASPIRE M3985', NULL, '', 'RIZKY 21644-Rizky', NULL, '1', NULL, 'Windows 8.1/ MS Office/ LCD Acer/ Keyboard & Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(49, NULL, NULL, '300011111', 'PC LENOVO THINKCENTRE M720', NULL, '', 'SYLVI 21643-Silvy', NULL, '1', NULL, 'Windows  10/ Microsoft Office/ LCD Acer/ Keyboard & Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(50, NULL, NULL, '300009368', 'PC LENOVO H520S', NULL, '', 'JIHAN', NULL, '1', NULL, 'Windows 7/ MS Office/ LCD Acer/ Keyboard Mdisk/ Mouse Lenovo  Barang berada diruang IT', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(51, NULL, NULL, '300009370', 'PC LENOVO', NULL, '', 'JIHAN 22608-Jihan', NULL, '1', '1. Alfan 2. Jihan', 'Windows 10/ MSOffice 2013/ LCD LG/ Keyboard & Mouse Logitech SSD 480GB', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(52, NULL, NULL, '300011901', 'PC ACER ASPIRE AM3920', NULL, '', 'Suster Ninik 15481-Ninik', NULL, '1', '1. Nanda 2. Suster Ninik', 'Windows 10/ MS Office/ LCD Lenovo/ Keyboard & Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(53, NULL, NULL, '300011903', 'PC ACER ASPIRE AM3920', '2011-03-09', '12 Tahun, 9 Bulan, 9 Hari', 'WAHYU ITA X15773-WahyuIta', NULL, '1', NULL, 'Windows 10/ MS Office 365  Barang berada diruang IT', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(54, NULL, NULL, '30005229', 'PC ACER ASPIRE AM3920', NULL, '', 'ADHONG 15662-Adhong', NULL, '1', NULL, 'Windows 10/ Microsoft Office 2013/ LCD & keyboard Acer/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(55, NULL, NULL, '30006154', 'PC ACER ASPIRE M3970', '2012-06-07', '11 Tahun, 6 Bulan, 11 Hari', 'IRA 15535-Ira', NULL, '1', NULL, 'Windows 10/ MS Office 365/ LCD & keyboard Acer/ Mouse Logitech  sudah diupgrade SSD 480 GB', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(56, NULL, NULL, '30006196', 'PC ACER ASPIRE M3970', NULL, '', 'ICHWANUDIN', NULL, '1', NULL, 'Windows 7/ Microsoft Office/ LCD Lenovo/ Keyboard Acer/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(57, NULL, NULL, '300010106', 'PC LENOVO THINKCENTRE M720', NULL, '', 'ESS P1', NULL, '1', NULL, 'WIndows 10/ MS Office/ LCD Acer/ Keyboard & Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(58, NULL, NULL, '30005788', 'PC ACER ASPIRE M3970', NULL, '', 'HENDRO', NULL, '1', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(59, NULL, NULL, '30005356', 'PC ASUS RAKITAN PENTIUM 4', NULL, '', 'PUPUN 15939-Pupun', NULL, '1', NULL, 'Windows 7/ Microsoft Office/ LCD Acer/ Keyboard & Mouse Lenovo', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(60, NULL, NULL, '30005345', 'PC RAKITAN PENTIUM 4', NULL, '', 'EX TOTOK', NULL, '1', NULL, 'Windows XP/ Kingsoft Office/ LCD Lenovo/ Keyboard Microsoft/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(61, NULL, NULL, '30005329', 'PC ACER VERITON 7600G', NULL, '', 'CATUR', NULL, '1', NULL, 'Windows 7/ MS Office/ LCD Acer/ Keyboard & Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(62, NULL, NULL, '30005570', 'PC ASUS H110M-E', NULL, '', 'JAELANI', NULL, '1', NULL, 'LCD Acer/ Keyboard & Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(63, NULL, NULL, '30005585', 'PC GIGABYTE GA-G31M', NULL, '', 'INDRA', NULL, '1', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(64, NULL, NULL, '30005591', 'PC ASUS CORE2DUO', NULL, '', 'PD', NULL, '1', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(65, NULL, NULL, '30006272', 'PC iMAC APPLE CORE I5', NULL, '', 'SUHANDRI', NULL, '1', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(66, NULL, NULL, '30005368', 'PC RAKITAN PENTIUM D', NULL, '', 'SODIQ', NULL, '1', NULL, 'Windows 7/ Kingsoft Office Kondisi jarang digunakan, Monitor masih tabung', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(67, NULL, NULL, '30005208', 'PC SIMBADDA PENTIUM D', NULL, '', 'IT (RUSAK)', NULL, '1', NULL, 'Kondisi jarang digunakan, Monitor masih tabung', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(68, NULL, NULL, NULL, 'PC ASUS PENTIUM CORE2DUO', NULL, '', 'ENG', NULL, '1', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(69, NULL, NULL, NULL, 'PC ACER ASPIRE M3970', NULL, '', 'NUR IMAMAH 15458-NurIm', NULL, '1', NULL, 'Windows 10 Pro/ MS Office 2013 Standard  sudah upgrade SSD 240 GB & RAM 4 GB', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(70, NULL, NULL, '30005323', 'PC GIGABYTE P31-DS3L', NULL, '', 'WAHYUDI 15487-Wahyudi', NULL, '1', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(71, NULL, '914000350', '300012385', 'PC LENOVO THINKCENTRE M70T Core i5 RAM 8GB', '2021-12-06', '2 Tahun, 12 Hari', 'NURHAYATI 15464-Nurhayati', NULL, '1', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(72, NULL, NULL, '30005607', 'PC RAKITAN CORE2DUO', NULL, '', 'Suster NINIK', NULL, '1', NULL, 'Windows 8/ Microsoft Office 2010/ Monitor Acer/ Keyboard Lenovo/ Mouse Logitech  Power Suppy Rusak PCnya berada diruang IT', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(73, NULL, '1610003230', '300011303', 'PC LENOVO THINKCENTRE M70T Core i5 RAM 4GB', NULL, '', 'QASHIFT/Pengukuran', NULL, '2', NULL, 'Windows 10/ MS Office 2019/ LCD/ Keyboard/ Mouse Lenovo', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(74, NULL, NULL, '30006064', 'PC ASUS RAKITAN DUAL CORE RAM 2GB', NULL, '', 'ZAENAL 15471-Zaenal', NULL, '2', NULL, 'Windows 7/ Kingsoft Office/ LCD Acer/ Mouse & Keyboard Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(75, NULL, NULL, '300010830', 'PC LENOVO M720 i5 RAM 4GB', NULL, '', 'PENI 15791-Peni', NULL, '3', NULL, 'Windows 10/ Microsoft Office/ LCD/ Keyboard/ Mouse Lenovo', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(76, NULL, NULL, '30005132', 'PC RAKITAN RAM 2GB', NULL, '', 'ASEP 15770-Asep', NULL, '3', NULL, 'Windows 7/ WPS Office/ LCD Lenovo/ Keybaord & Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(77, NULL, NULL, NULL, 'PC LENOVO 10GQA07VIA RAM 4GB', NULL, '', 'ESS P3', NULL, '3', NULL, 'Windows 10/ Kingsoft Office/ LCD Lenovo/ Keyboard & Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(78, NULL, NULL, '30005767', 'PC RAKITAN SIMBADDA RAM 2GB', NULL, '', 'TANGGUH', NULL, '3', NULL, 'Windows 7/ WPS Office/ Monitor Acer/ Keyboard Lenovo/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(79, NULL, NULL, '30007208', 'PC RAKITAN SIMCOOL RAM 4GB', NULL, '', 'BONI', NULL, '3', NULL, 'Windows 7/ WPS Office/ Monitor SPC/ Keyboard Acer/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(80, NULL, NULL, '30006193', 'PC ACER ASPIRE M3970 RAM 2GB', NULL, '', 'RETNO', NULL, '3', NULL, 'Windows 7/ WPS Office/ Monitor LG L177wsb/ Keyboard & Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(81, NULL, NULL, '30006192', 'PC ACER ASPIRE M3970 RAM 2GB', NULL, '', 'RENI 15860-Reni', NULL, '3', NULL, 'Windows 7/ MS Office 2010/ Monitor Acer/ Keyboard Lenovo/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(82, NULL, NULL, '300007889', 'PC ACER ASPIRE XC600 RAM 2GB', NULL, '', 'EKA 15942-Eka', NULL, '3', NULL, 'Monitor Acer/ Keyboard Lenovo/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(83, NULL, NULL, '30007215', 'PC RAKITAN RAM 2 GB', NULL, '', 'SUSI 15769-Susi', NULL, '3', NULL, 'Windows 7/ Kingsoft Office/ LCD DELL/ Keyboard & Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(84, NULL, NULL, '300007927', 'PC ACER RAM 2GB', '2013-07-11', '10 Tahun, 5 Bulan, 7 Hari', 'RATNA 18160-Ratna', NULL, '3', NULL, 'Windows 8/ WPS Office/ Monitor Acer/ Keyboard Lenovo/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(85, NULL, NULL, '300010807', 'PC LENOVO 10SQS0V000 RAM 4GB', NULL, '', 'SISKA 15854-Siska', NULL, '3', NULL, 'Windows 10/ Kingsoft Office/ Monitor/ Keyboard/ Mouse Lenovo', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(86, NULL, NULL, '300009859', 'PC lenovo 30ASA15HID RAM 8GB', NULL, '', 'SUPRI', NULL, '3', NULL, 'Windows 7/ WPS Office/ Monitor Lenovo/ Mouse Logitech/ Keyboard Lenovo', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(87, NULL, NULL, '300010053', 'PC Lenovo M700 10GQA07VIA RAM 8gb', NULL, '', 'SERLI 15862-Serli', NULL, '3', NULL, 'Windows 10/ MS Office 365/ Monitor & Keyboard Lenovo/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(88, NULL, NULL, '30005752', 'PC RAKITAN RAM 2GB Intel  Core 2 Duo', NULL, '', 'CCTV', NULL, '3', NULL, 'Windows XP/ Kingsoft Office/ LCD DELL/ Keyboard & Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(89, NULL, '914000350', '300012387', 'PC LENOVO THINKCENTRE M70T CORE I5 RAM 8GB', '2023-02-24', '9 Bulan, 22 Hari', 'SOFI 20188-Sofi', NULL, '3', NULL, 'Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(90, NULL, NULL, '300009152', 'PC DELL INSPIRON 3847 CORE i3', NULL, '', 'FARHAN', NULL, '3', NULL, 'Windows 7/ MS Office 2010/ Monitor LG/ Keyboard & Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(91, NULL, NULL, '30005853', 'PC RAKITAN PENTIUM R RAM 2GB', NULL, '', 'NEVI 15869-Nevi', NULL, '3', NULL, 'Windows 7/ Monitor Acer/ Keyboard Acer/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(92, NULL, NULL, NULL, 'PC LENOVO 10093 PENTIUM R RAM 2GB', NULL, '', 'NURDIN LUBIS', NULL, '3', NULL, 'Windows 7/ Melihat dari speknya PC keluaran 2015/ Monitor Acer/ Keyboard & Mouse Lenovo', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(93, NULL, NULL, '300008014', 'PC ACER ASPIRE XC600', '2011-01-12', '12 Tahun, 11 Bulan, 6 Hari', 'SUPARMAN QA-04', NULL, '4', NULL, 'Windows 8/ MS Office 2013/ Monitor Acer/ Keyboard Acer/ Mouse Acer', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(94, NULL, NULL, '30008008', 'PC ACER ASPIRE XC600', NULL, '', 'FAHMI', NULL, '4', NULL, 'Monitor Acer/ Keyboard Acer/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(95, NULL, NULL, NULL, NULL, NULL, '', 'EVI PRD-03', NULL, '4', NULL, 'Monitor Lenovo/ Keyboard Logitech/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(96, NULL, NULL, '30005493', 'PC RAKITAN ERSYS', NULL, '', 'DIDIK', NULL, '4', NULL, 'Monitor Acer/ Keyboard Logitech/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(97, NULL, NULL, '30006142', 'PC LENOVO 10GQA07VIA', NULL, '', 'DENI', NULL, '4', NULL, 'Windows 7/ MS Office 2010/ LCD & keyboard Acer/ Mouse Logitech  Posisi di plant 4, WIndows Error', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(98, NULL, NULL, '30005710', 'PC LENOVO 10GQA07VIA', NULL, '', 'PROD', NULL, '4', NULL, 'Windows 7/ Kingsoft Office/ LCD Acer/ Mouse Lenovo/ Keyboard Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(99, NULL, NULL, '300010287', 'PC ACER ASPIRE XC600 Core i3 RAM 6GB', NULL, '', 'YUAN 15740-Yuan', NULL, '4', NULL, 'Windows 7/ MS Office 2007/ LCD & keyboard Acer/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(100, NULL, NULL, '300009956', 'PC ACER ASPIRE M3970 Core i3 RAM 2GB', '2017-09-05', '6 Tahun, 3 Bulan, 13 Hari', 'HARIONO', NULL, '4', NULL, 'Windows10/ Kingsoft Office/ LCD & keyboard Lenovo/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(101, NULL, NULL, '300008412', 'PC ACER ASPIRE AM3920 Core i3 RAM 2GB', '2014-08-25', '9 Tahun, 3 Bulan, 24 Hari', 'RUKUN 15545-Rukun', NULL, '4', NULL, 'Windows 7/ WPS Office/ LCD Acer/ Mouse & Keyboard Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(102, NULL, NULL, '30005704', 'PC ACER ASPIRE XC600 Core i3 RAM 6GB', NULL, '', 'NENI', NULL, '4', NULL, 'Windows 8/ Kingsoft Office/ Monitor Acer/ Keyboard Logitech/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(103, NULL, NULL, '30005748', 'PC LENOVO THINKCENTRE M720 Core i3 RAM 4GB', NULL, '', 'WH', NULL, '4', NULL, 'Windows 7/ MS Office 2007/ LCD & Mouse Acer/ Keyboard Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(104, NULL, NULL, '30005517', 'PC ACER ASPIRE TC-605 Core i3 RAM 2GB', NULL, '', 'RUDI PPIC-02', NULL, '4', NULL, 'Windows 7/ Kingsoft Office/ LCD Acer/ Mouse & Keyboard Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(105, NULL, NULL, '30005267', 'PC RAKITAN CORE2DUO', NULL, '', 'SOFI', NULL, '4', NULL, 'Windows 8/ MS Office 2007/ Monitor Acer/ Keyboard Logitech/ Mouse Logitech  Barang diruang IT', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(106, NULL, NULL, '30006138', 'PC RAKITAN CORE2DUO RAM 2GB', NULL, '', 'AGUSTIN PPIC-01', NULL, '4', NULL, 'Windows 8/ MS Office 2010/ Monitor Acer/ Keyboard Lenovo/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(107, NULL, NULL, NULL, 'PC LENOVO THINKCENTRE M700', NULL, '', 'INDAH 23025-Indah', NULL, '5', NULL, 'Windows 10/ MS Office 2013 Pro Plus -SSD 480 GB -RAM 4 GB', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(108, NULL, NULL, '300010272', 'PC LENOVO THINKCENTRE M700', NULL, '', 'WAHYU', NULL, '5', NULL, 'sudah upgrade SSD 480 GB', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(109, NULL, NULL, NULL, 'PC LENOVO THINKCENTRE M700', NULL, '', 'LIA 22929-Aprilia', NULL, '5', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(110, NULL, NULL, NULL, 'PC LENOVO THINKCENTRE M720T', '2020-07-12', '3 Tahun, 5 Bulan, 6 Hari', 'QA INSPECTION JDO-08', NULL, 'JDO', NULL, 'Windows 10/ MS Office 2010', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(111, NULL, NULL, NULL, 'PC LENOVO THINKCENTRE M720T', '2020-07-12', '3 Tahun, 5 Bulan, 6 Hari', 'PIPIN JDO-04', NULL, 'JDO', NULL, 'Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(112, NULL, NULL, NULL, 'PC LENOVO THINKCENTRE M720T', '2020-07-12', '3 Tahun, 5 Bulan, 6 Hari', 'EVI JDO-09', NULL, 'JDO', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(113, NULL, NULL, '30006141', 'PC ACER ASPIRE M3970', NULL, '', 'OPERATOR', NULL, 'JDO', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(114, NULL, NULL, NULL, 'PC LENOVO THINKCENTRE M720T', '2020-07-12', '3 Tahun, 5 Bulan, 6 Hari', 'RAHMA', NULL, 'JDO', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(115, NULL, NULL, NULL, 'PC LENOVO V50t GEN2', NULL, '', 'YULIA JDO-11', NULL, 'JDO', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(116, NULL, NULL, NULL, 'PC LENOVO V50t GEN2', NULL, '', 'SAFIRAH', NULL, 'JDO', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(117, NULL, NULL, '30007207', 'LAPTOP LENOVO G470CORE I3-2330', '2012-07-16', '11 Tahun, 5 Bulan, 2 Hari', 'IT', NULL, '1', NULL, 'Port charger kadang bisa kadang enggak, masih HDD dan RAM kecil', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(118, NULL, NULL, '30006273', 'LAPTOP APPLE MACBOOK PRO A1286', '2007-03-10', '16 Tahun, 9 Bulan, 8 Hari', 'SUHANDRI', NULL, '1', NULL, 'Kondisi lemot karena Processor masih dualcore dan RAM kecil, tidak ada baterai dan barang ada di IT, Tipe macbook lama, sepetinya sudah tidak bisa diservice. Tidak ada di asset', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(119, NULL, NULL, '30005670', 'LAPTOP LENOVO IDEAPAD G 230-597 Office H&B 2010', '2009-01-08', '14 Tahun, 11 Bulan, 10 Hari', 'IT', NULL, '1', NULL, 'Kondisi laptop lambat karena Hardisk masih HDD dan Ram kecil', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(120, NULL, NULL, '30005441', 'LAPTOP LENOVO G460-59039886', '2010-06-30', '13 Tahun, 5 Bulan, 18 Hari', 'IT', NULL, '1', NULL, 'Terkadang ngehang', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(121, NULL, NULL, '30005462', 'LAPTOP LENOVO G460-59039886', '2010-07-05', '13 Tahun, 5 Bulan, 13 Hari', 'NINO', NULL, '1', NULL, 'Sudah diganti SSD', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(122, NULL, NULL, '30005477', 'LAPTOP LENOVO G460-59039886', '2010-10-29', '13 Tahun, 1 Bulan, 20 Hari', 'TIWI', NULL, '1', NULL, 'Tidak ada kendala  Barang berada diruang IT', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(123, NULL, NULL, '30005436', 'LAPTOP LENOVO G460-59057645', '2011-01-25', '12 Tahun, 10 Bulan, 24 Hari', 'QA-07', NULL, '1', NULL, 'Sudah diganti SSD, Engsel rusak. SSD 500GB : 910.000, RAM Memory DDR3 4GB : 350.000, Service Engsel : 100.000 -> 300.000  Sudah di upgrade ke Windows 10 pro/ MS Office 2010 Barang berada diruang IT', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(124, NULL, '1610000990', '30005431', 'LAPTOP LENOVO Z460-59066072', '2011-04-05', '12 Tahun, 8 Bulan, 13 Hari', 'IT', NULL, '1', NULL, 'Kondisi laptop lambat karena Hardisk masih HDD dan Ram kecil, sering panas dan restart, SSD 500GB : 910.000, RAM Memory DDR3 4GB : 350.000, Service Engsel : 100.000 -> 300.000', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(125, NULL, NULL, '30006724', 'LAPTOP LENOVO G470-641', '2011-08-03', '12 Tahun, 4 Bulan, 15 Hari', 'GALUH', NULL, '1', NULL, 'Kondisi laptop lambat karena Hardisk masih HDD dan Ram kecil  Barang berada diruang IT', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(126, NULL, NULL, '30006550', 'LAPTOP LENOVO Z470-099', '2011-08-20', '12 Tahun, 3 Bulan, 29 Hari', 'DINI', NULL, '1', NULL, 'Kondisi laptop lambat karena Hardisk masih HDD dan Ram kecil', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(127, NULL, NULL, '30006287', 'LAPTOP LENOVO Z470-099', '2011-08-20', '12 Tahun, 3 Bulan, 29 Hari', 'MAGANG ACCT', NULL, '1', NULL, 'Rencana akan segera diambil mas Choi dan dipakek Acct untuk keperluan closing dgn PIC mas Choi', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(128, NULL, NULL, '30006446', 'LAPTOP LENOVO Z470-099', '2011-08-20', '12 Tahun, 3 Bulan, 29 Hari', 'SEVPRI', NULL, '1', NULL, 'Kondisi laptop lambat, karena hardisk masih HDD dan RAM Kecil, Laptop cadangan milik acct untuk keperluan closing atas nama PIC mas Choi', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(129, NULL, NULL, '30006271', 'LAPTOP LENOVO Z470-099', '2011-08-20', '12 Tahun, 3 Bulan, 29 Hari', 'WAHYU ITA', NULL, '1', NULL, 'Tidak ada kendala, Sudah diupgrade RAM dan SSD', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(130, NULL, NULL, '30006440', 'LAPTOP LENOVO G470CORE I3-2330', '2012-07-16', '11 Tahun, 5 Bulan, 2 Hari', 'OKI 15734-Okie', NULL, '1', NULL, 'Kondisi engsel laptop sudah rusak dan laptop lambat karena Hardisk masih HDD dan Ram kecil SSD 500GB : 910.000, RAM Memory DDR3 4GB : 350.000, Service Engsel : 100.000 -> 300.000', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(131, NULL, NULL, '30006785', 'LAPTOP LENOVO G470 7943 I3 2350M 2GB/500GB/DR', '2012-07-16', '11 Tahun, 5 Bulan, 2 Hari', 'IT', NULL, '1', NULL, 'Kondisi engsel laptop sudah rusak dan laptop lambat karena Hardisk masih HDD dan Ram kecil, SSD 500GB : 910.000, RAM Memory DDR3 4GB : 350.000, Service Engsel : 100.000 -> 300.000', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(132, NULL, NULL, '30006461', 'LAPTOP LENOVO G470 7943 I3 2350M 2GB/500GB/DR', '2012-10-15', '11 Tahun, 2 Bulan, 3 Hari', 'IT', NULL, '1', NULL, 'Laptop masih dibawa yang bersangkutan di rumahnya Madiun', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(133, NULL, NULL, '30006462', 'LENOVO G470 7943 I3 2350M 2GB/500GB/DR', '2012-10-17', '11 Tahun, 2 Bulan, 1 Hari', 'IT', NULL, '1', NULL, 'Rusak', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(134, NULL, '914000118', NULL, 'LAPTOP APPLE MACBOOK AIR CORE I5', '2013-09-26', '10 Tahun, 2 Bulan, 22 Hari', 'JT', NULL, '1', NULL, 'Perlu ditanyakan kondisi laptopnya', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(135, NULL, '914000131', '30007238', 'LAPTOP LENOVO G470', '2013-03-16', '10 Tahun, 9 Bulan, 2 Hari', 'DWI WAHYU 22821-DwiWahyu', NULL, '1', NULL, 'Tidak ada kendala, Sudah diupgrade SSD. SSD 500GB : 910.000, RAM Memory DDR3 4GB : 350.000, Service Engsel : 100.000 -> 300.000', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(136, NULL, '914000130', '300009157', 'LAPTOP LENOVO G470-943', '2013-02-22', '10 Tahun, 9 Bulan, 24 Hari', 'SUTRISNO 15309-Sutrisno', NULL, '1', NULL, 'Tidak ada kendala, Sudah diupgrade RAM', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(137, NULL, '914000169', '300009404', 'LAPTOP LENOVO CORE I3 B490-20207', '2013-10-21', '10 Tahun, 1 Bulan, 28 Hari', 'RX01-01', NULL, '1', NULL, 'Windows 10/ MS Office 2010, sudah ganti SSD Barang ada diruang IT layar mulai Error', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(138, NULL, NULL, '30006433', 'LAPTOP LENOVO Z470-099', '2011-08-20', '12 Tahun, 3 Bulan, 29 Hari', 'SAFAAT', NULL, '2', NULL, 'Kondisi engsel laptop sudah rusak', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(139, NULL, NULL, '300009405', 'LAPTOP LENOVO Z470-099', '2011-08-20', '12 Tahun, 3 Bulan, 29 Hari', 'INDRA', NULL, '2', NULL, 'Kondisi laptop lambat karena Hardisk masih HDD dan Ram kecil', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(140, NULL, '914000105', '300009406', 'LAPTOP LENOVO CORE i3 G470', '2012-09-20', '11 Tahun, 2 Bulan, 28 Hari', 'HENDRY', NULL, '2', NULL, 'Tidak ada kendala Barang berada diruang IT', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(141, NULL, NULL, '30005721', 'LAPTOP TOSHIBA M.300', '2008-04-01', '15 Tahun, 8 Bulan, 17 Hari', 'KURNIA (adm MPC p3)', NULL, '3', NULL, 'Kondisi laptop lambat, baterai drop, kondisi layar buram, Processor core2duo', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(142, NULL, NULL, '30005172', 'LAPTOP LENOVO G460-59057645', '2011-01-25', '12 Tahun, 10 Bulan, 24 Hari', 'JIHAN', NULL, '3', NULL, 'Tidak ada kendala Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(143, NULL, '914000125', '30006724', 'LAPTOP LENOVO G460-59057645', '2011-01-25', '12 Tahun, 10 Bulan, 24 Hari', 'RUSAK (di P3)', NULL, '3', NULL, 'Kondisi laptop lambat, baterai drop', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(144, NULL, '1610000930', '30005167', 'LAPTOP LENOVO Z460-59066012', '2011-07-13', '12 Tahun, 5 Bulan, 5 Hari', 'R HRD', NULL, '3', NULL, 'Kondisi baterai drop', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(145, NULL, NULL, '30005182', 'LAPTOP LENOVO Z470-099', '2011-08-20', '12 Tahun, 3 Bulan, 29 Hari', 'ARIE', NULL, '3', NULL, 'Kondisi laptop lambat karena Hardisk masih HDD dan Ram kecil', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(146, NULL, '914000151', '300007888', 'LAPTOP LENOVO THINKPAD E430-BJ9', '2013-06-14', '10 Tahun, 6 Bulan, 4 Hari', 'YUSUF', NULL, '3', NULL, 'Tidak ada kendala', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(147, NULL, NULL, '30006288', 'LAPTOP LENOVO G460-59033120', '2010-04-21', '13 Tahun, 7 Bulan, 27 Hari', 'ESWAHYUDI', NULL, '4', NULL, 'Wireless adapter rusak, VGA Graphic rusak', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(148, NULL, NULL, '30005554', 'LAPTOP LENOVO G460-59039886', '2010-06-30', '13 Tahun, 5 Bulan, 18 Hari', 'ALBERTUS', NULL, '5', NULL, 'Kondisi laptop lambat karena Hardisk masih HDD dan Ram kecil', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(149, NULL, NULL, NULL, 'LAPTOP Intel(R) Core(TM) i3-2350M CPU @ 2.30GHz', NULL, '', 'ALBERTUS', NULL, '5', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(150, NULL, NULL, '30005456', 'LAPTOP LENOVO G460-59057645 (KINGSOFT)', '2011-01-25', '12 Tahun, 10 Bulan, 24 Hari', 'MUKTI QA2', NULL, '5', NULL, 'Kondisi laptop lambat karena Hardisk masih HDD dan Ram kecil', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(151, NULL, 'R912LDY7', '300012379', 'LAPTOP THINKPAD L13 GEN 2 CORE i5 2021', '2021-07-22', '2 Tahun, 4 Bulan, 27 Hari', 'KURNIAWAN 15706-Kurniawan', NULL, '1', NULL, '1 - Koperasi WIndows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(152, NULL, 'R912LDYD', '300012381', 'LAPTOP THINKPAD L13 GEN 2 CORE i5 2021', '2021-07-22', '2 Tahun, 4 Bulan, 27 Hari', 'SANDITYA', NULL, '2', NULL, '2 - Koperasi Windows 10/ MS Office 2019', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(153, NULL, 'MP26H9AT', '300012407', 'LAPTOP IDEAPAD 5 CORE i7', '2022-03-11', '1 Tahun, 9 Bulan, 7 Hari', 'YOSHIDA', NULL, '3', NULL, '3 - Koperasi  Windows 10/ MS Office 365 (bundle) & MS Office 2010', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(154, NULL, 'R912LDXX', '300012377', 'LAPTOP THINKPAD L13 GEN 2 CORE i5 2021', '2021-07-22', '2 Tahun, 4 Bulan, 27 Hari', 'IT', NULL, '1', NULL, '1 - Koperasi  Windows 10/ MS Office 2010', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(155, 'GM03YFX5', NULL, '300012966', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-02-24', '9 Bulan, 22 Hari', 'MARATUN 15456-Maratun', NULL, '4', NULL, 'Windows 11/ MS Office 365 No seri belum pasti', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(156, 'GM03YFXL', NULL, '300012983', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-02-24', '9 Bulan, 22 Hari', 'TANGGUH 15915-Tangguh', NULL, '3', NULL, 'Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(157, 'GM03YFXM', NULL, '300012958', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-02-24', '9 Bulan, 22 Hari', 'SEPTIAN 15904-Septiyan', NULL, '1', NULL, 'Windows 10/ MS Office 365/ Monitor Acer/ Keyboard Lenovo/ Mouse Logitech', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(158, 'GM03YFXN', NULL, '300013009', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-02-24', '9 Bulan, 22 Hari', 'MUSYAFAK', NULL, '2', NULL, 'WIndows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(159, 'GM03YFXP', '914000391', '300013243', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-02-24', '9 Bulan, 22 Hari', 'CATUR HRA 15940-Catur', NULL, '1', NULL, 'Windows 11', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(160, 'GM03YFXQ', NULL, '300012964', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-02-24', '9 Bulan, 22 Hari', 'ERIN PD 22744-Erin', NULL, '1', NULL, 'Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(161, 'GM03YFXR', '914000391', '300012987', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-02-24', '9 Bulan, 22 Hari', 'HARTOYO 15369-Suhartoyo', NULL, '1', NULL, 'Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(162, 'GM03YFXS', NULL, '300012976', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-02-24', '9 Bulan, 22 Hari', 'DIDIK WH P4 15739-Didik', NULL, '4', NULL, 'Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(163, 'GM03YFXT', NULL, '300012960', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-02-24', '9 Bulan, 22 Hari', 'DINDA 15676-Dinda', NULL, '2', NULL, 'Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(164, 'GM03YFXV', NULL, '300013011', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-02-24', '9 Bulan, 22 Hari', 'SOFY P4 21583-Sofy', NULL, '2', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(165, 'GM070J17', '914000422', '300013303', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-09-18', '3 Bulan,', 'ANANDA SALES 15910-Ananda', NULL, '1', NULL, 'NEW Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(166, 'GM070NJH', '914000420', '300013322', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-09-22', '2 Bulan, 26 Hari', 'ALFANDO ACCT 20241-Alfando', NULL, '1', NULL, 'NEW Windows 11/ MS Office 2013', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(167, 'GM070NJL', '914000429', '300013371', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-11-15', '1 Bulan, 3 Hari', 'QA PLANT 4 QA-04', NULL, '4', NULL, 'NEW Windows 11/ MS Office 2019', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(168, 'GM070NJM', '914000429', '300013358', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-10-31', '1 Bulan, 18 Hari', 'DUDI QA 15415-Dudi', NULL, '1', NULL, 'NEW Windows 11/ MS Office 2010', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(169, 'GM070NJP', '914000422', '300013369', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-11-09', '1 Bulan, 9 Hari', 'WAHYU ITA 15773-WahyuIta', NULL, '1', NULL, 'NEW Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(170, 'GM070NJR', '914000425', '300013354', 'PC LENOVO THINKCENTRE M70T Core i5 2023', '2023-10-30', '1 Bulan, 19 Hari', 'DENI 15688-Deni', NULL, '4', NULL, 'NEW Windows 11/ MS Office 2013', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(171, 'LR06VEYP', '914000241', '300009855', 'LAPTOP LENOVO V310 CORE i5 STD OLP', '2017-01-05', '6 Tahun, 11 Bulan, 13 Hari', 'JANICE 22960-Janice', NULL, '1', NULL, 'Laptop kadang ngehang Windows 10/ MS Office 2016', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(172, 'LR06XG13', '914000243', '300009840', 'LAPTOP LENOVO V310 CORE i3 STD OLP', '2017-01-05', '6 Tahun, 11 Bulan, 13 Hari', 'WAHYU ITA 15773-WahyuIta', NULL, '1', NULL, 'Sering restart, Sudah diupgrade RAM, dan SSD, sudah ganti Baterai Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(173, 'LR06XG76', '914000239', '300009839', 'LAPTOP LENOVO V310 CORE i3 STD OLP', '2017-01-05', '6 Tahun, 11 Bulan, 13 Hari', 'R HRD', NULL, '3', NULL, 'Tidak ada kendala  Windows 10/ MS Office 2016', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(174, 'LR08C42Y', '914000268', '300009946', 'LAPTOP LENOVO V510 CORE i5', '2017-08-18', '6 Tahun, 4 Bulan,', 'NURDIN LUBIS 20187-Nurdin', NULL, '3', '1. HN                  (2017-2023)  2. Nurdin Lubis (2023-sekarang)', '-Tidak ada kendala, Sudah diupgrade RAM dan SSD -Baterai Drop Windows 10', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(175, 'LR08C43B', '914000268', '300009935', 'LAPTOP LENOVO V510 CORE i5', '2017-08-18', '6 Tahun, 4 Bulan,', 'MARCEL 16240-Marcel', NULL, '1', '1. Timothy 2. Marcel', 'Tidak ada kendala WIndows 10/ MS Office 2010', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(176, 'LR08C43Y', '914000268', '300009866', 'LAPTOP LENOVO V510 CORE i5', '2017-08-18', '6 Tahun, 4 Bulan,', 'CHARLES', NULL, '1', NULL, 'Tidak ada kendala  Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(177, 'LR0BC43K', '914000267', '300009864', 'LAPTOP LENOVO V510 CORE i5', '2017-08-18', '6 Tahun, 4 Bulan,', 'PRATIWI 15957-Pratiwi', NULL, '1', NULL, 'Tidak ada kendala Windows 10/ MS Office 365 baterai sudah diganti', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(178, 'LRNXB7228003', '914000269', '300009865', 'LAPTOP LENOVO V510 CORE i5', '2017-08-18', '6 Tahun, 4 Bulan,', 'DEDDY 15610-Deddy', NULL, '1', NULL, 'Tidak ada kendala Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(179, 'MP11H0MD', '914000266', '300009863', 'LAPTOP LENOVO E31 CORE i3', '2017-08-18', '6 Tahun, 4 Bulan,', 'SAFAAT 15312-Safaat', NULL, '4', '1.SUYATI (2018-2023) 2.SAFAAT ( 2023-SEKARANG)', 'Tidak ada kendala, Sudah diupgrade RAM dan SSD  Windows 10/ MS Office 2010', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(180, 'MP1233ZW', '914000237', '300009731', 'LAPTOP LENOVO E31-80', '2016-10-07', '7 Tahun, 2 Bulan, 11 Hari', 'NUGROHO CATUR', NULL, '3', NULL, 'Layar Monitor sudah mulai rusak dan baru saja diservice, Kinerja laptop lambat karena HDD masih SSD dan RAM kecil', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(181, 'PC1D8DBR', '914000315', '300011098', 'PC LENOVO THINKCENTRE M720', NULL, '', 'LEO', NULL, '1', '1. Kurniawan 2. Leo', NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(182, 'PC1D8DBS', '914000313', '300010370', 'PC LENOVO THINKCENTRE M720', '2020-02-10', '3 Tahun, 10 Bulan, 8 Hari', 'YANTIK 15741-Yantik', NULL, '1', NULL, 'Windows 10/ MS Office 2016/  LCD & Keyboard/ Mouse Lenovo', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(183, 'PC1D8DBT', NULL, '300011096', 'PC LENOVO THINKCENTRE M720', NULL, '', 'DWI SUSI', NULL, '1', NULL, 'Windows 10/ MS Office/ LCD Acer/ Keyboard & Mouse Lenovo', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(184, 'PC1DFZ3S', '914000313', '300011121', 'PC PC LENOVO THINKCENTRE M720T Core i5 RAM 4GB', NULL, '', 'Widi PRD-02', NULL, '4', NULL, 'Windows 10/ Kingsoft Office', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(185, 'PC1R2QNR', NULL, NULL, 'PC LENOVO THINKCENTRE M70T 8 GB i5', '2021-06-22', '2 Tahun, 5 Bulan, 26 Hari', 'RETNO 18163-RetnoTri', NULL, '3', NULL, '3 - Koperasi  Windows 10 Pro', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(186, 'PC1R2QRF', NULL, NULL, 'PC LENOVO THINKCENTRE M70T 8 GB i5', '2021-06-22', '2 Tahun, 5 Bulan, 26 Hari', 'KURNIA 15858-Kurnia', NULL, '3', NULL, '3 - Koperasi Windows 10 Pro', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(187, 'PC1R2QRR', NULL, NULL, 'PC LENOVO THINKCENTRE M70T 8 GB i5', '2021-06-22', '2 Tahun, 5 Bulan, 26 Hari', 'USWATUN/RIDWAN', NULL, '3', NULL, '3 - Koperasi Windows 10 Pro', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(188, 'PC2AZ4HY', NULL, NULL, 'PC LENOVO V50t GEN2', '2023-04-05', '8 Bulan, 13 Hari', 'DINI JDO-10', NULL, 'JDO', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(189, 'PC2AZ4J1', NULL, NULL, 'PC LENOVO V50t GEN2', '2023-04-05', '8 Bulan, 13 Hari', 'MUKTI JDO-07', NULL, 'JDO', NULL, 'Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(190, 'PF0G0BM3', '914000270', '300009955', 'LAPTOP LENOVO E470 CORE i7 STD OLP', '2017-09-04', '6 Tahun, 3 Bulan, 14 Hari', 'RAHMAN', NULL, '1', NULL, 'Barang ada diruang IT  Windows 10/ MS Office 2016', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(191, 'PF13TEH0', '914000298', '300010405', 'LAPTOP LENOVO THINKPAD-E480 CORE i5 std OLP  OEM', '2018-08-30', '5 Tahun, 3 Bulan, 19 Hari', 'SUYATI 15663-Suyati', NULL, '1', '1. Nanang K (2018 - 2023) 2. Suyati (2023 - sekarang)', 'Tidak ada kendala, Sudah diupgrade RAM dan SSD  Win 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(192, 'PF13U2P6', '914000295', '300010404', 'LAPTOP LENOVO THINKPAD-E480 CORE i5 OEM std OLP', '2018-08-30', '5 Tahun, 3 Bulan, 19 Hari', 'NISA 20163-Nisa', NULL, '3', NULL, 'Tidak ada kendala, sudah upgrade SSD Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(193, 'PF13ZQN0', '914000279', '300010369', 'LAPTOP LENOVO THINKPAD-E470 20H1', '2018-04-06', '5 Tahun, 8 Bulan, 12 Hari', 'EFIK 15397-Efik', NULL, '1', NULL, 'Tidak ada kendala Windows 10/ Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(194, 'PF175AD4', '914000294', '300010402', 'LAPTOP LENOVO THINKPAD-E480 CORE i7 OEM std OLP', '2018-03-08', '5 Tahun, 9 Bulan, 10 Hari', 'GERALD 23011-Gerald', NULL, '1', '1. HAFID 2. AGUNG 3. GERALD', 'Tidak ada kendala Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(195, 'PF17XCM4', '914000290', '300010401', 'LAPTOP LENOVO THINKPAD-E480 CORE i5 OEM', '2018-07-16', '5 Tahun, 5 Bulan, 2 Hari', 'LELY 21686-Lely', NULL, '1', '1. NOVITA (2018 - 2023) 2. LELY (2023-Sekarang)', 'Windows 11/ MS Office 2013', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(196, 'PF1MV2G6', '914000299', '300010641', 'LAPTOP LENOVO THINKPAD-E480 CORE i5 OEM', '2019-03-26', '4 Tahun, 8 Bulan, 23 Hari', 'YUNANTA 15541-Yunanta', NULL, '4', NULL, 'Tidak ada kendala, sudah upgrade SSD Windows 10  barang berada diruang IT', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(197, 'PF1XZ2AF', '914000305', '300010831', 'LAPTOP LENOVO THINKPAD-E490 CORE i5 OEM', '2019-08-20', '4 Tahun, 3 Bulan, 29 Hari', 'MELVINA 22527-Melvina', NULL, '1', NULL, 'Tidak ada kendala WIndows 10/ Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(198, 'PF242932', '914000319', '300011293', 'LAPTOP LENOVO THINKPAD-E14 CORE i5', '2020-12-22', '2 Tahun, 11 Bulan, 27 Hari', 'ADI PUTRO 15926-AdiPutro', NULL, '1', NULL, 'Tidak ada kendala Sudah Upgrade Ram 16gb Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(199, 'PF2LEGLQ', '914000321', '300011308', 'LAPTOP LENOVO THINKPAD-E14 CORE i7', '2020-12-22', '2 Tahun, 11 Bulan, 27 Hari', 'ANEX 15306-Anex', NULL, '2', NULL, 'Tidak ada kendala Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(200, 'PF2LEGM2', '914000320', '300011306', 'LAPTOP LENOVO THINKPAD-E14 CORE i7', '2020-12-22', '2 Tahun, 11 Bulan, 27 Hari', 'AMRULLOH 15359-Amrulloh', NULL, '1', NULL, 'Tidak ada kendala Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(201, 'PF2LEGMC', '914000318', '300011307', 'LAPTOP LENOVO THINKPAD-E14 CORE i7', '2020-12-22', '2 Tahun, 11 Bulan, 27 Hari', 'RONI 15762-Roni', NULL, '1', NULL, 'Tidak ada kendala Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(202, 'PF2V4VNL', '914000328', '300011905', 'LAPTOP LENOVO THINKPAD-E14 GEN-2 I7', '2021-05-17', '2 Tahun, 7 Bulan, 1 Hari', 'MELYA 15297-Melya', NULL, '1', NULL, 'Tidak ada kendala Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(203, 'PF2V4VP4', '914000329', '300011900', 'LAPTOP LENOVO THINKPAD-E14 GEN-2 I7', '2021-05-17', '2 Tahun, 7 Bulan, 1 Hari', 'MJ', NULL, '3', NULL, 'Tidak ada kendala Windows 10 Pro/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(204, 'PF30NCHE', '914000333', '300012326', 'LAPTOP LENOVO THINKPAD-E14 GEN-2 I7', '2021-06-08', '2 Tahun, 6 Bulan, 10 Hari', 'NUGRAHA', NULL, '3', NULL, 'Tidak ada kendala Windows 10 PRO', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(205, 'PF30NCJ4', '914000333', '300012327', 'LAPTOP LENOVO THINKPAD-E14 GEN-2 I7', '2021-06-08', '2 Tahun, 6 Bulan, 10 Hari', 'YOGA 15776-Yoga', NULL, '3', NULL, 'Tidak ada kendala  Windows 10 Pro', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(206, 'PF3KTXZJ', '914000335', '300012410', 'LAPTOP LENOVO THINKPAD-E14 GEN-2 I7', '2022-03-21', '1 Tahun, 8 Bulan, 28 Hari', 'HENDRIK 15784-Hendrik', NULL, '1', NULL, 'Tidak ada kendala Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(207, 'PF3S1WQ0', '914000364', '300012530', 'LAPTOP LENOVO THINKPAD-E14 GEN-2 I7', '2022-07-19', '1 Tahun, 4 Bulan, 30 Hari', 'PAULUS 15738-Paulus', NULL, '1', NULL, 'Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(208, 'PF3S1WQB', '914000363', '300012537', 'LAPTOP LENOVO THINKPAD-E14 GEN-2 I7', '2022-07-19', '1 Tahun, 4 Bulan, 30 Hari', 'LUSI 15763-Lusi', NULL, '1', NULL, 'WIndows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(209, 'PF3S1XKJ', '914000369', '300012536', 'LAPTOP LENOVO THINKPAD-E14 GEN-2 I7', '2022-07-20', '1 Tahun, 4 Bulan, 29 Hari', 'JIM H 15672-JimHandoko', NULL, '1', NULL, 'Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(210, 'PF3S1XKT', '914000365', '300012529', 'LAPTOP LENOVO THINKPAD-E14 GEN-2 I7', '2022-07-19', '1 Tahun, 4 Bulan, 30 Hari', 'KARYATI 15354-Karyati', NULL, '1', NULL, 'Tidak ada kendala -Windows 10 Pro -office 2013 pro plus', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(211, 'PF3S1XL5', '914000367', '300012531', 'LAPTOP LENOVO THINKPAD-E14 GEN-2 I7', '2022-07-19', '1 Tahun, 4 Bulan, 30 Hari', 'NANANG M 16196-Nanang', NULL, '3', NULL, 'Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(212, 'PF3S1XM7', '914000368', '300012527', 'LAPTOP LENOVO THINKPAD-E14 GEN-2 I7', '2022-07-19', '1 Tahun, 4 Bulan, 30 Hari', 'SRI 15746-Sri', NULL, '1', NULL, 'Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(213, 'PF3S1XMD', '914000366', '300012528', 'LAPTOP LENOVO THINKPAD-E14 GEN-2 I7', '2022-07-19', '1 Tahun, 4 Bulan, 30 Hari', 'SATRIO 15601-Satrio', NULL, '1', NULL, 'Tidak ada kendala WIndows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(214, 'PF3S1XMN', '914000362', '300012535', 'LAPTOP LENOVO THINKPAD-E14 GEN-2 I7', '2022-07-19', '1 Tahun, 4 Bulan, 30 Hari', 'CHOI 15778-Choi', NULL, '1', NULL, 'Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(215, 'PF403DTS', 'PF403DTS', '300012896', 'LAPTOP LENOVO THINKPAD E14 GEN 4 CORE I5', '2022-03-12', '1 Tahun, 9 Bulan, 6 Hari', 'AGUS BUDI 22582-AgusSetia', NULL, '1', NULL, '1 - Koperasi Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(216, 'PF48CNAB', '914000393', '300012978', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7', '2023-02-21', '9 Bulan, 25 Hari', 'MAYANDRA 21872-Mayandra', NULL, '3', NULL, 'Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(217, 'PF48CNB8', '914000394', '300012979', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7', '2023-02-22', '9 Bulan, 24 Hari', 'HENDRY 15670-Hendry', NULL, '2', NULL, 'Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(218, 'PF48CQG8', '914000391', '300012956', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7', '2023-02-20', '9 Bulan, 26 Hari', 'HN 15390-Heni', NULL, '1', NULL, 'Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(219, 'PF48CQH3', '914000398', '300012982', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7', '2023-02-26', '9 Bulan, 20 Hari', 'YUSUF BAMBANG 15732-Yusuf', NULL, '3', NULL, 'Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(220, 'PF48CQJ9', '914000397', '300012989', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7', '2023-02-25', '9 Bulan, 21 Hari', 'ESWAHYUDI 15671-Eswahyudi', NULL, '4', NULL, 'Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(221, 'PF48CSQ7', '914000395', '300012957', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7', '2023-02-23', '9 Bulan, 23 Hari', 'HARNA 15927-Harna', NULL, '1', NULL, 'WIndows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(222, 'PF48CSS9', '914000396', '300012975', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7', '2023-02-24', '9 Bulan, 22 Hari', 'WATIK 15679-Watik', NULL, '1', NULL, 'Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(223, 'PF48FD07', '914000392', '300012981', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7', '2023-02-28', '9 Bulan, 18 Hari', 'RIDWAN', NULL, '3', NULL, 'Windows 11', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(224, 'PF48FD0T', '914000399', '300012980', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7', '2023-02-27', '9 Bulan, 19 Hari', 'YOSHIDA 15310-Yoshida', NULL, '3', NULL, 'Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(225, 'PF4A2438', '914000427', '300013344', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7 WIN 11 PRO', '2023-10-30', '1 Bulan, 19 Hari', 'NOVA TRI 15911-Nova', NULL, '4', NULL, 'NEW WIndows 11/ MS Office 2016', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(226, 'PF4A243N', '914000421', '300013313', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7 WIN 11 PRO', '2023-09-21', '2 Bulan, 27 Hari', 'TIMOTHY 20258-TImothy', NULL, '1', NULL, 'NEW Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(227, 'PF4A245M', '914000419', '300013305', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7 WIN 11 PRO', '2023-09-20', '2 Bulan, 28 Hari', 'NANANG KURNIAWAN 20125-Nanang', NULL, '1', NULL, 'NEW Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(228, 'PF4ADB2D', '914000430', '300013353', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7 WIN 11 PRO', '2023-10-30', '1 Bulan, 19 Hari', 'YUNANTA 15541-Yunanta', NULL, '4', NULL, 'NEW Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(229, 'PF4GVQTF', '914000418', '300013359', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7', '2023-11-05', '1 Bulan, 13 Hari', 'GALUH 15873-Galuh', NULL, '1', NULL, 'NEW Windows 11/ MS Office 2013', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(230, 'PF4GVT17', '914000417', '300013327', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7 WIN 11 PRO', '2023-10-02', '2 Bulan, 16 Hari', 'NOVITA 15760-Novita', NULL, '1', NULL, 'NEW Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(231, 'PF4GX2ZW', '914000424', '300013302', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7 WIN 11 PRO', '2023-09-18', '3 Bulan,', 'AGUNG 15902-Agung', NULL, '1', NULL, 'NEW Windows 10/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(232, 'PF4GX30A', '914000421', '300013326', 'LAPTOP LENOVO THINKPAD E-14 GEN 4 I7 WIN 11 PRO', '2023-10-03', '2 Bulan, 15 Hari', 'RAHMAN 16147-Rahman', NULL, '1', NULL, 'NEW Windows 11/ MS Office 365', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(233, 'R912LDXP', 'R912LDXP', '300012378', 'LAPTOP THINKPAD L13 GEN 2 CORE i5 2021', '2021-07-22', '2 Tahun, 4 Bulan, 27 Hari', 'ELI HR-03', NULL, '1', NULL, '1 - Koperasi Windows 10/ MS Office 2019', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(234, 'R912LDY2', NULL, '300012276', 'LAPTOP THINKPAD L13 GEN 2 CORE i5 2021', '2021-07-22', '2 Tahun, 4 Bulan, 27 Hari', 'MARATUN PRD-04', NULL, '4', NULL, '4 - Koperasi Windows 10/ MS Office 2010', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(235, 'R9OFKRKP', '914000219', '300009158', 'LAPTOP LENOVO THINKPAD X1 CARBON CORE I7', '2015-09-07', '8 Tahun, 3 Bulan, 11 Hari', 'IRA', NULL, '1', NULL, 'Kondisi laptop lambat karena Hardisk masih HDD dan Ram kecil  Barang berada diruang IT', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(236, 'YB01727091', '914000181', '300008598', 'LAPTOP Intel(R) Core(TM) i3-4010U CPU @ 1.70GHz', '2015-01-06', '8 Tahun, 11 Bulan, 12 Hari', 'ALBERTUS 15909-Albertus', NULL, '5', NULL, 'Sudah upgrade SSD+RAM', '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif'),
(237, NULL, NULL, '30005509', 'PC RAKITAN PENTIUM R', NULL, '', 'Suhartoyo', NULL, '1', NULL, NULL, '2023-12-18 03:31:23', '2023-12-18 03:31:23', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$5JmMgLyy1Pc92U2O/d9H2ODu61m3Zr4EfxrWc5xsvufsVKYVGpsRS', NULL, '2023-07-09 17:24:29', '2023-07-09 17:24:29', 'admin'),
(4, 'user', 'user@gmail.com', NULL, '$2y$10$2nK7opjwrM7FpAaK4rNKF.VidsQi2IC8Cb23K6PM2rFd8F7KBJEom', NULL, '2023-12-13 01:08:59', '2023-12-13 01:08:59', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
