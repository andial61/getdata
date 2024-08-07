-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Agu 2024 pada 06.37
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
-- Database: `tampil_barang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` double NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`kode_produk`, `nama`, `harga`, `kategori`, `deskripsi`, `gambar`) VALUES
('P001', 'Laptop Gaming XYZ', 15000000, 'Elektronik', 'Laptop gaming dengan spesifikasi tinggi untuk permainan berat.', '/img/laptop.jpeg'),
('P002', 'Smartphone ABC', 3500000, 'Elektronik', 'Smartphone terbaru dengan kamera berkualitas tinggi dan baterai tahan lama.', '/img/smartphone.jpeg'),
('P003', 'Kursi Ergonomis', 750000, 'Furniture', 'Kursi ergonomis dengan desain modern dan nyaman untuk bekerja.', '/img/kursi.jpeg'),
('P004', 'Meja Kerja', 1200000, 'Furniture', 'Meja kerja kayu dengan desain minimalis dan ruang penyimpanan ekstra.', '/img/meja.jpeg'),
('P005', 'Kamera DSLR DEF', 12000000, 'Elektronik', 'Kamera DSLR dengan lensa berkualitas tinggi untuk fotografi profesional.', '/img/kamera.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
