-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Okt 2024 pada 02.50
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employees`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `analisa_alternatif`
--

CREATE TABLE `analisa_alternatif` (
  `alternatif_pertama` varchar(4) NOT NULL,
  `nilai_analisa_alternatif` double NOT NULL,
  `hasil_analisa_alternatif` double NOT NULL,
  `alternatif_kedua` varchar(4) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `analisa_alternatif`
--

INSERT INTO `analisa_alternatif` (`alternatif_pertama`, `nilai_analisa_alternatif`, `hasil_analisa_alternatif`, `alternatif_kedua`, `id_kriteria`) VALUES
('A004', 1, 0.027027027027027, 'A004', 'C7'),
('A004', 0.11111111111111, 0.0057803468208092, 'A008', 'C7'),
('A004', 0.11111111111111, 0.0039525691699604, 'A026', 'C7'),
('A004', 0.11111111111111, 0.010752688172043, 'A029', 'C7'),
('A004', 0.11111111111111, 0.076923076923076, 'A030', 'C7'),
('A008', 9, 0.24324324324324, 'A004', 'C7'),
('A008', 1, 0.052325581395349, 'A008', 'C1'),
('A008', 1, 0.052023121387283, 'A008', 'C7'),
('A008', 9, 0.32142857142857, 'A026', 'C1'),
('A008', 9, 0.3201581027668, 'A026', 'C7'),
('A008', 0.11111111111111, 0.010869565217391, 'A029', 'C1'),
('A008', 0.11111111111111, 0.010752688172043, 'A029', 'C7'),
('A008', 0.11111111111111, 0.083333333333333, 'A030', 'C1'),
('A008', 0.11111111111111, 0.076923076923076, 'A030', 'C7'),
('A026', 9, 0.24324324324324, 'A004', 'C7'),
('A026', 0.11111111111111, 0.005813953488372, 'A008', 'C1'),
('A026', 0.11111111111111, 0.0057803468208092, 'A008', 'C7'),
('A026', 1, 0.035714285714286, 'A026', 'C1'),
('A026', 1, 0.035573122529644, 'A026', 'C7'),
('A026', 0.11111111111111, 0.010869565217391, 'A029', 'C1'),
('A026', 0.11111111111111, 0.010752688172043, 'A029', 'C7'),
('A026', 0.11111111111111, 0.083333333333333, 'A030', 'C1'),
('A026', 0.11111111111111, 0.076923076923076, 'A030', 'C7'),
('A029', 9, 0.24324324324324, 'A004', 'C7'),
('A029', 9, 0.47093023255814, 'A008', 'C1'),
('A029', 9, 0.46820809248555, 'A008', 'C7'),
('A029', 9, 0.32142857142857, 'A026', 'C1'),
('A029', 9, 0.3201581027668, 'A026', 'C7'),
('A029', 1, 0.097826086956522, 'A029', 'C1'),
('A029', 1, 0.096774193548387, 'A029', 'C7'),
('A029', 0.11111111111111, 0.083333333333333, 'A030', 'C1'),
('A029', 0.11111111111111, 0.076923076923076, 'A030', 'C7'),
('A030', 9, 0.24324324324324, 'A004', 'C7'),
('A030', 9, 0.47093023255814, 'A008', 'C1'),
('A030', 9, 0.46820809248555, 'A008', 'C7'),
('A030', 9, 0.32142857142857, 'A026', 'C1'),
('A030', 9, 0.3201581027668, 'A026', 'C7'),
('A030', 9, 0.8804347826087, 'A029', 'C1'),
('A030', 9, 0.87096774193548, 'A029', 'C7'),
('A030', 1, 0.75, 'A030', 'C1'),
('A030', 1, 0.69230769230769, 'A030', 'C7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `analisa_kriteria`
--

CREATE TABLE `analisa_kriteria` (
  `kriteria_pertama` varchar(2) NOT NULL,
  `nilai_analisa_kriteria` double NOT NULL,
  `hasil_analisa_kriteria` double NOT NULL,
  `kriteria_kedua` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `analisa_kriteria`
--

INSERT INTO `analisa_kriteria` (`kriteria_pertama`, `nilai_analisa_kriteria`, `hasil_analisa_kriteria`, `kriteria_kedua`) VALUES
('C1', 1, 0.37037037037037, 'C1'),
('C1', 2, 0.46153846153846, 'C2'),
('C1', 2, 0.34285714285714, 'C3'),
('C1', 2, 0.21052631578947, 'C4'),
('C1', 5, 0.41666666666667, 'C5'),
('C2', 0.5, 0.18518518518519, 'C1'),
('C2', 1, 0.23076923076923, 'C2'),
('C2', 2, 0.34285714285714, 'C3'),
('C2', 3, 0.31578947368421, 'C4'),
('C2', 2, 0.16666666666667, 'C5'),
('C3', 0.5, 0.18518518518519, 'C1'),
('C3', 0.5, 0.11538461538462, 'C2'),
('C3', 1, 0.17142857142857, 'C3'),
('C3', 3, 0.31578947368421, 'C4'),
('C3', 2, 0.16666666666667, 'C5'),
('C4', 0.5, 0.18518518518519, 'C1'),
('C4', 0.33333333333333, 0.076923076923076, 'C2'),
('C4', 0.33333333333333, 0.057142857142857, 'C3'),
('C4', 1, 0.10526315789474, 'C4'),
('C4', 2, 0.16666666666667, 'C5'),
('C5', 0.2, 0.074074074074074, 'C1'),
('C5', 0.5, 0.11538461538462, 'C2'),
('C5', 0.5, 0.085714285714286, 'C3'),
('C5', 0.5, 0.052631578947368, 'C4'),
('C5', 1, 0.083333333333333, 'C5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_alternatif`
--

