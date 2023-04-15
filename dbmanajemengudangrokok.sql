-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 01:57 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmanajemengudangrokok`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id_Admin` varchar(15) NOT NULL,
  `Id_Pegawai` varchar(15) NOT NULL,
  `Email_Pengguna` varchar(50) NOT NULL,
  `Role` varchar(20) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `Id_Barang` varchar(15) NOT NULL,
  `Id_BarangMasuk` varchar(15) NOT NULL,
  `Kode_Barang` varchar(15) NOT NULL,
  `Id_admin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barangkeluar`
--

CREATE TABLE `barangkeluar` (
  `Id_BarangKeluar` varchar(15) NOT NULL,
  `Id_Penjualan` varchar(15) NOT NULL,
  `Tanggal_Keluar` date NOT NULL,
  `Jumlah` varchar(15) NOT NULL,
  `Id_admin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barangreturnpembelian`
--

CREATE TABLE `barangreturnpembelian` (
  `Id_BarangReturnPembelian` varchar(15) NOT NULL,
  `Id_Barang` varchar(15) NOT NULL,
  `Tanggal_Return` date NOT NULL,
  `Id_admin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barangreturnpenjualan`
--

CREATE TABLE `barangreturnpenjualan` (
  `Id_BarangReturnPenjualan` varchar(15) NOT NULL,
  `Tanggal_Return` date NOT NULL,
  `Id_Outlet` varchar(15) NOT NULL,
  `Id_Barang` varchar(15) NOT NULL,
  `Id_admin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `Id_BarangMasuk` varchar(15) NOT NULL,
  `Jumlah` varchar(15) NOT NULL,
  `Tanggal_Masuk` date NOT NULL,
  `Id_Pembelian` varchar(15) NOT NULL,
  `Id_admin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `Id_Kategori` varchar(15) NOT NULL,
  `Kategori` varchar(25) NOT NULL,
  `Id_Barang` varchar(15) NOT NULL,
  `Id_admin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE `outlet` (
  `Id_Outlet` varchar(15) NOT NULL,
  `Nama_Outlet` varchar(50) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_Telp` varchar(15) NOT NULL,
  `Id_Pengiriman` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `Id_Pegawai` varchar(15) NOT NULL,
  `Nama_Pegawai` varchar(50) NOT NULL,
  `Alamat` varchar(25) NOT NULL,
  `No_Telp` varchar(15) NOT NULL,
  `Jenis_Kelamin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelianbarang`
--

CREATE TABLE `pembelianbarang` (
  `Id_Pembelian` varchar(15) NOT NULL,
  `Id_Supplier` varchar(15) NOT NULL,
  `Nama_Barang` varchar(25) NOT NULL,
  `Jumlah` varchar(15) NOT NULL,
  `Tanggal_Pembelian` date NOT NULL,
  `Harga_Pembelian` int(11) NOT NULL,
  `Id_admin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `Id_Pengiriman` varchar(15) NOT NULL,
  `Tanggal_Pengiriman` date NOT NULL,
  `Id_BarangKeluar` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualanbarang`
--

CREATE TABLE `penjualanbarang` (
  `Id_Penjualan` varchar(15) NOT NULL,
  `Id_Outlet` varchar(15) NOT NULL,
  `Id_StokBarang` varchar(15) NOT NULL,
  `Jumlah` varchar(15) NOT NULL,
  `Tanggal_Penjualan` date NOT NULL,
  `Harga_Penjualan` int(11) NOT NULL,
  `Id_admin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stokbarang`
--

CREATE TABLE `stokbarang` (
  `Id_StokBarang` varchar(15) NOT NULL,
  `Id_Kategori` varchar(15) NOT NULL,
  `Stok_Barang` varchar(15) NOT NULL,
  `Id_admin` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `Id_Supplier` varchar(15) NOT NULL,
  `Nama_Supplier` varchar(50) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_Telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id_Admin`),
  ADD KEY `Id_Pegawai` (`Id_Pegawai`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Id_Barang`),
  ADD KEY `Id_BarangMasuk` (`Id_BarangMasuk`),
  ADD KEY `Id_admin` (`Id_admin`);

--
-- Indexes for table `barangkeluar`
--
ALTER TABLE `barangkeluar`
  ADD PRIMARY KEY (`Id_BarangKeluar`),
  ADD KEY `Id_Penjualan` (`Id_Penjualan`),
  ADD KEY `Id_admin` (`Id_admin`);

--
-- Indexes for table `barangreturnpembelian`
--
ALTER TABLE `barangreturnpembelian`
  ADD PRIMARY KEY (`Id_BarangReturnPembelian`),
  ADD KEY `Id_Barang` (`Id_Barang`),
  ADD KEY `Id_admin` (`Id_admin`);

--
-- Indexes for table `barangreturnpenjualan`
--
ALTER TABLE `barangreturnpenjualan`
  ADD PRIMARY KEY (`Id_BarangReturnPenjualan`),
  ADD KEY `Id_Admin` (`Id_Outlet`,`Id_Barang`),
  ADD KEY `Id_Barang` (`Id_Barang`),
  ADD KEY `Id_admin_2` (`Id_admin`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`Id_BarangMasuk`),
  ADD KEY `Id_Pembelian` (`Id_Pembelian`),
  ADD KEY `Id_admin` (`Id_admin`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`Id_Kategori`),
  ADD KEY `Id_Barang` (`Id_Barang`),
  ADD KEY `Id_admin` (`Id_admin`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`Id_Outlet`),
  ADD KEY `Id_Pengiriman` (`Id_Pengiriman`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`Id_Pegawai`);

--
-- Indexes for table `pembelianbarang`
--
ALTER TABLE `pembelianbarang`
  ADD PRIMARY KEY (`Id_Pembelian`),
  ADD KEY `Id_Supplier` (`Id_Supplier`),
  ADD KEY `Id_admin` (`Id_admin`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`Id_Pengiriman`),
  ADD KEY `Id_BarangKeluar` (`Id_BarangKeluar`);

--
-- Indexes for table `penjualanbarang`
--
ALTER TABLE `penjualanbarang`
  ADD PRIMARY KEY (`Id_Penjualan`),
  ADD KEY `Id_Outlet` (`Id_Outlet`,`Id_StokBarang`),
  ADD KEY `Id_StokBarang` (`Id_StokBarang`),
  ADD KEY `Id_admin` (`Id_admin`);

--
-- Indexes for table `stokbarang`
--
ALTER TABLE `stokbarang`
  ADD PRIMARY KEY (`Id_StokBarang`),
  ADD KEY `Id_Kategori` (`Id_Kategori`),
  ADD KEY `Id_admin` (`Id_admin`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`Id_Supplier`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Id_Pegawai`) REFERENCES `pegawai` (`Id_Pegawai`);

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`Id_BarangMasuk`) REFERENCES `barang_masuk` (`Id_BarangMasuk`),
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`Id_admin`) REFERENCES `admin` (`Id_Admin`);

--
-- Constraints for table `barangkeluar`
--
ALTER TABLE `barangkeluar`
  ADD CONSTRAINT `barangkeluar_ibfk_2` FOREIGN KEY (`Id_Penjualan`) REFERENCES `penjualanbarang` (`Id_Penjualan`),
  ADD CONSTRAINT `barangkeluar_ibfk_3` FOREIGN KEY (`Id_admin`) REFERENCES `admin` (`Id_Admin`);

--
-- Constraints for table `barangreturnpembelian`
--
ALTER TABLE `barangreturnpembelian`
  ADD CONSTRAINT `barangreturnpembelian_ibfk_2` FOREIGN KEY (`Id_Barang`) REFERENCES `barang` (`Id_Barang`),
  ADD CONSTRAINT `barangreturnpembelian_ibfk_3` FOREIGN KEY (`Id_admin`) REFERENCES `admin` (`Id_Admin`);

--
-- Constraints for table `barangreturnpenjualan`
--
ALTER TABLE `barangreturnpenjualan`
  ADD CONSTRAINT `barangreturnpenjualan_ibfk_1` FOREIGN KEY (`Id_Outlet`) REFERENCES `outlet` (`Id_Outlet`),
  ADD CONSTRAINT `barangreturnpenjualan_ibfk_3` FOREIGN KEY (`Id_Barang`) REFERENCES `barang` (`Id_Barang`),
  ADD CONSTRAINT `barangreturnpenjualan_ibfk_4` FOREIGN KEY (`Id_admin`) REFERENCES `admin` (`Id_Admin`);

--
-- Constraints for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD CONSTRAINT `barang_masuk_ibfk_2` FOREIGN KEY (`Id_Pembelian`) REFERENCES `pembelianbarang` (`Id_Pembelian`),
  ADD CONSTRAINT `barang_masuk_ibfk_3` FOREIGN KEY (`Id_admin`) REFERENCES `admin` (`Id_Admin`);

--
-- Constraints for table `kategori`
--
ALTER TABLE `kategori`
  ADD CONSTRAINT `kategori_ibfk_2` FOREIGN KEY (`Id_Barang`) REFERENCES `barang` (`Id_Barang`),
  ADD CONSTRAINT `kategori_ibfk_3` FOREIGN KEY (`Id_admin`) REFERENCES `admin` (`Id_Admin`);

--
-- Constraints for table `outlet`
--
ALTER TABLE `outlet`
  ADD CONSTRAINT `outlet_ibfk_1` FOREIGN KEY (`Id_Pengiriman`) REFERENCES `pengiriman` (`Id_Pengiriman`);

--
-- Constraints for table `pembelianbarang`
--
ALTER TABLE `pembelianbarang`
  ADD CONSTRAINT `pembelianbarang_ibfk_2` FOREIGN KEY (`Id_Supplier`) REFERENCES `supplier` (`Id_Supplier`),
  ADD CONSTRAINT `pembelianbarang_ibfk_3` FOREIGN KEY (`Id_admin`) REFERENCES `admin` (`Id_Admin`);

--
-- Constraints for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD CONSTRAINT `pengiriman_ibfk_1` FOREIGN KEY (`Id_BarangKeluar`) REFERENCES `barangkeluar` (`Id_BarangKeluar`);

--
-- Constraints for table `penjualanbarang`
--
ALTER TABLE `penjualanbarang`
  ADD CONSTRAINT `penjualanbarang_ibfk_2` FOREIGN KEY (`Id_StokBarang`) REFERENCES `stokbarang` (`Id_StokBarang`),
  ADD CONSTRAINT `penjualanbarang_ibfk_3` FOREIGN KEY (`Id_Outlet`) REFERENCES `outlet` (`Id_Outlet`),
  ADD CONSTRAINT `penjualanbarang_ibfk_4` FOREIGN KEY (`Id_admin`) REFERENCES `admin` (`Id_Admin`);

--
-- Constraints for table `stokbarang`
--
ALTER TABLE `stokbarang`
  ADD CONSTRAINT `stokbarang_ibfk_1` FOREIGN KEY (`Id_Kategori`) REFERENCES `kategori` (`Id_Kategori`),
  ADD CONSTRAINT `stokbarang_ibfk_2` FOREIGN KEY (`Id_admin`) REFERENCES `admin` (`Id_Admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
