-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2026 at 12:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `aspirasi`
--

CREATE TABLE `aspirasi` (
  `id_aspirasi` int(11) NOT NULL,
  `nis` int(10) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` enum('Menunggu','Proses','Selesai') DEFAULT 'Menunggu',
  `feedback` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aspirasi`
--

INSERT INTO `aspirasi` (`id_aspirasi`, `nis`, `id_kategori`, `lokasi`, `keterangan`, `status`, `feedback`, `tanggal`) VALUES
(6, 123456791, 2, 'SMK 2 Medan', 'Lingkungan Sudah bersi tinggal di perkuat tindakan para guru agar menjaga kebersihan lingkungan', 'Selesai', 'Monitor Segala kebersihan pada lingkungan sekolah', '2026-01-29'),
(10, 2147483647, 4, 'Lab', 'Peraturan keamanan Lab komputer wajib melaksanakan Keselamatan,keamanan dan Kesehatan Kerja (K3) ', 'Selesai', 'Peraturan keamanan selalu di prioritaskan sesuai SOP (Standard Operating Procedure)', '2026-01-29'),
(11, 1234567893, 2, 'Kantin', 'Kebersihan adlaha sebagian dari iman', 'Proses', 'Kebersihan segera dilaksanakan sesuai peraturan yang di terapkan sekolah', '2026-01-29'),
(12, 1234567894, 2, 'Kelas', 'Peraturan dalam kelas setiap pagi hari masuk sekolah dan pulang sekolah kebersihan kelas wajib di laksanakan untuk menjaga kesehatan dan kebersihan kelas pada lingkugan sekolah', 'Selesai', 'Kebersihan dapat menciptakan lingkungan yang sehat dan nyaman pada lingkungan kelas dan sekolah', '2026-01-29'),
(14, 1234567898, 4, 'Kelas', 'Peraturan kelas wajib di jaga keamanan oleh setiap peserta didik ', 'Proses', 'wali kelas monitor setiap kegiatan keamanan kelas bekerjasama dengan ketua kelas dan wakil ketua serta Sekretaris untuk keamana dan kenyamanan', '2026-01-29'),
(15, 1234567890, 3, 'Kelas', 'Guru lebih bijak lagi dalam menangani kondisi kelas', 'Proses', 'Sikap tegas bagi guru sangat diperlukan ketika saat mengajar di kelas', '2026-01-29'),
(18, 1234567896, 1, 'Kelas', 'Setiap Kelas harus mempunyai AC', 'Selesai', 'Pelaksanaan akan segera di terapkan di setiap kelas dalam penambahan fasilitas AC buat kenyamanan belajar peserta didik', '2026-01-29'),
(19, 1234567899, 1, 'Lab Komputer', 'Setiap ruangan lab komputer di sediakan AC agar siswa nyaman belajar', 'Proses', 'Aspirasi akan segera ditindak lanjuti oleh sekolah', '2026-01-29');

-- --------------------------------------------------------

--
-- Table structure for table `input aspirasi`
--

CREATE TABLE `input aspirasi` (
  `id_pelaporan` int(5) NOT NULL,
  `nis` int(10) DEFAULT NULL,
  `id_kategori` int(5) DEFAULT NULL,
  `lokasi` varchar(50) NOT NULL,
  `Ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `ket_kategori` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `ket_kategori`) VALUES
(1, 'Fasilitas'),
(2, 'Kebersihan'),
(3, 'Guru'),
(4, 'Keamanan');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nis` int(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama`, `kelas`) VALUES
(123456791, 'M Novel Keza', 'XII RPL 2'),
(1234567877, 'Dedi Yusuf', 'XII -RPL 1'),
(1234567888, 'Dito Sitompul', 'XII RPL 2'),
(1234567890, 'Suangli', 'XII RPL 2'),
(1234567893, 'Sandy Sihombing', 'XII RPL 1'),
(1234567894, 'Khumaira Siregar', 'XII-RPL 2'),
(1234567896, 'Raihan Adysa ', 'XII- RPL 1'),
(1234567898, 'Fahri Lubis', 'XII -RPL 2'),
(1234567899, 'Raja Yusuf Siregar', 'XII - TKJ'),
(2147483647, 'Bintang Kasih', 'XII RPL 1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` enum('admin','siswa') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `level`) VALUES
(5, 'suangli', '827ccb0eea8a706c4c34a16891f84e7b', 'admin'),
(6, 'siswa1', '827ccb0eea8a706c4c34a16891f84e7b', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aspirasi`
--
ALTER TABLE `aspirasi`
  ADD PRIMARY KEY (`id_aspirasi`),
  ADD KEY `nis` (`nis`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `input aspirasi`
--
ALTER TABLE `input aspirasi`
  ADD PRIMARY KEY (`id_pelaporan`),
  ADD KEY `nis` (`nis`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aspirasi`
--
ALTER TABLE `aspirasi`
  MODIFY `id_aspirasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `input aspirasi`
--
ALTER TABLE `input aspirasi`
  MODIFY `id_pelaporan` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aspirasi`
--
ALTER TABLE `aspirasi`
  ADD CONSTRAINT `aspirasi_ibfk_1` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`),
  ADD CONSTRAINT `aspirasi_ibfk_2` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `input aspirasi`
--
ALTER TABLE `input aspirasi`
  ADD CONSTRAINT `input aspirasi_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `aspirasi` (`id_kategori`),
  ADD CONSTRAINT `input aspirasi_ibfk_2` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
