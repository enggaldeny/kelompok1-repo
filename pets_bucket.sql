-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2017 at 06:31 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pets_bucket`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_akun`
--

CREATE TABLE `tb_akun` (
  `akn_id` int(11) NOT NULL,
  `akn_nama` varchar(30) NOT NULL,
  `akn_hp` varchar(15) NOT NULL,
  `akn_email` varchar(30) NOT NULL,
  `akn_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_akun_penjual`
--

CREATE TABLE `tb_akun_penjual` (
  `pjl_id` varchar(5) NOT NULL,
  `akn_id` int(11) NOT NULL,
  `pjl_nama_usaha` varchar(30) NOT NULL,
  `pjl_alamat` varchar(50) NOT NULL,
  `pjl_hp` varchar(15) NOT NULL,
  `pjl_deskripsi` text NOT NULL,
  `pjl_gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `ktg_id` varchar(5) NOT NULL,
  `ktg_nama` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `prd_id` varchar(7) NOT NULL,
  `ktg_id` varchar(5) NOT NULL,
  `pjl_id` varchar(5) NOT NULL,
  `prd_nama` varchar(30) NOT NULL,
  `prd_stok` int(11) NOT NULL,
  `prd_satuan` varchar(10) NOT NULL,
  `prd_harga` int(11) NOT NULL,
  `prd_deskripsi` text NOT NULL,
  `prd_gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_rek_penjual`
--

CREATE TABLE `tb_rek_penjual` (
  `pjl_id` varchar(5) NOT NULL,
  `rek_penjual` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_akun`
--
ALTER TABLE `tb_akun`
  ADD PRIMARY KEY (`akn_id`);

--
-- Indexes for table `tb_akun_penjual`
--
ALTER TABLE `tb_akun_penjual`
  ADD PRIMARY KEY (`pjl_id`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`ktg_id`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`prd_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_akun`
--
ALTER TABLE `tb_akun`
  MODIFY `akn_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
