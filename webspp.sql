-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 10 Des 2024 pada 16.38
-- Versi server: 8.3.0
-- Versi PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webspp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `nama_admin` varchar(50) NOT NULL,
  `user_admin` varchar(50) NOT NULL,
  `pass_admin` varchar(50) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `user_admin`, `pass_admin`) VALUES
(8, 'Roofiq', 'roofiq', 'admin'),
(9, 'Dadan', 'dadan', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `angkatan`
--

DROP TABLE IF EXISTS `angkatan`;
CREATE TABLE IF NOT EXISTS `angkatan` (
  `id_angkatan` int NOT NULL AUTO_INCREMENT,
  `nama_angkatan` varchar(50) NOT NULL,
  `biaya` varchar(50) NOT NULL,
  PRIMARY KEY (`id_angkatan`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `angkatan`
--

INSERT INTO `angkatan` (`id_angkatan`, `nama_angkatan`, `biaya`) VALUES
(9, '2023/2024', '500000'),
(10, '2024/2025', '750000'),
(11, '2025/2026', '1000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE IF NOT EXISTS `jurusan` (
  `id_jurusan` int NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(4, 'TEKNIK INFORMATIKA'),
(5, 'SISTEM INFORMASI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

DROP TABLE IF EXISTS `kelas`;
CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `nama_kelas` varchar(50) NOT NULL,
  `kelas` int NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kelas`) VALUES
(16, '10A', 10),
(17, '10B', 10),
(18, '11A', 11),
(19, '11B', 11),
(20, '12A', 12),
(21, '12B', 12),
(22, '13A', 12),
(23, '1205', 12),
(24, '1305', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepala_sekolah`
--

DROP TABLE IF EXISTS `kepala_sekolah`;
CREATE TABLE IF NOT EXISTS `kepala_sekolah` (
  `id_kepsek` int NOT NULL AUTO_INCREMENT,
  `nama_kepsek` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `periode` int NOT NULL,
  PRIMARY KEY (`id_kepsek`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `kepala_sekolah`
--

INSERT INTO `kepala_sekolah` (`id_kepsek`, `nama_kepsek`, `periode`) VALUES
(2, 'Dadan', 2024);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

DROP TABLE IF EXISTS `pembayaran`;
CREATE TABLE IF NOT EXISTS `pembayaran` (
  `idspp` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int NOT NULL,
  `jatuhtempo` varchar(50) NOT NULL,
  `bulan` varchar(50) NOT NULL,
  `nobayar` varchar(50) NOT NULL,
  `tglbayar` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `id_admin` int NOT NULL,
  `tahun` int NOT NULL,
  `kelas` int NOT NULL,
  PRIMARY KEY (`idspp`)
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`idspp`, `id_siswa`, `jatuhtempo`, `bulan`, `nobayar`, `tglbayar`, `jumlah`, `ket`, `id_admin`, `tahun`, `kelas`) VALUES
(191, 16, '2025', 'Semester 1 ', '', '', '1000000', 'BELUM DIBAYAR', 0, 2025, 10),
(192, 16, '2025', 'Semester 2 ', '', '', '1000000', 'BELUM DIBAYAR', 0, 2025, 10),
(193, 16, '2025', 'Semester 3 ', '', '', '1000000', 'BELUM DIBAYAR', 0, 2025, 10),
(194, 16, '2025', 'Semester 4 ', '', '', '1000000', 'BELUM DIBAYAR', 0, 2025, 10),
(195, 16, '2025', 'Semester 5 ', '', '', '1000000', 'BELUM DIBAYAR', 0, 2025, 10),
(196, 16, '2025', 'Semester 6 ', '', '', '1000000', 'BELUM DIBAYAR', 0, 2025, 10),
(197, 16, '2025', 'Semester 7 ', '', '', '1000000', 'BELUM DIBAYAR', 0, 2025, 10),
(198, 16, '2025', 'Semester 8 ', '', '', '1000000', 'BELUM DIBAYAR', 0, 2025, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

DROP TABLE IF EXISTS `profil`;
CREATE TABLE IF NOT EXISTS `profil` (
  `id_profile` int NOT NULL AUTO_INCREMENT,
  `nama_profile` varchar(100) NOT NULL,
  `hp` varchar(30) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_profile`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`id_profile`, `nama_profile`, `hp`, `alamat`, `logo`) VALUES
(14, 'Suzuki RMK', '08977527549', 'Kebon Jeruk', '383031223_png.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

DROP TABLE IF EXISTS `siswa`;
CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` int NOT NULL AUTO_INCREMENT,
  `nisn` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_angkatan` varchar(50) NOT NULL,
  `id_jurusan` int NOT NULL,
  `id_kelas` int NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nisn`, `nama`, `id_angkatan`, `id_jurusan`, `id_kelas`, `alamat`) VALUES
(16, '20241210091334', 'Rahmat', '2025/2026', 4, 16, 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswatemp`
--

DROP TABLE IF EXISTS `siswatemp`;
CREATE TABLE IF NOT EXISTS `siswatemp` (
  `nisn` varchar(25) NOT NULL,
  `kls10` varchar(10) NOT NULL,
  `kls11` varchar(10) NOT NULL,
  `kls12` varchar(10) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  PRIMARY KEY (`nisn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `siswatemp`
--

INSERT INTO `siswatemp` (`nisn`, `kls10`, `kls11`, `kls12`, `tahun`) VALUES
('20241209064119', '10B', '', '', '2025/2026'),
('20241209085828', '', '', '13A', '2025/2026'),
('20241209090007', '', '', '13A', '2025/2026'),
('20241210091334', '10A', '', '', '2025/2026');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
