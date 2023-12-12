-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Des 2023 pada 15.45
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bukutamu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(5) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `namalengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`) VALUES
(6, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'erick irwansyah'),
(7, 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'ANASTASIA ARDHIANI WIDOYOKO PUTRI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `idanggota` int(5) NOT NULL,
  `noanggota` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`idanggota`, `noanggota`, `nama`, `instansi`, `alamat`, `foto`) VALUES
(6, '1809290002', 'ERICK IRWANSYAH', 'UNIVERSITAS DEHASE', 'SUKARAJA', '5bafa15f063a9.jpg'),
(7, '1809290003', 'meyki ardiansyah', 'umb', 'lubuk sahung', '5bafa5ecce58a.jpg'),
(8, '1809300001', 'japriansyah', 'unib', 'merawan 12', '5bb047f504a9f.jpg'),
(9, '1809300002', 'reza ardiansyah', 'sd it rabani', 'bengkulu', '5bb07a54d2e49.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu_anggota`
--

CREATE TABLE `tamu_anggota` (
  `idtamu` int(5) NOT NULL,
  `noanggota` varchar(12) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tglkunjung` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tamu_anggota`
--

INSERT INTO `tamu_anggota` (`idtamu`, `noanggota`, `nama`, `tglkunjung`, `tujuan`) VALUES
(12, '1809290002', 'erick irwansyah', '2023-12-12', 'kunjungan biasa membaca');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tamu_non_anggota`
--

CREATE TABLE `tamu_non_anggota` (
  `idtamu` int(5) NOT NULL,
  `namatamu` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `tglkunjung` varchar(10) NOT NULL,
  `tujuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tamu_non_anggota`
--

INSERT INTO `tamu_non_anggota` (`idtamu`, `namatamu`, `alamat`, `instansi`, `tglkunjung`, `tujuan`) VALUES
(7, 'anastasia', 'semarang', 'smk', '2023-12-12', 'tugas kuliah');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`idanggota`);

--
-- Indeks untuk tabel `tamu_anggota`
--
ALTER TABLE `tamu_anggota`
  ADD PRIMARY KEY (`idtamu`),
  ADD KEY `noanggota` (`noanggota`);

--
-- Indeks untuk tabel `tamu_non_anggota`
--
ALTER TABLE `tamu_non_anggota`
  ADD PRIMARY KEY (`idtamu`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `idanggota` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tamu_anggota`
--
ALTER TABLE `tamu_anggota`
  MODIFY `idtamu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tamu_non_anggota`
--
ALTER TABLE `tamu_non_anggota`
  MODIFY `idtamu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
