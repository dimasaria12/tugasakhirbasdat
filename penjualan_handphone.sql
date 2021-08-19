-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2021 at 03:27 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_handphone`
--

-- --------------------------------------------------------

--
-- Table structure for table `desk_penjualan`
--

CREATE TABLE `desk_penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desk_penjualan`
--

INSERT INTO `desk_penjualan` (`id_transaksi`, `id_karyawan`, `id_produk`, `jumlah_beli`, `jumlah_harga`) VALUES
(1, 1, 1, 1, 3499000),
(2, 2, 2, 2, 3999000),
(3, 5, 3, 1, 3599000),
(4, 3, 3, 1, 3799000),
(5, 4, 4, 2, 3999000),
(6, 10, 6, 1, 4999000),
(7, 7, 7, 1, 5399000),
(8, 9, 8, 1, 4499000),
(9, 6, 9, 1, 3299000),
(10, 8, 10, 1, 5149000);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(30) NOT NULL,
  `jk_kelamin` char(1) DEFAULT NULL,
  `alamat_karyawan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `jk_kelamin`, `alamat_karyawan`) VALUES
(1, 'Joko', 'L', 'Depok'),
(2, 'Caesar', 'L', 'Jakarta Selatan'),
(3, 'Putri', 'P', 'Cilegon'),
(4, 'Rasya', 'P', 'Bandung'),
(5, 'Agus', 'L', 'Pandeglang'),
(6, 'Rose', 'P', 'Daerah Istimewa Yogyakarta'),
(7, 'Gumantar', 'L', 'Palembang'),
(8, 'Rahmat', 'L', 'Jakarta Timur'),
(9, 'Zara', 'P', 'Tangerang'),
(10, 'Nursari', 'P', 'Cirebon');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `nama_pembeli` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(1) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `nama_pembeli`, `jenis_kelamin`, `alamat`) VALUES
(1, 'Hadi', 'L', 'Bintaro, Tangerang Selatan'),
(2, 'Aulia', 'L', 'Kebayoran Lama, Jakarta Selatan'),
(3, 'Utami', 'P', 'Kasemen, Serang'),
(4, 'Tika', 'P', 'Cadasari, Pandeglang'),
(5, 'Annisa', 'P', 'Kebayoran Baru, Jakarta Selatan'),
(6, 'Retno', 'P', 'Buahbatu, Bandung'),
(7, 'Fajar', 'L', 'Sukajadi, Bandung'),
(8, 'Nurul', 'P', 'Tegalrejo, Daerah Istimewa Yogyakarta'),
(9, 'Rini', 'P', 'Lowokwaru, Malang'),
(10, 'Ilham', 'L', 'Padang Barat, Padang');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_transaksi` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_transaksi`, `id_pembelian`, `total_bayar`, `tanggal_transaksi`) VALUES
(1, 1, 3499000, '2021-06-13'),
(2, 2, 7998000, '2021-06-14'),
(3, 3, 3599000, '2021-06-15'),
(4, 4, 3799000, '2021-06-16'),
(5, 5, 7998000, '2021-06-17'),
(6, 6, 4999000, '2021-06-17'),
(7, 7, 5399000, '2021-06-19'),
(8, 8, 4499000, '2021-06-23'),
(9, 9, 3299000, '2021-06-26'),
(10, 10, 5149000, '2021-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(70) DEFAULT NULL,
  `harga_produk` varchar(70) NOT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `stok`) VALUES
(1, 'Xiaomi Poco X3 Pro 6/128 GB', '3499000', 80),
(2, 'Xiaomi Poco X3 Pro 8/256 GB', '3999000', 70),
(3, 'Xiaomi Redmi Note 10 Pro 6/64 GB', '3599000', 50),
(4, 'Xiaomi Redmi Note 10 Pro 6/128 GB', '3799000', 70),
(5, 'Xiaomi Redmi Note 10 Pro 8/128 GB', '3999000', 70),
(6, 'Samsung Galaxy A52 8/128 GB', '4999000', 80),
(7, 'Samsung Galaxy A52 8/256 GB', '5399000', 80),
(8, 'Realme 8 Pro 8/128 GB', '4499000', 70),
(9, 'Samsung Galaxy M32 8/128 GB', '3299000', 50),
(10, 'Samsung Galaxy M62 8/256 GB', '5149000', 60);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desk_penjualan`
--
ALTER TABLE `desk_penjualan`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `desk_penjualan`
--
ALTER TABLE `desk_penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
