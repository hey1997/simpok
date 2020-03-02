-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 05:43 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simpok3`
--

-- --------------------------------------------------------

--
-- Table structure for table `item_id`
--

CREATE TABLE `item_id` (
  `item_id` int(3) NOT NULL,
  `nama_item` varchar(128) NOT NULL,
  `satuan_id` int(3) NOT NULL,
  `harga` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pok`
--

CREATE TABLE `pok` (
  `id` int(3) NOT NULL,
  `unit_kerja_id` int(3) NOT NULL,
  `prog_id` int(3) NOT NULL,
  `kegiatan_id` int(3) NOT NULL,
  `output_id` int(3) NOT NULL,
  `sub_output_id` int(3) NOT NULL,
  `komp_id` int(3) NOT NULL,
  `sub_komp_id` int(3) NOT NULL,
  `akun_id` int(3) NOT NULL,
  `detil_id` int(3) NOT NULL,
  `detil` varchar(1000) NOT NULL,
  `va` int(3) NOT NULL,
  `sat_a_id` int(3) NOT NULL,
  `vb` int(3) NOT NULL,
  `sat_b_id` int(3) NOT NULL,
  `vc` int(3) NOT NULL,
  `sat_c_id` int(3) NOT NULL,
  `vd` int(3) NOT NULL,
  `sat_d_id` int(3) NOT NULL,
  `volume` int(10) NOT NULL,
  `sat_id` int(3) NOT NULL,
  `harga_sat` int(15) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_akun`
--

CREATE TABLE `tbl_akun` (
  `akun_id` int(3) NOT NULL,
  `kode_akun` varchar(20) NOT NULL,
  `nama_akun` varchar(1000) NOT NULL,
  `sumber_dana_id` int(3) NOT NULL,
  `sub_komp_id` int(3) NOT NULL,
  `komp_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_akun`
--

INSERT INTO `tbl_akun` (`akun_id`, `kode_akun`, `nama_akun`, `sumber_dana_id`, `sub_komp_id`, `komp_id`) VALUES
(47, '511111', 'Belanja Gaji Pokok PNS\r\n', 3, 1, 2),
(48, '511119', 'Belanja Pembulatan Gaji PNS', 3, 1, 2),
(49, '511121', 'Belanja Tunj. Suami/Istri PNS', 3, 1, 2),
(50, '511122', 'Belanja Tunj. Anak PNS', 3, 1, 2),
(51, '511123', 'Belanja Tunj. Struktural PNS', 3, 1, 2),
(52, '511124', 'Belanja Tunj. Fungsional PNS', 3, 1, 2),
(53, '511125', 'Belanja Tunj. PPh PNS', 3, 1, 2),
(54, '511126', 'Belanja Tunj. Beras PNS', 3, 1, 2),
(55, '511129', 'Belanja Uang Makan PNS', 3, 1, 2),
(56, '511137', 'Belanja Tunj. Tugas Belajar Tenaga Pengajar Biasa pada PT untuk mengikuti Pendidikan Pascasarjana PNS', 3, 1, 2),
(57, '511151', 'Belanja Tunjangan Umum PNS', 3, 1, 2),
(58, '511153', 'Belanja Tunjangan Profesi Dosen', 3, 1, 2),
(59, '511154', 'Belanja Tunjangan Kehormatan Profesor', 3, 1, 2),
(60, '521111', 'Belanja Keperluan Perkantoran', 3, 94, 43),
(61, '521115', 'Belanja Honor Operasional Satuan Kerja', 3, 94, 43),
(62, '521119', 'Belanja Barang Operasional Lainnya', 3, 94, 43),
(63, '521811', 'Belanja Barang Persediaan Barang Konsumsi', 3, 94, 43),
(64, '522111', 'Belanja Langganan Listrik', 3, 94, 43),
(65, '522112', 'Belanja Langganan Telepon', 3, 94, 43),
(66, '522113', 'Belanja Langganan Air', 3, 94, 43),
(67, '523111', 'Belanja Pemeliharaan Gedung dan Bangunan', 3, 94, 43),
(68, '523112', 'Belanja Barang Persediaan Pemeliharaan Gedung dan Bangunan', 3, 94, 43),
(69, '523121', 'Belanja Pemeliharaan Peralatan dan Mesin', 3, 94, 43),
(70, '523123', 'Belanja Barang Persediaan Pemeliharaan Peralatan dan Mesin', 3, 94, 43),
(71, '524111', 'Belanja Perjalanan Dinas Biasa', 3, 94, 43);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detil`
--

CREATE TABLE `tbl_detil` (
  `detil_id` int(3) NOT NULL,
  `detil` varchar(200) NOT NULL,
  `akun_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_harga_satuan`
--

CREATE TABLE `tbl_harga_satuan` (
  `harga_satuan_id` int(3) NOT NULL,
  `harga_satuan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_harga_satuan`
--

INSERT INTO `tbl_harga_satuan` (`harga_satuan_id`, `harga_satuan`) VALUES
(1, '20000'),
(2, '30000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kegiatan`
--

CREATE TABLE `tbl_kegiatan` (
  `kegiatan_id` int(3) NOT NULL,
  `kode_kegiatan` varchar(20) NOT NULL,
  `nama_kegiatan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_kegiatan`
--

INSERT INTO `tbl_kegiatan` (`kegiatan_id`, `kode_kegiatan`, `nama_kegiatan`) VALUES
(1, '4257.', 'Dukungan Manajemen dan Pelaksanaan Tugas Teknis Lainnya Ditjen Pendidikan Tinggi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komp`
--

CREATE TABLE `tbl_komp` (
  `komp_id` int(3) NOT NULL,
  `kode_komp` varchar(20) NOT NULL,
  `nama_kom` varchar(1000) NOT NULL,
  `sumber_dana_id` int(3) NOT NULL,
  `output_id` int(3) NOT NULL,
  `sub_output_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_komp`
--

INSERT INTO `tbl_komp` (`komp_id`, `kode_komp`, `nama_kom`, `sumber_dana_id`, `output_id`, `sub_output_id`) VALUES
(1, '004', 'Dukungan Operasional Penyelenggaraan Pendidikan', 1, 0, 0),
(2, '001', 'Gaji dan Tunjangan', 3, 15, 0),
(3, '051', 'Penerimaan Mahasiswa Baru', 2, 0, 0),
(4, '052', 'Proses Belajar Mengajar', 2, 0, 0),
(5, '053', 'Wisuda dan Yudisium', 2, 0, 0),
(6, '056', 'Pengadaan Buku Pustaka dan Jurnal Pendukung Pendidikan', 2, 0, 0),
(7, '057', 'Administrasi Pendidikan', 2, 0, 0),
(8, '058', 'Unit Kegiatan Mahasiswa dan Organisasi Kemahasiswaan', 2, 0, 0),
(9, '059', 'Kegiatan Kemahasiwaan', 2, 0, 0),
(10, '060', 'Kompetisi/Lomba Mahasiswa', 2, 0, 0),
(11, '063', 'Pengembangan Kurikulum, Akreditasi dan Mutu Akademik', 2, 0, 0),
(12, '055', 'Pengadaan Buku Pustaka dan Jurnal Pendukung Pendidikan', 2, 0, 0),
(13, '064', 'Seminar/Pelatihan/Workshop Pengembangan Mutu SDM Tenaga Pendidik', 2, 0, 0),
(14, '065', 'Pembayaran Honorarium Tugas Tambahan dan Kelebihan Jam Mengajar', 2, 0, 0),
(15, '058', 'Pengembangan Kurikulum, Akreditasi dan Mutu Akademik', 2, 0, 0),
(16, '059', 'Pengembangan Kurikulum, Akreditasi dan Mutu Akademik', 2, 0, 0),
(17, '059', 'Seminar/Pelatihan/Workshop Pengembangan Mutu SDM Tenaga Pendidik', 2, 0, 0),
(18, '060', 'Seminar/Pelatihan/Workshop Pengembangan Mutu SDM Tenaga Pendidik', 2, 0, 0),
(19, '060', 'Pembayaran Honorarium Tugas Tambahan dan Kelebihan Jam Mengajar\r\n', 2, 0, 0),
(20, '052', 'Seleksi dan Penilaian Proposal Penelitian', 2, 0, 0),
(21, '053', 'Pelaksanaan Penelitian', 2, 0, 0),
(22, '054', 'Seminar dan Publikasi Penelitian\r\n', 2, 0, 0),
(23, '056', 'Penerbitan Jurnal', 2, 0, 0),
(24, '055', 'Monitoring dan Evaluasi Kegiatan Penelitian', 2, 0, 0),
(25, '057', 'Kemitraan dan Kerjasama Penelitian', 2, 0, 0),
(26, '052', 'Seleksi dan Penilaian Proposal Pengabdian kepada Masyarakat', 2, 0, 0),
(27, '053', 'Pelaksanaan Pengabdian kepada Masyarakat', 2, 0, 0),
(28, '055', 'Monitoring dan Evaluasi Kegiatan Pengabdian kepada Masyarakat', 2, 0, 0),
(29, '051', 'Pengadaan Alat Pendidikan Pendukung Pembelajaran', 2, 0, 0),
(30, '052', 'Pengadaan Peralatan Pendukung Pembelajaran', 2, 0, 0),
(31, '053', 'Pengadaan Meubelair Pendukung Pembelajaran', 2, 0, 0),
(32, '054', 'Pembangunan/Pemeliharaan Gedung dan Bangunan Pendukung Pembelajaran', 2, 0, 0),
(33, '051', 'Pengadaan Peralatan Pendukung Perkantoran', 2, 0, 0),
(34, '052', 'Pengadaan Meubelair Pendukung Perkantoran', 2, 0, 0),
(35, '053', 'Pembangunan/Pemeliharaan Gedung dan Bangunan Pendukung Perkantoran', 2, 0, 0),
(36, '055', 'Pengadaan Kendaraan Pendukung Perkantoran', 2, 0, 0),
(37, '051', 'Penyelenggaraan Operasional Perkantoran', 2, 0, 0),
(38, '056', 'Seminar/Pelatihan/Workshop Penjaminan Mutu SDM Tenaga Kependidikan', 2, 0, 0),
(39, '052', 'Pemeliharaan Sarana dan Prasarana Perkantoran', 2, 0, 0),
(40, '054', 'Pembayaran Honor Tenaga Kependidikan Non PNS', 2, 0, 0),
(41, '055', 'Seminar/Pelatihan/Workshop Penjaminan Mutu Kelembagaan/Organisasi', 2, 0, 0),
(42, '057', 'Penyusunan Dokumen/Laporan Sistem Tata Kelola dan Kelembagaan', 2, 0, 0),
(43, '002.', 'Operasional dan Pemeliharaan Kantor', 3, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_output`
--

CREATE TABLE `tbl_output` (
  `output_id` int(3) NOT NULL,
  `kode_output` varchar(20) NOT NULL,
  `nama_output` varchar(1000) NOT NULL,
  `sumber_dana_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_output`
--

INSERT INTO `tbl_output` (`output_id`, `kode_output`, `nama_output`, `sumber_dana_id`) VALUES
(1, '4257.002.', 'Dukungan Operasional PTN', 1),
(2, '4257.003.', 'Layanan Pembelajaran', 1),
(3, '4257.004.', 'Buku Pustaka', 1),
(4, '4257.005.', 'Laporan Kegiatan Mahasiswa', 1),
(5, '4257.006.', 'Layanan Pengembangan Sistem Tata Kelola, Kelembagaan dan SDM', 1),
(6, '4257.007.', 'Sarana dan Prasarana Pembelajaran', 1),
(7, '4257.008.', 'Operasional Rumah Sakit Pendidikan', 1),
(8, '4257.010.', 'Layanan Pendidikan', 2),
(9, '4257.011.', 'Penelitian', 2),
(10, '4257.012.', 'Pengabdian Masyarakat', 2),
(11, '4257.013.', 'Sarana/Prasarana Pendukung Pembelajaran ', 2),
(12, '4257.014.', 'Sarana/Prasarana Pendukung Perkantoran', 2),
(13, '4257.015.', 'Dukungan Layanan Pembelajaran', 2),
(14, '4257.016.', 'Operasional Rumah Sakit Pendidikan', 2),
(15, '4257.994.', 'Layanan Perkantoran', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prog`
--

CREATE TABLE `tbl_prog` (
  `prog_id` int(3) NOT NULL,
  `kode_program` varchar(20) NOT NULL,
  `nama_program` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_prog`
--

INSERT INTO `tbl_prog` (`prog_id`, `kode_program`, `nama_program`) VALUES
(1, '023.17.14.', '?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan`
--

CREATE TABLE `tbl_satuan` (
  `satuan_id` int(3) NOT NULL,
  `nama_satuan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`satuan_id`, `nama_satuan`) VALUES
(1, 'BH'),
(2, 'BLN'),
(3, 'BUKU'),
(4, 'HR'),
(5, 'JDL'),
(6, 'KEG'),
(7, 'KLPK'),
(8, 'LTR'),
(9, 'M2'),
(10, 'MDL'),
(11, 'MNGGU'),
(12, 'OB'),
(13, 'OH'),
(14, 'OK'),
(15, 'OM'),
(16, 'ORG'),
(17, 'OSTEL'),
(18, 'OT'),
(19, 'PKT'),
(20, 'SET'),
(21, 'THN'),
(22, 'UNIT'),
(23, 'OJ'),
(24, 'OP'),
(25, 'OR'),
(26, 'Oter'),
(27, 'OJP'),
(28, 'Per Paket'),
(29, 'Penelitian/Perekayasaan'),
(30, 'Orang Per Proposal'),
(31, 'Per Laporan'),
(32, 'Orang/Kali'),
(33, 'Per Peserta'),
(34, 'SKS/Hadir'),
(35, 'Orang/Mahasiswa'),
(36, 'Per Mahasiswa'),
(37, 'Per Mata Kuliah'),
(38, 'Mahasiswa/Semester'),
(39, 'Orang/Rotasi'),
(40, 'Jam/Hadir'),
(41, 'Per Naskah'),
(42, 'Orang/Mahasiswa/Semester'),
(43, 'Per Mahasiswa Lulus'),
(44, 'Orang/Mahasiswa/Bulan'),
(45, 'Judul'),
(46, 'Pasien/Jam'),
(47, 'Per Modul'),
(48, 'Per Program'),
(49, 'Per Pertemuan'),
(50, 'Per Butir Soal'),
(51, 'Per Tahun'),
(52, 'Per Bulan'),
(53, 'Per Hari'),
(54, 'Per Halaman'),
(55, 'Naskah/Pelajaran'),
(56, 'Mahasiswa/Mata Ujian'),
(57, '𝑚^3'),
(58, '〖𝑘𝑚/𝑚〗^3'),
(59, 'Unit'),
(60, 'Setel'),
(61, 'Pegawai/Tahun'),
(62, 'Unit/Tahun'),
(63, 'Halaman Jadi'),
(64, 'Satker/Tahun'),
(65, 'm^3/Tahun');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_detil`
--

CREATE TABLE `tbl_sub_detil` (
  `sub_detil_id` int(3) NOT NULL,
  `detil_id` int(3) NOT NULL,
  `item_id` int(3) NOT NULL,
  `jumlah` varchar(128) NOT NULL,
  `vol_a` int(3) NOT NULL,
  `sat_a_id` int(3) NOT NULL,
  `vol_b` int(3) NOT NULL,
  `sat_b_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_komp`
--

CREATE TABLE `tbl_sub_komp` (
  `sub_komp_id` int(3) NOT NULL,
  `kode_sub_komp` varchar(20) NOT NULL,
  `nama_sub_komp` varchar(1000) NOT NULL,
  `sumber_dana_id` int(11) NOT NULL,
  `komp_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sub_komp`
--

INSERT INTO `tbl_sub_komp` (`sub_komp_id`, `kode_sub_komp`, `nama_sub_komp`, `sumber_dana_id`, `komp_id`) VALUES
(1, 'A.', 'Pembayaran Gaji dan Tunjangan', 3, 2),
(2, 'A.', 'Pengadaan Tambahan Bahan Praktikum/Kuliah/Bahan Ajar', 1, 0),
(3, 'A.', 'Buku Pustaka', 1, 0),
(4, 'A.', 'Keikutsertaan Mahasiswa dalam Lomba/Kompetisi Mahasiswa', 1, 0),
(5, 'A.', 'Sosialisasi/Workshop/Koordinasi Program Kewirausahaan', 1, 0),
(6, 'A.', 'Audit Mutu Internal', 1, 0),
(7, 'A.', 'Evaluasi Kinerja Dosen', 1, 0),
(8, 'A.', 'Pengadaan Alat Laboratorium', 1, 0),
(9, 'A.', 'Pembangunan/Pemeliharaan Gedung dan Bangunan Pendukung Pembelajaran', 1, 0),
(10, 'A.', 'Mahasiswa Baru S1', 2, 0),
(11, 'A.', 'Mahasiswa Terdaftar S1', 2, 0),
(12, 'A.', 'Penerbitan dan Pencetakan Jurnal', 2, 0),
(13, 'A.', 'Penyusunan Proposal Prodi Baru', 2, 0),
(14, 'A.', 'Pertemuan Ilmiah/Workshop/Lokakarya/Evaluasi/Kursus oleh Fakultas', 2, 0),
(15, 'A.', 'Keikutsertaan Pertemuan Ilmiah (Seminar, Workshop, Lokakarya, FGD, Sarasehan) oleh Fakultas', 2, 0),
(16, 'A.', 'Mahasiswa Baru Pascasarjana', 2, 0),
(17, 'A.', 'Mahasiswa Terdaftar S2', 2, 0),
(18, 'A.', 'Penerbitan dan Pencetakan Jurnal', 2, 0),
(19, 'A.', 'Penyusunan Proposal Prodi Baru', 2, 0),
(20, 'A.', 'Pertemuan Ilmiah/Workshop/Lokakarya/Evaluasi/Kursus oleh Pascasarjana', 2, 0),
(21, 'A.', 'Desk Evaluasi Proposal Penelitian Desentralisasi Dikti', 2, 0),
(22, 'A.', 'Penugasan Pelaksanaan Penelitian', 2, 0),
(23, 'A.', 'Semiloka Penyusunan Proposal Penelitian dan PPM', 2, 0),
(24, 'A.', 'Monitoring dan Evaluasi Penugasan Proposal Penelitian Unggulan Unsrat', 2, 0),
(25, 'A.', 'Penerbitan Jurnal LPPM', 2, 0),
(26, 'A.', 'Dukungan Kerjasama Berbasis Penelitian dan Pendidikan', 2, 0),
(27, 'A.', 'Monitoring Eksternal Penugasan Pelaksanaan Pengabdian', 2, 0),
(28, 'A.', 'Pengadaan Alat Laboratorium', 2, 0),
(29, 'A.', 'Pengadaan Peralatan Pendukung Pembelajaran', 2, 0),
(30, 'A.', 'Pembangunan dan Pemeliharaan Gedung', 2, 0),
(31, 'A.', 'Perangkat Pengolah Data Penunjang Layanan Perkantoran', 2, 0),
(32, 'A.', 'Operasional Rumah Sakit Pendidikan', 2, 0),
(33, 'A.', 'Operasionalisasi/Pemeliharaan/Perbaikan Peralatan Kantor dan lab', 2, 0),
(34, 'A.', 'Updating Sistem Data dan Prosedur Pendataan dalam SIM', 2, 0),
(35, 'A.', 'Lokakarya/FGD/Sosialisasi', 2, 0),
(36, 'A.', 'Pengukuhan Guru Besar', 2, 0),
(37, 'B.', 'Langganan Daya dan Jasa', 1, 0),
(38, 'B.', 'Pengadaan Dosen Tamu/ Penyelenggaraan Kuliah Umum', 1, 0),
(39, 'B.', 'Pelatihan Penalaran (Program Kreatifitas Mahasiswa)', 1, 0),
(40, 'B.', 'Pemilihan Mahasiswa Berprestasi', 1, 0),
(41, 'B.', 'Monitoring dan Evaluasi Proses Pembelajaran', 1, 0),
(42, 'B.', 'Kegiatan LP3', 1, 0),
(43, 'B.', 'Pengadaan Meubelair', 1, 0),
(44, 'B.', 'Mahasiswa Terdaftar Profesi', 2, 0),
(45, 'B.', 'Langganan Jurnal', 2, 0),
(46, 'B.', 'Ijin/Perpanjangan Ijin/Akreditasi/Reakreditasi', 2, 0),
(47, 'B.', 'Keikutsertaan Pertemuan Ilmiah (Seminar, Workshop, Lokakarya, FGD, Sarasehan) ', 2, 0),
(48, 'B.', 'Mahasiswa Terdaftar S3', 2, 0),
(49, 'B.', 'Ijin/Perpanjangan Ijin/Akreditasi/Reakreditasi', 2, 0),
(50, 'B.', 'Keikutsertaan Pertemuan Ilmiah (Seminar, Workshop, Lokakarya, FGD, Sarasehan) ', 2, 0),
(51, 'B.', 'Mahasiswa Terdaftar S3', 2, 0),
(52, 'B.', 'Desk Evaluasi Proposal Penelitian Unggulan', 2, 0),
(53, 'B.', 'Sosialisasi Layanan Hak Kekayaan Intelektual (HKI)', 2, 0),
(54, 'B.', 'Monitoring dan Evaluasi Penugasan Proposal Penelitian Desentralisasi', 2, 0),
(55, 'B.', 'Pengadaan Alat Olahraga', 2, 0),
(56, 'B.', 'Perangkat Peralatan Lain Penunjang Layanan Pembelajaran', 2, 0),
(57, 'B.', 'Perangkat Peralatan Lain Penunjang Layanan Perkantoran', 2, 0),
(58, 'B.', 'Pengadaan Pakaian Toga/Pakaian Kerja Sopir/Pesuruh/Dokter/Satpam dan Tenaga Teknis lainnya ', 2, 0),
(59, 'B.', 'Pemeliharaan Gedung, Jaringan, Peralatan dan Mesin', 2, 0),
(60, 'B.', 'Pelatihan/Training Tenaga Kependidikan', 2, 0),
(61, 'B.', 'Kegiatan Pemilihan Tenaga Kependidikan dan Tenaga Pendidik Berprestasi', 2, 0),
(62, 'C.', 'Pembayaran Honor Tenaga Kependidikan Non PNS', 1, 0),
(63, 'C.', 'Pelatihan, Pembuatan dan Penambahan Modul Aplikasi Sistem Berbasis IT Pendukung Pembelajaran', 1, 0),
(64, 'C.', 'Revisi Dokumen Akademik dan Dokumen Mutu', 1, 0),
(65, 'C.', 'Pelatihan/Kursus Bahasa (UPT Bahasa)', 1, 0),
(66, 'C.', 'Pelaksanaan Program KKN-PPM', 2, 0),
(67, 'C.', 'BANTUAN PENULISAN BUKU/JURNAL INTERNASIONAL', 2, 0),
(68, 'C.', 'Mahasiswa Terdaftar Sp-1', 2, 0),
(69, 'C.', 'Pemaparan Hasil Desk Evaluasi Proposal Penelitian Desentralisasi Dikti', 2, 0),
(70, 'C.', 'Workshop Pengelola E Journal Universitas Sam Ratulangi', 2, 0),
(71, 'C.', 'Pengadaan Alat Kesenian', 2, 0),
(72, 'C.', 'Pengadaan Alat Laboratorium', 2, 0),
(73, 'C.', 'Pertemuan/Jamuan Delegasi/Misi/Tamu', 2, 0),
(74, 'C.', 'Kerjasama Dalam Negeri', 2, 0),
(75, 'C.', 'Pelatihan Pengembangan SDM Tenaga Kependidikan', 2, 0),
(76, 'C.', 'Penyusunan Rencana Program Kegiatan dan Anggaran', 2, 0),
(77, 'D.', 'Satuan Pengawas Internal', 1, 0),
(78, 'D.', 'Penyelenggaraan Bidik Misi', 2, 0),
(79, 'D.', 'Pengembangan Kurikulum dan ISO Fakultas', 2, 0),
(80, 'D.', 'Pemaparan Hasil Desk Evaluasi Proposal Penelitian Unggulan Unsrat', 2, 0),
(81, 'D.', 'Pengadaan Alat Kewirausahaan Mahasiswa', 2, 0),
(82, 'D.', 'Jasa Keamanan/Kebersihan', 2, 0),
(83, 'D.', 'Kerjasama Luar Negeri', 2, 0),
(84, 'D.', 'Pengelolaan Bidang Umum dan Keuangan', 2, 0),
(85, 'E.', 'Implementasi Sistem Penjaminan Mutu Internal', 1, 0),
(86, 'E.', 'Belanja Operasional Perkantoran dan Pimpinan', 2, 0),
(87, 'E.', 'Penyusunan Laporan Kinerja LAKIP', 2, 0),
(88, 'F.', 'Penyusunan Evaluasi Mutu Program Studi', 1, 0),
(89, 'F.', 'Penyusunan dan Penerbitan/Penayangan Data/Informasi/Website tentang Unsrat', 2, 0),
(90, 'G.', 'Ijin Perpanjangan/Tracer Study/Penyusunan Dokumen Evaluasi Diri', 1, 0),
(91, 'G.', 'Kegiatan Rapat-rapat/Koordinasi Tkt Universitas dan Fakultas', 2, 0),
(92, 'H.', 'Akreditasi/Reakreditasi dan Perpanjangan Ijin Program Studi', 1, 0),
(93, 'H.', 'Pembayaran Honorarium Tugas Tambahan', 2, 0),
(94, 'B', 'Non Gaji dan Tunjangan', 3, 43);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_output`
--

CREATE TABLE `tbl_sub_output` (
  `sub_output_id` int(3) NOT NULL,
  `kode_sub_output` varchar(20) NOT NULL,
  `nama_sub_output` varchar(1000) NOT NULL,
  `sumber_dana_id` int(3) NOT NULL,
  `output_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sub_output`
--

INSERT INTO `tbl_sub_output` (`sub_output_id`, `kode_sub_output`, `nama_sub_output`, `sumber_dana_id`, `output_id`) VALUES
(1, '2642.004.002.', 'Kegiatan Kemahasiswaan', 1, 0),
(2, '2642.004.003.', 'Kompetisi/Lomba Mahasiswa', 1, 0),
(3, '2642.004.004.', 'Kewirausahaan Mahasiswa', 1, 0),
(4, '2642.007.001.', 'Penjaminan Mutu Tata Kelola Kelembagaan dan Pendidikan', 1, 0),
(5, '2642.007.002.', 'Penjaminan Mutu Sumber Daya Manusia', 1, 0),
(6, '2642.008.001', 'Alat Pendidikan Pendukung Pembelajaran', 1, 0),
(7, '2642.008.003.', 'Meubelair Pendukung Pembelajaran', 1, 0),
(8, '2642.008.004.', 'Gedung dan Bangunan Pendukung Pembelajaran', 1, 0),
(9, '5742.001.002.', 'Layanan Pendidikan Program Sarjana', 2, 0),
(10, '5742.001.003.', 'Layanan Pendidikan Program Pascasarjana', 2, 0),
(23, '000', 'tanpa sub output', 3, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sumber_dana`
--

CREATE TABLE `tbl_sumber_dana` (
  `sumber_dana_id` int(3) NOT NULL,
  `nama_sumber_dana` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sumber_dana`
--

INSERT INTO `tbl_sumber_dana` (`sumber_dana_id`, `nama_sumber_dana`) VALUES
(1, 'BOPTN'),
(2, 'PNBP/BLU'),
(3, 'RM');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_unit_kerja`
--

CREATE TABLE `tbl_unit_kerja` (
  `unit_kerja_id` int(3) NOT NULL,
  `unit_kerja` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_unit_kerja`
--

INSERT INTO `tbl_unit_kerja` (`unit_kerja_id`, `unit_kerja`) VALUES
(1, 'Fakultas Kedokteran'),
(2, 'Fakultas Teknik'),
(3, 'Fakultas Pertanian'),
(4, 'Fakultas Peternakan'),
(5, 'Fakultas Perikanan dan Ilmu Kelautan'),
(6, 'Fakultas Ekonomi dan Bisnis'),
(7, 'Fakultas Hukum'),
(8, 'Fakultas Ilmu Sosial dan Politik'),
(9, 'Fakultas Matematika dan Ilmu Pengetahuan Alam'),
(10, 'Fakultas Ilmu Budaya'),
(11, 'Fakultas Kesehatan Masyarakat'),
(12, 'Pascasarjana'),
(13, 'Lembaga Penelitian dan Pengabdian kepada Masyarakat(LPPM)'),
(14, 'Lembaga Pembinaan dan Pengembangan Pembelajaran(LP3)'),
(15, 'Lembaga Penjaminan Mutu(LPM)'),
(16, 'UPT Bahasa'),
(17, 'UPT Perpustakaan'),
(18, 'UPT Kearsipan'),
(19, 'UPT Percetakan'),
(20, 'UPT Teknologi, Informasi dan Komunikasi'),
(21, 'UPT Laboratorium Terpadu'),
(22, 'UPT Layanan Internasional'),
(23, 'UPT Bimbingan Konseling'),
(24, 'Satuan Pengawas Internal'),
(25, 'Rumah Sakit Gigi dan Mulut (RSGM)'),
(26, 'Bidang Akademik'),
(27, 'Bidang Umum dan Keuangan'),
(28, 'Bidang Kemahasiswaan dan Alumni'),
(29, 'Bidang Perencanaan, Penganggaran dan Kerjasama');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(6, 'Heybert Rompas', 'rompas8888@gmail.com', 'default.jpg', '$2y$10$Rb4fZdTiJSVBatmeXhPtJO6csmFIbra9ZYpeW6qohQrGPn9U.JvtK', 2, 1, 1580783451),
(8, 'JOY HEYBERT ROMPAS', 'rompas7777@gmail.com', 'default.jpg', '$2y$10$Ne5bMMYD7dftQXZiPrgLnetxWPcMMSek3.zny3DPtGfz2ylqLU81K', 1, 1, 1580796108);

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(5, 1, 3),
(6, 1, 9),
(7, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'MENU'),
(9, 'POK'),
(11, 'Input');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member'),
(3, 'WR 4');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(6, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(7, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(15, 9, 'Referensi Anggaran', 'c_dashboard', 'fas fa-th', 1),
(16, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(17, 9, 'Tes', 'tes', 'fab fa-youtube', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `item_id`
--
ALTER TABLE `item_id`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `pok`
--
ALTER TABLE `pok`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pok_unit_kerja_id` (`unit_kerja_id`),
  ADD KEY `pok_prog_id` (`prog_id`),
  ADD KEY `pok_kegiatan_id` (`kegiatan_id`),
  ADD KEY `pok_output_id` (`output_id`),
  ADD KEY `pok_sub_output_id` (`sub_output_id`),
  ADD KEY `pok_komp_id` (`komp_id`),
  ADD KEY `pok_sub_komp` (`sub_komp_id`),
  ADD KEY `pok_akun` (`akun_id`),
  ADD KEY `pok_sat_a` (`sat_a_id`),
  ADD KEY `pok_sat_b` (`sat_b_id`),
  ADD KEY `pok_sat_c` (`sat_c_id`),
  ADD KEY `pok_sat` (`sat_id`),
  ADD KEY `pok_harga_satuan` (`harga_sat`),
  ADD KEY `pok_detil_id` (`detil_id`);

--
-- Indexes for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  ADD PRIMARY KEY (`akun_id`);

--
-- Indexes for table `tbl_detil`
--
ALTER TABLE `tbl_detil`
  ADD PRIMARY KEY (`detil_id`);

--
-- Indexes for table `tbl_harga_satuan`
--
ALTER TABLE `tbl_harga_satuan`
  ADD PRIMARY KEY (`harga_satuan_id`);

--
-- Indexes for table `tbl_kegiatan`
--
ALTER TABLE `tbl_kegiatan`
  ADD PRIMARY KEY (`kegiatan_id`);

--
-- Indexes for table `tbl_komp`
--
ALTER TABLE `tbl_komp`
  ADD PRIMARY KEY (`komp_id`),
  ADD KEY `komp_sumber_dana` (`sumber_dana_id`);

--
-- Indexes for table `tbl_output`
--
ALTER TABLE `tbl_output`
  ADD PRIMARY KEY (`output_id`),
  ADD KEY `sumber_dana` (`sumber_dana_id`);

--
-- Indexes for table `tbl_prog`
--
ALTER TABLE `tbl_prog`
  ADD PRIMARY KEY (`prog_id`);

--
-- Indexes for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD PRIMARY KEY (`satuan_id`);

--
-- Indexes for table `tbl_sub_detil`
--
ALTER TABLE `tbl_sub_detil`
  ADD PRIMARY KEY (`sub_detil_id`);

--
-- Indexes for table `tbl_sub_komp`
--
ALTER TABLE `tbl_sub_komp`
  ADD PRIMARY KEY (`sub_komp_id`),
  ADD KEY `sub_komp_sumber_dana` (`sumber_dana_id`);

--
-- Indexes for table `tbl_sub_output`
--
ALTER TABLE `tbl_sub_output`
  ADD PRIMARY KEY (`sub_output_id`),
  ADD KEY `sub_output_sumber_dana` (`sumber_dana_id`);

--
-- Indexes for table `tbl_sumber_dana`
--
ALTER TABLE `tbl_sumber_dana`
  ADD PRIMARY KEY (`sumber_dana_id`);

--
-- Indexes for table `tbl_unit_kerja`
--
ALTER TABLE `tbl_unit_kerja`
  ADD PRIMARY KEY (`unit_kerja_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item_id`
--
ALTER TABLE `item_id`
  MODIFY `item_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pok`
--
ALTER TABLE `pok`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_akun`
--
ALTER TABLE `tbl_akun`
  MODIFY `akun_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `tbl_detil`
--
ALTER TABLE `tbl_detil`
  MODIFY `detil_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_harga_satuan`
--
ALTER TABLE `tbl_harga_satuan`
  MODIFY `harga_satuan_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_kegiatan`
--
ALTER TABLE `tbl_kegiatan`
  MODIFY `kegiatan_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_komp`
--
ALTER TABLE `tbl_komp`
  MODIFY `komp_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `tbl_output`
--
ALTER TABLE `tbl_output`
  MODIFY `output_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_prog`
--
ALTER TABLE `tbl_prog`
  MODIFY `prog_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `satuan_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbl_sub_detil`
--
ALTER TABLE `tbl_sub_detil`
  MODIFY `sub_detil_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sub_komp`
--
ALTER TABLE `tbl_sub_komp`
  MODIFY `sub_komp_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- AUTO_INCREMENT for table `tbl_sub_output`
--
ALTER TABLE `tbl_sub_output`
  MODIFY `sub_output_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_sumber_dana`
--
ALTER TABLE `tbl_sumber_dana`
  MODIFY `sumber_dana_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_unit_kerja`
--
ALTER TABLE `tbl_unit_kerja`
  MODIFY `unit_kerja_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pok`
--
ALTER TABLE `pok`
  ADD CONSTRAINT `pok_akun_id` FOREIGN KEY (`akun_id`) REFERENCES `tbl_akun` (`akun_id`),
  ADD CONSTRAINT `pok_detil_id` FOREIGN KEY (`detil_id`) REFERENCES `tbl_detil` (`detil_id`),
  ADD CONSTRAINT `pok_harga_satuan` FOREIGN KEY (`harga_sat`) REFERENCES `tbl_harga_satuan` (`harga_satuan_id`),
  ADD CONSTRAINT `pok_kegiatan_id` FOREIGN KEY (`kegiatan_id`) REFERENCES `tbl_kegiatan` (`kegiatan_id`),
  ADD CONSTRAINT `pok_komp_id` FOREIGN KEY (`komp_id`) REFERENCES `tbl_komp` (`komp_id`),
  ADD CONSTRAINT `pok_output_id` FOREIGN KEY (`output_id`) REFERENCES `tbl_output` (`output_id`),
  ADD CONSTRAINT `pok_prog_id` FOREIGN KEY (`prog_id`) REFERENCES `tbl_prog` (`prog_id`),
  ADD CONSTRAINT `pok_sat` FOREIGN KEY (`sat_id`) REFERENCES `tbl_satuan` (`satuan_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pok_sat_a` FOREIGN KEY (`sat_a_id`) REFERENCES `tbl_satuan` (`satuan_id`),
  ADD CONSTRAINT `pok_sat_b` FOREIGN KEY (`sat_b_id`) REFERENCES `tbl_satuan` (`satuan_id`),
  ADD CONSTRAINT `pok_sat_c` FOREIGN KEY (`sat_c_id`) REFERENCES `tbl_satuan` (`satuan_id`),
  ADD CONSTRAINT `pok_sub_komp` FOREIGN KEY (`sub_komp_id`) REFERENCES `tbl_sub_komp` (`sub_komp_id`),
  ADD CONSTRAINT `pok_sub_output_id` FOREIGN KEY (`sub_output_id`) REFERENCES `tbl_sub_output` (`sub_output_id`),
  ADD CONSTRAINT `pok_unit_kerja_id` FOREIGN KEY (`unit_kerja_id`) REFERENCES `tbl_unit_kerja` (`unit_kerja_id`);

--
-- Constraints for table `tbl_komp`
--
ALTER TABLE `tbl_komp`
  ADD CONSTRAINT `komp_sumber_dana` FOREIGN KEY (`sumber_dana_id`) REFERENCES `tbl_sumber_dana` (`sumber_dana_id`);

--
-- Constraints for table `tbl_output`
--
ALTER TABLE `tbl_output`
  ADD CONSTRAINT `sumber_dana` FOREIGN KEY (`sumber_dana_id`) REFERENCES `tbl_sumber_dana` (`sumber_dana_id`);

--
-- Constraints for table `tbl_sub_komp`
--
ALTER TABLE `tbl_sub_komp`
  ADD CONSTRAINT `sub_komp_sumber_dana` FOREIGN KEY (`sumber_dana_id`) REFERENCES `tbl_sumber_dana` (`sumber_dana_id`);

--
-- Constraints for table `tbl_sub_output`
--
ALTER TABLE `tbl_sub_output`
  ADD CONSTRAINT `sub_output_sumber_dana` FOREIGN KEY (`sumber_dana_id`) REFERENCES `tbl_sumber_dana` (`sumber_dana_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
