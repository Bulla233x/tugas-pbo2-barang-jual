-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 09:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pbo2_tugas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `username` varchar(255) NOT NULL,
  `passowrd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`username`, `passowrd`) VALUES
('bulla23x', '350d132ebf977ad3de28abfbbe0fc148');

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE `data_barang` (
  `kode_barang` varchar(255) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `stok` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_pelanggan`
--

CREATE TABLE `data_pelanggan` (
  `kode_pelanggan` varchar(255) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_penjualan`
--

CREATE TABLE `data_penjualan` (
  `jumlah_transaksi` varchar(255) NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `kode_pelanggan` varchar(255) NOT NULL,
  `nomor_faktur` varchar(255) NOT NULL,
  `tgl_transaksi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `data_pelanggan`
--
ALTER TABLE `data_pelanggan`
  ADD PRIMARY KEY (`kode_pelanggan`);

--
-- Indexes for table `data_penjualan`
--
ALTER TABLE `data_penjualan`
  ADD PRIMARY KEY (`jumlah_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
