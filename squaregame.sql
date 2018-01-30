-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 27 Jan 2018 pada 13.25
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `squaregame`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `1000_high_score`
--

CREATE TABLE `1000_high_score` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `SCORE` int(11) NOT NULL,
  `PIC` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `1000_high_score`
--

INSERT INTO `1000_high_score` (`ID`, `NAME`, `SCORE`, `PIC`) VALUES
(1, 'A', 0, '4cCla.jpg'),
(2, 'Ana', 1, ''),
(3, 'Ana', 201, ''),
(4, 'Ana', 297, '2576.jpg'),
(5, 'Shepia', 349, '406564_217560298336231_100002467860201_448722_1456274764_n.jpg'),
(6, 'Rina', 523, ''),
(7, 'Rina', 487, ''),
(8, 'Akbal', 555, ''),
(9, 'Sayuri', 574, ''),
(10, 'Saman King', 0, ''),
(11, 'Santa', 49, ''),
(12, 'Sampras', 10, '2843.jpg'),
(13, 'Sampean', 151, ''),
(14, 'Andre', 1, ''),
(15, 'Ana', 292, ''),
(16, 'Anita XXX', 223, ''),
(17, 'Anita XXX', 871, ''),
(18, 'Anita', 364, ''),
(19, 'Anita Xsz', 345, ''),
(20, 'Anita', 154, ''),
(21, 'Arami', 117, ''),
(22, 'Arami', 14, ''),
(23, 'AnitaxxZZZ', 494, ''),
(24, 'AnitaxxZZZ', 11, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `heirs_high_score`
--

CREATE TABLE `heirs_high_score` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `SCORE` int(11) NOT NULL,
  `PIC` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `heirs_high_score`
--

INSERT INTO `heirs_high_score` (`ID`, `NAME`, `SCORE`, `PIC`) VALUES
(1, 'Ambar', 123456789, ''),
(2, 'Anita', 45, '1386.jpg'),
(3, 'Anita', 123456789, '1386.jpg'),
(4, 'Wardah', 20, ''),
(5, 'Ambasdaor', 20, '043349.jpg'),
(6, 'Mina', 123456789, '296318_301026199911043_100000109963090_1356820_2064618067_n - Copy.jpg'),
(7, 'Zein', 123456789, '155514_112371845498547_105457606189971_82847_5377486_n.jpg'),
(8, 'Armada', 125, '426272_121894667933873_100003400206217_98050_1335756515_n.jpg'),
(9, 'A', 123456789, ''),
(10, '', 123456789, ''),
(11, 'A', 123456789, ''),
(12, 'A', 123456789, ''),
(13, 'Animal', 64, ''),
(14, 'A', 123456789, ''),
(15, 'A', 123456789, ''),
(16, 's', 123456789, ''),
(17, 'A', 114, ''),
(18, 'Amanda', 123456789, ''),
(19, 'amanda', 123456789, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `high_score`
--

CREATE TABLE `high_score` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `high_score`
--

INSERT INTO `high_score` (`ID`, `Nama`, `Score`) VALUES
(2, 'Dode', -40),
(3, 'Amanda', 0),
(4, 'Rei', -20),
(5, 'Ambar', 0),
(6, 'Santhi', 0),
(7, 'Anita', 0),
(8, 'Sada', 0),
(9, 'Naira', 0),
(10, 'Naira', 0),
(11, 'Anita', 0),
(12, 'Naruto', 0),
(15, 'A', 0),
(16, 'A', 0),
(17, 'b', 0),
(18, 'b', 0),
(19, 'c', 0),
(20, 'c', 0),
(21, 'c', 0),
(22, 's', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `taptap_high_score`
--

CREATE TABLE `taptap_high_score` (
  `ID` int(11) NOT NULL,
  `NAMA` varchar(50) NOT NULL,
  `SKOR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `taptap_high_score`
--

INSERT INTO `taptap_high_score` (`ID`, `NAMA`, `SKOR`) VALUES
(14, 'Dode', 40),
(15, 'Amanda', 70),
(16, 'A', 0),
(17, 'Nami', 240),
(18, 'Naila', 20),
(19, 'Sa', 420),
(20, 'Ayla', 180),
(21, 'Anjay', 80),
(22, 'Amir', 320),
(23, 'ARYON', 40),
(24, 'Aryon', 80),
(25, 'Aryon', 140),
(26, 'Aryon', 100),
(27, 'Zena', 0),
(28, 'Zena', 100),
(29, 'a', 100),
(30, 'anb', 0),
(31, 'anb', 0),
(32, 'ani', 0),
(33, 'ani', 0),
(34, 'ambar', 140),
(35, 'Ambar', 760),
(36, 'Al', 0),
(37, 'Ambar', 0),
(38, 'Asoy', 0),
(39, 'ambar', 150),
(40, 'Amanda', 670),
(41, 'Siantar', 490),
(42, 'a', 930),
(43, 'asu', 600),
(44, 'Nona', 580),
(45, 'Anita', 950),
(46, 'Supreme', 130),
(47, 'Ambar', 690),
(48, 'Ambar', 450),
(49, 'Ambar', 250),
(50, 'Ambar', 290),
(51, 'Armadilo', 570);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `1000_high_score`
--
ALTER TABLE `1000_high_score`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `heirs_high_score`
--
ALTER TABLE `heirs_high_score`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `high_score`
--
ALTER TABLE `high_score`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `taptap_high_score`
--
ALTER TABLE `taptap_high_score`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `1000_high_score`
--
ALTER TABLE `1000_high_score`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `heirs_high_score`
--
ALTER TABLE `heirs_high_score`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `high_score`
--
ALTER TABLE `high_score`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `taptap_high_score`
--
ALTER TABLE `taptap_high_score`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
