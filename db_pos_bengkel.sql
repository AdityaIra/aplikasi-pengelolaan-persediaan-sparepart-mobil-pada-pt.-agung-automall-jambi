-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2020 at 04:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pos_bengkel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `konsumen_id` int(11) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `kode`, `total`, `konsumen_id`, `tanggal`) VALUES
(66, 'INV001', '34000000', 6, '2020-09-10 07:35:31'),
(67, 'INV002', '5100000', 6, '2020-09-11 07:36:34'),
(68, 'INV003', '10100000', 6, '2020-09-12 07:36:51'),
(69, 'INV004', '26000000', 6, '2020-09-14 07:38:23'),
(70, 'INV005', '61000000', 6, '2020-11-27 07:39:45'),
(71, 'INV006', '37000000', 6, '2020-11-27 07:40:06'),
(72, 'INV007', '34000000', 6, '2020-11-27 07:40:52'),
(73, 'INV008', '10100000', 6, '2020-11-27 07:41:12'),
(74, 'INV009', '130000000', 6, '2020-11-27 07:41:43'),
(75, 'INV010', '36000000', 6, '2020-11-27 07:42:10'),
(76, 'INV011', '5100000', 6, '2020-11-27 07:42:32'),
(77, 'INV012', '61000000', 6, '2020-11-27 07:42:55'),
(78, 'INV013', '5100000', 6, '2020-11-27 07:43:19'),
(79, 'INV014', '130000000', 6, '2020-11-27 07:43:35'),
(80, 'INV015', '10100000', 6, '2020-11-27 07:44:37'),
(81, 'INV016', '10100000', 6, '2020-11-27 07:45:01'),
(82, 'INV017', '61000000', 6, '2020-11-27 07:45:20'),
(83, 'INV018', '8600000', 6, '2020-11-27 07:46:04'),
(84, 'INV019', '34000000', 6, '2020-11-27 07:46:20'),
(85, 'INV020', '34000000', 6, '2020-11-27 07:46:33'),
(87, 'INV021', '8600000', 6, '2020-11-16 07:51:13'),
(88, 'INV022', '201000000', 6, '2020-11-17 07:51:36'),
(89, 'INV023', '5100000', 6, '2020-11-18 07:53:53'),
(90, 'INV024', '5100000', 6, '2020-11-19 07:54:14'),
(91, 'INV025', '26000000', 6, '2020-11-21 07:54:31'),
(92, 'INV026', '10100000', 6, '2020-11-25 07:54:50'),
(93, 'INV027', '26000000', 6, '2020-11-25 07:55:06'),
(94, 'INV028', '10100000', 6, '2020-11-25 07:55:25'),
(95, 'INV029', '26000000', 6, '2020-11-25 07:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_data`
--

CREATE TABLE `tb_barang_data` (
  `id_barang_data` int(11) NOT NULL,
  `id_barang_kategori` int(11) NOT NULL,
  `barang_data_nama` varchar(200) COLLATE utf8_bin NOT NULL,
  `barang_data_kode` varchar(100) COLLATE utf8_bin NOT NULL,
  `barang_data_harga_lama` int(255) NOT NULL,
  `barang_data_harga_beli` int(255) NOT NULL,
  `barang_data_harga_jual` int(255) NOT NULL,
  `barang_data_tanggal` date NOT NULL,
  `barang_data_gambar` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tb_barang_data`
--

INSERT INTO `tb_barang_data` (`id_barang_data`, `id_barang_kategori`, `barang_data_nama`, `barang_data_kode`, `barang_data_harga_lama`, `barang_data_harga_beli`, `barang_data_harga_jual`, `barang_data_tanggal`, `barang_data_gambar`) VALUES
(4, 2, 'Busi Mobil', 'BRG001', 860000, 120000000, 130000000, '2020-11-22', 'BRG001_5fba7e58c1634.jpg'),
(5, 2, 'Filter Udara', 'BRG002', 87000000, 10000000, 10100000, '2020-11-22', 'BRG002_5fba7e9d00f48.jpg'),
(6, 2, 'Pompa Bensin', 'BRG003', 880000, 35000000, 36000000, '2020-11-22', 'BRG003_5fba7ed6bcf76.jpg'),
(7, 4, 'Baut Chamber', 'BRG004', 890000, 20000000, 201000000, '2020-11-22', 'BRG004_5fba7f1109b1e.jpg'),
(8, 4, 'Pak Rem Depan', 'BRG005', 900000, 3500000, 37000000, '2020-11-22', 'BRG005_5fba7f4091451.jpg'),
(9, 3, 'Jasa Service Ringan', 'BRG006', 910000, 5000000, 5100000, '2020-11-22', 'BRG006_5fba7f7c1517a.jpg'),
(10, 3, 'Jasa Service Sedang', 'BRG007', 920000, 10000000, 10100000, '2020-11-22', 'BRG007_5fba7fabe3e39.jpg'),
(11, 3, 'Jasa Service Berat', 'BRG008', 930000, 25000000, 26000000, '2020-11-22', 'BRG008_5fba7fd53acfd.jpg'),
(12, 1, 'Lampu H4', 'BRG009', 940000, 60000000, 61000000, '2020-11-22', 'BRG009_5fba8461aab63.jpg'),
(13, 2, 'Filter Oli Mesin', 'BRG010', 96000000, 85000000, 8600000, '2020-11-22', 'BRG010_5fba84a7bae35.jpg'),
(14, 2, 'Oli 4 liter', 'BRG011', 97000000, 30000000, 34000000, '2020-11-22', 'BRG011_5fba8503819c9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_kategori`
--

CREATE TABLE `tb_barang_kategori` (
  `id_barang_kategori` int(11) NOT NULL,
  `barang_kategori_nama` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tb_barang_kategori`
--

INSERT INTO `tb_barang_kategori` (`id_barang_kategori`, `barang_kategori_nama`) VALUES
(3, 'Jasa Service'),
(1, 'Listrik'),
(2, 'Mesin'),
(4, 'Roda-Roda');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_keluar`
--

CREATE TABLE `tb_barang_keluar` (
  `id_barang_keluar` int(11) NOT NULL,
  `id_barang_data` int(11) NOT NULL,
  `barang_keluar_jumlah` int(11) NOT NULL,
  `barang_keluar_harga` bigint(20) NOT NULL,
  `transaksi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tb_barang_keluar`
--

INSERT INTO `tb_barang_keluar` (`id_barang_keluar`, `id_barang_data`, `barang_keluar_jumlah`, `barang_keluar_harga`, `transaksi_id`) VALUES
(70, 14, 1, 34000000, 66),
(71, 9, 1, 5100000, 67),
(72, 5, 1, 10100000, 68),
(73, 11, 1, 26000000, 69),
(74, 12, 1, 61000000, 70),
(75, 8, 1, 37000000, 71),
(76, 14, 1, 34000000, 72),
(77, 5, 1, 10100000, 73),
(78, 4, 1, 130000000, 74),
(79, 6, 1, 36000000, 75),
(80, 9, 1, 5100000, 76),
(81, 12, 1, 61000000, 77),
(82, 9, 1, 5100000, 78),
(83, 4, 1, 130000000, 79),
(84, 10, 1, 10100000, 80),
(85, 5, 1, 10100000, 81),
(86, 12, 1, 61000000, 82),
(87, 13, 1, 8600000, 83),
(88, 14, 1, 34000000, 84),
(89, 14, 1, 34000000, 85),
(91, 13, 1, 8600000, 87),
(92, 7, 1, 201000000, 88),
(93, 9, 1, 5100000, 89),
(94, 9, 1, 5100000, 90),
(95, 11, 1, 26000000, 91),
(96, 10, 1, 10100000, 92),
(97, 11, 1, 26000000, 93),
(98, 10, 1, 10100000, 94),
(99, 11, 1, 26000000, 95);

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_konsumen`
--

CREATE TABLE `tb_barang_konsumen` (
  `id_barang_konsumen` int(20) NOT NULL,
  `barang_konsumen_kode` varchar(50) COLLATE utf8_bin NOT NULL,
  `barang_konsumen_nik` varchar(50) COLLATE utf8_bin NOT NULL,
  `barang_konsumen_nama` varchar(50) COLLATE utf8_bin NOT NULL,
  `barang_konsumen_no_telepon` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `barang_konsumen_bh_mobil` varchar(50) COLLATE utf8_bin NOT NULL,
  `barang_konsumen_merk_mobil` varchar(50) COLLATE utf8_bin NOT NULL,
  `barang_konsumen_warna_mobil` varchar(50) COLLATE utf8_bin NOT NULL,
  `barang_konsumen_tanggal_daftar` date NOT NULL,
  `barang_konsumen_alamat` mediumtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tb_barang_konsumen`
--

INSERT INTO `tb_barang_konsumen` (`id_barang_konsumen`, `barang_konsumen_kode`, `barang_konsumen_nik`, `barang_konsumen_nama`, `barang_konsumen_no_telepon`, `barang_konsumen_bh_mobil`, `barang_konsumen_merk_mobil`, `barang_konsumen_warna_mobil`, `barang_konsumen_tanggal_daftar`, `barang_konsumen_alamat`) VALUES
(3, 'KNS001', '1234567890', 'anisa pratiwi', '0812345465', '0', 'Inova ', 'Hitam', '2017-04-28', 'Jlan Kenten'),
(4, 'KNS002', '1234567890', 'Alif Raihan', '0899823241', '0', 'Avanza ', 'Kuning', '2017-04-23', 'Plaju'),
(5, 'KNS003', '1234567890', 'Ilham Prawira', '0898986241', '0', 'Fortuner ', 'Hitam', '2017-04-08', 'Sekip'),
(6, 'KNS004', '1234567890', 'azizah chasmita', '0812346659', '0', 'Inova ', 'Silver', '2016-09-07', 'Kertapati');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_masuk`
--

CREATE TABLE `tb_barang_masuk` (
  `id_barang_masuk` int(11) NOT NULL,
  `id_barang_data` int(11) NOT NULL,
  `tb_transaksi_suplier_id` int(11) NOT NULL,
  `barang_masuk_kode` varchar(250) COLLATE utf8_bin NOT NULL,
  `barang_masuk_jumlah` int(11) NOT NULL,
  `barang_masuk_harga` bigint(20) NOT NULL,
  `barang_masuk_tanggal` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tb_barang_masuk`
--

INSERT INTO `tb_barang_masuk` (`id_barang_masuk`, `id_barang_data`, `tb_transaksi_suplier_id`, `barang_masuk_kode`, `barang_masuk_jumlah`, `barang_masuk_harga`, `barang_masuk_tanggal`) VALUES
(43, 4, 28, 'BRG001', 10, 130000000, '2020-11-22 22:39:24'),
(44, 5, 29, 'BRG002', 3, 10100000, '2020-11-22 22:40:33'),
(45, 6, 30, 'BRG003', 6, 36000000, '2020-11-22 22:41:06'),
(46, 7, 31, 'BRG004', 5, 201000000, '2020-11-22 22:41:28'),
(47, 8, 32, 'BRG005', 5, 37000000, '2020-11-22 22:41:55'),
(48, 14, 33, 'BRG011', 3, 34000000, '2020-11-22 22:42:30'),
(49, 13, 34, 'BRG010', 3, 8600000, '2020-11-22 22:44:28'),
(50, 12, 35, 'BRG009', 19, 61000000, '2020-11-22 22:44:55'),
(51, 9, 36, 'BRG006', 100, 5100000, '2020-11-22 22:46:38'),
(52, 10, 37, 'BRG007', 101, 10100000, '2020-11-22 22:46:57'),
(53, 11, 38, 'BRG008', 105, 26000000, '2020-11-22 22:47:18'),
(54, 7, 39, 'BRG004', 100, 201000000, '2020-11-23 01:37:28'),
(55, 5, 40, 'BRG002', 18, 10100000, '2020-11-23 01:37:46'),
(56, 9, 41, 'BRG006', 16, 5100000, '2020-11-23 01:38:10'),
(57, 10, 42, 'BRG007', 17, 10100000, '2020-11-23 01:38:31'),
(58, 8, 43, 'BRG005', 19, 37000000, '2020-11-23 01:38:53'),
(59, 6, 44, 'BRG003', 12, 36000000, '2020-11-23 01:39:27'),
(60, 5, 45, 'BRG002', 14, 10100000, '2020-11-23 01:39:51'),
(61, 4, 46, 'BRG001', 21, 130000000, '2020-11-23 01:40:12'),
(62, 6, 47, 'BRG003', 71, 36000000, '2020-11-23 01:40:34'),
(63, 4, 48, 'BRG001', 1, 130000000, '2020-11-23 01:56:36'),
(64, 5, 49, 'BRG002', 1, 10100000, '2020-11-23 01:56:46'),
(65, 7, 50, 'BRG004', 1, 201000000, '2020-11-23 01:56:57'),
(66, 8, 51, 'BRG005', 1, 37000000, '2020-11-23 01:57:08'),
(67, 9, 52, 'BRG006', 1, 5100000, '2020-11-23 01:57:18'),
(68, 9, 53, 'BRG006', 1, 5100000, '2020-11-23 01:57:29'),
(69, 4, 54, 'BRG001', 1, 130000000, '2020-11-23 01:57:44'),
(70, 7, 55, 'BRG004', 1, 201000000, '2020-11-23 01:57:54'),
(71, 7, 56, 'BRG004', 1, 201000000, '2020-11-23 01:58:06'),
(72, 14, 57, 'BRG011', 1, 34000000, '2020-11-23 01:58:21'),
(73, 5, 58, 'BRG002', 1, 10100000, '2020-11-23 01:58:31'),
(74, 6, 59, 'BRG003', 1, 36000000, '2020-11-23 01:58:44'),
(75, 7, 60, 'BRG004', 1, 201000000, '2020-11-23 01:59:01'),
(76, 4, 61, 'BRG001', 1, 130000000, '2020-11-23 01:59:11'),
(77, 6, 62, 'BRG003', 1, 36000000, '2020-11-23 01:59:22'),
(78, 5, 63, 'BRG002', 1, 10100000, '2020-11-23 01:59:33'),
(79, 4, 64, 'BRG001', 1, 130000000, '2020-11-23 01:59:42'),
(80, 8, 65, 'BRG005', 1, 37000000, '2020-11-23 01:59:52'),
(81, 4, 66, 'BRG001', 1, 130000000, '2020-11-23 02:00:04'),
(82, 6, 67, 'BRG003', 1, 36000000, '2020-11-23 02:00:14'),
(83, 8, 68, 'BRG005', 1, 37000000, '2020-11-23 02:00:26'),
(84, 8, 69, 'BRG005', 1, 37000000, '2020-11-23 02:00:41'),
(85, 6, 70, 'BRG003', 1, 36000000, '2020-11-23 02:00:55'),
(86, 6, 71, 'BRG003', 1, 36000000, '2020-11-23 02:01:11'),
(87, 4, 72, 'BRG001', 1, 130000000, '2020-11-23 02:02:26'),
(88, 7, 73, 'BRG004', 1, 201000000, '2020-11-23 02:02:37'),
(89, 6, 74, 'BRG003', 1, 36000000, '2020-11-23 02:02:47'),
(90, 9, 75, 'BRG006', 1, 5100000, '2020-11-23 02:02:58'),
(91, 4, 76, 'BRG001', 1, 130000000, '2020-11-23 02:03:06'),
(92, 4, 77, 'BRG001', 1, 130000000, '2020-11-23 02:03:19'),
(93, 4, 78, 'BRG001', 1, 130000000, '2020-11-23 02:03:28'),
(94, 9, 79, 'BRG006', 1, 5100000, '2020-11-23 02:03:39'),
(95, 8, 80, 'BRG005', 1, 37000000, '2020-11-23 02:03:49'),
(96, 4, 81, 'BRG001', 1, 130000000, '2020-11-23 02:03:57'),
(97, 4, 82, 'BRG001', 1, 130000000, '2020-11-23 02:04:09'),
(98, 4, 83, 'BRG001', 1, 130000000, '2020-11-23 02:04:18'),
(99, 6, 84, 'BRG003', 1, 36000000, '2020-11-23 02:04:28'),
(100, 4, 85, 'BRG001', 1, 130000000, '2020-11-23 02:04:43'),
(101, 4, 86, 'BRG001', 1, 130000000, '2020-11-23 02:04:52'),
(102, 9, 87, 'BRG006', 1, 5100000, '2020-11-23 02:05:03'),
(103, 4, 88, 'BRG001', 1, 130000000, '2020-11-26 10:11:58');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_suplier`
--

CREATE TABLE `tb_barang_suplier` (
  `id_barang_suplier` int(11) NOT NULL,
  `barang_suplier_nama` varchar(50) NOT NULL,
  `barang_suplier_kode` varchar(50) NOT NULL,
  `barang_suplier_no_telepon` varchar(20) NOT NULL,
  `barang_suplier_tanggal_daftar` date NOT NULL,
  `barang_suplier_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang_suplier`
--

INSERT INTO `tb_barang_suplier` (`id_barang_suplier`, `barang_suplier_nama`, `barang_suplier_kode`, `barang_suplier_no_telepon`, `barang_suplier_tanggal_daftar`, `barang_suplier_alamat`) VALUES
(3, 'PT. Madiva', 'SPL001', '0802534535', '2017-04-08', 'Gandus'),
(4, 'CV. JAYA AMAN', 'SPL002', '082176665', '2017-01-05', 'JL. MEKAR JAYA'),
(5, 'CV. Amanah Jaya', 'SPL003', '082173342', '2017-01-03', 'JL. Abussamah'),
(6, 'CV. Indorent', 'SPL004', '08984412355', '2017-07-23', 'Jlan Soekarno');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `hp` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi_suplier`
--

CREATE TABLE `tb_transaksi_suplier` (
  `id_tb_transaksi_suplier` int(11) NOT NULL,
  `suplier_id` int(11) NOT NULL,
  `kode` varchar(200) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `total` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi_suplier`
--

INSERT INTO `tb_transaksi_suplier` (`id_tb_transaksi_suplier`, `suplier_id`, `kode`, `tanggal`, `total`) VALUES
(28, 3, 'SPL001', '2020-11-22 22:39:24', '1300000000'),
(29, 3, 'SPL002', '2020-11-22 22:40:33', '30300000'),
(30, 3, 'SPL003', '2020-11-22 22:41:06', '216000000'),
(31, 3, 'SPL004', '2020-11-22 22:41:28', '1005000000'),
(32, 3, 'SPL005', '2020-11-22 22:41:55', '185000000'),
(33, 3, 'SPL006', '2020-11-22 22:42:30', '102000000'),
(34, 3, 'SPL007', '2020-11-22 22:44:28', '25800000'),
(35, 3, 'SPL008', '2020-11-22 22:44:55', '1159000000'),
(36, 3, 'SPL009', '2020-11-22 22:46:38', '510000000'),
(37, 3, 'SPL010', '2020-11-22 22:46:57', '1020100000'),
(38, 3, 'SPL011', '2020-11-22 22:47:18', '2730000000'),
(39, 3, 'SPL012', '2020-11-23 01:37:28', '20100000000'),
(40, 3, 'SPL013', '2020-11-23 01:37:46', '181800000'),
(41, 3, 'SPL014', '2020-11-23 01:38:10', '81600000'),
(42, 3, 'SPL015', '2020-11-23 01:38:31', '171700000'),
(43, 3, 'SPL016', '2020-11-23 01:38:53', '703000000'),
(44, 3, 'SPL017', '2020-11-23 01:39:27', '432000000'),
(45, 3, 'SPL018', '2020-11-23 01:39:51', '141400000'),
(46, 3, 'SPL019', '2020-11-23 01:40:12', '2730000000'),
(47, 3, 'SPL020', '2020-11-23 01:40:34', '2556000000'),
(48, 3, 'SPL021', '2020-11-23 01:56:36', '130000000'),
(49, 3, 'SPL022', '2020-11-23 01:56:46', '10100000'),
(50, 3, 'SPL023', '2020-11-23 01:56:57', '201000000'),
(51, 3, 'SPL024', '2020-11-23 01:57:08', '37000000'),
(52, 3, 'SPL025', '2020-11-23 01:57:18', '5100000'),
(53, 3, 'SPL026', '2020-11-23 01:57:29', '5100000'),
(54, 3, 'SPL027', '2020-11-23 01:57:44', '130000000'),
(55, 3, 'SPL028', '2020-11-23 01:57:54', '201000000'),
(56, 3, 'SPL029', '2020-11-23 01:58:06', '201000000'),
(57, 3, 'SPL030', '2020-11-23 01:58:21', '34000000'),
(58, 3, 'SPL031', '2020-11-23 01:58:31', '10100000'),
(59, 3, 'SPL032', '2020-11-23 01:58:44', '36000000'),
(60, 3, 'SPL033', '2020-11-23 01:59:01', '201000000'),
(61, 3, 'SPL034', '2020-11-23 01:59:11', '130000000'),
(62, 3, 'SPL035', '2020-11-23 01:59:22', '36000000'),
(63, 3, 'SPL036', '2020-11-23 01:59:33', '10100000'),
(64, 3, 'SPL037', '2020-11-23 01:59:42', '130000000'),
(65, 3, 'SPL038', '2020-11-23 01:59:52', '37000000'),
(66, 3, 'SPL039', '2020-11-23 02:00:04', '130000000'),
(67, 3, 'SPL040', '2020-11-23 02:00:14', '36000000'),
(68, 3, 'SPL041', '2020-11-23 02:00:26', '37000000'),
(69, 3, 'SPL042', '2020-11-23 02:00:41', '37000000'),
(70, 3, 'SPL043', '2020-11-23 02:00:55', '36000000'),
(71, 3, 'SPL044', '2020-11-23 02:01:11', '36000000'),
(72, 3, 'SPL045', '2020-11-23 02:02:26', '130000000'),
(73, 3, 'SPL046', '2020-11-23 02:02:37', '201000000'),
(74, 3, 'SPL047', '2020-11-23 02:02:47', '36000000'),
(75, 3, 'SPL048', '2020-11-23 02:02:58', '5100000'),
(76, 3, 'SPL049', '2020-11-23 02:03:06', '130000000'),
(77, 3, 'SPL050', '2020-11-23 02:03:19', '130000000'),
(78, 3, 'SPL051', '2020-11-23 02:03:28', '130000000'),
(79, 3, 'SPL052', '2020-11-23 02:03:39', '5100000'),
(80, 3, 'SPL053', '2020-11-23 02:03:49', '37000000'),
(81, 3, 'SPL054', '2020-11-23 02:03:57', '130000000'),
(82, 3, 'SPL055', '2020-11-23 02:04:09', '130000000'),
(83, 3, 'SPL056', '2020-11-23 02:04:18', '130000000'),
(84, 3, 'SPL057', '2020-11-23 02:04:28', '36000000'),
(85, 3, 'SPL058', '2020-11-23 02:04:43', '130000000'),
(86, 3, 'SPL059', '2020-11-23 02:04:52', '130000000'),
(87, 3, 'SPL060', '2020-11-23 02:05:03', '5100000'),
(88, 3, 'SPL061', '2020-11-26 10:11:58', '130000000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `nama` varchar(200) COLLATE utf8_bin NOT NULL,
  `foto` varchar(200) COLLATE utf8_bin NOT NULL,
  `id_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama`, `foto`, `id_level`) VALUES
(1, 'Pimpinan', 'Pimpinan', 'Pimpinan', 'Pimpinan_5f65e856bbb88.jpg', 1),
(2, 'admin', 'admin', 'Administrator', 'admin_5f65e86a67474.jpg', 2),
(3, 'Kasir', 'Kasir', 'Kasir', 'Kasir_5f65e8b08f909.jpg', 3),
(4, 'user', 'user', 'Administrator', 'user_5f65e8b0c779e.jpg', 6),
(10, 'nurul', 'nurul', 'Nurul Husnul', 'nurul_5f65e891052f4.jpg', 2),
(14, 'user123', '12345', 'Tambah data', 'user123_5f65e85dd9d97.jpg', 1),
(15, 'user1', 'user', 'admin', 'user_5f65e8911d99a.jpg', 2),
(16, 'Administrator', '1234', 'Administrator', 'iseplutpi_5f67525b81b35.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_level`
--

CREATE TABLE `tb_user_level` (
  `id_level` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tb_user_level`
--

INSERT INTO `tb_user_level` (`id_level`, `title`) VALUES
(2, 'Admin'),
(3, 'Kasir'),
(1, 'Pimpinan'),
(6, 'Supervisor Tes'),
(4, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_menu`
--

CREATE TABLE `tb_user_menu` (
  `user_menu_id` int(11) NOT NULL,
  `menu_title` varchar(128) COLLATE utf8_bin NOT NULL,
  `icon` varchar(255) COLLATE utf8_bin NOT NULL,
  `menu_url` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tb_user_menu`
--

INSERT INTO `tb_user_menu` (`user_menu_id`, `menu_title`, `icon`, `menu_url`) VALUES
(2, 'Data Transaksi', 'fa fa-edit fa-2x', 'transaksi'),
(3, 'Laporan', 'fa fa-edit fa-2x', 'laporan'),
(4, 'Data Master', 'fa fa-laptop fa-2x', 'data_master'),
(5, 'Data Pengguna', 'fa fa-user fa-2x', 'pengguna'),
(6, 'Menu Mnajemen', 'fa fa-folder fa-2x', 'menumanagement');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_menu_access`
--

CREATE TABLE `tb_user_menu_access` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tb_user_menu_access`
--

INSERT INTO `tb_user_menu_access` (`id`, `menu_id`, `id_user_level`) VALUES
(1, 5, 1),
(33, 6, 2),
(40, 4, 2),
(46, 5, 2),
(47, 3, 2),
(48, 2, 2),
(51, 3, 3),
(53, 5, 3),
(54, 2, 3),
(56, 2, 1),
(57, 3, 1),
(59, 6, 1),
(60, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_sub_menu`
--

CREATE TABLE `tb_user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) COLLATE utf8_bin NOT NULL,
  `sub_menu_url` varchar(50) COLLATE utf8_bin NOT NULL,
  `file` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tb_user_sub_menu`
--

INSERT INTO `tb_user_sub_menu` (`id`, `menu_id`, `title`, `sub_menu_url`, `file`) VALUES
(1, 5, 'Data Pengguna', 'pengguna', 'page/data_pengguna/pengguna/pengguna.php'),
(2, 5, 'Profile Saya', 'profile', 'page/data_pengguna/profile/profile.php'),
(3, 6, 'Menu Manajemen', 'menumanagement', 'page/menu_management/menu_management/switcher.php'),
(5, 6, 'SubMenu Manajemen', 'submenumanagement', 'page/menu_management/submenu_management/switcher.php'),
(17, 6, 'Hak Akses', 'hakaksesmanagement', 'page/menu_management/hak_akses/switcher.php'),
(20, 4, 'Data Kategori Barang', 'kategori', 'page/data_master/kategori/display.php'),
(21, 4, 'Data Barang', 'barang', 'page/data_master/barang/barang.php'),
(22, 4, 'Data Konsumen', 'konsumen', 'page/data_master/konsumen/konsumen.php'),
(24, 3, 'Laporan Barang', 'barang', 'page/data_master/barang/form_laporan_barang.php'),
(25, 3, 'Laporan Konsumen', 'konsumen', 'page/data_master/konsumen/form_laporan_konsumen.php'),
(26, 3, 'Laporan Kategori', 'kategori', 'page/data_master/kategori/form_laporan_kategori.php'),
(27, 3, 'Laporan Barang Keluar', 'transaksi', 'page/data_transaksi/transaksi/form_laporan_transaksi.php'),
(30, 2, 'Data Barang Keluar', 'barang_keluar', 'page/data_transaksi/barang_keluar/display.php'),
(34, 5, 'Data Level', 'level', 'page/data_pengguna/level/switcher.php'),
(37, 2, 'Data Barang Masuk', 'barang_masuk', 'page/data_transaksi/barang_masuk/display.php'),
(39, 4, 'Data Suplier', 'data_suplier', 'page/data_master/suplier/switcher.php'),
(42, 3, 'Laporan Barang Masuk', 'pengadaan', 'page/data_transaksi/pengadaan/display.php'),
(44, 3, 'Laporan Supplier', 'laporan_supplier', 'page/data_transaksi/supplier/display.php'),
(45, 5, 'Data Pegawai', 'pegawai', 'page/data_pengguna/pegawai/pegawai.php'),
(46, 3, 'Laporan Pegawai', 'pegawai', 'page/data_pengguna/pegawai/form_laporan_pegawai.php');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_sub_menu_access`
--

CREATE TABLE `tb_user_sub_menu_access` (
  `id` int(11) NOT NULL,
  `sub_menu_id` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tb_user_sub_menu_access`
--

INSERT INTO `tb_user_sub_menu_access` (`id`, `sub_menu_id`, `id_user_level`) VALUES
(1, 5, 2),
(3, 1, 1),
(5, 1, 2),
(6, 17, 2),
(7, 2, 2),
(8, 3, 2),
(9, 20, 2),
(11, 21, 2),
(12, 22, 2),
(13, 24, 2),
(14, 25, 2),
(15, 26, 2),
(16, 27, 2),
(18, 30, 2),
(20, 20, 3),
(22, 22, 3),
(24, 34, 2),
(25, 21, 3),
(26, 2, 3),
(29, 34, 1),
(30, 30, 1),
(31, 2, 1),
(33, 27, 1),
(34, 24, 1),
(35, 25, 1),
(36, 26, 1),
(38, 3, 1),
(40, 22, 1),
(41, 21, 1),
(42, 20, 1),
(43, 17, 1),
(44, 5, 1),
(47, 37, 1),
(48, 38, 2),
(49, 38, 1),
(50, 38, 1),
(51, 39, 1),
(56, 42, 2),
(57, 42, 1),
(58, 44, 2),
(59, 44, 1),
(60, 39, 2),
(61, 37, 2),
(62, 46, 2),
(63, 46, 1),
(64, 45, 2),
(65, 45, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `konsumen_id` (`konsumen_id`);

--
-- Indexes for table `tb_barang_data`
--
ALTER TABLE `tb_barang_data`
  ADD PRIMARY KEY (`id_barang_data`),
  ADD KEY `id_barang_kategori` (`id_barang_kategori`);

--
-- Indexes for table `tb_barang_kategori`
--
ALTER TABLE `tb_barang_kategori`
  ADD PRIMARY KEY (`id_barang_kategori`),
  ADD UNIQUE KEY `barang_kategori_nama` (`barang_kategori_nama`);

--
-- Indexes for table `tb_barang_keluar`
--
ALTER TABLE `tb_barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`),
  ADD KEY `id_barang_data` (`id_barang_data`),
  ADD KEY `transaksi_id` (`transaksi_id`);

--
-- Indexes for table `tb_barang_konsumen`
--
ALTER TABLE `tb_barang_konsumen`
  ADD PRIMARY KEY (`id_barang_konsumen`);

--
-- Indexes for table `tb_barang_masuk`
--
ALTER TABLE `tb_barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`),
  ADD KEY `id_barang_data` (`id_barang_data`),
  ADD KEY `tb_transaksi_suplier_id` (`tb_transaksi_suplier_id`);

--
-- Indexes for table `tb_barang_suplier`
--
ALTER TABLE `tb_barang_suplier`
  ADD PRIMARY KEY (`id_barang_suplier`);

--
-- Indexes for table `tb_transaksi_suplier`
--
ALTER TABLE `tb_transaksi_suplier`
  ADD PRIMARY KEY (`id_tb_transaksi_suplier`),
  ADD KEY `suplier_id` (`suplier_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id_level` (`id_level`);

--
-- Indexes for table `tb_user_level`
--
ALTER TABLE `tb_user_level`
  ADD PRIMARY KEY (`id_level`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `tb_user_menu`
--
ALTER TABLE `tb_user_menu`
  ADD PRIMARY KEY (`user_menu_id`),
  ADD UNIQUE KEY `menu_url` (`menu_url`),
  ADD UNIQUE KEY `menu_title` (`menu_title`);

--
-- Indexes for table `tb_user_menu_access`
--
ALTER TABLE `tb_user_menu_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user_level` (`id_user_level`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `tb_user_sub_menu`
--
ALTER TABLE `tb_user_sub_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_id` (`menu_id`,`sub_menu_url`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `tb_user_sub_menu_access`
--
ALTER TABLE `tb_user_sub_menu_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user_level` (`id_user_level`),
  ADD KEY `sub_menu_id` (`sub_menu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `tb_barang_data`
--
ALTER TABLE `tb_barang_data`
  MODIFY `id_barang_data` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_barang_kategori`
--
ALTER TABLE `tb_barang_kategori`
  MODIFY `id_barang_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_barang_keluar`
--
ALTER TABLE `tb_barang_keluar`
  MODIFY `id_barang_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `tb_barang_konsumen`
--
ALTER TABLE `tb_barang_konsumen`
  MODIFY `id_barang_konsumen` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_barang_masuk`
--
ALTER TABLE `tb_barang_masuk`
  MODIFY `id_barang_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `tb_barang_suplier`
--
ALTER TABLE `tb_barang_suplier`
  MODIFY `id_barang_suplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_transaksi_suplier`
--
ALTER TABLE `tb_transaksi_suplier`
  MODIFY `id_tb_transaksi_suplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_user_level`
--
ALTER TABLE `tb_user_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_user_menu`
--
ALTER TABLE `tb_user_menu`
  MODIFY `user_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_user_menu_access`
--
ALTER TABLE `tb_user_menu_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `tb_user_sub_menu`
--
ALTER TABLE `tb_user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tb_user_sub_menu_access`
--
ALTER TABLE `tb_user_sub_menu_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD CONSTRAINT `tbl_transaksi_ibfk_1` FOREIGN KEY (`konsumen_id`) REFERENCES `tb_barang_konsumen` (`id_barang_konsumen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_barang_data`
--
ALTER TABLE `tb_barang_data`
  ADD CONSTRAINT `tb_barang_data_ibfk_1` FOREIGN KEY (`id_barang_kategori`) REFERENCES `tb_barang_kategori` (`id_barang_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_barang_keluar`
--
ALTER TABLE `tb_barang_keluar`
  ADD CONSTRAINT `tb_barang_keluar_ibfk_1` FOREIGN KEY (`id_barang_data`) REFERENCES `tb_barang_data` (`id_barang_data`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_barang_keluar_ibfk_2` FOREIGN KEY (`transaksi_id`) REFERENCES `tbl_transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_barang_masuk`
--
ALTER TABLE `tb_barang_masuk`
  ADD CONSTRAINT `tb_barang_masuk_ibfk_1` FOREIGN KEY (`id_barang_data`) REFERENCES `tb_barang_data` (`id_barang_data`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_barang_masuk_ibfk_2` FOREIGN KEY (`tb_transaksi_suplier_id`) REFERENCES `tb_transaksi_suplier` (`id_tb_transaksi_suplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_transaksi_suplier`
--
ALTER TABLE `tb_transaksi_suplier`
  ADD CONSTRAINT `tb_transaksi_suplier_ibfk_1` FOREIGN KEY (`suplier_id`) REFERENCES `tb_barang_suplier` (`id_barang_suplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `tb_user_level` (`id_level`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_user_menu_access`
--
ALTER TABLE `tb_user_menu_access`
  ADD CONSTRAINT `tb_user_menu_access_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `tb_user_menu` (`user_menu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_user_menu_access_ibfk_2` FOREIGN KEY (`id_user_level`) REFERENCES `tb_user_level` (`id_level`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_user_sub_menu`
--
ALTER TABLE `tb_user_sub_menu`
  ADD CONSTRAINT `tb_user_sub_menu_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `tb_user_menu` (`user_menu_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
