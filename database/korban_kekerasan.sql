-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2023 at 01:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `korban_kekerasan`
--

CREATE TABLE `korban_kekerasan` (
  `nama` varchar(40) NOT NULL,
  `umur` int(2) NOT NULL,
  `jenis_kelamin` enum('Perempuan','Laki-Laki','','') NOT NULL,
  `hubungan_pelaku` enum('Keluarga Kandung','Teman Kenal','Pernikahan/Rumah Tangga','Rekan Kerja/Lingkungan Keja','Pacaran','Orang Asing/Lingkungan Umum','Sekolah/Lingkungan Pendidikan','Teman Dekat','Persahabatan','Lainnya') NOT NULL,
  `cerita` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korban_kekerasan`
--

INSERT INTO `korban_kekerasan` (`nama`, `umur`, `jenis_kelamin`, `hubungan_pelaku`, `cerita`) VALUES
('test', 20, 'Perempuan', '', 'test'),
('test', 20, 'Perempuan', 'Keluarga Kandung', 'test');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
