-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2020 at 04:06 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelanggaran_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pelang_siswa`
--

CREATE TABLE `detail_pelang_siswa` (
  `id_pelang_siswa` int(11) NOT NULL,
  `id_pelang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pelang_siswa`
--

INSERT INTO `detail_pelang_siswa` (`id_pelang_siswa`, `id_pelang`) VALUES
(3, 4),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id_pelang` int(11) NOT NULL,
  `nama_pelanggar` varchar(300) NOT NULL,
  `poin` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggaran`
--

INSERT INTO `pelanggaran` (`id_pelang`, `nama_pelanggar`, `poin`) VALUES
(1, 'telat', 5),
(2, 'tidak memakai seragam', 20),
(3, 'mencontek', 50),
(4, 'tidak mendengarkan guru', 25),
(5, 'tidur di kelas', 10),
(6, 'membuat gaduh', 10);

-- --------------------------------------------------------

--
-- Table structure for table `pelang_siswa`
--

CREATE TABLE `pelang_siswa` (
  `id_pelang_siswa` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelang_siswa`
--

INSERT INTO `pelang_siswa` (`id_pelang_siswa`, `waktu`, `id_siswa`, `id_user`) VALUES
(1, '2020-11-10 00:00:00', 6, 1),
(2, '2020-11-26 00:00:00', 2, 6),
(3, '0000-00-00 00:00:00', 3, 1),
(4, '0000-00-00 00:00:00', 3, 1),
(5, '0000-00-00 00:00:00', 3, 1),
(9, '0000-00-00 00:00:00', 3, 1),
(10, '2020-11-29 07:44:00', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama_siswa` varchar(300) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `poin` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nis`, `nama_siswa`, `kelas`, `poin`) VALUES
(1, '5852/8739.098', 'Neta Minkhatul', 'XII RPL3', 1),
(2, '9873/8374.983', 'Nataysa Putri', 'XII RPL 7', 1),
(3, '9847823', 'Ristina', '9', 2),
(4, '5853/7865.876', 'Alya Selvia', 'XII RPL 4', 1),
(5, '5852/7632.879', 'Lathifinda Rosari', 'XII RPL 4', 1),
(6, '5852/8739.098', 'Hanalda Bunga', 'XII RPL 2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`) VALUES
(1, 'puji', 'puji', 'f5e4b33c633b204ea454d36543559011'),
(2, 'toni', 'toni', 'aefe34008e63f1eb205dc4c4b8322253'),
(3, 'lulu', 'lulu', '654e4dc5b90b7478671fe6448cab3f32'),
(4, 'bento', 'bento', '522a8b7e7d4bc0f4218bd930e51afb8d'),
(5, 'tina', 'tina', 'ef2afe0ea76c76b6b4b1ee92864c4d5c'),
(6, 'kiano', 'kiano', '416bab2739d06c6af8783b5d39153c58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pelang_siswa`
--
ALTER TABLE `detail_pelang_siswa`
  ADD KEY `id_pelang_siswa` (`id_pelang_siswa`),
  ADD KEY `id_pelang` (`id_pelang`);

--
-- Indexes for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`id_pelang`);

--
-- Indexes for table `pelang_siswa`
--
ALTER TABLE `pelang_siswa`
  ADD PRIMARY KEY (`id_pelang_siswa`),
  ADD KEY `id_siswa` (`id_siswa`,`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelanggaran`
--
ALTER TABLE `pelanggaran`
  MODIFY `id_pelang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pelang_siswa`
--
ALTER TABLE `pelang_siswa`
  MODIFY `id_pelang_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pelang_siswa`
--
ALTER TABLE `detail_pelang_siswa`
  ADD CONSTRAINT `detail_pelang_siswa_ibfk_1` FOREIGN KEY (`id_pelang_siswa`) REFERENCES `pelang_siswa` (`id_pelang_siswa`),
  ADD CONSTRAINT `detail_pelang_siswa_ibfk_2` FOREIGN KEY (`id_pelang`) REFERENCES `pelanggaran` (`id_pelang`);

--
-- Constraints for table `pelang_siswa`
--
ALTER TABLE `pelang_siswa`
  ADD CONSTRAINT `pelang_siswa_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `pelang_siswa_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