CREATE TABLE `data_alternatif` (
  `id_alternatif` varchar(4) NOT NULL,
  `nip` char(18) DEFAULT NULL,
  `nama` varchar(45) NOT NULL,
  `kelamin` enum('pria','wanita') NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `hasil_akhir` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data_alternatif`
--

INSERT INTO `data_alternatif` (`id_alternatif`, `nip`, `nama`, `kelamin`, `jabatan`, `hasil_akhir`) VALUES
('A002', '197205201994031004', 'Erwansyah Yusup', 'pria', 'Fungsional Umum BPS Kabupaten/Kota', NULL),
('A003', '197509032006041020', 'Tri Budi Setiawan', 'pria', 'Fungsional Umum BPS Kabupaten/Kota', NULL),
('A004', '198405212007011001', 'Fazani', 'wanita', 'Fungsional Umum BPS Kabupaten/Kota', 0.019022108165215),
('A005', '197008032007012004', 'Agistin Nafta', 'wanita', 'Fungsional Umum BPS Kabupaten/Kota', NULL),
('A006', '198002022009011010', 'Saifu Rohmatullah', 'wanita', 'Fungsional Umum BPS Kabupaten/Kota', NULL),
('A007', '197205231995121001', 'Syamsul Bahri, S.Si', 'pria', 'Pranata Komputer Ahli Muda BPS Kabupaten/Kota', NULL),
('A008', '197007112003121003', 'Andi Stiawan, SP', 'pria', 'Statistisi Ahli Muda BPS Kabupaten/Kota', 0.14161528369544601),
('A009', '198207182005022001', 'Dewi Yuliana S., S.T.', 'wanita', 'Statistisi Ahli Muda BPS Kabupaten/Kota', NULL),
('A010', '198506202007012005', 'Fithriyah, SST', 'wanita', 'Statistisi Ahli Muda BPS Kabupaten/Kota', NULL),
('A011', '198309022009022008', 'Arum Pratiwi, SST', 'wanita', 'Statistisi Ahli Muda BPS Kabupaten/Kota', NULL),
('A012', '198702162009022009', 'Nisalasi Ikhsan Nurfathillah, SST', 'wanita', 'Statistisi Ahli Muda BPS Kabupaten/Kota', NULL),
('A013', '198810132010122005', 'Resty Sopiyono, SST, M.E.K.K.', 'wanita', 'Statistisi Ahli Madya BPS Kabupaten/Kota', NULL),
('A014', '198902082010121005', 'Ahmad Rifki Febrianto, SST, M.EKK', 'pria', 'Pranata Komputer Ahli Muda BPS Kabupaten/Kota', NULL),
('A015', '198005262011011005', 'Muhamad Zaenuri, S.P.', 'pria', 'Statistisi Ahli Muda BPS Kabupaten/Kota', NULL),
('A016', '196611111990031002', 'Bambang Wahyudi', 'pria', 'Statistisi Penyelia BPS Kabupaten/Kota', NULL),
('A017', '198908092013112001', 'Dinny Pravitasari, SST', 'wanita', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', NULL),
('A018', '198410012011011013', 'Surachman Budiarto, S.Si', 'pria', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', NULL),
('A019', '199404202017012001', 'Annisa Fauziatul Mardiyah, SST', 'wanita', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', NULL),
('A020', '199707132019122001', 'Sela Anisada, S.Tr.Stat.', 'wanita', 'Pranata Komputer Ahli Pertama BPS Kabupaten/Kota', NULL),
('A021', '199910302022012002', 'Esa Anindika Sari, S.Tr.Stat.', 'wanita', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', NULL),
('A022', '200006222023021004', 'Ahmad Rifjayansyah, S.Tr.Stat.', 'pria', 'Statistisi Ahli Pertama BPS Kabupaten/Kota', NULL),
('A023', '199304242024211005', 'Riki Afrianto, A.Md.', 'pria', 'Pranata Komputer Terampil BPS Kabupaten/Kota', NULL),
('A024', '200002092023022003', 'Ayu Setianingsih, A.Md.Stat.', 'wanita', 'Statistisi Terampil BPS Kabupaten/Kota', NULL),
('A025', '200001262023022001', 'Dini Alfitri Zahra, A.Md.Stat.', 'wanita', 'Statistisi Terampil BPS Kabupaten/Kota', NULL),
('A026', '198605302009111001', 'Singgih Adiwijaya, S.E., M.M.', 'pria', 'Kepala Subbagian Umum', 0.055371856607583994),
('A027', '198512212012122002', 'Diah Hadianing Putri, S.Si', 'wanita', 'Statistisi Penyelia Subbagian Umum', NULL),
('A028', '198905052011012013', 'Fitri Nurjanah, S.E., M.M.', 'wanita', 'Pranata Keuangan APBN Mahir Subbagian Umum', NULL),
('A029', '199902142022012004', 'Eklesia Valentia, A.Md.Kb.N.', 'wanita', 'Pranata Keuangan APBN Terampil Subbagian Umum', 0.272751071740096),
('A030', '123456', 'taufik', 'pria', 'magang', 0.64442053150832),
('A031', '33333', 'dwi', 'pria', 'magang', NULL),
('A032', '123456', 'Akbar', 'pria', 'magang', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kriteria`
--

CREATE TABLE `data_kriteria` (
  `id_kriteria` varchar(2) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `jumlah_kriteria` double NOT NULL,
  `bobot_kriteria` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data_kriteria`
--

INSERT INTO `data_kriteria` (`id_kriteria`, `nama_kriteria`, `jumlah_kriteria`, `bobot_kriteria`) VALUES
('C1', 'Berorientasi', 2.7, 0.360391791444422),
('C2', 'Akuntabel', 4.33333333333333, 0.24825353983248802),
('C3', 'Kompeten', 5.83333333333333, 0.190890902469852),
('C4', 'harmonis', 9.5, 0.11823618876250659),
('C5', 'Loyal', 12, 0.0822275774907362),
('C6', 'Adaptif', 4, 0.5544999),
('C7', 'Kolaboratif', 3, 0.7643347899766);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jum_alt_kri`
--

CREATE TABLE `jum_alt_kri` (
  `id_alternatif` varchar(4) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  `jumlah_alt_kri` double NOT NULL,
  `skor_alt_kri` double NOT NULL,
  `hasil_alt_kri` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jum_alt_kri`
--

INSERT INTO `jum_alt_kri` (`id_alternatif`, `id_kriteria`, `jumlah_alt_kri`, `skor_alt_kri`, `hasil_alt_kri`) VALUES
('A004', 'C7', 37, 0.02488714162258312, 0.019022108165215),
('A008', 'C1', 19.11111111111111, 0.11698926284366075, 0.042161970015989),
('A008', 'C7', 19.22222222222222, 0.13011747598523166, 0.099453313679457),
('A026', 'C1', 28, 0.0339327844383455, 0.012229096972433),
('A026', 'C7', 28.11111111111111, 0.0564448461602438, 0.043142759635151),
('A029', 'C1', 10.22222222222222, 0.24337955606914125, 0.087711994212706),
('A029', 'C7', 10.33333333333333, 0.24209165924929094, 0.18503907752739),
('A030', 'C1', 1.33333333333333, 0.6056983966488525, 0.21828873024329),
('A030', 'C7', 1.44444444444444, 0.5575198288149079, 0.42613180126503);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `jum_nilai` double NOT NULL,
  `ket_nilai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `jum_nilai`, `ket_nilai`) VALUES
(2, 9, 'Mutlak sangat penting darii'),
(3, 8, 'Mendekati mutlak dari'),
(8, 7, 'Sangat penting dari'),
(9, 6, 'Mendekati sangat penting dari'),
(10, 5, 'Lebih penting dari'),
(11, 4, 'Mendekati lebih penting dari'),
(12, 3, 'Sedikit lebih penting darii'),
(13, 2, 'Mendekati sedikit lebih penting dari'),
(14, 1, 'Sama penting dengan'),
(15, 0.5, '1 bagi mendekati sedikit lebih penting dari'),
(16, 0.333, '1 bagi sedikit lebih penting dari'),
(17, 0.25, '1 bagi mendekati lebih penting dari'),
(18, 0.2, '1 bagi lebih penting dari'),
(19, 0.167, '1 bagi mendekati sangat penting dari'),
(20, 0.143, '1 bagi sangat penting dari'),
(21, 0.125, '1 bagi mendekati mutlak dari'),
(22, 0.1, '1 bagi mutlak sangat penting dari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_awal`
--

CREATE TABLE `nilai_awal` (
  `id_nilai_awal` int(11) NOT NULL,
  `id_alternatif` varchar(4) NOT NULL,
  `nilai` varchar(5) NOT NULL,
  `keterangan` enum('B','C','K') NOT NULL,
  `periode` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nilai_awal`
--

INSERT INTO `nilai_awal` (`id_nilai_awal`, `id_alternatif`, `nilai`, `keterangan`, `periode`) VALUES
(16, 'A029', '84.28', 'B', '10'),
(17, 'A008', '82.85', 'B', '10'),
(18, 'A026', '82.85', 'B', '10'),
(19, 'A015', '74.28', 'K', '3'),
(20, 'A005', '71.42', 'C', '9'),
(21, 'A004', '90', 'B', '9'),
(22, 'A015', '80', 'B', '10'),
(23, 'A002', '82.85', 'B', '10'),
(24, 'A022', '81.42', 'B', '10'),
(30, 'A031', '80', 'B', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_awal_detail`
--

CREATE TABLE `nilai_awal_detail` (
  `id_nilai_awal_detail` int(11) NOT NULL,
  `id_nilai_awal` int(11) NOT NULL,
  `id_kriteria` varchar(2) NOT NULL,
  `nilai` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nilai_awal_detail`
--

INSERT INTO `nilai_awal_detail` (`id_nilai_awal_detail`, `id_nilai_awal`, `id_kriteria`, `nilai`) VALUES
(82, 16, 'C1', 80),
(83, 16, 'C2', 80),
(84, 16, 'C3', 90),
(85, 16, 'C4', 80),
(86, 16, 'C5', 80),
(87, 16, 'C6', 90),
(88, 16, 'C7', 90),
(89, 17, 'C1', 80),
(90, 17, 'C2', 80),
(91, 17, 'C3', 80),
(92, 17, 'C4', 80),
(93, 17, 'C5', 80),
(94, 17, 'C6', 90),
(95, 17, 'C7', 90),
(96, 18, 'C1', 80),
(97, 18, 'C2', 80),
(98, 18, 'C3', 80),
(99, 18, 'C4', 80),
(100, 18, 'C5', 80),
(101, 18, 'C6', 90),
(102, 18, 'C7', 90),
(103, 19, 'C1', 80),
(104, 19, 'C2', 70),
(105, 19, 'C3', 70),
(106, 19, 'C4', 80),
(107, 19, 'C5', 70),
(108, 19, 'C6', 70),
(109, 19, 'C7', 80),
(110, 20, 'C1', 70),
(111, 20, 'C2', 80),
(112, 20, 'C3', 70),
(113, 20, 'C4', 70),
(114, 20, 'C5', 70),
(115, 20, 'C6', 70),
(116, 20, 'C7', 70),
(117, 21, 'C1', 90),
(118, 21, 'C2', 90),
(119, 21, 'C3', 90),
(120, 21, 'C4', 90),
(121, 21, 'C5', 90),
(122, 21, 'C6', 90),
(123, 21, 'C7', 90),
(124, 22, 'C1', 70),
(125, 22, 'C2', 80),
(126, 22, 'C3', 90),
(127, 22, 'C4', 80),
(128, 22, 'C5', 70),
(129, 22, 'C6', 90),
(130, 22, 'C7', 80),
(131, 23, 'C1', 90),
(132, 23, 'C2', 80),
(133, 23, 'C3', 90),
(134, 23, 'C4', 80),
(135, 23, 'C5', 90),
(136, 23, 'C6', 80),
(137, 23, 'C7', 70),
(138, 24, 'C1', 90),
(139, 24, 'C2', 80),
(140, 24, 'C3', 80),
(141, 24, 'C4', 70),
(142, 24, 'C5', 80),
(143, 24, 'C6', 90),
(144, 24, 'C7', 80),
(180, 30, 'C1', 70),
(181, 30, 'C2', 90),
(182, 30, 'C3', 90),
(183, 30, 'C4', 80),
(184, 30, 'C5', 80),
(185, 30, 'C6', 70),
(186, 30, 'C7', 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `role` enum('atasan','pegawai','admin') NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `role`, `username`, `password`) VALUES
(1, 'Admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Karyawan', 'pegawai', 'pegawai', '047aeeb234644b9e2d4138ed3bc7976a'),
(3, 'Eko Purnomo, SST., MM', 'atasan', 'atasan', '221ef2597affd3f083ac94af9e1b1e7f');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ranking`
--

CREATE TABLE `ranking` (
  `kriteria` varchar(2) NOT NULL,
  `skor_bobot` double NOT NULL,
  `alternatif` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `analisa_alternatif`
--
ALTER TABLE `analisa_alternatif`
  ADD PRIMARY KEY (`alternatif_pertama`,`alternatif_kedua`,`id_kriteria`),
  ADD KEY `alternatif_kedua` (`alternatif_kedua`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `analisa_kriteria`
--
ALTER TABLE `analisa_kriteria`
  ADD PRIMARY KEY (`kriteria_pertama`,`kriteria_kedua`),
  ADD KEY `kriteria_kedua` (`kriteria_kedua`);

--
-- Indeks untuk tabel `data_alternatif`
--
ALTER TABLE `data_alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `data_kriteria`
--
ALTER TABLE `data_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `jum_alt_kri`
--
ALTER TABLE `jum_alt_kri`
  ADD PRIMARY KEY (`id_alternatif`,`id_kriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `nilai_awal`
--
ALTER TABLE `nilai_awal`
  ADD PRIMARY KEY (`id_nilai_awal`,`id_alternatif`),
  ADD KEY `alternatif` (`id_alternatif`);

--
-- Indeks untuk tabel `nilai_awal_detail`
--
ALTER TABLE `nilai_awal_detail`
  ADD PRIMARY KEY (`id_nilai_awal_detail`,`id_nilai_awal`),
  ADD KEY `alternatif` (`id_nilai_awal`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`kriteria`,`alternatif`),
  ADD KEY `alternatif` (`alternatif`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `nilai_awal`
--
ALTER TABLE `nilai_awal`
  MODIFY `id_nilai_awal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `nilai_awal_detail`
--
ALTER TABLE `nilai_awal_detail`
  MODIFY `id_nilai_awal_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `analisa_alternatif`
--
ALTER TABLE `analisa_alternatif`
  ADD CONSTRAINT `analisa_alternatif_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `analisa_alternatif_ibfk_2` FOREIGN KEY (`alternatif_pertama`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `analisa_alternatif_ibfk_3` FOREIGN KEY (`alternatif_kedua`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `analisa_kriteria`
--
ALTER TABLE `analisa_kriteria`
  ADD CONSTRAINT `analisa_kriteria_ibfk_1` FOREIGN KEY (`kriteria_pertama`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `analisa_kriteria_ibfk_2` FOREIGN KEY (`kriteria_kedua`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jum_alt_kri`
--
ALTER TABLE `jum_alt_kri`
  ADD CONSTRAINT `jum_alt_kri_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jum_alt_kri_ibfk_2` FOREIGN KEY (`id_alternatif`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_awal`
--
ALTER TABLE `nilai_awal`
  ADD CONSTRAINT `nilai_awal_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai_awal_detail`
--
ALTER TABLE `nilai_awal_detail`
  ADD CONSTRAINT `nilai_awal_detail_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_awal_detail_ibfk_2` FOREIGN KEY (`id_nilai_awal`) REFERENCES `nilai_awal` (`id_nilai_awal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ranking`
--
ALTER TABLE `ranking`
  ADD CONSTRAINT `ranking_ibfk_1` FOREIGN KEY (`kriteria`) REFERENCES `data_kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ranking_ibfk_2` FOREIGN KEY (`alternatif`) REFERENCES `data_alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
