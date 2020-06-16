-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 19, 2019 at 11:49 PM
-- Server version: 10.0.38-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mule7148_ahpinklusi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alternatif`
--

CREATE TABLE `tbl_alternatif` (
  `alternatif_id` int(10) NOT NULL,
  `kriteria_id` int(10) NOT NULL,
  `siswa_id` int(10) DEFAULT NULL,
  `alternatif_nilai` int(2) DEFAULT NULL,
  `alternatif_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `alternatif_creator` varchar(30) DEFAULT NULL,
  `alternatif_updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `alternatif_updater` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_alternatif`
--

INSERT INTO `tbl_alternatif` (`alternatif_id`, `kriteria_id`, `siswa_id`, `alternatif_nilai`, `alternatif_created`, `alternatif_creator`, `alternatif_updated`, `alternatif_updater`) VALUES
(1, 1, 1, 1, '2019-01-27 14:51:46', NULL, '2019-01-27 14:51:46', NULL),
(2, 1, 2, 3, '2019-01-27 14:51:54', NULL, '2019-01-27 14:51:56', NULL),
(3, 1, 3, 5, '2019-01-27 14:52:12', NULL, '2019-01-27 14:52:19', NULL),
(4, 1, 4, 4, '2019-01-27 14:52:40', NULL, '2019-01-27 14:52:40', NULL),
(5, 1, 5, 2, '2019-01-27 14:52:50', NULL, '2019-01-27 14:53:29', NULL),
(6, 2, 1, 2, '2019-01-27 14:54:08', NULL, '2019-01-27 14:54:08', NULL),
(7, 2, 2, 1, '2019-01-27 14:54:16', NULL, '2019-01-27 14:54:16', NULL),
(8, 2, 3, 5, '2019-01-27 14:54:16', NULL, '2019-01-27 14:54:33', NULL),
(9, 2, 4, 4, '2019-01-27 14:54:16', NULL, '2019-01-27 14:54:33', NULL),
(10, 2, 5, 3, '2019-01-27 14:54:16', NULL, '2019-01-27 14:54:33', NULL),
(11, 3, 1, 2, '2019-01-27 14:54:16', NULL, '2019-01-27 14:54:33', NULL),
(12, 3, 2, 1, '2019-01-27 14:54:16', NULL, '2019-01-27 14:55:24', NULL),
(13, 3, 3, 3, '2019-01-27 14:54:16', NULL, '2019-01-27 14:55:32', NULL),
(14, 3, 4, 4, '2019-01-27 14:54:16', NULL, '2019-01-27 14:55:32', NULL),
(15, 3, 5, 5, '2019-01-27 14:54:16', NULL, '2019-02-05 20:37:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ketetapan`
--

CREATE TABLE `tbl_ketetapan` (
  `ketetapan_id` int(10) NOT NULL,
  `ketetapan_nama` varchar(50) NOT NULL,
  `ketetapan_n` int(10) NOT NULL,
  `ketetapan_nilai` double NOT NULL,
  `ketetapan_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ketetapan_creator` varchar(50) NOT NULL,
  `ketetapan_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ketetapan_updater` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ketetapan`
--

INSERT INTO `tbl_ketetapan` (`ketetapan_id`, `ketetapan_nama`, `ketetapan_n`, `ketetapan_nilai`, `ketetapan_created`, `ketetapan_creator`, `ketetapan_updated`, `ketetapan_updater`) VALUES
(1, 'Nilai Random Index', 1, 0, '2019-01-25 21:44:24', 'admin', '2019-01-25 21:44:29', 'admin'),
(2, 'Nilai Random Index', 2, 0, '2019-01-25 21:44:40', 'admin', '2019-01-25 21:44:40', ''),
(3, 'Nilai Random Index', 3, 0.58, '2019-01-25 21:45:00', 'admin', '2019-01-25 21:45:00', ''),
(4, 'Nilai Random Index', 4, 0.9, '2019-01-25 21:45:12', 'admin', '2019-01-25 21:45:12', ''),
(5, 'Nilai Random Index', 5, 1.12, '2019-01-25 21:45:23', 'admin', '2019-01-25 21:45:39', 'admin'),
(6, 'Nilai Random Index', 6, 1.24, '2019-01-25 21:46:14', 'admin', '2019-01-25 21:46:14', ''),
(7, 'Nilai Random Index', 7, 1.32, '2019-01-25 21:46:27', 'admin', '2019-01-25 21:46:27', ''),
(8, 'Nilai Random Index', 8, 1.41, '2019-01-25 21:46:38', 'admin', '2019-01-25 21:46:38', ''),
(9, 'Nilai Random Index', 9, 1.45, '2019-01-25 21:46:54', 'admin', '2019-01-25 21:46:54', ''),
(10, 'Nilai Random Index', 10, 1.49, '2019-01-25 21:47:05', 'admin', '2019-01-25 21:47:05', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kriteria`
--

CREATE TABLE `tbl_kriteria` (
  `kriteria_id` int(10) NOT NULL,
  `kriteria_nama` varchar(100) DEFAULT NULL,
  `kriteria_nilai` int(2) DEFAULT NULL,
  `kriteria_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `kriteria_creator` varchar(30) DEFAULT NULL,
  `kriteria_updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kriteria_updater` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_kriteria`
--

INSERT INTO `tbl_kriteria` (`kriteria_id`, `kriteria_nama`, `kriteria_nilai`, `kriteria_created`, `kriteria_creator`, `kriteria_updated`, `kriteria_updater`) VALUES
(1, 'Disleksia', 1, '2019-01-25 15:09:52', 'admin', '2019-01-25 16:36:53', 'admin'),
(2, 'Diskalkula', 3, '2019-01-25 15:10:31', 'admin', '2019-01-26 17:10:45', 'admin'),
(3, 'Disgrafia', 2, '2019-01-25 15:10:39', 'admin', '2019-01-26 17:10:48', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(10) NOT NULL,
  `siswa_nama` varchar(100) DEFAULT NULL,
  `siswa_kelas` varchar(30) DEFAULT NULL,
  `siswa_tanggallahir` date DEFAULT NULL,
  `siswa_agama` varchar(30) DEFAULT NULL,
  `siswa_jeniskelamin` varchar(30) DEFAULT NULL,
  `siswa_alamat` text,
  `siswa_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `siswa_creator` varchar(30) DEFAULT NULL,
  `siswa_updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `siswa_updater` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nama`, `siswa_kelas`, `siswa_tanggallahir`, `siswa_agama`, `siswa_jeniskelamin`, `siswa_alamat`, `siswa_created`, `siswa_creator`, `siswa_updated`, `siswa_updater`) VALUES
(1, 'Siswa 1', 'I', '1994-04-21', 'Islam', 'Laki-Laki', 'Jalan Nelayan', '2019-01-25 15:40:21', 'admin', '2019-01-27 20:56:37', NULL),
(2, 'Siswa 2', 'I', '1994-04-22', 'Islam', 'Laki-Laki', 'Jalan Petani', '2019-01-25 15:40:21', 'admin', '2019-01-27 20:56:40', NULL),
(3, 'Siswa 3', 'I', '1994-04-23', 'Islam', 'Laki-Laki', 'Jalan Pedagang', '2019-01-25 15:40:21', 'admin', '2019-01-27 20:56:41', NULL),
(4, 'Siswa 4', 'I', '2019-01-01', 'Islam', 'Laki-Laki', 'Jalan Perhubungan', '2019-01-26 09:46:29', 'admin', '2019-01-27 20:56:43', NULL),
(5, 'Siswa 5', 'I', '2019-01-11', 'Islam', 'Laki-Laki', 'Jalan Perniagaan', '2019-01-26 09:46:29', 'admin', '2019-01-27 20:56:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_fullname` varchar(200) DEFAULT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `user_email` varchar(200) DEFAULT NULL,
  `user_level` enum('admin','nonadmin') DEFAULT 'nonadmin',
  `user_aktif` int(10) DEFAULT '0',
  `user_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_creator` varchar(50) DEFAULT NULL,
  `user_updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_updater` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_name`, `user_fullname`, `user_password`, `user_email`, `user_level`, `user_aktif`, `user_created`, `user_creator`, `user_updated`, `user_updater`) VALUES
(1, 'admin', 'Admin Dongs', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', 'admin', 1, '2019-01-25 11:30:40', NULL, '2019-01-25 13:39:18', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_alternatif`
--
ALTER TABLE `tbl_alternatif`
  ADD PRIMARY KEY (`alternatif_id`),
  ADD KEY `FK_kriteria_id` (`kriteria_id`),
  ADD KEY `FK_siswa_id` (`siswa_id`);

--
-- Indexes for table `tbl_ketetapan`
--
ALTER TABLE `tbl_ketetapan`
  ADD PRIMARY KEY (`ketetapan_id`);

--
-- Indexes for table `tbl_kriteria`
--
ALTER TABLE `tbl_kriteria`
  ADD PRIMARY KEY (`kriteria_id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_nim` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_alternatif`
--
ALTER TABLE `tbl_alternatif`
  MODIFY `alternatif_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_ketetapan`
--
ALTER TABLE `tbl_ketetapan`
  MODIFY `ketetapan_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_kriteria`
--
ALTER TABLE `tbl_kriteria`
  MODIFY `kriteria_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_alternatif`
--
ALTER TABLE `tbl_alternatif`
  ADD CONSTRAINT `tbl_alternatif_ibfk_1` FOREIGN KEY (`kriteria_id`) REFERENCES `tbl_kriteria` (`kriteria_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_alternatif_ibfk_2` FOREIGN KEY (`siswa_id`) REFERENCES `tbl_siswa` (`siswa_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
