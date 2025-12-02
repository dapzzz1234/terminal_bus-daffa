-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2025 at 04:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `terminal_bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_bus`
--

CREATE TABLE `daftar_bus` (
  `id_bus` int(11) NOT NULL,
  `nama_bus` varchar(50) DEFAULT NULL,
  `tujuan` varchar(50) DEFAULT NULL,
  `jadwal` time DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `nama_sopir` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_bus`
--

INSERT INTO `daftar_bus` (`id_bus`, `nama_bus`, `tujuan`, `jadwal`, `harga`, `nama_sopir`) VALUES
(1, 'Goodwill', 'Semarang-Lasem', '00:00:13', 49000, 'Roni'),
(2, 'CBI', 'Lebak Bulus-Cileunyi', '00:00:14', 45000, 'Ari'),
(3, 'Primajasa', 'Bandung-Merak', '00:00:10', 85000, 'Heri'),
(4, 'MGI', 'Tasik-Bogor', '00:00:10', 158000, 'Budi Prakoso'),
(5, 'Goodwill', 'Semarang-Lasem', '00:00:13', 49000, 'Roni'),
(6, 'CBI', 'Lebak Bulus-Cileunyi', '00:00:14', 45000, 'Ari'),
(7, 'Primajasa', 'Bandung-Merak', '00:00:10', 85000, 'Heri'),
(8, 'MGI', 'Tasik-Bogor', '00:00:10', 158000, 'Budi Prakoso'),
(9, 'Sumber Alam', 'Yogyakarta-Jakarta', '00:00:09', 120000, 'Joko'),
(10, 'Rosalia Indah', 'Solo-Palembang', '00:00:15', 250000, 'Agus'),
(11, 'Pahala Kencana', 'Malang-Denpasar', '00:00:11', 180000, 'Slamet'),
(12, 'Lorena', 'Surabaya-Medan', '00:00:16', 350000, 'Udin'),
(13, 'Eka Cepat', 'Semarang-Surabaya', '00:00:08', 95000, 'Wawan'),
(14, 'Harapan Jaya', 'Tulungagung-Bogor', '00:00:17', 210000, 'Didi');

-- --------------------------------------------------------

--
-- Table structure for table `info_bus`
--

CREATE TABLE `info_bus` (
  `kode_bus` varchar(10) NOT NULL,
  `nama_sopir` varchar(50) NOT NULL,
  `terakhir_dilihat` varchar(50) DEFAULT NULL,
  `warna_bus` varchar(20) DEFAULT NULL,
  `aktivitas_bus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info_bus`
--

INSERT INTO `info_bus` (`kode_bus`, `nama_sopir`, `terakhir_dilihat`, `warna_bus`, `aktivitas_bus`) VALUES
('AII_07', 'Ari', 'Bandung', 'Hitam', 'Berangkat'),
('AS_05', 'Budi Prakoso', 'Cibitung', 'Hitam', 'On The Way'),
('AS_30', 'Roni', 'Bogor', 'Merah', 'Sampai'),
('GAL_11', 'Budi Prakoso', 'Bandung', 'Kuning', 'Berangkat'),
('GS_29', 'Heri', 'Cikampek', 'Merah', 'On The Way'),
('HAS_29', 'Roni', 'Bandung', 'Hitam', 'Berangkat'),
('IL_04', 'Heri', 'Bogor', 'Merah', 'Sampai'),
('JAN_17A', 'Budi Prakoso', 'Cikarang', 'Putih', 'On The Way'),
('JAN_17B', 'Budi Prakoso', 'Cikarang', 'Putih', 'On The Way'),
('SR_13', 'Ari', 'Cibitung', 'Putih', 'Delay'),
('TWI_98', 'Roni', 'Cikarang', 'Putih', 'On The Way'),
('YAN_22', 'Heri', 'Cibubur', 'Kuning', 'On The Way');

-- --------------------------------------------------------

--
-- Table structure for table `keberangkatan`
--

CREATE TABLE `keberangkatan` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `stasiun_keberangkatan` varchar(50) DEFAULT NULL,
  `kedatangan` varchar(50) DEFAULT NULL,
  `boarding_time` time DEFAULT NULL,
  `sampai` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE `penumpang` (
  `id` int(11) NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) NOT NULL,
  `stasiun_keberangkatan` varchar(50) DEFAULT NULL,
  `kedatangan` varchar(50) DEFAULT NULL,
  `boarding_time` time DEFAULT NULL,
  `sampai` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_bus`
--
ALTER TABLE `daftar_bus`
  ADD PRIMARY KEY (`id_bus`);

--
-- Indexes for table `info_bus`
--
ALTER TABLE `info_bus`
  ADD PRIMARY KEY (`kode_bus`);

--
-- Indexes for table `keberangkatan`
--
ALTER TABLE `keberangkatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_bus`
--
ALTER TABLE `daftar_bus`
  MODIFY `id_bus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `keberangkatan`
--
ALTER TABLE `keberangkatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
