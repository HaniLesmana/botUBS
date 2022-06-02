-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 04:08 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbubs`
--
CREATE DATABASE IF NOT EXISTS `dbubs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbubs`;

-- --------------------------------------------------------

--
-- Table structure for table `data_pertanyaan`
--

DROP TABLE IF EXISTS `data_pertanyaan`;
CREATE TABLE `data_pertanyaan` (
  `ID_pertanyaan` varchar(255) NOT NULL,
  `pertanyaan` text NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pertanyaan`
--

INSERT INTO `data_pertanyaan` (`ID_pertanyaan`, `pertanyaan`, `nilai`) VALUES
('P_001', 'Apakah anda mengalami demam ?', 100),
('P_002', 'Apakah anda mengalami batuk/pilek atau keduanya ?', 12.5),
('P_003', 'Apakah anda mengalami penurunan kemampuan penciuman dan pengecap ?', 100),
('P_004', 'Apakah anda mengalami nyeri tenggorokan ?', 12.5),
('P_005', 'Apakah anda mengalami lemah, letih dan lesu ?', 12.5),
('P_006', 'Apakah anda mengalami sesak nafas ?', 100),
('P_007', 'Apakah ada anggota keluarga anda yang memiliki gejala pilek/demam/batuk/sesak nafas/lemas ?', 12.5),
('P_008', 'Apakah anda pergi ketempat perbelanjaan ? (Mall, Pasar Tradisional, Supermarket)', 12.5),
('P_009', 'Apakah anda mengujungi fasilitas kesehatan ? (Klinik, Puskesmas, Rumah Sakit, Tempat Praktek Dokter, Pengobatan)', 12.5),
('P_010', 'Apakah anda pergi ke tempat kuliner ? (Warung, Pujasera, Cafe, Restoran) ', 12.5),
('P_011', 'Apakah anda bepergian keluar kota( pengecualian untuk kota2 sbb: sidoarjo, gresik, jombang, lamongan dan mojokerto diperbolehkan dgn menggunakan kendaraan pribadi)', 12.5),
('P_012', 'Apakah dalam 3 hari ini, anda melayat atau menghadiri pemakaman keluarga atau teman ?', 100),
('P_013', 'Apakah anda kontak dengan orang terjangkit Covid', 19);

-- --------------------------------------------------------

--
-- Table structure for table `data_pertanyaan_survey`
--

DROP TABLE IF EXISTS `data_pertanyaan_survey`;
CREATE TABLE `data_pertanyaan_survey` (
  `ID_survey` varchar(255) NOT NULL,
  `ID_pertanyaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `data_survey`
--

DROP TABLE IF EXISTS `data_survey`;
CREATE TABLE `data_survey` (
  `ID_survey` int(255) NOT NULL,
  `NIK` varchar(255) NOT NULL,
  `tanggal_isi` date NOT NULL,
  `skor` int(100) NOT NULL,
  `phone_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_survey`
--

INSERT INTO `data_survey` (`ID_survey`, `NIK`, `tanggal_isi`, `skor`, `phone_number`) VALUES
(1, '12345', '2022-05-16', 20, ''),
(4, '12345', '2022-05-24', 50, ''),
(5, 'hasil_sql[0][0]', '2022-05-30', 8, ''),
(6, 'hasil_sql[0][0]', '2022-05-30', 2, ''),
(7, '312236577978567', '2022-06-01', 5, ''),
(8, '312236577978567', '2022-06-01', 6, '+62895800288077');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE `karyawan` (
  `nik` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `phone_number`) VALUES
('12345', 'tes', ''),
('312236577978567', 'Hani', '+62895800288077');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_survey`
--
ALTER TABLE `data_survey`
  ADD PRIMARY KEY (`ID_survey`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_survey`
--
ALTER TABLE `data_survey`
  MODIFY `ID_survey` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
