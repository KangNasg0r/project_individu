-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Bulan Mei 2025 pada 15.27
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_individu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kd_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jenis_barang` varchar(20) NOT NULL,
  `harga_beli` int(12) NOT NULL,
  `harga_jual` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`kd_barang`, `nama_barang`, `jenis_barang`, `harga_beli`, `harga_jual`) VALUES
('B01', 'Bakso', 'Makanan', 20000, 25000),
('B02', 'Mie Ayam', 'Makanan', 15000, 20000),
('B03', 'Es Teh Manis', 'Minuman', 3000, 5000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_isi`
--

CREATE TABLE `tb_isi` (
  `id_nota` varchar(10) NOT NULL,
  `kd_barang` varchar(10) NOT NULL,
  `h_beli` int(20) NOT NULL,
  `h_jual` int(20) NOT NULL,
  `qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kasir`
--

CREATE TABLE `tb_kasir` (
  `id_kasir` char(10) NOT NULL,
  `nama_kasir` char(30) NOT NULL,
  `jk_kasir` char(15) NOT NULL,
  `telp_kasir` char(15) NOT NULL,
  `agama_kasir` char(15) NOT NULL,
  `alamat_kasir` text NOT NULL,
  `password_kasir` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kasir`
--

INSERT INTO `tb_kasir` (`id_kasir`, `nama_kasir`, `jk_kasir`, `telp_kasir`, `agama_kasir`, `alamat_kasir`, `password_kasir`) VALUES
('K1', 'Yoga', 'Laki-Laki', '0812341234', 'Islam', 'Jakarta,Indonesia', '123'),
('K2', 'Ahmad', 'Laki-Laki', '0812341234', 'Islam', 'Jakarta,Indonesia', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nota`
--

CREATE TABLE `tb_nota` (
  `id_nota` varchar(10) NOT NULL,
  `tgl_nota` date NOT NULL,
  `id_pel` varchar(10) NOT NULL,
  `id_kasir` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pel` char(10) NOT NULL,
  `nama_pel` char(25) NOT NULL,
  `jk_pel` char(15) NOT NULL,
  `telp_pel` char(15) NOT NULL,
  `alamat_pel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pel`, `nama_pel`, `jk_pel`, `telp_pel`, `alamat_pel`) VALUES
('P01', 'Mas Elon', 'Laki-Laki', '08123123', 'Garut'),
('P02', 'Mba Nana', 'Perempuan', '0811111', 'Bekasi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kd_barang`);

--
-- Indeks untuk tabel `tb_kasir`
--
ALTER TABLE `tb_kasir`
  ADD PRIMARY KEY (`id_kasir`);

--
-- Indeks untuk tabel `tb_nota`
--
ALTER TABLE `tb_nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indeks untuk tabel `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
